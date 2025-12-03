@interface EDSearchableIndexDataSample
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation EDSearchableIndexDataSample

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  subject = [(EDSearchableIndexDataSample *)self subject];
  [v4 setSubject:subject];

  toEmailAddresses = [(EDSearchableIndexDataSample *)self toEmailAddresses];
  [v4 setToEmailAddresses:toEmailAddresses];

  deleted = [(EDSearchableIndexDataSample *)self deleted];
  [v4 setDeleted:deleted];

  transactionID = [(EDSearchableIndexDataSample *)self transactionID];
  [v4 setTransactionID:transactionID];

  flags = [(EDSearchableIndexDataSample *)self flags];
  [v4 setFlags:flags];

  indexedAsEmptySubject = [(EDSearchableIndexDataSample *)self indexedAsEmptySubject];
  [v4 setIndexedAsEmptySubject:indexedAsEmptySubject];

  dateReceived = [(EDSearchableIndexDataSample *)self dateReceived];
  [v4 setDateReceived:dateReceived];

  userInfo = [(EDSearchableIndexDataSample *)self userInfo];
  [v4 setUserInfo:userInfo];

  return v4;
}

@end