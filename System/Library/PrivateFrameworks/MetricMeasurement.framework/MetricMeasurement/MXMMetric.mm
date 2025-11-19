@interface MXMMetric
- (BOOL)_shouldConstructProbe;
- (BOOL)_shouldWrapInProxy;
- (BOOL)harvestData:(id *)a3 error:(id *)a4;
- (BOOL)prepareWithOptions:(id)a3 error:(id *)a4;
- (MXMInstrument)instrument;
- (MXMMetric)initWithCoder:(id)a3;
- (MXMMetric)initWithIdentifier:(id)a3 filter:(id)a4;
- (id)_constructProbe;
- (id)_getProbe;
- (id)copyWithZone:(_NSZone *)a3;
- (void)didStopAtContinuousTime:(unint64_t)a3 absoluteTime:(unint64_t)a4 stopDate:(id)a5;
- (void)didStopAtTime:(unint64_t)a3 stopDate:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)probeDidUpdate:(id)a3 data:(id)a4 stop:(BOOL *)a5;
- (void)willStartAtEstimatedTime:(unint64_t)a3;
@end

@implementation MXMMetric

- (MXMInstrument)instrument
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [MXMInstrument instrumentWithInstrumentals:v2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_shouldWrapInProxy
{
  if (![(MXMMetric *)self _shouldConstructProbe])
  {
    return 0;
  }

  v3 = [(MXMMetric *)self _constructProbe];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  [v3 setFilter:self->_filter];
  v5 = [v4 sampleWithTimeout:60.0];
  v6 = [v5 numberOfSets] == 0;

  return v6;
}

- (BOOL)_shouldConstructProbe
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Abstract Method" reason:@"Subclass must implement" userInfo:0];
  objc_exception_throw(v2);
}

- (id)_constructProbe
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Abstract Method" reason:@"Subclass must implement" userInfo:0];
  objc_exception_throw(v2);
}

- (id)_getProbe
{
  if ([(MXMMetric *)self _shouldConstructProbe])
  {
    v3 = self->_probe;
    objc_sync_enter(v3);
    if (!self->_probe)
    {
      v4 = [(MXMMetric *)self _constructProbe];
      probe = self->_probe;
      self->_probe = v4;

      [(MXMProbe *)self->_probe setFilter:self->_filter];
      [(MXMProbe *)self->_probe setDelegate:self];
    }

    objc_sync_exit(v3);

    v6 = self->_probe;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(MXMMetric *)self identifier];
  v7 = [v6 copyWithZone:a3];
  v8 = [(MXMMetric *)self filter];
  v9 = [v8 copyWithZone:a3];
  v10 = [v5 initWithIdentifier:v7 filter:v9];

  [v10 setPreferredSampleMode:{-[MXMMetric preferredSampleMode](self, "preferredSampleMode")}];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(MXMMetric *)self identifier];
  [v8 encodeObject:v4 forKey:@"Identifier"];

  v5 = [(MXMMetric *)self version];
  [v8 encodeObject:v5 forKey:@"Version"];

  v6 = [(MXMMetric *)self build];
  [v8 encodeObject:v6 forKey:@"Build"];

  v7 = [(MXMMetric *)self filter];
  [v8 encodeObject:v7 forKey:@"Filter"];

  [v8 encodeInteger:-[MXMMetric preferredSampleMode](self forKey:{"preferredSampleMode"), @"SuggestedPollMode"}];
}

- (MXMMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MXMMetric;
  v5 = [(MXMMetric *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
    version = v5->_version;
    v5->_version = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Build"];
    build = v5->_build;
    v5->_build = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Filter"];
    filter = v5->_filter;
    v5->_filter = v12;

    v5->_preferredSampleMode = [v4 decodeIntegerForKey:@"SuggestedPollMode"];
  }

  return v5;
}

- (MXMMetric)initWithIdentifier:(id)a3 filter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v8)
  {
    v19.receiver = self;
    v19.super_class = MXMMetric;
    v9 = [(MXMMetric *)&v19 init];
    self = v9;
    if (v9)
    {
      v9->_preferredSampleMode = -1;
      v10 = [v6 copy];
      identifier = self->_identifier;
      self->_identifier = v10;

      v12 = [v8 infoDictionary];
      v13 = [v12 objectForKeyedSubscript:@"CFBundleShortVersionString"];
      version = self->_version;
      self->_version = v13;

      v15 = [v8 infoDictionary];
      v16 = [v15 objectForKeyedSubscript:@"CFBundleVersion"];
      build = self->_build;
      self->_build = v16;

      objc_storeStrong(&self->_filter, a4);
    }
  }

  return self;
}

