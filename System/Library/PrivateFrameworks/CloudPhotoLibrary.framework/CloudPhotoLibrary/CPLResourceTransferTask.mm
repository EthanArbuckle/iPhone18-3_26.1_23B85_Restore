@interface CPLResourceTransferTask
+ (BOOL)isForegroundOperationForIntent:(unint64_t)intent;
+ (BOOL)isHighPriorityForIntent:(unint64_t)intent;
+ (id)descriptionForIntent:(unint64_t)intent;
- (BOOL)isEqual:(id)equal;
- (CPLResourceTransferTask)initWithCoder:(id)coder;
- (CPLResourceTransferTask)initWithResource:(id)resource taskIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)launch;
- (void)setHighPriority:(BOOL)priority;
- (void)setIntent:(unint64_t)intent;
- (void)setOptions:(id)options;
- (void)setTaskIdentifier:(id)identifier;
@end

@implementation CPLResourceTransferTask

- (void)setIntent:(unint64_t)intent
{
  v4 = [CPLResourceTransferTaskOptions optionsForLegacyIntent:intent];
  options = self->_options;
  self->_options = v4;

  MEMORY[0x1EEE66BB8](v4, options);
}

- (void)setOptions:(id)options
{
  if (options)
  {
    v4 = [options copy];
  }

  else
  {
    v4 = +[CPLResourceTransferTaskOptions defaultOptions];
  }

  options = self->_options;
  self->_options = v4;

  MEMORY[0x1EEE66BB8](v4, options);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  taskIdentifier = [(CPLResourceTransferTask *)self taskIdentifier];
  resource = [(CPLResourceTransferTask *)self resource];
  if ([(CPLResourceTransferTask *)self isHighPriority])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if ([(CPLResourceTransferTask *)self isCancelled])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  v9 = [v3 stringWithFormat:@"<%@ %p task identifier %@ resource %@ highPriority %s cancelled %s options %@>", v4, self, taskIdentifier, resource, v7, v8, self->_options];

  return v9;
}

- (unint64_t)hash
{
  taskIdentifier = [(CPLResourceTransferTask *)self taskIdentifier];
  v3 = [taskIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    taskIdentifier = [(CPLResourceTransferTask *)self taskIdentifier];
    taskIdentifier2 = [equalCopy taskIdentifier];
    v7 = [taskIdentifier isEqualToString:taskIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)launch
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResourceTransferTask.m"];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:85 description:{@"%@ should be overriden by subclasses", v6}];

  abort();
}

- (void)setHighPriority:(BOOL)priority
{
  priorityCopy = priority;
  v5 = [CPLResourceTransferTaskOptions alloc];
  options = self->_options;
  if (options)
  {
    [(CPLResourceTransferTaskOptions *)options timeRange];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  if (priorityCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  v8 = [(CPLResourceTransferTaskOptions *)v5 initWithIntent:0 priority:v7 timeRange:v10];
  v9 = self->_options;
  self->_options = v8;
}

- (void)setTaskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v4 = [identifierCopy copy];
    taskIdentifier = self->_taskIdentifier;
    self->_taskIdentifier = v4;
  }

  else
  {
    taskIdentifier = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [taskIdentifier UUIDString];
    v7 = self->_taskIdentifier;
    self->_taskIdentifier = uUIDString;
  }
}

- (CPLResourceTransferTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"keyResource"];
  v6 = [coderCopy decodeObjectForKey:@"keyTaskID"];
  v7 = [(CPLResourceTransferTask *)self initWithResource:v5 taskIdentifier:v6];

  if (v7)
  {
    if (![(NSString *)v7->_taskIdentifier length])
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      taskIdentifier = v7->_taskIdentifier;
      v7->_taskIdentifier = uUIDString;
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = +[CPLResourceTransferTaskOptions defaultOptions];
    }

    options = v7->_options;
    v7->_options = v13;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  resource = self->_resource;
  coderCopy = coder;
  [coderCopy encodeObject:resource forKey:@"keyResource"];
  [coderCopy encodeObject:self->_taskIdentifier forKey:@"keyTaskID"];
  [coderCopy encodeObject:self->_options forKey:@"options"];
}

- (CPLResourceTransferTask)initWithResource:(id)resource taskIdentifier:(id)identifier
{
  resourceCopy = resource;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = CPLResourceTransferTask;
  v9 = [(CPLResourceTransferTask *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resource, resource);
    v11 = [identifierCopy copy];
    taskIdentifier = v10->_taskIdentifier;
    v10->_taskIdentifier = v11;

    v13 = +[CPLResourceTransferTaskOptions defaultOptions];
    options = v10->_options;
    v10->_options = v13;
  }

  return v10;
}

+ (BOOL)isForegroundOperationForIntent:(unint64_t)intent
{
  v3 = [CPLResourceTransferTaskOptions optionsForLegacyIntent:intent];
  v4 = +[CPLResourceTransferTaskOptions isForegroundOperationForIntent:priority:](CPLResourceTransferTaskOptions, "isForegroundOperationForIntent:priority:", [v3 intent], objc_msgSend(v3, "priority"));

  return v4;
}

+ (BOOL)isHighPriorityForIntent:(unint64_t)intent
{
  v3 = [CPLResourceTransferTaskOptions optionsForLegacyIntent:intent];
  isHighPriority = [v3 isHighPriority];

  return isHighPriority;
}

+ (id)descriptionForIntent:(unint64_t)intent
{
  v3 = [CPLResourceTransferTaskOptions optionsForLegacyIntent:intent];
  v4 = [v3 description];

  return v4;
}

@end