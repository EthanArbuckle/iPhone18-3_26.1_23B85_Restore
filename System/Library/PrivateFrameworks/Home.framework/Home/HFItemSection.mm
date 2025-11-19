@interface HFItemSection
+ (NAIdentity)na_identity;
+ (id)filterSections:(id)a3 toDisplayedItems:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HFItemSection)init;
- (HFItemSection)initWithIdentifier:(id)a3;
- (HFItemSectionAccessoryButtonHeaderDelegate)headerAccessoryButtonDelegate;
- (NSArray)items;
- (NSString)description;
- (id)_createCopyMutable:(BOOL)a3;
- (unint64_t)hash;
@end

@implementation HFItemSection

- (HFItemSection)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithIdentifier_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFItemSection.m" lineNumber:32 description:{@"%s is unavailable; use %@ instead", "-[HFItemSection init]", v5}];

  return 0;
}

- (HFItemSection)initWithIdentifier:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFItemSection.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"identifier.length"}];
  }

  v11.receiver = self;
  v11.super_class = HFItemSection;
  v6 = [(HFItemSection *)&v11 init];
  if (v6)
  {
    v7 = [v5 copy];
    identifier = v6->_identifier;
    v6->_identifier = v7;
  }

  return v6;
}

- (id)_createCopyMutable:(BOOL)a3
{
  v4 = off_277DEFDC0;
  if (!a3)
  {
    v4 = off_277DEFC28;
  }

  v5 = objc_alloc(*v4);
  v6 = [(HFItemSection *)self identifier];
  v7 = [v5 initWithIdentifier:v6];

  v8 = [(HFItemSection *)self headerTitle];
  [v7 setHeaderTitle:v8];

  v9 = [(HFItemSection *)self headerSecondaryText];
  [v7 setHeaderSecondaryText:v9];

  v10 = [(HFItemSection *)self attributedHeaderTitle];
  [v7 setAttributedHeaderTitle:v10];

  v11 = [(HFItemSection *)self headerAccessoryButtonTitle];
  [v7 setHeaderAccessoryButtonTitle:v11];

  v12 = [(HFItemSection *)self headerAccessoryButtonDelegate];
  [v7 setHeaderAccessoryButtonDelegate:v12];

  [v7 setHideAccessoryButton:{-[HFItemSection hideAccessoryButton](self, "hideAccessoryButton")}];
  [v7 setHideHeaderText:{-[HFItemSection hideHeaderText](self, "hideHeaderText")}];
  [v7 setForceShowHeaderTitle:{-[HFItemSection forceShowHeaderTitle](self, "forceShowHeaderTitle")}];
  v13 = [(HFItemSection *)self footerTitle];
  [v7 setFooterTitle:v13];

  v14 = [(HFItemSection *)self attributedFooterTitle];
  [v7 setAttributedFooterTitle:v14];

  v15 = [(HFItemSection *)self items];
  [v7 setItems:v15];

  v16 = [(HFItemSection *)self userInfo];
  [v7 setUserInfo:v16];

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFItemSection *)self identifier];
  v5 = [v3 appendObject:v4 withName:@"identifier"];

  v6 = [(HFItemSection *)self headerTitle];
  v7 = [v3 appendObject:v6 withName:@"headerTitle"];

  v8 = [(HFItemSection *)self headerSecondaryText];
  v9 = [v3 appendObject:v8 withName:@"headerSecondaryText"];

  v10 = [(HFItemSection *)self attributedHeaderTitle];
  v11 = [v3 appendObject:v10 withName:@"attributedHeaderTitle"];

  v12 = [(HFItemSection *)self headerAccessoryButtonTitle];
  v13 = [v3 appendObject:v12 withName:@"headerAccessoryButtonTitle"];

  v14 = [(HFItemSection *)self headerAccessoryButtonDelegate];
  v15 = [v3 appendObject:v14 withName:@"headerAccessoryButtonDelegate"];

  v16 = [v3 appendBool:-[HFItemSection hideAccessoryButton](self withName:{"hideAccessoryButton"), @"hideAccessoryButton"}];
  v17 = [v3 appendBool:-[HFItemSection hideHeaderText](self withName:{"hideHeaderText"), @"hideHeaderText"}];
  v18 = [v3 appendBool:-[HFItemSection forceShowHeaderTitle](self withName:{"forceShowHeaderTitle"), @"forceShowHeaderTitle"}];
  v19 = [(HFItemSection *)self footerTitle];
  v20 = [v3 appendObject:v19 withName:@"footerTitle"];

  v21 = [(HFItemSection *)self attributedFooterTitle];
  v22 = [v3 appendObject:v21 withName:@"attributedFooterTitle"];

  v23 = [(HFItemSection *)self items];
  v24 = [v3 appendObject:v23 withName:@"items"];

  v25 = [(HFItemSection *)self userInfo];
  v26 = [v3 appendObject:v25 withName:@"userInfo"];

  v27 = [v3 build];

  return v27;
}

