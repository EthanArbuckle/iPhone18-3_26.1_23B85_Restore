@interface DOCCreateFolderOperation
- (NSString)actionNameForUndoing;
- (_TtC26DocumentManagerExecutables24DOCCreateFolderOperation)init;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)schedule;
@end

@implementation DOCCreateFolderOperation

- (void)schedule
{
  selfCopy = self;
  DOCCreateFolderOperation.schedule()();
}

- (NSString)actionNameForUndoing
{
  selfCopy = self;
  v3 = DOCCreateFolderOperation.actionNameForUndoing.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x24C1FAD20](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)operationForRedoing
{
  selfCopy = self;
  v3 = DOCCreateFolderOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  selfCopy = self;
  v3 = DOCCreateFolderOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables24DOCCreateFolderOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end