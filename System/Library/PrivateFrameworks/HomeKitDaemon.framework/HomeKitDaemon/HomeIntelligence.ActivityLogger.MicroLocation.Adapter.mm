@interface HomeIntelligence.ActivityLogger.MicroLocation.Adapter
- (void)connection:(id)a3 didUpdatePrediction:(id)a4;
- (void)connection:(id)a3 didUpdateServiceStatus:(id)a4;
@end

@implementation HomeIntelligence.ActivityLogger.MicroLocation.Adapter

- (void)connection:(id)a3 didUpdateServiceStatus:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2296DFCBC(v7);
}

- (void)connection:(id)a3 didUpdatePrediction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2296DFE70(v7);
}

@end