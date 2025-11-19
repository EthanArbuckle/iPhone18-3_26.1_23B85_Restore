@interface GDSwiftViewService
+ (GDSwiftViewService)clientService;
+ (id)clientServiceWithUseCase:(id)a3;
- (id)autonamingViewWithViewName:(id)a3 error:(id *)a4;
- (id)gdSwiftSubgraphViewContextWithName:(id)a3 tableName:(id)a4 error:(id *)a5;
@end

@implementation GDSwiftViewService

+ (GDSwiftViewService)clientService
{
  v2 = static ViewService.clientService.getter(a1);

  return v2;
}

+ (id)clientServiceWithUseCase:(id)a3
{
  v3 = a3;
  v4 = static ViewService.clientService(useCase:)(v3);

  return v4;
}

- (id)autonamingViewWithViewName:(id)a3 error:(id *)a4
{
  v5 = sub_1ABF23C04();
  v7 = v6;
  v8 = self;
  v9 = ViewService.autonamingView(viewName:)(v5, v7);

  return v9;
}

- (id)gdSwiftSubgraphViewContextWithName:(id)a3 tableName:(id)a4 error:(id *)a5
{
  v6 = sub_1ABF23C04();
  v8 = v7;
  v9 = sub_1ABF23C04();
  v11 = v10;
  v12 = self;
  v13 = ViewService.gdSwiftSubgraphViewContext(name:tableName:)(v6, v8, v9, v11);

  return v13;
}

@end