- (NSArray)items
{
  if (self->_items)
  {
    return self->_items;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

uint64_t __38__HFItemSection_defaultItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = [v5 objectForKeyedSubscript:@"title"];

  v7 = [v4 latestResults];

  v8 = [v7 objectForKeyedSubscript:@"title"];

  v16 = MEMORY[0x277D85DD0];
  v9 = v6;
  v17 = v9;
  v10 = v8;
  v11 = v10;
  v18 = v10;
  if (v9)
  {
    v12 = -1;
  }

  else
  {
    v12 = v10 != 0;
  }

  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = v10;
  }

  else
  {
    v12 = [v9 localizedStandardCompare:{v10, v16, 3221225472, __38__HFItemSection_defaultItemComparator__block_invoke_2, &unk_277DF72E0, v9}];
    v14 = v18;
  }

  return v12;
}

uint64_t __47__HFItemSection_itemResultManualSortComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = [v5 objectForKeyedSubscript:@"manualSortKey"];

  v7 = [v4 latestResults];

  v8 = [v7 objectForKeyedSubscript:@"manualSortKey"];

  v16 = MEMORY[0x277D85DD0];
  v9 = v6;
  v17 = v9;
  v10 = v8;
  v11 = v10;
  v18 = v10;
  if (v9)
  {
    v12 = -1;
  }

  else
  {
    v12 = v10 != 0;
  }

  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = v10;
  }

  else
  {
    v12 = [v9 compare:{v10, v16, 3221225472, __47__HFItemSection_itemResultManualSortComparator__block_invoke_2, &unk_277DF72E0, v9}];
    v14 = v18;
  }

  return v12;
}

+ (NAIdentity)na_identity
{
  if (qword_280E02DA8 != -1)
  {
    dispatch_once(&qword_280E02DA8, &__block_literal_global_60_0);
  }

  v3 = _MergedGlobals_236;

  return v3;
}

void __28__HFItemSection_na_identity__block_invoke()
{
  v7 = [MEMORY[0x277D2C908] builder];
  v0 = [v7 appendCharacteristic:&__block_literal_global_64];
  v1 = [v7 appendCharacteristic:&__block_literal_global_66_0 withRole:2];
  v2 = [v7 appendCharacteristic:&__block_literal_global_68_0 withRole:2];
  v3 = [v7 appendCharacteristic:&__block_literal_global_70_3 withRole:2];
  v4 = [v7 appendCharacteristic:&__block_literal_global_72 withRole:2];
  v5 = [v7 build];
  v6 = _MergedGlobals_236;
  _MergedGlobals_236 = v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

+ (id)filterSections:(id)a3 toDisplayedItems:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HFItemSection_filterSections_toDisplayedItems___block_invoke;
  v9[3] = &unk_277DF7328;
  v10 = v5;
  v6 = v5;
  v7 = [a3 na_map:v9];

  return v7;
}

void *__49__HFItemSection_filterSections_toDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 items];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__HFItemSection_filterSections_toDisplayedItems___block_invoke_2;
  v14[3] = &unk_277DF4B70;
  v15 = *(a1 + 32);
  v5 = [v4 na_filter:v14];

  v6 = [v5 count];
  v7 = [v3 items];
  v8 = [v7 count];

  if (v6 != v8)
  {
    v9 = [v3 mutableCopy];
    [v9 setItems:v5];

    v3 = v9;
  }

  v10 = [v3 items];
  if ([v10 count])
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (HFItemSectionAccessoryButtonHeaderDelegate)headerAccessoryButtonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_headerAccessoryButtonDelegate);

  return WeakRetained;
}

@end