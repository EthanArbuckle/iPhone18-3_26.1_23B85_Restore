@interface NTKTimelineDataOperation
+ (id)operationWithLocalDataSource:(id)source;
+ (id)operationWithRemoteDataSource:(id)source complication:(id)complication;
- (BOOL)_validateEntry:(id)entry;
- (BOOL)_validateTemplate:(id)template;
- (id)_dataSourceDescription;
- (id)_finalizedValidEntries:(id)entries;
- (void)cancel;
- (void)start;
@end

@implementation NTKTimelineDataOperation

+ (id)operationWithLocalDataSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc_init(self);
  v6 = v5[1];
  v5[1] = sourceCopy;

  return v5;
}

+ (id)operationWithRemoteDataSource:(id)source complication:(id)complication
{
  sourceCopy = source;
  complicationCopy = complication;
  v8 = objc_alloc_init(self);
  v9 = v8[2];
  v8[2] = sourceCopy;
  v10 = sourceCopy;

  v11 = v8[3];
  v8[3] = complicationCopy;

  return v8;
}

- (id)_dataSourceDescription
{
  localDataSource = self->_localDataSource;
  if (!localDataSource)
  {
    localDataSource = self->_remoteDataSource;
  }

  v4 = [localDataSource description];

  return v4;
}

- (void)start
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _dataSourceDescription = [(NTKTimelineDataOperation *)self _dataSourceDescription];
    v5 = 138412546;
    selfCopy = self;
    v7 = 2112;
    v8 = _dataSourceDescription;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Starting timeline operation %@ on %@", &v5, 0x16u);
  }

  [(NTKTimelineDataOperation *)self _start];
  self->_started = 1;
}

- (void)cancel
{
  v6 = *MEMORY[0x277D85DE8];
  if (!self->_canceled)
  {
    v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling timeline operation %@", &v4, 0xCu);
    }

    [(NTKTimelineDataOperation *)self _cancel];
  }

  self->_canceled = 1;
}

- (BOOL)_validateEntry:(id)entry
{
  v4 = [entry validateWithError:0];
  if ((v4 & 1) == 0)
  {
    v5 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NTKTimelineDataOperation _validateEntry:?];
    }
  }

  return v4;
}

- (BOOL)_validateTemplate:(id)template
{
  v4 = [template validateWithError:0];
  if ((v4 & 1) == 0)
  {
    v5 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NTKTimelineDataOperation _validateTemplate:?];
    }
  }

  return v4;
}

- (id)_finalizedValidEntries:(id)entries
{
  v19 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = entriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(NTKTimelineDataOperation *)self _validateEntry:v11, v14])
        {
          finalizedCopy = [v11 finalizedCopy];
          [array addObject:finalizedCopy];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)_validateEntry:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 _dataSourceDescription];
  OUTLINED_FUNCTION_0_3(&dword_22D9C5000, v2, v3, "**** Invalid complication timeline entry is being discarded:\n                                ********* Data source = %@", v4, v5, v6, v7, 2u);
}

- (void)_validateTemplate:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 _dataSourceDescription];
  OUTLINED_FUNCTION_0_3(&dword_22D9C5000, v2, v3, "**** Invalid complication template is being discarded:\n                                ********* Data source = %@", v4, v5, v6, v7, 2u);
}

@end