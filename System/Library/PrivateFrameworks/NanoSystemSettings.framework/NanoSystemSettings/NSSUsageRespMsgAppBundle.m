@interface NSSUsageRespMsgAppBundle
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSSUsageRespMsgAppBundle

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSUsageRespMsgAppBundle;
  v4 = [(NSSUsageRespMsgAppBundle *)&v8 description];
  v5 = [(NSSUsageRespMsgAppBundle *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
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
    v11 = [(NSSUsageSize *)size dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"size"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_bundleVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_vendor)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    supportsManualPurge = self->_supportsManualPurge;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_size)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v5;
  }

  if (self->_bundleIdentifier)
  {
    [v5 setBundleIdentifier:?];
    v4 = v5;
  }

  if (self->_bundleVersion)
  {
    [v5 setBundleVersion:?];
    v4 = v5;
  }

  if (self->_vendor)
  {
    [v5 setVendor:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[48] = self->_supportsManualPurge;
    v4[52] |= 1u;
  }

  if (self->_size)
  {
    [v5 setSize:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_bundleVersion copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_vendor copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_supportsManualPurge;
    *(v5 + 52) |= 1u;
  }

  v14 = [(NSSUsageSize *)self->_size copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  name = self->_name;
  if (name | *(v4 + 3))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_15;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(v4 + 1))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  bundleVersion = self->_bundleVersion;
  if (bundleVersion | *(v4 + 2))
  {
    if (![(NSString *)bundleVersion isEqual:?])
    {
      goto LABEL_15;
    }
  }

  vendor = self->_vendor;
  if (vendor | *(v4 + 5))
  {
    if (![(NSString *)vendor isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v9 = *(v4 + 52);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  if ((*(v4 + 52) & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = *(v4 + 48);
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

  if ((*(v4 + 48) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  size = self->_size;
  if (size | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 3))
  {
    [(NSSUsageRespMsgAppBundle *)self setName:?];
    v4 = v7;
  }

  if (*(v4 + 1))
  {
    [(NSSUsageRespMsgAppBundle *)self setBundleIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 2))
  {
    [(NSSUsageRespMsgAppBundle *)self setBundleVersion:?];
    v4 = v7;
  }

  if (*(v4 + 5))
  {
    [(NSSUsageRespMsgAppBundle *)self setVendor:?];
    v4 = v7;
  }

  if (v4[52])
  {
    self->_supportsManualPurge = v4[48];
    *&self->_has |= 1u;
  }

  size = self->_size;
  v6 = *(v4 + 4);
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