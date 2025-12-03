@interface GDSwiftViewService
+ (GDSwiftViewService)clientService;
+ (id)clientServiceWithUseCase:(id)case;
- (id)autonamingViewWithViewName:(id)name error:(id *)error;
- (id)gdSwiftSubgraphViewContextWithName:(id)name tableName:(id)tableName error:(id *)error;
@end

@implementation GDSwiftViewService

+ (GDSwiftViewService)clientService
{
  v2 = static ViewService.clientService.getter(self);

  return v2;
}

+ (id)clientServiceWithUseCase:(id)case
{
  caseCopy = case;
  v4 = static ViewService.clientService(useCase:)(caseCopy);

  return v4;
}

- (id)autonamingViewWithViewName:(id)name error:(id *)error
{
  v5 = sub_1ABF23C04();
  v7 = v6;
  selfCopy = self;
  v9 = ViewService.autonamingView(viewName:)(v5, v7);

  return v9;
}

- (id)gdSwiftSubgraphViewContextWithName:(id)name tableName:(id)tableName error:(id *)error
{
  v6 = sub_1ABF23C04();
  v8 = v7;
  v9 = sub_1ABF23C04();
  v11 = v10;
  selfCopy = self;
  v13 = ViewService.gdSwiftSubgraphViewContext(name:tableName:)(v6, v8, v9, v11);

  return v13;
}

@end