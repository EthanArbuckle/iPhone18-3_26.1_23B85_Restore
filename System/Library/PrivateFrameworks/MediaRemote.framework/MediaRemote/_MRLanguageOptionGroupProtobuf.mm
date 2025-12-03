@interface _MRLanguageOptionGroupProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLanguageOptions:(id)options;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRLanguageOptionGroupProtobuf

- (void)addLanguageOptions:(id)options
{
  optionsCopy = options;
  languageOptions = self->_languageOptions;
  v8 = optionsCopy;
  if (!languageOptions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_languageOptions;
    self->_languageOptions = v6;

    optionsCopy = v8;
    languageOptions = self->_languageOptions;
  }

  [(NSMutableArray *)languageOptions addObject:optionsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRLanguageOptionGroupProtobuf;
  v4 = [(_MRLanguageOptionGroupProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRLanguageOptionGroupProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowEmptySelection];
    [dictionary setObject:v4 forKey:@"allowEmptySelection"];
  }

  defaultLanguageOption = self->_defaultLanguageOption;
  if (defaultLanguageOption)
  {
    dictionaryRepresentation = [(_MRLanguageOptionProtobuf *)defaultLanguageOption dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"defaultLanguageOption"];
  }

  if ([(NSMutableArray *)self->_languageOptions count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_languageOptions, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_languageOptions;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"languageOptions"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    allowEmptySelection = self->_allowEmptySelection;
    PBDataWriterWriteBOOLField();
  }

  if (self->_defaultLanguageOption)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_languageOptions;
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
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[24] = self->_allowEmptySelection;
    toCopy[28] |= 1u;
  }

  v9 = toCopy;
  if (self->_defaultLanguageOption)
  {
    [toCopy setDefaultLanguageOption:?];
  }

  if ([(_MRLanguageOptionGroupProtobuf *)self languageOptionsCount])
  {
    [v9 clearLanguageOptions];
    languageOptionsCount = [(_MRLanguageOptionGroupProtobuf *)self languageOptionsCount];
    if (languageOptionsCount)
    {
      v6 = languageOptionsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(_MRLanguageOptionGroupProtobuf *)self languageOptionsAtIndex:i];
        [v9 addLanguageOptions:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_allowEmptySelection;
    *(v5 + 28) |= 1u;
  }

  v7 = [(_MRLanguageOptionProtobuf *)self->_defaultLanguageOption copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_languageOptions;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * v13) copyWithZone:{zone, v17}];
        [v6 addLanguageOptions:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(equalCopy + 24);
    if (self->_allowEmptySelection)
    {
      if (*(equalCopy + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  defaultLanguageOption = self->_defaultLanguageOption;
  if (defaultLanguageOption | *(equalCopy + 1) && ![(_MRLanguageOptionProtobuf *)defaultLanguageOption isEqual:?])
  {
    goto LABEL_9;
  }

  languageOptions = self->_languageOptions;
  if (languageOptions | *(equalCopy + 2))
  {
    v8 = [(NSMutableArray *)languageOptions isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_allowEmptySelection;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_MRLanguageOptionProtobuf *)self->_defaultLanguageOption hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_languageOptions hash];
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[28])
  {
    self->_allowEmptySelection = fromCopy[24];
    *&self->_has |= 1u;
  }

  defaultLanguageOption = self->_defaultLanguageOption;
  v7 = *(v5 + 1);
  if (defaultLanguageOption)
  {
    if (v7)
    {
      [(_MRLanguageOptionProtobuf *)defaultLanguageOption mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(_MRLanguageOptionGroupProtobuf *)self setDefaultLanguageOption:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(v5 + 2);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(_MRLanguageOptionGroupProtobuf *)self addLanguageOptions:*(*(&v14 + 1) + 8 * i), v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end