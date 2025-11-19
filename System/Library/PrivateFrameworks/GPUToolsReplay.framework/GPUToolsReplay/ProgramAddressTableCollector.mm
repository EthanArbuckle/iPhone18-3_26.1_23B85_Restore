@interface ProgramAddressTableCollector
- (ProgramAddressTableCollector)init;
- (id)binaries;
- (id)initForHarvestingBinaries;
- (id)mappings;
- (void)addBinaries:(id)a3;
- (void)addBinaryMapping:(id)a3 forEncoder:(unsigned int)a4 atEncoderIndex:(unsigned int)a5 forIndex:(unsigned int)a6;
- (void)addSampledCallFunctionIndex:(unint64_t)a3;
- (void)dealloc;
@end

@implementation ProgramAddressTableCollector

- (id)binaries
{
  if ((qword_27F09CF90 & 0x200) != 0)
  {
    v4 = [(NSMutableDictionary *)self->_binaries copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

- (id)mappings
{
  if ((qword_27F09CF90 & 0x200) != 0)
  {
    v4 = [(NSMutableArray *)self->_mappings copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)addSampledCallFunctionIndex:(unint64_t)a3
{
  functionIndices = self->_functionIndices;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableArray *)functionIndices addObject:v4];
}

- (void)addBinaryMapping:(id)a3 forEncoder:(unsigned int)a4 atEncoderIndex:(unsigned int)a5 forIndex:(unsigned int)a6
{
  v35[9] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 count])
  {
    v7 = 0;
    v8 = 1;
    v25 = v6;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:v7];
      v10 = [v9 binaryUniqueId];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%016llx", v10];
      if (v11)
      {
        v12 = [(NSMutableDictionary *)self->_binaryTypes objectForKeyedSubscript:v11];
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = @"unknown";
        }

        mappings = self->_mappings;
        v34[0] = @"mappedAddress";
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "mappedAddress")}];
        v35[0] = v32;
        v34[1] = @"mappedSize";
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "mappedSize")}];
        v35[1] = v31;
        v35[2] = v11;
        v34[2] = @"binaryUniqueId";
        v34[3] = @"type";
        v33 = v13;
        v35[3] = v13;
        v34[4] = @"encID";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
        v35[4] = v14;
        v34[5] = @"encIndex";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a5];
        v35[5] = v15;
        v34[6] = @"index";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a6];
        v35[6] = v16;
        v34[7] = @"drawCallIndex";
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_drawCallIndex];
        v35[7] = v17;
        v34[8] = @"drawFunctionIndex";
        drawCallIndex = self->_drawCallIndex;
        v19 = [(NSMutableArray *)self->_functionIndices count];
        v20 = &unk_2860D67A0;
        if (v19 > drawCallIndex)
        {
          v24 = [(NSMutableArray *)self->_functionIndices objectAtIndexedSubscript:self->_drawCallIndex];
          v20 = v24;
        }

        v35[8] = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:9];
        [(NSMutableArray *)mappings addObject:v21];

        if (v19 > drawCallIndex)
        {
        }

        v6 = v25;
      }

      v7 = v8;
    }

    while ([v6 count] > v8++);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addBinaries:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a3;
  v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v19)
  {
    v18 = *v27;
    do
    {
      v4 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v4;
        v5 = *(*(&v26 + 1) + 8 * v4);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v6 = [obj objectForKeyedSubscript:v5];
        v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v23;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v23 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v22 + 1) + 8 * i);
              v12 = [v11 uniqueIdentifier];
              v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%016llx", v12];
              [(NSMutableDictionary *)self->_binaryTypes setObject:v5 forKeyedSubscript:v13];
              binaries = self->_binaries;
              if (binaries)
              {
                v15 = [(NSMutableDictionary *)binaries objectForKeyedSubscript:v13];

                if (!v15)
                {
                  v16 = [v11 binary];
                  [(NSMutableDictionary *)self->_binaries setObject:v16 forKeyedSubscript:v13];
                }
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v8);
        }

        v4 = v21 + 1;
      }

      while (v21 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v19);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  addressPool = self->_addressPool;
  if (addressPool)
  {
    apr_pool_destroy(addressPool);
  }

  v4.receiver = self;
  v4.super_class = ProgramAddressTableCollector;
  [(ProgramAddressTableCollector *)&v4 dealloc];
}

- (id)initForHarvestingBinaries
{
  v13.receiver = self;
  v13.super_class = ProgramAddressTableCollector;
  v2 = [(ProgramAddressTableCollector *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    binaryTypes = v2->_binaryTypes;
    v2->_binaryTypes = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    mappings = v2->_mappings;
    v2->_mappings = v5;

    v2->_drawCallIndex = 0;
    v7 = objc_opt_new();
    binaries = v2->_binaries;
    v2->_binaries = v7;

    v9 = objc_opt_new();
    functionIndices = v2->_functionIndices;
    v2->_functionIndices = v9;

    apr_pool_create_ex(&v2->_addressPool, 0, 0, v11);
    v2->_addresses = apr_hash_make(v2->_addressPool);
  }

  return v2;
}

- (ProgramAddressTableCollector)init
{
  v13.receiver = self;
  v13.super_class = ProgramAddressTableCollector;
  v2 = [(ProgramAddressTableCollector *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    binaryTypes = v2->_binaryTypes;
    v2->_binaryTypes = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    mappings = v2->_mappings;
    v2->_mappings = v5;

    v7 = objc_opt_new();
    binaries = v2->_binaries;
    v2->_binaries = v7;

    v9 = objc_opt_new();
    functionIndices = v2->_functionIndices;
    v2->_functionIndices = v9;

    v2->_drawCallIndex = 0;
    apr_pool_create_ex(&v2->_addressPool, 0, 0, v11);
    v2->_addresses = apr_hash_make(v2->_addressPool);
  }

  return v2;
}

@end