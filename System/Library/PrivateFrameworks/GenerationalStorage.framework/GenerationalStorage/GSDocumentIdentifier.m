@interface GSDocumentIdentifier
- (BOOL)isEqual:(id)a3;
- (GSDocumentIdentifier)initWithCoder:(id)a3;
- (GSDocumentIdentifier)initWithDocumentIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GSDocumentIdentifier

- (GSDocumentIdentifier)initWithDocumentIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GSDocumentIdentifier;
  v5 = [(GSDocumentIdentifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = *(v4 + 8);
    *(v5 + 3) = *(v4 + 3);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithDocumentIdentifier:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBytes:self->volumeUUID length:16 forKey:@"u"];
  [v4 encodeInt64:self->documentID forKey:@"i"];
}

- (GSDocumentIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GSDocumentIdentifier;
  v9 = 0;
  v5 = [(GSDocumentIdentifier *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeBytesForKey:@"u" returnedLength:&v9];
    if (v6 && v9 == 16)
    {
      *(v5 + 8) = *v6;
    }

    *(v5 + 3) = [v4 decodeInt64ForKey:@"i"];
  }

  return v5;
}

- (unint64_t)hash
{
  memset(&v4, 0, sizeof(v4));
  CC_SHA256_Init(&v4);
  CC_SHA256_Update(&v4, self->volumeUUID, 0x10u);
  CC_SHA256_Update(&v4, &self->documentID, 8u);
  CC_SHA256_Final(md, &v4);
  return *md;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && (*self->volumeUUID == *v4->volumeUUID ? (v5 = *&self->volumeUUID[8] == *&v4->volumeUUID[8]) : (v5 = 0), v5) && self->documentID == v4->documentID;
  }

  return v6;
}

- (id)description
{
  v3 = [[NSUUID alloc] initWithUUIDBytes:self->volumeUUID];
  documentID = self->documentID;
  v5 = [v3 UUIDString];
  v6 = [NSString stringWithFormat:@"docid:%lld on device %@", documentID, v5];

  return v6;
}

@end