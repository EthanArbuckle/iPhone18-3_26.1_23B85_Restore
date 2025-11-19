@interface CNAClassKitResultTransformVisitor
+ (id)addressForPerson:(id)a3 searchType:(unint64_t)a4;
- (CNAClassKitResultTransformVisitor)initWithFactory:(id)a3 dataStore:(id)a4 searchType:(unint64_t)a5 addressableGroupResultStyle:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)reduceCollection:(id)a3;
- (void)visitAddressableGroup:(id)a3;
- (void)visitClass:(id)a3;
- (void)visitExpandableGroup:(id)a3;
- (void)visitGroup:(id)a3;
- (void)visitPerson:(id)a3;
@end

@implementation CNAClassKitResultTransformVisitor

- (CNAClassKitResultTransformVisitor)initWithFactory:(id)a3 dataStore:(id)a4 searchType:(unint64_t)a5 addressableGroupResultStyle:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v19.receiver = self;
  v19.super_class = CNAClassKitResultTransformVisitor;
  v13 = [(CNAClassKitResultTransformVisitor *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_factory, a3);
    objc_storeStrong(&v14->_dataStore, a4);
    v14->_searchType = a5;
    v14->_groupResultStyle = a6;
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
  v6 = [v3 build];

  return v6;
}

- (id)reduceCollection:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * i) acceptVisitor:self];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [(NSMutableArray *)self->_results copy];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  factory = self->_factory;
  dataStore = self->_dataStore;
  searchType = self->_searchType;
  groupResultStyle = self->_groupResultStyle;

  return [v4 initWithFactory:factory dataStore:dataStore searchType:searchType addressableGroupResultStyle:groupResultStyle];
}

- (void)visitPerson:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 nameComponents];
  v6 = [v5 givenName];
  v7 = [v5 familyName];
  v8 = [CNAutocompleteNameComponents nameComponentsWithFirstName:v6 lastName:v7 nickname:&stru_282787720 nameSuffix:&stru_282787720];

  v9 = [objc_opt_class() addressForPerson:v4 searchType:self->_searchType];
  if ((*(*MEMORY[0x277CFBD38] + 16))())
  {
    v10 = [CNAutocompleteResultValue resultValueWithAddress:v9 addressType:1];
    v11 = [v4 appleID];

    if (v11)
    {
      v17 = @"ckShareIdentifier";
      v12 = [v4 appleID];
      v18[0] = v12;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    }

    factory = self->_factory;
    v14 = [v4 displayName];
    v15 = [(CNAutocompleteResultFactory *)factory MAIDResultWithDisplayName:v14 value:v10 nameComponents:v8 userInfo:v11];

    [(NSMutableArray *)self->_results _cn_addNonNilObject:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)addressForPerson:(id)a3 searchType:(unint64_t)a4
{
  if (a4)
  {
    [a3 appleID];
  }

  else
  {
    [a3 emailAddress];
  }
  v4 = ;

  return v4;
}

- (void)visitClass:(id)a3
{
  v4 = a3;
  v5 = [v4 groupIdentifier];
  v6 = [(CNAClassKitResultTransformVisitor *)self copy];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__CNAClassKitResultTransformVisitor_visitClass___block_invoke;
  aBlock[3] = &unk_2781C46C8;
  aBlock[4] = self;
  v14 = v5;
  v15 = v6;
  v7 = v6;
  v8 = v5;
  v9 = _Block_copy(aBlock);
  factory = self->_factory;
  v11 = [v4 displayName];

  v12 = [(CNAutocompleteResultFactory *)factory MAIDGroupResultWithDisplayName:v11 groupIdentifier:v8 membersProvider:v9];

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

- (void)visitGroup:(id)a3
{
  if (self->_groupResultStyle)
  {
    [(CNAClassKitResultTransformVisitor *)self visitAddressableGroup:a3];
  }

  else
  {
    [(CNAClassKitResultTransformVisitor *)self visitExpandableGroup:a3];
  }
}

- (void)visitExpandableGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 groupIdentifier];
  v6 = [(CNAClassKitResultTransformVisitor *)self copy];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__CNAClassKitResultTransformVisitor_visitExpandableGroup___block_invoke;
  aBlock[3] = &unk_2781C46C8;
  aBlock[4] = self;
  v14 = v5;
  v15 = v6;
  v7 = v6;
  v8 = v5;
  v9 = _Block_copy(aBlock);
  factory = self->_factory;
  v11 = [v4 groupName];

  v12 = [(CNAutocompleteResultFactory *)factory MAIDGroupResultWithDisplayName:v11 groupIdentifier:v8 membersProvider:v9];

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

- (void)visitAddressableGroup:(id)a3
{
  v9 = a3;
  v4 = [v9 emailAddress];
  if ((*(*MEMORY[0x277CFBD38] + 16))())
  {
    v5 = [CNAutocompleteResultValue resultValueWithAddress:v4 addressType:1];
    factory = self->_factory;
    v7 = [v9 groupName];
    v8 = [(CNAutocompleteResultFactory *)factory MAIDResultWithDisplayName:v7 value:v5 nameComponents:0 userInfo:0];

    [(NSMutableArray *)self->_results _cn_addNonNilObject:v8];
  }
}

@end