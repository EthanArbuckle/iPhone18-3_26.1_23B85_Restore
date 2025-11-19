@interface DRSTeamTasking
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTeamTasking:(id)a3;
- (DRSTeamTasking)initWithJSONDict:(id)a3 receivedDate:(id)a4;
- (DRSTeamTasking)initWithTeamID:(id)a3 config:(id)a4 defaultSamplingParameters:(id)a5 perTimezoneSamplingParameters:(id)a6 perHardwareModelSamplingParamters:(id)a7;
- (id)_jsonDictRepresentation:(BOOL)a3;
- (id)debugDescription;
- (id)samplingParametersForHWModel:(id)a3 timezoneAbbreviation:(id)a4;
- (id)samplingParametersForHardwareModel:(id)a3;
- (id)samplingParametersForTimezoneAbbreviation:(id)a3;
@end

@implementation DRSTeamTasking

- (DRSTeamTasking)initWithTeamID:(id)a3 config:(id)a4 defaultSamplingParameters:(id)a5 perTimezoneSamplingParameters:(id)a6 perHardwareModelSamplingParamters:(id)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v35 = a7;
  if (!v13)
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

    v24 = 0;
    goto LABEL_19;
  }

  if (!v14)
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

  v17 = v14;
  v18 = self;
  v34 = v16;
  v19 = v15;
  v20 = v13;
  v21 = v17;
  v22 = [v17 teamID];
  v33 = v20;
  LOBYTE(v20) = [v22 isEqualToString:v20];

  if (v20)
  {
    v15 = v19;
    v16 = v34;
    self = v18;
    if (!v15 && !v34 && !v35)
    {
      v23 = DPLogHandle_TaskingMessageError();
      v14 = v21;
      if (os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTeamTasking", "nil defaultSamplingParameters AND perTimezoneSamplingParameters AND perHWModelSamplingParameters", buf, 2u);
      }

      v24 = 0;
      v13 = v33;
      goto LABEL_19;
    }

    v14 = v21;
    if (v34 && v35)
    {
      v25 = DPLogHandle_TaskingMessageError();
      v13 = v33;
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
    v13 = v33;
    if (v31)
    {
      objc_storeStrong(&v31->_teamID, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
      objc_storeStrong(p_isa + 4, a6);
      objc_storeStrong(p_isa + 5, a7);
    }

    self = p_isa;
    v24 = self;
  }

  else
  {
    v27 = DPLogHandle_TaskingMessageError();
    self = v18;
    v14 = v21;
    v13 = v33;
    if (os_signpost_enabled(v27))
    {
      v28 = [v14 teamID];
      *buf = 138543618;
      v38 = v28;
      v39 = 2114;
      v40 = v33;
      _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTeamTasking", "Config team ID (%{public}@) does not match TeamTasking team ID (%{public}@)", buf, 0x16u);
    }

    v24 = 0;
    v15 = v19;
    v16 = v34;
  }

LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)samplingParametersForTimezoneAbbreviation:(id)a3
{
  v4 = a3;
  v5 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = [(DRSTeamTasking *)self defaultSamplingParameters];
  }

  return v6;
}

- (id)samplingParametersForHardwareModel:(id)a3
{
  v4 = a3;
  v5 = [(DRSTeamTasking *)self perHWModelSamplingParameters];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = [(DRSTeamTasking *)self defaultSamplingParameters];
  }

  return v6;
}

- (id)samplingParametersForHWModel:(id)a3 timezoneAbbreviation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];

  if (v8)
  {
    [(DRSTeamTasking *)self samplingParametersForTimezoneAbbreviation:v7];
  }

  else
  {
    [(DRSTeamTasking *)self samplingParametersForHardwareModel:v6];
  }
  v9 = ;

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DRSTeamTasking *)self isEqualToTeamTasking:v4];

  return v5;
}

