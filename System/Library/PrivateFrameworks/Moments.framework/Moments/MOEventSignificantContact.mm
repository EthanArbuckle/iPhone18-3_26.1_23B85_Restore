@interface MOEventSignificantContact
- (MOEventSignificantContact)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventSignificantContact

- (void)encodeWithCoder:(id)coder
{
  interactionContactScore = self->_interactionContactScore;
  coderCopy = coder;
  [coderCopy encodeObject:interactionContactScore forKey:@"interactionContactScore"];
  [coderCopy encodeObject:self->_interactionScoredContact forKey:@"interactionScoredContact"];
  [coderCopy encodeObject:self->_interactionGroupName forKey:@"interactionGroupName"];
  [coderCopy encodeObject:self->_interactionContacts forKey:@"interactionContacts"];
  [coderCopy encodeObject:self->_interactionMechanisms forKey:@"interactionMechanisms"];
  [coderCopy encodeObject:self->_interactions forKey:@"interactions"];
  [coderCopy encodeBool:self->_containsOrganizationContact forKey:@"containsOrganizationContact"];
}

- (MOEventSignificantContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = MOEventSignificantContact;
  v5 = [(MOEventSignificantContact *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interactionContactScore"];
    interactionContactScore = v5->_interactionContactScore;
    v5->_interactionContactScore = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interactionScoredContact"];
    interactionScoredContact = v5->_interactionScoredContact;
    v5->_interactionScoredContact = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interactionGroupName"];
    interactionGroupName = v5->_interactionGroupName;
    v5->_interactionGroupName = v10;

    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc(MEMORY[0x277CBEB98]);
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 initWithObjects:{v14, v15, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v12);
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"interactionContacts"];
    interactionContacts = v5->_interactionContacts;
    v5->_interactionContacts = v17;

    v19 = objc_autoreleasePoolPush();
    v20 = objc_alloc(MEMORY[0x277CBEB98]);
    v21 = objc_opt_class();
    v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v19);
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"interactionMechanisms"];
    interactionMechanisms = v5->_interactionMechanisms;
    v5->_interactionMechanisms = v23;

    v25 = objc_autoreleasePoolPush();
    v26 = objc_alloc(MEMORY[0x277CBEB98]);
    v27 = objc_opt_class();
    v28 = [v26 initWithObjects:{v27, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v25);
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"interactions"];
    interactions = v5->_interactions;
    v5->_interactions = v29;

    v5->_containsOrganizationContact = [coderCopy decodeBoolForKey:@"containsOrganizationContact"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOEventSignificantContact);
  objc_storeStrong(&v4->_interactions, self->_interactions);
  objc_storeStrong(&v4->_interactionContacts, self->_interactionContacts);
  objc_storeStrong(&v4->_interactionMechanisms, self->_interactionMechanisms);
  objc_storeStrong(&v4->_interactionGroupName, self->_interactionGroupName);
  objc_storeStrong(&v4->_interactionContactScore, self->_interactionContactScore);
  objc_storeStrong(&v4->_interactionScoredContact, self->_interactionScoredContact);
  v4->_containsOrganizationContact = self->_containsOrganizationContact;
  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  contact = [(PPScoredContact *)self->_interactionScoredContact contact];
  identifier = [contact identifier];
  mask = [(NSString *)self->_interactionGroupName mask];
  v7 = [v3 initWithFormat:@"interactionScoredContact identifier, %@, interactionGroupName, %@, interactionContact count, %lu, interaction count, %lu, interactionMechanisms, %@, contain organization, %d", identifier, mask, -[NSArray count](self->_interactionContacts, "count"), -[NSArray count](self->_interactions, "count"), self->_interactionMechanisms, self->_containsOrganizationContact];

  return v7;
}

@end