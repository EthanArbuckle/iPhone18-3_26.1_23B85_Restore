@interface WFDateContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)getListAltText:(id)text;
- (NSDate)date;
- (NSDateComponents)dateComponents;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
- (id)richListTitle;
- (id)timeDateComponents;
@end

@implementation WFDateContentItem

- (BOOL)getListAltText:(id)text
{
  textCopy = text;
  internalRepresentation = [(WFContentItem *)self internalRepresentation];
  specifiedName = [internalRepresentation specifiedName];

  if (textCopy && specifiedName)
  {
    textCopy[2](textCopy, specifiedName);
  }

  return specifiedName != 0;
}

- (id)richListTitle
{
  date = [(WFDateContentItem *)self date];
  wfName = [date wfName];

  return wfName;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Dates", @"Dates");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Date", @"Date");
  v5 = [contextCopy localize:v4];

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
  dateComponents = [(WFDateContentItem *)self dateComponents];
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  calendar = [dateComponents calendar];
  [v3 setCalendar:calendar];

  timeZone = [dateComponents timeZone];
  [v3 setTimeZone:timeZone];

  [v3 setHour:{objc_msgSend(dateComponents, "hour")}];
  [v3 setMinute:{objc_msgSend(dateComponents, "minute")}];
  [v3 setSecond:{objc_msgSend(dateComponents, "second")}];
  [v3 setNanosecond:{objc_msgSend(dateComponents, "nanosecond")}];

  return v3;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    v10 = MEMORY[0x277CCABB0];
    date = [(WFDateContentItem *)self date];
    [date timeIntervalSince1970];
    v12 = [v10 numberWithDouble:?];
    v13 = MEMORY[0x277CCACA8];
    v14 = WFLocalizedString(@"%.0f seconds since 1970");
    date2 = [(WFDateContentItem *)self date];
    [date2 timeIntervalSince1970];
    v17 = [v13 localizedStringWithFormat:v14, v16];
    v9 = [WFObjectRepresentation object:v12 named:v17];
  }

  else
  {
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    if (v7 == class)
    {
      date = [(WFContentItem *)self objectForClass:v8];
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v19 = [(WFDetectedDate *)currentCalendar dateFromComponents:date];
      v9 = [WFObjectRepresentation object:v19];

      goto LABEL_15;
    }

    if (v8 != class)
    {
      if (objc_opt_class() == class)
      {
        v22 = [(WFContentItem *)self objectForClass:objc_opt_class()];
        date = v22;
        if (!v22)
        {
          currentCalendar = [(WFDateContentItem *)self date];
          wfName = [currentCalendar wfName];
          v9 = [WFObjectRepresentation object:wfName];

          goto LABEL_15;
        }

        currentCalendar = [v22 wfName];
      }

      else
      {
        if (objc_opt_class() != class)
        {
          v9 = 0;
          goto LABEL_17;
        }

        date = [(WFContentItem *)self objectForClass:objc_opt_class()];
        currentCalendar = [[WFDetectedDate alloc] initWithDate:date timeIsSignificant:1];
      }

      v9 = [WFObjectRepresentation object:currentCalendar];
LABEL_15:

      goto LABEL_16;
    }

    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    date3 = [(WFDateContentItem *)self date];
    date = [currentCalendar2 components:-1 fromDate:date3];

    v9 = [WFObjectRepresentation object:date];
  }

LABEL_16:

LABEL_17:

  return v9;
}

- (NSDateComponents)dateComponents
{
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:0];
  firstObject = [v4 firstObject];
  object = [firstObject object];

  return object;
}

- (NSDate)date
{
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:0];
  firstObject = [v4 firstObject];
  object = [firstObject object];

  return object;
}

@end