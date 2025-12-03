@interface HKCodableQuantityValueWithRange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCode:(id)code;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableQuantityValueWithRange

- (void)addCode:(id)code
{
  codeCopy = code;
  codes = self->_codes;
  v8 = codeCopy;
  if (!codes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_codes;
    self->_codes = v6;

    codeCopy = v8;
    codes = self->_codes;
  }

  [(NSMutableArray *)codes addObject:codeCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableQuantityValueWithRange;
  v4 = [(HKCodableQuantityValueWithRange *)&v8 description];
  dictionaryRepresentation = [(HKCodableQuantityValueWithRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_codes count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_codes, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_codes;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"code"];
  }

  quantityValue = self->_quantityValue;
  if (quantityValue)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)quantityValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"quantityValue"];
  }

  textualValue = self->_textualValue;
  if (textualValue)
  {
    [dictionary setObject:textualValue forKey:@"textualValue"];
  }

  referenceRangeMin = self->_referenceRangeMin;
  if (referenceRangeMin)
  {
    dictionaryRepresentation3 = [(HKCodableQuantity *)referenceRangeMin dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"referenceRangeMin"];
  }

  referenceRangeMax = self->_referenceRangeMax;
  if (referenceRangeMax)
  {
    dictionaryRepresentation4 = [(HKCodableQuantity *)referenceRangeMax dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"referenceRangeMax"];
  }

  valueTitle = self->_valueTitle;
  if (valueTitle)
  {
    [dictionary setObject:valueTitle forKey:@"valueTitle"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_codes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_quantityValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_textualValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_referenceRangeMin)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_referenceRangeMax)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_valueTitle)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(HKCodableQuantityValueWithRange *)self codesCount])
  {
    [toCopy clearCodes];
    codesCount = [(HKCodableQuantityValueWithRange *)self codesCount];
    if (codesCount)
    {
      v5 = codesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableQuantityValueWithRange *)self codeAtIndex:i];
        [toCopy addCode:v7];
      }
    }
  }

  if (self->_quantityValue)
  {
    [toCopy setQuantityValue:?];
  }

  v8 = toCopy;
  if (self->_textualValue)
  {
    [toCopy setTextualValue:?];
    v8 = toCopy;
  }

  if (self->_referenceRangeMin)
  {
    [toCopy setReferenceRangeMin:?];
    v8 = toCopy;
  }

  if (self->_referenceRangeMax)
  {
    [toCopy setReferenceRangeMax:?];
    v8 = toCopy;
  }

  if (self->_valueTitle)
  {
    [toCopy setValueTitle:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_codes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * v10) copyWithZone:{zone, v23}];
        [v5 addCode:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v12 = [(HKCodableQuantity *)self->_quantityValue copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_textualValue copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(HKCodableQuantity *)self->_referenceRangeMin copyWithZone:zone];
  v17 = v5[4];
  v5[4] = v16;

  v18 = [(HKCodableQuantity *)self->_referenceRangeMax copyWithZone:zone];
  v19 = v5[3];
  v5[3] = v18;

  v20 = [(NSString *)self->_valueTitle copyWithZone:zone];
  v21 = v5[6];
  v5[6] = v20;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((codes = self->_codes, !(codes | equalCopy[1])) || -[NSMutableArray isEqual:](codes, "isEqual:")) && ((quantityValue = self->_quantityValue, !(quantityValue | equalCopy[2])) || -[HKCodableQuantity isEqual:](quantityValue, "isEqual:")) && ((textualValue = self->_textualValue, !(textualValue | equalCopy[5])) || -[NSString isEqual:](textualValue, "isEqual:")) && ((referenceRangeMin = self->_referenceRangeMin, !(referenceRangeMin | equalCopy[4])) || -[HKCodableQuantity isEqual:](referenceRangeMin, "isEqual:")) && ((referenceRangeMax = self->_referenceRangeMax, !(referenceRangeMax | equalCopy[3])) || -[HKCodableQuantity isEqual:](referenceRangeMax, "isEqual:")))
  {
    valueTitle = self->_valueTitle;
    if (valueTitle | equalCopy[6])
    {
      v11 = [(NSString *)valueTitle isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_codes hash];
  v4 = [(HKCodableQuantity *)self->_quantityValue hash]^ v3;
  v5 = [(NSString *)self->_textualValue hash];
  v6 = v4 ^ v5 ^ [(HKCodableQuantity *)self->_referenceRangeMin hash];
  v7 = [(HKCodableQuantity *)self->_referenceRangeMax hash];
  return v6 ^ v7 ^ [(NSString *)self->_valueTitle hash];
}

- (void)mergeFrom:(id)from
{
  v21 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = fromCopy[1];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HKCodableQuantityValueWithRange *)self addCode:*(*(&v16 + 1) + 8 * i), v16];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  quantityValue = self->_quantityValue;
  v11 = fromCopy[2];
  if (quantityValue)
  {
    if (v11)
    {
      [(HKCodableQuantity *)quantityValue mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(HKCodableQuantityValueWithRange *)self setQuantityValue:?];
  }

  if (fromCopy[5])
  {
    [(HKCodableQuantityValueWithRange *)self setTextualValue:?];
  }

  referenceRangeMin = self->_referenceRangeMin;
  v13 = fromCopy[4];
  if (referenceRangeMin)
  {
    if (v13)
    {
      [(HKCodableQuantity *)referenceRangeMin mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(HKCodableQuantityValueWithRange *)self setReferenceRangeMin:?];
  }

  referenceRangeMax = self->_referenceRangeMax;
  v15 = fromCopy[3];
  if (referenceRangeMax)
  {
    if (v15)
    {
      [(HKCodableQuantity *)referenceRangeMax mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(HKCodableQuantityValueWithRange *)self setReferenceRangeMax:?];
  }

  if (fromCopy[6])
  {
    [(HKCodableQuantityValueWithRange *)self setValueTitle:?];
  }
}

@end