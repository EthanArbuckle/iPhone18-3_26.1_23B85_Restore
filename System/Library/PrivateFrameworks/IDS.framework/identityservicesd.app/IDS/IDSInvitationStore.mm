@interface IDSInvitationStore
- (BOOL)isEmpty;
- (IDSInvitationStore)init;
- (id)persistedPendingInvitationsForService:(id)a3;
- (id)persistedReceivedInvitationsForService:(id)a3;
- (void)persistPendingInvitation:(id)a3 forService:(id)a4 withUniqueID:(id)a5;
- (void)persistReceivedInvitation:(id)a3 forService:(id)a4 withUniqueID:(id)a5;
- (void)removePendingInvitation:(id)a3 forService:(id)a4;
- (void)removeReceivedInvitation:(id)a3 forService:(id)a4;
@end

@implementation IDSInvitationStore

- (IDSInvitationStore)init
{
  v9.receiver = self;
  v9.super_class = IDSInvitationStore;
  v2 = [(IDSInvitationStore *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = [NSSet setWithObjects:v3, v4, objc_opt_class(), 0];
    v6 = [[IDSPersistentMap alloc] initWithIdentifier:@"com.apple.identityservicesd.invitation.store" versionNumber:1 decodableClasses:v5 migrationBlock:0];
    persistentMap = v2->_persistentMap;
    v2->_persistentMap = v6;
  }

  return v2;
}

- (BOOL)isEmpty
{
  v2 = [(IDSInvitationStore *)self persistentMap];
  v3 = [v2 allKeys];
  v4 = [v3 count] == 0;

  return v4;
}

- (id)persistedPendingInvitationsForService:(id)a3
{
  v4 = [NSString stringWithFormat:@"%@-sentInvitations", a3];
  v5 = [(IDSPersistentMap *)self->_persistentMap objectForKey:v4];

  return v5;
}

- (void)persistPendingInvitation:(id)a3 forService:(id)a4 withUniqueID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IDSInvitationStore *)self persistedPendingInvitationsForService:v9];
  v17 = v11;
  if (v11)
  {
    v12 = [v11 mutableCopy];
  }

  else
  {
    v12 = objc_alloc_init(NSMutableDictionary);
  }

  v13 = v12;
  [v12 setObject:v10 forKey:v8];

  v14 = [NSString stringWithFormat:@"%@-sentInvitations", v9];

  persistentMap = self->_persistentMap;
  v16 = [v13 copy];
  [(IDSPersistentMap *)persistentMap setObject:v16 forKey:v14];
}

- (void)removePendingInvitation:(id)a3 forService:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(IDSInvitationStore *)self persistedPendingInvitationsForService:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
    [v9 removeObjectsForKeys:v13];
    v10 = [NSString stringWithFormat:@"%@-sentInvitations", v6];
    persistentMap = self->_persistentMap;
    v12 = [v9 copy];
    [(IDSPersistentMap *)persistentMap setObject:v12 forKey:v10];
  }
}

- (id)persistedReceivedInvitationsForService:(id)a3
{
  v4 = [NSString stringWithFormat:@"%@-receivedInvitation", a3];
  v5 = [(IDSPersistentMap *)self->_persistentMap objectForKey:v4];

  return v5;
}

- (void)persistReceivedInvitation:(id)a3 forService:(id)a4 withUniqueID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IDSInvitationStore *)self persistedReceivedInvitationsForService:v9];
  v17 = v11;
  if (v11)
  {
    v12 = [v11 mutableCopy];
  }

  else
  {
    v12 = objc_alloc_init(NSMutableDictionary);
  }

  v13 = v12;
  [v12 setObject:v10 forKey:v8];

  v14 = [NSString stringWithFormat:@"%@-receivedInvitation", v9];

  persistentMap = self->_persistentMap;
  v16 = [v13 copy];
  [(IDSPersistentMap *)persistentMap setObject:v16 forKey:v14];
}

- (void)removeReceivedInvitation:(id)a3 forService:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(IDSInvitationStore *)self persistedReceivedInvitationsForService:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
    [v9 removeObjectsForKeys:v13];
    v10 = [NSString stringWithFormat:@"%@-receivedInvitation", v6];
    persistentMap = self->_persistentMap;
    v12 = [v9 copy];
    [(IDSPersistentMap *)persistentMap setObject:v12 forKey:v10];
  }
}

@end