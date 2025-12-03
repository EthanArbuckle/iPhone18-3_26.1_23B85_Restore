@interface UIContextXPCServiceServer.Server
- (void)retrieveElementHierarchyWithVerbose:(BOOL)verbose args:(id)args with:(id)with;
- (void)retrieveOnScreenContentWithParameters:(id)parameters with:(id)with;
- (void)retrieveUIContextElementsWithOptions:(id)options with:(id)with;
- (void)retrieveUIElementsWithOptions:(id)options with:(id)with;
@end

@implementation UIContextXPCServiceServer.Server

- (void)retrieveUIContextElementsWithOptions:(id)options with:(id)with
{
  v6 = _Block_copy(with);
  optionsCopy = options;
  selfCopy = self;
  v8 = sub_254F27900();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_254F24464(v8, v10, sub_254F22830, v11);

  sub_254EF278C(v8, v10);
}

- (void)retrieveUIElementsWithOptions:(id)options with:(id)with
{
  v6 = _Block_copy(with);
  optionsCopy = options;
  selfCopy = self;
  v8 = sub_254F27900();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_254F24464(v8, v10, sub_254F22830, v11);

  sub_254EF278C(v8, v10);
}

- (void)retrieveElementHierarchyWithVerbose:(BOOL)verbose args:(id)args with:(id)with
{
  v7 = _Block_copy(with);
  v8 = sub_254F29560();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  sub_254F25164(verbose, v8, sub_254F22830, v9);
}

- (void)retrieveOnScreenContentWithParameters:(id)parameters with:(id)with
{
  v6 = _Block_copy(with);
  parametersCopy = parameters;
  selfCopy = self;
  v8 = sub_254F27900();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_254F24464(v8, v10, sub_254F21FB0, v11);

  sub_254EF278C(v8, v10);
}

@end