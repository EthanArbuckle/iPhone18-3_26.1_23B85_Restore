@interface IMPacketTracker
- (BOOL)isComplete;
- (BOOL)isMissingAnyPacket;
- (BOOL)trackPacket:(int64_t)packet packetsExpected:(int64_t)expected error:(id *)error;
- (void)reset;
- (void)setPacketsExpected:(int64_t)expected;
@end

@implementation IMPacketTracker

- (void)reset
{
  *(&self->super.isa + OBJC_IVAR___IMPacketTracker_trackedPacketCount) = 0;
  v2 = self + OBJC_IVAR___IMPacketTracker_expectedPackets;
  *v2 = 0;
  v2[8] = 1;
  *(&self->super.isa + OBJC_IVAR___IMPacketTracker_packetBits) = 0;
  selfCopy = self;

  *(&selfCopy->super.isa + OBJC_IVAR___IMPacketTracker_expectedLastPacketBits) = 0;
}

- (void)setPacketsExpected:(int64_t)expected
{
  selfCopy = self;
  sub_1A87A9BBC(expected);
}

- (BOOL)trackPacket:(int64_t)packet packetsExpected:(int64_t)expected error:(id *)error
{
  selfCopy = self;
  sub_1A87A9D30(packet, expected);

  return 1;
}

- (BOOL)isMissingAnyPacket
{
  selfCopy = self;
  v3 = sub_1A87AA068();

  return v3 & 1;
}

- (BOOL)isComplete
{
  selfCopy = self;
  v3 = sub_1A87AA354();

  return v3 & 1;
}

@end