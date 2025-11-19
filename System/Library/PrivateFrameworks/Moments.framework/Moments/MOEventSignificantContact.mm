@interface MOEventSignificantContact
- (MOEventSignificantContact)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventSignificantContact

- (void)encodeWithCoder:(id)a3
{
  interactionContactScore = self->_interactionContactScore;
  v5 = a3;
  [v5 encodeObject:interactionContactScore forKey:@"interactionContactScore"];
  [v5 encodeObject:self->_interactionScoredContact forKey:@"interactionScoredContact"];
  [v5 encodeObject:self->_interactionGroupName forKey:@"interactionGroupName"];
  [v5 encodeObject:self->_interactionContacts forKey:@"interactionContacts"];
  [v5 encodeObject:self->_interactionMechanisms forKey:@"interactionMechanisms"];
  [v5 encodeObject:self->_interactions forKey:@"interactions"];
  [v5 encodeBool:self->_containsOrganizationContact forKey:@"containsOrganizationContact"];
}

- (MOEventSignificantContact)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = MOEventSignificantContact;
  v5 = [(MOEventSignificantContact *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interactionContactScore"];
    interactionContactScore = v5->_interactionContactScore;
    v5->_interactionContactScore = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interactionScoredContact"];
    interactionScoredContact = v5->_interactionScoredContact;
    v5->_interactionScoredContact = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interactionGroupName"];
    interactionGroupName = v5->_interactionGroupName;
    v5->_interactionGroupName = v10;

    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc(MEMORY[0x277CBEB98]);
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 initWithObjects:{v14, v15, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v12);
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"interactionContacts"];
    interactionContacts = v5->_interactionContacts;
    v5->_interactionContacts = v17;

    v19 = objc_autoreleasePoolPush();
    v20 = objc_alloc(MEMORY[0x277CBEB98]);
    v21 = objc_opt_class();
    v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v19);
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"interactionMechanisms"];
    interactionMechanisms = v5->_interactionMechanisms;
    v5->_interactionMechanisms = v23;

    v25 = objc_autoreleasePoolPush();
    v26 = objc_alloc(MEMORY[0x277CBEB98]);
    v27 = objc_opt_class();
    v28 = [v26 initWithObjects:{v27, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v25);
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"interactions"];
    interactions = v5->_interactions;
    v5->_interactions = v29;

    v5->_containsOrganizationContact = [v4 decodeBoolForKey:@"containsOrganizationContact"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v4 = [(PPScoredContact *)self->_interactionScoredContact contact];
  v5 = [v4 identifier];
  v6 = [(NSString *)self->_interactionGroupName mask];
  v7 = [v3 initWithFormat:@"interactionScoredContact identifier, %@, interactionGroupName, %@, interactionContact count, %lu, interaction count, %lu, interactionMechanisms, %@, contain organization, %d", v5, v6, -[NSArray count](self->_interactionContacts, "count"), -[NSArray count](self->_interactions, "count"), self->_interactionMechanisms, self->_containsOrganizationContact];

  return v7;
}

@end