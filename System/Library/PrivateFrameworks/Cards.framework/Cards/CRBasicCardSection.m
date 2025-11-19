@interface CRBasicCardSection
+ (id)basicCardSectionWithBackingCardSection:(id)a3;
- (CRBasicCardSection)init;
- (CRBasicCardSection)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRBasicCardSection

- (CRBasicCardSection)init
{
  v7.receiver = self;
  v7.super_class = CRBasicCardSection;
  v2 = [(CRBasicCardSection *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    cardSectionIdentifier = v2->_cardSectionIdentifier;
    v2->_cardSectionIdentifier = v4;
  }

  return v2;
}

- (CRBasicCardSection)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CRBasicCardSection;
  v5 = [(CRBasicCardSection *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_backingCardSection);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    backingCardSection = v5->_backingCardSection;
    v5->_backingCardSection = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_cardSectionIdentifier);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    cardSectionIdentifier = v5->_cardSectionIdentifier;
    v5->_cardSectionIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  backingCardSection = self->_backingCardSection;
  v5 = a3;
  v6 = NSStringFromSelector(sel_backingCardSection);
  [v5 encodeObject:backingCardSection forKey:v6];

  cardSectionIdentifier = self->_cardSectionIdentifier;
  v8 = NSStringFromSelector(sel_cardSectionIdentifier);
  [v5 encodeObject:cardSectionIdentifier forKey:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CRBasicCardSection);
  [(CRBasicCardSection *)v4 setBackingCardSection:self->_backingCardSection];
  return v4;
}

+ (id)basicCardSectionWithBackingCardSection:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CRBasicCardSection);
  [(CRBasicCardSection *)v4 setBackingCardSection:v3];

  return v4;
}

@end