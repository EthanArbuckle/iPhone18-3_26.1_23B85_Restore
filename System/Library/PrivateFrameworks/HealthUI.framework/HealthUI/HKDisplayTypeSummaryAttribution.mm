@interface HKDisplayTypeSummaryAttribution
- (BOOL)isEqual:(id)a3;
- (HKDisplayTypeSummaryAttribution)initWithAttribution:(id)a3 hasLink:(BOOL)a4 primaryProfileOnly:(BOOL)a5;
- (HKDisplayTypeSummaryAttribution)initWithAttribution:(id)a3 urlAttribute:(id)a4 iPadUrlAttribute:(id)a5 primaryProfileOnly:(BOOL)a6;
- (HKDisplayTypeSummaryAttribution)initWithAttribution:(id)a3 urlAttribute:(id)a4 primaryProfileOnly:(BOOL)a5;
@end

@implementation HKDisplayTypeSummaryAttribution

- (HKDisplayTypeSummaryAttribution)initWithAttribution:(id)a3 hasLink:(BOOL)a4 primaryProfileOnly:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = HKDisplayTypeSummaryAttribution;
  v9 = [(HKDisplayTypeSummaryAttribution *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    attribution = v9->_attribution;
    v9->_attribution = v10;

    v9->_hasLink = a4;
    v9->_primaryProfileOnly = a5;
  }

  return v9;
}

- (HKDisplayTypeSummaryAttribution)initWithAttribution:(id)a3 urlAttribute:(id)a4 primaryProfileOnly:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = MEMORY[0x1E696AD40];
  v10 = a3;
  v11 = [[v9 alloc] initWithString:v10];

  if (v8 && [v11 length])
  {
    [v11 addAttribute:*MEMORY[0x1E69DB670] value:v8 range:{0, objc_msgSend(v11, "length")}];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(HKDisplayTypeSummaryAttribution *)self initWithAttribution:v11 hasLink:v12 primaryProfileOnly:v5];

  return v13;
}

- (HKDisplayTypeSummaryAttribution)initWithAttribution:(id)a3 urlAttribute:(id)a4 iPadUrlAttribute:(id)a5 primaryProfileOnly:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x1E696C608];
  v13 = a3;
  v14 = [v12 sharedBehavior];
  v15 = [v14 isiPad];

  v16 = [HKDisplayTypeSummaryAttribution alloc];
  if (v15)
  {
    v17 = v11;
  }

  else
  {
    v17 = v10;
  }

  v18 = [(HKDisplayTypeSummaryAttribution *)v16 initWithAttribution:v13 urlAttribute:v17 primaryProfileOnly:v6];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 && [(NSAttributedString *)self->_attribution isEqualToAttributedString:v4[2]]&& self->_hasLink == *(v4 + 8) && self->_primaryProfileOnly == *(v4 + 9);

  return v5;
}

@end