@interface NSSLegalDocumentsRespMsg
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSSLegalDocumentsRespMsg

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSLegalDocumentsRespMsg;
  v4 = [(NSSLegalDocumentsRespMsg *)&v8 description];
  v5 = [(NSSLegalDocumentsRespMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  license = self->_license;
  if (license)
  {
    [v3 setObject:license forKey:@"license"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_license)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_sarStatement)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_legalNotices)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    sarUrlAdded = self->_sarUrlAdded;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_builtinApps)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_license)
  {
    [v4 setLicense:?];
    v4 = v5;
  }

  if (self->_sarStatement)
  {
    [v5 setSarStatement:?];
    v4 = v5;
  }

  if (self->_legalNotices)
  {
    [v5 setLegalNotices:?];
    v4 = v5;
  }

  if (self->_buildVersion)
  {
    [v5 setBuildVersion:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[48] = self->_sarUrlAdded;
    v4[52] |= 1u;
  }

  if (self->_builtinApps)
  {
    [v5 setBuiltinApps:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_license copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_sarStatement copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSData *)self->_legalNotices copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_buildVersion copyWithZone:a3];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_sarUrlAdded;
    *(v5 + 52) |= 1u;
  }

  v14 = [(NSData *)self->_builtinApps copyWithZone:a3];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  license = self->_license;
  if (license | *(v4 + 4))
  {
    if (![(NSData *)license isEqual:?])
    {
      goto LABEL_15;
    }
  }

  sarStatement = self->_sarStatement;
  if (sarStatement | *(v4 + 5))
  {
    if (![(NSData *)sarStatement isEqual:?])
    {
      goto LABEL_15;
    }
  }

  legalNotices = self->_legalNotices;
  if (legalNotices | *(v4 + 3))
  {
    if (![(NSData *)legalNotices isEqual:?])
    {
      goto LABEL_15;
    }
  }

  buildVersion = self->_buildVersion;
  if (buildVersion | *(v4 + 1))
  {
    if (![(NSString *)buildVersion isEqual:?])
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

  if ((*(v4 + 48) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  builtinApps = self->_builtinApps;
  if (builtinApps | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(NSSLegalDocumentsRespMsg *)self setLicense:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(NSSLegalDocumentsRespMsg *)self setSarStatement:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(NSSLegalDocumentsRespMsg *)self setLegalNotices:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(NSSLegalDocumentsRespMsg *)self setBuildVersion:?];
    v4 = v5;
  }

  if (v4[52])
  {
    self->_sarUrlAdded = v4[48];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(NSSLegalDocumentsRespMsg *)self setBuiltinApps:?];
    v4 = v5;
  }
}

@end