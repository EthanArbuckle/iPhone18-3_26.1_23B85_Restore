@interface KGGraphChange
- (KGGraphChange)initWithTransactionToken:(id)token edgesInserted:(id)inserted edgesUpdated:(id)updated edgesDeleted:(id)deleted;
- (KGGraphChange)initWithTransactionToken:(id)token nodesInserted:(id)inserted edgesInserted:(id)edgesInserted nodesUpdated:(id)updated edgesUpdated:(id)edgesUpdated nodesDeleted:(id)deleted edgesDeleted:(id)edgesDeleted;
- (KGGraphChange)initWithTransactionToken:(id)token nodesInserted:(id)inserted nodesUpdated:(id)updated nodesDeleted:(id)deleted;
@end

@implementation KGGraphChange

- (KGGraphChange)initWithTransactionToken:(id)token edgesInserted:(id)inserted edgesUpdated:(id)updated edgesDeleted:(id)deleted
{
  tokenCopy = token;
  insertedCopy = inserted;
  updatedCopy = updated;
  deletedCopy = deleted;
  v18.receiver = self;
  v18.super_class = KGGraphChange;
  v15 = [(KGGraphChange *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_transactionToken, token);
    objc_storeStrong(&v16->_edgesInserted, inserted);
    objc_storeStrong(&v16->_edgesUpdated, updated);
    objc_storeStrong(&v16->_edgesDeleted, deleted);
  }

  return v16;
}

- (KGGraphChange)initWithTransactionToken:(id)token nodesInserted:(id)inserted nodesUpdated:(id)updated nodesDeleted:(id)deleted
{
  tokenCopy = token;
  insertedCopy = inserted;
  updatedCopy = updated;
  deletedCopy = deleted;
  v18.receiver = self;
  v18.super_class = KGGraphChange;
  v15 = [(KGGraphChange *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_transactionToken, token);
    objc_storeStrong(&v16->_nodesInserted, inserted);
    objc_storeStrong(&v16->_nodesUpdated, updated);
    objc_storeStrong(&v16->_nodesDeleted, deleted);
  }

  return v16;
}

- (KGGraphChange)initWithTransactionToken:(id)token nodesInserted:(id)inserted edgesInserted:(id)edgesInserted nodesUpdated:(id)updated edgesUpdated:(id)edgesUpdated nodesDeleted:(id)deleted edgesDeleted:(id)edgesDeleted
{
  tokenCopy = token;
  insertedCopy = inserted;
  edgesInsertedCopy = edgesInserted;
  updatedCopy = updated;
  edgesUpdatedCopy = edgesUpdated;
  deletedCopy = deleted;
  edgesDeletedCopy = edgesDeleted;
  v26.receiver = self;
  v26.super_class = KGGraphChange;
  v18 = [(KGGraphChange *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_transactionToken, token);
    objc_storeStrong(&v19->_nodesInserted, inserted);
    objc_storeStrong(&v19->_edgesInserted, edgesInserted);
    objc_storeStrong(&v19->_nodesUpdated, updated);
    objc_storeStrong(&v19->_edgesUpdated, edgesUpdated);
    objc_storeStrong(&v19->_nodesDeleted, deleted);
    objc_storeStrong(&v19->_edgesDeleted, edgesDeleted);
  }

  return v19;
}

@end