@interface NSSUsageRespMsgAppBundle
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSUsageRespMsgAppBundle

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSUsageRespMsgAppBundle;
  v4 = [(NSSUsageRespMsgAppBundle *)&v8 description];
  dictionaryRepresentation = [(NSSUsageRespMsgAppBundle *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  bundleVersion = self->_bundleVersion;
  if (bundleVersion)
  {
    [v4 setObject:bundleVersion forKey:@"bundleVersion"];
  }

  vendor = self->_vendor;
  if (vendor)
  {
    [v4 setObject:vendor forKey:@"vendor"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsManualPurge];
    [v4 setObject:v9 forKey:@"supportsManualPurge"];
  }

  size = self->_size;
  if (size)
  {
    dictionaryRepresentation = [(NSSUsageSize *)size dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"size"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_bundleVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_vendor)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    supportsManualPurge = self->_supportsManualPurge;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_size)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v5;
  }

  if (self->_bundleIdentifier)
  {
    [v5 setBundleIdentifier:?];
    toCopy = v5;
  }

  if (self->_bundleVersion)
  {
    [v5 setBundleVersion:?];
    toCopy = v5;
  }

  if (self->_vendor)
  {
    [v5 setVendor:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[48] = self->_supportsManualPurge;
    toCopy[52] |= 1u;
  }

  if (self->_size)
  {
    [v5 setSize:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_bundleVersion copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_vendor copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_supportsManualPurge;
    *(v5 + 52) |= 1u;
  }

  v14 = [(NSSUsageSize *)self->_size copyWithZone:zone];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  name = self->_name;
  if (name | *(equalCopy + 3))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_15;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  bundleVersion = self->_bundleVersion;
  if (bundleVersion | *(equalCopy + 2))
  {
    if (![(NSString *)bundleVersion isEqual:?])
    {
      goto LABEL_15;
    }
  }

  vendor = self->_vendor;
  if (vendor | *(equalCopy + 5))
  {
    if (![(NSString *)vendor isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v9 = *(equalCopy + 52);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  if ((*(equalCopy + 52) & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = *(equalCopy + 48);
  if (!self->_supportsManualPurge)
  {
LABEL_11:
    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  if ((*(equalCopy + 48) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  size = self->_size;
  if (size | *(equalCopy + 4))
  {
    v11 = [(NSSUsageSize *)size isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_16:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_bundleIdentifier hash];
  v5 = [(NSString *)self->_bundleVersion hash];
  v6 = [(NSString *)self->_vendor hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_supportsManualPurge;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSSUsageSize *)self->_size hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(NSSUsageRespMsgAppBundle *)self setName:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 1))
  {
    [(NSSUsageRespMsgAppBundle *)self setBundleIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 2))
  {
    [(NSSUsageRespMsgAppBundle *)self setBundleVersion:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 5))
  {
    [(NSSUsageRespMsgAppBundle *)self setVendor:?];
    fromCopy = v7;
  }

  if (fromCopy[52])
  {
    self->_supportsManualPurge = fromCopy[48];
    *&self->_has |= 1u;
  }

  size = self->_size;
  v6 = *(fromCopy + 4);
  if (size)
  {
    if (v6)
    {
      [(NSSUsageSize *)size mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NSSUsageRespMsgAppBundle *)self setSize:?];
  }

  MEMORY[0x2821F96F8]();
}

@end