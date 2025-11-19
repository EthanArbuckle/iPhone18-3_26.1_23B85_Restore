@interface MUPlaceHoursSectionViewConfiguration
+ (id)configurationForBusinessHours:(id)a3;
+ (id)configurationForMapItem:(id)a3;
+ (id)configurationForMessagesMapItem:(id)a3;
@end

@implementation MUPlaceHoursSectionViewConfiguration

+ (id)configurationForBusinessHours:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MUPlaceHoursSectionViewConfiguration);
  v5 = [v3 mutableCopy];
  if ([v3 count])
  {
    v6 = [v3 firstObject];
    v7 = [v6 isServiceHours];

    if ((v7 & 1) == 0)
    {
      v8 = [v3 firstObject];
      [(MUPlaceHoursSectionViewConfiguration *)v4 setPlaceHours:v8];

      [v5 removeObjectAtIndex:0];
    }
  }

  v9 = [v5 copy];
  [(MUPlaceHoursSectionViewConfiguration *)v4 setServiceHoursList:v9];

  [(MUPlaceHoursSectionViewConfiguration *)v4 setNumberOfInlineServiceHours:GEOConfigGetUInteger()];

  return v4;
}

+ (id)configurationForMessagesMapItem:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v4 _messageBusinessHours];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 _geoMapItem];
    v9 = [v8 _messageLink];
    v10 = [v9 timeZone];

    if (v10)
    {
      v11 = [MUBusinessHoursConfiguration alloc];
      v12 = [v4 _messageBusinessHours];
      v22[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      v14 = [v4 _geoMapItem];
      v15 = [v14 _messageLink];
      v16 = [v15 timeZone];
      v17 = [(MUBusinessHoursConfiguration *)v11 initWithBusinessHours:v13 timeZone:v16];

      v18 = _MULocalizedStringFromThisBundle(@"Messages Hours [Placecard]");
      [(MUBusinessHoursConfiguration *)v17 setHoursName:v18];

      [v5 addObject:v17];
    }
  }

  v19 = [a1 configurationForBusinessHours:v5];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)configurationForMapItem:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v3 _hasBusinessHours])
  {
    v5 = [MUBusinessHoursConfiguration alloc];
    v6 = [v3 _businessHours];
    v7 = [v3 timeZone];
    v8 = [(MUBusinessHoursConfiguration *)v5 initWithBusinessHours:v6 timeZone:v7];

    v9 = _MULocalizedStringFromThisBundle(@"Normal Hours [Placecard]");
    [(MUBusinessHoursConfiguration *)v8 setHoursName:v9];

    [v4 addObject:v8];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = v3;
  v10 = [v3 _linkedServices];
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v15 businessHours];
        v17 = [v16 count];

        if (v17)
        {
          v18 = [MUBusinessHoursConfiguration alloc];
          v19 = [v15 businessHours];
          v20 = [v15 timeZone];
          v21 = [(MUBusinessHoursConfiguration *)v18 initWithBusinessHours:v19 timeZone:v20];

          v22 = [v15 localizedCategoryName];
          [(MUBusinessHoursConfiguration *)v21 setHoursName:v22];

          [(MUBusinessHoursConfiguration *)v21 setIsServiceHours:1];
          [v4 addObject:v21];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v23 = [v27 configurationForBusinessHours:v4];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

@end