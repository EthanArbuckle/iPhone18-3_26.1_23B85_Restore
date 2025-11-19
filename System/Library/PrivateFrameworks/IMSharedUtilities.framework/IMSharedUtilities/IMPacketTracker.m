@interface IMPacketTracker
- (BOOL)isComplete;
- (BOOL)isMissingAnyPacket;
- (BOOL)trackPacket:(int64_t)a3 packetsExpected:(int64_t)a4 error:(id *)a5;
- (void)reset;
- (void)setPacketsExpected:(int64_t)a3;
@end

@implementation IMPacketTracker

- (void)reset
{
  *(&self->super.isa + OBJC_IVAR___IMPacketTracker_trackedPacketCount) = 0;
  v2 = self + OBJC_IVAR___IMPacketTracker_expectedPackets;
  *v2 = 0;
  v2[8] = 1;
  *(&self->super.isa + OBJC_IVAR___IMPacketTracker_packetBits) = 0;
  v3 = self;

  *(&v3->super.isa + OBJC_IVAR___IMPacketTracker_expectedLastPacketBits) = 0;
}

- (void)setPacketsExpected:(int64_t)a3
{
  v4 = self;
  sub_1A87A9BBC(a3);
}

- (BOOL)trackPacket:(int64_t)a3 packetsExpected:(int64_t)a4 error:(id *)a5
{
  v7 = self;
  sub_1A87A9D30(a3, a4);

  return 1;
}

- (BOOL)isMissingAnyPacket
{
  v2 = self;
  v3 = sub_1A87AA068();

  return v3 & 1;
}

- (BOOL)isComplete
{
  v2 = self;
  v3 = sub_1A87AA354();

  return v3 & 1;
}

@end