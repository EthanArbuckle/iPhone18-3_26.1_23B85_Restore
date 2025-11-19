@interface MRProtobufSerialization
- (id)createDictionaryFromProtobuf:(id)a3;
- (id)createProtobufFromDictionary:(id)a3;
- (void)setDictionaryKeyToProtobufKeyMapping:(id)a3;
@end

@implementation MRProtobufSerialization

- (void)setDictionaryKeyToProtobufKeyMapping:(id)a3
{
  if (self->_dictionaryKeyToProtobufKeyMapping != a3)
  {
    v15 = v3;
    v16 = v4;
    v6 = [a3 copy];
    dictionaryKeyToProtobufKeyMapping = self->_dictionaryKeyToProtobufKeyMapping;
    self->_dictionaryKeyToProtobufKeyMapping = v6;

    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_dictionaryKeyToProtobufKeyMapping, "count")}];
    v9 = self->_dictionaryKeyToProtobufKeyMapping;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__MRProtobufSerialization_setDictionaryKeyToProtobufKeyMapping___block_invoke;
    v13[3] = &unk_1E769CBB0;
    v10 = v8;
    v14 = v10;
    [(NSDictionary *)v9 enumerateKeysAndObjectsUsingBlock:v13];
    protobufKeyToDictionaryKeyMapping = self->_protobufKeyToDictionaryKeyMapping;
    self->_protobufKeyToDictionaryKeyMapping = v10;
    v12 = v10;
  }
}

- (id)createDictionaryFromProtobuf:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_dictionaryKeyToProtobufKeyMapping, "count")}];
  protobufKeyToDictionaryKeyMapping = self->_protobufKeyToDictionaryKeyMapping;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__MRProtobufSerialization_createDictionaryFromProtobuf___block_invoke;
  v13[3] = &unk_1E769CBD8;
  v7 = v4;
  v14 = v7;
  v15 = self;
  v8 = v5;
  v16 = v8;
  [(NSDictionary *)protobufKeyToDictionaryKeyMapping enumerateKeysAndObjectsUsingBlock:v13];
  protobufValueToDictionaryPostTransformer = self->_protobufValueToDictionaryPostTransformer;
  if (protobufValueToDictionaryPostTransformer)
  {
    protobufValueToDictionaryPostTransformer[2](protobufValueToDictionaryPostTransformer, v7, v8);
  }

  v10 = v16;
  v11 = v8;

  return v8;
}

void __56__MRProtobufSerialization_createDictionaryFromProtobuf___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) mr_valueForPotentiallyUndefinedKey:v10];
  if (v6)
  {
    v7 = v6;
    v8 = *(*(a1 + 40) + 40);
    if (!v8 || ((*(v8 + 16))(v8, *(a1 + 32), v10, v7), v9 = objc_claimAutoreleasedReturnValue(), v7, (v7 = v9) != 0))
    {
      [*(a1 + 48) setObject:v7 forKey:v5];
    }
  }
}

- (id)createProtobufFromDictionary:(id)a3
{
  v4 = a3;
  protobufClass = self->_protobufClass;
  v6 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__MRProtobufSerialization_createProtobufFromDictionary___block_invoke;
  v13[3] = &unk_1E769CC00;
  v13[4] = self;
  v7 = v4;
  v14 = v7;
  v8 = v6;
  v15 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];
  dictionaryValueToProtobufPostTransformer = self->_dictionaryValueToProtobufPostTransformer;
  if (dictionaryValueToProtobufPostTransformer)
  {
    dictionaryValueToProtobufPostTransformer[2](dictionaryValueToProtobufPostTransformer, v7, v8);
  }

  v10 = v15;
  v11 = v8;

  return v8;
}

void __56__MRProtobufSerialization_createProtobufFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v10];
  v7 = v5;
  v8 = v7;
  if (v6)
  {
    v9 = *(*(a1 + 32) + 32);
    v8 = v7;
    if (v9)
    {
      v8 = (*(v9 + 16))(v9, *(a1 + 40), v10, v7);
    }

    [*(a1 + 48) setValue:v8 forKey:v6];
  }
}

@end