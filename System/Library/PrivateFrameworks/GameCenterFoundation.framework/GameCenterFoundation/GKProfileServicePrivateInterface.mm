@interface GKProfileServicePrivateInterface
+ (void)configureInterface:(id)a3;
@end

@implementation GKProfileServicePrivateInterface

+ (void)configureInterface:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_getGameCenterRelationshipsForContact_shouldRefresh_completionHandler_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v4 setClasses:v8 forSelector:sel_getGameCenterRelationshipsForContact_shouldRefresh_completionHandler_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v4 setClasses:v11 forSelector:sel_getContactAssociationIDsForContacts_shouldRefresh_completionHandler_ argumentIndex:0 ofReply:0];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
  [v4 setClasses:v15 forSelector:sel_getContactAssociationIDsForContacts_shouldRefresh_completionHandler_ argumentIndex:0 ofReply:1];

  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [v4 setClasses:v18 forSelector:sel_getContactsForContactAssociationIDs_completionHandler_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
  [v4 setClasses:v22 forSelector:sel_getContactsForContactAssociationIDs_completionHandler_ argumentIndex:0 ofReply:1];

  v23 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  [v4 setClasses:v25 forSelector:sel_contactsIntegrationStatusWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v26 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
  [v4 setClasses:v28 forSelector:sel_getProfilesForPlayerIDs_fetchOptions_handler_ argumentIndex:0 ofReply:1];
}

@end