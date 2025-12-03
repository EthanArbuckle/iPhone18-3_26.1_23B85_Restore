@interface NARPBLocalizationInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addKey:(id)key;
- (void)addLocalizedValue:(id)value;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NARPBLocalizationInfo

- (void)addKey:(id)key
{
  keyCopy = key;
  keys = self->_keys;
  v8 = keyCopy;
  if (!keys)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_keys;
    self->_keys = v6;

    keyCopy = v8;
    keys = self->_keys;
  }

  [(NSMutableArray *)keys addObject:keyCopy];
}

- (void)addLocalizedValue:(id)value
{
  valueCopy = value;
  localizedValues = self->_localizedValues;
  v8 = valueCopy;
  if (!localizedValues)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_localizedValues;
    self->_localizedValues = v6;

    valueCopy = v8;
    localizedValues = self->_localizedValues;
  }

  [(NSMutableArray *)localizedValues addObject:valueCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NARPBLocalizationInfo;
  v3 = [(NARPBLocalizationInfo *)&v7 description];
  dictionaryRepresentation = [(NARPBLocalizationInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  localization = self->_localization;
  if (localization)
  {
    [v3 setObject:localization forKey:@"localization"];
  }

  keys = self->_keys;
  if (keys)
  {
    [v4 setObject:keys forKey:@"key"];
  }

  localizedValues = self->_localizedValues;
  if (localizedValues)
  {
    [v4 setObject:localizedValues forKey:@"localizedValue"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_localization)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_keys;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_localizedValues;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_localization)
  {
    [toCopy setLocalization:?];
  }

  if ([(NARPBLocalizationInfo *)self keysCount])
  {
    [toCopy clearKeys];
    keysCount = [(NARPBLocalizationInfo *)self keysCount];
    if (keysCount)
    {
      v5 = keysCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NARPBLocalizationInfo *)self keyAtIndex:i];
        [toCopy addKey:v7];
      }
    }
  }

  if ([(NARPBLocalizationInfo *)self localizedValuesCount])
  {
    [toCopy clearLocalizedValues];
    localizedValuesCount = [(NARPBLocalizationInfo *)self localizedValuesCount];
    if (localizedValuesCount)
    {
      v9 = localizedValuesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NARPBLocalizationInfo *)self localizedValueAtIndex:j];
        [toCopy addLocalizedValue:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_localization copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_keys;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addKey:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_localizedValues;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{zone, v21}];
        [v5 addLocalizedValue:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((localization = self->_localization, !(localization | equalCopy[2])) || -[NSString isEqual:](localization, "isEqual:")) && ((keys = self->_keys, !(keys | equalCopy[1])) || -[NSMutableArray isEqual:](keys, "isEqual:")))
  {
    localizedValues = self->_localizedValues;
    if (localizedValues | equalCopy[3])
    {
      v8 = [(NSMutableArray *)localizedValues isEqual:?];
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
  v3 = [(NSString *)self->_localization hash];
  v4 = [(NSMutableArray *)self->_keys hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_localizedValues hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(NARPBLocalizationInfo *)self setLocalization:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NARPBLocalizationInfo *)self addKey:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 3);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NARPBLocalizationInfo *)self addLocalizedValue:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end