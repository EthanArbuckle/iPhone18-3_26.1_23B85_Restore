@interface IDSEventTracingOperation
- (IDSEventTracingOperation)init;
- (IDSEventTracingOperation)initWithName:(id)a3 uniqueIdentifier:(id)a4;
- (NSString)debugDescription;
- (NSString)description;
- (void)addDateSubfieldWithName:(id)a3 value:(id)a4;
- (void)addFlagSubfieldWithName:(id)a3 value:(BOOL)a4;
- (void)addStringSubfieldWithName:(id)a3 value:(id)a4;
- (void)addSubOperationWithOperation:(id)a3;
- (void)stop;
- (void)stopWithError:(id)a3;
@end

@implementation IDSEventTracingOperation

- (IDSEventTracingOperation)initWithName:(id)a3 uniqueIdentifier:(id)a4
{
  v5 = sub_1A7E22290();
  if (a4)
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

- (void)addSubOperationWithOperation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A7B0CF18(v4);
}

- (void)stopWithError:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1A7B0DD98(a3);
}

- (void)addDateSubfieldWithName:(id)a3 value:(id)a4
{
  v5 = sub_1A7E21B00();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A7E22290();
  v12 = v11;
  sub_1A7E21AD0();
  v13 = self;
  sub_1A7B0EC10(v10, v12, v9);

  (*(v6 + 8))(v9, v5);
}

- (void)addStringSubfieldWithName:(id)a3 value:(id)a4
{
  v5 = sub_1A7E22290();
  v7 = v6;
  v8 = sub_1A7E22290();
  v10 = v9;
  v11 = self;
  sub_1A7B0F04C(v5, v7, v8, v10);
}

- (void)stop
{
  v2 = self;
  sub_1A7B0DD98(0);
}

- (void)addFlagSubfieldWithName:(id)a3 value:(BOOL)a4
{
  v6 = sub_1A7E22290();
  v8 = v7;
  v9 = self;
  sub_1A7D71340(v6, v8, a4);
}

- (NSString)debugDescription
{
  v2 = self;
  sub_1A7D71664(v2, 0, 0xE000000000000000);

  v3 = sub_1A7E22260();

  return v3;
}

- (NSString)description
{
  v2 = self;
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