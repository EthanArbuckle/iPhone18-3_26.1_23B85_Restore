@interface BMMessagesCommunicationSafetyResult_v1
- (int)contentType;
- (int)eventDirection;
- (int)eventType;
@end

@implementation BMMessagesCommunicationSafetyResult_v1

- (int)eventDirection
{
  v4.receiver = self;
  v4.super_class = BMMessagesCommunicationSafetyResult_v1;
  eventDirection = [(BMMessagesCommunicationSafetyResult *)&v4 eventDirection];
  if (eventDirection < 3)
  {
    return eventDirection + 1;
  }

  else
  {
    return 0;
  }
}

- (int)contentType
{
  v4.receiver = self;
  v4.super_class = BMMessagesCommunicationSafetyResult_v1;
  contentType = [(BMMessagesCommunicationSafetyResult *)&v4 contentType];
  if (contentType < 3)
  {
    return contentType + 1;
  }

  else
  {
    return 0;
  }
}

- (int)eventType
{
  v4.receiver = self;
  v4.super_class = BMMessagesCommunicationSafetyResult_v1;
  eventType = [(BMMessagesCommunicationSafetyResult *)&v4 eventType];
  if (eventType < 4)
  {
    return eventType + 1;
  }

  else
  {
    return 0;
  }
}

@end