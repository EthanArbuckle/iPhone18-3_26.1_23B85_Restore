@interface DOCUSBEraseOperation
- (NSString)description;
- (_TtC26DocumentManagerExecutables20DOCUSBEraseOperation)init;
- (int64_t)operationState;
- (void)setOperationState:(int64_t)state;
@end

@implementation DOCUSBEraseOperation

- (int64_t)operationState
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_operationState;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOperationState:(int64_t)state
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_operationState;
  swift_beginAccess();
  *(&self->super.isa + v5) = state;
}

- (NSString)description
{
  selfCopy = self;
  v3 = DOCUSBEraseOperation.description.getter();
  v5 = v4;

  v6 = MEMORY[0x24C1FAD20](v3, v5);

  return v6;
}

- (_TtC26DocumentManagerExecutables20DOCUSBEraseOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end