@interface EDSearchableMessageUpdate
- (EDSearchableMessageUpdate)init;
- (EDSearchableMessageUpdate)initWithConversationIdentifier:(id)identifier mailboxIdentifiers:(id)identifiers gmailLabels:(id)labels isLikelyJunk:(id)junk dateLastViewed:(id)viewed flags:(id)flags authenticationState:(id)state messageID:(id)self0 messageIDHeader:(id)self1 subjectWithoutPrefix:(id)self2;
- (void)addToAttributes:(id)attributes forIdentifier:(id)identifier;
@end

@implementation EDSearchableMessageUpdate

- (EDSearchableMessageUpdate)initWithConversationIdentifier:(id)identifier mailboxIdentifiers:(id)identifiers gmailLabels:(id)labels isLikelyJunk:(id)junk dateLastViewed:(id)viewed flags:(id)flags authenticationState:(id)state messageID:(id)self0 messageIDHeader:(id)self1 subjectWithoutPrefix:(id)self2
{
  selfCopy = self;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1C4050, &unk_1C6472830);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v38 - v17;
  v19 = sub_1C645C874();
  v41 = v20;
  v42 = v19;
  v40 = sub_1C645CA14();
  sub_1C6401D00(0, &qword_1EDC93590, 0x1E696AD98);
  v39 = sub_1C645CA14();
  if (viewed)
  {
    sub_1C645C654();
    v21 = sub_1C645C674();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  }

  else
  {
    v22 = sub_1C645C674();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  }

  headerCopy = header;
  if (d)
  {
    v38 = sub_1C645C874();
    v25 = v24;
    if (header)
    {
LABEL_6:
      headerCopy = sub_1C645C874();
      v27 = v26;
      goto LABEL_9;
    }
  }

  else
  {
    v38 = 0;
    v25 = 0;
    if (header)
    {
      goto LABEL_6;
    }
  }

  v27 = 0;
LABEL_9:
  junkCopy = junk;
  flagsCopy = flags;
  stateCopy = state;
  prefixCopy = prefix;
  if (prefixCopy)
  {
    v32 = prefixCopy;
    v33 = sub_1C645C874();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = sub_1C64351A8(v42, v41, v40, v39, junkCopy, v18, flagsCopy, stateCopy, v38, v25, headerCopy, v27, v33, v35);

  return v36;
}

- (void)addToAttributes:(id)attributes forIdentifier:(id)identifier
{
  v6 = type metadata accessor for SearchableMessageUpdate();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1C645C874();
  v12 = v11;
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableMessageUpdate__underlying, v15);
  attributesCopy = attributes;
  selfCopy = self;
  swift_dynamicCast();
  sub_1C6441998(attributesCopy, v10, v12);

  sub_1C643514C(v9);
}

- (EDSearchableMessageUpdate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end