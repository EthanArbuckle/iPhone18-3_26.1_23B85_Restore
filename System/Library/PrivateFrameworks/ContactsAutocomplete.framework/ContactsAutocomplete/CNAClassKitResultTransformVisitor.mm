@interface CNAClassKitResultTransformVisitor
+ (id)addressForPerson:(id)person searchType:(unint64_t)type;
- (CNAClassKitResultTransformVisitor)initWithFactory:(id)factory dataStore:(id)store searchType:(unint64_t)type addressableGroupResultStyle:(int64_t)style;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)reduceCollection:(id)collection;
- (void)visitAddressableGroup:(id)group;
- (void)visitClass:(id)class;
- (void)visitExpandableGroup:(id)group;
- (void)visitGroup:(id)group;
- (void)visitPerson:(id)person;
@end

@implementation CNAClassKitResultTransformVisitor

- (CNAClassKitResultTransformVisitor)initWithFactory:(id)factory dataStore:(id)store searchType:(unint64_t)type addressableGroupResultStyle:(int64_t)style
{
  factoryCopy = factory;
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = CNAClassKitResultTransformVisitor;
  v13 = [(CNAClassKitResultTransformVisitor *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_factory, factory);
    objc_storeStrong(&v14->_dataStore, store);
    v14->_searchType = type;
    v14->_groupResultStyle = style;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    results = v14->_results;
    v14->_results = v15;

    v17 = v14;
  }

  return v14;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CFBDF0]) initWithObject:self];
  v4 = [v3 appendName:@"factory" object:self->_factory];
  v5 = [v3 appendName:@"dataStore" object:self->_dataStore];
  build = [v3 build];

  return build;
}

- (id)reduceCollection:(id)collection
{
  v17 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [collectionCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(collectionCopy);
        }

        [*(*(&v12 + 1) + 8 * i) acceptVisitor:self];
      }

      v6 = [collectionCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [(NSMutableArray *)self->_results copy];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  factory = self->_factory;
  dataStore = self->_dataStore;
  searchType = self->_searchType;
  groupResultStyle = self->_groupResultStyle;

  return [v4 initWithFactory:factory dataStore:dataStore searchType:searchType addressableGroupResultStyle:groupResultStyle];
}

- (void)visitPerson:(id)person
{
  v18[1] = *MEMORY[0x277D85DE8];
  personCopy = person;
  nameComponents = [personCopy nameComponents];
  givenName = [nameComponents givenName];
  familyName = [nameComponents familyName];
  v8 = [CNAutocompleteNameComponents nameComponentsWithFirstName:givenName lastName:familyName nickname:&stru_282787720 nameSuffix:&stru_282787720];

  v9 = [objc_opt_class() addressForPerson:personCopy searchType:self->_searchType];
  if ((*(*MEMORY[0x277CFBD38] + 16))())
  {
    v10 = [CNAutocompleteResultValue resultValueWithAddress:v9 addressType:1];
    appleID = [personCopy appleID];

    if (appleID)
    {
      v17 = @"ckShareIdentifier";
      appleID2 = [personCopy appleID];
      v18[0] = appleID2;
      appleID = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    }

    factory = self->_factory;
    displayName = [personCopy displayName];
    v15 = [(CNAutocompleteResultFactory *)factory MAIDResultWithDisplayName:displayName value:v10 nameComponents:v8 userInfo:appleID];

    [(NSMutableArray *)self->_results _cn_addNonNilObject:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)addressForPerson:(id)person searchType:(unint64_t)type
{
  if (type)
  {
    [person appleID];
  }

  else
  {
    [person emailAddress];
  }
  v4 = ;

  return v4;
}

- (void)visitClass:(id)class
{
  classCopy = class;
  groupIdentifier = [classCopy groupIdentifier];
  v6 = [(CNAClassKitResultTransformVisitor *)self copy];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__CNAClassKitResultTransformVisitor_visitClass___block_invoke;
  aBlock[3] = &unk_2781C46C8;
  aBlock[4] = self;
  v14 = groupIdentifier;
  v15 = v6;
  v7 = v6;
  v8 = groupIdentifier;
  v9 = _Block_copy(aBlock);
  factory = self->_factory;
  displayName = [classCopy displayName];

  v12 = [(CNAutocompleteResultFactory *)factory MAIDGroupResultWithDisplayName:displayName groupIdentifier:v8 membersProvider:v9];

  [(NSMutableArray *)self->_results _cn_addNonNilObject:v12];
}

id __48__CNAClassKitResultTransformVisitor_visitClass___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) dataStore];
  v5 = [v4 _cna_membersOfGroupWithIdentifier:*(a1 + 40)];
  if ([v5 isSuccess])
  {
    v6 = *(a1 + 48);
    v7 = [v5 value];
    v8 = [v6 reduceCollection:v7];
  }

  else
  {
    v9 = [v5 error];
    v7 = v9;
    if (a2)
    {
      v10 = v9;
      v8 = 0;
      *a2 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)visitGroup:(id)group
{
  if (self->_groupResultStyle)
  {
    [(CNAClassKitResultTransformVisitor *)self visitAddressableGroup:group];
  }

  else
  {
    [(CNAClassKitResultTransformVisitor *)self visitExpandableGroup:group];
  }
}

- (void)visitExpandableGroup:(id)group
{
  groupCopy = group;
  groupIdentifier = [groupCopy groupIdentifier];
  v6 = [(CNAClassKitResultTransformVisitor *)self copy];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__CNAClassKitResultTransformVisitor_visitExpandableGroup___block_invoke;
  aBlock[3] = &unk_2781C46C8;
  aBlock[4] = self;
  v14 = groupIdentifier;
  v15 = v6;
  v7 = v6;
  v8 = groupIdentifier;
  v9 = _Block_copy(aBlock);
  factory = self->_factory;
  groupName = [groupCopy groupName];

  v12 = [(CNAutocompleteResultFactory *)factory MAIDGroupResultWithDisplayName:groupName groupIdentifier:v8 membersProvider:v9];

  [(NSMutableArray *)self->_results _cn_addNonNilObject:v12];
}

id __58__CNAClassKitResultTransformVisitor_visitExpandableGroup___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) dataStore];
  v5 = [v4 _cna_membersOfGroupWithIdentifier:*(a1 + 40)];
  if ([v5 isSuccess])
  {
    v6 = *(a1 + 48);
    v7 = [v5 value];
    v8 = [v6 reduceCollection:v7];
  }

  else
  {
    v9 = [v5 error];
    v7 = v9;
    if (a2)
    {
      v10 = v9;
      v8 = 0;
      *a2 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)visitAddressableGroup:(id)group
{
  groupCopy = group;
  emailAddress = [groupCopy emailAddress];
  if ((*(*MEMORY[0x277CFBD38] + 16))())
  {
    v5 = [CNAutocompleteResultValue resultValueWithAddress:emailAddress addressType:1];
    factory = self->_factory;
    groupName = [groupCopy groupName];
    v8 = [(CNAutocompleteResultFactory *)factory MAIDResultWithDisplayName:groupName value:v5 nameComponents:0 userInfo:0];

    [(NSMutableArray *)self->_results _cn_addNonNilObject:v8];
  }
}

@end