@interface MLViewerNodeSPI
- (MLViewerNodeSPI)initWithCoder:(id)a3;
- (MLViewerNodeSPI)initWithJSONDictionary:(id)a3;
- (MLViewerNodeSPI)initWithType:(id)a3 inputs:(id)a4 outputs:(id)a5 properties:(id)a6 regions:(id)a7;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MLViewerNodeSPI

- (MLViewerNodeSPI)initWithType:(id)a3 inputs:(id)a4 outputs:(id)a5 properties:(id)a6 regions:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = MLViewerNodeSPI;
  v17 = [(MLViewerNodeSPI *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_type, a3);
    objc_storeStrong(&v18->_inputs, a4);
    objc_storeStrong(&v18->_outputs, a5);
    objc_storeStrong(&v18->_properties, a6);
    objc_storeStrong(&v18->_regions, a7);
    location = v18->_location;
    v18->_location = &stru_2868A7958;

    anecValidationMessage = v18->_anecValidationMessage;
    v18->_anecValidationMessage = &stru_2868A7958;
  }

  return v18;
}

- (MLViewerNodeSPI)initWithJSONDictionary:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v73.receiver = self;
  v73.super_class = MLViewerNodeSPI;
  v4 = [(MLViewerNodeSPI *)&v73 init];
  v50 = v4;
  if (v4)
  {
    v5 = [v51 objectForKey:@"type"];
    type = v4->_type;
    v4->_type = v5;

    v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v51 objectForKey:@"inputs"];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    obj = v70 = 0u;
    v7 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v7)
    {
      v8 = *v70;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v70 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [[MLViewerNodePortSPI alloc] initWithJSONDictionary:*(*(&v69 + 1) + 8 * i)];
          [v56 addObject:v10];
        }

        v7 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v7);
    }

    v11 = [MEMORY[0x277CBEA60] arrayWithArray:v56];
    inputs = v50->_inputs;
    v50->_inputs = v11;

    v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v51 objectForKey:@"outputs"];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v53 = v66 = 0u;
    v13 = [v53 countByEnumeratingWithState:&v65 objects:v76 count:16];
    if (v13)
    {
      v14 = *v66;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v66 != v14)
          {
            objc_enumerationMutation(v53);
          }

          v16 = [[MLViewerNodePortSPI alloc] initWithJSONDictionary:*(*(&v65 + 1) + 8 * j)];
          [v55 addObject:v16];
        }

        v13 = [v53 countByEnumeratingWithState:&v65 objects:v76 count:16];
      }

      while (v13);
    }

    v17 = [MEMORY[0x277CBEA60] arrayWithArray:v55];
    outputs = v50->_outputs;
    v50->_outputs = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v51 objectForKey:@"properties"];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v52 = v62 = 0u;
    v20 = [v52 countByEnumeratingWithState:&v61 objects:v75 count:16];
    if (v20)
    {
      v21 = *v62;
      do
      {
        v22 = 0;
        do
        {
          if (*v62 != v21)
          {
            objc_enumerationMutation(v52);
          }

          v23 = *(*(&v61 + 1) + 8 * v22);
          v24 = [v23 objectForKey:@"type"];
          if (!v24)
          {
            v28 = [v23 objectForKey:@"isEnum"];
            v27 = v28;
            if (v28 && [(MLViewerNodePropertyStringSPI *)v28 BOOLValue])
            {
              v29 = [[MLViewerNodePropertyEnumSPI alloc] initWithJSONDictionary:v23];
              [v19 addObject:v29];
            }

            else
            {
              v29 = [[MLViewerNodePropertyDataSPI alloc] initWithJSONDictionary:v23];
              [v19 addObject:v29];
            }

            goto LABEL_31;
          }

          v25 = +[MLViewerNodePropertyStringSPI type];
          v26 = [v24 isEqualToString:v25];

          if (v26)
          {
            v27 = [[MLViewerNodePropertyStringSPI alloc] initWithJSONDictionary:v23];
            [v19 addObject:v27];
LABEL_31:

            goto LABEL_32;
          }

          v30 = +[MLViewerNodePropertyEnumSPI type];
          v31 = [v24 isEqualToString:v30];

          if (v31)
          {
            v27 = [[MLViewerNodePropertyEnumSPI alloc] initWithJSONDictionary:v23];
            [v19 addObject:v27];
            goto LABEL_31;
          }

          v32 = +[MLViewerNodePropertyDataSPI type];
          v33 = [v24 isEqualToString:v32];

          if (v33)
          {
            v27 = [[MLViewerNodePropertyDataSPI alloc] initWithJSONDictionary:v23];
            [v19 addObject:v27];
            goto LABEL_31;
          }

LABEL_32:

          ++v22;
        }

        while (v20 != v22);
        v34 = [v52 countByEnumeratingWithState:&v61 objects:v75 count:16];
        v20 = v34;
      }

      while (v34);
    }

    v35 = [MEMORY[0x277CBEA60] arrayWithArray:v19];
    properties = v50->_properties;
    v50->_properties = v35;

    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v51 objectForKey:@"regions"];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v38 = v58 = 0u;
    v39 = [v38 countByEnumeratingWithState:&v57 objects:v74 count:16];
    if (v39)
    {
      v40 = *v58;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v58 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = [[MLViewerNodeRegionSPI alloc] initWithJSONDictionary:*(*(&v57 + 1) + 8 * k)];
          [v37 addObject:v42];
        }

        v39 = [v38 countByEnumeratingWithState:&v57 objects:v74 count:16];
      }

      while (v39);
    }

    v43 = [MEMORY[0x277CBEA60] arrayWithArray:v37];
    regions = v50->_regions;
    v50->_regions = v43;

    v45 = [v51 objectForKey:@"location"];
    location = v50->_location;
    v50->_location = v45;

    v47 = [v51 objectForKey:@"anecValidationMessage"];
    anecValidationMessage = v50->_anecValidationMessage;
    v50->_anecValidationMessage = v47;
  }

  return v50;
}

