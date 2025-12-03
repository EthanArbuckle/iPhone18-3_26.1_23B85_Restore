@interface MOSuggestion
- (MOSuggestion)initWithBundle:(id)bundle isPromptElligibleForTransfer:(BOOL)transfer suggestionDeletate:(id)deletate;
- (MOSuggestion)initWithBundle:(id)bundle modifiedTitle:(id)title isPromptElligibleForTransfer:(BOOL)transfer assetPrototypes:(id)prototypes;
- (MOSuggestion)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)packMetadata;
@end

@implementation MOSuggestion

- (MOSuggestion)initWithBundle:(id)bundle modifiedTitle:(id)title isPromptElligibleForTransfer:(BOOL)transfer assetPrototypes:(id)prototypes
{
  v35 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  titleCopy = title;
  prototypesCopy = prototypes;
  v32.receiver = self;
  v32.super_class = MOSuggestion;
  v14 = [(MOSuggestion *)&v32 init];
  v15 = v14;
  if (v14)
  {
    v14->_isPromptElligibleForTransfer = transfer;
    bundleIdentifier = [bundleCopy bundleIdentifier];
    suggestionIdentifier = v15->_suggestionIdentifier;
    v15->_suggestionIdentifier = bundleIdentifier;

    startDate = [bundleCopy startDate];
    startDate = v15->_startDate;
    v15->_startDate = startDate;

    endDate = [bundleCopy endDate];
    endDate = v15->_endDate;
    v15->_endDate = endDate;

    creationDate = [bundleCopy creationDate];
    creationDate = v15->_creationDate;
    v15->_creationDate = creationDate;

    objc_storeStrong(&v15->_assetPrototypes, prototypes);
    labels = [bundleCopy labels];
    v25 = [labels count];

    if (v25)
    {
      labels2 = [bundleCopy labels];
      firstObject = [labels2 firstObject];
      title = v15->_title;
      v15->_title = firstObject;

      if (([titleCopy isEqualToString:v15->_title] & 1) == 0)
      {
        v29 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = titleCopy;
          _os_log_impl(&dword_22D8C5000, v29, OS_LOG_TYPE_DEFAULT, "(MOSuggestion) Setting modifiedTitle: %@", buf, 0xCu);
        }

        objc_storeStrong(&v15->_title, title);
      }
    }

    objc_storeStrong(&v15->_baseBundle, bundle);
    v15->_type = [bundleCopy interfaceType];
    [(MOSuggestion *)v15 packMetadata];
  }

  v30 = *MEMORY[0x277D85DE8];
  return v15;
}

- (MOSuggestion)initWithBundle:(id)bundle isPromptElligibleForTransfer:(BOOL)transfer suggestionDeletate:(id)deletate
{
  bundleCopy = bundle;
  objc_initWeak(&location, deletate);
  v27.receiver = self;
  v27.super_class = MOSuggestion;
  v10 = [(MOSuggestion *)&v27 init];
  v11 = v10;
  if (v10)
  {
    v10->_isPromptElligibleForTransfer = transfer;
    bundleIdentifier = [bundleCopy bundleIdentifier];
    suggestionIdentifier = v11->_suggestionIdentifier;
    v11->_suggestionIdentifier = bundleIdentifier;

    startDate = [bundleCopy startDate];
    startDate = v11->_startDate;
    v11->_startDate = startDate;

    endDate = [bundleCopy endDate];
    endDate = v11->_endDate;
    v11->_endDate = endDate;

    creationDate = [bundleCopy creationDate];
    creationDate = v11->_creationDate;
    v11->_creationDate = creationDate;

    labels = [bundleCopy labels];
    v21 = [labels count];

    if (v21)
    {
      labels2 = [bundleCopy labels];
      firstObject = [labels2 firstObject];
      title = v11->_title;
      v11->_title = firstObject;
    }

    objc_storeStrong(&v11->_baseBundle, bundle);
    v25 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v11->_delegate, v25);

    v11->_type = [bundleCopy interfaceType];
    [(MOSuggestion *)v11 packMetadata];
  }

  objc_destroyWeak(&location);

  return v11;
}

- (void)packMetadata
{
  v3 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22D8C5000, v3, OS_LOG_TYPE_DEFAULT, "(MOSuggestion) Packing prompts", v7, 2u);
  }

  if (self->_isPromptElligibleForTransfer)
  {
    promptLanguages = [(MOEventBundle *)self->_baseBundle promptLanguages];
    v5 = [promptLanguages copy];
    writingPrompts = self->_writingPrompts;
    self->_writingPrompts = v5;
  }

  else
  {
    promptLanguages = self->_writingPrompts;
    self->_writingPrompts = MEMORY[0x277CBEBF8];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestion encodeWithCoder:];
  }

  [coderCopy encodeObject:self->_suggestionIdentifier forKey:@"identifier"];
  v6 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestion encodeWithCoder:];
  }

  [coderCopy encodeObject:self->_title forKey:@"label"];
  v7 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestion encodeWithCoder:];
  }

  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  v8 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestion encodeWithCoder:];
  }

  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  v9 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestion encodeWithCoder:];
  }

  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  v10 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestion encodeWithCoder:];
  }

  [coderCopy encodeObject:self->_baseBundle forKey:@"bundle"];
  v11 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestion encodeWithCoder:];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  [coderCopy encodeObject:v12 forKey:@"type"];

  v13 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestion encodeWithCoder:];
  }

  [coderCopy encodeObject:self->_writingPrompts forKey:@"promptLanguages"];
  v14 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestion encodeWithCoder:];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPromptElligibleForTransfer];
  [coderCopy encodeObject:v15 forKey:@"promptElligible"];

  v16 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestion encodeWithCoder:];
  }

  [coderCopy encodeObject:self->_assetPrototypes forKey:@"assetPrototypes"];
  v17 = _mo_log_facility_get_os_log(MOLogFacilityUIService);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [MOSuggestion encodeWithCoder:];
  }
}

- (MOSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = MOSuggestion;
  v5 = [(MOSuggestion *)&v34 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    suggestionIdentifier = v5->_suggestionIdentifier;
    v5->_suggestionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    title = v5->_title;
    v5->_title = v14;

    v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"bundle"];
    baseBundle = v5->_baseBundle;
    v5->_baseBundle = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"promptLanguages"];
    writingPrompts = v5->_writingPrompts;
    v5->_writingPrompts = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"promptElligible"];
    v5->_isPromptElligibleForTransfer = v24 != 0;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v25 intValue];

    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"assetPrototypes"];
    assetPrototypes = v5->_assetPrototypes;
    v5->_assetPrototypes = v29;

    objc_storeStrong(&v5->_prompt, v5->_title);
    objc_storeStrong(&v5->_promptLanguages, v5->_writingPrompts);
    objc_storeStrong(&v5->_date, v5->_startDate);
    attachments = v5->_attachments;
    v5->_attachments = 0;

    imageAssets = v5->_imageAssets;
    v5->_imageAssets = 0;
  }

  return v5;
}

@end