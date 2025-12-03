@interface CRBasicCard
- (CRBasicCard)init;
- (CRBasicCard)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)loadCardWithCompletion:(id)completion;
@end

@implementation CRBasicCard

- (void)loadCardWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, self);
  }
}

- (CRBasicCard)init
{
  v7.receiver = self;
  v7.super_class = CRBasicCard;
  v2 = [(CRBasicCard *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    cardIdentifier = v2->_cardIdentifier;
    v2->_cardIdentifier = uUIDString;
  }

  return v2;
}

- (CRBasicCard)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CRBasicCard;
  v5 = [(CRBasicCard *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_cardSections);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    cardSections = v5->_cardSections;
    v5->_cardSections = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = NSStringFromSelector(sel_interactions);
    v16 = [coderCopy decodeObjectOfClasses:v14 forKey:v15];
    interactions = v5->_interactions;
    v5->_interactions = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  cardSections = self->_cardSections;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_cardSections);
  [coderCopy encodeObject:cardSections forKey:v6];

  interactions = self->_interactions;
  v8 = NSStringFromSelector(sel_interactions);
  [coderCopy encodeObject:interactions forKey:v8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CRBasicCard);
  cardSections = [(CRBasicCard *)self cardSections];
  _deepCopy = [cardSections _deepCopy];
  [(CRBasicCard *)v4 setCardSections:_deepCopy];

  interactions = [(CRBasicCard *)self interactions];
  _deepCopy2 = [interactions _deepCopy];
  [(CRBasicCard *)v4 setInteractions:_deepCopy2];

  return v4;
}

@end