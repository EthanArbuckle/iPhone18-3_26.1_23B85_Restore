@interface MOEventExtendedAttributes
+ (id)lowerCaseArrayOfStrings:(id)strings;
- (BOOL)isEqual:(id)equal;
- (MOEventExtendedAttributes)initWithCoder:(id)coder;
- (MOEventExtendedAttributes)initWithLocalIdentifier:(id)identifier;
- (MOEventExtendedAttributes)initWithMoment:(id)moment;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventExtendedAttributes

- (MOEventExtendedAttributes)initWithLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOEventExtendedAttributes initWithLocalIdentifier:v6];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MOEventExtendedAtrributes.m" lineNumber:216 description:{@"Invalid parameter not satisfying: localIdentifier (in %s:%d)", "-[MOEventExtendedAttributes initWithLocalIdentifier:]", 216}];
  }

  v12.receiver = self;
  v12.super_class = MOEventExtendedAttributes;
  v8 = [(MOEventExtendedAttributes *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    photoMomentLocalIdentifier = v8->_photoMomentLocalIdentifier;
    v8->_photoMomentLocalIdentifier = v9;
  }

  return v8;
}

+ (id)lowerCaseArrayOfStrings:(id)strings
{
  v18 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = stringsCopy;
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

        lowercaseString = [*(*(&v13 + 1) + 8 * i) lowercaseString];
        [array addObject:lowercaseString];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return array;
}

- (MOEventExtendedAttributes)initWithMoment:(id)moment
{
  v54 = *MEMORY[0x277D85DE8];
  momentCopy = moment;
  v5 = [momentCopy objectForKey:@"localIdentifier"];
  v6 = [(MOEventExtendedAttributes *)self initWithLocalIdentifier:v5];
  if (v6)
  {
    v43 = v5;
    v7 = [momentCopy objectForKey:@"inferences"];
    v8 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:v7];
    v42 = v7;
    if (v7)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v8 copyItems:1];
      photoMomentInferences = v6->_photoMomentInferences;
      v6->_photoMomentInferences = v9;
    }

    v41 = v8;
    v11 = [momentCopy objectForKey:@"holidays"];
    v12 = [MOEventExtendedAttributes lowerCaseArrayOfStrings:v11];
    v40 = v11;
    if (v11)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v12 copyItems:1];
      photoMomentHolidays = v6->_photoMomentHolidays;
      v6->_photoMomentHolidays = v13;
    }

    v39 = v12;
    v15 = [momentCopy objectForKey:@"publicEvents"];
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

    v26 = [momentCopy objectForKey:@"persons"];
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
  photoMomentLocalIdentifier = [(MOEventExtendedAttributes *)self photoMomentLocalIdentifier];
  photoMomentInferences = [(MOEventExtendedAttributes *)self photoMomentInferences];
  photoMomentHolidays = [(MOEventExtendedAttributes *)self photoMomentHolidays];
  photoMomentPublicEvents = [(MOEventExtendedAttributes *)self photoMomentPublicEvents];
  v8 = [photoMomentPublicEvents description];
  photoMomentPersons = [(MOEventExtendedAttributes *)self photoMomentPersons];
  v10 = [photoMomentPersons description];
  momentPropertyOfAssets = [(MOEventExtendedAttributes *)self momentPropertyOfAssets];
  v12 = [momentPropertyOfAssets description];
  v13 = [v3 stringWithFormat:@"<MOEventExtendedAttributes localIdentifier, %@, photoMomentInferences, %@, photoMomentHolidays, %@, photoMomentPublicEvents, %@, photoMomentPersons, %@, momentPropertyOfAssets, %@>", photoMomentLocalIdentifier, photoMomentInferences, photoMomentHolidays, v8, v10, v12];

  return v13;
}

- (MOEventExtendedAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoMomentLocalIdentifier"];
  if (v5)
  {
    v6 = [(MOEventExtendedAttributes *)self initWithLocalIdentifier:v5];
    if (v6)
    {
      v7 = MEMORY[0x277CBEB98];
      v8 = objc_opt_class();
      v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
      v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"photoMomentInferences"];
      photoMomentInferences = v6->_photoMomentInferences;
      v6->_photoMomentInferences = v10;

      v12 = MEMORY[0x277CBEB98];
      v13 = objc_opt_class();
      v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
      v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"photoMomentHolidays"];
      photoMomentHolidays = v6->_photoMomentHolidays;
      v6->_photoMomentHolidays = v15;

      v17 = MEMORY[0x277CBEB98];
      v18 = objc_opt_class();
      v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
      v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"photoMomentPublicEvents"];
      photoMomentPublicEvents = v6->_photoMomentPublicEvents;
      v6->_photoMomentPublicEvents = v20;

      v22 = MEMORY[0x277CBEB98];
      v23 = objc_opt_class();
      v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
      v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"photoMomentPersons"];
      photoMomentPersons = v6->_photoMomentPersons;
      v6->_photoMomentPersons = v25;

      v27 = MEMORY[0x277CBEB98];
      v28 = objc_opt_class();
      v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
      v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"momentPropertyOfAssets"];
      momentPropertyOfAssets = v6->_momentPropertyOfAssets;
      v6->_momentPropertyOfAssets = v30;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  photoMomentLocalIdentifier = self->_photoMomentLocalIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:photoMomentLocalIdentifier forKey:@"photoMomentLocalIdentifier"];
  [coderCopy encodeObject:self->_photoMomentInferences forKey:@"photoMomentInferences"];
  [coderCopy encodeObject:self->_photoMomentHolidays forKey:@"photoMomentHolidays"];
  [coderCopy encodeObject:self->_photoMomentPublicEvents forKey:@"photoMomentPublicEvents"];
  [coderCopy encodeObject:self->_photoMomentPersons forKey:@"photoMomentPersons"];
  [coderCopy encodeObject:self->_momentPropertyOfAssets forKey:@"momentPropertyOfAssets"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        photoMomentLocalIdentifier = [(MOEventExtendedAttributes *)self photoMomentLocalIdentifier];
        if (photoMomentLocalIdentifier || ([(MOEventExtendedAttributes *)v7 photoMomentLocalIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          photoMomentLocalIdentifier2 = [(MOEventExtendedAttributes *)self photoMomentLocalIdentifier];
          photoMomentLocalIdentifier3 = [(MOEventExtendedAttributes *)v7 photoMomentLocalIdentifier];
          v11 = [photoMomentLocalIdentifier2 isEqual:photoMomentLocalIdentifier3];

          if (photoMomentLocalIdentifier)
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