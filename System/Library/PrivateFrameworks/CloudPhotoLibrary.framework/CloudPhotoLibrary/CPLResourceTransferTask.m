@interface CPLResourceTransferTask
+ (BOOL)isForegroundOperationForIntent:(unint64_t)a3;
+ (BOOL)isHighPriorityForIntent:(unint64_t)a3;
+ (id)descriptionForIntent:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CPLResourceTransferTask)initWithCoder:(id)a3;
- (CPLResourceTransferTask)initWithResource:(id)a3 taskIdentifier:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)launch;
- (void)setHighPriority:(BOOL)a3;
- (void)setIntent:(unint64_t)a3;
- (void)setOptions:(id)a3;
- (void)setTaskIdentifier:(id)a3;
@end

@implementation CPLResourceTransferTask

- (void)setIntent:(unint64_t)a3
{
  v4 = [CPLResourceTransferTaskOptions optionsForLegacyIntent:a3];
  options = self->_options;
  self->_options = v4;

  MEMORY[0x1EEE66BB8](v4, options);
}

- (void)setOptions:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
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
  v5 = [(CPLResourceTransferTask *)self taskIdentifier];
  v6 = [(CPLResourceTransferTask *)self resource];
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

  v9 = [v3 stringWithFormat:@"<%@ %p task identifier %@ resource %@ highPriority %s cancelled %s options %@>", v4, self, v5, v6, v7, v8, self->_options];

  return v9;
}

- (unint64_t)hash
{
  v2 = [(CPLResourceTransferTask *)self taskIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CPLResourceTransferTask *)self taskIdentifier];
    v6 = [v4 taskIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)launch
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLResourceTransferTask.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:85 description:{@"%@ should be overriden by subclasses", v6}];

  abort();
}

- (void)setHighPriority:(BOOL)a3
{
  v3 = a3;
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

  if (v3)
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

- (void)setTaskIdentifier:(id)a3
{
  v8 = a3;
  if ([v8 length])
  {
    v4 = [v8 copy];
    taskIdentifier = self->_taskIdentifier;
    self->_taskIdentifier = v4;
  }

  else
  {
    taskIdentifier = [MEMORY[0x1E696AFB0] UUID];
    v6 = [taskIdentifier UUIDString];
    v7 = self->_taskIdentifier;
    self->_taskIdentifier = v6;
  }
}

- (CPLResourceTransferTask)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"keyResource"];
  v6 = [v4 decodeObjectForKey:@"keyTaskID"];
  v7 = [(CPLResourceTransferTask *)self initWithResource:v5 taskIdentifier:v6];

  if (v7)
  {
    if (![(NSString *)v7->_taskIdentifier length])
    {
      v8 = [MEMORY[0x1E696AFB0] UUID];
      v9 = [v8 UUIDString];
      taskIdentifier = v7->_taskIdentifier;
      v7->_taskIdentifier = v9;
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
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

- (void)encodeWithCoder:(id)a3
{
  resource = self->_resource;
  v5 = a3;
  [v5 encodeObject:resource forKey:@"keyResource"];
  [v5 encodeObject:self->_taskIdentifier forKey:@"keyTaskID"];
  [v5 encodeObject:self->_options forKey:@"options"];
}

- (CPLResourceTransferTask)initWithResource:(id)a3 taskIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CPLResourceTransferTask;
  v9 = [(CPLResourceTransferTask *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resource, a3);
    v11 = [v8 copy];
    taskIdentifier = v10->_taskIdentifier;
    v10->_taskIdentifier = v11;

    v13 = +[CPLResourceTransferTaskOptions defaultOptions];
    options = v10->_options;
    v10->_options = v13;
  }

  return v10;
}

+ (BOOL)isForegroundOperationForIntent:(unint64_t)a3
{
  v3 = [CPLResourceTransferTaskOptions optionsForLegacyIntent:a3];
  v4 = +[CPLResourceTransferTaskOptions isForegroundOperationForIntent:priority:](CPLResourceTransferTaskOptions, "isForegroundOperationForIntent:priority:", [v3 intent], objc_msgSend(v3, "priority"));

  return v4;
}

+ (BOOL)isHighPriorityForIntent:(unint64_t)a3
{
  v3 = [CPLResourceTransferTaskOptions optionsForLegacyIntent:a3];
  v4 = [v3 isHighPriority];

  return v4;
}

+ (id)descriptionForIntent:(unint64_t)a3
{
  v3 = [CPLResourceTransferTaskOptions optionsForLegacyIntent:a3];
  v4 = [v3 description];

  return v4;
}

@end