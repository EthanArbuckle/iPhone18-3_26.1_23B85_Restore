@interface MTDialogEventHandler
- (id)eventType;
- (id)eventVersion:(id)a3;
@end

@implementation MTDialogEventHandler

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTDialogEventHandler;
  v2 = [(MTEventHandler *)&v7 eventType];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"dialog";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTDialogEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C380;
  }

  v6 = v5;

  return v5;
}

@end