@interface DRSTeamTasking
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTeamTasking:(id)tasking;
- (DRSTeamTasking)initWithJSONDict:(id)dict receivedDate:(id)date;
- (DRSTeamTasking)initWithTeamID:(id)d config:(id)config defaultSamplingParameters:(id)parameters perTimezoneSamplingParameters:(id)samplingParameters perHardwareModelSamplingParamters:(id)paramters;
- (id)_jsonDictRepresentation:(BOOL)representation;
- (id)debugDescription;
- (id)samplingParametersForHWModel:(id)model timezoneAbbreviation:(id)abbreviation;
- (id)samplingParametersForHardwareModel:(id)model;
- (id)samplingParametersForTimezoneAbbreviation:(id)abbreviation;
@end

@implementation DRSTeamTasking

- (DRSTeamTasking)initWithTeamID:(id)d config:(id)config defaultSamplingParameters:(id)parameters perTimezoneSamplingParameters:(id)samplingParameters perHardwareModelSamplingParamters:(id)paramters
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  configCopy = config;
  parametersCopy = parameters;
  samplingParametersCopy = samplingParameters;
  paramtersCopy = paramters;
  if (!dCopy)
  {
    v25 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      v26 = "nil teamID";
LABEL_14:
      _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTeamTasking", v26, buf, 2u);
    }

LABEL_15:

    selfCopy2 = 0;
    goto LABEL_19;
  }

  if (!configCopy)
  {
    v25 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      v26 = "nil config";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v17 = configCopy;
  selfCopy = self;
  v34 = samplingParametersCopy;
  v19 = parametersCopy;
  v20 = dCopy;
  v21 = v17;
  teamID = [v17 teamID];
  v33 = v20;
  LOBYTE(v20) = [teamID isEqualToString:v20];

  if (v20)
  {
    parametersCopy = v19;
    samplingParametersCopy = v34;
    self = selfCopy;
    if (!parametersCopy && !v34 && !paramtersCopy)
    {
      v23 = DPLogHandle_TaskingMessageError();
      configCopy = v21;
      if (os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTeamTasking", "nil defaultSamplingParameters AND perTimezoneSamplingParameters AND perHWModelSamplingParameters", buf, 2u);
      }

      selfCopy2 = 0;
      dCopy = v33;
      goto LABEL_19;
    }

    configCopy = v21;
    if (v34 && paramtersCopy)
    {
      v25 = DPLogHandle_TaskingMessageError();
      dCopy = v33;
      if (!os_signpost_enabled(v25))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v26 = "Nonnull perTimezoneSamplingParameters AND perHWModelSamplingParameters";
      goto LABEL_14;
    }

    v36.receiver = self;
    v36.super_class = DRSTeamTasking;
    v31 = [(DRSTeamTasking *)&v36 init];
    p_isa = &v31->super.isa;
    dCopy = v33;
    if (v31)
    {
      objc_storeStrong(&v31->_teamID, d);
      objc_storeStrong(p_isa + 2, config);
      objc_storeStrong(p_isa + 3, parameters);
      objc_storeStrong(p_isa + 4, samplingParameters);
      objc_storeStrong(p_isa + 5, paramters);
    }

    self = p_isa;
    selfCopy2 = self;
  }

  else
  {
    v27 = DPLogHandle_TaskingMessageError();
    self = selfCopy;
    configCopy = v21;
    dCopy = v33;
    if (os_signpost_enabled(v27))
    {
      teamID2 = [configCopy teamID];
      *buf = 138543618;
      v38 = teamID2;
      v39 = 2114;
      v40 = v33;
      _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTeamTasking", "Config team ID (%{public}@) does not match TeamTasking team ID (%{public}@)", buf, 0x16u);
    }

    selfCopy2 = 0;
    parametersCopy = v19;
    samplingParametersCopy = v34;
  }

LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

- (id)samplingParametersForTimezoneAbbreviation:(id)abbreviation
{
  abbreviationCopy = abbreviation;
  perTimezoneSamplingParameters = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
  defaultSamplingParameters = [perTimezoneSamplingParameters objectForKeyedSubscript:abbreviationCopy];

  if (!defaultSamplingParameters)
  {
    defaultSamplingParameters = [(DRSTeamTasking *)self defaultSamplingParameters];
  }

  return defaultSamplingParameters;
}

- (id)samplingParametersForHardwareModel:(id)model
{
  modelCopy = model;
  perHWModelSamplingParameters = [(DRSTeamTasking *)self perHWModelSamplingParameters];
  defaultSamplingParameters = [perHWModelSamplingParameters objectForKeyedSubscript:modelCopy];

  if (!defaultSamplingParameters)
  {
    defaultSamplingParameters = [(DRSTeamTasking *)self defaultSamplingParameters];
  }

  return defaultSamplingParameters;
}

- (id)samplingParametersForHWModel:(id)model timezoneAbbreviation:(id)abbreviation
{
  modelCopy = model;
  abbreviationCopy = abbreviation;
  perTimezoneSamplingParameters = [(DRSTeamTasking *)self perTimezoneSamplingParameters];

  if (perTimezoneSamplingParameters)
  {
    [(DRSTeamTasking *)self samplingParametersForTimezoneAbbreviation:abbreviationCopy];
  }

  else
  {
    [(DRSTeamTasking *)self samplingParametersForHardwareModel:modelCopy];
  }
  v9 = ;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DRSTeamTasking *)self isEqualToTeamTasking:equalCopy];

  return v5;
}

