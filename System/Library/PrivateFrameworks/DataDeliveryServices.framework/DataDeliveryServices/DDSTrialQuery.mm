@interface DDSTrialQuery
+ (id)defaultQuery;
- (BOOL)isEqual:(id)equal;
- (DDSTrialQuery)initWithCoder:(id)coder;
- (DDSTrialQuery)initWithProjectId:(int)id namespaceId:(unsigned int)namespaceId;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DDSTrialQuery

+ (id)defaultQuery
{
  v2 = [[DDSTrialQuery alloc] initWithProjectId:104 namespaceId:170];

  return v2;
}

- (DDSTrialQuery)initWithProjectId:(int)id namespaceId:(unsigned int)namespaceId
{
  v17[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = DDSTrialQuery;
  v6 = [(DDSTrialQuery *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_projectId = id;
    v6->_namespaceId = namespaceId;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[DDSTrialQuery namespaceId](self, "namespaceId"), v7 == [v6 namespaceId]))
  {
    projectId = [(DDSTrialQuery *)self projectId];
    v9 = projectId == [v6 projectId];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[DDSTrialQuery projectId](self forKey:{"projectId"), @"projectId"}];
  [coderCopy encodeInt32:-[DDSTrialQuery namespaceId](self forKey:{"namespaceId"), @"namespaceId"}];
}

- (DDSTrialQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"projectId"];
  if (v5 && (v6 = v5, v7 = [coderCopy decodeInt32ForKey:@"namespaceId"], v7))
  {
    self = [(DDSTrialQuery *)self initWithProjectId:v6 namespaceId:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end