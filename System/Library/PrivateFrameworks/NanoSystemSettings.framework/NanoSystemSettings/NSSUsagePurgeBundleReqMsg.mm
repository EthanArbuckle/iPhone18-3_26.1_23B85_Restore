@interface NSSUsagePurgeBundleReqMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSUsagePurgeBundleReqMsg

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSUsagePurgeBundleReqMsg;
  v4 = [(NSSUsagePurgeBundleReqMsg *)&v8 description];
  dictionaryRepresentation = [(NSSUsagePurgeBundleReqMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [dictionary setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [to setBundleIdentifier:bundleIdentifier];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    bundleIdentifier = self->_bundleIdentifier;
    if (bundleIdentifier | equalCopy[1])
    {
      v6 = [(NSString *)bundleIdentifier isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(NSSUsagePurgeBundleReqMsg *)self setBundleIdentifier:?];
  }
}

@end