- (BOOL)isEqualToTeamTasking:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 != self)
    {
      v6 = [(DRSTeamTasking *)self teamID];
      v7 = [(DRSTeamTasking *)v5 teamID];
      v8 = [v6 isEqualToString:v7];

      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = [(DRSTeamTasking *)self config];
      v10 = [(DRSTeamTasking *)v5 config];
      v11 = [v9 isEqualToConfig:v10];

      if (!v11)
      {
        goto LABEL_12;
      }

      v12 = [(DRSTeamTasking *)self defaultSamplingParameters];
      v13 = [(DRSTeamTasking *)v5 defaultSamplingParameters];
      IsNil = _oneIsNil(v12, v13);

      if (IsNil)
      {
        goto LABEL_12;
      }

      v15 = [(DRSTeamTasking *)self defaultSamplingParameters];
      if (v15)
      {
        v16 = v15;
        v17 = [(DRSTeamTasking *)self defaultSamplingParameters];
        v18 = [(DRSTeamTasking *)v5 defaultSamplingParameters];
        v19 = [v17 isEqualToSamplingParameters:v18];

        if (!v19)
        {
          goto LABEL_12;
        }
      }

      v20 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
      v21 = [(DRSTeamTasking *)v5 perTimezoneSamplingParameters];
      v22 = _oneIsNil(v20, v21);

      if (v22)
      {
        goto LABEL_12;
      }

      v23 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
      if (v23)
      {
        v24 = v23;
        v25 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
        v26 = [(DRSTeamTasking *)v5 perTimezoneSamplingParameters];
        v27 = [v25 isEqualToDictionary:v26];

        if (!v27)
        {
          goto LABEL_12;
        }
      }

      v28 = [(DRSTeamTasking *)self perHWModelSamplingParameters];
      v29 = [(DRSTeamTasking *)v5 perHWModelSamplingParameters];
      v30 = _oneIsNil(v28, v29);

      if (v30)
      {
        goto LABEL_12;
      }

      v32 = [(DRSTeamTasking *)self perHWModelSamplingParameters];
      if (v32)
      {
        v33 = v32;
        v34 = [(DRSTeamTasking *)self perHWModelSamplingParameters];
        v35 = [(DRSTeamTasking *)v5 perHWModelSamplingParameters];
        v31 = [v34 isEqualToDictionary:v35];

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

- (id)_jsonDictRepresentation:(BOOL)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(DRSTeamTasking *)self config];
    v5 = [v4 jsonDictRepresentation];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(DRSTeamTasking *)self defaultSamplingParameters];

  if (v6)
  {
    v7 = [(DRSTeamTasking *)self defaultSamplingParameters];
    v6 = [v7 jsonDictRepresentation];
  }

  v8 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = [(DRSTeamTasking *)self perTimezoneSamplingParameters];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __42__DRSTeamTasking__jsonDictRepresentation___block_invoke;
    v21[3] = &unk_27899FBC0;
    v8 = v9;
    v22 = v8;
    [v10 enumerateKeysAndObjectsUsingBlock:v21];
  }

  v11 = [(DRSTeamTasking *)self perHWModelSamplingParameters];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    v13 = [(DRSTeamTasking *)self perHWModelSamplingParameters];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__DRSTeamTasking__jsonDictRepresentation___block_invoke_2;
    v19[3] = &unk_27899FBC0;
    v11 = v12;
    v20 = v11;
    [v13 enumerateKeysAndObjectsUsingBlock:v19];
  }

  v23 = @"teamID";
  v14 = [(DRSTeamTasking *)self teamID];
  v24[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v16 = [v15 mutableCopy];

  if (v5)
  {
    [v16 setObject:v5 forKeyedSubscript:@"config"];
  }

  if (v6)
  {
    [v16 setObject:v6 forKeyedSubscript:@"defaultSamplingParameters"];
  }

  if (v8)
  {
    [v16 setObject:v8 forKeyedSubscript:@"perTimezoneSamplingParameters"];
  }

  if (v11)
  {
    [v16 setObject:v11 forKeyedSubscript:@"perHWModelSamplingParameters"];
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
  v2 = [(DRSTeamTasking *)self jsonDictRepresentation];
  v3 = [v2 description];

  return v3;
}

- (DRSTeamTasking)initWithJSONDict:(id)a3 receivedDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"teamID"];
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

    v9 = [v6 objectForKeyedSubscript:@"config"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v16 = DPLogHandle_TaskingMessageError();
      if (os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "Invalid configDict", buf, 2u);
      }

      v15 = 0;
      v10 = v9;
      goto LABEL_45;
    }

    v10 = [objc_alloc(MEMORY[0x277D051F8]) initWithJSONDict:v9 receivedDate:v7];

    v11 = [v6 objectForKeyedSubscript:@"defaultSamplingParameters"];
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
        v15 = 0;
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

    v17 = [v6 objectForKeyedSubscript:@"perTimezoneSamplingParameters"];
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
      v18 = [MEMORY[0x277CBEB38] dictionary];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __48__DRSTeamTasking_initWithJSONDict_receivedDate___block_invoke;
      v30[3] = &unk_27899FBE8;
      v32 = buf;
      v19 = v18;
      v31 = v19;
      [v17 enumerateKeysAndObjectsUsingBlock:v30];
      v20 = v34[24];

      _Block_object_dispose(buf, 8);
      if (v20)
      {
LABEL_43:
        v15 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v19 = 0;
    }

    v21 = [v6 objectForKeyedSubscript:@"perHWModelSamplingParameters"];
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
      v22 = [MEMORY[0x277CBEB38] dictionary];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __48__DRSTeamTasking_initWithJSONDict_receivedDate___block_invoke_62;
      v27[3] = &unk_27899FBE8;
      v29 = buf;
      v17 = v22;
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
    v15 = self;
LABEL_44:

    goto LABEL_45;
  }

  v8 = DPLogHandle_TaskingMessageError();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamTaskingMessageJSONInit", "nil JSON dict", buf, 2u);
  }

  v15 = 0;
LABEL_46:

  return v15;
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