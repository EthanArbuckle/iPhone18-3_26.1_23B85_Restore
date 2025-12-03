@interface IMDCoreSpotlightValidationUtilities
+ (void)_loadItemsWithUniqueIdentifiers:(id)identifiers expectedDomainIdentifier:(id)identifier completionBlock:(id)block;
+ (void)checkForIndexedAttachmentGUIDs:(id)ds completionBlock:(id)block;
+ (void)checkForIndexedChatGUIDs:(id)ds completionBlock:(id)block;
+ (void)checkForIndexedMessageGUIDs:(id)ds completionBlock:(id)block;
@end

@implementation IMDCoreSpotlightValidationUtilities

+ (void)_loadItemsWithUniqueIdentifiers:(id)identifiers expectedDomainIdentifier:(id)identifier completionBlock:(id)block
{
  v21[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  blockCopy = block;
  identifiersCopy = identifiers;
  v10 = IMCoreSpotlightIndex();
  v11 = *MEMORY[0x1E6964C48];
  v21[0] = *MEMORY[0x1E6963F88];
  v21[1] = v11;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v21, 2);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1B7B98A6C;
  v18[3] = &unk_1E7CBB8F8;
  v19 = identifierCopy;
  v20 = blockCopy;
  v14 = blockCopy;
  v15 = identifierCopy;
  objc_msgSend_slowFetchAttributes_protectionClass_bundleID_identifiers_completionHandler_(v10, v16, v13, 0, @"com.apple.MobileSMS", identifiersCopy, v18);

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)checkForIndexedMessageGUIDs:(id)ds completionBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B98DB4;
  v9[3] = &unk_1E7CBB920;
  v10 = blockCopy;
  v7 = blockCopy;
  objc_msgSend__loadItemsWithUniqueIdentifiers_expectedDomainIdentifier_completionBlock_(self, v8, ds, 0, v9);
}

+ (void)checkForIndexedAttachmentGUIDs:(id)ds completionBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B98EE4;
  v9[3] = &unk_1E7CBB920;
  v10 = blockCopy;
  v7 = blockCopy;
  objc_msgSend__loadItemsWithUniqueIdentifiers_expectedDomainIdentifier_completionBlock_(self, v8, ds, @"attachmentDomain", v9);
}

+ (void)checkForIndexedChatGUIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v8 = MEMORY[0x1E695DF90];
  v11 = objc_msgSend_count(dsCopy, v9, v10);
  v13 = objc_msgSend_dictionaryWithCapacity_(v8, v12, v11);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B990EC;
  block[3] = &unk_1E7CB6770;
  v27 = dsCopy;
  v14 = v13;
  v28 = v14;
  v15 = dsCopy;
  IMDPersistencePerformBlock(block, 1, v16);
  v19 = objc_msgSend_allKeys(v14, v17, v18);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1B7B99294;
  v23[3] = &unk_1E7CBB948;
  v24 = v14;
  v25 = blockCopy;
  v20 = blockCopy;
  v21 = v14;
  objc_msgSend__loadItemsWithUniqueIdentifiers_expectedDomainIdentifier_completionBlock_(self, v22, v19, @"chatDomain", v23);
}

@end