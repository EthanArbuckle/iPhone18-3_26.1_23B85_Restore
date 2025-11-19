@interface DRSSamplingParameters
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSamplingParameters:(id)a3;
- (DRSSamplingParameters)initWithJSONDict:(id)a3;
- (DRSSamplingParameters)initWithSamplingPercentage:(double)a3;
- (id)debugDescription;
- (id)jsonDictRepresentation;
@end

@implementation DRSSamplingParameters

- (DRSSamplingParameters)initWithSamplingPercentage:(double)a3
{
  v4 = self;
  v14 = *MEMORY[0x277D85DE8];
  if (a3 < 0.0)
  {
    v5 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v5))
    {
      *buf = 134217984;
      v13 = a3;
      v6 = "Invalid sampling < 0%% (%f)";
LABEL_7:
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SamplingParameterFailedInit", v6, buf, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (a3 > 100.0)
  {
    v5 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v5))
    {
      *buf = 134217984;
      v13 = a3;
      v6 = "Invalid sampling > 100%% (%f)";
      goto LABEL_7;
    }

LABEL_8:

    v7 = 0;
    goto LABEL_12;
  }

  v11.receiver = self;
  v11.super_class = DRSSamplingParameters;
  v8 = [(DRSSamplingParameters *)&v11 init];
  if (v8)
  {
    v8->_samplingPercentage = a3;
  }

  v4 = v8;
  v7 = v4;
LABEL_12:

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DRSSamplingParameters *)self isEqualToSamplingParameters:v4];

  return v5;
}

- (BOOL)isEqualToSamplingParameters:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4)
  {
    [(DRSSamplingParameters *)v4 samplingPercentage];
    v7 = v6;
    [(DRSSamplingParameters *)self samplingPercentage];
    v9 = v7 == v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (DRSSamplingParameters)initWithJSONDict:(id)a3
{
  if (!a3)
  {
    v4 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SamplingParameterFailedJSONInit", "nil JSON dict", buf, 2u);
    }

    goto LABEL_13;
  }

  v4 = [a3 objectForKeyedSubscript:@"samplingPercentage"];
  if (!v4)
  {
    v6 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v6))
    {
      v11 = 0;
      v7 = "JSON missing sampling percentage";
      v8 = &v11;
LABEL_11:
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SamplingParameterFailedJSONInit", v7, v8, 2u);
    }

LABEL_12:

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v6))
    {
      v10 = 0;
      v7 = "Sampling percentage is wrong class";
      v8 = &v10;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  [v4 doubleValue];
  self = [(DRSSamplingParameters *)self initWithSamplingPercentage:?];
  v5 = self;
LABEL_14:

  return v5;
}

- (id)jsonDictRepresentation
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"samplingPercentage";
  v2 = MEMORY[0x277CCABB0];
  [(DRSSamplingParameters *)self samplingPercentage];
  v3 = [v2 numberWithDouble:?];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)debugDescription
{
  v2 = [(DRSSamplingParameters *)self jsonDictRepresentation];
  v3 = [v2 description];

  return v3;
}

@end