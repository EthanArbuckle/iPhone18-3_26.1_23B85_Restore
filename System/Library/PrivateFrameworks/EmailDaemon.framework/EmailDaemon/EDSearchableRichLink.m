@interface EDSearchableRichLink
+ (NSString)idAttributeKey;
+ (NSString)titleAttributeKey;
+ (NSString)urlAttributeKey;
- (EDSearchableRichLink)init;
- (EDSearchableRichLink)initWithAccountIdentifier:(id)a3 mailboxIdentifiers:(id)a4 messageID:(id)a5 id:(id)a6 title:(id)a7 url:(id)a8 dateSent:(id)a9 dateReceived:(id)a10 sender:(id)a11 recipients:(id)a12;
- (void)addToAttributes:(id)a3;
@end

@implementation EDSearchableRichLink

+ (NSString)idAttributeKey
{
  v2 = sub_1C645C844();

  return v2;
}

+ (NSString)titleAttributeKey
{
  v2 = sub_1C645C844();

  return v2;
}

+ (NSString)urlAttributeKey
{
  v2 = sub_1C645C844();

  return v2;
}

- (EDSearchableRichLink)initWithAccountIdentifier:(id)a3 mailboxIdentifiers:(id)a4 messageID:(id)a5 id:(id)a6 title:(id)a7 url:(id)a8 dateSent:(id)a9 dateReceived:(id)a10 sender:(id)a11 recipients:(id)a12
{
  v43 = a5;
  v44 = a6;
  v45 = self;
  v40 = a10;
  v14 = sub_1C645C674();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - v19;
  if (a3)
  {
    v21 = sub_1C645C874();
    v41 = v22;
    v42 = v21;
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  v23 = a11;
  v38 = a12;
  v39 = sub_1C645CA14();
  if (a7)
  {
    v24 = sub_1C645C874();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = sub_1C645C874();
  v29 = v28;
  sub_1C645C654();
  sub_1C645C654();
  if (a11)
  {
    v23 = sub_1C645C874();
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = v43;
  v33 = v44;
  v34 = sub_1C645CA14();
  v37._object = v31;
  v37._countAndFlagsBits = v23;
  v35 = sub_1C643690C(v42, v41, v39, v32, v33, v24, v26, v27, v29, v20, v18, v37, v34);

  return v35;
}

- (void)addToAttributes:(id)a3
{
  v5 = type metadata accessor for SearchableRichLink();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableRichLink__underlying, v11);
  v9 = a3;
  v10 = self;
  swift_dynamicCast();
  sub_1C6443AE0(v9);

  sub_1C64368B0(v8);
}

- (EDSearchableRichLink)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end