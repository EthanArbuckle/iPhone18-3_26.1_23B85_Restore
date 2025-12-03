@interface QueryDecorationXPCServiceServer.Server
- (void)queryDecorationCollectionWithQdInputData:(id)data with:(id)with;
@end

@implementation QueryDecorationXPCServiceServer.Server

- (void)queryDecorationCollectionWithQdInputData:(id)data with:(id)with
{
  v6 = _Block_copy(with);
  dataCopy = data;
  selfCopy = self;
  v8 = sub_22BDB4304();
  v10 = v9;

  *(swift_allocObject() + 16) = v6;
  sub_22BD94D34();

  sub_22BB3531C(v8, v10);
}

@end