@interface HDCodableCDADocumentSample
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsOmittedContent:(id)content;
- (int)omittedContent;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableCDADocumentSample

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sample = [(HDCodableCDADocumentSample *)self sample];
    v6 = [sample applyToObject:objectCopy];
    if (v6)
    {
      omittedContent = [(HDCodableCDADocumentSample *)self omittedContent];
      documentData = [(HDCodableCDADocumentSample *)self documentData];
      title = [(HDCodableCDADocumentSample *)self title];
      patientName = [(HDCodableCDADocumentSample *)self patientName];
      authorName = [(HDCodableCDADocumentSample *)self authorName];
      custodianName = [(HDCodableCDADocumentSample *)self custodianName];
      v13 = 3;
      if (omittedContent != 3)
      {
        v13 = 0;
      }

      if (omittedContent == 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = v13;
      }

      [objectCopy _applyPropertiesWithOmittedFlags:v14 compressedDocumentData:documentData title:title patientName:patientName authorName:authorName custodianName:custodianName];
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

- (int)StringAsOmittedContent:(id)content
{
  contentCopy = content;
  if ([contentCopy isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([contentCopy isEqualToString:@"DocumentData"])
  {
    v4 = 2;
  }

  else if ([contentCopy isEqualToString:@"Document"])
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
  dictionaryRepresentation = [(HDCodableCDADocumentSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(HDCodableSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
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

    [dictionary setObject:v7 forKey:@"omittedContent"];
  }

  documentData = self->_documentData;
  if (documentData)
  {
    [dictionary setObject:documentData forKey:@"documentData"];
  }

  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  patientName = self->_patientName;
  if (patientName)
  {
    [dictionary setObject:patientName forKey:@"patientName"];
  }

  authorName = self->_authorName;
  if (authorName)
  {
    [dictionary setObject:authorName forKey:@"authorName"];
  }

  custodianName = self->_custodianName;
  if (custodianName)
  {
    [dictionary setObject:custodianName forKey:@"custodianName"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    omittedContent = self->_omittedContent;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_documentData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_patientName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_authorName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_custodianName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_omittedContent;
    *(toCopy + 64) |= 1u;
  }

  if (self->_documentData)
  {
    [v5 setDocumentData:?];
    toCopy = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    toCopy = v5;
  }

  if (self->_patientName)
  {
    [v5 setPatientName:?];
    toCopy = v5;
  }

  if (self->_authorName)
  {
    [v5 setAuthorName:?];
    toCopy = v5;
  }

  if (self->_custodianName)
  {
    [v5 setCustodianName:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_omittedContent;
    *(v5 + 64) |= 1u;
  }

  v8 = [(NSData *)self->_documentData copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_title copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_patientName copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_authorName copyWithZone:zone];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  v16 = [(NSString *)self->_custodianName copyWithZone:zone];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 6))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v6 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_omittedContent != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  documentData = self->_documentData;
  if (documentData | *(equalCopy + 3) && ![(NSData *)documentData isEqual:?])
  {
    goto LABEL_19;
  }

  title = self->_title;
  if (title | *(equalCopy + 7))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_19;
    }
  }

  patientName = self->_patientName;
  if (patientName | *(equalCopy + 5))
  {
    if (![(NSString *)patientName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  authorName = self->_authorName;
  if (authorName | *(equalCopy + 1))
  {
    if (![(NSString *)authorName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  custodianName = self->_custodianName;
  if (custodianName | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 6);
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 64))
  {
    self->_omittedContent = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    sample = [(HDCodableCDADocumentSample *)self setDocumentData:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 7))
  {
    sample = [(HDCodableCDADocumentSample *)self setTitle:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 5))
  {
    sample = [(HDCodableCDADocumentSample *)self setPatientName:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 1))
  {
    sample = [(HDCodableCDADocumentSample *)self setAuthorName:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 2))
  {
    sample = [(HDCodableCDADocumentSample *)self setCustodianName:?];
    fromCopy = v7;
  }

  MEMORY[0x2821F96F8](sample, fromCopy);
}

@end