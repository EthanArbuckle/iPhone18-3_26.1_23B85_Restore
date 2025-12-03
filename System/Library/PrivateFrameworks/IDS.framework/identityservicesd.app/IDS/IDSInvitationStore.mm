@interface IDSInvitationStore
- (BOOL)isEmpty;
- (IDSInvitationStore)init;
- (id)persistedPendingInvitationsForService:(id)service;
- (id)persistedReceivedInvitationsForService:(id)service;
- (void)persistPendingInvitation:(id)invitation forService:(id)service withUniqueID:(id)d;
- (void)persistReceivedInvitation:(id)invitation forService:(id)service withUniqueID:(id)d;
- (void)removePendingInvitation:(id)invitation forService:(id)service;
- (void)removeReceivedInvitation:(id)invitation forService:(id)service;
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
  persistentMap = [(IDSInvitationStore *)self persistentMap];
  allKeys = [persistentMap allKeys];
  v4 = [allKeys count] == 0;

  return v4;
}

- (id)persistedPendingInvitationsForService:(id)service
{
  service = [NSString stringWithFormat:@"%@-sentInvitations", service];
  v5 = [(IDSPersistentMap *)self->_persistentMap objectForKey:service];

  return v5;
}

- (void)persistPendingInvitation:(id)invitation forService:(id)service withUniqueID:(id)d
{
  dCopy = d;
  serviceCopy = service;
  invitationCopy = invitation;
  v11 = [(IDSInvitationStore *)self persistedPendingInvitationsForService:serviceCopy];
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
  [v12 setObject:invitationCopy forKey:dCopy];

  serviceCopy = [NSString stringWithFormat:@"%@-sentInvitations", serviceCopy];

  persistentMap = self->_persistentMap;
  v16 = [v13 copy];
  [(IDSPersistentMap *)persistentMap setObject:v16 forKey:serviceCopy];
}

- (void)removePendingInvitation:(id)invitation forService:(id)service
{
  invitationCopy = invitation;
  serviceCopy = service;
  v7 = [(IDSInvitationStore *)self persistedPendingInvitationsForService:serviceCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
    [v9 removeObjectsForKeys:invitationCopy];
    serviceCopy = [NSString stringWithFormat:@"%@-sentInvitations", serviceCopy];
    persistentMap = self->_persistentMap;
    v12 = [v9 copy];
    [(IDSPersistentMap *)persistentMap setObject:v12 forKey:serviceCopy];
  }
}

- (id)persistedReceivedInvitationsForService:(id)service
{
  service = [NSString stringWithFormat:@"%@-receivedInvitation", service];
  v5 = [(IDSPersistentMap *)self->_persistentMap objectForKey:service];

  return v5;
}

- (void)persistReceivedInvitation:(id)invitation forService:(id)service withUniqueID:(id)d
{
  dCopy = d;
  serviceCopy = service;
  invitationCopy = invitation;
  v11 = [(IDSInvitationStore *)self persistedReceivedInvitationsForService:serviceCopy];
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
  [v12 setObject:invitationCopy forKey:dCopy];

  serviceCopy = [NSString stringWithFormat:@"%@-receivedInvitation", serviceCopy];

  persistentMap = self->_persistentMap;
  v16 = [v13 copy];
  [(IDSPersistentMap *)persistentMap setObject:v16 forKey:serviceCopy];
}

- (void)removeReceivedInvitation:(id)invitation forService:(id)service
{
  invitationCopy = invitation;
  serviceCopy = service;
  v7 = [(IDSInvitationStore *)self persistedReceivedInvitationsForService:serviceCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
    [v9 removeObjectsForKeys:invitationCopy];
    serviceCopy = [NSString stringWithFormat:@"%@-receivedInvitation", serviceCopy];
    persistentMap = self->_persistentMap;
    v12 = [v9 copy];
    [(IDSPersistentMap *)persistentMap setObject:v12 forKey:serviceCopy];
  }
}

@end