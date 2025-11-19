@interface WFDurationContentItem
+ (id)coercions;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
- (LNCodableValue)durationValue;
- (LNDurationBridge)duration;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
@end

@implementation WFDurationContentItem

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  if (objc_opt_class() == a3)
  {
    v16 = [(WFDurationContentItem *)self durationValue];
    v10 = [v16 duration];

    if (v10)
    {
      v17 = [v10 seconds];
      if (v17)
      {
        v18 = [v10 seconds];
        v19 = [v18 intValue];
      }

      else
      {
        v19 = 0;
      }

      v21 = [v10 attoseconds];
      if (v21)
      {
        v22 = [v10 attoseconds];
        v23 = [v22 intValue];
      }

      else
      {
        v23 = 0;
      }

      v24 = MEMORY[0x277CCACA8];
      v25 = WFLocalizedString(@"%d%.0f");
      [v24 localizedStringWithFormat:v25, v19, v23];
      goto LABEL_21;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_22;
  }

  if ([MEMORY[0x277D237B0] wf_durationObjectClass] != a3)
  {
    goto LABEL_10;
  }

  v7 = [(WFDurationContentItem *)self duration];

  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = objc_alloc(MEMORY[0x277D23950]);
  v9 = [(WFDurationContentItem *)self duration];
  v10 = [v8 initWithDuration:v9];

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = [(WFDurationContentItem *)self duration];
  v12 = [v11 seconds];
  if (v12)
  {
    v13 = [(WFDurationContentItem *)self duration];
    v14 = [v13 seconds];
    v15 = [v14 intValue];
  }

  else
  {
    v15 = 0;
  }

  v26 = [(WFDurationContentItem *)self duration];
  v27 = [v26 attoseconds];
  if (v27)
  {
    v28 = [(WFDurationContentItem *)self duration];
    v29 = [v28 attoseconds];
    v30 = [v29 intValue];
  }

  else
  {
    v30 = 0;
  }

  v31 = MEMORY[0x277CCACA8];
  v25 = WFLocalizedString(@"%d%.0f");
  [v31 localizedStringWithFormat:v25, v15, v30];
  v32 = LABEL_21:;
  v20 = [WFObjectRepresentation object:v10 named:v32];

LABEL_22:

  return v20;
}

- (LNCodableValue)durationValue
{
  v3 = [MEMORY[0x277D237B0] wf_durationObjectClass];

  return [(WFContentItem *)self objectForClass:v3];
}

- (LNDurationBridge)duration
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Duration (multiple)", @"Durations");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Duration (singular)", @"Duration");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = +[WFObjectType typeWithClass:](WFObjectType, "typeWithClass:", [MEMORY[0x277D237B0] wf_durationObjectClass]);
  v6 = [v2 orderedSetWithObjects:{v3, v4, v5, 0}];

  return v6;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = +[WFObjectType typeWithClass:](WFObjectType, "typeWithClass:", [MEMORY[0x277D237B0] wf_durationObjectClass]);
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

WFTimeInterval *__52__WFDurationContentItem_timeIntervalCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  if (!v6)
  {
    v10 = 0;
    v13 = 0;
    v12 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    v12 = 0;
    v10 = v6;
    goto LABEL_7;
  }

  v7 = [v6 duration];
  v8 = [v7 timeInterval];

  if (v8)
  {
    v9 = [WFTimeInterval alloc];
    v10 = [v6 duration];
    v11 = [v10 timeInterval];
    [v11 doubleValue];
    v12 = [(WFTimeInterval *)v9 initWithTimeInterval:?];

    v13 = v6;
LABEL_7:

    goto LABEL_8;
  }

  v12 = 0;
  v13 = v6;
LABEL_8:

  return v12;
}

id __46__WFDurationContentItem_stringCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 duration];
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