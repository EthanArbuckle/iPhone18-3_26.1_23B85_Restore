@interface MIPLibraryIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPLibraryIdentifier

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    v5 = v4;
    [(MIPLibraryIdentifier *)self setLibraryName:?];
    v4 = v5;
  }

  if (v4[3])
  {
    self->_libraryId = v4[1];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_libraryName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_libraryId;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  libraryName = self->_libraryName;
  if (libraryName | *(v4 + 2))
  {
    if (![(NSString *)libraryName isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_libraryId == *(v4 + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_libraryName copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_libraryId;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_libraryName)
  {
    v5 = v4;
    [v4 setLibraryName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_libraryId;
    *(v4 + 24) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_libraryName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  libraryName = self->_libraryName;
  if (libraryName)
  {
    [v3 setObject:libraryName forKey:@"libraryName"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_libraryId];
    [v4 setObject:v6 forKey:@"libraryId"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPLibraryIdentifier;
  v4 = [(MIPLibraryIdentifier *)&v8 description];
  v5 = [(MIPLibraryIdentifier *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end