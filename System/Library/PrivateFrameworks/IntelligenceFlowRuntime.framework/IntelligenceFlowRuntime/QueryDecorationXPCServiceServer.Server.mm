@interface QueryDecorationXPCServiceServer.Server
- (void)queryDecorationCollectionWithQdInputData:(id)a3 with:(id)a4;
@end

@implementation QueryDecorationXPCServiceServer.Server

- (void)queryDecorationCollectionWithQdInputData:(id)a3 with:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_22BDB4304();
  v10 = v9;

  *(swift_allocObject() + 16) = v6;
  sub_22BD94D34();

  sub_22BB3531C(v8, v10);
}

@end