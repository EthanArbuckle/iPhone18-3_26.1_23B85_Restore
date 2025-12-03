@interface EDSearchableMessage
+ (NSString)userHandle;
+ (id)peopleFromCommentedAddresses:(id)addresses;
- (EDSearchableMessage)init;
- (EDSearchableMessage)initWithSubjectWithoutPrefix:(id)prefix dateSent:(id)sent dateReceived:(id)received isEncrypted:(BOOL)encrypted priority:(id)priority senders:(id)senders to:(id)to cc:(id)self0 bcc:(id)self1 allHeaders:(id)self2 htmlContent:(id)self3 summary:(id)self4 messageID:(id)self5 notificationID:(id)self6 isPartOfExistingThread:(BOOL)self7 hasCompleteData:(BOOL)self8 accountIdentifier:(id)self9 accountIsManaged:(BOOL)managed accountType:(id)type accountEmailAddresses:(id)addresses update:(id)update attachments:(id)attachments category:(id)category;
- (void)addToAttributes:(id)attributes forIdentifier:(id)identifier;
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

+ (id)peopleFromCommentedAddresses:(id)addresses
{
  v3 = sub_1C645CA14();
  sub_1C643361C(v3);

  sub_1C6401D00(0, &qword_1EDC93598, 0x1E6964E50);
  v4 = sub_1C645CA04();

  return v4;
}

- (EDSearchableMessage)initWithSubjectWithoutPrefix:(id)prefix dateSent:(id)sent dateReceived:(id)received isEncrypted:(BOOL)encrypted priority:(id)priority senders:(id)senders to:(id)to cc:(id)self0 bcc:(id)self1 allHeaders:(id)self2 htmlContent:(id)self3 summary:(id)self4 messageID:(id)self5 notificationID:(id)self6 isPartOfExistingThread:(BOOL)self7 hasCompleteData:(BOOL)self8 accountIdentifier:(id)self9 accountIsManaged:(BOOL)managed accountType:(id)type accountEmailAddresses:(id)addresses update:(id)update attachments:(id)attachments category:(id)category
{
  encryptedCopy = encrypted;
  selfCopy = self;
  priorityCopy = priority;
  attachmentsCopy = attachments;
  updateCopy = update;
  categoryCopy = category;
  typeCopy = type;
  identifierCopy = identifier;
  iDCopy = iD;
  addressesCopy = addresses;
  dCopy = d;
  summaryCopy = summary;
  contentCopy = content;
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
  if (headers)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4450, &qword_1C6473900);
    v78 = sub_1C645C7E4();
  }

  else
  {
    v78 = 0;
  }

  v67 = typeCopy;
  addressesCopy = addressesCopy;
  updateCopy = updateCopy;
  categoryCopy = categoryCopy;
  attachmentsCopy = attachmentsCopy;
  v34 = identifierCopy;
  v35 = iDCopy;
  v36 = dCopy;
  v37 = summaryCopy;
  priorityCopy = priorityCopy;
  if (contentCopy)
  {
    v38 = contentCopy;
    v39 = sub_1C645C594();
    typeCopy = v40;
    contentCopy = v39;

    if (v37)
    {
      goto LABEL_6;
    }
  }

  else
  {
    typeCopy = 0xF000000000000000;
    contentCopy = 0;
    if (v37)
    {
LABEL_6:
      summaryCopy = sub_1C645C874();
      v66 = v41;

      if (v36)
      {
        goto LABEL_7;
      }

LABEL_11:
      dCopy = 0;
      v65 = 0;
      if (v35)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  summaryCopy = 0;
  v66 = 0;
  if (!v36)
  {
    goto LABEL_11;
  }

LABEL_7:
  dCopy = sub_1C645C874();
  v65 = v42;

  if (v35)
  {
LABEL_8:
    iDCopy = sub_1C645C874();
    v64 = v43;

    goto LABEL_13;
  }

LABEL_12:
  iDCopy = 0;
  v64 = 0;
LABEL_13:
  threadCopy = thread;
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

  v51 = addressesCopy;
  v52 = sub_1C645CA14();

  v53 = categoryCopy;
  v54 = attachmentsCopy;
  v55 = updateCopy;
  v61 = v48;
  v56 = typeCopy;
  v57 = contentCopy;
  v58 = priorityCopy;
  v59 = sub_1C6433808(v85, v84, v86, v87, encryptedCopy, priorityCopy, v83, v82, v80, v79, v78, contentCopy, typeCopy, summaryCopy, v66, dCopy, v65, iDCopy, v64, threadCopy, data, v44, v46, managed, v61, v50, v52, updateCopy, attachmentsCopy, categoryCopy);

  sub_1C641711C(v57, v56);
  return v59;
}

- (void)addToAttributes:(id)attributes forIdentifier:(id)identifier
{
  v6 = type metadata accessor for SearchableMessage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1C645C874();
  v12 = v11;
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableMessage__underlying, v15);
  attributesCopy = attributes;
  selfCopy = self;
  swift_dynamicCast();
  sub_1C643C638(attributesCopy, v10, v12);

  sub_1C6434174(v9, type metadata accessor for SearchableMessage);
}

- (EDSearchableMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end