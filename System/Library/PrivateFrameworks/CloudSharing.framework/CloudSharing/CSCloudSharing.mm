@interface CSCloudSharing
+ (void)addParticipantsToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 completionHandler:(id)a7;
+ (void)addParticipantsToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 optionsGroups:(id)a7 completionHandler:(id)a8;
+ (void)addParticipantsToShareWithURLWrapper:(id)a3 share:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 optionsGroups:(id)a7 completionHandler:(id)a8;
+ (void)ckMetadataFromShareURL:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5;
+ (void)completeShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 completionHandler:(id)a10;
+ (void)completeShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 optionsGroups:(id)a7 completionHandler:(id)a8;
+ (void)existingShareForFileOrFolderURL:(id)a3 completionHandler:(id)a4;
+ (void)messageContentForMail:(id)a3 share:(id)a4 fileURL:(id)a5 appName:(id)a6 appIconData:(id)a7 completionHandler:(id)a8;
+ (void)removeFromShare:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5;
+ (void)removeFromShareFileURL:(id)a3 completionHandler:(id)a4;
+ (void)removeFromShareURL:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5;
+ (void)shareFileOrFolderURL:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 optionsGroups:(id)a6 completionHandler:(id)a7;
+ (void)shareFolderRemovingSubshares:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 optionsGroups:(id)a6 completionHandler:(id)a7;
+ (void)shareOrUpdateShareURL:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 completionHandler:(id)a10;
+ (void)sharingStatusForFileOrFolderURL:(id)a3 completionHandler:(id)a4;
+ (void)sharingStatusForShare:(id)a3 completionHandler:(id)a4;
+ (void)updateShare:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5;
+ (void)userNameAndEmail:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5;
@end

@implementation CSCloudSharing

+ (void)sharingStatusForFileOrFolderURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v7 callForSharingStatus:v6 reply:v5];
}

+ (void)shareFileOrFolderURL:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 optionsGroups:(id)a6 completionHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v16 callForFileSharing:v15 emailAddresses:v14 phoneNumbers:v13 optionsGroups:v12 reply:v11];
}

+ (void)completeShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 completionHandler:(id)a10
{
  v16 = a10;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v22 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  LOBYTE(v21) = a9;
  [(InitiateSharing *)v22 callForCloudKitAddToShare:v20 containerSetupInfo:v19 emailAddresses:v18 phoneNumbers:v17 accessType:a7 permissionType:a8 allowOthersToInvite:v21 reply:v16];
}

+ (void)completeShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 optionsGroups:(id)a7 completionHandler:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v19 callForCloudKitAddToShare:v18 containerSetupInfo:v17 emailAddresses:v16 phoneNumbers:v15 optionsGroups:v14 reply:v13];
}

+ (void)shareOrUpdateShareURL:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 completionHandler:(id)a10
{
  v16 = a10;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v22 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  LOBYTE(v21) = a9;
  [(InitiateSharing *)v22 callForSharingURLAddToShare:v20 containerSetupInfo:v19 emailAddresses:v18 phoneNumbers:v17 accessType:a7 permissionType:a8 allowOthersToInvite:v21 reply:v16];
}

+ (void)removeFromShareURL:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v10 callForSharingURLRemoveShare:v9 containerSetupInfo:v8 reply:v7];
}

+ (void)removeFromShare:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v10 callForRemoveShare:v9 containerSetupInfo:v8 reply:v7];
}

+ (void)removeFromShareFileURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v7 callForFileURLRemoveShare:v6 reply:v5];
}

+ (void)messageContentForMail:(id)a3 share:(id)a4 fileURL:(id)a5 appName:(id)a6 appIconData:(id)a7 completionHandler:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v19 callForMailContent:v18 share:v17 fileURL:v16 appName:v15 appIconData:v14 reply:v13];
}

+ (void)ckMetadataFromShareURL:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v10 callForMetadataFromShareURL:v9 containerSetupInfo:v8 reply:v7];
}

+ (void)updateShare:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v10 callForUpdateShare:v9 containerSetupInfo:v8 reply:v7];
}

+ (void)sharingStatusForShare:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v7 callForCurrentUserSharingStatus:v6 reply:v5];
}

+ (void)addParticipantsToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 completionHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v16 callForAddParticipantsToShare:v15 containerSetupInfo:v14 emailAddresses:v13 phoneNumbers:v12 reply:v11];
}

+ (void)addParticipantsToShareWithURLWrapper:(id)a3 share:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 optionsGroups:(id)a7 completionHandler:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v19 callForAddParticipantsToShareWithURLWrapper:v18 share:v17 emailAddresses:v16 phoneNumbers:v15 optionsGroups:v14 reply:v13];
}

+ (void)addParticipantsToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 optionsGroups:(id)a7 completionHandler:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v19 callForAddParticipantsToShare:v18 containerSetupInfo:v17 emailAddresses:v16 phoneNumbers:v15 optionsGroups:v14 reply:v13];
}

+ (void)existingShareForFileOrFolderURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v7 callForExistingShareForFile:v6 reply:v5];
}

+ (void)userNameAndEmail:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v10 callForUserNameAndEmail:v9 containerSetupInfo:v8 reply:v7];
}

+ (void)shareFolderRemovingSubshares:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 optionsGroups:(id)a6 completionHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v16 callForForciblyShareFolder:v15 emailAddresses:v14 phoneNumbers:v13 optionsGroups:v12 reply:v11];
}

@end