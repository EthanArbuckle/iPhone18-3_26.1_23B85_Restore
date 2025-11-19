@interface SourceSearchContext
- (BOOL)isEqual:(id)a3;
- (EDRemoteSearchDelegate)delegate;
- (NSArray)referencedMailboxes;
- (SourceSearchContext)initWithQuery:(id)a3 criterion:(id)a4 delegate:(id)a5 offset:(id)a6 sessionID:(unint64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)referencedConversations;
@end

@implementation SourceSearchContext

- (SourceSearchContext)initWithQuery:(id)a3 criterion:(id)a4 delegate:(id)a5 offset:(id)a6 sessionID:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = SourceSearchContext;
  v17 = [(SourceSearchContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_query, a3);
    objc_storeStrong(&v18->_criterion, a4);
    objc_storeWeak(&v18->_delegate, v15);
    objc_storeStrong(&v18->_offset, a6);
    v18->_sessionID = a7;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([(SourceSearchContext *)self isMemberOfClass:objc_opt_class()])
  {

    return self;
  }

  else
  {
    v4 = [SourceSearchContext alloc];
    criterion = self->_criterion;
    query = self->_query;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [(SourceSearchContext *)v4 initWithQuery:query criterion:criterion delegate:WeakRetained offset:self->_offset sessionID:self->_sessionID];

    return v8;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [(SourceSearchContext *)v5 criterion];
  if (![v6 isEqual:self->_criterion])
  {
LABEL_8:

    goto LABEL_9;
  }

  v7 = [(SourceSearchContext *)v5 delegate];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![v7 isEqual:WeakRetained])
  {

    goto LABEL_8;
  }

  v9 = [(SourceSearchContext *)v5 query];
  v10 = [v9 isEqual:self->_query];

  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v11 = 1;
LABEL_10:

  return v11;
}

- (NSArray)referencedMailboxes
{
  v2 = [(SourceSearchContext *)self criterion];
  v3 = [v2 referencedMailboxes];

  return v3;
}

- (id)referencedConversations
{
  v2 = [(SourceSearchContext *)self criterion];
  v3 = [v2 referencedConversations];

  return v3;
}

- (EDRemoteSearchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end