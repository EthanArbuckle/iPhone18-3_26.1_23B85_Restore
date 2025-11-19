@interface _MRLanguageOptionProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCharacteristics:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRLanguageOptionProtobuf

- (void)addCharacteristics:(id)a3
{
  v4 = a3;
  characteristics = self->_characteristics;
  v8 = v4;
  if (!characteristics)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_characteristics;
    self->_characteristics = v6;

    v4 = v8;
    characteristics = self->_characteristics;
  }

  [(NSMutableArray *)characteristics addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRLanguageOptionProtobuf;
  v4 = [(_MRLanguageOptionProtobuf *)&v8 description];
  v5 = [(_MRLanguageOptionProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_type];
    [v3 setObject:v4 forKey:@"type"];
  }

  languageTag = self->_languageTag;
  if (languageTag)
  {
    [v3 setObject:languageTag forKey:@"languageTag"];
  }

  characteristics = self->_characteristics;
  if (characteristics)
  {
    [v3 setObject:characteristics forKey:@"characteristics"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v3 setObject:displayName forKey:@"displayName"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_languageTag)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_characteristics;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[10] = self->_type;
    *(v4 + 44) |= 1u;
  }

  v10 = v4;
  if (self->_languageTag)
  {
    [v4 setLanguageTag:?];
  }

  if ([(_MRLanguageOptionProtobuf *)self characteristicsCount])
  {
    [v10 clearCharacteristics];
    v5 = [(_MRLanguageOptionProtobuf *)self characteristicsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(_MRLanguageOptionProtobuf *)self characteristicsAtIndex:i];
        [v10 addCharacteristics:v8];
      }
    }
  }

  if (self->_displayName)
  {
    [v10 setDisplayName:?];
  }

  v9 = v10;
  if (self->_identifier)
  {
    [v10 setIdentifier:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_type;
    *(v5 + 44) |= 1u;
  }

  v7 = [(NSString *)self->_languageTag copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_characteristics;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v21 + 1) + 8 * v13) copyWithZone:{a3, v21}];
        [v6 addCharacteristics:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v15 = [(NSString *)self->_displayName copyWithZone:a3];
  v16 = v6[2];
  v6[2] = v15;

  v17 = [(NSString *)self->_identifier copyWithZone:a3];
  v18 = v6[3];
  v6[3] = v17;

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_type != *(v4 + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 44))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  languageTag = self->_languageTag;
  if (languageTag | *(v4 + 4) && ![(NSString *)languageTag isEqual:?])
  {
    goto LABEL_15;
  }

  characteristics = self->_characteristics;
  if (characteristics | *(v4 + 1))
  {
    if (![(NSMutableArray *)characteristics isEqual:?])
    {
      goto LABEL_15;
    }
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 2))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 3))
  {
    v10 = [(NSString *)identifier isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_languageTag hash]^ v3;
  v5 = [(NSMutableArray *)self->_characteristics hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_displayName hash];
  return v6 ^ [(NSString *)self->_identifier hash];
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 44))
  {
    self->_type = *(v4 + 10);
    *&self->_has |= 1u;
  }

  if (v4[4])
  {
    [(_MRLanguageOptionProtobuf *)self setLanguageTag:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5[1];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_MRLanguageOptionProtobuf *)self addCharacteristics:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (v5[2])
  {
    [(_MRLanguageOptionProtobuf *)self setDisplayName:?];
  }

  if (v5[3])
  {
    [(_MRLanguageOptionProtobuf *)self setIdentifier:?];
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end