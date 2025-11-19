@interface IDSObjCPacketLogWriter
- (IDSObjCPacketLogWriter)init;
- (void)writeData:(id)a3;
@end

@implementation IDSObjCPacketLogWriter

- (void)writeData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_1A7E21A10();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_1A7CC63B0(v3, v7);
  sub_1A7B1516C(v3, v7);
}

- (IDSObjCPacketLogWriter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end