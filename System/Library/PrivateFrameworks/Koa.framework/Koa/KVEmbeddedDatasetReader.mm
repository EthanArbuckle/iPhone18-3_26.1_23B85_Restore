@interface KVEmbeddedDatasetReader
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (KVEmbeddedDatasetReader)initWithData:(id)data dataset:(const Dataset *)dataset error:(id *)error;
- (NSString)description;
@end

@implementation KVEmbeddedDatasetReader

- (NSString)description
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"dataset format: %@ info: %@", v2, v3, v4, @"Binary Embedded", self->_datasetInfo);

  return v5;
}

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  dataset = self->_dataset;
  v10 = &dataset[-*dataset->var0];
  if (*v10->var0 >= 7u && (v11 = *v10[6].var0) != 0 && (v12 = *dataset[v11].var0, v13 = &dataset[v11 + v12], v14 = *v13->var0, v14))
  {
    v15 = 0;
    v16 = 4 * v14;
    v17 = &dataset[v11 + v12];
    while (1)
    {
      v18 = *v13[v15 + 4].var0 + *v17[v15 + 8 + *v13[v15 + 4].var0 - *v13[v15 + 4 + *v13[v15 + 4].var0].var0].var0;
      var0 = v17[v15 + v18 + *v17[v15 + 4 + v18].var0].var0;
      v20 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v6, var0 + 8, *(var0 + 4), 0, v7);
      v21 = [KVItem alloc];
      v23 = objc_msgSend_initWithBuffer_verify_copy_error_(v21, v22, v20, 1, 0, error);
      if (!v23 || (blockCopy[2](blockCopy, v23) & 1) == 0)
      {
        break;
      }

      v15 += 4;
      if (v16 == v15)
      {
        goto LABEL_8;
      }
    }

    v24 = 0;
  }

  else
  {
LABEL_8:
    v24 = 1;
  }

  return v24;
}

- (KVEmbeddedDatasetReader)initWithData:(id)data dataset:(const Dataset *)dataset error:(id *)error
{
  dataCopy = data;
  v24.receiver = self;
  v24.super_class = KVEmbeddedDatasetReader;
  v10 = [(KVEmbeddedDatasetReader *)&v24 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_3;
  }

  objc_storeStrong(&v10->_data, data);
  v11->_dataset = dataset;
  v12 = &dataset[*dataset[-*dataset->var0 + 4].var0];
  v15 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v13, &v12[*v12->var0 + 4], *v12[*v12->var0].var0, 0, v14);
  v16 = [KVDatasetInfo alloc];
  v20 = objc_msgSend_initWithBuffer_error_(v16, v17, v15, error, v18, v19);
  datasetInfo = v11->_datasetInfo;
  v11->_datasetInfo = v20;

  v22 = v11->_datasetInfo;
  if (v22)
  {
LABEL_3:
    v22 = v11;
  }

  return v22;
}

@end