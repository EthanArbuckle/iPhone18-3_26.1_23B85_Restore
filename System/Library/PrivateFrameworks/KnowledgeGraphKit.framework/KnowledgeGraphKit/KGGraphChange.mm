@interface KGGraphChange
- (KGGraphChange)initWithTransactionToken:(id)a3 edgesInserted:(id)a4 edgesUpdated:(id)a5 edgesDeleted:(id)a6;
- (KGGraphChange)initWithTransactionToken:(id)a3 nodesInserted:(id)a4 edgesInserted:(id)a5 nodesUpdated:(id)a6 edgesUpdated:(id)a7 nodesDeleted:(id)a8 edgesDeleted:(id)a9;
- (KGGraphChange)initWithTransactionToken:(id)a3 nodesInserted:(id)a4 nodesUpdated:(id)a5 nodesDeleted:(id)a6;
@end

@implementation KGGraphChange

- (KGGraphChange)initWithTransactionToken:(id)a3 edgesInserted:(id)a4 edgesUpdated:(id)a5 edgesDeleted:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = KGGraphChange;
  v15 = [(KGGraphChange *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_transactionToken, a3);
    objc_storeStrong(&v16->_edgesInserted, a4);
    objc_storeStrong(&v16->_edgesUpdated, a5);
    objc_storeStrong(&v16->_edgesDeleted, a6);
  }

  return v16;
}

- (KGGraphChange)initWithTransactionToken:(id)a3 nodesInserted:(id)a4 nodesUpdated:(id)a5 nodesDeleted:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = KGGraphChange;
  v15 = [(KGGraphChange *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_transactionToken, a3);
    objc_storeStrong(&v16->_nodesInserted, a4);
    objc_storeStrong(&v16->_nodesUpdated, a5);
    objc_storeStrong(&v16->_nodesDeleted, a6);
  }

  return v16;
}

- (KGGraphChange)initWithTransactionToken:(id)a3 nodesInserted:(id)a4 edgesInserted:(id)a5 nodesUpdated:(id)a6 edgesUpdated:(id)a7 nodesDeleted:(id)a8 edgesDeleted:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = KGGraphChange;
  v18 = [(KGGraphChange *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_transactionToken, a3);
    objc_storeStrong(&v19->_nodesInserted, a4);
    objc_storeStrong(&v19->_edgesInserted, a5);
    objc_storeStrong(&v19->_nodesUpdated, a6);
    objc_storeStrong(&v19->_edgesUpdated, a7);
    objc_storeStrong(&v19->_nodesDeleted, a8);
    objc_storeStrong(&v19->_edgesDeleted, a9);
  }

  return v19;
}

@end