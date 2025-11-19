@interface PDSharingMailboxPayload
- (PDSharingMailboxPayload)initWithData:(id)a3 scheme:(unint64_t)a4;
- (PDSharingMailboxPayload)initWithDictionary:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation PDSharingMailboxPayload

- (PDSharingMailboxPayload)initWithData:(id)a3 scheme:(unint64_t)a4
{
  v7 = a3;
  v8 = 0;
  if (v7 && a4)
  {
    v12.receiver = self;
    v12.super_class = PDSharingMailboxPayload;
    v9 = [(PDSharingMailboxPayload *)&v12 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_data, a3);
      v10->_scheme = a4;
    }

    self = v10;
    v8 = self;
  }

  return v8;
}

- (PDSharingMailboxPayload)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKStringForKey:@"data"];
  if (v5)
  {
    v6 = [[NSData alloc] initWithBase64EncodedString:v5 options:0];
    if (v6)
    {
      v7 = [v4 PKStringForKey:@"type"];
      v8 = v7;
      if (v7 == @"AEAD_AES_128_GCM")
      {
LABEL_6:
        v10 = 1;
LABEL_7:

        self = [(PDSharingMailboxPayload *)self initWithData:v6 scheme:v10];
        v11 = self;
LABEL_14:

        goto LABEL_15;
      }

      if (v7)
      {
        v9 = [(__CFString *)v7 isEqualToString:@"AEAD_AES_128_GCM"];

        if (v9)
        {
          goto LABEL_6;
        }

        v12 = v8;
        if (v12 == @"AEAD_AES_256_GCM" || (v13 = v12, v14 = [(__CFString *)v12 isEqualToString:@"AEAD_AES_256_GCM"], v13, (v14 & 1) != 0))
        {
          v10 = 2;
          goto LABEL_7;
        }
      }
    }

    v11 = 0;
    goto LABEL_14;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  [v3 setObject:v4 forKeyedSubscript:@"data"];

  scheme = self->_scheme;
  v6 = @"AEAD_AES_256_GCM";
  if (scheme != 2)
  {
    v6 = 0;
  }

  if (scheme == 1)
  {
    v7 = @"AEAD_AES_128_GCM";
  }

  else
  {
    v7 = v6;
  }

  [v3 setObject:v7 forKeyedSubscript:@"type"];
  v8 = [v3 copy];

  return v8;
}

@end