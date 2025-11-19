@interface WFVCalendarContentItem
+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)stringConversionBehavior;
- (BOOL)canGenerateRepresentationForType:(id)a3;
- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5;
@end

@implementation WFVCalendarContentItem

- (BOOL)canGenerateRepresentationForType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 string];
  if ([v7 isEqualToString:@"EKEvent"])
  {
  }

  else
  {
    v8 = v4;
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 string];

    LODWORD(v10) = [v11 isEqualToString:@"REMReminder"];
    if (!v10)
    {
      v21.receiver = self;
      v21.super_class = WFVCalendarContentItem;
      v19 = [(WFGenericFileContentItem *)&v21 canGenerateRepresentationForType:v8];
      goto LABEL_16;
    }
  }

  v12 = [MEMORY[0x277D79F68] typeWithString:@"com.apple.ical.ics"];
  v13 = [(WFContentItem *)self fileRepresentationForType:v12];

  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = [v13 data];
  v16 = [v14 initWithData:v15 encoding:4];

  v17 = [WFVCalendarFormatter calendarItemsFromICS:v16];
  v18 = [v17 objectsMatchingClass:{objc_msgSend(v4, "objectClass")}];

  v19 = [v18 count] != 0;
LABEL_16:

  return v19;
}

- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromClass(a3);
  if ([@"EKEvent" isEqualToString:v7])
  {
  }

  else
  {
    v8 = NSStringFromClass(a3);
    v9 = [@"REMReminder" isEqualToString:v8];

    if (!v9)
    {
      v16 = 0;
      goto LABEL_15;
    }
  }

  v10 = [MEMORY[0x277D79F68] typeWithString:@"com.apple.ical.ics"];
  v11 = [(WFContentItem *)self fileRepresentationForType:v10];

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = [v11 data];
  v14 = [v12 initWithData:v13 encoding:4];

  v15 = [WFVCalendarFormatter calendarItemsFromICS:v14];
  v16 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v23 = [WFObjectRepresentation object:v22, v25];
          [v16 addObject:v23];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }

LABEL_15:

  return v16;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"iCalendar items", @"iCalendar items");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"iCalendar item", @"iCalendar item");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClassName:@"EKEvent" frameworkName:@"EventKit" location:0];
  v4 = [WFObjectType typeWithClassName:@"REMReminder" frameworkName:@"ReminderKit" location:1];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277D79F68] typeWithString:@"com.apple.ical.ics"];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)stringConversionBehavior
{
  v2 = [a1 propertyForName:@"Name"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

+ (BOOL)supportedTypeMustBeDeterminedByInstance:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 string];
  if ([v7 isEqualToString:@"EKEvent"])
  {
  }

  else
  {
    v8 = v4;
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 string];

    LOBYTE(v10) = [v11 isEqualToString:@"REMReminder"];
    if ((v10 & 1) == 0)
    {
      v14.receiver = a1;
      v14.super_class = &OBJC_METACLASS___WFVCalendarContentItem;
      v12 = objc_msgSendSuper2(&v14, sel_supportedTypeMustBeDeterminedByInstance_, v8);
      goto LABEL_16;
    }
  }

  v12 = 1;
LABEL_16:

  return v12;
}

@end