@interface CRKConcreteContactsPrimitives
- (CRKConcreteContactsPrimitives)init;
- (CRKConcreteContactsPrimitives)initWithContactStore:(id)a3;
- (id)fetchMeCardContactWithError:(id *)a3;
- (id)subscribeToContactsChanges:(id)a3;
@end

@implementation CRKConcreteContactsPrimitives

- (CRKConcreteContactsPrimitives)init
{
  v3 = objc_opt_new();
  v4 = [(CRKConcreteContactsPrimitives *)self initWithContactStore:v3];

  return v4;
}

- (CRKConcreteContactsPrimitives)initWithContactStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKConcreteContactsPrimitives;
  v6 = [(CRKConcreteContactsPrimitives *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
  }

  return v7;
}

- (id)fetchMeCardContactWithError:(id *)a3
{
  v12[7] = *MEMORY[0x277D85DE8];
  v4 = [(CRKConcreteContactsPrimitives *)self contactStore];
  v5 = *MEMORY[0x277CBD000];
  v12[0] = *MEMORY[0x277CBD018];
  v12[1] = v5;
  v6 = *MEMORY[0x277CBD0B0];
  v12[2] = *MEMORY[0x277CBCFF8];
  v12[3] = v6;
  v7 = *MEMORY[0x277CBD078];
  v12[4] = *MEMORY[0x277CBD0A8];
  v12[5] = v7;
  v12[6] = *MEMORY[0x277CBD158];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:7];
  v9 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch:v8 error:a3];

  if (v9)
  {
    v10 = [[CRKConcreteContact alloc] initWithContact:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)subscribeToContactsChanges:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = *MEMORY[0x277CBD140];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__CRKConcreteContactsPrimitives_subscribeToContactsChanges___block_invoke;
  v9[3] = &unk_278DC11E0;
  v10 = v3;
  v6 = v3;
  v7 = [v4 subscribeToNotificationWithName:v5 object:0 handler:v9];

  return v7;
}

@end