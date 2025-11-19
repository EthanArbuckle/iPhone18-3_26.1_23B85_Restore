@interface GDSubgraphViewContext
- (GDSubgraphViewContext)initWithInner:(id)a3;
- (GDSubgraphViewContext)initWithViewName:(id)a3 tableName:(id)a4 error:(id *)a5;
@end

@implementation GDSubgraphViewContext

- (GDSubgraphViewContext)initWithInner:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDSubgraphViewContext;
  v6 = [(GDSubgraphViewContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->subgraphViewContext, a3);
  }

  return v7;
}

- (GDSubgraphViewContext)initWithViewName:(id)a3 tableName:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[GDSwiftViewService clientService];
  v11 = [v10 gdSwiftSubgraphViewContextWithName:v9 tableName:v8 error:a5];

  if (v11)
  {
    self = [(GDSubgraphViewContext *)self initWithInner:v11];
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end