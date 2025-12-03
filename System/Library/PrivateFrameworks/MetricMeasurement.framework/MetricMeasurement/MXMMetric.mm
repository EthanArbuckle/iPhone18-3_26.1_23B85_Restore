@interface MXMMetric
- (BOOL)_shouldConstructProbe;
- (BOOL)_shouldWrapInProxy;
- (BOOL)harvestData:(id *)data error:(id *)error;
- (BOOL)prepareWithOptions:(id)options error:(id *)error;
- (MXMInstrument)instrument;
- (MXMMetric)initWithCoder:(id)coder;
- (MXMMetric)initWithIdentifier:(id)identifier filter:(id)filter;
- (id)_constructProbe;
- (id)_getProbe;
- (id)copyWithZone:(_NSZone *)zone;
- (void)didStopAtContinuousTime:(unint64_t)time absoluteTime:(unint64_t)absoluteTime stopDate:(id)date;
- (void)didStopAtTime:(unint64_t)time stopDate:(id)date;
- (void)encodeWithCoder:(id)coder;
- (void)probeDidUpdate:(id)update data:(id)data stop:(BOOL *)stop;
- (void)willStartAtEstimatedTime:(unint64_t)time;
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

  _constructProbe = [(MXMMetric *)self _constructProbe];
  if (!_constructProbe)
  {
    return 0;
  }

  v4 = _constructProbe;
  [_constructProbe setFilter:self->_filter];
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
      _constructProbe = [(MXMMetric *)self _constructProbe];
      probe = self->_probe;
      self->_probe = _constructProbe;

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  identifier = [(MXMMetric *)self identifier];
  v7 = [identifier copyWithZone:zone];
  filter = [(MXMMetric *)self filter];
  v9 = [filter copyWithZone:zone];
  v10 = [v5 initWithIdentifier:v7 filter:v9];

  [v10 setPreferredSampleMode:{-[MXMMetric preferredSampleMode](self, "preferredSampleMode")}];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(MXMMetric *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"Identifier"];

  version = [(MXMMetric *)self version];
  [coderCopy encodeObject:version forKey:@"Version"];

  build = [(MXMMetric *)self build];
  [coderCopy encodeObject:build forKey:@"Build"];

  filter = [(MXMMetric *)self filter];
  [coderCopy encodeObject:filter forKey:@"Filter"];

  [coderCopy encodeInteger:-[MXMMetric preferredSampleMode](self forKey:{"preferredSampleMode"), @"SuggestedPollMode"}];
}

- (MXMMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MXMMetric;
  v5 = [(MXMMetric *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Version"];
    version = v5->_version;
    v5->_version = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Build"];
    build = v5->_build;
    v5->_build = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Filter"];
    filter = v5->_filter;
    v5->_filter = v12;

    v5->_preferredSampleMode = [coderCopy decodeIntegerForKey:@"SuggestedPollMode"];
  }

  return v5;
}

- (MXMMetric)initWithIdentifier:(id)identifier filter:(id)filter
{
  identifierCopy = identifier;
  filterCopy = filter;
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
      v10 = [identifierCopy copy];
      identifier = self->_identifier;
      self->_identifier = v10;

      infoDictionary = [v8 infoDictionary];
      v13 = [infoDictionary objectForKeyedSubscript:@"CFBundleShortVersionString"];
      version = self->_version;
      self->_version = v13;

      infoDictionary2 = [v8 infoDictionary];
      v16 = [infoDictionary2 objectForKeyedSubscript:@"CFBundleVersion"];
      build = self->_build;
      self->_build = v16;

      objc_storeStrong(&self->_filter, filter);
    }
  }

  return self;
}

- (void)probeDidUpdate:(id)update data:(id)data stop:(BOOL *)stop
{
  data = self->_data;
  if (data)
  {
    [(MXMMutableSampleData *)data appendData:data];
  }
}

