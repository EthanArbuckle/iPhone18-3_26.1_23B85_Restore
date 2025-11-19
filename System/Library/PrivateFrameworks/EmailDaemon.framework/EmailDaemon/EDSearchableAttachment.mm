@interface EDSearchableAttachment
- (EDSearchableAttachment)init;
- (EDSearchableAttachment)initWithContentURL:(id)a3 contentType:(id)a4 name:(id)a5 accountIdentifier:(id)a6 mailboxIdentifiers:(id)a7 messageID:(id)a8 messageIDHeader:(id)a9 dateSent:(id)a10 dateReceived:(id)a11 sender:(id)a12 recipients:(id)a13 downloadDate:(id)a14;
- (NSString)displayName;
- (NSURL)contentURL;
- (void)addToAttributes:(id)a3;
@end

@implementation EDSearchableAttachment

- (EDSearchableAttachment)initWithContentURL:(id)a3 contentType:(id)a4 name:(id)a5 accountIdentifier:(id)a6 mailboxIdentifiers:(id)a7 messageID:(id)a8 messageIDHeader:(id)a9 dateSent:(id)a10 dateReceived:(id)a11 sender:(id)a12 recipients:(id)a13 downloadDate:(id)a14
{
  v73 = a6;
  v79 = self;
  v80 = a14;
  v69 = a11;
  v70 = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v78 = &v64 - v20;
  v21 = sub_1C645C674();
  v76 = *(v21 - 8);
  v77 = v21;
  v22 = *(v76 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v75 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v74 = &v64 - v25;
  v26 = sub_1C645C794();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C645C514();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v72 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C645C474();
  v33 = a4;
  v34 = a5;
  v35 = a7;
  v71 = a8;
  v36 = a9;
  v37 = a10;
  v38 = v69;
  v66 = v70;
  v39 = v73;
  v64 = a12;
  v40 = a12;
  v65 = v80;
  v73 = v29;
  sub_1C645C784();

  v41 = sub_1C645C874();
  v69 = v42;
  v70 = v41;

  if (v39)
  {
    v43 = sub_1C645C874();
    v67 = v44;
    v68 = v43;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v45 = sub_1C645CA14();

  v46 = sub_1C645C874();
  v48 = v47;

  v49 = v74;
  sub_1C645C654();

  v50 = v75;
  sub_1C645C654();

  if (v40)
  {
    v51 = sub_1C645C874();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v54 = v66;
  v55 = sub_1C645CA14();

  v56 = v65;
  if (v65)
  {
    v57 = v78;
    sub_1C645C654();

    v58 = 0;
  }

  else
  {
    v58 = 1;
    v57 = v78;
  }

  (*(v76 + 56))(v57, v58, 1, v77);
  v63 = v57;
  commentedAddress._countAndFlagsBits = v51;
  commentedAddress._object = v53;
  v59 = v71;
  v60 = sub_1C64230E8(v72, v73, v70, v69, v68, v67, v45, v71, v46, v48, v49, v50, commentedAddress, v55, v63);

  return v60;
}

- (NSURL)contentURL
{
  v3 = type metadata accessor for SearchableAttachment();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1C645C514();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableAttachment__underlying, v14);
  swift_dynamicCast();
  (*(v8 + 16))(v11, v6, v7);
  sub_1C642308C(v6);
  v12 = sub_1C645C444();
  (*(v8 + 8))(v11, v7);

  return v12;
}

- (NSString)displayName
{
  v3 = type metadata accessor for SearchableAttachment();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableAttachment__underlying, v12);
  swift_dynamicCast();
  v7 = &v6[*(v3 + 24)];
  v8 = *v7;
  v9 = v7[1];

  sub_1C642308C(v6);
  v10 = sub_1C645C844();

  return v10;
}

- (void)addToAttributes:(id)a3
{
  v5 = type metadata accessor for SearchableAttachment();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableAttachment__underlying, v11);
  v9 = a3;
  v10 = self;
  swift_dynamicCast();
  sub_1C6438E80(v9);

  sub_1C642308C(v8);
}

- (EDSearchableAttachment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end