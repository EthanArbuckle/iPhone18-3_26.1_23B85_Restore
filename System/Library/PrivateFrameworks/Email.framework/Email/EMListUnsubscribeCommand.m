@interface EMListUnsubscribeCommand
+ (id)_accountWithIdentifier:(id)a3;
+ (id)accountFinderBlock;
+ (id)mailtoUnsubscribeCommandWithListID:(id)a3 address:(id)a4 sender:(id)a5 senderForUnsubscribeMessage:(id)a6 subject:(id)a7 body:(id)a8 account:(id)a9 headerUnsubscribeTypes:(int64_t)a10;
+ (id)oneClickUnsubscribeCommandWithListID:(id)a3 sender:(id)a4 senderForUnsubscribeMessage:(id)a5 URL:(id)a6 postContent:(id)a7 headerUnsubscribeTypes:(int64_t)a8;
+ (void)setAccountFinderBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EMListUnsubscribeCommand)initWithCoder:(id)a3;
- (EMListUnsubscribeCommand)initWithListID:(id)a3 sender:(id)a4 senderForUnsubscribeMessage:(id)a5 mailtoValues:(id)a6 postValues:(id)a7 headerUnsubscribeTypes:(int64_t)a8;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMListUnsubscribeCommand

+ (id)mailtoUnsubscribeCommandWithListID:(id)a3 address:(id)a4 sender:(id)a5 senderForUnsubscribeMessage:(id)a6 subject:(id)a7 body:(id)a8 account:(id)a9 headerUnsubscribeTypes:(int64_t)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [[EMListUnsubscribeMailtoValues alloc] initWithAddresss:v16 subject:v19 body:v20 account:v21];
  v23 = [[EMListUnsubscribeCommand alloc] initWithListID:v15 sender:v17 senderForUnsubscribeMessage:v18 mailtoValues:v22 postValues:0 headerUnsubscribeTypes:a10];

  return v23;
}

+ (id)oneClickUnsubscribeCommandWithListID:(id)a3 sender:(id)a4 senderForUnsubscribeMessage:(id)a5 URL:(id)a6 postContent:(id)a7 headerUnsubscribeTypes:(int64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [[EMListUnsubscribePostValues alloc] initWithURL:v16 postContent:v17];
  v19 = [[EMListUnsubscribeCommand alloc] initWithListID:v13 sender:v14 senderForUnsubscribeMessage:v15 mailtoValues:0 postValues:v18 headerUnsubscribeTypes:a8];

  return v19;
}

- (EMListUnsubscribeCommand)initWithListID:(id)a3 sender:(id)a4 senderForUnsubscribeMessage:(id)a5 mailtoValues:(id)a6 postValues:(id)a7 headerUnsubscribeTypes:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27.receiver = self;
  v27.super_class = EMListUnsubscribeCommand;
  v19 = [(EMListUnsubscribeCommand *)&v27 init];
  if (v19)
  {
    v20 = [v14 copy];
    listID = v19->_listID;
    v19->_listID = v20;

    v22 = [v15 copy];
    sender = v19->_sender;
    v19->_sender = v22;

    v24 = [v16 copy];
    senderForUnsubscribeMessage = v19->_senderForUnsubscribeMessage;
    v19->_senderForUnsubscribeMessage = v24;

    objc_storeStrong(&v19->_mailtoValues, a6);
    objc_storeStrong(&v19->_postValues, a7);
    v19->_headerUnsubscribeTypes = a8;
  }

  return v19;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v16 = [(EMListUnsubscribeMailtoValues *)self->_mailtoValues address];
  v5 = [v16 hash];
  v15 = [(EMListUnsubscribeMailtoValues *)self->_mailtoValues subject];
  v6 = [v15 hash];
  v14 = [(EMListUnsubscribeMailtoValues *)self->_mailtoValues body];
  v7 = [v14 hash];
  v8 = [(EMListUnsubscribePostValues *)self->_postValues oneClickURL];
  v9 = [v8 hash];
  headerUnsubscribeTypes = self->_headerUnsubscribeTypes;
  v11 = [(EMListUnsubscribePostValues *)self->_postValues postContent];
  v12 = [v3 stringWithFormat:@"<%@ %p address: %lx, subject: %lx, body: %lx, url: %lx, availableUnsubscribeType: %lx, postContent: %@>", v4, self, v5, v6, v7, v9, headerUnsubscribeTypes, v11];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(EMListUnsubscribeCommand *)self headerUnsubscribeTypes];
    if (v6 == [v5 headerUnsubscribeTypes])
    {
      v7 = [(EMListUnsubscribeCommand *)self listID];
      v8 = [v5 listID];
      if (EFObjectsAreEqual())
      {
        v9 = [(EMListUnsubscribeCommand *)self sender];
        v10 = [v5 sender];
        if (EFObjectsAreEqual())
        {
          v18 = [(EMListUnsubscribeCommand *)self senderForUnsubscribeMessage];
          v11 = [v5 senderForUnsubscribeMessage];
          if (EFObjectsAreEqual())
          {
            v17 = [(EMListUnsubscribeCommand *)self mailtoValues];
            v16 = [v5 mailtoValues];
            if (EFObjectsAreEqual())
            {
              v15 = [(EMListUnsubscribeCommand *)self postValues];
              v12 = [v5 postValues];
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

+ (void)setAccountFinderBlock:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = sAccountFinderBlock;
  sAccountFinderBlock = v3;
}

+ (id)_accountWithIdentifier:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() accountFinderBlock];
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"EMListUnsubscribeCommand.m" lineNumber:196 description:@"accountFinderBlock is not set"];
  }

  v7 = (v6)[2](v6, v5);
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"EMListUnsubscribeCommand.m" lineNumber:198 description:@"failed to find an account for identifier"];
  }

  return v7;
}

- (EMListUnsubscribeCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = EMListUnsubscribeCommand;
  v5 = [(EMListUnsubscribeCommand *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_listID"];
    listID = v5->_listID;
    v5->_listID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_sender"];
    sender = v5->_sender;
    v5->_sender = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_senderForUnsubscribeMessage"];
    senderForUnsubscribeMessage = v5->_senderForUnsubscribeMessage;
    v5->_senderForUnsubscribeMessage = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mailtoValues"];
    mailtoValues = v5->_mailtoValues;
    v5->_mailtoValues = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_postValues"];
    postValues = v5->_postValues;
    v5->_postValues = v14;

    v5->_headerUnsubscribeTypes = [v4 decodeIntegerForKey:@"EFPropertyKey_headerUnsubscribeTypes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(EMListUnsubscribeCommand *)self listID];
  [v9 encodeObject:v4 forKey:@"EFPropertyKey_listID"];

  v5 = [(EMListUnsubscribeCommand *)self sender];
  [v9 encodeObject:v5 forKey:@"EFPropertyKey_sender"];

  v6 = [(EMListUnsubscribeCommand *)self senderForUnsubscribeMessage];
  [v9 encodeObject:v6 forKey:@"EFPropertyKey_senderForUnsubscribeMessage"];

  v7 = [(EMListUnsubscribeCommand *)self mailtoValues];
  [v9 encodeObject:v7 forKey:@"EFPropertyKey_mailtoValues"];

  v8 = [(EMListUnsubscribeCommand *)self postValues];
  [v9 encodeObject:v8 forKey:@"EFPropertyKey_postValues"];

  [v9 encodeInteger:-[EMListUnsubscribeCommand headerUnsubscribeTypes](self forKey:{"headerUnsubscribeTypes"), @"EFPropertyKey_headerUnsubscribeTypes"}];
}

@end