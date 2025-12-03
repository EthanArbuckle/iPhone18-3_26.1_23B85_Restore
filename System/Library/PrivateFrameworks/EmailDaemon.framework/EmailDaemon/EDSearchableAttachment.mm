@interface EDSearchableAttachment
- (EDSearchableAttachment)init;
- (EDSearchableAttachment)initWithContentURL:(id)l contentType:(id)type name:(id)name accountIdentifier:(id)identifier mailboxIdentifiers:(id)identifiers messageID:(id)d messageIDHeader:(id)header dateSent:(id)self0 dateReceived:(id)self1 sender:(id)self2 recipients:(id)self3 downloadDate:(id)self4;
- (NSString)displayName;
- (NSURL)contentURL;
- (void)addToAttributes:(id)attributes;
@end

@implementation EDSearchableAttachment

- (EDSearchableAttachment)initWithContentURL:(id)l contentType:(id)type name:(id)name accountIdentifier:(id)identifier mailboxIdentifiers:(id)identifiers messageID:(id)d messageIDHeader:(id)header dateSent:(id)self0 dateReceived:(id)self1 sender:(id)self2 recipients:(id)self3 downloadDate:(id)self4
{
  identifierCopy = identifier;
  selfCopy = self;
  dateCopy = date;
  receivedCopy = received;
  recipientsCopy = recipients;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v78 = &senderCopy - v20;
  v21 = sub_1C645C674();
  v76 = *(v21 - 8);
  v77 = v21;
  v22 = *(v76 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v75 = &senderCopy - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v74 = &senderCopy - v25;
  v26 = sub_1C645C794();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &senderCopy - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C645C514();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v72 = &senderCopy - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C645C474();
  typeCopy = type;
  nameCopy = name;
  identifiersCopy = identifiers;
  dCopy = d;
  headerCopy = header;
  sentCopy = sent;
  v38 = receivedCopy;
  v66 = recipientsCopy;
  v39 = identifierCopy;
  senderCopy = sender;
  senderCopy2 = sender;
  v65 = dateCopy;
  identifierCopy = v29;
  sub_1C645C784();

  v41 = sub_1C645C874();
  receivedCopy = v42;
  recipientsCopy = v41;

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

  if (senderCopy2)
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
  v59 = dCopy;
  v60 = sub_1C64230E8(v72, identifierCopy, recipientsCopy, receivedCopy, v68, v67, v45, dCopy, v46, v48, v49, v50, commentedAddress, v55, v63);

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

- (void)addToAttributes:(id)attributes
{
  v5 = type metadata accessor for SearchableAttachment();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableAttachment__underlying, v11);
  attributesCopy = attributes;
  selfCopy = self;
  swift_dynamicCast();
  sub_1C6438E80(attributesCopy);

  sub_1C642308C(v8);
}

- (EDSearchableAttachment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end