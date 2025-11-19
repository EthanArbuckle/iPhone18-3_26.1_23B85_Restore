@interface SNNMILBlobValue
- (SNNMILBlobValue)initWithFilename:(id)a3 shape:(id)a4 dataType:(unint64_t)a5 offset:(id)a6;
- (unint64_t)length;
- (unique_ptr<const)milValueWithContext:(id)a3;
@end

@implementation SNNMILBlobValue

- (SNNMILBlobValue)initWithFilename:(id)a3 shape:(id)a4 dataType:(unint64_t)a5 offset:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = SNNMILBlobValue;
  v13 = [(SNNMILValue *)&v20 init];
  filename = v13->_filename;
  v13->_filename = v10;
  v15 = v10;

  dimensions = v13->_dimensions;
  v13->_dimensions = v11;
  v17 = v11;

  v13->_dataType = a5;
  offset = v13->_offset;
  v13->_offset = v12;

  return v13;
}

- (unint64_t)length
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(SNNMILBlobValue *)self dimensions];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v6 *= [*(*(&v13 + 1) + 8 * i) unsignedIntegerValue];
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  v9 = [(SNNMILBlobValue *)self dataType];
  if (v9 - 2 > 0xA)
  {
    v10 = 1;
  }

  else
  {
    v10 = qword_25BCBAA40[v9 - 2];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10 * v8;
}

- (unique_ptr<const)milValueWithContext:(id)a3
{
  v5 = v3;
  v11 = a3;
  v6 = [(SNNMILBlobValue *)self filename];
  v7 = [(SNNMILBlobValue *)self dimensions];
  v8 = [(SNNMILBlobValue *)self dataType];
  v9 = [(SNNMILBlobValue *)self offset];
  if (v11)
  {
    [v11 milValueForTensorBlobWithFilename:v6 shape:v7 dataType:v8 offset:v9];
  }

  else
  {
    *v5 = 0;
  }

  return v10;
}

@end