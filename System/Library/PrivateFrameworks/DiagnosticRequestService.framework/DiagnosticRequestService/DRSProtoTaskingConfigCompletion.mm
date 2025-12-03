@interface DRSProtoTaskingConfigCompletion
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoTaskingConfigCompletion

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoTaskingConfigCompletion;
  v4 = [(DRSProtoTaskingConfigCompletion *)&v8 description];
  dictionaryRepresentation = [(DRSProtoTaskingConfigCompletion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  taskingConfigMetadata = self->_taskingConfigMetadata;
  if (taskingConfigMetadata)
  {
    dictionaryRepresentation = [(DRSProtoTaskingConfigMetadata *)taskingConfigMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"tasking_config_metadata"];
  }

  completionType = self->_completionType;
  if (completionType)
  {
    [dictionary setObject:completionType forKey:@"completion_type"];
  }

  completionDescription = self->_completionDescription;
  if (completionDescription)
  {
    [dictionary setObject:completionDescription forKey:@"completion_description"];
  }

  if (*&self->_has)
  {
    *&v4 = self->_activeDuration;
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v9 forKey:@"active_duration"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_taskingConfigMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_completionType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_completionDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    activeDuration = self->_activeDuration;
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_taskingConfigMetadata)
  {
    [toCopy setTaskingConfigMetadata:?];
    toCopy = v5;
  }

  if (self->_completionType)
  {
    [v5 setCompletionType:?];
    toCopy = v5;
  }

  if (self->_completionDescription)
  {
    [v5 setCompletionDescription:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = LODWORD(self->_activeDuration);
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DRSProtoTaskingConfigMetadata *)self->_taskingConfigMetadata copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_completionType copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_completionDescription copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_activeDuration;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  taskingConfigMetadata = self->_taskingConfigMetadata;
  if (taskingConfigMetadata | *(equalCopy + 4))
  {
    if (![(DRSProtoTaskingConfigMetadata *)taskingConfigMetadata isEqual:?])
    {
      goto LABEL_12;
    }
  }

  completionType = self->_completionType;
  if (completionType | *(equalCopy + 3))
  {
    if (![(NSString *)completionType isEqual:?])
    {
      goto LABEL_12;
    }
  }

  completionDescription = self->_completionDescription;
  if (completionDescription | *(equalCopy + 2))
  {
    if (![(NSString *)completionDescription isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_activeDuration == *(equalCopy + 2))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(DRSProtoTaskingConfigMetadata *)self->_taskingConfigMetadata hash];
  v4 = [(NSString *)self->_completionType hash];
  v5 = [(NSString *)self->_completionDescription hash];
  if (*&self->_has)
  {
    activeDuration = self->_activeDuration;
    if (activeDuration < 0.0)
    {
      activeDuration = -activeDuration;
    }

    *v6.i32 = floorf(activeDuration + 0.5);
    v10 = (activeDuration - *v6.i32) * 1.8447e19;
    *v7.i32 = *v6.i32 - (truncf(*v6.i32 * 5.421e-20) * 1.8447e19);
    v11.i64[0] = 0x8000000080000000;
    v11.i64[1] = 0x8000000080000000;
    v8 = 2654435761u * *vbslq_s8(v11, v7, v6).i32;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabsf(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  taskingConfigMetadata = self->_taskingConfigMetadata;
  v6 = *(fromCopy + 4);
  v7 = fromCopy;
  if (taskingConfigMetadata)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoTaskingConfigMetadata *)taskingConfigMetadata mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoTaskingConfigCompletion *)self setTaskingConfigMetadata:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 3))
  {
    [(DRSProtoTaskingConfigCompletion *)self setCompletionType:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 2))
  {
    [(DRSProtoTaskingConfigCompletion *)self setCompletionDescription:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 40))
  {
    self->_activeDuration = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end