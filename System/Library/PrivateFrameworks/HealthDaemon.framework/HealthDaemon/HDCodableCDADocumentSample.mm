@interface HDCodableCDADocumentSample
- (BOOL)applyToObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsOmittedContent:(id)a3;
- (int)omittedContent;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableCDADocumentSample

- (BOOL)applyToObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HDCodableCDADocumentSample *)self sample];
    v6 = [v5 applyToObject:v4];
    if (v6)
    {
      v7 = [(HDCodableCDADocumentSample *)self omittedContent];
      v8 = [(HDCodableCDADocumentSample *)self documentData];
      v9 = [(HDCodableCDADocumentSample *)self title];
      v10 = [(HDCodableCDADocumentSample *)self patientName];
      v11 = [(HDCodableCDADocumentSample *)self authorName];
      v12 = [(HDCodableCDADocumentSample *)self custodianName];
      v13 = 3;
      if (v7 != 3)
      {
        v13 = 0;
      }

      if (v7 == 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = v13;
      }

      [v4 _applyPropertiesWithOmittedFlags:v14 compressedDocumentData:v8 title:v9 patientName:v10 authorName:v11 custodianName:v12];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (int)omittedContent
{
  if (*&self->_has)
  {
    return self->_omittedContent;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsOmittedContent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DocumentData"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Document"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableCDADocumentSample;
  v4 = [(HDCodableCDADocumentSample *)&v8 description];
  v5 = [(HDCodableCDADocumentSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    v5 = [(HDCodableSample *)sample dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sample"];
  }

  if (*&self->_has)
  {
    v6 = self->_omittedContent - 1;
    if (v6 >= 3)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_omittedContent];
    }

    else
    {
      v7 = off_278625260[v6];
    }

    [v3 setObject:v7 forKey:@"omittedContent"];
  }

  documentData = self->_documentData;
  if (documentData)
  {
    [v3 setObject:documentData forKey:@"documentData"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  patientName = self->_patientName;
  if (patientName)
  {
    [v3 setObject:patientName forKey:@"patientName"];
  }

  authorName = self->_authorName;
  if (authorName)
  {
    [v3 setObject:authorName forKey:@"authorName"];
  }

  custodianName = self->_custodianName;
  if (custodianName)
  {
    [v3 setObject:custodianName forKey:@"custodianName"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    omittedContent = self->_omittedContent;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_documentData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_patientName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_authorName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_custodianName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sample)
  {
    [v4 setSample:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_omittedContent;
    *(v4 + 64) |= 1u;
  }

  if (self->_documentData)
  {
    [v5 setDocumentData:?];
    v4 = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    v4 = v5;
  }

  if (self->_patientName)
  {
    [v5 setPatientName:?];
    v4 = v5;
  }

  if (self->_authorName)
  {
    [v5 setAuthorName:?];
    v4 = v5;
  }

  if (self->_custodianName)
  {
    [v5 setCustodianName:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_omittedContent;
    *(v5 + 64) |= 1u;
  }

  v8 = [(NSData *)self->_documentData copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_title copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_patientName copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_authorName copyWithZone:a3];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  v16 = [(NSString *)self->_custodianName copyWithZone:a3];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  sample = self->_sample;
  if (sample | *(v4 + 6))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v6 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_omittedContent != *(v4 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  documentData = self->_documentData;
  if (documentData | *(v4 + 3) && ![(NSData *)documentData isEqual:?])
  {
    goto LABEL_19;
  }

  title = self->_title;
  if (title | *(v4 + 7))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_19;
    }
  }

  patientName = self->_patientName;
  if (patientName | *(v4 + 5))
  {
    if (![(NSString *)patientName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  authorName = self->_authorName;
  if (authorName | *(v4 + 1))
  {
    if (![(NSString *)authorName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  custodianName = self->_custodianName;
  if (custodianName | *(v4 + 2))
  {
    v12 = [(NSString *)custodianName isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSample *)self->_sample hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_omittedContent;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSData *)self->_documentData hash];
  v7 = v5 ^ v6 ^ [(NSString *)self->_title hash];
  v8 = [(NSString *)self->_patientName hash];
  v9 = v8 ^ [(NSString *)self->_authorName hash];
  return v7 ^ v9 ^ [(NSString *)self->_custodianName hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  sample = self->_sample;
  v6 = *(v4 + 6);
  v7 = v4;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    sample = [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    sample = [(HDCodableCDADocumentSample *)self setSample:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 64))
  {
    self->_omittedContent = *(v4 + 8);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    sample = [(HDCodableCDADocumentSample *)self setDocumentData:?];
    v4 = v7;
  }

  if (*(v4 + 7))
  {
    sample = [(HDCodableCDADocumentSample *)self setTitle:?];
    v4 = v7;
  }

  if (*(v4 + 5))
  {
    sample = [(HDCodableCDADocumentSample *)self setPatientName:?];
    v4 = v7;
  }

  if (*(v4 + 1))
  {
    sample = [(HDCodableCDADocumentSample *)self setAuthorName:?];
    v4 = v7;
  }

  if (*(v4 + 2))
  {
    sample = [(HDCodableCDADocumentSample *)self setCustodianName:?];
    v4 = v7;
  }

  MEMORY[0x2821F96F8](sample, v4);
}

@end