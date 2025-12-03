@interface LNStageContextRequest
+ (id)xpcClasses;
- (LNStageContextRequest)initWithCoder:(id)coder;
- (LNStageContextRequest)initWithMetadata:(id)metadata entities:(id)entities;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNStageContextRequest

+ (id)xpcClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (LNStageContextRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"metadata"];
  v6 = [coderCopy decodeObjectForKey:@"entities"];

  if (v5 && v6)
  {
    self = [(LNStageContextRequest *)self initWithMetadata:v5 entities:v6];
    selfCopy = self;
  }

  else
  {
    v8 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_ERROR, "empty LNStageContextRequest from coder", v10, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  metadata = [(LNStageContextRequest *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];

  entities = [(LNStageContextRequest *)self entities];
  [coderCopy encodeObject:entities forKey:@"entities"];
}

- (LNStageContextRequest)initWithMetadata:(id)metadata entities:(id)entities
{
  metadataCopy = metadata;
  entitiesCopy = entities;
  v13.receiver = self;
  v13.super_class = LNStageContextRequest;
  v8 = [(LNStageContextRequest *)&v13 init];
  metadata = v8->_metadata;
  v8->_metadata = metadataCopy;
  v10 = metadataCopy;

  entities = v8->_entities;
  v8->_entities = entitiesCopy;

  return v8;
}

@end