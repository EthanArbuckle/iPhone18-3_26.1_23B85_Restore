@interface HKCodableQuantityValueWithRange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCode:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableQuantityValueWithRange

- (void)addCode:(id)a3
{
  v4 = a3;
  codes = self->_codes;
  v8 = v4;
  if (!codes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_codes;
    self->_codes = v6;

    v4 = v8;
    codes = self->_codes;
  }

  [(NSMutableArray *)codes addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableQuantityValueWithRange;
  v4 = [(HKCodableQuantityValueWithRange *)&v8 description];
  v5 = [(HKCodableQuantityValueWithRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

          v10 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"code"];
  }

  quantityValue = self->_quantityValue;
  if (quantityValue)
  {
    v12 = [(HKCodableQuantity *)quantityValue dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"quantityValue"];
  }

  textualValue = self->_textualValue;
  if (textualValue)
  {
    [v3 setObject:textualValue forKey:@"textualValue"];
  }

  referenceRangeMin = self->_referenceRangeMin;
  if (referenceRangeMin)
  {
    v15 = [(HKCodableQuantity *)referenceRangeMin dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"referenceRangeMin"];
  }

  referenceRangeMax = self->_referenceRangeMax;
  if (referenceRangeMax)
  {
    v17 = [(HKCodableQuantity *)referenceRangeMax dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"referenceRangeMax"];
  }

  valueTitle = self->_valueTitle;
  if (valueTitle)
  {
    [v3 setObject:valueTitle forKey:@"valueTitle"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(HKCodableQuantityValueWithRange *)self codesCount])
  {
    [v9 clearCodes];
    v4 = [(HKCodableQuantityValueWithRange *)self codesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableQuantityValueWithRange *)self codeAtIndex:i];
        [v9 addCode:v7];
      }
    }
  }

  if (self->_quantityValue)
  {
    [v9 setQuantityValue:?];
  }

  v8 = v9;
  if (self->_textualValue)
  {
    [v9 setTextualValue:?];
    v8 = v9;
  }

  if (self->_referenceRangeMin)
  {
    [v9 setReferenceRangeMin:?];
    v8 = v9;
  }

  if (self->_referenceRangeMax)
  {
    [v9 setReferenceRangeMax:?];
    v8 = v9;
  }

  if (self->_valueTitle)
  {
    [v9 setValueTitle:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v11 = [*(*(&v23 + 1) + 8 * v10) copyWithZone:{a3, v23}];
        [v5 addCode:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v12 = [(HKCodableQuantity *)self->_quantityValue copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_textualValue copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(HKCodableQuantity *)self->_referenceRangeMin copyWithZone:a3];
  v17 = v5[4];
  v5[4] = v16;

  v18 = [(HKCodableQuantity *)self->_referenceRangeMax copyWithZone:a3];
  v19 = v5[3];
  v5[3] = v18;

  v20 = [(NSString *)self->_valueTitle copyWithZone:a3];
  v21 = v5[6];
  v5[6] = v20;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((codes = self->_codes, !(codes | v4[1])) || -[NSMutableArray isEqual:](codes, "isEqual:")) && ((quantityValue = self->_quantityValue, !(quantityValue | v4[2])) || -[HKCodableQuantity isEqual:](quantityValue, "isEqual:")) && ((textualValue = self->_textualValue, !(textualValue | v4[5])) || -[NSString isEqual:](textualValue, "isEqual:")) && ((referenceRangeMin = self->_referenceRangeMin, !(referenceRangeMin | v4[4])) || -[HKCodableQuantity isEqual:](referenceRangeMin, "isEqual:")) && ((referenceRangeMax = self->_referenceRangeMax, !(referenceRangeMax | v4[3])) || -[HKCodableQuantity isEqual:](referenceRangeMax, "isEqual:")))
  {
    valueTitle = self->_valueTitle;
    if (valueTitle | v4[6])
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

- (void)mergeFrom:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4[1];
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
  v11 = v4[2];
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

  if (v4[5])
  {
    [(HKCodableQuantityValueWithRange *)self setTextualValue:?];
  }

  referenceRangeMin = self->_referenceRangeMin;
  v13 = v4[4];
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
  v15 = v4[3];
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

  if (v4[6])
  {
    [(HKCodableQuantityValueWithRange *)self setValueTitle:?];
  }
}

@end