@interface DOC_FICopyOperation
- (NSString)actionNameForUndoing;
- (_TtC26DocumentManagerExecutables19DOC_FICopyOperation)init;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)schedule;
@end

@implementation DOC_FICopyOperation

- (void)schedule
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xC8);
  v5 = self;
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    [v3 schedule];
  }
}

- (NSString)actionNameForUndoing
{
  if ((*(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceURLs))[2])
  {
    v3 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x248);
  }

  else
  {
    v3 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x240);
  }

  v4 = self;
  v5 = v3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x24C1FAD20](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)operationForRedoing
{
  v2 = self;
  v3 = DOC_FICopyOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  v2 = self;
  v3 = DOC_FICopyOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables19DOC_FICopyOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end