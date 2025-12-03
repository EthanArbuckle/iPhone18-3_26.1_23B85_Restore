@interface ICNotesInvernessClient
- (ICNotesInvernessClient)initWithContainer:(id)container;
- (void)didCompleteInstallOrUpdateWithPreviousBuildNumber:(id)number previousVersion:(id)version currentBuildNumber:(id)buildNumber currentVersion:(id)currentVersion platformName:(id)name continuationToken:(id)token callback:(id)callback;
- (void)runGarbageCollectorWithProgress:(id)progress callback:(id)callback;
- (void)sendMentionNotificationWithRecipientUserId:(id)id senderName:(id)name noteTitle:(id)title mentionSnippet:(id)snippet shareRecordName:(id)recordName shareOwnerUserId:(id)userId noteRecordName:(id)noteRecordName inlineAttachmentRecordName:(id)self0 callback:(id)self1;
@end

@implementation ICNotesInvernessClient

- (ICNotesInvernessClient)initWithContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = ICNotesInvernessClient;
  v5 = [(ICNotesInvernessClient *)&v9 init];
  if (v5)
  {
    v6 = [[ICNotesInvernessClientObjc alloc] initWithContainer:containerCopy environment:2 localURLString:@"http://localhost/"];
    objcClient = v5->_objcClient;
    v5->_objcClient = v6;
  }

  return v5;
}

- (void)sendMentionNotificationWithRecipientUserId:(id)id senderName:(id)name noteTitle:(id)title mentionSnippet:(id)snippet shareRecordName:(id)recordName shareOwnerUserId:(id)userId noteRecordName:(id)noteRecordName inlineAttachmentRecordName:(id)self0 callback:(id)self1
{
  callbackCopy = callback;
  attachmentRecordNameCopy = attachmentRecordName;
  noteRecordNameCopy = noteRecordName;
  userIdCopy = userId;
  recordNameCopy = recordName;
  snippetCopy = snippet;
  titleCopy = title;
  nameCopy = name;
  idCopy = id;
  objcClient = [(ICNotesInvernessClient *)self objcClient];
  [objcClient sendMentionNotificationWithRecipientUserId:idCopy senderName:nameCopy noteTitle:titleCopy mentionSnippet:snippetCopy shareRecordName:recordNameCopy shareOwnerUserId:userIdCopy noteRecordName:noteRecordNameCopy inlineAttachmentRecordName:attachmentRecordNameCopy callback:callbackCopy];
}

- (void)didCompleteInstallOrUpdateWithPreviousBuildNumber:(id)number previousVersion:(id)version currentBuildNumber:(id)buildNumber currentVersion:(id)currentVersion platformName:(id)name continuationToken:(id)token callback:(id)callback
{
  callbackCopy = callback;
  tokenCopy = token;
  nameCopy = name;
  currentVersionCopy = currentVersion;
  buildNumberCopy = buildNumber;
  versionCopy = version;
  numberCopy = number;
  objcClient = [(ICNotesInvernessClient *)self objcClient];
  [objcClient didCompleteInstallOrUpdateWithPreviousBuildNumber:numberCopy previousVersion:versionCopy currentBuildNumber:buildNumberCopy currentVersion:currentVersionCopy platformName:nameCopy continuationToken:tokenCopy callback:callbackCopy];
}

- (void)runGarbageCollectorWithProgress:(id)progress callback:(id)callback
{
  callbackCopy = callback;
  progressCopy = progress;
  objcClient = [(ICNotesInvernessClient *)self objcClient];
  [objcClient runGarbageCollectorWithProgress:progressCopy callback:callbackCopy];
}

@end