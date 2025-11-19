@interface DDSTrialQuery
+ (id)defaultQuery;
- (BOOL)isEqual:(id)a3;
- (DDSTrialQuery)initWithCoder:(id)a3;
- (DDSTrialQuery)initWithProjectId:(int)a3 namespaceId:(unsigned int)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DDSTrialQuery

+ (id)defaultQuery
{
  v2 = [[DDSTrialQuery alloc] initWithProjectId:104 namespaceId:170];

  return v2;
}

- (DDSTrialQuery)initWithProjectId:(int)a3 namespaceId:(unsigned int)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = DDSTrialQuery;
  v6 = [(DDSTrialQuery *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_projectId = a3;
    v6->_namespaceId = a4;
    v16[0] = @"projectId";
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[DDSTrialQuery projectId](v6, "projectId")}];
    v16[1] = @"namespaceId";
    v17[0] = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DDSTrialQuery namespaceId](v7, "namespaceId")}];
    v17[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

    v11 = [v10 description];
    description = v7->_description;
    v7->_description = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[DDSTrialQuery namespaceId](self, "namespaceId"), v7 == [v6 namespaceId]))
  {
    v8 = [(DDSTrialQuery *)self projectId];
    v9 = v8 == [v6 projectId];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[DDSTrialQuery projectId](self forKey:{"projectId"), @"projectId"}];
  [v4 encodeInt32:-[DDSTrialQuery namespaceId](self forKey:{"namespaceId"), @"namespaceId"}];
}

- (DDSTrialQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"projectId"];
  if (v5 && (v6 = v5, v7 = [v4 decodeInt32ForKey:@"namespaceId"], v7))
  {
    self = [(DDSTrialQuery *)self initWithProjectId:v6 namespaceId:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end