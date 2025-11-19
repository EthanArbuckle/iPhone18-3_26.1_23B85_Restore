@interface WFDateContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)getListAltText:(id)a3;
- (NSDate)date;
- (NSDateComponents)dateComponents;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (id)richListTitle;
- (id)timeDateComponents;
@end

@implementation WFDateContentItem

- (BOOL)getListAltText:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItem *)self internalRepresentation];
  v6 = [v5 specifiedName];

  if (v4 && v6)
  {
    v4[2](v4, v6);
  }

  return v6 != 0;
}

- (id)richListTitle
{
  v2 = [(WFDateContentItem *)self date];
  v3 = [v2 wfName];

  return v3;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Dates", @"Dates");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Date", @"Date");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  v6 = [v2 orderedSetWithObjects:{v3, v4, v5, 0}];

  return v6;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)propertyBuilders
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedContentPropertyNameMarker(@"Time");
  v3 = [WFContentPropertyBuilder block:&__block_literal_global_18534 name:v2 class:objc_opt_class()];
  v4 = [v3 timeUnits:2097376];
  v5 = [v4 comparableUnits:2097376];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

void __37__WFDateContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v7 = [a2 timeDateComponents];
  (a4)[2](v6, v7);
}

- (id)timeDateComponents
{
  v2 = [(WFDateContentItem *)self dateComponents];
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v4 = [v2 calendar];
  [v3 setCalendar:v4];

  v5 = [v2 timeZone];
  [v3 setTimeZone:v5];

  [v3 setHour:{objc_msgSend(v2, "hour")}];
  [v3 setMinute:{objc_msgSend(v2, "minute")}];
  [v3 setSecond:{objc_msgSend(v2, "second")}];
  [v3 setNanosecond:{objc_msgSend(v2, "nanosecond")}];

  return v3;
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  if (objc_opt_class() == a3)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [(WFDateContentItem *)self date];
    [v11 timeIntervalSince1970];
    v12 = [v10 numberWithDouble:?];
    v13 = MEMORY[0x277CCACA8];
    v14 = WFLocalizedString(@"%.0f seconds since 1970");
    v15 = [(WFDateContentItem *)self date];
    [v15 timeIntervalSince1970];
    v17 = [v13 localizedStringWithFormat:v14, v16];
    v9 = [WFObjectRepresentation object:v12 named:v17];
  }

  else
  {
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    if (v7 == a3)
    {
      v11 = [(WFContentItem *)self objectForClass:v8];
      v18 = [MEMORY[0x277CBEA80] currentCalendar];
      v19 = [(WFDetectedDate *)v18 dateFromComponents:v11];
      v9 = [WFObjectRepresentation object:v19];

      goto LABEL_15;
    }

    if (v8 != a3)
    {
      if (objc_opt_class() == a3)
      {
        v22 = [(WFContentItem *)self objectForClass:objc_opt_class()];
        v11 = v22;
        if (!v22)
        {
          v18 = [(WFDateContentItem *)self date];
          v23 = [v18 wfName];
          v9 = [WFObjectRepresentation object:v23];

          goto LABEL_15;
        }

        v18 = [v22 wfName];
      }

      else
      {
        if (objc_opt_class() != a3)
        {
          v9 = 0;
          goto LABEL_17;
        }

        v11 = [(WFContentItem *)self objectForClass:objc_opt_class()];
        v18 = [[WFDetectedDate alloc] initWithDate:v11 timeIsSignificant:1];
      }

      v9 = [WFObjectRepresentation object:v18];
LABEL_15:

      goto LABEL_16;
    }

    v20 = [MEMORY[0x277CBEA80] currentCalendar];
    v21 = [(WFDateContentItem *)self date];
    v11 = [v20 components:-1 fromDate:v21];

    v9 = [WFObjectRepresentation object:v11];
  }

LABEL_16:

LABEL_17:

  return v9;
}

- (NSDateComponents)dateComponents
{
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:0];
  v5 = [v4 firstObject];
  v6 = [v5 object];

  return v6;
}

- (NSDate)date
{
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:0];
  v5 = [v4 firstObject];
  v6 = [v5 object];

  return v6;
}

@end