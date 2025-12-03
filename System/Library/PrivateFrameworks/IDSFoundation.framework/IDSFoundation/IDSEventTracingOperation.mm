@interface IDSEventTracingOperation
- (IDSEventTracingOperation)init;
- (IDSEventTracingOperation)initWithName:(id)name uniqueIdentifier:(id)identifier;
- (NSString)debugDescription;
- (NSString)description;
- (void)addDateSubfieldWithName:(id)name value:(id)value;
- (void)addFlagSubfieldWithName:(id)name value:(BOOL)value;
- (void)addStringSubfieldWithName:(id)name value:(id)value;
- (void)addSubOperationWithOperation:(id)operation;
- (void)stop;
- (void)stopWithError:(id)error;
@end

@implementation IDSEventTracingOperation

- (IDSEventTracingOperation)initWithName:(id)name uniqueIdentifier:(id)identifier
{
  v5 = sub_1A7E22290();
  if (identifier)
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_1A7E22290();
    v5 = v7;
    v11 = v10;
    v6 = v8;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  return EventTracingOperation.init(name:uniqueIdentifier:)(v5, v6, v9, v11);
}

- (void)addSubOperationWithOperation:(id)operation
{
  operationCopy = operation;
  selfCopy = self;
  sub_1A7B0CF18(operationCopy);
}

- (void)stopWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_1A7B0DD98(error);
}

- (void)addDateSubfieldWithName:(id)name value:(id)value
{
  v5 = sub_1A7E21B00();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A7E22290();
  v12 = v11;
  sub_1A7E21AD0();
  selfCopy = self;
  sub_1A7B0EC10(v10, v12, v9);

  (*(v6 + 8))(v9, v5);
}

- (void)addStringSubfieldWithName:(id)name value:(id)value
{
  v5 = sub_1A7E22290();
  v7 = v6;
  v8 = sub_1A7E22290();
  v10 = v9;
  selfCopy = self;
  sub_1A7B0F04C(v5, v7, v8, v10);
}

- (void)stop
{
  selfCopy = self;
  sub_1A7B0DD98(0);
}

- (void)addFlagSubfieldWithName:(id)name value:(BOOL)value
{
  v6 = sub_1A7E22290();
  v8 = v7;
  selfCopy = self;
  sub_1A7D71340(v6, v8, value);
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_1A7D71664(selfCopy, 0, 0xE000000000000000);

  v3 = sub_1A7E22260();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  sub_1A7D71B04();

  v3 = sub_1A7E22260();

  return v3;
}

- (IDSEventTracingOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end