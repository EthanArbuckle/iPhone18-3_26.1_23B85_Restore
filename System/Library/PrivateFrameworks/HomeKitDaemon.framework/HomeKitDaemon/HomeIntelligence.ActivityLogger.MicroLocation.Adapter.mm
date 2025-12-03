@interface HomeIntelligence.ActivityLogger.MicroLocation.Adapter
- (void)connection:(id)connection didUpdatePrediction:(id)prediction;
- (void)connection:(id)connection didUpdateServiceStatus:(id)status;
@end

@implementation HomeIntelligence.ActivityLogger.MicroLocation.Adapter

- (void)connection:(id)connection didUpdateServiceStatus:(id)status
{
  connectionCopy = connection;
  statusCopy = status;
  selfCopy = self;
  sub_2296DFCBC(statusCopy);
}

- (void)connection:(id)connection didUpdatePrediction:(id)prediction
{
  connectionCopy = connection;
  predictionCopy = prediction;
  selfCopy = self;
  sub_2296DFE70(predictionCopy);
}

@end