@interface INSetBinarySettingIntent
- (id)toDNDIntent;
@end

@implementation INSetBinarySettingIntent

- (id)toDNDIntent
{
  v3 = objc_alloc_init(DNDToggleDoNotDisturbIntent);
  if ([(INSetBinarySettingIntent *)self binaryValue]== 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [(DNDToggleDoNotDisturbIntent *)v3 setState:v4];

  return v3;
}

@end