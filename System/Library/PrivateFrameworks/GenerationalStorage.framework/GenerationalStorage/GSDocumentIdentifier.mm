@interface GSDocumentIdentifier
- (BOOL)isEqual:(id)equal;
- (GSDocumentIdentifier)initWithCoder:(id)coder;
- (GSDocumentIdentifier)initWithDocumentIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GSDocumentIdentifier

- (GSDocumentIdentifier)initWithDocumentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = GSDocumentIdentifier;
  v5 = [(GSDocumentIdentifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = *(identifierCopy + 8);
    *(v5 + 3) = *(identifierCopy + 3);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithDocumentIdentifier:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBytes:self->volumeUUID length:16 forKey:@"u"];
  [coderCopy encodeInt64:self->documentID forKey:@"i"];
}

- (GSDocumentIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GSDocumentIdentifier;
  v9 = 0;
  v5 = [(GSDocumentIdentifier *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeBytesForKey:@"u" returnedLength:&v9];
    if (v6 && v9 == 16)
    {
      *(v5 + 8) = *v6;
    }

    *(v5 + 3) = [coderCopy decodeInt64ForKey:@"i"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && (*self->volumeUUID == *equalCopy->volumeUUID ? (v5 = *&self->volumeUUID[8] == *&equalCopy->volumeUUID[8]) : (v5 = 0), v5) && self->documentID == equalCopy->documentID;
  }

  return v6;
}

- (id)description
{
  v3 = [[NSUUID alloc] initWithUUIDBytes:self->volumeUUID];
  documentID = self->documentID;
  uUIDString = [v3 UUIDString];
  v6 = [NSString stringWithFormat:@"docid:%lld on device %@", documentID, uUIDString];

  return v6;
}

@end