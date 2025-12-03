@interface ICNotesInvernessClientObjc
- (ICNotesInvernessClientObjc)init;
- (ICNotesInvernessClientObjc)initWithContainer:(id)container environment:(int64_t)environment localURLString:(id)string;
- (NSString)localURLString;
- (void)didCompleteInstallOrUpdateWithPreviousBuildNumber:(id)number previousVersion:(id)version currentBuildNumber:(id)buildNumber currentVersion:(id)currentVersion platformName:(id)name continuationToken:(id)token callback:(id)callback;
- (void)runGarbageCollectorWithProgress:(id)progress callback:(id)callback;
- (void)sendMentionNotificationWithRecipientUserId:(id)id senderName:(id)name noteTitle:(id)title mentionSnippet:(id)snippet shareRecordName:(id)recordName shareOwnerUserId:(id)userId noteRecordName:(id)noteRecordName inlineAttachmentRecordName:(id)self0 callback:(id)self1;
@end

@implementation ICNotesInvernessClientObjc

- (NSString)localURLString
{

  v2 = sub_2150A4A90();

  return v2;
}

- (ICNotesInvernessClientObjc)initWithContainer:(id)container environment:(int64_t)environment localURLString:(id)string
{
  v8 = sub_2150A4AD0();
  *(self + OBJC_IVAR___ICNotesInvernessClientObjc_container) = container;
  *(self + OBJC_IVAR___ICNotesInvernessClientObjc_environment) = environment;
  v9 = (self + OBJC_IVAR___ICNotesInvernessClientObjc_localURLString);
  *v9 = v8;
  v9[1] = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for NotesInvernessClient();
  containerCopy = container;
  return [(ICNotesInvernessClientObjc *)&v13 init];
}

- (void)sendMentionNotificationWithRecipientUserId:(id)id senderName:(id)name noteTitle:(id)title mentionSnippet:(id)snippet shareRecordName:(id)recordName shareOwnerUserId:(id)userId noteRecordName:(id)noteRecordName inlineAttachmentRecordName:(id)self0 callback:(id)self1
{
  selfCopy = self;
  attachmentRecordNameCopy = attachmentRecordName;
  v46 = type metadata accessor for MentionNotificationRequestV2(0);
  MEMORY[0x28223BE20](v46);
  v47 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = _Block_copy(callback);
  v42 = sub_2150A4AD0();
  v13 = v12;
  v39 = sub_2150A4AD0();
  v15 = v14;
  v40 = v14;
  v38 = sub_2150A4AD0();
  v17 = v16;
  v41 = v16;
  v37 = sub_2150A4AD0();
  v19 = v18;
  v43 = v18;
  v36 = sub_2150A4AD0();
  v21 = v20;
  v35 = sub_2150A4AD0();
  v23 = v22;
  v34 = sub_2150A4AD0();
  v25 = v24;
  v26 = sub_2150A4AD0();
  v28 = v27;
  attachmentRecordNameCopy = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = v44;
  v49 = v42;
  v50 = v13;
  v51 = v39;
  v52 = v15;
  v53 = v38;
  v54 = v17;
  v55 = v37;
  v56 = v19;
  v57 = v36;
  v58 = v21;
  v59 = v35;
  v60 = v23;
  v61 = v34;
  v62 = v25;
  v63 = v26;
  v64 = v28;
  sub_215007384(&qword_27CA432C8, type metadata accessor for MentionNotificationRequestV2);
  v30 = selfCopy;
  v31 = v47;
  sub_2150A3DB0();

  sub_215006640();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_215008AD8;
  *(v32 + 24) = v29;

  sub_214FC97AC(v31);

  sub_215008A3C(v31, type metadata accessor for MentionNotificationRequestV2);
}

- (void)didCompleteInstallOrUpdateWithPreviousBuildNumber:(id)number previousVersion:(id)version currentBuildNumber:(id)buildNumber currentVersion:(id)currentVersion platformName:(id)name continuationToken:(id)token callback:(id)callback
{
  selfCopy = self;
  updated = type metadata accessor for DidCompleteInstallOrUpdateRequest(0);
  MEMORY[0x28223BE20](updated);
  v39 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = _Block_copy(callback);
  v34 = sub_2150A4AD0();
  v12 = v11;
  v33 = sub_2150A4AD0();
  v14 = v13;
  v32 = sub_2150A4AD0();
  v16 = v15;
  v17 = sub_2150A4AD0();
  v19 = v18;
  v20 = sub_2150A4AD0();
  v22 = v21;
  tokenCopy = token;
  v36 = selfCopy;
  v24 = sub_2150A37B0();
  selfCopy = v24;
  v26 = v25;

  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 16) = v35;
  v40 = v28;
  v41 = v12;
  v42 = v33;
  v43 = v14;
  v44 = v17;
  v45 = v19;
  v46 = v32;
  v47 = v16;
  v48 = v20;
  v49 = v22;
  v50 = v24;
  v51 = v26;
  sub_215007384(qword_280C23720, type metadata accessor for DidCompleteInstallOrUpdateRequest);
  v29 = v39;
  sub_2150A3DB0();

  v30 = v36;
  sub_215006640();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2150088A8;
  *(v31 + 24) = v27;

  sub_214FC9984(v29);

  sub_214F7EDE4(selfCopy, v26);
  sub_215008A3C(v29, type metadata accessor for DidCompleteInstallOrUpdateRequest);
}

- (void)runGarbageCollectorWithProgress:(id)progress callback:(id)callback
{
  v6 = _Block_copy(callback);
  _Block_copy(v6);
  progressCopy = progress;
  selfCopy = self;
  sub_2150085D4(progress, 0, 0xF000000000000000, selfCopy, v6);
  _Block_release(v6);

  _Block_release(v6);
}

- (ICNotesInvernessClientObjc)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end