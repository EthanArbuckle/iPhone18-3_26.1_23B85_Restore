@interface MFParseMessageForWatch
+ (BOOL)attachmentTypeIsActionable:(unint64_t)a3;
+ (id)accountIDForAccount:(id)a3;
+ (id)createAttachment;
+ (id)createContentAttributedStringHTMLParser;
+ (id)createHTMLFromText:(id)a3 delSp:(BOOL)a4 flowed:(BOOL)a5;
+ (id)createImageAttachment;
+ (id)createMessage;
+ (id)createMessageContent;
+ (id)generateNotificationIdWithFolderId:(id)a3 remoteId:(id)a4;
+ (id)nanoMailboxIDForMFMailboxUID:(id)a3;
+ (id)scaleImageFromData:(id)a3 maxWidth:(float)a4;
+ (id)trimAttributedString:(id)a3;
@end

@implementation MFParseMessageForWatch

+ (id)createContentAttributedStringHTMLParser
{
  v2 = objc_alloc_init(getNNMKContentAttributedStringHTMLParserClass());

  return v2;
}

+ (BOOL)attachmentTypeIsActionable:(unint64_t)a3
{
  NNMKAttachmentClass = getNNMKAttachmentClass();

  return [NNMKAttachmentClass isTypeActionable:a3];
}

+ (id)trimAttributedString:(id)a3
{
  v3 = a3;
  v4 = [getNNMKContentAttributedStringHTMLParserClass() trimAttributedString:v3];

  return v4;
}

+ (id)createMessage
{
  v2 = objc_alloc_init(getNNMKMessageClass());

  return v2;
}

+ (id)createMessageContent
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getNNMKMessageContentClass_softClass;
  v10 = getNNMKMessageContentClass_softClass;
  if (!getNNMKMessageContentClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getNNMKMessageContentClass_block_invoke;
    v6[3] = &unk_1E7AA65C8;
    v6[4] = &v7;
    __getNNMKMessageContentClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_alloc_init(v2);

  return v4;
}

+ (id)createAttachment
{
  v2 = objc_alloc_init(getNNMKAttachmentClass());

  return v2;
}

+ (id)createImageAttachment
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getNNMKImageAttachmentClass_softClass;
  v10 = getNNMKImageAttachmentClass_softClass;
  if (!getNNMKImageAttachmentClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getNNMKImageAttachmentClass_block_invoke;
    v6[3] = &unk_1E7AA65C8;
    v6[4] = &v7;
    __getNNMKImageAttachmentClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_alloc_init(v2);

  return v4;
}

+ (id)generateNotificationIdWithFolderId:(id)a3 remoteId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [getNNMKMessageClass() generateNotificationIdWithFolderId:v5 remoteId:v6];

  return v7;
}

+ (id)accountIDForAccount:(id)a3
{
  v3 = [a3 nano_account];
  v4 = [v3 accountId];

  return v4;
}

+ (id)nanoMailboxIDForMFMailboxUID:(id)a3
{
  v3 = [a3 nano_mailboxId];

  return v3;
}

+ (id)scaleImageFromData:(id)a3 maxWidth:(float)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DF88] data];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v7 = getNNMKImageUtilityClass_softClass;
  v15 = getNNMKImageUtilityClass_softClass;
  if (!getNNMKImageUtilityClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getNNMKImageUtilityClass_block_invoke;
    v11[3] = &unk_1E7AA65C8;
    v11[4] = &v12;
    __getNNMKImageUtilityClass_block_invoke(v11);
    v7 = v13[3];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);
  *&v9 = a4;
  [v7 scaleImageFromData:v5 destinationData:v6 maxWidth:v9];

  return v6;
}

+ (id)createHTMLFromText:(id)a3 delSp:(BOOL)a4 flowed:(BOOL)a5
{
  if (a4)
  {
    v5 = 10;
  }

  else
  {
    v5 = 8;
  }

  v8 = 0;
  v6 = [a3 mf_convertFromFlowedText:v5 | a5 visuallyEmpty:&v8];

  return v6;
}

@end