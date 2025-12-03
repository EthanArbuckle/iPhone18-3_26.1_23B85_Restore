@interface EMListUnsubscribeCommand
+ (id)_accountWithIdentifier:(id)identifier;
+ (id)accountFinderBlock;
+ (id)mailtoUnsubscribeCommandWithListID:(id)d address:(id)address sender:(id)sender senderForUnsubscribeMessage:(id)message subject:(id)subject body:(id)body account:(id)account headerUnsubscribeTypes:(int64_t)self0;
+ (id)oneClickUnsubscribeCommandWithListID:(id)d sender:(id)sender senderForUnsubscribeMessage:(id)message URL:(id)l postContent:(id)content headerUnsubscribeTypes:(int64_t)types;
+ (void)setAccountFinderBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (EMListUnsubscribeCommand)initWithCoder:(id)coder;
- (EMListUnsubscribeCommand)initWithListID:(id)d sender:(id)sender senderForUnsubscribeMessage:(id)message mailtoValues:(id)values postValues:(id)postValues headerUnsubscribeTypes:(int64_t)types;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMListUnsubscribeCommand

+ (id)mailtoUnsubscribeCommandWithListID:(id)d address:(id)address sender:(id)sender senderForUnsubscribeMessage:(id)message subject:(id)subject body:(id)body account:(id)account headerUnsubscribeTypes:(int64_t)self0
{
  dCopy = d;
  addressCopy = address;
  senderCopy = sender;
  messageCopy = message;
  subjectCopy = subject;
  bodyCopy = body;
  accountCopy = account;
  v22 = [[EMListUnsubscribeMailtoValues alloc] initWithAddresss:addressCopy subject:subjectCopy body:bodyCopy account:accountCopy];
  v23 = [[EMListUnsubscribeCommand alloc] initWithListID:dCopy sender:senderCopy senderForUnsubscribeMessage:messageCopy mailtoValues:v22 postValues:0 headerUnsubscribeTypes:types];

  return v23;
}

+ (id)oneClickUnsubscribeCommandWithListID:(id)d sender:(id)sender senderForUnsubscribeMessage:(id)message URL:(id)l postContent:(id)content headerUnsubscribeTypes:(int64_t)types
{
  dCopy = d;
  senderCopy = sender;
  messageCopy = message;
  lCopy = l;
  contentCopy = content;
  v18 = [[EMListUnsubscribePostValues alloc] initWithURL:lCopy postContent:contentCopy];
  v19 = [[EMListUnsubscribeCommand alloc] initWithListID:dCopy sender:senderCopy senderForUnsubscribeMessage:messageCopy mailtoValues:0 postValues:v18 headerUnsubscribeTypes:types];

  return v19;
}

