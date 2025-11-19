@interface CMContinuityCaptureCapabilities
+ (id)capabilitiesForCurrentDevice;
+ (void)capabilitiesForCurrentDevice;
- (CMContinuityCaptureCapabilities)initWithCapabilitiesVersion:(id *)a3 devicesCapabilities:(id)a4 userDisabled:(BOOL)a5;
- (CMContinuityCaptureCapabilities)initWithDictionaryRepresentation:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation CMContinuityCaptureCapabilities

+ (id)capabilitiesForCurrentDevice
{
  v2 = *MEMORY[0x277CE59F0];
  BoolAnswer = AVGestaltGetBoolAnswer();
  UserPreferenceDisabled = FigContinuityCaptureGetUserPreferenceDisabled();
  if (BoolAnswer)
  {
    v5 = UserPreferenceDisabled;
    if (UserPreferenceDisabled)
    {
      +[CMContinuityCaptureCapabilities capabilitiesForCurrentDevice];
    }

    else
    {
      if (GestaltGetDeviceClass() != 3 || (_os_feature_enabled_impl() & 1) != 0)
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v7 = [CMContinuityCaptureDeviceCapabilities capabilitiesForEntityType:1];
        if (v7)
        {
          [v6 addObject:v7];
          v8 = [CMContinuityCaptureDeviceCapabilities capabilitiesForEntityType:2];
          if (v8)
          {
            [v6 addObject:v8];
          }

          else
          {
            v9 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              LOWORD(v14) = 0;
              _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_INFO, "ContinuityCaptureEntityTypeDeskcamVideo not available on this device", &v14, 2u);
            }
          }

          v10 = [CMContinuityCaptureDeviceCapabilities capabilitiesForEntityType:3];
          [v6 addObject:v10];
        }

        else
        {
          +[CMContinuityCaptureCapabilities capabilitiesForCurrentDevice];
          v10 = 0;
          v8 = 0;
        }

        goto LABEL_12;
      }

      +[CMContinuityCaptureCapabilities capabilitiesForCurrentDevice];
    }

    v10 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
LABEL_12:
    v11 = objc_alloc(objc_opt_class());
    v14 = xmmword_2425D8090;
    v15 = 1;
    v12 = [v11 initWithCapabilitiesVersion:&v14 devicesCapabilities:v6 userDisabled:v5];

    goto LABEL_13;
  }

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_INFO, "Device does not support Continuity Capture", &v14, 2u);
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (CMContinuityCaptureCapabilities)initWithCapabilitiesVersion:(id *)a3 devicesCapabilities:(id)a4 userDisabled:(BOOL)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CMContinuityCaptureCapabilities;
  v9 = [(CMContinuityCaptureCapabilities *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v11 = *&a3->var0;
    *(v9 + 3) = a3->var2;
    *(v9 + 8) = v11;
    v12 = [v8 copy];
    devicesCapabilities = v10->_devicesCapabilities;
    v10->_devicesCapabilities = v12;

    v10->_userDisabled = a5;
  }

  return v10;
}

- (CMContinuityCaptureCapabilities)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v4 objectForKeyedSubscript:@"CapabilitiesVersion"];
  v7 = [v4 objectForKeyedSubscript:@"CapabiltiesMinorVersion"];
  v8 = [v4 objectForKeyedSubscript:@"CapabiltiesPatchVersion"];
  v31 = v8;
  if (v6)
  {
    v9 = v8;
    v32 = [v6 integerValue];
    v10 = 0;
    if (v7)
    {
      v35 = 0;
      if (v9)
      {
        v35 = [v7 integerValue];
        v10 = [v9 integerValue];
      }
    }

    else
    {
      v35 = 0;
    }

    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"[%ld.%ld.%ld]", v32, v35, v10];
      v12 = v33 = v10;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%ld.%ld.%ld]", 3, 304, 1];
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_INFO, "Remote Device Version %@, Current Device version %@", buf, 0x16u);

      v10 = v33;
    }
  }

  else
  {
    v10 = 0;
    v35 = 0;
    v32 = 0;
  }

  v14 = [v4 objectForKeyedSubscript:@"UserDisabled"];
  v15 = [v14 BOOLValue];

  v16 = [v4 objectForKeyedSubscript:@"Devices"];
  v17 = v16;
  if (v16)
  {
    v34 = v10;
    v28 = v7;
    v29 = v6;
    v30 = self;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v38 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          v24 = [[CMContinuityCaptureDeviceCapabilities alloc] initWithDictionaryRepresentation:v23];
          if (!v24)
          {
            [(CMContinuityCaptureCapabilities *)v23 initWithDictionaryRepresentation:v18];
            v26 = 0;
            self = v30;
            goto LABEL_21;
          }

          v25 = v24;
          [v5 addObject:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v38 objects:v37 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    *buf = v32;
    *&buf[8] = v35;
    *&buf[16] = v34;
    self = [(CMContinuityCaptureCapabilities *)v30 initWithCapabilitiesVersion:buf devicesCapabilities:v5 userDisabled:v15];
    v26 = self;
LABEL_21:
    v7 = v28;
    v6 = v29;
  }

  else
  {
    [CMContinuityCaptureCapabilities initWithDictionaryRepresentation:];
    v26 = 0;
  }

  return v26;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_capabilitiesVersion.major];
  [v3 setObject:v4 forKeyedSubscript:@"CapabilitiesVersion"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_capabilitiesVersion.minor];
  [v3 setObject:v5 forKeyedSubscript:@"CapabiltiesMinorVersion"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_capabilitiesVersion.patch];
  [v3 setObject:v6 forKeyedSubscript:@"CapabiltiesPatchVersion"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_userDisabled];
  [v3 setObject:v7 forKeyedSubscript:@"UserDisabled"];

  v8 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_devicesCapabilities;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
        [v8 addObject:v14];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v11);
  }

  [v3 setObject:v8 forKeyedSubscript:@"Devices"];

  return v3;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%ld.%ld.%ld]", self->_capabilitiesVersion.major, self->_capabilitiesVersion.minor, self->_capabilitiesVersion.patch];
  v5 = [v3 stringWithFormat:@"V:%@, D:%d", v4, self->_userDisabled];

  if ([(NSArray *)self->_devicesCapabilities count])
  {
    [v5 appendString:@" "];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_devicesCapabilities;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
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

        v11 = [*(*(&v14 + 1) + 8 * i) debugDescription];
        [v5 appendFormat:@"(%@)", v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureCapabilities *)self debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
}

+ (void)capabilitiesForCurrentDevice
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 2u);
  }
}

- (void)initWithDictionaryRepresentation:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_42(v4))
  {
    OUTLINED_FUNCTION_26();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)initWithDictionaryRepresentation:.cold.2()
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_1_4(v1, v2, v3, v4, v5);
  }
}

@end