- (void)probeDidUpdate:(id)a3 data:(id)a4 stop:(BOOL *)a5
{
  data = self->_data;
  if (data)
  {
    [(MXMMutableSampleData *)data appendData:a4];
  }
}

- (BOOL)prepareWithOptions:(id)a3 error:(id *)a4
{
  if ([(MXMMetric *)self _shouldConstructProbe:a3])
  {
    v5 = objc_alloc_init(MXMMutableSampleData);
  }

  else
  {
    v5 = 0;
  }

  data = self->_data;
  self->_data = v5;

  return 0;
}

- (void)willStartAtEstimatedTime:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if ((([(MXMMetric *)self _sampleMode]& 1) != 0 || ([(MXMMetric *)self _sampleMode]& 4) != 0) && [(MXMMetric *)self _shouldConstructProbe])
  {
    v4 = [(MXMMetric *)self _getProbe];
    if (!v4)
    {
      [MXMMetric willStartAtEstimatedTime:];
    }

    if (([(MXMMetric *)self _sampleMode]& 1) != 0)
    {
      if (([(MXMMetric *)self _sampleMode]& 4) != 0)
      {
        [v4 updateNowUntilStopped];
      }

      else
      {
        if ([(MXMMetric *)self _shouldAlwaysWrapInProxy])
        {
          v5 = 0;
        }

        else
        {
          v5 = [v4 sampleWithTimeout:60.0];
        }

        if (![v5 numberOfSets] && !-[MXMMetric _shouldNeverWrapInProxy](self, "_shouldNeverWrapInProxy"))
        {
          v6 = _MXMGetLog();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = [(MXMMetric *)self identifier];
            v12 = 138412546;
            v13 = v7;
            v14 = 2048;
            v15 = self;
            _os_log_impl(&dword_258DAA000, v6, OS_LOG_TYPE_DEFAULT, "Metric: %@(%p) is being wrapped in a proxy in willStartAtEstimatedTime:", &v12, 0x16u);
          }

          v8 = +[MXMProxyServiceManager shared];
          v9 = [[MXMProxyMetric alloc] initWithMetric:self];
          v10 = [v8 _sampleWithProxyMetric:v9 timeout:0 stopReason:60.0];

          v5 = v10;
        }

        [(MXMMutableSampleData *)self->_data appendData:v5];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didStopAtTime:(unint64_t)a3 stopDate:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  if ((([(MXMMetric *)self _sampleMode:a3]& 2) != 0 || ([(MXMMetric *)self _sampleMode]& 4) != 0) && [(MXMMetric *)self _shouldConstructProbe])
  {
    v5 = [(MXMMetric *)self _getProbe];
    if (!v5)
    {
      [MXMMetric didStopAtTime:stopDate:];
    }

    if (([(MXMMetric *)self _sampleMode]& 2) != 0)
    {
      if (([(MXMMetric *)self _sampleMode]& 4) != 0)
      {
        [v5 updateNowUntilTimeout:60.0];
        [v5 stopUpdates];
        [v5 waitUntilStoppedWithTimeout:60.0];
      }

      else
      {
        if ([(MXMMetric *)self _shouldAlwaysWrapInProxy])
        {
          v6 = 0;
        }

        else
        {
          v6 = [v5 sampleWithTimeout:60.0];
        }

        if (![v6 numberOfSets] && !-[MXMMetric _shouldNeverWrapInProxy](self, "_shouldNeverWrapInProxy"))
        {
          v7 = _MXMGetLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = [(MXMMetric *)self identifier];
            v23 = 138412546;
            v24 = v8;
            v25 = 2048;
            v26 = self;
            _os_log_impl(&dword_258DAA000, v7, OS_LOG_TYPE_DEFAULT, "Metric: %@(%p) is being wrapped in a proxy in didStopAtTime:stopDate:", &v23, 0x16u);
          }

          v9 = +[MXMProxyServiceManager shared];
          v10 = [[MXMProxyMetric alloc] initWithMetric:self];
          v11 = [v9 _sampleWithProxyMetric:v10 timeout:0 stopReason:60.0];

          v6 = v11;
        }

        if (v6 && ([v6 samples], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13))
        {
          v14 = [MXMSampleAttributeFilter alloc];
          v15 = [v6 samples];
          v16 = [v15 lastObject];
          v17 = [v16 attributeWithName:@"Process Identifier"];
          v18 = [v17 numericValue];
          v19 = [(MXMSampleAttributeFilter *)v14 initWithAttributeName:@"Process Identifier" numericValue:v18];
        }

        else
        {
          v19 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"Process Identifier" numericValue:&unk_286A26070];
        }

        v20 = [(MXMMetric *)self filter];
        v21 = [MEMORY[0x277CBEB98] setWithObject:v19];
        [v20 addAttributeFilters:v21];

        [(MXMMutableSampleData *)self->_data appendData:v6];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)didStopAtContinuousTime:(unint64_t)a3 absoluteTime:(unint64_t)a4 stopDate:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  if ((([(MXMMetric *)self _sampleMode:a3]& 2) != 0 || ([(MXMMetric *)self _sampleMode]& 4) != 0) && [(MXMMetric *)self _shouldConstructProbe])
  {
    v6 = [(MXMMetric *)self _getProbe];
    if (!v6)
    {
      [MXMMetric didStopAtContinuousTime:absoluteTime:stopDate:];
    }

    if (([(MXMMetric *)self _sampleMode]& 2) != 0)
    {
      if (([(MXMMetric *)self _sampleMode]& 4) != 0)
      {
        [v6 updateNowUntilTimeout:60.0];
        [v6 stopUpdates];
        [v6 waitUntilStoppedWithTimeout:60.0];
      }

      else
      {
        if ([(MXMMetric *)self _shouldAlwaysWrapInProxy])
        {
          v7 = 0;
        }

        else
        {
          v7 = [v6 sampleWithTimeout:60.0];
        }

        if (![v7 numberOfSets] && !-[MXMMetric _shouldNeverWrapInProxy](self, "_shouldNeverWrapInProxy"))
        {
          v8 = _MXMGetLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = [(MXMMetric *)self identifier];
            v14 = 138412546;
            v15 = v9;
            v16 = 2048;
            v17 = self;
            _os_log_impl(&dword_258DAA000, v8, OS_LOG_TYPE_DEFAULT, "Metric: %@(%p) is being wrapped in a proxy in didStopAtTime:stopDate:", &v14, 0x16u);
          }

          v10 = +[MXMProxyServiceManager shared];
          v11 = [[MXMProxyMetric alloc] initWithMetric:self];
          v12 = [v10 _sampleWithProxyMetric:v11 timeout:0 stopReason:60.0];

          v7 = v12;
        }

        [(MXMMutableSampleData *)self->_data appendData:v7];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)harvestData:(id *)a3 error:(id *)a4
{
  if (![(MXMMetric *)self _shouldConstructProbe:a3])
  {
    [MXMMetric harvestData:error:];
  }

  if ([(MXMMetric *)self _shouldNeverWrapInProxy])
  {
    [MXMMetric harvestData:error:];
  }

  v7 = [(MXMMetric *)self _getProbe];

  if (v7)
  {
    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MXMMetric harvestData:error:];
    if (a3)
    {
      goto LABEL_7;
    }
  }

  [MXMMetric harvestData:error:];
LABEL_7:
  p_data = &self->_data;
  data = self->_data;
  if (!data)
  {
    [(MXMMetric *)a2 harvestData:&self->_data error:&v12];
    data = v12;
  }

  *a3 = data;
  v10 = *p_data;
  *p_data = 0;

  return 0;
}

- (void)willStartAtEstimatedTime:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"probe" object:? file:? lineNumber:? description:?];
}

- (void)didStopAtTime:stopDate:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"probe" object:? file:? lineNumber:? description:?];
}

- (void)didStopAtContinuousTime:absoluteTime:stopDate:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"probe" object:? file:? lineNumber:? description:?];
}

- (void)harvestData:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[self _shouldConstructProbe]" object:? file:? lineNumber:? description:?];
}

- (void)harvestData:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"![self _shouldNeverWrapInProxy]" object:? file:? lineNumber:? description:?];
}

- (void)harvestData:error:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[self _getProbe]" object:? file:? lineNumber:? description:?];
}

- (void)harvestData:error:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

- (void)harvestData:(void *)a3 error:(void *)a4 .cold.5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"MXMMetric.m" lineNumber:279 description:{@"Invalid parameter not satisfying: %@", @"_data"}];

  *a4 = *a3;
}

@end