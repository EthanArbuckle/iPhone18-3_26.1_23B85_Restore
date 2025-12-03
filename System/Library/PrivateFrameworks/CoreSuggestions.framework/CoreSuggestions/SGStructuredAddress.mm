@interface SGStructuredAddress
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDependentLocality:(id)locality;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SGStructuredAddress

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(SGStructuredAddress *)self setCountry:?];
  }

  if (*(fromCopy + 4))
  {
    [(SGStructuredAddress *)self setCountryCode:?];
  }

  if (*(fromCopy + 1))
  {
    [(SGStructuredAddress *)self setAdministrativeArea:?];
  }

  if (*(fromCopy + 2))
  {
    [(SGStructuredAddress *)self setAdministrativeAreaCode:?];
  }

  if (*(fromCopy + 8))
  {
    [(SGStructuredAddress *)self setSubAdministrativeArea:?];
  }

  if (*(fromCopy + 6))
  {
    [(SGStructuredAddress *)self setLocality:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 5);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SGStructuredAddress *)self addDependentLocality:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 10))
  {
    [(SGStructuredAddress *)self setThoroughfare:?];
  }

  if (*(fromCopy + 9))
  {
    [(SGStructuredAddress *)self setSubThroughfare:?];
  }

  if (*(fromCopy + 7))
  {
    [(SGStructuredAddress *)self setPostCode:?];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_country hash];
  v4 = [(NSString *)self->_countryCode hash]^ v3;
  v5 = [(NSString *)self->_administrativeArea hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_administrativeAreaCode hash];
  v7 = [(NSString *)self->_subAdministrativeArea hash];
  v8 = v7 ^ [(NSString *)self->_locality hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_dependentLocalitys hash];
  v10 = [(NSString *)self->_thoroughfare hash];
  v11 = v10 ^ [(NSString *)self->_subThroughfare hash];
  return v9 ^ v11 ^ [(NSString *)self->_postCode hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  country = self->_country;
  if (country | equalCopy[3])
  {
    if (![(NSString *)country isEqual:?])
    {
      goto LABEL_22;
    }
  }

  countryCode = self->_countryCode;
  if (countryCode | equalCopy[4] && ![(NSString *)countryCode isEqual:?])
  {
    goto LABEL_22;
  }

  if (((administrativeArea = self->_administrativeArea, !(administrativeArea | equalCopy[1])) || [(NSString *)administrativeArea isEqual:?]) && ((administrativeAreaCode = self->_administrativeAreaCode, !(administrativeAreaCode | equalCopy[2])) || [(NSString *)administrativeAreaCode isEqual:?]) && ((subAdministrativeArea = self->_subAdministrativeArea, !(subAdministrativeArea | equalCopy[8])) || [(NSString *)subAdministrativeArea isEqual:?]) && ((locality = self->_locality, !(locality | equalCopy[6])) || [(NSString *)locality isEqual:?]) && ((dependentLocalitys = self->_dependentLocalitys, !(dependentLocalitys | equalCopy[5])) || [(NSMutableArray *)dependentLocalitys isEqual:?]) && ((thoroughfare = self->_thoroughfare, !(thoroughfare | equalCopy[10])) || [(NSString *)thoroughfare isEqual:?]) && ((subThroughfare = self->_subThroughfare, !(subThroughfare | equalCopy[9])) || [(NSString *)subThroughfare isEqual:?]))
  {
    postCode = self->_postCode;
    if (postCode | equalCopy[7])
    {
      v15 = [(NSString *)postCode isEqual:?];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
LABEL_22:
    v15 = 0;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_country copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_countryCode copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_administrativeArea copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_administrativeAreaCode copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_subAdministrativeArea copyWithZone:zone];
  v15 = v5[8];
  v5[8] = v14;

  v16 = [(NSString *)self->_locality copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = self->_dependentLocalitys;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      v22 = 0;
      do
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v32 + 1) + 8 * v22) copyWithZone:{zone, v32}];
        [v5 addDependentLocality:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v20);
  }

  v24 = [(NSString *)self->_thoroughfare copyWithZone:zone];
  v25 = v5[10];
  v5[10] = v24;

  v26 = [(NSString *)self->_subThroughfare copyWithZone:zone];
  v27 = v5[9];
  v5[9] = v26;

  v28 = [(NSString *)self->_postCode copyWithZone:zone];
  v29 = v5[7];
  v5[7] = v28;

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_country)
  {
    [toCopy setCountry:?];
  }

  if (self->_countryCode)
  {
    [toCopy setCountryCode:?];
  }

  if (self->_administrativeArea)
  {
    [toCopy setAdministrativeArea:?];
  }

  if (self->_administrativeAreaCode)
  {
    [toCopy setAdministrativeAreaCode:?];
  }

  if (self->_subAdministrativeArea)
  {
    [toCopy setSubAdministrativeArea:?];
  }

  if (self->_locality)
  {
    [toCopy setLocality:?];
  }

  if ([(SGStructuredAddress *)self dependentLocalitysCount])
  {
    [toCopy clearDependentLocalitys];
    dependentLocalitysCount = [(SGStructuredAddress *)self dependentLocalitysCount];
    if (dependentLocalitysCount)
    {
      v5 = dependentLocalitysCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SGStructuredAddress *)self dependentLocalityAtIndex:i];
        [toCopy addDependentLocality:v7];
      }
    }
  }

  if (self->_thoroughfare)
  {
    [toCopy setThoroughfare:?];
  }

  v8 = toCopy;
  if (self->_subThroughfare)
  {
    [toCopy setSubThroughfare:?];
    v8 = toCopy;
  }

  if (self->_postCode)
  {
    [toCopy setPostCode:?];
    v8 = toCopy;
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_country)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_administrativeArea)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_administrativeAreaCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subAdministrativeArea)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_locality)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_dependentLocalitys;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_thoroughfare)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subThroughfare)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_postCode)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  country = self->_country;
  if (country)
  {
    [dictionary setObject:country forKey:@"country"];
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    [v4 setObject:countryCode forKey:@"country_code"];
  }

  administrativeArea = self->_administrativeArea;
  if (administrativeArea)
  {
    [v4 setObject:administrativeArea forKey:@"administrative_area"];
  }

  administrativeAreaCode = self->_administrativeAreaCode;
  if (administrativeAreaCode)
  {
    [v4 setObject:administrativeAreaCode forKey:@"administrative_area_code"];
  }

  subAdministrativeArea = self->_subAdministrativeArea;
  if (subAdministrativeArea)
  {
    [v4 setObject:subAdministrativeArea forKey:@"sub_administrative_area"];
  }

  locality = self->_locality;
  if (locality)
  {
    [v4 setObject:locality forKey:@"locality"];
  }

  dependentLocalitys = self->_dependentLocalitys;
  if (dependentLocalitys)
  {
    [v4 setObject:dependentLocalitys forKey:@"dependent_locality"];
  }

  thoroughfare = self->_thoroughfare;
  if (thoroughfare)
  {
    [v4 setObject:thoroughfare forKey:@"thoroughfare"];
  }

  subThroughfare = self->_subThroughfare;
  if (subThroughfare)
  {
    [v4 setObject:subThroughfare forKey:@"sub_throughfare"];
  }

  postCode = self->_postCode;
  if (postCode)
  {
    [v4 setObject:postCode forKey:@"post_code"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGStructuredAddress;
  v4 = [(SGStructuredAddress *)&v8 description];
  dictionaryRepresentation = [(SGStructuredAddress *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addDependentLocality:(id)locality
{
  localityCopy = locality;
  dependentLocalitys = self->_dependentLocalitys;
  v8 = localityCopy;
  if (!dependentLocalitys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dependentLocalitys;
    self->_dependentLocalitys = v6;

    localityCopy = v8;
    dependentLocalitys = self->_dependentLocalitys;
  }

  [(NSMutableArray *)dependentLocalitys addObject:localityCopy];
}

@end