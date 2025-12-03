@interface NSSLegalDocumentsRespMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSSLegalDocumentsRespMsg

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSLegalDocumentsRespMsg;
  v4 = [(NSSLegalDocumentsRespMsg *)&v8 description];
  dictionaryRepresentation = [(NSSLegalDocumentsRespMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  license = self->_license;
  if (license)
  {
    [dictionary setObject:license forKey:@"license"];
  }

  sarStatement = self->_sarStatement;
  if (sarStatement)
  {
    [v4 setObject:sarStatement forKey:@"sarStatement"];
  }

  legalNotices = self->_legalNotices;
  if (legalNotices)
  {
    [v4 setObject:legalNotices forKey:@"legalNotices"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v4 setObject:buildVersion forKey:@"buildVersion"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_sarUrlAdded];
    [v4 setObject:v9 forKey:@"sarUrlAdded"];
  }

  builtinApps = self->_builtinApps;
  if (builtinApps)
  {
    [v4 setObject:builtinApps forKey:@"builtinApps"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_license)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_sarStatement)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_legalNotices)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    sarUrlAdded = self->_sarUrlAdded;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_builtinApps)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_license)
  {
    [toCopy setLicense:?];
    toCopy = v5;
  }

  if (self->_sarStatement)
  {
    [v5 setSarStatement:?];
    toCopy = v5;
  }

  if (self->_legalNotices)
  {
    [v5 setLegalNotices:?];
    toCopy = v5;
  }

  if (self->_buildVersion)
  {
    [v5 setBuildVersion:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[48] = self->_sarUrlAdded;
    toCopy[52] |= 1u;
  }

  if (self->_builtinApps)
  {
    [v5 setBuiltinApps:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_license copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_sarStatement copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSData *)self->_legalNotices copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_buildVersion copyWithZone:zone];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_sarUrlAdded;
    *(v5 + 52) |= 1u;
  }

  v14 = [(NSData *)self->_builtinApps copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  license = self->_license;
  if (license | *(equalCopy + 4))
  {
    if (![(NSData *)license isEqual:?])
    {
      goto LABEL_15;
    }
  }

  sarStatement = self->_sarStatement;
  if (sarStatement | *(equalCopy + 5))
  {
    if (![(NSData *)sarStatement isEqual:?])
    {
      goto LABEL_15;
    }
  }

  legalNotices = self->_legalNotices;
  if (legalNotices | *(equalCopy + 3))
  {
    if (![(NSData *)legalNotices isEqual:?])
    {
      goto LABEL_15;
    }
  }

  buildVersion = self->_buildVersion;
  if (buildVersion | *(equalCopy + 1))
  {
    if (![(NSString *)buildVersion isEqual:?])
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
  if (!self->_sarUrlAdded)
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
  builtinApps = self->_builtinApps;
  if (builtinApps | *(equalCopy + 2))
  {
    v11 = [(NSData *)builtinApps isEqual:?];
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
  v3 = [(NSData *)self->_license hash];
  v4 = [(NSData *)self->_sarStatement hash];
  v5 = [(NSData *)self->_legalNotices hash];
  v6 = [(NSString *)self->_buildVersion hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_sarUrlAdded;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSData *)self->_builtinApps hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(NSSLegalDocumentsRespMsg *)self setLicense:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(NSSLegalDocumentsRespMsg *)self setSarStatement:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NSSLegalDocumentsRespMsg *)self setLegalNotices:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(NSSLegalDocumentsRespMsg *)self setBuildVersion:?];
    fromCopy = v5;
  }

  if (fromCopy[52])
  {
    self->_sarUrlAdded = fromCopy[48];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NSSLegalDocumentsRespMsg *)self setBuiltinApps:?];
    fromCopy = v5;
  }
}

@end