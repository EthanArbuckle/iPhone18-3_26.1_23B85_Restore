@interface EDSearchableIndexDataSample
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation EDSearchableIndexDataSample

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(EDSearchableIndexDataSample *)self subject];
  [v4 setSubject:v5];

  v6 = [(EDSearchableIndexDataSample *)self toEmailAddresses];
  [v4 setToEmailAddresses:v6];

  v7 = [(EDSearchableIndexDataSample *)self deleted];
  [v4 setDeleted:v7];

  v8 = [(EDSearchableIndexDataSample *)self transactionID];
  [v4 setTransactionID:v8];

  v9 = [(EDSearchableIndexDataSample *)self flags];
  [v4 setFlags:v9];

  v10 = [(EDSearchableIndexDataSample *)self indexedAsEmptySubject];
  [v4 setIndexedAsEmptySubject:v10];

  v11 = [(EDSearchableIndexDataSample *)self dateReceived];
  [v4 setDateReceived:v11];

  v12 = [(EDSearchableIndexDataSample *)self userInfo];
  [v4 setUserInfo:v12];

  return v4;
}

@end