@interface EDSearchableMessageUpdate
- (EDSearchableMessageUpdate)init;
- (EDSearchableMessageUpdate)initWithConversationIdentifier:(id)a3 mailboxIdentifiers:(id)a4 gmailLabels:(id)a5 isLikelyJunk:(id)a6 dateLastViewed:(id)a7 flags:(id)a8 authenticationState:(id)a9 messageID:(id)a10 messageIDHeader:(id)a11 subjectWithoutPrefix:(id)a12;
- (void)addToAttributes:(id)a3 forIdentifier:(id)a4;
@end

@implementation EDSearchableMessageUpdate

- (EDSearchableMessageUpdate)initWithConversationIdentifier:(id)a3 mailboxIdentifiers:(id)a4 gmailLabels:(id)a5 isLikelyJunk:(id)a6 dateLastViewed:(id)a7 flags:(id)a8 authenticationState:(id)a9 messageID:(id)a10 messageIDHeader:(id)a11 subjectWithoutPrefix:(id)a12
{
  v43 = self;
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
  if (a7)
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

  v23 = a11;
  if (a10)
  {
    v38 = sub_1C645C874();
    v25 = v24;
    if (a11)
    {
LABEL_6:
      v23 = sub_1C645C874();
      v27 = v26;
      goto LABEL_9;
    }
  }

  else
  {
    v38 = 0;
    v25 = 0;
    if (a11)
    {
      goto LABEL_6;
    }
  }

  v27 = 0;
LABEL_9:
  v28 = a6;
  v29 = a8;
  v30 = a9;
  v31 = a12;
  if (v31)
  {
    v32 = v31;
    v33 = sub_1C645C874();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = sub_1C64351A8(v42, v41, v40, v39, v28, v18, v29, v30, v38, v25, v23, v27, v33, v35);

  return v36;
}

- (void)addToAttributes:(id)a3 forIdentifier:(id)a4
{
  v6 = type metadata accessor for SearchableMessageUpdate();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1C645C874();
  v12 = v11;
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableMessageUpdate__underlying, v15);
  v13 = a3;
  v14 = self;
  swift_dynamicCast();
  sub_1C6441998(v13, v10, v12);

  sub_1C643514C(v9);
}

- (EDSearchableMessageUpdate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end