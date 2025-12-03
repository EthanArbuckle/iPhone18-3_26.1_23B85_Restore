@interface CUIKColorDeserializer
+ (id)_deserializeReminderColor:(id)color;
+ (id)deserializeColor:(id)color providerIdentifier:(id)identifier;
@end

@implementation CUIKColorDeserializer

+ (id)_deserializeReminderColor:(id)color
{
  v3 = CUIKReminderColorDeserializer_onceToken;
  colorCopy = color;
  if (v3 != -1)
  {
    +[CUIKColorDeserializer _deserializeReminderColor:];
  }

  v5 = [CUIKReminderColorDeserializer_deserializer deserializeColor:colorCopy];

  return v5;
}

+ (id)deserializeColor:(id)color providerIdentifier:(id)identifier
{
  colorCopy = color;
  identifierCopy = identifier;
  v8 = objc_getAssociatedObject(colorCopy, &deserializedColorKeyUniqueAddress);
  if (!v8)
  {
    v9 = +[CUIKCalendarColor providerIdentifier];
    v10 = [v9 isEqualToString:identifierCopy];

    if (v10)
    {
      v11 = [self _deserializeCUIKCalendarColor:colorCopy];
    }

    else
    {
      if (![*MEMORY[0x1E6993178] isEqualToString:identifierCopy])
      {
        v8 = 0;
        goto LABEL_9;
      }

      v11 = [self _deserializeReminderColor:colorCopy];
    }

    v8 = v11;
    if (v11)
    {
      objc_setAssociatedObject(colorCopy, &deserializedColorKeyUniqueAddress, v11, 1);
    }
  }

LABEL_9:

  return v8;
}

@end