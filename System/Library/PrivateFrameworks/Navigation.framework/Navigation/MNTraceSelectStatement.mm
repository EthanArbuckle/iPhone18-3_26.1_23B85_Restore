@interface MNTraceSelectStatement
- (double)doubleValue:(id)a3;
- (id)dataValue:(id)a3;
- (id)initForTrace:(id)a3 statement:(id)a4 outError:(id *)a5;
- (id)objectValue:(id)a3 ofClass:(Class)a4;
- (id)objectsValue:(id)a3 ofClasses:(id)a4;
- (id)stringValue:(id)a3;
- (int64_t)intValue:(id)a3;
@end

@implementation MNTraceSelectStatement

- (id)initForTrace:(id)a3 statement:(id)a4 outError:(id *)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)intValue:(id)a3
{
  v4 = sub_1D32770C0();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = MNTraceSelectStatement.intValue(_:)(v8);

  return v9;
}

- (double)doubleValue:(id)a3
{
  v4 = sub_1D32770C0();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = MNTraceSelectStatement.doubleValue(_:)(v8);

  return v9;
}

- (id)stringValue:(id)a3
{
  v4 = sub_1D32770C0();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = MNTraceSelectStatement.stringValue(_:)(v8).value._object;

  if (object)
  {
    v10 = sub_1D32770B0();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dataValue:(id)a3
{
  v4 = sub_1D32770C0();
  v6 = v5;
  v7 = self;
  v8 = MNTraceSelectStatement.dataValue(_:)(v4, v6);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = sub_1D3276C70();
    sub_1D31427B8(v8, v10);
    v11 = v12;
  }

  return v11;
}

- (id)objectValue:(id)a3 ofClass:(Class)a4
{
  sub_1D32770C0();
  swift_getObjCClassMetadata();
  v5 = self;
  v6 = MNTraceSelectStatement.objectValue<A>(_:of:)();

  return v6;
}

- (id)objectsValue:(id)a3 ofClasses:(id)a4
{
  v5 = sub_1D32770C0();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C398, &qword_1D328AE98);
  v8 = sub_1D32771A0();
  v9 = self;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  v11 = MNTraceSelectStatement.objectsValue(_:of:)(v10, v8);

  if (v11)
  {
    sub_1D3126084(0, &qword_1EC75C970, 0x1E696AEC0);
    sub_1D3142750();
    v12 = sub_1D3277040();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end