- (BOOL)isEqualToTeamTasking:(id)tasking
{
  taskingCopy = tasking;
  v5 = taskingCopy;
  if (taskingCopy)
  {
    if (taskingCopy != self)
    {
      teamID = [(DRSTeamTasking *)self teamID];
      teamID2 = [(DRSTeamTasking *)v5 teamID];
      v8 = [teamID isEqualToString:teamID2];

      if (!v8)
      {
        goto LABEL_12;
      }

      config = [(DRSTeamTasking *)self config];
      config2 = [(DRSTeamTasking *)v5 config];
      v11 = [config isEqualToConfig:config2];

      if (!v11)
      {
        goto LABEL_12;
      }

      defaultSamplingParameters = [(DRSTeamTasking *)self defaultSamplingParameters];
      defaultSamplingParameters2 = [(DRSTeamTasking *)v5 defaultSamplingParameters];
      IsNil = _oneIsNil(defaultSamplingParameters, defaultSamplingParameters2);

      if (IsNil)
      {
        goto LABEL_12;
      }

      defaultSamplingParameters3 = [(DRSTeamTasking *)self defaultSamplingParameters];
      if (defaultSamplingParameters3)
      {
        v16 = defaultSamplingParameters3;
        defaultSamplingParameters4 = [(DRSTeamTasking *)self defaultSamplingParameters];
        defaultSamplingParameters5 = [(DRSTeamTasking *)v5 defaultSamplingParameters];
        v19 = [defaultSamplingParameters4 isEqualToSamplingParameters:defaultSamplingParameters5];

        if (!v19)
        {
          goto LABEL_12;
        }
      }

      perTimezoneSamplingParameters = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
      perTimezoneSamplingParameters2 = [(DRSTeamTasking *)v5 perTimezoneSamplingParameters];
      v22 = _oneIsNil(perTimezoneSamplingParameters, perTimezoneSamplingParameters2);

      if (v22)
      {
        goto LABEL_12;
      }

      perTimezoneSamplingParameters3 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
      if (perTimezoneSamplingParameters3)
      {
        v24 = perTimezoneSamplingParameters3;
        perTimezoneSamplingParameters4 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
        perTimezoneSamplingParameters5 = [(DRSTeamTasking *)v5 perTimezoneSamplingParameters];
        v27 = [perTimezoneSamplingParameters4 isEqualToDictionary:perTimezoneSamplingParameters5];

        if (!v27)
        {
          goto LABEL_12;
        }
      }

      perHWModelSamplingParameters = [(DRSTeamTasking *)self perHWModelSamplingParameters];
      perHWModelSamplingParameters2 = [(DRSTeamTasking *)v5 perHWModelSamplingParameters];
      v30 = _oneIsNil(perHWModelSamplingParameters, perHWModelSamplingParameters2);

      if (v30)
      {
        goto LABEL_12;
      }

      perHWModelSamplingParameters3 = [(DRSTeamTasking *)self perHWModelSamplingParameters];
      if (perHWModelSamplingParameters3)
      {
        v33 = perHWModelSamplingParameters3;
        perHWModelSamplingParameters4 = [(DRSTeamTasking *)self perHWModelSamplingParameters];
        perHWModelSamplingParameters5 = [(DRSTeamTasking *)v5 perHWModelSamplingParameters];
        v31 = [perHWModelSamplingParameters4 isEqualToDictionary:perHWModelSamplingParameters5];

        goto LABEL_16;
      }
    }

    v31 = 1;
    goto LABEL_16;
  }

LABEL_12:
  v31 = 0;
LABEL_16:

  return v31 & 1;
}

