@interface IDSObjCPacketLogReader
- (IDSObjCPacketLogReader)init;
@end

@implementation IDSObjCPacketLogReader

- (IDSObjCPacketLogReader)init
{
  v3.receiver = self;
  v3.super_class = IDSObjCPacketLogReader;
  return [(IDSObjCPacketLogReader *)&v3 init];
}

@end