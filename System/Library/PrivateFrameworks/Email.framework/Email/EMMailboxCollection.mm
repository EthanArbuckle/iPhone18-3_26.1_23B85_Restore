@interface EMMailboxCollection
- (EMMailboxCollection)initWithCoder:(id)coder;
- (EMMailboxCollection)initWithMailbox:(id)mailbox repository:(id)repository;
- (EMMailboxCollection)initWithObjectID:(id)d query:(id)query;
- (EMMailboxRepository)repository;
- (void)encodeWithCoder:(id)coder;
- (void)setRepository:(id)repository;
@end

@implementation EMMailboxCollection

- (EMMailboxRepository)repository
{
  v7.receiver = self;
  v7.super_class = EMMailboxCollection;
  repository = [(EMRepositoryObject *)&v7 repository];
  if (repository)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EMMailboxCollection.m" lineNumber:18 description:@"Wrong repository type"];
    }
  }

  return repository;
}

- (void)setRepository:(id)repository
{
  repositoryCopy = repository;
  if (repositoryCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EMMailboxCollection.m" lineNumber:18 description:@"Wrong repository type"];
    }
  }

  v7.receiver = self;
  v7.super_class = EMMailboxCollection;
  [(EMRepositoryObject *)&v7 setRepository:repositoryCopy];
}

- (EMMailboxCollection)initWithObjectID:(id)d query:(id)query
{
  dCopy = d;
  queryCopy = query;
  [(EMMailboxCollection *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMMailboxCollection initWithObjectID:query:]", "EMMailboxCollection.m", 25, "0");
}

- (EMMailboxCollection)initWithMailbox:(id)mailbox repository:(id)repository
{
  mailboxCopy = mailbox;
  repositoryCopy = repository;
  v8 = [EMQuery alloc];
  v9 = objc_opt_class();
  v10 = [EMMailbox predicateForMailboxChildren:mailboxCopy];
  v11 = [(EMQuery *)v8 initWithTargetClass:v9 predicate:v10 sortDescriptors:MEMORY[0x1E695E0F0]];

  v15.receiver = self;
  v15.super_class = EMMailboxCollection;
  v12 = [(EMQueryingCollection *)&v15 initWithObjectID:0 query:v11];
  v13 = v12;
  if (v12)
  {
    [(EMMailboxCollection *)v12 setRepository:repositoryCopy];
  }

  return v13;
}

- (EMMailboxCollection)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = EMMailboxCollection;
  return [(EMQueryingCollection *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = EMMailboxCollection;
  [(EMQueryingCollection *)&v3 encodeWithCoder:coder];
}

@end