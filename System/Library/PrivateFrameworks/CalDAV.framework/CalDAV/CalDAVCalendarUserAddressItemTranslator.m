@interface CalDAVCalendarUserAddressItemTranslator
+ (id)_preferredAttributeForItem:(id)a3;
+ (id)calDAVUserAddressForItem:(id)a3;
+ (id)calDAVUserAddressForItem:(id)a3 prependMailTo:(BOOL)a4;
+ (id)userAddressesForAddressSetItem:(id)a3;
@end

@implementation CalDAVCalendarUserAddressItemTranslator

+ (id)userAddressesForAddressSetItem:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 hrefs];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [objc_opt_class() calDAVUserAddressForItem:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)calDAVUserAddressForItem:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() calDAVUserAddressForItem:v3 prependMailTo:0];

  return v4;
}

+ (id)calDAVUserAddressForItem:(id)a3 prependMailTo:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 _preferredAttributeForItem:v6];
  v8 = [v6 payloadAsString];

  if (v8)
  {
    if (v4 && ([v8 hasPrefix:@"mailto"] & 1) == 0)
    {
      v9 = [@"mailto:" stringByAppendingString:v8];

      v8 = v9;
    }

    v10 = +[CalDAVCalendarUserAddress defaultPreferredAttribute];
    if (v7)
    {
      v11 = [v7 intValue];
    }

    else
    {
      v11 = v10;
    }

    v13 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    if (v13)
    {
      v12 = [[CalDAVCalendarUserAddress alloc] initWithAddress:v13 preferred:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_preferredAttributeForItem:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a3 attributes];
  if ([v3 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 name];
          v11 = [v10 isEqualToString:@"preferred"];

          if (v11)
          {
            v12 = [v9 value];
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end