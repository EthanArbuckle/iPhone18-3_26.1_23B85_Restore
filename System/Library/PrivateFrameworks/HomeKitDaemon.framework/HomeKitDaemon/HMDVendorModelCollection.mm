@interface HMDVendorModelCollection
- (BOOL)isEqual:(id)equal;
- (HMDVendorModelCollection)init;
- (HMDVendorModelCollection)initWithEncodedData:(id)data;
- (id)asEncodedData;
- (id)attributeDescriptions;
- (id)lookupModel:(id)model;
- (id)lookupProductData:(id)data;
- (void)addEntry:(id)entry;
@end

@implementation HMDVendorModelCollection

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      defaultEntry = [(HMDVendorModelCollection *)self defaultEntry];
      defaultEntry2 = [(HMDVendorModelCollection *)v6 defaultEntry];
      if (HMFEqualObjects())
      {
        if (self)
        {
          entries = self->_entries;
        }

        else
        {
          entries = 0;
        }

        v10 = v6->_entries;
        v11 = entries;
        v12 = [(NSMutableSet *)v11 isEqualToSet:v10];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)asEncodedData
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CBEB58];
  if (self)
  {
    entries = self->_entries;
  }

  else
  {
    entries = 0;
  }

  v6 = entries;
  v7 = [v4 setWithCapacity:{-[NSMutableSet count](v6, "count")}];

  if (self)
  {
    v8 = self->_entries;
  }

  else
  {
    v8 = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__HMDVendorModelCollection_asEncodedData__block_invoke;
  v15[3] = &unk_27867C1B8;
  v9 = v7;
  v16 = v9;
  [(NSMutableSet *)v8 enumerateObjectsUsingBlock:v15];
  [v3 hmf_appendObject:v9];
  defaultEntry = [(HMDVendorModelCollection *)self defaultEntry];
  if (defaultEntry)
  {
    defaultEntry2 = [(HMDVendorModelCollection *)self defaultEntry];
    asEncodedData = [defaultEntry2 asEncodedData];
  }

  else
  {
    asEncodedData = 0;
  }

  [v3 hmf_appendObject:asEncodedData];
  v13 = [v3 copy];

  return v13;
}

void __41__HMDVendorModelCollection_asEncodedData__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 asEncodedData];
  [v2 addObject:v3];
}

- (id)lookupProductData:(id)data
{
  dataCopy = data;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__161946;
  v17 = __Block_byref_object_dispose__161947;
  v18 = 0;
  if (self)
  {
    entries = self->_entries;
  }

  else
  {
    entries = 0;
  }

  v6 = entries;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__HMDVendorModelCollection_lookupProductData___block_invoke;
  v10[3] = &unk_27867C190;
  v7 = dataCopy;
  v11 = v7;
  v12 = &v13;
  [(NSMutableSet *)v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __46__HMDVendorModelCollection_lookupProductData___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 productData];
  v7 = *(a1 + 32);
  v8 = HMFAreStringsEqualIgnoringCase();

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)lookupModel:(id)model
{
  modelCopy = model;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__161946;
  v21 = __Block_byref_object_dispose__161947;
  v22 = 0;
  if (!modelCopy)
  {
    goto LABEL_6;
  }

  v5 = self ? self->_entries : 0;
  v6 = v5;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __40__HMDVendorModelCollection_lookupModel___block_invoke;
  v14 = &unk_27867C190;
  v15 = modelCopy;
  v16 = &v17;
  [(NSMutableSet *)v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];

  v7 = v18[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
LABEL_6:
    v8 = [(HMDVendorModelCollection *)self defaultEntry:v11];
  }

  v9 = v8;
  _Block_object_dispose(&v17, 8);

  return v9;
}

void __40__HMDVendorModelCollection_lookupModel___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 model];
  v7 = *(a1 + 32);
  v8 = HMFAreStringsEqualIgnoringCase();

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)addEntry:(id)entry
{
  if (self)
  {
    self = self->_entries;
  }

  [(HMDVendorModelCollection *)self addObject:entry];
}

- (id)attributeDescriptions
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  if (self)
  {
    entries = self->_entries;
  }

  else
  {
    entries = 0;
  }

  v5 = entries;
  v6 = [v3 initWithName:@"Entries" value:v5];
  v13[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  defaultEntry = [(HMDVendorModelCollection *)self defaultEntry];
  v9 = [v7 initWithName:@"DefaultEntry" value:defaultEntry];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDVendorModelCollection)initWithEncodedData:(id)data
{
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = HMDVendorModelCollection;
  v5 = [(HMDVendorModelCollection *)&v25 init];
  if (v5)
  {
    v24 = 0;
    v6 = [dataCopy hmf_readObjectAtOffset:&v24];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [dataCopy hmf_readObjectAtOffset:&v24];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v8, "count")}];
    entries = v5->_entries;
    v5->_entries = v12;

    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __48__HMDVendorModelCollection_initWithEncodedData___block_invoke;
    v22 = &unk_27867C168;
    v14 = v5;
    v23 = v14;
    [v8 enumerateObjectsUsingBlock:&v19];

    if (v11)
    {
      v15 = [HMDVendorModelEntry alloc];
      v16 = [(HMDVendorModelEntry *)v15 initWithEncodedData:v11, v19, v20, v21, v22];
      defaultEntry = v14->_defaultEntry;
      v14->_defaultEntry = v16;
    }
  }

  return v5;
}

void __48__HMDVendorModelCollection_initWithEncodedData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[HMDVendorModelEntry alloc] initWithEncodedData:v3];

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  [v5 addObject:v6];
}

- (HMDVendorModelCollection)init
{
  v6.receiver = self;
  v6.super_class = HMDVendorModelCollection;
  v2 = [(HMDVendorModelCollection *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    entries = v2->_entries;
    v2->_entries = v3;
  }

  return v2;
}

@end