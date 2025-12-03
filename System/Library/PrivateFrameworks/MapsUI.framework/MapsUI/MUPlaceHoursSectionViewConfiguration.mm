@interface MUPlaceHoursSectionViewConfiguration
+ (id)configurationForBusinessHours:(id)hours;
+ (id)configurationForMapItem:(id)item;
+ (id)configurationForMessagesMapItem:(id)item;
@end

@implementation MUPlaceHoursSectionViewConfiguration

+ (id)configurationForBusinessHours:(id)hours
{
  hoursCopy = hours;
  v4 = objc_alloc_init(MUPlaceHoursSectionViewConfiguration);
  v5 = [hoursCopy mutableCopy];
  if ([hoursCopy count])
  {
    firstObject = [hoursCopy firstObject];
    isServiceHours = [firstObject isServiceHours];

    if ((isServiceHours & 1) == 0)
    {
      firstObject2 = [hoursCopy firstObject];
      [(MUPlaceHoursSectionViewConfiguration *)v4 setPlaceHours:firstObject2];

      [v5 removeObjectAtIndex:0];
    }
  }

  v9 = [v5 copy];
  [(MUPlaceHoursSectionViewConfiguration *)v4 setServiceHoursList:v9];

  [(MUPlaceHoursSectionViewConfiguration *)v4 setNumberOfInlineServiceHours:GEOConfigGetUInteger()];

  return v4;
}

+ (id)configurationForMessagesMapItem:(id)item
{
  v22[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _messageBusinessHours = [itemCopy _messageBusinessHours];
  if (_messageBusinessHours)
  {
    v7 = _messageBusinessHours;
    _geoMapItem = [itemCopy _geoMapItem];
    _messageLink = [_geoMapItem _messageLink];
    timeZone = [_messageLink timeZone];

    if (timeZone)
    {
      v11 = [MUBusinessHoursConfiguration alloc];
      _messageBusinessHours2 = [itemCopy _messageBusinessHours];
      v22[0] = _messageBusinessHours2;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      _geoMapItem2 = [itemCopy _geoMapItem];
      _messageLink2 = [_geoMapItem2 _messageLink];
      timeZone2 = [_messageLink2 timeZone];
      v17 = [(MUBusinessHoursConfiguration *)v11 initWithBusinessHours:v13 timeZone:timeZone2];

      v18 = _MULocalizedStringFromThisBundle(@"Messages Hours [Placecard]");
      [(MUBusinessHoursConfiguration *)v17 setHoursName:v18];

      [v5 addObject:v17];
    }
  }

  v19 = [self configurationForBusinessHours:v5];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)configurationForMapItem:(id)item
{
  v34 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([itemCopy _hasBusinessHours])
  {
    v5 = [MUBusinessHoursConfiguration alloc];
    _businessHours = [itemCopy _businessHours];
    timeZone = [itemCopy timeZone];
    v8 = [(MUBusinessHoursConfiguration *)v5 initWithBusinessHours:_businessHours timeZone:timeZone];

    v9 = _MULocalizedStringFromThisBundle(@"Normal Hours [Placecard]");
    [(MUBusinessHoursConfiguration *)v8 setHoursName:v9];

    [v4 addObject:v8];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = itemCopy;
  _linkedServices = [itemCopy _linkedServices];
  v11 = [_linkedServices countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(_linkedServices);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        businessHours = [v15 businessHours];
        v17 = [businessHours count];

        if (v17)
        {
          v18 = [MUBusinessHoursConfiguration alloc];
          businessHours2 = [v15 businessHours];
          timeZone2 = [v15 timeZone];
          v21 = [(MUBusinessHoursConfiguration *)v18 initWithBusinessHours:businessHours2 timeZone:timeZone2];

          localizedCategoryName = [v15 localizedCategoryName];
          [(MUBusinessHoursConfiguration *)v21 setHoursName:localizedCategoryName];

          [(MUBusinessHoursConfiguration *)v21 setIsServiceHours:1];
          [v4 addObject:v21];
        }
      }

      v12 = [_linkedServices countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v23 = [v27 configurationForBusinessHours:v4];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

@end