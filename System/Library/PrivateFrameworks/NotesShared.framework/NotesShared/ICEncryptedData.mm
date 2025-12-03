@interface ICEncryptedData
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (ICEncryptedData)initWithData:(id)data tag:(id)tag initializationVector:(id)vector;
- (ICEncryptedData)initWithData:(id)data tag:(id)tag initializationVector:(id)vector fallbackTag:(id)fallbackTag fallbackInitializationVector:(id)initializationVector;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICEncryptedData

- (ICEncryptedData)initWithData:(id)data tag:(id)tag initializationVector:(id)vector
{
  dataCopy = data;
  tagCopy = tag;
  vectorCopy = vector;
  v19.receiver = self;
  v19.super_class = ICEncryptedData;
  v11 = [(ICEncryptedData *)&v19 init];
  if (v11)
  {
    v12 = [dataCopy copy];
    data = v11->_data;
    v11->_data = v12;

    v14 = [tagCopy copy];
    tag = v11->_tag;
    v11->_tag = v14;

    v16 = [vectorCopy copy];
    initializationVector = v11->_initializationVector;
    v11->_initializationVector = v16;
  }

  return v11;
}

- (ICEncryptedData)initWithData:(id)data tag:(id)tag initializationVector:(id)vector fallbackTag:(id)fallbackTag fallbackInitializationVector:(id)initializationVector
{
  dataCopy = data;
  tagCopy = tag;
  vectorCopy = vector;
  fallbackTagCopy = fallbackTag;
  initializationVectorCopy = initializationVector;
  v29.receiver = self;
  v29.super_class = ICEncryptedData;
  v17 = [(ICEncryptedData *)&v29 init];
  if (v17)
  {
    v18 = [dataCopy copy];
    data = v17->_data;
    v17->_data = v18;

    v20 = [tagCopy copy];
    tag = v17->_tag;
    v17->_tag = v20;

    v22 = [vectorCopy copy];
    initializationVector = v17->_initializationVector;
    v17->_initializationVector = v22;

    v24 = [fallbackTagCopy copy];
    fallbackTag = v17->_fallbackTag;
    v17->_fallbackTag = v24;

    v26 = [initializationVectorCopy copy];
    fallbackInitializationVector = v17->_fallbackInitializationVector;
    v17->_fallbackInitializationVector = v26;
  }

  return v17;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = MEMORY[0x277CCABB0];
  fallbackTag = [(ICEncryptedData *)self fallbackTag];
  if (fallbackTag)
  {
    v9 = 1;
  }

  else
  {
    fallbackInitializationVector = [(ICEncryptedData *)self fallbackInitializationVector];
    v9 = fallbackInitializationVector != 0;
  }

  v10 = [v7 numberWithInt:v9];
  v11 = [v4 stringWithFormat:@"<%@: %p, hasFallback: %@>", v6, self, v10];

  if (!fallbackTag)
  {
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = ICDynamicCast();

    data = [v5 data];
    data2 = [(ICEncryptedData *)self data];
    v8 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == data)
    {
      v9 = 0;
    }

    else
    {
      v9 = data;
    }

    v10 = v9;
    if (v8 == data2)
    {
      v11 = 0;
    }

    else
    {
      v11 = data2;
    }

    v12 = v11;
    if (v10 | v12)
    {
      v13 = v12;
      if (v10)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        LOBYTE(v15) = 0;
LABEL_69:

LABEL_70:
        return v15;
      }

      LODWORD(v15) = [v10 isEqual:v12];

      if (!v15)
      {
        goto LABEL_70;
      }
    }

    v10 = [v5 tag];
    v13 = [(ICEncryptedData *)self tag];
    if (v8 == v10)
    {
      v16 = 0;
    }

    else
    {
      v16 = v10;
    }

    initializationVector = v16;
    if (v8 == v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13;
    }

    v19 = v18;
    if (initializationVector | v19)
    {
      initializationVector2 = v19;
      if (initializationVector)
      {
        v21 = v19 == 0;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        LOBYTE(v15) = 0;
LABEL_68:

        goto LABEL_69;
      }

      LODWORD(v15) = [initializationVector isEqual:v19];

      if (!v15)
      {
        goto LABEL_69;
      }
    }

    v45 = data2;
    initializationVector = [v5 initializationVector];
    initializationVector2 = [(ICEncryptedData *)self initializationVector];
    if (v8 == initializationVector)
    {
      v22 = 0;
    }

    else
    {
      v22 = initializationVector;
    }

    v15 = v22;
    if (v8 == initializationVector2)
    {
      v23 = 0;
    }

    else
    {
      v23 = initializationVector2;
    }

    v24 = v23;
    if (v15 | v24)
    {
      fallbackTag2 = v24;
      v26 = v15;
      LOBYTE(v15) = 0;
      if (!v26 || !v24)
      {
        v44 = v26;
LABEL_66:

LABEL_67:
        data2 = v45;
        goto LABEL_68;
      }

      v27 = v26;
      v43 = [v26 isEqual:v24];

      if (!v43)
      {
        LOBYTE(v15) = 0;
        goto LABEL_67;
      }
    }

    v42 = v5;
    fallbackTag = [v5 fallbackTag];
    fallbackTag2 = [(ICEncryptedData *)self fallbackTag];
    v44 = fallbackTag;
    if (v8 == fallbackTag)
    {
      v29 = 0;
    }

    else
    {
      v29 = fallbackTag;
    }

    fallbackInitializationVector = v29;
    if (v8 == fallbackTag2)
    {
      v31 = 0;
    }

    else
    {
      v31 = fallbackTag2;
    }

    v32 = v31;
    if (fallbackInitializationVector | v32)
    {
      fallbackInitializationVector2 = v32;
      LOBYTE(v15) = 0;
      if (!fallbackInitializationVector || !v32)
      {
LABEL_64:

        goto LABEL_65;
      }

      LODWORD(v15) = [fallbackInitializationVector isEqual:v32];

      if (!v15)
      {
LABEL_65:
        data = v41;
        v5 = v42;
        goto LABEL_66;
      }
    }

    fallbackInitializationVector = [v42 fallbackInitializationVector];
    fallbackInitializationVector2 = [(ICEncryptedData *)self fallbackInitializationVector];
    if (v8 == fallbackInitializationVector)
    {
      v34 = 0;
    }

    else
    {
      v34 = fallbackInitializationVector;
    }

    v35 = v34;
    v14 = v8 == fallbackInitializationVector2;
    v36 = v35;
    if (v14)
    {
      v37 = 0;
    }

    else
    {
      v37 = fallbackInitializationVector2;
    }

    v38 = v37;
    v39 = v38;
    if (v36 | v38)
    {
      LOBYTE(v15) = 0;
      if (v36 && v38)
      {
        LOBYTE(v15) = [v36 isEqual:v38];
      }
    }

    else
    {
      LOBYTE(v15) = 1;
    }

    goto LABEL_64;
  }

  LOBYTE(v15) = 1;
  return v15;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    data = [(ICEncryptedData *)self data];
    v5 = [data hash];
    v6 = [(ICEncryptedData *)self tag];
    v7 = [v6 hash];
    LOBYTE(v8) = v7;
    if (!v7)
    {
      null = [MEMORY[0x277CBEB68] null];
      v8 = [null hash];
    }

    initializationVector = [(ICEncryptedData *)self initializationVector];
    if (![initializationVector hash])
    {
      null2 = [MEMORY[0x277CBEB68] null];
      [null2 hash];
    }

    fallbackTag = [(ICEncryptedData *)self fallbackTag];
    if (![fallbackTag hash])
    {
      null3 = [MEMORY[0x277CBEB68] null];
      [null3 hash];
    }

    fallbackInitializationVector = [(ICEncryptedData *)self fallbackInitializationVector];
    if (![fallbackInitializationVector hash])
    {
      [MEMORY[0x277CBEB68] null];
      v24 = v5;
      v21 = v6;
      v23 = v22 = data;
      [v23 hash];

      data = v22;
      v6 = v21;
      v5 = v24;
    }

    self->_hash = ICHashWithHashKeys(v5, v14, v15, v16, v17, v18, v19, v20, v8);

    return self->_hash;
  }

  return result;
}

- (BOOL)isValid
{
  data = [(ICEncryptedData *)self data];
  v4 = [data length];

  if (v4)
  {
    v5 = [(ICEncryptedData *)self tag];
    v6 = [v5 length];
    if (v6 && (-[ICEncryptedData initializationVector](self, "initializationVector"), v4 = objc_claimAutoreleasedReturnValue(), [v4 length]))
    {
      v7 = 1;
    }

    else
    {
      fallbackTag = [(ICEncryptedData *)self fallbackTag];
      if ([fallbackTag length])
      {
        fallbackInitializationVector = [(ICEncryptedData *)self fallbackInitializationVector];
        v7 = [fallbackInitializationVector length] != 0;
      }

      else
      {
        v7 = 0;
      }

      if (!v6)
      {
        goto LABEL_11;
      }
    }

LABEL_11:
    return v7;
  }

  return 0;
}

@end