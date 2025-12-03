@interface IDSPacketDeduplicator
- (BOOL)markPacketAsReceivedWithSequenceNumber:(unsigned __int16)number;
@end

@implementation IDSPacketDeduplicator

- (BOOL)markPacketAsReceivedWithSequenceNumber:(unsigned __int16)number
{
  v4 = (self + OBJC_IVAR___IDSPacketDeduplicator_state);
  selfCopy = self;
  os_unfair_lock_lock(v4);
  sub_1A7D603E8(number, &v7);
  os_unfair_lock_unlock(v4);

  return v7;
}

@end