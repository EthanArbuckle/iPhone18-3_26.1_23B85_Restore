@interface DOC_FPRenameOperation
- (NSString)actionNameForUndoing;
- (_TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation)initWithItem:(id)a3 newDisplayName:(id)a4;
- (_TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation)initWithItem:(id)a3 newFileName:(id)a4;
- (_TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation)initWithItem:(id)a3 newName:(id)a4;
- (id)operationForRedoing;
- (id)operationForUndoing;
@end

@implementation DOC_FPRenameOperation

- (NSString)actionNameForUndoing
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v3 = result;
    v10._object = 0x8000000249BD1B30;
    v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v4.value._object = 0xEB00000000656C62;
    v5._countAndFlagsBits = 0x656D616E6552;
    v6._object = 0x8000000249BD1AD0;
    v10._countAndFlagsBits = 0xD00000000000003ALL;
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
  v2 = self;
  v3 = DOC_FPRenameOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  v2 = self;
  v3 = DOC_FPRenameOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation)initWithItem:(id)a3 newName:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation)initWithItem:(id)a3 newFileName:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutablesP33_3DF2C731D711A9239F302026BC8371EA21DOC_FPRenameOperation)initWithItem:(id)a3 newDisplayName:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end