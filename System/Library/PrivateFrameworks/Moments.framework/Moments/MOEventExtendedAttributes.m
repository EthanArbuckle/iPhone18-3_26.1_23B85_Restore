@interface MOEventExtendedAttributes
+ (id)lowerCaseArrayOfStrings:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MOEventExtendedAttributes)initWithCoder:(id)a3;
- (MOEventExtendedAttributes)initWithLocalIdentifier:(id)a3;
- (MOEventExtendedAttributes)initWithMoment:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOEventExtendedAttributes

- (MOEventExtendedAttributes)initWithLocalIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOEventExtendedAttributes initWithLocalIdentifier:v6];
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MOEventExtendedAtrributes.m" lineNumber:216 description:{@"Invalid parameter not satisfying: localIdentifier (in %s:%d)", "-[MOEventExtendedAttributes initWithLocalIdentifier:]", 216}];
  }

  v12.receiver = self;
  v12.super_class = MOEventExtendedAttributes;
  v8 = [(MOEventExtendedAttributes *)&v12 init];
  if (v8)
  {
    v9 = [v5 copy];
    photoMomentLocalIdentifier = v8->_photoMomentLocalIdentifier;
    v8->_photoMomentLocalIdentifier = v9;
  }

  return v8;
}

+ (id)lowerCaseArrayOfStrings:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) lowercaseString];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (MOEventExtendedAttributes)initWithMoment:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"localIdentifier"];
  v6 = [(MOEventExtendedAttributes *)self initWithLocalIdentifier:v5];
  if (v6)
  {
    v43 = v5;
    v7 = [v4 objectForKey:@"inferences"];
    v8 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:v7];
    v42 = v7;
    if (v7)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v8 copyItems:1];
      photoMomentInferences = v6->_photoMomentInferences;
      v6->_photoMomentInferences = v9;
    }

    v41 = v8;
    v11 = [v4 objectForKey:@"holidays"];
    v12 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:v11];
    v40 = v11;
    if (v11)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v12 copyItems:1];
      photoMomentHolidays = v6->_photoMomentHolidays;
      v6->_photoMomentHolidays = v13;
    }

    v39 = v12;
    v15 = [v4 objectForKey:@"publicEvents"];
    if (v15)
    {
      v16 = objc_opt_new();
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v17 = v15;
      v18 = v15;
      v19 = [v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v49;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v49 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [[MOPublicEvent alloc] initWithEventDictionary:*(*(&v48 + 1) + 8 * i)];
            [v16 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
        }

        while (v20);
      }

      v24 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v16 copyItems:1];
      photoMomentPublicEvents = v6->_photoMomentPublicEvents;
      v6->_photoMomentPublicEvents = v24;

      v15 = v17;
    }

    v26 = [v4 objectForKey:@"persons"];
    if (v26)
    {
      v27 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v28 = v26;
      v29 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v45;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v45 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [[MOPerson alloc] initWithPersonDictionary:*(*(&v44 + 1) + 8 * j)];
            v34 = v33;
            if (v33)
            {
              [(MOPerson *)v33 setSourceEventAccessType:3];
              [v27 addObject:v34];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v30);
      }

      v35 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v27 copyItems:1];
      photoMomentPersons = v6->_photoMomentPersons;
      v6->_photoMomentPersons = v35;
    }

    v5 = v43;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MOEventExtendedAttributes *)self photoMomentLocalIdentifier];
  v5 = [(MOEventExtendedAttributes *)self photoMomentInferences];
  v6 = [(MOEventExtendedAttributes *)self photoMomentHolidays];
  v7 = [(MOEventExtendedAttributes *)self photoMomentPublicEvents];
  v8 = [v7 description];
  v9 = [(MOEventExtendedAttributes *)self photoMomentPersons];
  v10 = [v9 description];
  v11 = [(MOEventExtendedAttributes *)self momentPropertyOfAssets];
  v12 = [v11 description];
  v13 = [v3 stringWithFormat:@"<MOEventExtendedAttributes localIdentifier, %@, photoMomentInferences, %@, photoMomentHolidays, %@, photoMomentPublicEvents, %@, photoMomentPersons, %@, momentPropertyOfAssets, %@>", v4, v5, v6, v8, v10, v12];

  return v13;
}

- (MOEventExtendedAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"photoMomentLocalIdentifier"];
  if (v5)
  {
    v6 = [(MOEventExtendedAttributes *)self initWithLocalIdentifier:v5];
    if (v6)
    {
      v7 = MEMORY[0x277CBEB98];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:@"photoMomentInferences"];
      photoMomentInferences = v6->_photoMomentInferences;
      v6->_photoMomentInferences = v10;

      v12 = MEMORY[0x277CBEB98];
      v13 = objc_opt_class();
      v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
      v15 = [v4 decodeObjectOfClasses:v14 forKey:@"photoMomentHolidays"];
      photoMomentHolidays = v6->_photoMomentHolidays;
      v6->_photoMomentHolidays = v15;

      v17 = MEMORY[0x277CBEB98];
      v18 = objc_opt_class();
      v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
      v20 = [v4 decodeObjectOfClasses:v19 forKey:@"photoMomentPublicEvents"];
      photoMomentPublicEvents = v6->_photoMomentPublicEvents;
      v6->_photoMomentPublicEvents = v20;

      v22 = MEMORY[0x277CBEB98];
      v23 = objc_opt_class();
      v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
      v25 = [v4 decodeObjectOfClasses:v24 forKey:@"photoMomentPersons"];
      photoMomentPersons = v6->_photoMomentPersons;
      v6->_photoMomentPersons = v25;

      v27 = MEMORY[0x277CBEB98];
      v28 = objc_opt_class();
      v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
      v30 = [v4 decodeObjectOfClasses:v29 forKey:@"momentPropertyOfAssets"];
      momentPropertyOfAssets = v6->_momentPropertyOfAssets;
      v6->_momentPropertyOfAssets = v30;
    }

    self = v6;
    v32 = self;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (void)encodeWithCoder:(id)a3
{
  photoMomentLocalIdentifier = self->_photoMomentLocalIdentifier;
  v5 = a3;
  [v5 encodeObject:photoMomentLocalIdentifier forKey:@"photoMomentLocalIdentifier"];
  [v5 encodeObject:self->_photoMomentInferences forKey:@"photoMomentInferences"];
  [v5 encodeObject:self->_photoMomentHolidays forKey:@"photoMomentHolidays"];
  [v5 encodeObject:self->_photoMomentPublicEvents forKey:@"photoMomentPublicEvents"];
  [v5 encodeObject:self->_photoMomentPersons forKey:@"photoMomentPersons"];
  [v5 encodeObject:self->_momentPropertyOfAssets forKey:@"momentPropertyOfAssets"];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(MOEventExtendedAttributes *)self photoMomentLocalIdentifier];
        if (v8 || ([(MOEventExtendedAttributes *)v7 photoMomentLocalIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = [(MOEventExtendedAttributes *)self photoMomentLocalIdentifier];
          v10 = [(MOEventExtendedAttributes *)v7 photoMomentLocalIdentifier];
          v11 = [v9 isEqual:v10];

          if (v8)
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_12;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (void)initWithLocalIdentifier:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[MOEventExtendedAttributes initWithLocalIdentifier:]";
  v4 = 1024;
  v5 = 216;
  _os_log_error_impl(&dword_22D8C5000, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: localIdentifier (in %s:%d)", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end