@interface IDSGroupServerKeyElectionStore
- (void)storeItem:(id)item withCompletion:(id)completion;
@end

@implementation IDSGroupServerKeyElectionStore

- (void)storeItem:(id)item withCompletion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  [itemCopy newPg];
  v7 = SecKeyCopySubjectPublicKeyInfo();
  v8 = objc_alloc_init(IDSGroupServer);
  accountBlob = [itemCopy accountBlob];
  signature = [itemCopy signature];
  forwardingTicket = [itemCopy forwardingTicket];
  eNID = [itemCopy ENID];
  parentVersion = [itemCopy parentVersion];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1006B7228;
  v16[3] = &unk_100BE4578;
  v17 = itemCopy;
  v18 = completionCopy;
  v14 = itemCopy;
  v15 = completionCopy;
  [(IDSGroupServer *)v8 publishGroupForKey:v7 data:accountBlob signature:signature forwardingSig:forwardingTicket ENID:eNID version:parentVersion completion:v16];
}

@end