@interface CRBasicCard
- (CRBasicCard)init;
- (CRBasicCard)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadCardWithCompletion:(id)a3;
@end

@implementation CRBasicCard

- (void)loadCardWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, self);
  }
}

- (CRBasicCard)init
{
  v7.receiver = self;
  v7.super_class = CRBasicCard;
  v2 = [(CRBasicCard *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    cardIdentifier = v2->_cardIdentifier;
    v2->_cardIdentifier = v4;
  }

  return v2;
}

- (CRBasicCard)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CRBasicCard;
  v5 = [(CRBasicCard *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_cardSections);
    v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
    cardSections = v5->_cardSections;
    v5->_cardSections = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = NSStringFromSelector(sel_interactions);
    v16 = [v4 decodeObjectOfClasses:v14 forKey:v15];
    interactions = v5->_interactions;
    v5->_interactions = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  cardSections = self->_cardSections;
  v5 = a3;
  v6 = NSStringFromSelector(sel_cardSections);
  [v5 encodeObject:cardSections forKey:v6];

  interactions = self->_interactions;
  v8 = NSStringFromSelector(sel_interactions);
  [v5 encodeObject:interactions forKey:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CRBasicCard);
  v5 = [(CRBasicCard *)self cardSections];
  v6 = [v5 _deepCopy];
  [(CRBasicCard *)v4 setCardSections:v6];

  v7 = [(CRBasicCard *)self interactions];
  v8 = [v7 _deepCopy];
  [(CRBasicCard *)v4 setInteractions:v8];

  return v4;
}

@end