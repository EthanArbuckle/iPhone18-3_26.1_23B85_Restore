@interface WFNumberContentItem
+ (id)coercions;
+ (id)contentCategories;
+ (id)itemWithNumber:(id)number maximumFractionDigitsForDisplay:(id)display;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)ownedTypes;
- (BOOL)getListSubtitle:(id)subtitle;
- (NSNumber)number;
- (WFNumberContentItem)initWithCoder:(id)coder;
- (id)roundedName;
- (void)copyStateToItem:(id)item;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFNumberContentItem

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFNumberContentItem;
  coderCopy = coder;
  [(WFContentItem *)&v7 encodeWithCoder:coderCopy];
  v5 = [@"WFNumberContentItem" stringByAppendingString:{@"maximumFractionDigitsForDisplay", v7.receiver, v7.super_class}];
  maximumFractionDigitsForDisplay = [(WFNumberContentItem *)self maximumFractionDigitsForDisplay];
  [coderCopy encodeObject:maximumFractionDigitsForDisplay forKey:v5];
}

- (WFNumberContentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WFNumberContentItem;
  v5 = [(WFContentItem *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [@"WFNumberContentItem" stringByAppendingString:@"maximumFractionDigitsForDisplay"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v6];
    maximumFractionDigitsForDisplay = v5->_maximumFractionDigitsForDisplay;
    v5->_maximumFractionDigitsForDisplay = v7;

    v9 = v5;
  }

  return v5;
}

- (void)copyStateToItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = itemCopy;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  maximumFractionDigitsForDisplay = [(WFNumberContentItem *)self maximumFractionDigitsForDisplay];
  [v5 setMaximumFractionDigitsForDisplay:maximumFractionDigitsForDisplay];
}

- (BOOL)getListSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  name = [(WFContentItem *)self name];
  roundedName = [(WFNumberContentItem *)self roundedName];
  v7 = [name isEqualToString:roundedName];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFNumberContentItem;
    v9 = [(WFContentItem *)&v12 getListSubtitle:0];
    v8 = v9;
    if (subtitleCopy && v9)
    {
      roundedName2 = [(WFNumberContentItem *)self roundedName];
      subtitleCopy[2](subtitleCopy, roundedName2);

      v8 = 1;
    }
  }

  return v8;
}

- (id)roundedName
{
  number = [(WFNumberContentItem *)self number];
  maximumFractionDigitsForDisplay = [(WFNumberContentItem *)self maximumFractionDigitsForDisplay];
  v5 = [number wfNameWithMaximumFractionDigits:maximumFractionDigitsForDisplay];

  return v5;
}

- (NSNumber)number
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Numbers", @"Numbers");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Number", @"Number");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Scripting";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)itemWithNumber:(id)number maximumFractionDigitsForDisplay:(id)display
{
  numberCopy = number;
  displayCopy = display;
  if (!numberCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFNumberContentItem.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"number"}];
  }

  v9 = [numberCopy wfNameWithMaximumFractionDigits:displayCopy];
  v10 = [self itemWithObject:numberCopy named:v9];
  [v10 setMaximumFractionDigitsForDisplay:displayCopy];

  return v10;
}

+ (id)coercions
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = [WFCoercionHandler block:&__block_literal_global_23246];
  v4 = [WFCoercion coercionToClass:v2 handler:v3];
  v10[0] = v4;
  v5 = objc_opt_class();
  v6 = [WFCoercionHandler block:&__block_literal_global_56_23248];
  v7 = [WFCoercion coercionToClass:v5 handler:v6];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  return v8;
}

id __32__WFNumberContentItem_coercions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 roundedName];
  v4 = [v2 name];

  v5 = [WFObjectRepresentation object:v3 named:v4];

  return v5;
}

id __32__WFNumberContentItem_coercions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA980];
  v3 = a2;
  v4 = [v3 number];
  v5 = v4;
  if (v4)
  {
    [v4 decimalValue];
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
  }

  v6 = [v2 decimalNumberWithDecimal:v10];
  v7 = [v3 name];

  v8 = [WFObjectRepresentation object:v6 named:v7];

  return v8;
}

@end