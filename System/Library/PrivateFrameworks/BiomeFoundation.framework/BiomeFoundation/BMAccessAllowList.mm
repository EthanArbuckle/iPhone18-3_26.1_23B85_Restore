@interface BMAccessAllowList
- (BMAccessAllowList)initWithList:(id)list;
- (BOOL)includesIdentifier:(id)identifier useCase:(id)case;
- (BOOL)includesProcess:(id)process useCase:(id)case;
@end

@implementation BMAccessAllowList

- (BMAccessAllowList)initWithList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = BMAccessAllowList;
  v6 = [(BMAccessAllowList *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_allowed, list);
  }

  return v7;
}

- (BOOL)includesIdentifier:(id)identifier useCase:(id)case
{
  allowed = self->_allowed;
  caseCopy = case;
  v7 = [(NSDictionary *)allowed objectForKeyedSubscript:identifier];
  LOBYTE(allowed) = [v7 containsObject:caseCopy];

  return allowed;
}

- (BOOL)includesProcess:(id)process useCase:(id)case
{
  allowed = self->_allowed;
  caseCopy = case;
  identifier = [process identifier];
  v8 = [(NSDictionary *)allowed objectForKeyedSubscript:identifier];
  v9 = [v8 containsObject:caseCopy];

  return v9;
}

@end