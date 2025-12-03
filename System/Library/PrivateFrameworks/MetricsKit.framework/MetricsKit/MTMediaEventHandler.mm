@interface MTMediaEventHandler
- (id)eventType;
- (id)eventVersion:(id)version;
@end

@implementation MTMediaEventHandler

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTMediaEventHandler;
  eventType = [(MTEventHandler *)&v7 eventType];
  v3 = eventType;
  if (eventType)
  {
    v4 = eventType;
  }

  else
  {
    v4 = @"media";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)version
{
  v8.receiver = self;
  v8.super_class = MTMediaEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:version];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C350;
  }

  v6 = v5;

  return v5;
}

@end