- (BOOL)prepareWithOptions:(id)options error:(id *)error
{
  if ([(MXMMetric *)self _shouldConstructProbe:options])
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

- (void)willStartAtEstimatedTime:(unint64_t)time
{
  v16 = *MEMORY[0x277D85DE8];
  if ((([(MXMMetric *)self _sampleMode]& 1) != 0 || ([(MXMMetric *)self _sampleMode]& 4) != 0) && [(MXMMetric *)self _shouldConstructProbe])
  {
    _getProbe = [(MXMMetric *)self _getProbe];
    if (!_getProbe)
    {
      [MXMMetric willStartAtEstimatedTime:];
    }

    if (([(MXMMetric *)self _sampleMode]& 1) != 0)
    {
      if (([(MXMMetric *)self _sampleMode]& 4) != 0)
      {
        [_getProbe updateNowUntilStopped];
      }

      else
      {
        if ([(MXMMetric *)self _shouldAlwaysWrapInProxy])
        {
          v5 = 0;
        }

        else
        {
          v5 = [_getProbe sampleWithTimeout:60.0];
        }

        if (![v5 numberOfSets] && !-[MXMMetric _shouldNeverWrapInProxy](self, "_shouldNeverWrapInProxy"))
        {
          v6 = _MXMGetLog();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [(MXMMetric *)self identifier];
            v12 = 138412546;
            v13 = identifier;
            v14 = 2048;
            selfCopy = self;
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

- (void)didStopAtTime:(unint64_t)time stopDate:(id)date
{
  v27 = *MEMORY[0x277D85DE8];
  if ((([(MXMMetric *)self _sampleMode:time]& 2) != 0 || ([(MXMMetric *)self _sampleMode]& 4) != 0) && [(MXMMetric *)self _shouldConstructProbe])
  {
    _getProbe = [(MXMMetric *)self _getProbe];
    if (!_getProbe)
    {
      [MXMMetric didStopAtTime:stopDate:];
    }

    if (([(MXMMetric *)self _sampleMode]& 2) != 0)
    {
      if (([(MXMMetric *)self _sampleMode]& 4) != 0)
      {
        [_getProbe updateNowUntilTimeout:60.0];
        [_getProbe stopUpdates];
        [_getProbe waitUntilStoppedWithTimeout:60.0];
      }

      else
      {
        if ([(MXMMetric *)self _shouldAlwaysWrapInProxy])
        {
          v6 = 0;
        }

        else
        {
          v6 = [_getProbe sampleWithTimeout:60.0];
        }

        if (![v6 numberOfSets] && !-[MXMMetric _shouldNeverWrapInProxy](self, "_shouldNeverWrapInProxy"))
        {
          v7 = _MXMGetLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [(MXMMetric *)self identifier];
            v23 = 138412546;
            v24 = identifier;
            v25 = 2048;
            selfCopy = self;
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
          samples = [v6 samples];
          lastObject = [samples lastObject];
          v17 = [lastObject attributeWithName:@"Process Identifier"];
          numericValue = [v17 numericValue];
          v19 = [(MXMSampleAttributeFilter *)v14 initWithAttributeName:@"Process Identifier" numericValue:numericValue];
        }

        else
        {
          v19 = [[MXMSampleAttributeFilter alloc] initWithAttributeName:@"Process Identifier" numericValue:&unk_286A26070];
        }

        filter = [(MXMMetric *)self filter];
        v21 = [MEMORY[0x277CBEB98] setWithObject:v19];
        [filter addAttributeFilters:v21];

        [(MXMMutableSampleData *)self->_data appendData:v6];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)didStopAtContinuousTime:(unint64_t)time absoluteTime:(unint64_t)absoluteTime stopDate:(id)date
{
  v18 = *MEMORY[0x277D85DE8];
  if ((([(MXMMetric *)self _sampleMode:time]& 2) != 0 || ([(MXMMetric *)self _sampleMode]& 4) != 0) && [(MXMMetric *)self _shouldConstructProbe])
  {
    _getProbe = [(MXMMetric *)self _getProbe];
    if (!_getProbe)
    {
      [MXMMetric didStopAtContinuousTime:absoluteTime:stopDate:];
    }

    if (([(MXMMetric *)self _sampleMode]& 2) != 0)
    {
      if (([(MXMMetric *)self _sampleMode]& 4) != 0)
      {
        [_getProbe updateNowUntilTimeout:60.0];
        [_getProbe stopUpdates];
        [_getProbe waitUntilStoppedWithTimeout:60.0];
      }

      else
      {
        if ([(MXMMetric *)self _shouldAlwaysWrapInProxy])
        {
          v7 = 0;
        }

        else
        {
          v7 = [_getProbe sampleWithTimeout:60.0];
        }

        if (![v7 numberOfSets] && !-[MXMMetric _shouldNeverWrapInProxy](self, "_shouldNeverWrapInProxy"))
        {
          v8 = _MXMGetLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [(MXMMetric *)self identifier];
            v14 = 138412546;
            v15 = identifier;
            v16 = 2048;
            selfCopy = self;
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

- (BOOL)harvestData:(id *)data error:(id *)error
{
  if (![(MXMMetric *)self _shouldConstructProbe:data])
  {
    [MXMMetric harvestData:error:];
  }

  if ([(MXMMetric *)self _shouldNeverWrapInProxy])
  {
    [MXMMetric harvestData:error:];
  }

  _getProbe = [(MXMMetric *)self _getProbe];

  if (_getProbe)
  {
    if (data)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [MXMMetric harvestData:error:];
    if (data)
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

  *data = data;
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