@interface IDSPacketDeduplicator
- (BOOL)markPacketAsReceivedWithSequenceNumber:(unsigned __int16)a3;
@end

@implementation IDSPacketDeduplicator

- (BOOL)markPacketAsReceivedWithSequenceNumber:(unsigned __int16)a3
{
  v4 = (self + OBJC_IVAR___IDSPacketDeduplicator_state);
  v5 = self;
  os_unfair_lock_lock(v4);
  sub_1A7D603E8(a3, &v7);
  os_unfair_lock_unlock(v4);

  return v7;
}

@end