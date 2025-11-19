@interface CUIKColorDeserializer
+ (id)_deserializeReminderColor:(id)a3;
+ (id)deserializeColor:(id)a3 providerIdentifier:(id)a4;
@end

@implementation CUIKColorDeserializer

+ (id)_deserializeReminderColor:(id)a3
{
  v3 = CUIKReminderColorDeserializer_onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[CUIKColorDeserializer _deserializeReminderColor:];
  }

  v5 = [CUIKReminderColorDeserializer_deserializer deserializeColor:v4];

  return v5;
}

+ (id)deserializeColor:(id)a3 providerIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_getAssociatedObject(v6, &deserializedColorKeyUniqueAddress);
  if (!v8)
  {
    v9 = +[CUIKCalendarColor providerIdentifier];
    v10 = [v9 isEqualToString:v7];

    if (v10)
    {
      v11 = [a1 _deserializeCUIKCalendarColor:v6];
    }

    else
    {
      if (![*MEMORY[0x1E6993178] isEqualToString:v7])
      {
        v8 = 0;
        goto LABEL_9;
      }

      v11 = [a1 _deserializeReminderColor:v6];
    }

    v8 = v11;
    if (v11)
    {
      objc_setAssociatedObject(v6, &deserializedColorKeyUniqueAddress, v11, 1);
    }
  }

LABEL_9:

  return v8;
}

@end