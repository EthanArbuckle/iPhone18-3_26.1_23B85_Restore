@interface SNNMILDataValue
- (BOOL)isScalar;
- (SNNMILDataValue)initWithScalar:(id)a3 dataType:(unint64_t)a4;
- (SNNMILDataValue)initWithShape:(id)a3 bytes:(const void *)a4 dataType:(unint64_t)a5;
- (SNNMILDataValue)initWithShape:(id)a3 bytesNoCopy:(void *)a4 dataType:(unint64_t)a5;
- (SNNMILDataValue)initWithShape:(id)a3 scalars:(id)a4 dataType:(unint64_t)a5;
- (SNNMILDataValue)initWithStringScalar:(id)a3;
- (int64_t)rank;
- (int64_t)scalarCount;
- (unint64_t)byteCount;
- (unique_ptr<const)milValueWithContext:(id)a3;
- (void)bytes;
@end

@implementation SNNMILDataValue

- (SNNMILDataValue)initWithStringScalar:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SNNMILDataValue;
  v5 = [(SNNMILValue *)&v9 init];
  if (v5)
  {
    v6 = [v4 dataUsingEncoding:4];
    data = v5->_data;
    v5->_data = v6;

    v5->_dataType = 1;
  }

  return v5;
}

- (SNNMILDataValue)initWithScalar:(id)a3 dataType:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SNNMILDataValue;
  v7 = [(SNNMILValue *)&v11 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithScalar:v6 dataType:a4];
    data = v7->_data;
    v7->_data = v8;

    v7->_dataType = a4;
  }

  return v7;
}

- (SNNMILDataValue)initWithShape:(id)a3 scalars:(id)a4 dataType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = SNNMILDataValue;
  v11 = [(SNNMILValue *)&v18 init];
  if (v11)
  {
    if (a5 - 2 > 0xA)
    {
      v12 = 1;
    }

    else
    {
      v12 = qword_25BCBAA40[a5 - 2];
    }

    v13 = [v10 count];
    v14 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v13 * v12];
    [(NSData *)v14 appendScalars:v10 dataType:a5];
    data = v11->_data;
    v11->_data = v14;
    v16 = v14;

    objc_storeStrong(&v11->_dimensions, a3);
    v11->_dataType = a5;
  }

  return v11;
}

- (SNNMILDataValue)initWithShape:(id)a3 bytes:(const void *)a4 dataType:(unint64_t)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v25.receiver = self;
  v25.super_class = SNNMILDataValue;
  v10 = [(SNNMILValue *)&v25 init];
  if (v10)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = *v22;
      v14 = 1;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v14 *= [*(*(&v21 + 1) + 8 * i) unsignedIntegerValue];
        }

        v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    else
    {
      v14 = 1;
    }

    if (a5 - 2 > 0xA)
    {
      v16 = 1;
    }

    else
    {
      v16 = qword_25BCBAA40[a5 - 2];
    }

    v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a4 length:v16 * v14];
    data = v10->_data;
    v10->_data = v17;

    objc_storeStrong(&v10->_dimensions, a3);
    v10->_dataType = a5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

- (SNNMILDataValue)initWithShape:(id)a3 bytesNoCopy:(void *)a4 dataType:(unint64_t)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v25.receiver = self;
  v25.super_class = SNNMILDataValue;
  v10 = [(SNNMILValue *)&v25 init];
  if (v10)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = *v22;
      v14 = 1;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v14 *= [*(*(&v21 + 1) + 8 * i) unsignedIntegerValue];
        }

        v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    else
    {
      v14 = 1;
    }

    if (a5 - 2 > 0xA)
    {
      v16 = 1;
    }

    else
    {
      v16 = qword_25BCBAA40[a5 - 2];
    }

    v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a4 length:v16 * v14 freeWhenDone:0];
    data = v10->_data;
    v10->_data = v17;

    objc_storeStrong(&v10->_dimensions, a3);
    v10->_dataType = a5;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)bytes
{
  v2 = [(SNNMILDataValue *)self data];
  v3 = [v2 bytes];

  return v3;
}

- (unint64_t)byteCount
{
  v2 = [(SNNMILDataValue *)self data];
  v3 = [v2 length];

  return v3;
}

- (BOOL)isScalar
{
  v3 = [(SNNMILDataValue *)self dimensions];
  if (v3)
  {
    v4 = [(SNNMILDataValue *)self dimensions];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (int64_t)rank
{
  v3 = [(SNNMILDataValue *)self dimensions];

  if (v3)
  {
    v4 = [(SNNMILDataValue *)self dimensions];
    v3 = [v4 count];
  }

  return v3;
}

- (int64_t)scalarCount
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SNNMILDataValue *)self dimensions];

  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(SNNMILDataValue *)self dimensions];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      v7 = 1;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v7 *= [*(*(&v11 + 1) + 8 * i) unsignedIntegerValue];
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unique_ptr<const)milValueWithContext:(id)a3
{
  v5 = v3;
  v14 = a3;
  v6 = [(SNNMILDataValue *)self dimensions];

  if (v6)
  {
    v7 = [(SNNMILDataValue *)self bytes];
    v8 = [(SNNMILDataValue *)self dimensions];
    v9 = [(SNNMILDataValue *)self dataType];
    if (v14)
    {
      [v14 milValueForTensorWithBytes:v7 shape:v8 dataType:v9];
    }

    else
    {
      *v5 = 0;
    }
  }

  else if ([(SNNMILDataValue *)self dataType]== 1)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_data encoding:4];
    if (v14)
    {
      [v14 milValueForString:v10];
    }

    else
    {
      *v5 = 0;
    }
  }

  else
  {
    v11 = [(SNNMILDataValue *)self bytes];
    v12 = [(SNNMILDataValue *)self dataType];
    if (v14)
    {
      [v14 milValueForScalarWithBytes:v11 dataType:v12];
    }

    else
    {
      *v5 = 0;
    }
  }

  return v13;
}

@end