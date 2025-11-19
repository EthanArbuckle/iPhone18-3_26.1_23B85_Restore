@interface EDQueryCreator
- (EDQueryCreator)initWithQueryType:(id)a3;
- (id)queryWithStartDate:(id)a3 endDate:(id)a4;
@end

@implementation EDQueryCreator

- (EDQueryCreator)initWithQueryType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EDQueryCreator;
  v6 = [(EDQueryCreator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryType, a3);
  }

  return v7;
}

- (id)queryWithStartDate:(id)a3 endDate:(id)a4
{
  v25[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(EDQueryCreator *)self queryType];
  v10 = v9;
  if (v9 == *MEMORY[0x1E699A978])
  {
    v13 = [MEMORY[0x1E699ADA0] predicateForSendLaterMessagesWithStartDate:v7 endDate:v8];
    v14 = [MEMORY[0x1E699ADA0] predicateForExcludingMessagesInMailboxesWithTypes:&unk_1F45E6F40];
    v15 = MEMORY[0x1E696AB28];
    v25[0] = v13;
    v25[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v12 = [v15 andPredicateWithSubpredicates:v16];

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_3:
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"EDQueryCreator.m" lineNumber:37 description:@"The query type isn't allowed."];

    v12 = 0;
    goto LABEL_7;
  }

  if (v9 != *MEMORY[0x1E699A958])
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E699ADA0] predicateForReadLaterMessagesWithStartDate:v7 endDate:v8];
  if (!v12)
  {
    goto LABEL_3;
  }

LABEL_7:
  v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v10 ascending:1];
  v18 = objc_alloc(MEMORY[0x1E699AE28]);
  v19 = objc_opt_class();
  v24 = v17;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v21 = [v18 initWithTargetClass:v19 predicate:v12 sortDescriptors:v20];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

@end