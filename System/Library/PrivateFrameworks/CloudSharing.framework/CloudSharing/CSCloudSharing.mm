@interface CSCloudSharing
+ (void)addParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers completionHandler:(id)handler;
+ (void)addParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups completionHandler:(id)handler;
+ (void)addParticipantsToShareWithURLWrapper:(id)wrapper share:(id)share emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups completionHandler:(id)handler;
+ (void)ckMetadataFromShareURL:(id)l containerSetupInfo:(id)info completionHandler:(id)handler;
+ (void)completeShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite completionHandler:(id)self0;
+ (void)completeShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups completionHandler:(id)handler;
+ (void)existingShareForFileOrFolderURL:(id)l completionHandler:(id)handler;
+ (void)messageContentForMail:(id)mail share:(id)share fileURL:(id)l appName:(id)name appIconData:(id)data completionHandler:(id)handler;
+ (void)removeFromShare:(id)share containerSetupInfo:(id)info completionHandler:(id)handler;
+ (void)removeFromShareFileURL:(id)l completionHandler:(id)handler;
+ (void)removeFromShareURL:(id)l containerSetupInfo:(id)info completionHandler:(id)handler;
+ (void)shareFileOrFolderURL:(id)l emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups completionHandler:(id)handler;
+ (void)shareFolderRemovingSubshares:(id)subshares emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups completionHandler:(id)handler;
+ (void)shareOrUpdateShareURL:(id)l containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite completionHandler:(id)self0;
+ (void)sharingStatusForFileOrFolderURL:(id)l completionHandler:(id)handler;
+ (void)sharingStatusForShare:(id)share completionHandler:(id)handler;
+ (void)updateShare:(id)share containerSetupInfo:(id)info completionHandler:(id)handler;
+ (void)userNameAndEmail:(id)email containerSetupInfo:(id)info completionHandler:(id)handler;
@end

@implementation CSCloudSharing

+ (void)sharingStatusForFileOrFolderURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v7 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v7 callForSharingStatus:lCopy reply:handlerCopy];
}

+ (void)shareFileOrFolderURL:(id)l emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups completionHandler:(id)handler
{
  handlerCopy = handler;
  groupsCopy = groups;
  numbersCopy = numbers;
  addressesCopy = addresses;
  lCopy = l;
  v16 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v16 callForFileSharing:lCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy optionsGroups:groupsCopy reply:handlerCopy];
}

+ (void)completeShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite completionHandler:(id)self0
{
  handlerCopy = handler;
  numbersCopy = numbers;
  addressesCopy = addresses;
  infoCopy = info;
  shareCopy = share;
  v22 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  LOBYTE(v21) = invite;
  [(InitiateSharing *)v22 callForCloudKitAddToShare:shareCopy containerSetupInfo:infoCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy accessType:type permissionType:permissionType allowOthersToInvite:v21 reply:handlerCopy];
}

+ (void)completeShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups completionHandler:(id)handler
{
  handlerCopy = handler;
  groupsCopy = groups;
  numbersCopy = numbers;
  addressesCopy = addresses;
  infoCopy = info;
  shareCopy = share;
  v19 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v19 callForCloudKitAddToShare:shareCopy containerSetupInfo:infoCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy optionsGroups:groupsCopy reply:handlerCopy];
}

+ (void)shareOrUpdateShareURL:(id)l containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite completionHandler:(id)self0
{
  handlerCopy = handler;
  numbersCopy = numbers;
  addressesCopy = addresses;
  infoCopy = info;
  lCopy = l;
  v22 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  LOBYTE(v21) = invite;
  [(InitiateSharing *)v22 callForSharingURLAddToShare:lCopy containerSetupInfo:infoCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy accessType:type permissionType:permissionType allowOthersToInvite:v21 reply:handlerCopy];
}

+ (void)removeFromShareURL:(id)l containerSetupInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  lCopy = l;
  v10 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v10 callForSharingURLRemoveShare:lCopy containerSetupInfo:infoCopy reply:handlerCopy];
}

+ (void)removeFromShare:(id)share containerSetupInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  shareCopy = share;
  v10 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v10 callForRemoveShare:shareCopy containerSetupInfo:infoCopy reply:handlerCopy];
}

+ (void)removeFromShareFileURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v7 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v7 callForFileURLRemoveShare:lCopy reply:handlerCopy];
}

+ (void)messageContentForMail:(id)mail share:(id)share fileURL:(id)l appName:(id)name appIconData:(id)data completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  nameCopy = name;
  lCopy = l;
  shareCopy = share;
  mailCopy = mail;
  v19 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v19 callForMailContent:mailCopy share:shareCopy fileURL:lCopy appName:nameCopy appIconData:dataCopy reply:handlerCopy];
}

+ (void)ckMetadataFromShareURL:(id)l containerSetupInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  lCopy = l;
  v10 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v10 callForMetadataFromShareURL:lCopy containerSetupInfo:infoCopy reply:handlerCopy];
}

+ (void)updateShare:(id)share containerSetupInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  shareCopy = share;
  v10 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v10 callForUpdateShare:shareCopy containerSetupInfo:infoCopy reply:handlerCopy];
}

+ (void)sharingStatusForShare:(id)share completionHandler:(id)handler
{
  handlerCopy = handler;
  shareCopy = share;
  v7 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v7 callForCurrentUserSharingStatus:shareCopy reply:handlerCopy];
}

+ (void)addParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers completionHandler:(id)handler
{
  handlerCopy = handler;
  numbersCopy = numbers;
  addressesCopy = addresses;
  infoCopy = info;
  shareCopy = share;
  v16 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v16 callForAddParticipantsToShare:shareCopy containerSetupInfo:infoCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy reply:handlerCopy];
}

+ (void)addParticipantsToShareWithURLWrapper:(id)wrapper share:(id)share emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups completionHandler:(id)handler
{
  handlerCopy = handler;
  groupsCopy = groups;
  numbersCopy = numbers;
  addressesCopy = addresses;
  shareCopy = share;
  wrapperCopy = wrapper;
  v19 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v19 callForAddParticipantsToShareWithURLWrapper:wrapperCopy share:shareCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy optionsGroups:groupsCopy reply:handlerCopy];
}

+ (void)addParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups completionHandler:(id)handler
{
  handlerCopy = handler;
  groupsCopy = groups;
  numbersCopy = numbers;
  addressesCopy = addresses;
  infoCopy = info;
  shareCopy = share;
  v19 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v19 callForAddParticipantsToShare:shareCopy containerSetupInfo:infoCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy optionsGroups:groupsCopy reply:handlerCopy];
}

+ (void)existingShareForFileOrFolderURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v7 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v7 callForExistingShareForFile:lCopy reply:handlerCopy];
}

+ (void)userNameAndEmail:(id)email containerSetupInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  emailCopy = email;
  v10 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v10 callForUserNameAndEmail:emailCopy containerSetupInfo:infoCopy reply:handlerCopy];
}

+ (void)shareFolderRemovingSubshares:(id)subshares emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups completionHandler:(id)handler
{
  handlerCopy = handler;
  groupsCopy = groups;
  numbersCopy = numbers;
  addressesCopy = addresses;
  subsharesCopy = subshares;
  v16 = objc_alloc_init(_TtC12CloudSharing15InitiateSharing);
  [(InitiateSharing *)v16 callForForciblyShareFolder:subsharesCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy optionsGroups:groupsCopy reply:handlerCopy];
}

@end