- (id)_jsonDictRepresentation:(BOOL)representation
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (representation)
  {
    config = [(DRSTeamTasking *)self config];
    jsonDictRepresentation = [config jsonDictRepresentation];
  }

  else
  {
    jsonDictRepresentation = 0;
  }

  defaultSamplingParameters = [(DRSTeamTasking *)self defaultSamplingParameters];

  if (defaultSamplingParameters)
  {
    defaultSamplingParameters2 = [(DRSTeamTasking *)self defaultSamplingParameters];
    defaultSamplingParameters = [defaultSamplingParameters2 jsonDictRepresentation];
  }

  perTimezoneSamplingParameters = [(DRSTeamTasking *)self perTimezoneSamplingParameters];

  if (perTimezoneSamplingParameters)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    perTimezoneSamplingParameters2 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __42__DRSTeamTasking__jsonDictRepresentation___block_invoke;
    v21[3] = &unk_27899FBC0;
    perTimezoneSamplingParameters = dictionary;
    v22 = perTimezoneSamplingParameters;
    [perTimezoneSamplingParameters2 enumerateKeysAndObjectsUsingBlock:v21];
  }

  perHWModelSamplingParameters = [(DRSTeamTasking *)self perHWModelSamplingParameters];

  if (perHWModelSamplingParameters)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    perHWModelSamplingParameters2 = [(DRSTeamTasking *)self perHWModelSamplingParameters];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__DRSTeamTasking__jsonDictRepresentation___block_invoke_2;
    v19[3] = &unk_27899FBC0;
    perHWModelSamplingParameters = dictionary2;
    v20 = perHWModelSamplingParameters;
    [perHWModelSamplingParameters2 enumerateKeysAndObjectsUsingBlock:v19];
  }

  v23 = @"teamID";
  teamID = [(DRSTeamTasking *)self teamID];
  v24[0] = teamID;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v16 = [v15 mutableCopy];

  if (jsonDictRepresentation)
  {
    [v16 setObject:jsonDictRepresentation forKeyedSubscript:@"config"];
  }

  if (defaultSamplingParameters)
  {
    [v16 setObject:defaultSamplingParameters forKeyedSubscript:@"defaultSamplingParameters"];
  }

  if (perTimezoneSamplingParameters)
  {
    [v16 setObject:perTimezoneSamplingParameters forKeyedSubscript:@"perTimezoneSamplingParameters"];
  }

  if (perHWModelSamplingParameters)
  {
    [v16 setObject:perHWModelSamplingParameters forKeyedSubscript:@"perHWModelSamplingParameters"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __42__DRSTeamTasking__jsonDictRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 jsonDictRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __42__DRSTeamTasking__jsonDictRepresentation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 jsonDictRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)debugDescription
{
  jsonDictRepresentation = [(DRSTeamTasking *)self jsonDictRepresentation];
  v3 = [jsonDictRepresentation description];

  return v3;
}

- (DRSTeamTasking)initWithJSONDict:(id)dict receivedDate:(id)date
{
  dictCopy = dict;
  dateCopy = date;
  if (dictCopy)
  {
    v8 = [dictCopy objectForKeyedSubscript:@"teamID"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = DPLogHandle_TaskingMessageError();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid team ID", buf, 2u);
      }

      goto LABEL_13;
    }

    v9 = [dictCopy objectForKeyedSubscript:@"config"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v16 = DPLogHandle_TaskingMessageError();
      if (os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid configDict", buf, 2u);
      }

      selfCopy = 0;
      v10 = v9;
      goto LABEL_45;
    }

    v10 = [objc_alloc(MEMORY[0x277D051F8]) initWithJSONDict:v9 receivedDate:dateCopy];

    v11 = [dictCopy objectForKeyedSubscript:@"defaultSamplingParameters"];
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = DPLogHandle_TaskingMessageError();
        if (os_signpost_enabled(v13))
        {
          *buf = 0;
          v14 = "Invalid defaultSamplingParametersDict";
          goto LABEL_27;
        }

LABEL_28:

LABEL_13:
        selfCopy = 0;
LABEL_45:

        goto LABEL_46;
      }

      v12 = [[DRSSamplingParameters alloc] initWithJSONDict:v11];
      if (!v12)
      {
        v13 = DPLogHandle_TaskingMessageError();
        if (os_signpost_enabled(v13))
        {
          *buf = 0;
          v14 = "Invalid defaultSamplingParameters";
LABEL_27:
          _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", v14, buf, 2u);
          goto LABEL_28;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v12 = 0;
    }

    v17 = [dictCopy objectForKeyedSubscript:@"perTimezoneSamplingParameters"];
    if (v17)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = DPLogHandle_TaskingMessageError();
        if (os_signpost_enabled(v24))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid perTimezoneSamplingParametersDict", buf, 2u);
        }

        v19 = 0;
        goto LABEL_43;
      }

      *buf = 0;
      v34 = buf;
      v35 = 0x2020000000;
      v36 = 0;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __48__DRSTeamTasking_initWithJSONDict_receivedDate___block_invoke;
      v30[3] = &unk_27899FBE8;
      v32 = buf;
      v19 = dictionary;
      v31 = v19;
      [v17 enumerateKeysAndObjectsUsingBlock:v30];
      v20 = v34[24];

      _Block_object_dispose(buf, 8);
      if (v20)
      {
LABEL_43:
        selfCopy = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v19 = 0;
    }

    v21 = [dictCopy objectForKeyedSubscript:@"perHWModelSamplingParameters"];
    if (v21)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = DPLogHandle_TaskingMessageError();
        if (os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid perHWModelSamplingParametersDict", buf, 2u);
        }

        v17 = 0;
        goto LABEL_42;
      }

      *buf = 0;
      v34 = buf;
      v35 = 0x2020000000;
      v36 = 0;
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __48__DRSTeamTasking_initWithJSONDict_receivedDate___block_invoke_62;
      v27[3] = &unk_27899FBE8;
      v29 = buf;
      v17 = dictionary2;
      v28 = v17;
      [v21 enumerateKeysAndObjectsUsingBlock:v27];
      v23 = v34[24];

      _Block_object_dispose(buf, 8);
      if (v23)
      {
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
      v17 = 0;
    }

    self = [(DRSTeamTasking *)self initWithTeamID:v8 config:v10 defaultSamplingParameters:v12 perTimezoneSamplingParameters:v19 perHardwareModelSamplingParamters:v17];
    selfCopy = self;
LABEL_44:

    goto LABEL_45;
  }

  v8 = DPLogHandle_TaskingMessageError();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "nil JSON dict", buf, 2u);
  }

  selfCopy = 0;
LABEL_46:

  return selfCopy;
}

void __48__DRSTeamTasking_initWithJSONDict_receivedDate___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [[DRSSamplingParameters alloc] initWithJSONDict:v8];
    if (v9)
    {
      [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
    }

    else
    {
      v11 = DPLogHandle_TaskingMessageError();
      if (os_signpost_enabled(v11))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid perTimezoneSamplingParameters value", v12, 2u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    v10 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid perTimezoneSamplingParametersDict value", buf, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __48__DRSTeamTasking_initWithJSONDict_receivedDate___block_invoke_62(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [[DRSSamplingParameters alloc] initWithJSONDict:v8];
    if (v9)
    {
      [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
    }

    else
    {
      v11 = DPLogHandle_TaskingMessageError();
      if (os_signpost_enabled(v11))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid perHWModelSamplingParametersDict value", v12, 2u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    v10 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid perHWModelSamplingParametersDict value", buf, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end