@interface IMDCoreSpotlightValidationUtilities
+ (void)_loadItemsWithUniqueIdentifiers:(id)a3 expectedDomainIdentifier:(id)a4 completionBlock:(id)a5;
+ (void)checkForIndexedAttachmentGUIDs:(id)a3 completionBlock:(id)a4;
+ (void)checkForIndexedChatGUIDs:(id)a3 completionBlock:(id)a4;
+ (void)checkForIndexedMessageGUIDs:(id)a3 completionBlock:(id)a4;
@end

@implementation IMDCoreSpotlightValidationUtilities

+ (void)_loadItemsWithUniqueIdentifiers:(id)a3 expectedDomainIdentifier:(id)a4 completionBlock:(id)a5
{
  v21[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = IMCoreSpotlightIndex();
  v11 = *MEMORY[0x1E6964C48];
  v21[0] = *MEMORY[0x1E6963F88];
  v21[1] = v11;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v21, 2);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1B7B98A6C;
  v18[3] = &unk_1E7CBB8F8;
  v19 = v7;
  v20 = v8;
  v14 = v8;
  v15 = v7;
  objc_msgSend_slowFetchAttributes_protectionClass_bundleID_identifiers_completionHandler_(v10, v16, v13, 0, @"com.apple.MobileSMS", v9, v18);

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)checkForIndexedMessageGUIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B98DB4;
  v9[3] = &unk_1E7CBB920;
  v10 = v6;
  v7 = v6;
  objc_msgSend__loadItemsWithUniqueIdentifiers_expectedDomainIdentifier_completionBlock_(a1, v8, a3, 0, v9);
}

+ (void)checkForIndexedAttachmentGUIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B98EE4;
  v9[3] = &unk_1E7CBB920;
  v10 = v6;
  v7 = v6;
  objc_msgSend__loadItemsWithUniqueIdentifiers_expectedDomainIdentifier_completionBlock_(a1, v8, a3, @"attachmentDomain", v9);
}

+ (void)checkForIndexedChatGUIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695DF90];
  v11 = objc_msgSend_count(v6, v9, v10);
  v13 = objc_msgSend_dictionaryWithCapacity_(v8, v12, v11);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B990EC;
  block[3] = &unk_1E7CB6770;
  v27 = v6;
  v14 = v13;
  v28 = v14;
  v15 = v6;
  IMDPersistencePerformBlock(block, 1, v16);
  v19 = objc_msgSend_allKeys(v14, v17, v18);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1B7B99294;
  v23[3] = &unk_1E7CBB948;
  v24 = v14;
  v25 = v7;
  v20 = v7;
  v21 = v14;
  objc_msgSend__loadItemsWithUniqueIdentifiers_expectedDomainIdentifier_completionBlock_(a1, v22, v19, @"chatDomain", v23);
}

@end