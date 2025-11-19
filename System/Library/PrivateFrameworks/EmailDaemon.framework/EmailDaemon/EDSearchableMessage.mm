@interface EDSearchableMessage
+ (NSString)userHandle;
+ (id)peopleFromCommentedAddresses:(id)a3;
- (EDSearchableMessage)init;
- (EDSearchableMessage)initWithSubjectWithoutPrefix:(id)a3 dateSent:(id)a4 dateReceived:(id)a5 isEncrypted:(BOOL)a6 priority:(id)a7 senders:(id)a8 to:(id)a9 cc:(id)a10 bcc:(id)a11 allHeaders:(id)a12 htmlContent:(id)a13 summary:(id)a14 messageID:(id)a15 notificationID:(id)a16 isPartOfExistingThread:(BOOL)a17 hasCompleteData:(BOOL)a18 accountIdentifier:(id)a19 accountIsManaged:(BOOL)a20 accountType:(id)a21 accountEmailAddresses:(id)a22 update:(id)a23 attachments:(id)a24 category:(id)a25;
- (void)addToAttributes:(id)a3 forIdentifier:(id)a4;
@end

@implementation EDSearchableMessage

+ (NSString)userHandle
{
  if (qword_1EDC93E38 != -1)
  {
    swift_once();
  }

  v2 = sub_1C645C844();

  return v2;
}

+ (id)peopleFromCommentedAddresses:(id)a3
{
  v3 = sub_1C645CA14();
  sub_1C643361C(v3);

  sub_1C6401D00(0, &qword_1EDC93598, 0x1E6964E50);
  v4 = sub_1C645CA04();

  return v4;
}

- (EDSearchableMessage)initWithSubjectWithoutPrefix:(id)a3 dateSent:(id)a4 dateReceived:(id)a5 isEncrypted:(BOOL)a6 priority:(id)a7 senders:(id)a8 to:(id)a9 cc:(id)a10 bcc:(id)a11 allHeaders:(id)a12 htmlContent:(id)a13 summary:(id)a14 messageID:(id)a15 notificationID:(id)a16 isPartOfExistingThread:(BOOL)a17 hasCompleteData:(BOOL)a18 accountIdentifier:(id)a19 accountIsManaged:(BOOL)a20 accountType:(id)a21 accountEmailAddresses:(id)a22 update:(id)a23 attachments:(id)a24 category:(id)a25
{
  v88 = a6;
  v89 = self;
  v73 = a7;
  v74 = a24;
  v76 = a23;
  v77 = a25;
  v69 = a21;
  v81 = a19;
  v75 = a16;
  v71 = a22;
  v72 = a15;
  v68 = a14;
  v70 = a13;
  v25 = sub_1C645C674();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v62[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v62[-v30];
  v32 = sub_1C645C874();
  v84 = v33;
  v85 = v32;
  v86 = v31;
  sub_1C645C654();
  v87 = v29;
  sub_1C645C654();
  v83 = sub_1C645CA14();
  v82 = sub_1C645CA14();
  v80 = sub_1C645CA14();
  v79 = sub_1C645CA14();
  if (a12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4450, &qword_1C6473900);
    v78 = sub_1C645C7E4();
  }

  else
  {
    v78 = 0;
  }

  v67 = v69;
  v71 = v71;
  v76 = v76;
  v77 = v77;
  v74 = v74;
  v34 = v81;
  v35 = v75;
  v36 = v72;
  v37 = v68;
  v73 = v73;
  if (v70)
  {
    v38 = v70;
    v39 = sub_1C645C594();
    v69 = v40;
    v70 = v39;

    if (v37)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v69 = 0xF000000000000000;
    v70 = 0;
    if (v37)
    {
LABEL_6:
      v68 = sub_1C645C874();
      v66 = v41;

      if (v36)
      {
        goto LABEL_7;
      }

LABEL_11:
      v72 = 0;
      v65 = 0;
      if (v35)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v68 = 0;
  v66 = 0;
  if (!v36)
  {
    goto LABEL_11;
  }

LABEL_7:
  v72 = sub_1C645C874();
  v65 = v42;

  if (v35)
  {
LABEL_8:
    v75 = sub_1C645C874();
    v64 = v43;

    goto LABEL_13;
  }

LABEL_12:
  v75 = 0;
  v64 = 0;
LABEL_13:
  v63 = a17;
  if (v34)
  {
    v44 = sub_1C645C874();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v47 = v67;
  v48 = sub_1C645C874();
  v50 = v49;

  v51 = v71;
  v52 = sub_1C645CA14();

  v53 = v77;
  v54 = v74;
  v55 = v76;
  v61 = v48;
  v56 = v69;
  v57 = v70;
  v58 = v73;
  v59 = sub_1C6433808(v85, v84, v86, v87, v88, v73, v83, v82, v80, v79, v78, v70, v69, v68, v66, v72, v65, v75, v64, v63, a18, v44, v46, a20, v61, v50, v52, v76, v74, v77);

  sub_1C641711C(v57, v56);
  return v59;
}

- (void)addToAttributes:(id)a3 forIdentifier:(id)a4
{
  v6 = type metadata accessor for SearchableMessage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1C645C874();
  v12 = v11;
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableMessage__underlying, v15);
  v13 = a3;
  v14 = self;
  swift_dynamicCast();
  sub_1C643C638(v13, v10, v12);

  sub_1C6434174(v9, type metadata accessor for SearchableMessage);
}

- (EDSearchableMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end