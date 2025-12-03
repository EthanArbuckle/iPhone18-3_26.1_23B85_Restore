@interface SNNMILDataValue
- (BOOL)isScalar;
- (SNNMILDataValue)initWithScalar:(id)scalar dataType:(unint64_t)type;
- (SNNMILDataValue)initWithShape:(id)shape bytes:(const void *)bytes dataType:(unint64_t)type;
- (SNNMILDataValue)initWithShape:(id)shape bytesNoCopy:(void *)copy dataType:(unint64_t)type;
- (SNNMILDataValue)initWithShape:(id)shape scalars:(id)scalars dataType:(unint64_t)type;
- (SNNMILDataValue)initWithStringScalar:(id)scalar;
- (int64_t)rank;
- (int64_t)scalarCount;
- (unint64_t)byteCount;
- (unique_ptr<const)milValueWithContext:(id)context;
- (void)bytes;
@end

@implementation SNNMILDataValue

- (SNNMILDataValue)initWithStringScalar:(id)scalar
{
  scalarCopy = scalar;
  v9.receiver = self;
  v9.super_class = SNNMILDataValue;
  v5 = [(SNNMILValue *)&v9 init];
  if (v5)
  {
    v6 = [scalarCopy dataUsingEncoding:4];
    data = v5->_data;
    v5->_data = v6;

    v5->_dataType = 1;
  }

  return v5;
}

- (SNNMILDataValue)initWithScalar:(id)scalar dataType:(unint64_t)type
{
  scalarCopy = scalar;
  v11.receiver = self;
  v11.super_class = SNNMILDataValue;
  v7 = [(SNNMILValue *)&v11 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithScalar:scalarCopy dataType:type];
    data = v7->_data;
    v7->_data = v8;

    v7->_dataType = type;
  }

  return v7;
}

- (SNNMILDataValue)initWithShape:(id)shape scalars:(id)scalars dataType:(unint64_t)type
{
  shapeCopy = shape;
  scalarsCopy = scalars;
  v18.receiver = self;
  v18.super_class = SNNMILDataValue;
  v11 = [(SNNMILValue *)&v18 init];
  if (v11)
  {
    if (type - 2 > 0xA)
    {
      v12 = 1;
    }

    else
    {
      v12 = qword_25BCBAA40[type - 2];
    }

    v13 = [scalarsCopy count];
    v14 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v13 * v12];
    [(NSData *)v14 appendScalars:scalarsCopy dataType:type];
    data = v11->_data;
    v11->_data = v14;
    v16 = v14;

    objc_storeStrong(&v11->_dimensions, shape);
    v11->_dataType = type;
  }

  return v11;
}

- (SNNMILDataValue)initWithShape:(id)shape bytes:(const void *)bytes dataType:(unint64_t)type
{
  v27 = *MEMORY[0x277D85DE8];
  shapeCopy = shape;
  v25.receiver = self;
  v25.super_class = SNNMILDataValue;
  v10 = [(SNNMILValue *)&v25 init];
  if (v10)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = shapeCopy;
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

    if (type - 2 > 0xA)
    {
      v16 = 1;
    }

    else
    {
      v16 = qword_25BCBAA40[type - 2];
    }

    v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:bytes length:v16 * v14];
    data = v10->_data;
    v10->_data = v17;

    objc_storeStrong(&v10->_dimensions, shape);
    v10->_dataType = type;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

- (SNNMILDataValue)initWithShape:(id)shape bytesNoCopy:(void *)copy dataType:(unint64_t)type
{
  v27 = *MEMORY[0x277D85DE8];
  shapeCopy = shape;
  v25.receiver = self;
  v25.super_class = SNNMILDataValue;
  v10 = [(SNNMILValue *)&v25 init];
  if (v10)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = shapeCopy;
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

    if (type - 2 > 0xA)
    {
      v16 = 1;
    }

    else
    {
      v16 = qword_25BCBAA40[type - 2];
    }

    v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:copy length:v16 * v14 freeWhenDone:0];
    data = v10->_data;
    v10->_data = v17;

    objc_storeStrong(&v10->_dimensions, shape);
    v10->_dataType = type;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)bytes
{
  data = [(SNNMILDataValue *)self data];
  bytes = [data bytes];

  return bytes;
}

- (unint64_t)byteCount
{
  data = [(SNNMILDataValue *)self data];
  v3 = [data length];

  return v3;
}

- (BOOL)isScalar
{
  dimensions = [(SNNMILDataValue *)self dimensions];
  if (dimensions)
  {
    dimensions2 = [(SNNMILDataValue *)self dimensions];
    v5 = [dimensions2 count] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (int64_t)rank
{
  dimensions = [(SNNMILDataValue *)self dimensions];

  if (dimensions)
  {
    dimensions2 = [(SNNMILDataValue *)self dimensions];
    dimensions = [dimensions2 count];
  }

  return dimensions;
}

- (int64_t)scalarCount
{
  v16 = *MEMORY[0x277D85DE8];
  dimensions = [(SNNMILDataValue *)self dimensions];

  if (dimensions)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    dimensions2 = [(SNNMILDataValue *)self dimensions];
    v5 = [dimensions2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(dimensions2);
          }

          v7 *= [*(*(&v11 + 1) + 8 * i) unsignedIntegerValue];
        }

        v5 = [dimensions2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (unique_ptr<const)milValueWithContext:(id)context
{
  v5 = v3;
  contextCopy = context;
  dimensions = [(SNNMILDataValue *)self dimensions];

  if (dimensions)
  {
    bytes = [(SNNMILDataValue *)self bytes];
    dimensions2 = [(SNNMILDataValue *)self dimensions];
    dataType = [(SNNMILDataValue *)self dataType];
    if (contextCopy)
    {
      [contextCopy milValueForTensorWithBytes:bytes shape:dimensions2 dataType:dataType];
    }

    else
    {
      *v5 = 0;
    }
  }

  else if ([(SNNMILDataValue *)self dataType]== 1)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_data encoding:4];
    if (contextCopy)
    {
      [contextCopy milValueForString:v10];
    }

    else
    {
      *v5 = 0;
    }
  }

  else
  {
    bytes2 = [(SNNMILDataValue *)self bytes];
    dataType2 = [(SNNMILDataValue *)self dataType];
    if (contextCopy)
    {
      [contextCopy milValueForScalarWithBytes:bytes2 dataType:dataType2];
    }

    else
    {
      *v5 = 0;
    }
  }

  return v13;
}

@end