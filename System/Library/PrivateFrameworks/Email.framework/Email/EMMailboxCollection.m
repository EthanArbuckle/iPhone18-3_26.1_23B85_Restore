@interface EMMailboxCollection
- (EMMailboxCollection)initWithCoder:(id)a3;
- (EMMailboxCollection)initWithMailbox:(id)a3 repository:(id)a4;
- (EMMailboxCollection)initWithObjectID:(id)a3 query:(id)a4;
- (EMMailboxRepository)repository;
- (void)encodeWithCoder:(id)a3;
- (void)setRepository:(id)a3;
@end

@implementation EMMailboxCollection

- (EMMailboxRepository)repository
{
  v7.receiver = self;
  v7.super_class = EMMailboxCollection;
  v4 = [(EMRepositoryObject *)&v7 repository];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"EMMailboxCollection.m" lineNumber:18 description:@"Wrong repository type"];
    }
  }

  return v4;
}

- (void)setRepository:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"EMMailboxCollection.m" lineNumber:18 description:@"Wrong repository type"];
    }
  }

  v7.receiver = self;
  v7.super_class = EMMailboxCollection;
  [(EMRepositoryObject *)&v7 setRepository:v5];
}

- (EMMailboxCollection)initWithObjectID:(id)a3 query:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(EMMailboxCollection *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMMailboxCollection initWithObjectID:query:]", "EMMailboxCollection.m", 25, "0");
}

- (EMMailboxCollection)initWithMailbox:(id)a3 repository:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [EMQuery alloc];
  v9 = objc_opt_class();
  v10 = [EMMailbox predicateForMailboxChildren:v6];
  v11 = [(EMQuery *)v8 initWithTargetClass:v9 predicate:v10 sortDescriptors:MEMORY[0x1E695E0F0]];

  v15.receiver = self;
  v15.super_class = EMMailboxCollection;
  v12 = [(EMQueryingCollection *)&v15 initWithObjectID:0 query:v11];
  v13 = v12;
  if (v12)
  {
    [(EMMailboxCollection *)v12 setRepository:v7];
  }

  return v13;
}

- (EMMailboxCollection)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = EMMailboxCollection;
  return [(EMQueryingCollection *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = EMMailboxCollection;
  [(EMQueryingCollection *)&v3 encodeWithCoder:a3];
}

@end