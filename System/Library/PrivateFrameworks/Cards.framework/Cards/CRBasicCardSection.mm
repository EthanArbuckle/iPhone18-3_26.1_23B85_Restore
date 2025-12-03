@interface CRBasicCardSection
+ (id)basicCardSectionWithBackingCardSection:(id)section;
- (CRBasicCardSection)init;
- (CRBasicCardSection)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRBasicCardSection

- (CRBasicCardSection)init
{
  v7.receiver = self;
  v7.super_class = CRBasicCardSection;
  v2 = [(CRBasicCardSection *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    cardSectionIdentifier = v2->_cardSectionIdentifier;
    v2->_cardSectionIdentifier = uUIDString;
  }

  return v2;
}

- (CRBasicCardSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CRBasicCardSection;
  v5 = [(CRBasicCardSection *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_backingCardSection);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    backingCardSection = v5->_backingCardSection;
    v5->_backingCardSection = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_cardSectionIdentifier);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    cardSectionIdentifier = v5->_cardSectionIdentifier;
    v5->_cardSectionIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  backingCardSection = self->_backingCardSection;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_backingCardSection);
  [coderCopy encodeObject:backingCardSection forKey:v6];

  cardSectionIdentifier = self->_cardSectionIdentifier;
  v8 = NSStringFromSelector(sel_cardSectionIdentifier);
  [coderCopy encodeObject:cardSectionIdentifier forKey:v8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CRBasicCardSection);
  [(CRBasicCardSection *)v4 setBackingCardSection:self->_backingCardSection];
  return v4;
}

+ (id)basicCardSectionWithBackingCardSection:(id)section
{
  sectionCopy = section;
  v4 = objc_alloc_init(CRBasicCardSection);
  [(CRBasicCardSection *)v4 setBackingCardSection:sectionCopy];

  return v4;
}

@end