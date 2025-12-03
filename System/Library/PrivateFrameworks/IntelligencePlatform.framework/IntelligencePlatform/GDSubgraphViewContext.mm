@interface GDSubgraphViewContext
- (GDSubgraphViewContext)initWithInner:(id)inner;
- (GDSubgraphViewContext)initWithViewName:(id)name tableName:(id)tableName error:(id *)error;
@end

@implementation GDSubgraphViewContext

- (GDSubgraphViewContext)initWithInner:(id)inner
{
  innerCopy = inner;
  v9.receiver = self;
  v9.super_class = GDSubgraphViewContext;
  v6 = [(GDSubgraphViewContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->subgraphViewContext, inner);
  }

  return v7;
}

- (GDSubgraphViewContext)initWithViewName:(id)name tableName:(id)tableName error:(id *)error
{
  tableNameCopy = tableName;
  nameCopy = name;
  v10 = +[GDSwiftViewService clientService];
  v11 = [v10 gdSwiftSubgraphViewContextWithName:nameCopy tableName:tableNameCopy error:error];

  if (v11)
  {
    self = [(GDSubgraphViewContext *)self initWithInner:v11];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end