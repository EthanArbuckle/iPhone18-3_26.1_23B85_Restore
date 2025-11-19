@interface ICInvitation
+ (ICInvitation)invitationWithShareURL:(id)a3 context:(id)a4;
+ (NSValueTransformer)shareSystemFieldsTransformer;
+ (id)invitationsMatchingPredicate:(id)a3 context:(id)a4;
+ (id)makeInvitationIfNeededWithShareURL:(id)a3 account:(id)a4 context:(id)a5;
+ (id)makeInvitationWithShareURL:(id)a3 account:(id)a4 context:(id)a5;
+ (id)predicateForPendingInvitationsInAccount:(id)a3;
+ (id)predicateForPendingInvitationsInAccount:(id)a3 receivedSince:(id)a4;
- (CKShare)serverShare;
- (void)setServerShare:(id)a3;
@end

@implementation ICInvitation

+ (NSValueTransformer)shareSystemFieldsTransformer
{
  if (shareSystemFieldsTransformer_onceToken_0 != -1)
  {
    +[ICInvitation shareSystemFieldsTransformer];
  }

  v3 = shareSystemFieldsTransformer_transformer;

  return v3;
}

void __44__ICInvitation_shareSystemFieldsTransformer__block_invoke()
{
  v0 = [MEMORY[0x277CBC680] ic_systemFieldsValueTransformer];
  v1 = shareSystemFieldsTransformer_transformer;
  shareSystemFieldsTransformer_transformer = v0;
}

- (CKShare)serverShare
{
  serverShare = self->_serverShare;
  if (!serverShare)
  {
    v4 = [(ICInvitation *)self serverShareData];
    if (v4)
    {
      v5 = [objc_opt_class() shareSystemFieldsTransformer];
      v6 = [(ICInvitation *)self serverShareData];
      v7 = [v5 reverseTransformedValue:v6];
      v8 = self->_serverShare;
      self->_serverShare = v7;
    }

    else
    {
      v5 = self->_serverShare;
      self->_serverShare = 0;
    }

    serverShare = self->_serverShare;
  }

  return serverShare;
}

- (void)setServerShare:(id)a3
{
  v7 = a3;
  if (([(CKShare *)self->_serverShare isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_serverShare, a3);
    if (v7)
    {
      v5 = [objc_opt_class() shareSystemFieldsTransformer];
      v6 = [v5 transformedValue:v7];
      [(ICInvitation *)self setServerShareData:v6];
    }

    else
    {
      [(ICInvitation *)self setServerShareData:0];
    }
  }
}

+ (id)makeInvitationWithShareURL:(id)a3 account:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  v10 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"ICInvitation" inManagedObjectContext:v7];
  v11 = ICCheckedDynamicCast();

  v12 = [v8 persistentStore];
  [v7 assignObject:v11 toPersistentStore:v12];

  v13 = [v9 URLByDeletingFragment];

  [v11 setShareURL:v13];
  [v11 setAccount:v8];

  v14 = [MEMORY[0x277CBEAA8] now];
  [v11 setReceivedDate:v14];

  return v11;
}

+ (id)makeInvitationIfNeededWithShareURL:(id)a3 account:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 URLByDeletingFragment];
  v12 = [a1 invitationWithShareURL:v11 context:v10];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [v8 URLByDeletingFragment];
    v14 = [a1 makeInvitationWithShareURL:v15 account:v9 context:v10];
  }

  return v14;
}

+ (id)invitationsMatchingPredicate:(id)a3 context:(id)a4
{
  v4 = [ICInvitation ic_objectsMatchingPredicate:a3 context:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  return v6;
}

+ (ICInvitation)invitationWithShareURL:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [a3 URLByDeletingFragment];
  v9 = [v6 predicateWithFormat:@"shareURL == %@", v8];

  v10 = [a1 invitationsMatchingPredicate:v9 context:v7];

  v11 = [v10 firstObject];

  return v11;
}

+ (id)predicateForPendingInvitationsInAccount:(id)a3
{
  if (a3)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"account == %@ AND rootObject == NIL", a3];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"rootObject == NIL", v5];
  }
  v3 = ;

  return v3;
}

+ (id)predicateForPendingInvitationsInAccount:(id)a3 receivedSince:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA920];
  v7 = a4;
  v8 = [a1 predicateForPendingInvitationsInAccount:a3];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"receivedDate >= %@", v7, v8];

  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [v6 andPredicateWithSubpredicates:v10];

  return v11;
}

@end