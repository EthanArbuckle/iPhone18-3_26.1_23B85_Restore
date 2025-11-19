@interface NetworkQualityRemoteConfiguration
- (NetworkQualityRemoteConfiguration)initWithData:(id)a3 andConfig:(id)a4;
- (NetworkQualityRemoteConfiguration)initWithDictionary:(id)a3 andConfig:(id)a4;
- (id)portForURLType:(int)a3;
@end

@implementation NetworkQualityRemoteConfiguration

- (NetworkQualityRemoteConfiguration)initWithData:(id)a3 andConfig:(id)a4
{
  v6 = a4;
  v11 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v11];
  v8 = v11;
  if (v7)
  {
    self = [(NetworkQualityRemoteConfiguration *)self initWithDictionary:v7 andConfig:v6];
    v9 = self;
  }

  else
  {
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [NetworkQualityRemoteConfiguration initWithData:andConfig:];
    }

    v9 = 0;
  }

  return v9;
}

- (NetworkQualityRemoteConfiguration)initWithDictionary:(id)a3 andConfig:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v47 = a4;
  v60.receiver = self;
  v60.super_class = NetworkQualityRemoteConfiguration;
  v50 = [(NetworkQualityRemoteConfiguration *)&v60 init];
  v6 = v50;
  if (!v50)
  {
    goto LABEL_58;
  }

  netqual_log_init();
  v7 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v64 = "[NetworkQualityRemoteConfiguration initWithDictionary:andConfig:]";
    v65 = 1024;
    v66 = 50;
    v67 = 2112;
    v68 = v49;
    _os_log_impl(&dword_25B962000, v7, OS_LOG_TYPE_DEFAULT, "%s:%u - [Staging] Got configuration: %@", buf, 0x1Cu);
  }

  v48 = [(NSString *)v49 objectForKeyedSubscript:@"version", a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_33:
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [NetworkQualityRemoteConfiguration initWithDictionary:andConfig:];
    }

    goto LABEL_41;
  }

  if (!v48)
  {
    goto LABEL_33;
  }

  v8 = [(NSString *)v49 objectForKeyedSubscript:@"urls"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  if (![v8 count])
  {
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [NetworkQualityRemoteConfiguration initWithDictionary:andConfig:];
    }

LABEL_41:
    v26 = 0;
    goto LABEL_59;
  }

  v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v9 = [&unk_286D22D40 countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = *v57;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v57 != v10)
      {
        objc_enumerationMutation(&unk_286D22D40);
      }

      v12 = *(*(&v56 + 1) + 8 * i);
      v13 = [v8 objectForKeyedSubscript:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v13)
        {
          continue;
        }

        v14 = [&unk_286D22D40 objectForKeyedSubscript:v12];
        v15 = [MEMORY[0x277CBEBC0] URLWithString:v13];
        [v51 setObject:v15 forKeyedSubscript:v14];
      }
    }

    v9 = [&unk_286D22D40 countByEnumeratingWithState:&v56 objects:v62 count:16];
  }

  while (v9);
LABEL_20:
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v16 = [&unk_286D22D68 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v16)
  {
    v17 = *v53;
    while (2)
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(&unk_286D22D68);
        }

        v19 = [v51 objectForKeyedSubscript:*(*(&v52 + 1) + 8 * j)];
        v20 = v19 == 0;

        if (v20)
        {
          netqual_log_init();
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
          {
            [NetworkQualityRemoteConfiguration initWithDictionary:andConfig:];
          }

          goto LABEL_41;
        }
      }

      v16 = [&unk_286D22D68 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  objc_storeStrong(&v50->_urls, v51);
  v21 = [(NSString *)v49 objectForKeyedSubscript:@"test_endpoint"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_43:
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
    {
      [NetworkQualityRemoteConfiguration initWithDictionary:andConfig:];
    }

    v27 = MEMORY[0x277CBEBC0];
    v28 = [v47 configuration];
    v29 = [v27 URLWithString:v28];

    v30 = [v29 port];
    v31 = v30 == 0;

    if (v31)
    {
      v35 = [v29 scheme];
      v36 = [v35 isEqualToString:@"https"];

      if (v36)
      {
        v37 = v50;
        port = v50->_port;
        v38 = @"443";
      }

      else
      {
        v39 = [v29 scheme];
        v40 = [v39 isEqualToString:@"http"];

        if (!v40)
        {
LABEL_53:

          v21 = 0;
          goto LABEL_54;
        }

        v37 = v50;
        port = v50->_port;
        v38 = @"80";
      }

      v37->_port = &v38->isa;
    }

    else
    {
      port = [v29 port];
      v33 = [port stringValue];
      v34 = v50->_port;
      v50->_port = v33;
    }

    goto LABEL_53;
  }

  if (!v21)
  {
    goto LABEL_43;
  }

  v22 = v50->_port;
  v50->_port = @"443";

  netqual_log_init();
  v23 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    v24 = v50;
    v25 = v50->_port;
    *buf = 136315650;
    v64 = "[NetworkQualityRemoteConfiguration initWithDictionary:andConfig:]";
    v65 = 1024;
    v66 = 103;
    v67 = 2112;
    v68 = v25;
    _os_log_impl(&dword_25B962000, v23, OS_LOG_TYPE_INFO, "%s:%u - Assuming port %@", buf, 0x1Cu);
    goto LABEL_55;
  }

LABEL_54:
  v24 = v50;
LABEL_55:
  [(NetworkQualityRemoteConfiguration *)v24 setTestEndpoint:v21];
  netqual_log_init();
  v41 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    v42 = v41;
    v43 = [(NetworkQualityRemoteConfiguration *)v50 testEndpoint];
    *buf = 136315650;
    v64 = "[NetworkQualityRemoteConfiguration initWithDictionary:andConfig:]";
    v65 = 1024;
    v66 = 107;
    v67 = 2112;
    v68 = v43;
    _os_log_impl(&dword_25B962000, v42, OS_LOG_TYPE_INFO, "%s:%u - test endpoint: %@", buf, 0x1Cu);
  }

  objc_storeStrong(&v50->_config, obj);

  v6 = v50;
LABEL_58:
  v26 = v6;
LABEL_59:

  v44 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)portForURLType:(int)a3
{
  if (a3 > 2)
  {
    v4 = @"0";
  }

  else
  {
    v4 = self->_port;
  }

  return v4;
}

- (void)initWithData:andConfig:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:andConfig:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:andConfig:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:andConfig:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_1();
  *(&v2[3] + 2) = 90;
  _os_log_debug_impl(&dword_25B962000, v0, OS_LOG_TYPE_DEBUG, "%s:%u - server response without test_endpoint specified", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:andConfig:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:andConfig:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

@end