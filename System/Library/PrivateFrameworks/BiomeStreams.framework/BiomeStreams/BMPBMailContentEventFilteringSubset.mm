@interface BMPBMailContentEventFilteringSubset
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBMailContentEventFilteringSubset

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBMailContentEventFilteringSubset;
  v4 = [(BMPBMailContentEventFilteringSubset *)&v8 description];
  v5 = [(BMPBMailContentEventFilteringSubset *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [v3 setObject:uniqueId forKey:@"uniqueId"];
  }

  domainId = self->_domainId;
  if (domainId)
  {
    [v4 setObject:domainId forKey:@"domainId"];
  }

  personaId = self->_personaId;
  if (personaId)
  {
    [v4 setObject:personaId forKey:@"personaId"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_domainId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uniqueId)
  {
    [v4 setUniqueId:?];
    v4 = v5;
  }

  if (self->_domainId)
  {
    [v5 setDomainId:?];
    v4 = v5;
  }

  if (self->_personaId)
  {
    [v5 setPersonaId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_domainId copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_personaId copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((uniqueId = self->_uniqueId, !(uniqueId | v4[3])) || -[NSString isEqual:](uniqueId, "isEqual:")) && ((domainId = self->_domainId, !(domainId | v4[1])) || -[NSString isEqual:](domainId, "isEqual:")))
  {
    personaId = self->_personaId;
    if (personaId | v4[2])
    {
      v8 = [(NSString *)personaId isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [(NSString *)self->_domainId hash]^ v3;
  return v4 ^ [(NSString *)self->_personaId hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(BMPBMailContentEventFilteringSubset *)self setUniqueId:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(BMPBMailContentEventFilteringSubset *)self setDomainId:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(BMPBMailContentEventFilteringSubset *)self setPersonaId:?];
    v4 = v5;
  }
}

@end