- (EMListUnsubscribeCommand)initWithListID:(id)d sender:(id)sender senderForUnsubscribeMessage:(id)message mailtoValues:(id)values postValues:(id)postValues headerUnsubscribeTypes:(int64_t)types
{
  dCopy = d;
  senderCopy = sender;
  messageCopy = message;
  valuesCopy = values;
  postValuesCopy = postValues;
  v27.receiver = self;
  v27.super_class = EMListUnsubscribeCommand;
  v19 = [(EMListUnsubscribeCommand *)&v27 init];
  if (v19)
  {
    v20 = [dCopy copy];
    listID = v19->_listID;
    v19->_listID = v20;

    v22 = [senderCopy copy];
    sender = v19->_sender;
    v19->_sender = v22;

    v24 = [messageCopy copy];
    senderForUnsubscribeMessage = v19->_senderForUnsubscribeMessage;
    v19->_senderForUnsubscribeMessage = v24;

    objc_storeStrong(&v19->_mailtoValues, values);
    objc_storeStrong(&v19->_postValues, postValues);
    v19->_headerUnsubscribeTypes = types;
  }

  return v19;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  address = [(EMListUnsubscribeMailtoValues *)self->_mailtoValues address];
  v5 = [address hash];
  subject = [(EMListUnsubscribeMailtoValues *)self->_mailtoValues subject];
  v6 = [subject hash];
  body = [(EMListUnsubscribeMailtoValues *)self->_mailtoValues body];
  v7 = [body hash];
  oneClickURL = [(EMListUnsubscribePostValues *)self->_postValues oneClickURL];
  v9 = [oneClickURL hash];
  headerUnsubscribeTypes = self->_headerUnsubscribeTypes;
  postContent = [(EMListUnsubscribePostValues *)self->_postValues postContent];
  v12 = [v3 stringWithFormat:@"<%@ %p address: %lx, subject: %lx, body: %lx, url: %lx, availableUnsubscribeType: %lx, postContent: %@>", v4, self, v5, v6, v7, v9, headerUnsubscribeTypes, postContent];

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_listID hash];
  v4 = [(NSString *)self->_sender hash]^ v3;
  v5 = [(NSString *)self->_senderForUnsubscribeMessage hash];
  v6 = v4 ^ v5 ^ [(EMListUnsubscribeMailtoValues *)self->_mailtoValues hash];
  return v6 ^ [(EMListUnsubscribePostValues *)self->_postValues hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    headerUnsubscribeTypes = [(EMListUnsubscribeCommand *)self headerUnsubscribeTypes];
    if (headerUnsubscribeTypes == [v5 headerUnsubscribeTypes])
    {
      listID = [(EMListUnsubscribeCommand *)self listID];
      listID2 = [v5 listID];
      if (EFObjectsAreEqual())
      {
        sender = [(EMListUnsubscribeCommand *)self sender];
        sender2 = [v5 sender];
        if (EFObjectsAreEqual())
        {
          senderForUnsubscribeMessage = [(EMListUnsubscribeCommand *)self senderForUnsubscribeMessage];
          senderForUnsubscribeMessage2 = [v5 senderForUnsubscribeMessage];
          if (EFObjectsAreEqual())
          {
            mailtoValues = [(EMListUnsubscribeCommand *)self mailtoValues];
            mailtoValues2 = [v5 mailtoValues];
            if (EFObjectsAreEqual())
            {
              postValues = [(EMListUnsubscribeCommand *)self postValues];
              postValues2 = [v5 postValues];
              v13 = EFObjectsAreEqual();
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)accountFinderBlock
{
  v2 = _Block_copy(sAccountFinderBlock);

  return v2;
}

+ (void)setAccountFinderBlock:(id)block
{
  v3 = _Block_copy(block);
  v4 = sAccountFinderBlock;
  sAccountFinderBlock = v3;
}

+ (id)_accountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accountFinderBlock = [objc_opt_class() accountFinderBlock];
  if (!accountFinderBlock)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMListUnsubscribeCommand.m" lineNumber:196 description:@"accountFinderBlock is not set"];
  }

  v7 = (accountFinderBlock)[2](accountFinderBlock, identifierCopy);
  if (!v7)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"EMListUnsubscribeCommand.m" lineNumber:198 description:@"failed to find an account for identifier"];
  }

  return v7;
}

- (EMListUnsubscribeCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = EMListUnsubscribeCommand;
  v5 = [(EMListUnsubscribeCommand *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_listID"];
    listID = v5->_listID;
    v5->_listID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_sender"];
    sender = v5->_sender;
    v5->_sender = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_senderForUnsubscribeMessage"];
    senderForUnsubscribeMessage = v5->_senderForUnsubscribeMessage;
    v5->_senderForUnsubscribeMessage = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mailtoValues"];
    mailtoValues = v5->_mailtoValues;
    v5->_mailtoValues = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_postValues"];
    postValues = v5->_postValues;
    v5->_postValues = v14;

    v5->_headerUnsubscribeTypes = [coderCopy decodeIntegerForKey:@"EFPropertyKey_headerUnsubscribeTypes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  listID = [(EMListUnsubscribeCommand *)self listID];
  [coderCopy encodeObject:listID forKey:@"EFPropertyKey_listID"];

  sender = [(EMListUnsubscribeCommand *)self sender];
  [coderCopy encodeObject:sender forKey:@"EFPropertyKey_sender"];

  senderForUnsubscribeMessage = [(EMListUnsubscribeCommand *)self senderForUnsubscribeMessage];
  [coderCopy encodeObject:senderForUnsubscribeMessage forKey:@"EFPropertyKey_senderForUnsubscribeMessage"];

  mailtoValues = [(EMListUnsubscribeCommand *)self mailtoValues];
  [coderCopy encodeObject:mailtoValues forKey:@"EFPropertyKey_mailtoValues"];

  postValues = [(EMListUnsubscribeCommand *)self postValues];
  [coderCopy encodeObject:postValues forKey:@"EFPropertyKey_postValues"];

  [coderCopy encodeInteger:-[EMListUnsubscribeCommand headerUnsubscribeTypes](self forKey:{"headerUnsubscribeTypes"), @"EFPropertyKey_headerUnsubscribeTypes"}];
}

@end