@interface IDSObjCPacketLogWriter
- (IDSObjCPacketLogWriter)init;
- (void)writeData:(id)data;
@end

@implementation IDSObjCPacketLogWriter

- (void)writeData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v5 = dataCopy;
    dataCopy = sub_1A7E21A10();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1A7CC63B0(dataCopy, v7);
  sub_1A7B1516C(dataCopy, v7);
}

- (IDSObjCPacketLogWriter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end