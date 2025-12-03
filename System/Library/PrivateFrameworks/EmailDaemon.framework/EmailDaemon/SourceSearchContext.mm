@interface SourceSearchContext
- (BOOL)isEqual:(id)equal;
- (EDRemoteSearchDelegate)delegate;
- (NSArray)referencedMailboxes;
- (SourceSearchContext)initWithQuery:(id)query criterion:(id)criterion delegate:(id)delegate offset:(id)offset sessionID:(unint64_t)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)referencedConversations;
@end

@implementation SourceSearchContext

- (SourceSearchContext)initWithQuery:(id)query criterion:(id)criterion delegate:(id)delegate offset:(id)offset sessionID:(unint64_t)d
{
  queryCopy = query;
  criterionCopy = criterion;
  delegateCopy = delegate;
  offsetCopy = offset;
  v20.receiver = self;
  v20.super_class = SourceSearchContext;
  v17 = [(SourceSearchContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_query, query);
    objc_storeStrong(&v18->_criterion, criterion);
    objc_storeWeak(&v18->_delegate, delegateCopy);
    objc_storeStrong(&v18->_offset, offset);
    v18->_sessionID = d;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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

  v5 = equalCopy;
  criterion = [(SourceSearchContext *)v5 criterion];
  if (![criterion isEqual:self->_criterion])
  {
LABEL_8:

    goto LABEL_9;
  }

  delegate = [(SourceSearchContext *)v5 delegate];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![delegate isEqual:WeakRetained])
  {

    goto LABEL_8;
  }

  query = [(SourceSearchContext *)v5 query];
  v10 = [query isEqual:self->_query];

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
  criterion = [(SourceSearchContext *)self criterion];
  referencedMailboxes = [criterion referencedMailboxes];

  return referencedMailboxes;
}

- (id)referencedConversations
{
  criterion = [(SourceSearchContext *)self criterion];
  referencedConversations = [criterion referencedConversations];

  return referencedConversations;
}

- (EDRemoteSearchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end