- (id)jsonDictionary
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = [(MLViewerNodeSPI *)self inputs];
  v5 = [v4 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v5)
  {
    v6 = *v45;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v44 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v5);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = [(MLViewerNodeSPI *)self outputs];
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v11)
  {
    v12 = *v41;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v40 + 1) + 8 * j) jsonDictionary];
        [v9 addObject:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v11);
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = [(MLViewerNodeSPI *)self properties];
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v51 count:16];
  if (v17)
  {
    v18 = *v37;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = [*(*(&v36 + 1) + 8 * k) jsonDictionary];
        [v15 addObject:v20];
      }

      v17 = [v16 countByEnumeratingWithState:&v36 objects:v51 count:16];
    }

    while (v17);
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = [(MLViewerNodeSPI *)self regions];
  v23 = [v22 countByEnumeratingWithState:&v32 objects:v50 count:16];
  if (v23)
  {
    v24 = *v33;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = [*(*(&v32 + 1) + 8 * m) jsonDictionary];
        [v21 addObject:v26];
      }

      v23 = [v22 countByEnumeratingWithState:&v32 objects:v50 count:16];
    }

    while (v23);
  }

  v48[0] = @"type";
  v27 = [(MLViewerNodeSPI *)self type];
  v49[0] = v27;
  v49[1] = v3;
  v48[1] = @"inputs";
  v48[2] = @"outputs";
  v49[2] = v9;
  v49[3] = v15;
  v48[3] = @"properties";
  v48[4] = @"regions";
  v49[4] = v21;
  v48[5] = @"location";
  v28 = [(MLViewerNodeSPI *)self location];
  v49[5] = v28;
  v48[6] = @"anecValidationMessage";
  v29 = [(MLViewerNodeSPI *)self anecValidationMessage];
  v49[6] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:7];

  return v30;
}

- (MLViewerNodeSPI)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = MLViewerNodeSPI;
  v5 = [(MLViewerNodeSPI *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    if (allowedClasses(void)::onceToken != -1)
    {
      [MLViewerNodePortSPI initWithCoder:];
    }

    v8 = allowedClasses(void)::allowedClasses;
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"inputs"];
    inputs = v5->_inputs;
    v5->_inputs = v9;

    if (allowedClasses(void)::onceToken != -1)
    {
      [MLViewerNodePortSPI initWithCoder:];
    }

    v11 = allowedClasses(void)::allowedClasses;
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"outputs"];
    outputs = v5->_outputs;
    v5->_outputs = v12;

    if (allowedClasses(void)::onceToken != -1)
    {
      [MLViewerNodePortSPI initWithCoder:];
    }

    v14 = allowedClasses(void)::allowedClasses;
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"properties"];
    properties = v5->_properties;
    v5->_properties = v15;

    if (allowedClasses(void)::onceToken != -1)
    {
      [MLViewerNodePortSPI initWithCoder:];
    }

    v17 = allowedClasses(void)::allowedClasses;
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"regions"];
    regions = v5->_regions;
    v5->_regions = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anecValidationMessage"];
    anecValidationMessage = v5->_anecValidationMessage;
    v5->_anecValidationMessage = v24;

    v26 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(MLViewerNodeSPI *)self type];
  [v12 encodeObject:v4 forKey:@"type"];

  v5 = [(MLViewerNodeSPI *)self inputs];
  [v12 encodeObject:v5 forKey:@"inputs"];

  v6 = [(MLViewerNodeSPI *)self outputs];
  [v12 encodeObject:v6 forKey:@"outputs"];

  v7 = [(MLViewerNodeSPI *)self properties];
  [v12 encodeObject:v7 forKey:@"properties"];

  v8 = [(MLViewerNodeSPI *)self regions];
  [v12 encodeObject:v8 forKey:@"regions"];

  v9 = [(MLViewerNodeSPI *)self localizedDescription];
  [v12 encodeObject:v9 forKey:@"localizedDescription"];

  v10 = [(MLViewerNodeSPI *)self location];
  [v12 encodeObject:v10 forKey:@"location"];

  v11 = [(MLViewerNodeSPI *)self anecValidationMessage];
  [v12 encodeObject:v11 forKey:@"anecValidationMessage"];
}

@end