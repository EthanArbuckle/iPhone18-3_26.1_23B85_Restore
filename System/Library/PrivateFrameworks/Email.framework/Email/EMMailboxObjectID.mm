@interface EMMailboxObjectID
- (BOOL)isEqual:(id)equal;
- (EMMailboxObjectID)init;
- (EMMailboxObjectID)initWithCoder:(id)coder;
- (EMMailboxObjectID)initWithURL:(id)l;
- (NSString)accountIdentifier;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMailboxObjectID

- (unint64_t)hash
{
  if ([(EMObjectID *)self isEphemeral])
  {
    v6.receiver = self;
    v6.super_class = EMMailboxObjectID;
    return [(EMObjectID *)&v6 hash];
  }

  else
  {
    v4 = [(EMMailboxObjectID *)self url];
    v3 = [v4 hash];
  }

  return v3;
}

- (EMMailboxObjectID)init
{
  ef_UUID = [MEMORY[0x1E696AEC0] ef_UUID];
  v11.receiver = self;
  v11.super_class = EMMailboxObjectID;
  v4 = [(EMObjectID *)&v11 initAsEphemeralID:1 representedObjectID:ef_UUID];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v5 setScheme:@"ephemeral"];
    representedObjectID = [v4 representedObjectID];
    [v5 setHost:representedObjectID];

    v7 = [v5 URL];
    v8 = v4[5];
    v4[5] = v7;
  }

  cachedSelf = [v4 cachedSelf];

  return cachedSelf;
}

- (NSString)ef_publicDescription
{
  v2 = MEMORY[0x1E699B858];
  v3 = [(EMMailboxObjectID *)self url];
  v4 = [v2 ec_redactedStringForMailboxURL:v3];

  return v4;
}

- (NSString)debugDescription
{
  v2 = [(EMMailboxObjectID *)self url];
  v3 = [v2 description];

  return v3;
}

- (NSString)accountIdentifier
{
  v2 = [(EMMailboxObjectID *)self url];
  host = [v2 host];

  return host;
}

- (EMMailboxObjectID)initWithURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v7 = [scheme isEqualToString:@"ephemeral"];

  if (v7)
  {
    host = [lCopy host];
    v13.receiver = self;
    v13.super_class = EMMailboxObjectID;
    v9 = [(EMObjectID *)&v13 initAsEphemeralID:1 representedObjectID:host];

    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = EMMailboxObjectID;
  v9 = [(EMObjectID *)&v12 initAsEphemeralID:0];
  if (v9)
  {
LABEL_5:
    objc_storeStrong(v9 + 5, l);
  }

LABEL_6:
  cachedSelf = [v9 cachedSelf];

  return cachedSelf;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(EMObjectID *)self isEphemeral])
      {
        v10.receiver = self;
        v10.super_class = EMMailboxObjectID;
        v6 = [(EMObjectID *)&v10 isEqual:v5];
      }

      else
      {
        v7 = [(EMMailboxObjectID *)self url];
        v8 = [(EMMailboxObjectID *)v5 url];
        v6 = [v7 isEqual:v8];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (EMMailboxObjectID)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  selfCopy2 = self;
  v5 = coderCopy;
  v6 = EFDecodeCacheableInstance();

  return v6;
}

id __35__EMMailboxObjectID_initWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v9.receiver = v2;
  v9.super_class = EMMailboxObjectID;
  v4 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v3);
  if (v4)
  {
    v5 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_url"];
    v6 = *(a1 + 40);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = coderCopy;
  EFEncodeCacheableInstance();
}

void __37__EMMailboxObjectID_encodeWithCoder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5.receiver = *(a1 + 40);
  v5.super_class = EMMailboxObjectID;
  objc_msgSendSuper2(&v5, sel_encodeWithCoder_, v2);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) url];
  [v3 encodeObject:v4 forKey:@"EFPropertyKey_url"];
}

@end