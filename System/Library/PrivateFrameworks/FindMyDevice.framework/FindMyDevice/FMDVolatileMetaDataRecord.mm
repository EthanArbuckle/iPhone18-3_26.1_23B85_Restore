@interface FMDVolatileMetaDataRecord
- (FMDVolatileMetaDataRecord)init;
- (FMDVolatileMetaDataRecord)initWithCoder:(id)coder;
- (FMDVolatileMetaDataRecord)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryValue;
- (void)appendMetaData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDVolatileMetaDataRecord

- (FMDVolatileMetaDataRecord)init
{
  v6.receiver = self;
  v6.super_class = FMDVolatileMetaDataRecord;
  v2 = [(FMDVolatileMetaDataRecord *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("FMDVolatileMetaDataRecordQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    [(FMDVolatileMetaDataRecord *)v2 setDictionary:MEMORY[0x1E695E0F8]];
  }

  return v2;
}

- (void)appendMetaData:(id)data
{
  dataCopy = data;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__FMDVolatileMetaDataRecord_appendMetaData___block_invoke;
  v7[3] = &unk_1E86BD7E8;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_sync(serialQueue, v7);
}

void __44__FMDVolatileMetaDataRecord_appendMetaData___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) dictionary];
  v2 = [v3 fm_dictionaryByDeeplySettingValuesForKeysWithDictionary:*(a1 + 40)];
  [*(a1 + 32) setDictionary:v2];
}

- (FMDVolatileMetaDataRecord)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FMDVolatileMetaDataRecord;
  v5 = [(FMDVolatileMetaDataRecord *)&v10 init];
  if (v5)
  {
    v6 = dispatch_queue_create("FMDVolatileMetaDataRecordQueue", 0);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v6;

    if (dictionaryCopy)
    {
      v8 = dictionaryCopy;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F8];
    }

    [(FMDVolatileMetaDataRecord *)v5 setDictionary:v8];
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__FMDVolatileMetaDataRecord_dictionaryValue__block_invoke;
  v5[3] = &unk_1E86BD810;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__FMDVolatileMetaDataRecord_dictionaryValue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (FMDVolatileMetaDataRecord)initWithCoder:(id)coder
{
  v16[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = FMDVolatileMetaDataRecord;
  v5 = [(FMDVolatileMetaDataRecord *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_create("FMDVolatileMetaDataRecordQueue", 0);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
    v10 = [v8 setWithArray:v9];
    v11 = NSStringFromSelector(sel_dictionary);
    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:v11];
    [(FMDVolatileMetaDataRecord *)v5 setDictionary:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__FMDVolatileMetaDataRecord_encodeWithCoder___block_invoke;
  v8[3] = &unk_1E86BD810;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(serialQueue, v8);
  v6 = v10[5];
  v7 = NSStringFromSelector(sel_dictionary);
  [coderCopy encodeObject:v6 forKey:v7];

  _Block_object_dispose(&v9, 8);
}

uint64_t __45__FMDVolatileMetaDataRecord_encodeWithCoder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

@end