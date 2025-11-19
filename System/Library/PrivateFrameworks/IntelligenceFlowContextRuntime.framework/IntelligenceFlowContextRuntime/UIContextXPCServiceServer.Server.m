@interface UIContextXPCServiceServer.Server
- (void)retrieveElementHierarchyWithVerbose:(BOOL)a3 args:(id)a4 with:(id)a5;
- (void)retrieveOnScreenContentWithParameters:(id)a3 with:(id)a4;
- (void)retrieveUIContextElementsWithOptions:(id)a3 with:(id)a4;
- (void)retrieveUIElementsWithOptions:(id)a3 with:(id)a4;
@end

@implementation UIContextXPCServiceServer.Server

- (void)retrieveUIContextElementsWithOptions:(id)a3 with:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = sub_254F27900();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_254F24464(v8, v10, sub_254F22830, v11);

  sub_254EF278C(v8, v10);
}

- (void)retrieveUIElementsWithOptions:(id)a3 with:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = sub_254F27900();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_254F24464(v8, v10, sub_254F22830, v11);

  sub_254EF278C(v8, v10);
}

- (void)retrieveElementHierarchyWithVerbose:(BOOL)a3 args:(id)a4 with:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_254F29560();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  sub_254F25164(a3, v8, sub_254F22830, v9);
}

- (void)retrieveOnScreenContentWithParameters:(id)a3 with:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = sub_254F27900();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_254F24464(v8, v10, sub_254F21FB0, v11);

  sub_254EF278C(v8, v10);
}

@end