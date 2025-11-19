@interface GDViewService
+ (id)clientService;
- (GDViewService)initWithSwiftViewService:(id)a3;
- (id)autonamingViewWithViewName:(id)a3 error:(id *)a4;
- (id)subgraphViewContextWithViewName:(id)a3 tableName:(id)a4 error:(id *)a5;
@end

@implementation GDViewService

- (id)autonamingViewWithViewName:(id)a3 error:(id *)a4
{
  v4 = [(GDSwiftViewService *)self->_swiftViewService autonamingViewWithViewName:a3 error:a4];
  if (v4)
  {
    v5 = [[GDAutonamingView alloc] initWithInner:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)subgraphViewContextWithViewName:(id)a3 tableName:(id)a4 error:(id *)a5
{
  v5 = [(GDSwiftViewService *)self->_swiftViewService gdSwiftSubgraphViewContextWithName:a3 tableName:a4 error:a5];
  if (v5)
  {
    v6 = [[GDSubgraphViewContext alloc] initWithInner:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (GDViewService)initWithSwiftViewService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDViewService;
  v6 = [(GDViewService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_swiftViewService, a3);
  }

  return v7;
}

+ (id)clientService
{
  if (qword_1ED87C060 != -1)
  {
    dispatch_once(&qword_1ED87C060, &unk_1F20A1B38);
  }

  v3 = qword_1ED87C068;

  return v3;
}

@end