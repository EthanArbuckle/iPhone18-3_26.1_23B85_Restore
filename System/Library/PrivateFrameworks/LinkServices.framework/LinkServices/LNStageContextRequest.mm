@interface LNStageContextRequest
+ (id)xpcClasses;
- (LNStageContextRequest)initWithCoder:(id)a3;
- (LNStageContextRequest)initWithMetadata:(id)a3 entities:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNStageContextRequest

+ (id)xpcClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (LNStageContextRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"metadata"];
  v6 = [v4 decodeObjectForKey:@"entities"];

  if (v5 && v6)
  {
    self = [(LNStageContextRequest *)self initWithMetadata:v5 entities:v6];
    v7 = self;
  }

  else
  {
    v8 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_ERROR, "empty LNStageContextRequest from coder", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNStageContextRequest *)self metadata];
  [v4 encodeObject:v5 forKey:@"metadata"];

  v6 = [(LNStageContextRequest *)self entities];
  [v4 encodeObject:v6 forKey:@"entities"];
}

- (LNStageContextRequest)initWithMetadata:(id)a3 entities:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = LNStageContextRequest;
  v8 = [(LNStageContextRequest *)&v13 init];
  metadata = v8->_metadata;
  v8->_metadata = v6;
  v10 = v6;

  entities = v8->_entities;
  v8->_entities = v7;

  return v8;
}

@end