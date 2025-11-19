@interface MEMessageRecipients
+ (id)emailAddressesForEmailAddressStrings:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MEMessageRecipients)initWithCoder:(id)a3;
- (MEMessageRecipients)initWithStringsTo:(id)a3 cc:(id)a4 bcc:(id)a5 replyTo:(id)a6;
- (MEMessageRecipients)initWithTo:(id)a3 cc:(id)a4 bcc:(id)a5 replyTo:(id)a6;
- (NSArray)allRecipients;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEMessageRecipients

- (MEMessageRecipients)initWithStringsTo:(id)a3 cc:(id)a4 bcc:(id)a5 replyTo:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMessageRecipients emailAddressesForEmailAddressStrings:a3];
  v14 = [MEMessageRecipients emailAddressesForEmailAddressStrings:v10];
  v15 = [MEMessageRecipients emailAddressesForEmailAddressStrings:v11];
  v16 = [MEMessageRecipients emailAddressesForEmailAddressStrings:v12];
  v17 = [(MEMessageRecipients *)self initWithTo:v13 cc:v14 bcc:v15 replyTo:v16];

  return v17;
}

- (MEMessageRecipients)initWithTo:(id)a3 cc:(id)a4 bcc:(id)a5 replyTo:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = MEMessageRecipients;
  v15 = [(MEMessageRecipients *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_to, a3);
    objc_storeStrong(&v16->_cc, a4);
    objc_storeStrong(&v16->_bcc, a5);
    objc_storeStrong(&v16->_replyTo, a6);
  }

  return v16;
}

+ (id)emailAddressesForEmailAddressStrings:(id)a3
{
  v3 = [a3 ef_map:&__block_literal_global_6];

  return v3;
}

MEEmailAddress *__60__MEMessageRecipients_emailAddressesForEmailAddressStrings___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MEEmailAddress alloc] initWithRawString:v2];

  return v3;
}

- (NSArray)allRecipients
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(MEMessageRecipients *)self to];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(MEMessageRecipients *)self to];
    [v3 addObjectsFromArray:v6];
  }

  v7 = [(MEMessageRecipients *)self cc];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(MEMessageRecipients *)self cc];
    [v3 addObjectsFromArray:v9];
  }

  v10 = [(MEMessageRecipients *)self bcc];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(MEMessageRecipients *)self bcc];
    [v3 addObjectsFromArray:v12];
  }

  v13 = [(MEMessageRecipients *)self replyTo];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [(MEMessageRecipients *)self replyTo];
    [v3 addObjectsFromArray:v15];
  }

  v16 = [v3 allObjects];

  return v16;
}

- (MEMessageRecipients)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"EFPropertyKey_to"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"EFPropertyKey_cc"];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"EFPropertyKey_bcc"];

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v4 decodeObjectOfClasses:v19 forKey:@"EFPropertyKey_replyTo"];

  v21 = [(MEMessageRecipients *)self initWithTo:v8 cc:v12 bcc:v16 replyTo:v20];
  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MEMessageRecipients *)self to];
  [v8 encodeObject:v4 forKey:@"EFPropertyKey_to"];

  v5 = [(MEMessageRecipients *)self cc];
  [v8 encodeObject:v5 forKey:@"EFPropertyKey_cc"];

  v6 = [(MEMessageRecipients *)self bcc];
  [v8 encodeObject:v6 forKey:@"EFPropertyKey_bcc"];

  v7 = [(MEMessageRecipients *)self replyTo];
  [v8 encodeObject:v7 forKey:@"EFPropertyKey_replyTo"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(MEMessageRecipients *)self to];
    v8 = [v6 to];
    if (EFObjectsAreEqual())
    {
      v9 = [(MEMessageRecipients *)self cc];
      v10 = [v6 cc];
      if (EFObjectsAreEqual())
      {
        v16 = [(MEMessageRecipients *)self bcc];
        v11 = [v6 bcc];
        if (EFObjectsAreEqual())
        {
          v15 = [(MEMessageRecipients *)self replyTo];
          v12 = [v6 replyTo];
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

  return v13;
}

- (unint64_t)hash
{
  v3 = [(MEMessageRecipients *)self to];
  v4 = [v3 hash];

  v5 = [(MEMessageRecipients *)self cc];
  v6 = [v5 hash];

  v7 = [(MEMessageRecipients *)self bcc];
  v8 = [v7 hash];

  v9 = [(MEMessageRecipients *)self replyTo];
  v10 = [v9 hash] + 0x17C5D0F85;

  return 33 * (33 * (33 * v4 + v6) + v8) + v10;
}

@end