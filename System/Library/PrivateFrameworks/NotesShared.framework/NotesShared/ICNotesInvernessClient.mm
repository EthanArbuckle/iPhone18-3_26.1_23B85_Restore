@interface ICNotesInvernessClient
- (ICNotesInvernessClient)initWithContainer:(id)a3;
- (void)didCompleteInstallOrUpdateWithPreviousBuildNumber:(id)a3 previousVersion:(id)a4 currentBuildNumber:(id)a5 currentVersion:(id)a6 platformName:(id)a7 continuationToken:(id)a8 callback:(id)a9;
- (void)runGarbageCollectorWithProgress:(id)a3 callback:(id)a4;
- (void)sendMentionNotificationWithRecipientUserId:(id)a3 senderName:(id)a4 noteTitle:(id)a5 mentionSnippet:(id)a6 shareRecordName:(id)a7 shareOwnerUserId:(id)a8 noteRecordName:(id)a9 inlineAttachmentRecordName:(id)a10 callback:(id)a11;
@end

@implementation ICNotesInvernessClient

- (ICNotesInvernessClient)initWithContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICNotesInvernessClient;
  v5 = [(ICNotesInvernessClient *)&v9 init];
  if (v5)
  {
    v6 = [[ICNotesInvernessClientObjc alloc] initWithContainer:v4 environment:2 localURLString:@"http://localhost/"];
    objcClient = v5->_objcClient;
    v5->_objcClient = v6;
  }

  return v5;
}

- (void)sendMentionNotificationWithRecipientUserId:(id)a3 senderName:(id)a4 noteTitle:(id)a5 mentionSnippet:(id)a6 shareRecordName:(id)a7 shareOwnerUserId:(id)a8 noteRecordName:(id)a9 inlineAttachmentRecordName:(id)a10 callback:(id)a11
{
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = [(ICNotesInvernessClient *)self objcClient];
  [v27 sendMentionNotificationWithRecipientUserId:v26 senderName:v25 noteTitle:v24 mentionSnippet:v23 shareRecordName:v22 shareOwnerUserId:v21 noteRecordName:v20 inlineAttachmentRecordName:v19 callback:v18];
}

- (void)didCompleteInstallOrUpdateWithPreviousBuildNumber:(id)a3 previousVersion:(id)a4 currentBuildNumber:(id)a5 currentVersion:(id)a6 platformName:(id)a7 continuationToken:(id)a8 callback:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [(ICNotesInvernessClient *)self objcClient];
  [v23 didCompleteInstallOrUpdateWithPreviousBuildNumber:v22 previousVersion:v21 currentBuildNumber:v20 currentVersion:v19 platformName:v18 continuationToken:v17 callback:v16];
}

- (void)runGarbageCollectorWithProgress:(id)a3 callback:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICNotesInvernessClient *)self objcClient];
  [v8 runGarbageCollectorWithProgress:v7 callback:v6];
}

@end