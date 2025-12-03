@interface HMIFFArchive
- (HMIFFArchive)initWithJSONPath:(id)path error:(id *)error;
- (NSArray)allPersons;
- (NSArray)homePersons;
- (NSArray)photosPersons;
- (id)faceCropsForPerson:(id)person;
- (id)sourceUUIDForPerson:(id)person;
@end

@implementation HMIFFArchive

- (HMIFFArchive)initWithJSONPath:(id)path error:(id *)error
{
  v37[8] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v36.receiver = self;
  v36.super_class = HMIFFArchive;
  v7 = [(HMIFFArchive *)&v36 init];
  if (v7)
  {
    v8 = MEMORY[0x277CBEA90];
    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
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
        ffData = [(HMIFFArchive *)v7 ffData];
        v17 = [ffData objectForKeyedSubscript:@"homePersonsAndFaceCrops"];
        homePersonsAndFaceCrops = v7->_homePersonsAndFaceCrops;
        v7->_homePersonsAndFaceCrops = v17;

        ffData2 = [(HMIFFArchive *)v7 ffData];
        v20 = [ffData2 objectForKeyedSubscript:@"photosPersonsAndFaceCrops"];
        photosPersonsAndFaceCrops = v7->_photosPersonsAndFaceCrops;
        v7->_photosPersonsAndFaceCrops = v20;

        homePersonsAndFaceCrops = [(HMIFFArchive *)v7 homePersonsAndFaceCrops];

        if (homePersonsAndFaceCrops)
        {
          homePersonsAndFaceCrops2 = [(HMIFFArchive *)v7 homePersonsAndFaceCrops];
          photosPersonsAndFaceCrops = [(HMIFFArchive *)v7 photosPersonsAndFaceCrops];
          v25 = [homePersonsAndFaceCrops2 arrayByAddingObjectsFromArray:photosPersonsAndFaceCrops];
          allPersonsAndFaceCrops = v7->_allPersonsAndFaceCrops;
          v7->_allPersonsAndFaceCrops = v25;
        }

        else
        {
          photosPersonsAndFaceCrops2 = [(HMIFFArchive *)v7 photosPersonsAndFaceCrops];
          v32 = v7->_allPersonsAndFaceCrops;
          v7->_allPersonsAndFaceCrops = photosPersonsAndFaceCrops2;
        }
      }

      else
      {
        if (error)
        {
          v30 = v15;
          *error = v15;
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
      if (error)
      {
        v29 = v27;
        *error = v28;
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
  photosPersonsAndFaceCrops = [(HMIFFArchive *)self photosPersonsAndFaceCrops];
  v3 = [photosPersonsAndFaceCrops na_map:&__block_literal_global_27];

  return v3;
}

- (NSArray)homePersons
{
  homePersonsAndFaceCrops = [(HMIFFArchive *)self homePersonsAndFaceCrops];
  v3 = [homePersonsAndFaceCrops na_map:&__block_literal_global_174];

  return v3;
}

- (NSArray)allPersons
{
  allPersonsAndFaceCrops = [(HMIFFArchive *)self allPersonsAndFaceCrops];
  v3 = [allPersonsAndFaceCrops na_map:&__block_literal_global_176];

  return v3;
}

- (id)faceCropsForPerson:(id)person
{
  personCopy = person;
  allPersonsAndFaceCrops = [(HMIFFArchive *)self allPersonsAndFaceCrops];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__HMIFFArchive_faceCropsForPerson___block_invoke;
  v10[3] = &unk_278753690;
  v11 = personCopy;
  v6 = personCopy;
  v7 = [allPersonsAndFaceCrops na_firstObjectPassingTest:v10];

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

- (id)sourceUUIDForPerson:(id)person
{
  personCopy = person;
  allPersonsAndFaceCrops = [(HMIFFArchive *)self allPersonsAndFaceCrops];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__HMIFFArchive_sourceUUIDForPerson___block_invoke;
  v10[3] = &unk_278753690;
  v11 = personCopy;
  v6 = personCopy;
  v7 = [allPersonsAndFaceCrops na_firstObjectPassingTest:v10];

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