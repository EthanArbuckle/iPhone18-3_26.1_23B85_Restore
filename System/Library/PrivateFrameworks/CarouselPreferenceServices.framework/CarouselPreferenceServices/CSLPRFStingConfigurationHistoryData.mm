@interface CSLPRFStingConfigurationHistoryData
+ (id)fromExportData:(id)data;
- (BOOL)isEqual:(id)equal;
- (CSLPRFStingConfigurationHistoryData)init;
- (CSLPRFStingConfigurationHistoryData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)toExportData;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSLPRFStingConfigurationHistoryData

- (id)toExportData
{
  [(CSLPRFStingConfigurationHistoryData *)self setVersion:@"0.2"];
  v3 = MEMORY[0x277CCAAB0];

  return [v3 archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_version withName:@"version" skipIfEmpty:1];
  v4 = [v3 appendObject:self->_actionsDictionary withName:@"actions" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  version = self->_version;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__CSLPRFStingConfigurationHistoryData_isEqual___block_invoke;
  v18[3] = &unk_278744E18;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendString:version counterpart:v18];
  actionsDictionary = self->_actionsDictionary;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __47__CSLPRFStingConfigurationHistoryData_isEqual___block_invoke_2;
  v16 = &unk_278745500;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:actionsDictionary counterpart:&v13];
  LOBYTE(actionsDictionary) = [v5 isEqual];

  return actionsDictionary;
}

- (unint64_t)hash
{
  v30 = *MEMORY[0x277D85DE8];
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_version];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_actionsDictionary;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            v15 = 0;
            do
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [builder appendObject:*(*(&v20 + 1) + 8 * v15++)];
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v17 = [builder hash];
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CSLPRFStingConfigurationHistoryData);
  v5 = [(NSString *)self->_version copy];
  [(CSLPRFStingConfigurationHistoryData *)v4 setVersion:v5];

  v6 = [(NSDictionary *)self->_actionsDictionary copy];
  [(CSLPRFStingConfigurationHistoryData *)v4 setActionsDictionary:v6];

  return v4;
}

- (CSLPRFStingConfigurationHistoryData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CSLPRFStingConfigurationHistoryData;
  v5 = [(CSLPRFStingConfigurationHistoryData *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [coderCopy decodeObjectForKey:@"actions"];
    actionsDictionary = v5->_actionsDictionary;
    v5->_actionsDictionary = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeObject:version forKey:@"version"];
  [coderCopy encodeObject:self->_actionsDictionary forKey:@"actions"];
}

- (CSLPRFStingConfigurationHistoryData)init
{
  v5.receiver = self;
  v5.super_class = CSLPRFStingConfigurationHistoryData;
  v2 = [(CSLPRFStingConfigurationHistoryData *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSLPRFStingConfigurationHistoryData *)v2 setVersion:@"0.2"];
  }

  return v3;
}

+ (id)fromExportData:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:0];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v5 decodeObjectOfClasses:v12 forKey:*MEMORY[0x277CCA308]];
    version = [v13 version];
    LOBYTE(v10) = [version isEqualToString:@"0.2"];

    if (v10)
    {
      v15 = v13;
    }

    else
    {
      v16 = cslprf_sting_settings_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        version2 = [v13 version];
        *buf = 138412802;
        selfCopy2 = self;
        v22 = 2112;
        v23 = version2;
        v24 = 2112;
        v25 = @"0.2";
        _os_log_error_impl(&dword_22CE92000, v16, OS_LOG_TYPE_ERROR, "%@ unexpected model data version %@, expected %@", buf, 0x20u);
      }

      v15 = 0;
    }
  }

  else
  {
    v5 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v22 = 2112;
      v23 = dataCopy;
      _os_log_error_impl(&dword_22CE92000, v5, OS_LOG_TYPE_ERROR, "%@ incorrect data %@", buf, 0x16u);
    }

    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

@end