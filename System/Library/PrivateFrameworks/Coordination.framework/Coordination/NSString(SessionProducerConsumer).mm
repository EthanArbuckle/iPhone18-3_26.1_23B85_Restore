@interface NSString(SessionProducerConsumer)
- (id)_sessionConsumerSubTopic;
- (id)_sessionProducerSubTopic;
@end

@implementation NSString(SessionProducerConsumer)

- (id)_sessionProducerSubTopic
{
  if ([self hasPrefix:@"SessionProducer+"])
  {
    v2 = [self rangeOfString:@"SessionProducer+"];
    v4 = [self substringFromIndex:v2 + v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sessionConsumerSubTopic
{
  if ([self hasPrefix:@"SessionConsumer+"])
  {
    v2 = [self rangeOfString:@"SessionConsumer+"];
    v4 = [self substringFromIndex:v2 + v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end