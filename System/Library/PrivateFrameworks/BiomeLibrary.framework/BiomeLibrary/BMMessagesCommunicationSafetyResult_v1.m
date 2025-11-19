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
  v2 = [(BMMessagesCommunicationSafetyResult *)&v4 eventDirection];
  if (v2 < 3)
  {
    return v2 + 1;
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
  v2 = [(BMMessagesCommunicationSafetyResult *)&v4 contentType];
  if (v2 < 3)
  {
    return v2 + 1;
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
  v2 = [(BMMessagesCommunicationSafetyResult *)&v4 eventType];
  if (v2 < 4)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

@end