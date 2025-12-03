@interface EDSearchableRichLink
+ (NSString)idAttributeKey;
+ (NSString)titleAttributeKey;
+ (NSString)urlAttributeKey;
- (EDSearchableRichLink)init;
- (EDSearchableRichLink)initWithAccountIdentifier:(id)identifier mailboxIdentifiers:(id)identifiers messageID:(id)d id:(id)id title:(id)title url:(id)url dateSent:(id)sent dateReceived:(id)self0 sender:(id)self1 recipients:(id)self2;
- (void)addToAttributes:(id)attributes;
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

- (EDSearchableRichLink)initWithAccountIdentifier:(id)identifier mailboxIdentifiers:(id)identifiers messageID:(id)d id:(id)id title:(id)title url:(id)url dateSent:(id)sent dateReceived:(id)self0 sender:(id)self1 recipients:(id)self2
{
  dCopy = d;
  idCopy = id;
  selfCopy = self;
  receivedCopy = received;
  v14 = sub_1C645C674();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &recipientsCopy - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &recipientsCopy - v19;
  if (identifier)
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

  senderCopy = sender;
  recipientsCopy = recipients;
  v39 = sub_1C645CA14();
  if (title)
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
  if (sender)
  {
    senderCopy = sub_1C645C874();
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = dCopy;
  v33 = idCopy;
  v34 = sub_1C645CA14();
  v37._object = v31;
  v37._countAndFlagsBits = senderCopy;
  v35 = sub_1C643690C(v42, v41, v39, v32, v33, v24, v26, v27, v29, v20, v18, v37, v34);

  return v35;
}

- (void)addToAttributes:(id)attributes
{
  v5 = type metadata accessor for SearchableRichLink();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C640DBAC(self + OBJC_IVAR___EDSearchableRichLink__underlying, v11);
  attributesCopy = attributes;
  selfCopy = self;
  swift_dynamicCast();
  sub_1C6443AE0(attributesCopy);

  sub_1C64368B0(v8);
}

- (EDSearchableRichLink)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end