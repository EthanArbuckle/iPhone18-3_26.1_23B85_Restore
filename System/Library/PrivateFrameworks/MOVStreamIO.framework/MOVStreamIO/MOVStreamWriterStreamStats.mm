@interface MOVStreamWriterStreamStats
- (MOVStreamWriterStreamStats)init;
@end

@implementation MOVStreamWriterStreamStats

- (MOVStreamWriterStreamStats)init
{
  v5.receiver = self;
  v5.super_class = MOVStreamWriterStreamStats;
  v2 = [(MOVStreamWriterStreamStats *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MOVStreamWriterStreamStats *)v2 setFifoItemCount:0];
    [(MOVStreamWriterStreamStats *)v3 setVisitCount:0];
    [(MOVStreamWriterStreamStats *)v3 setAttemptCount:0];
    [(MOVStreamWriterStreamStats *)v3 setWriteCount:0];
  }

  return v3;
}

@end