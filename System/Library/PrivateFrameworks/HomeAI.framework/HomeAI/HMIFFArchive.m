@interface HMIFFArchive
- (HMIFFArchive)initWithJSONPath:(id)a3 error:(id *)a4;
- (NSArray)allPersons;
- (NSArray)homePersons;
- (NSArray)photosPersons;
- (id)faceCropsForPerson:(id)a3;
- (id)sourceUUIDForPerson:(id)a3;
@end

@implementation HMIFFArchive

- (HMIFFArchive)initWithJSONPath:(id)a3 error:(id *)a4
{
  v37[8] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v36.receiver = self;
  v36.super_class = HMIFFArchive;
  v7 = [(HMIFFArchive *)&v36 init];
  if (v7)
  {
    v8 = MEMORY[0x277CBEA90];
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    v10 = [v8 dataWithContentsOfURL:v9];

    if (v10)
    {
      v37[0] = objc_opt_class();
      v37[1] = objc_opt_class();
      v37[2] = objc_opt_class();
      v37[3] = objc_opt_class();
      v37[4] = objc_opt_class();
      v37[5] = objc_opt_class();
      v37[6] = objc_opt_class();
      v37[7] = objc_opt_class();
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:8];
      v12 = MEMORY[0x277CCAAC8];
      v13 = [MEMORY[0x277CBEB98] setWithArray:v11];
      v35 = 0;
      v14 = [v12 unarchivedObjectOfClasses:v13 fromData:v10 error:&v35];
      v15 = v35;

      if (v14)
      {
        objc_storeStrong(&v7->_ffData, v14);
        v16 = [(HMIFFArchive *)v7 ffData];
        v17 = [v16 objectForKeyedSubscript:@"homePersonsAndFaceCrops"];
        homePersonsAndFaceCrops = v7->_homePersonsAndFaceCrops;
        v7->_homePersonsAndFaceCrops = v17;

        v19 = [(HMIFFArchive *)v7 ffData];
        v20 = [v19 objectForKeyedSubscript:@"photosPersonsAndFaceCrops"];
        photosPersonsAndFaceCrops = v7->_photosPersonsAndFaceCrops;
        v7->_photosPersonsAndFaceCrops = v20;

        v22 = [(HMIFFArchive *)v7 homePersonsAndFaceCrops];

        if (v22)
        {
          v23 = [(HMIFFArchive *)v7 homePersonsAndFaceCrops];
          v24 = [(HMIFFArchive *)v7 photosPersonsAndFaceCrops];
          v25 = [v23 arrayByAddingObjectsFromArray:v24];
          allPersonsAndFaceCrops = v7->_allPersonsAndFaceCrops;
          v7->_allPersonsAndFaceCrops = v25;
        }

        else
        {
          v31 = [(HMIFFArchive *)v7 photosPersonsAndFaceCrops];
          v32 = v7->_allPersonsAndFaceCrops;
          v7->_allPersonsAndFaceCrops = v31;
        }
      }

      else
      {
        if (a4)
        {
          v30 = v15;
          *a4 = v15;
        }

        HMIErrorLogC(v15);
      }

      if (v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v27 = [MEMORY[0x277CCA9B8] hmiErrorWithCode:-1 description:@"Failed to read json file"];
      v28 = v27;
      if (a4)
      {
        v29 = v27;
        *a4 = v28;
      }

      HMIErrorLogC(v28);
    }

    v33 = 0;
    goto LABEL_16;
  }

LABEL_14:
  v33 = v7;
LABEL_16:

  return v33;
}

- (NSArray)photosPersons
{
  v2 = [(HMIFFArchive *)self photosPersonsAndFaceCrops];
  v3 = [v2 na_map:&__block_literal_global_27];

  return v3;
}

- (NSArray)homePersons
{
  v2 = [(HMIFFArchive *)self homePersonsAndFaceCrops];
  v3 = [v2 na_map:&__block_literal_global_174];

  return v3;
}

- (NSArray)allPersons
{
  v2 = [(HMIFFArchive *)self allPersonsAndFaceCrops];
  v3 = [v2 na_map:&__block_literal_global_176];

  return v3;
}

- (id)faceCropsForPerson:(id)a3
{
  v4 = a3;
  v5 = [(HMIFFArchive *)self allPersonsAndFaceCrops];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__HMIFFArchive_faceCropsForPerson___block_invoke;
  v10[3] = &unk_278753690;
  v11 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v10];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"faceCrops"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __35__HMIFFArchive_faceCropsForPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:@"person"];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (id)sourceUUIDForPerson:(id)a3
{
  v4 = a3;
  v5 = [(HMIFFArchive *)self allPersonsAndFaceCrops];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__HMIFFArchive_sourceUUIDForPerson___block_invoke;
  v10[3] = &unk_278753690;
  v11 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v10];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"sourceUUID"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __36__HMIFFArchive_sourceUUIDForPerson___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:@"person"];
  v4 = [v2 isEqual:v3];

  return v4;
}

@end