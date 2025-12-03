@interface HKDisplayTypeSummaryAttribution
- (BOOL)isEqual:(id)equal;
- (HKDisplayTypeSummaryAttribution)initWithAttribution:(id)attribution hasLink:(BOOL)link primaryProfileOnly:(BOOL)only;
- (HKDisplayTypeSummaryAttribution)initWithAttribution:(id)attribution urlAttribute:(id)attribute iPadUrlAttribute:(id)urlAttribute primaryProfileOnly:(BOOL)only;
- (HKDisplayTypeSummaryAttribution)initWithAttribution:(id)attribution urlAttribute:(id)attribute primaryProfileOnly:(BOOL)only;
@end

@implementation HKDisplayTypeSummaryAttribution

- (HKDisplayTypeSummaryAttribution)initWithAttribution:(id)attribution hasLink:(BOOL)link primaryProfileOnly:(BOOL)only
{
  attributionCopy = attribution;
  v13.receiver = self;
  v13.super_class = HKDisplayTypeSummaryAttribution;
  v9 = [(HKDisplayTypeSummaryAttribution *)&v13 init];
  if (v9)
  {
    v10 = [attributionCopy copy];
    attribution = v9->_attribution;
    v9->_attribution = v10;

    v9->_hasLink = link;
    v9->_primaryProfileOnly = only;
  }

  return v9;
}

- (HKDisplayTypeSummaryAttribution)initWithAttribution:(id)attribution urlAttribute:(id)attribute primaryProfileOnly:(BOOL)only
{
  onlyCopy = only;
  attributeCopy = attribute;
  v9 = MEMORY[0x1E696AD40];
  attributionCopy = attribution;
  v11 = [[v9 alloc] initWithString:attributionCopy];

  if (attributeCopy && [v11 length])
  {
    [v11 addAttribute:*MEMORY[0x1E69DB670] value:attributeCopy range:{0, objc_msgSend(v11, "length")}];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(HKDisplayTypeSummaryAttribution *)self initWithAttribution:v11 hasLink:v12 primaryProfileOnly:onlyCopy];

  return v13;
}

- (HKDisplayTypeSummaryAttribution)initWithAttribution:(id)attribution urlAttribute:(id)attribute iPadUrlAttribute:(id)urlAttribute primaryProfileOnly:(BOOL)only
{
  onlyCopy = only;
  attributeCopy = attribute;
  urlAttributeCopy = urlAttribute;
  v12 = MEMORY[0x1E696C608];
  attributionCopy = attribution;
  sharedBehavior = [v12 sharedBehavior];
  isiPad = [sharedBehavior isiPad];

  v16 = [HKDisplayTypeSummaryAttribution alloc];
  if (isiPad)
  {
    v17 = urlAttributeCopy;
  }

  else
  {
    v17 = attributeCopy;
  }

  v18 = [(HKDisplayTypeSummaryAttribution *)v16 initWithAttribution:attributionCopy urlAttribute:v17 primaryProfileOnly:onlyCopy];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 && [(NSAttributedString *)self->_attribution isEqualToAttributedString:equalCopy[2]]&& self->_hasLink == *(equalCopy + 8) && self->_primaryProfileOnly == *(equalCopy + 9);

  return v5;
}

@end