@interface IDSGroupServerKeyElectionStore
- (void)storeItem:(id)a3 withCompletion:(id)a4;
@end

@implementation IDSGroupServerKeyElectionStore

- (void)storeItem:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 newPg];
  v7 = SecKeyCopySubjectPublicKeyInfo();
  v8 = objc_alloc_init(IDSGroupServer);
  v9 = [v5 accountBlob];
  v10 = [v5 signature];
  v11 = [v5 forwardingTicket];
  v12 = [v5 ENID];
  v13 = [v5 parentVersion];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1006B7228;
  v16[3] = &unk_100BE4578;
  v17 = v5;
  v18 = v6;
  v14 = v5;
  v15 = v6;
  [(IDSGroupServer *)v8 publishGroupForKey:v7 data:v9 signature:v10 forwardingSig:v11 ENID:v12 version:v13 completion:v16];
}

@end