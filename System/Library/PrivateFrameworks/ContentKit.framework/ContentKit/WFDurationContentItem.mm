@interface WFDurationContentItem
+ (id)coercions;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
- (LNCodableValue)durationValue;
- (LNDurationBridge)duration;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFDurationContentItem

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    durationValue = [(WFDurationContentItem *)self durationValue];
    duration = [durationValue duration];

    if (duration)
    {
      seconds = [duration seconds];
      if (seconds)
      {
        seconds2 = [duration seconds];
        intValue = [seconds2 intValue];
      }

      else
      {
        intValue = 0;
      }

      attoseconds = [duration attoseconds];
      if (attoseconds)
      {
        attoseconds2 = [duration attoseconds];
        intValue2 = [attoseconds2 intValue];
      }

      else
      {
        intValue2 = 0;
      }

      v24 = MEMORY[0x277CCACA8];
      v25 = WFLocalizedString(@"%d%.0f");
      [v24 localizedStringWithFormat:v25, intValue, intValue2];
      goto LABEL_21;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_22;
  }

  if ([MEMORY[0x277D237B0] wf_durationObjectClass] != class)
  {
    goto LABEL_10;
  }

  duration2 = [(WFDurationContentItem *)self duration];

  if (!duration2)
  {
    goto LABEL_10;
  }

  v8 = objc_alloc(MEMORY[0x277D23950]);
  duration3 = [(WFDurationContentItem *)self duration];
  duration = [v8 initWithDuration:duration3];

  if (!duration)
  {
    goto LABEL_10;
  }

  duration4 = [(WFDurationContentItem *)self duration];
  seconds3 = [duration4 seconds];
  if (seconds3)
  {
    duration5 = [(WFDurationContentItem *)self duration];
    seconds4 = [duration5 seconds];
    intValue3 = [seconds4 intValue];
  }

  else
  {
    intValue3 = 0;
  }

  duration6 = [(WFDurationContentItem *)self duration];
  attoseconds3 = [duration6 attoseconds];
  if (attoseconds3)
  {
    duration7 = [(WFDurationContentItem *)self duration];
    attoseconds4 = [duration7 attoseconds];
    intValue4 = [attoseconds4 intValue];
  }

  else
  {
    intValue4 = 0;
  }

  v31 = MEMORY[0x277CCACA8];
  v25 = WFLocalizedString(@"%d%.0f");
  [v31 localizedStringWithFormat:v25, intValue3, intValue4];
  v32 = LABEL_21:;
  v20 = [WFObjectRepresentation object:duration named:v32];

LABEL_22:

  return v20;
}

- (LNCodableValue)durationValue
{
  wf_durationObjectClass = [MEMORY[0x277D237B0] wf_durationObjectClass];

  return [(WFContentItem *)self objectForClass:wf_durationObjectClass];
}

- (LNDurationBridge)duration
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Duration (multiple)", @"Durations");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Duration (singular)", @"Duration");
  v5 = [contextCopy localize:v4];

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