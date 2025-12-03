@interface ICInvitation
+ (ICInvitation)invitationWithShareURL:(id)l context:(id)context;
+ (NSValueTransformer)shareSystemFieldsTransformer;
+ (id)invitationsMatchingPredicate:(id)predicate context:(id)context;
+ (id)makeInvitationIfNeededWithShareURL:(id)l account:(id)account context:(id)context;
+ (id)makeInvitationWithShareURL:(id)l account:(id)account context:(id)context;
+ (id)predicateForPendingInvitationsInAccount:(id)account;
+ (id)predicateForPendingInvitationsInAccount:(id)account receivedSince:(id)since;
- (CKShare)serverShare;
- (void)setServerShare:(id)share;
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
    serverShareData = [(ICInvitation *)self serverShareData];
    if (serverShareData)
    {
      shareSystemFieldsTransformer = [objc_opt_class() shareSystemFieldsTransformer];
      serverShareData2 = [(ICInvitation *)self serverShareData];
      v7 = [shareSystemFieldsTransformer reverseTransformedValue:serverShareData2];
      v8 = self->_serverShare;
      self->_serverShare = v7;
    }

    else
    {
      shareSystemFieldsTransformer = self->_serverShare;
      self->_serverShare = 0;
    }

    serverShare = self->_serverShare;
  }

  return serverShare;
}

- (void)setServerShare:(id)share
{
  shareCopy = share;
  if (([(CKShare *)self->_serverShare isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_serverShare, share);
    if (shareCopy)
    {
      shareSystemFieldsTransformer = [objc_opt_class() shareSystemFieldsTransformer];
      v6 = [shareSystemFieldsTransformer transformedValue:shareCopy];
      [(ICInvitation *)self setServerShareData:v6];
    }

    else
    {
      [(ICInvitation *)self setServerShareData:0];
    }
  }
}

+ (id)makeInvitationWithShareURL:(id)l account:(id)account context:(id)context
{
  contextCopy = context;
  accountCopy = account;
  lCopy = l;
  objc_opt_class();
  v10 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"ICInvitation" inManagedObjectContext:contextCopy];
  v11 = ICCheckedDynamicCast();

  persistentStore = [accountCopy persistentStore];
  [contextCopy assignObject:v11 toPersistentStore:persistentStore];

  uRLByDeletingFragment = [lCopy URLByDeletingFragment];

  [v11 setShareURL:uRLByDeletingFragment];
  [v11 setAccount:accountCopy];

  v14 = [MEMORY[0x277CBEAA8] now];
  [v11 setReceivedDate:v14];

  return v11;
}

+ (id)makeInvitationIfNeededWithShareURL:(id)l account:(id)account context:(id)context
{
  lCopy = l;
  accountCopy = account;
  contextCopy = context;
  uRLByDeletingFragment = [lCopy URLByDeletingFragment];
  v12 = [self invitationWithShareURL:uRLByDeletingFragment context:contextCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    uRLByDeletingFragment2 = [lCopy URLByDeletingFragment];
    v14 = [self makeInvitationWithShareURL:uRLByDeletingFragment2 account:accountCopy context:contextCopy];
  }

  return v14;
}

+ (id)invitationsMatchingPredicate:(id)predicate context:(id)context
{
  v4 = [ICInvitation ic_objectsMatchingPredicate:predicate context:context];
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

+ (ICInvitation)invitationWithShareURL:(id)l context:(id)context
{
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  uRLByDeletingFragment = [l URLByDeletingFragment];
  v9 = [v6 predicateWithFormat:@"shareURL == %@", uRLByDeletingFragment];

  v10 = [self invitationsMatchingPredicate:v9 context:contextCopy];

  firstObject = [v10 firstObject];

  return firstObject;
}

+ (id)predicateForPendingInvitationsInAccount:(id)account
{
  if (account)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"account == %@ AND rootObject == NIL", account];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"rootObject == NIL", v5];
  }
  v3 = ;

  return v3;
}

+ (id)predicateForPendingInvitationsInAccount:(id)account receivedSince:(id)since
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA920];
  sinceCopy = since;
  v8 = [self predicateForPendingInvitationsInAccount:account];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"receivedDate >= %@", sinceCopy, v8];

  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [v6 andPredicateWithSubpredicates:v10];

  return v11;
}

@end