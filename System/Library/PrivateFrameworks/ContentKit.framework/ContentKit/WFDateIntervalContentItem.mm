@interface WFDateIntervalContentItem
+ (id)coercions;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
- (LNCodableValue)dateIntervalValue;
- (NSDateInterval)dateInterval;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
@end

@implementation WFDateIntervalContentItem

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  if (objc_opt_class() == a3)
  {
    v20 = [(WFDateIntervalContentItem *)self dateIntervalValue];
    v10 = [v20 dateInterval];

    if (v10)
    {
      v21 = MEMORY[0x277CCACA8];
      v12 = WFLocalizedString(@"%.0f seconds since %@");
      [v10 duration];
      v23 = v22;
      v13 = [v10 startDate];
      v16 = [v21 localizedStringWithFormat:v12, v23, v13];
      v19 = [WFObjectRepresentation object:v10 named:v16];
      goto LABEL_8;
    }
  }

  else if ([MEMORY[0x277D237B0] wf_dateIntervalObjectClass] == a3)
  {
    v7 = [(WFDateIntervalContentItem *)self dateInterval];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277D23950]);
      v9 = [(WFDateIntervalContentItem *)self dateInterval];
      v10 = [v8 initWithDateInterval:v9];

      if (v10)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = WFLocalizedString(@"%.0f seconds since %@");
        v13 = [(WFDateIntervalContentItem *)self dateInterval];
        [v13 duration];
        v15 = v14;
        v16 = [(WFDateIntervalContentItem *)self dateInterval];
        v17 = [v16 startDate];
        v18 = [v11 localizedStringWithFormat:v12, v15, v17];
        v19 = [WFObjectRepresentation object:v10 named:v18];

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
  v3 = [MEMORY[0x277D237B0] wf_dateIntervalObjectClass];

  return [(WFContentItem *)self objectForClass:v3];
}

- (NSDateInterval)dateInterval
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Date Interval (multiple)", @"Date Intervals");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Date Interval (singular)", @"Date Interval");
  v5 = [v3 localize:v4];

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
  v4 = [a1 stringCoercionHandler];
  v5 = [WFCoercion coercionToClass:v3 handler:v4];
  v11[0] = v5;
  v6 = objc_opt_class();
  v7 = [a1 timeIntervalCoercionHandler];
  v8 = [WFCoercion coercionToClass:v6 handler:v7];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

@end