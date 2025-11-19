@interface ICEncryptedData
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (ICEncryptedData)initWithData:(id)a3 tag:(id)a4 initializationVector:(id)a5;
- (ICEncryptedData)initWithData:(id)a3 tag:(id)a4 initializationVector:(id)a5 fallbackTag:(id)a6 fallbackInitializationVector:(id)a7;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICEncryptedData

- (ICEncryptedData)initWithData:(id)a3 tag:(id)a4 initializationVector:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ICEncryptedData;
  v11 = [(ICEncryptedData *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    data = v11->_data;
    v11->_data = v12;

    v14 = [v9 copy];
    tag = v11->_tag;
    v11->_tag = v14;

    v16 = [v10 copy];
    initializationVector = v11->_initializationVector;
    v11->_initializationVector = v16;
  }

  return v11;
}

- (ICEncryptedData)initWithData:(id)a3 tag:(id)a4 initializationVector:(id)a5 fallbackTag:(id)a6 fallbackInitializationVector:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = ICEncryptedData;
  v17 = [(ICEncryptedData *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    data = v17->_data;
    v17->_data = v18;

    v20 = [v13 copy];
    tag = v17->_tag;
    v17->_tag = v20;

    v22 = [v14 copy];
    initializationVector = v17->_initializationVector;
    v17->_initializationVector = v22;

    v24 = [v15 copy];
    fallbackTag = v17->_fallbackTag;
    v17->_fallbackTag = v24;

    v26 = [v16 copy];
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
  v8 = [(ICEncryptedData *)self fallbackTag];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v2 = [(ICEncryptedData *)self fallbackInitializationVector];
    v9 = v2 != 0;
  }

  v10 = [v7 numberWithInt:v9];
  v11 = [v4 stringWithFormat:@"<%@: %p, hasFallback: %@>", v6, self, v10];

  if (!v8)
  {
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    objc_opt_class();
    v5 = ICDynamicCast();

    v6 = [v5 data];
    v7 = [(ICEncryptedData *)self data];
    v8 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
    if (v8 == v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
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

    v17 = v16;
    if (v8 == v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13;
    }

    v19 = v18;
    if (v17 | v19)
    {
      v20 = v19;
      if (v17)
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

      LODWORD(v15) = [v17 isEqual:v19];

      if (!v15)
      {
        goto LABEL_69;
      }
    }

    v45 = v7;
    v17 = [v5 initializationVector];
    v20 = [(ICEncryptedData *)self initializationVector];
    if (v8 == v17)
    {
      v22 = 0;
    }

    else
    {
      v22 = v17;
    }

    v15 = v22;
    if (v8 == v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23;
    if (v15 | v24)
    {
      v25 = v24;
      v26 = v15;
      LOBYTE(v15) = 0;
      if (!v26 || !v24)
      {
        v44 = v26;
LABEL_66:

LABEL_67:
        v7 = v45;
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
    v28 = [v5 fallbackTag];
    v25 = [(ICEncryptedData *)self fallbackTag];
    v44 = v28;
    if (v8 == v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    v30 = v29;
    if (v8 == v25)
    {
      v31 = 0;
    }

    else
    {
      v31 = v25;
    }

    v32 = v31;
    if (v30 | v32)
    {
      v33 = v32;
      LOBYTE(v15) = 0;
      if (!v30 || !v32)
      {
LABEL_64:

        goto LABEL_65;
      }

      LODWORD(v15) = [v30 isEqual:v32];

      if (!v15)
      {
LABEL_65:
        v6 = v41;
        v5 = v42;
        goto LABEL_66;
      }
    }

    v30 = [v42 fallbackInitializationVector];
    v33 = [(ICEncryptedData *)self fallbackInitializationVector];
    if (v8 == v30)
    {
      v34 = 0;
    }

    else
    {
      v34 = v30;
    }

    v35 = v34;
    v14 = v8 == v33;
    v36 = v35;
    if (v14)
    {
      v37 = 0;
    }

    else
    {
      v37 = v33;
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
    v4 = [(ICEncryptedData *)self data];
    v5 = [v4 hash];
    v6 = [(ICEncryptedData *)self tag];
    v7 = [v6 hash];
    LOBYTE(v8) = v7;
    if (!v7)
    {
      v9 = [MEMORY[0x277CBEB68] null];
      v8 = [v9 hash];
    }

    v25 = [(ICEncryptedData *)self initializationVector];
    if (![v25 hash])
    {
      v10 = [MEMORY[0x277CBEB68] null];
      [v10 hash];
    }

    v11 = [(ICEncryptedData *)self fallbackTag];
    if (![v11 hash])
    {
      v12 = [MEMORY[0x277CBEB68] null];
      [v12 hash];
    }

    v13 = [(ICEncryptedData *)self fallbackInitializationVector];
    if (![v13 hash])
    {
      [MEMORY[0x277CBEB68] null];
      v24 = v5;
      v21 = v6;
      v23 = v22 = v4;
      [v23 hash];

      v4 = v22;
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
  v3 = [(ICEncryptedData *)self data];
  v4 = [v3 length];

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
      v8 = [(ICEncryptedData *)self fallbackTag];
      if ([v8 length])
      {
        v9 = [(ICEncryptedData *)self fallbackInitializationVector];
        v7 = [v9 length] != 0;
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