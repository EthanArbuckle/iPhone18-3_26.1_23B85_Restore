@interface DOC_FIRenameOperation
- (NSString)actionNameForUndoing;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)registerUndo;
@end

@implementation DOC_FIRenameOperation

- (NSString)actionNameForUndoing
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v10._object = 0x8000000249BD1AF0;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v5._countAndFlagsBits = 0x656D616E6552;
    v6._object = 0x8000000249BD1AD0;
    v10._countAndFlagsBits = 0xD000000000000039;
    v6._countAndFlagsBits = 0xD00000000000001CLL;
    v5._object = 0xE600000000000000;
    v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v4, v3, v5, v10);

    v8 = MEMORY[0x24C1FAD20](v7._countAndFlagsBits, v7._object);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)operationForRedoing
{
  selfCopy = self;
  v3 = DOC_FIRenameOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  selfCopy = self;
  v3 = DOC_FIRenameOperation.operationForUndoing()();

  return v3;
}

- (void)registerUndo
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_didRegisterUndo) == 1)
  {
    [*(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FIRenameOperation_undoManager) registerUndoOperationForSender_];
  }
}

@end