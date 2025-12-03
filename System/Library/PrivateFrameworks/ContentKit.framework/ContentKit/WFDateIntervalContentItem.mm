@interface WFDateIntervalContentItem
+ (id)coercions;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
- (LNCodableValue)dateIntervalValue;
- (NSDateInterval)dateInterval;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFDateIntervalContentItem

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    dateIntervalValue = [(WFDateIntervalContentItem *)self dateIntervalValue];
    dateInterval = [dateIntervalValue dateInterval];

    if (dateInterval)
    {
      v21 = MEMORY[0x277CCACA8];
      v12 = WFLocalizedString(@"%.0f seconds since %@");
      [dateInterval duration];
      v23 = v22;
      startDate = [dateInterval startDate];
      dateInterval4 = [v21 localizedStringWithFormat:v12, v23, startDate];
      v19 = [WFObjectRepresentation object:dateInterval named:dateInterval4];
      goto LABEL_8;
    }
  }

  else if ([MEMORY[0x277D237B0] wf_dateIntervalObjectClass] == class)
  {
    dateInterval2 = [(WFDateIntervalContentItem *)self dateInterval];

    if (dateInterval2)
    {
      v8 = objc_alloc(MEMORY[0x277D23950]);
      dateInterval3 = [(WFDateIntervalContentItem *)self dateInterval];
      dateInterval = [v8 initWithDateInterval:dateInterval3];

      if (dateInterval)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = WFLocalizedString(@"%.0f seconds since %@");
        startDate = [(WFDateIntervalContentItem *)self dateInterval];
        [startDate duration];
        v15 = v14;
        dateInterval4 = [(WFDateIntervalContentItem *)self dateInterval];
        startDate2 = [dateInterval4 startDate];
        v18 = [v11 localizedStringWithFormat:v12, v15, startDate2];
        v19 = [WFObjectRepresentation object:dateInterval named:v18];

LABEL_8:
        goto LABEL_10;
      }
    }
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (LNCodableValue)dateIntervalValue
{
  wf_dateIntervalObjectClass = [MEMORY[0x277D237B0] wf_dateIntervalObjectClass];

  return [(WFContentItem *)self objectForClass:wf_dateIntervalObjectClass];
}

- (NSDateInterval)dateInterval
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Date Interval (multiple)", @"Date Intervals");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Date Interval (singular)", @"Date Interval");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = +[WFObjectType typeWithClass:](WFObjectType, "typeWithClass:", [MEMORY[0x277D237B0] wf_dateIntervalObjectClass]);
  v6 = [v2 orderedSetWithObjects:{v3, v4, v5, 0}];

  return v6;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = +[WFObjectType typeWithClass:](WFObjectType, "typeWithClass:", [MEMORY[0x277D237B0] wf_dateIntervalObjectClass]);
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

WFTimeInterval *__56__WFDateIntervalContentItem_timeIntervalCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [WFTimeInterval alloc];
    v8 = [v6 dateInterval];
    [v8 duration];
    v9 = [(WFTimeInterval *)v7 initWithTimeInterval:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __50__WFDateIntervalContentItem_stringCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 dateInterval];
    v8 = [v7 description];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)coercions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  stringCoercionHandler = [self stringCoercionHandler];
  v5 = [WFCoercion coercionToClass:v3 handler:stringCoercionHandler];
  v11[0] = v5;
  v6 = objc_opt_class();
  timeIntervalCoercionHandler = [self timeIntervalCoercionHandler];
  v8 = [WFCoercion coercionToClass:v6 handler:timeIntervalCoercionHandler];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

@end