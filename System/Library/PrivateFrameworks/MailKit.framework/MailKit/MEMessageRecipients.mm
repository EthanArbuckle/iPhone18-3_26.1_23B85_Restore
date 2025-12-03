@interface MEMessageRecipients
+ (id)emailAddressesForEmailAddressStrings:(id)strings;
- (BOOL)isEqual:(id)equal;
- (MEMessageRecipients)initWithCoder:(id)coder;
- (MEMessageRecipients)initWithStringsTo:(id)to cc:(id)cc bcc:(id)bcc replyTo:(id)replyTo;
- (MEMessageRecipients)initWithTo:(id)to cc:(id)cc bcc:(id)bcc replyTo:(id)replyTo;
- (NSArray)allRecipients;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MEMessageRecipients

- (MEMessageRecipients)initWithStringsTo:(id)to cc:(id)cc bcc:(id)bcc replyTo:(id)replyTo
{
  ccCopy = cc;
  bccCopy = bcc;
  replyToCopy = replyTo;
  v13 = [MEMessageRecipients emailAddressesForEmailAddressStrings:to];
  v14 = [MEMessageRecipients emailAddressesForEmailAddressStrings:ccCopy];
  v15 = [MEMessageRecipients emailAddressesForEmailAddressStrings:bccCopy];
  v16 = [MEMessageRecipients emailAddressesForEmailAddressStrings:replyToCopy];
  v17 = [(MEMessageRecipients *)self initWithTo:v13 cc:v14 bcc:v15 replyTo:v16];

  return v17;
}

- (MEMessageRecipients)initWithTo:(id)to cc:(id)cc bcc:(id)bcc replyTo:(id)replyTo
{
  toCopy = to;
  ccCopy = cc;
  bccCopy = bcc;
  replyToCopy = replyTo;
  v18.receiver = self;
  v18.super_class = MEMessageRecipients;
  v15 = [(MEMessageRecipients *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_to, to);
    objc_storeStrong(&v16->_cc, cc);
    objc_storeStrong(&v16->_bcc, bcc);
    objc_storeStrong(&v16->_replyTo, replyTo);
  }

  return v16;
}

+ (id)emailAddressesForEmailAddressStrings:(id)strings
{
  v3 = [strings ef_map:&__block_literal_global_6];

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

  replyTo = [(MEMessageRecipients *)self replyTo];
  v14 = [replyTo count];

  if (v14)
  {
    replyTo2 = [(MEMessageRecipients *)self replyTo];
    [v3 addObjectsFromArray:replyTo2];
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (MEMessageRecipients)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"EFPropertyKey_to"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"EFPropertyKey_cc"];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"EFPropertyKey_bcc"];

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"EFPropertyKey_replyTo"];

  v21 = [(MEMessageRecipients *)self initWithTo:v8 cc:v12 bcc:v16 replyTo:v20];
  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(MEMessageRecipients *)self to];
  [coderCopy encodeObject:v4 forKey:@"EFPropertyKey_to"];

  v5 = [(MEMessageRecipients *)self cc];
  [coderCopy encodeObject:v5 forKey:@"EFPropertyKey_cc"];

  v6 = [(MEMessageRecipients *)self bcc];
  [coderCopy encodeObject:v6 forKey:@"EFPropertyKey_bcc"];

  replyTo = [(MEMessageRecipients *)self replyTo];
  [coderCopy encodeObject:replyTo forKey:@"EFPropertyKey_replyTo"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
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
          replyTo = [(MEMessageRecipients *)self replyTo];
          replyTo2 = [v6 replyTo];
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

  replyTo = [(MEMessageRecipients *)self replyTo];
  v10 = [replyTo hash] + 0x17C5D0F85;

  return 33 * (33 * (33 * v4 + v6) + v8) + v10;
}

@end