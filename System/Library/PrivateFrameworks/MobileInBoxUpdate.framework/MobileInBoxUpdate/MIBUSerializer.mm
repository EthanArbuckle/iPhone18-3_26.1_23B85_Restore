@interface MIBUSerializer
- (BOOL)_serializeError:(id)error withErrorCodeTag:(id)tag errorDomainTag:(id)domainTag errorDescriptionTag:(id)descriptionTag underlyingErrorTag:(id)errorTag;
- (BOOL)serialize:(id)serialize withValue:(id)value;
- (MIBUSerializer)init;
- (id)_getInnermostNSError:(id)error;
- (id)_serializeValue:(id)value forTag:(id)tag;
- (id)_toJsonData:(id)data;
@end

@implementation MIBUSerializer

- (MIBUSerializer)init
{
  v5.receiver = self;
  v5.super_class = MIBUSerializer;
  v2 = [(MIBUSerializer *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(MIBUSerializer *)v2 setData:v3];
  }

  return v2;
}

- (BOOL)serialize:(id)serialize withValue:(id)value
{
  v33 = *MEMORY[0x277D85DE8];
  serializeCopy = serialize;
  valueCopy = value;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = objc_opt_new();
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy_;
  v24[4] = __Block_byref_object_dispose_;
  v8 = valueCopy;
  v25 = v8;
  objc_initWeak(&location, self);
  v9 = [serializeCopy count];
  v10 = v9 == [v8 count];
  if (v10)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __38__MIBUSerializer_serialize_withValue___block_invoke_3;
    v19 = &unk_2798E64C8;
    objc_copyWeak(&v22, &location);
    v20 = v24;
    v21 = &v26;
    [serializeCopy enumerateObjectsUsingBlock:&v16];
    objc_destroyWeak(&v22);
    v11 = v27[5];
    if (!v11 || ![v11 length])
    {
      v10 = 0;
      goto LABEL_7;
    }

    data = [(MIBUSerializer *)self data];
    [data appendData:v27[5]];
  }

  else
  {
    v15 = [MIBUSerializer serialize:buf withValue:?];
    data = *buf;
    if (v15)
    {
      -[MIBUSerializer serialize:withValue:].cold.2(buf, [v8 count], objc_msgSend(serializeCopy, "count"), *buf);
    }
  }

LABEL_7:
  objc_destroyWeak(&location);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(&v26, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

void __38__MIBUSerializer_serialize_withValue___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38__MIBUSerializer_serialize_withValue___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndex:a3];
  if (v10)
  {
    if (WeakRetained)
    {
      v11 = [WeakRetained _serializeValue:v10 forTag:v7];
      if (v11)
      {
        v12 = v11;
        [*(*(*(a1 + 40) + 8) + 40) appendData:v11];
LABEL_5:

        goto LABEL_6;
      }

      __38__MIBUSerializer_serialize_withValue___block_invoke_3_cold_1(v7, v10);
    }

    else
    {
      __38__MIBUSerializer_serialize_withValue___block_invoke_3_cold_2();
    }

    *a4 = 1;
    v13 = *(*(a1 + 40) + 8);
    v12 = *(v13 + 40);
    *(v13 + 40) = 0;
    goto LABEL_5;
  }

LABEL_6:

  objc_autoreleasePoolPop(v8);
}

void __38__MIBUSerializer_serialize_withValue___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38__MIBUSerializer_serialize_withValue___block_invoke_6()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __41__MIBUSerializer__serializeValue_forTag___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __41__MIBUSerializer__serializeValue_forTag___block_invoke_30()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __41__MIBUSerializer__serializeValue_forTag___block_invoke_34()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __41__MIBUSerializer__serializeValue_forTag___block_invoke_37()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __41__MIBUSerializer__serializeValue_forTag___block_invoke_40()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __41__MIBUSerializer__serializeValue_forTag___block_invoke_43()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __41__MIBUSerializer__serializeValue_forTag___block_invoke_46()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_getInnermostNSError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v4 = errorCopy;
    userInfo = [errorCopy userInfo];
    v6 = [userInfo objectForKey:@"NSUnderlyingError"];

    if (v6)
    {
      do
      {
        v7 = v6;

        userInfo2 = [v7 userInfo];
        v6 = [userInfo2 objectForKey:@"NSUnderlyingError"];

        v4 = v7;
      }

      while (v6);
    }

    else
    {
      v7 = v4;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_toJsonData:(id)data
{
  dataCopy = data;
  if (dataCopy && [MEMORY[0x277CCAAA0] isValidJSONObject:dataCopy])
  {
    v15 = 0;
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dataCopy options:0 error:&v15];
    v5 = v15;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        [MIBUSerializer _toJsonData:];
      }

      v7 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        [(MIBUSerializer *)v5 _toJsonData:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  return v4;
}

void __30__MIBUSerializer__toJsonData___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_serializeError:(id)error withErrorCodeTag:(id)tag errorDomainTag:(id)domainTag errorDescriptionTag:(id)descriptionTag underlyingErrorTag:(id)errorTag
{
  v73[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  tagCopy = tag;
  domainTagCopy = domainTag;
  descriptionTagCopy = descriptionTag;
  errorTagCopy = errorTag;
  v16 = objc_autoreleasePoolPush();
  data = [(MIBUSerializer *)self data];
  v18 = [data copy];

  v19 = [errorCopy description];
  v20 = &stru_286AC3C40;
  v61 = v16;
  if (v19)
  {
    v20 = [errorCopy description];
  }

  v64 = descriptionTagCopy;
  v65 = tagCopy;
  v63 = domainTagCopy;
  if (!errorCopy)
  {
    v73[0] = tagCopy;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:{1, v20}];
    v38 = [(MIBUSerializer *)self serialize:v37 withValue:&unk_286AC8400];

    if (v38)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (MIBUOnceToken != -1)
    {
      [MIBUSerializer _serializeError:withErrorCodeTag:errorDomainTag:errorDescriptionTag:underlyingErrorTag:];
    }

    domainTagCopy = v63;
    v39 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [(MIBUSerializer *)errorCopy _serializeError:v39 withErrorCodeTag:v40 errorDomainTag:v41 errorDescriptionTag:v42 underlyingErrorTag:v43, v44, v45];
    }

    v29 = 0;
    v46 = 0;
    goto LABEL_32;
  }

  domain = [errorCopy domain];

  if (!domain)
  {
    [MIBUSerializer _serializeError:v18 withErrorCodeTag:&v66 errorDomainTag:&v67 errorDescriptionTag:&v68 underlyingErrorTag:?];
    v29 = v66;
    v46 = v67;
    v18 = v68;
LABEL_32:
    [(MIBUSerializer *)self setData:v18];
    v47 = 0;
    v28 = v18;
    goto LABEL_30;
  }

  v72[0] = tagCopy;
  v72[1] = domainTagCopy;
  v72[2] = descriptionTagCopy;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:3];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  v71[0] = v23;
  domain2 = [errorCopy domain];
  v71[1] = domain2;
  v71[2] = v20;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:3];
  v26 = [(MIBUSerializer *)self serialize:v22 withValue:v25];

  if (!v26)
  {
    goto LABEL_13;
  }

LABEL_6:
  data2 = [(MIBUSerializer *)self data];
  v28 = [data2 copy];

  v29 = [(MIBUSerializer *)self _getInnermostNSError:errorCopy];
  if (!v29)
  {
    v46 = 0;
LABEL_28:
    v47 = 1;
    goto LABEL_29;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  domain3 = [v29 domain];
  v32 = domain3;
  if (domain3)
  {
    v33 = domain3;
  }

  else
  {
    v33 = &stru_286AC3C40;
  }

  [dictionary setObject:v33 forKeyedSubscript:v63];

  v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v29, "code")}];
  [dictionary setObject:v34 forKeyedSubscript:v65];

  v35 = [v29 description];
  if (v35)
  {
    v36 = [v29 description];
    [dictionary setObject:v36 forKeyedSubscript:v64];
  }

  else
  {
    [dictionary setObject:&stru_286AC3C40 forKeyedSubscript:v64];
  }

  v46 = [(MIBUSerializer *)self _toJsonData:dictionary];
  if (!v46)
  {

    goto LABEL_28;
  }

  v70 = errorTagCopy;
  v47 = 1;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
  v69 = v46;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
  v50 = [(MIBUSerializer *)self serialize:v48 withValue:v49];

  if (!v50)
  {
    domainTagCopy = v63;
    if (MIBUOnceToken != -1)
    {
      [MIBUSerializer _serializeError:withErrorCodeTag:errorDomainTag:errorDescriptionTag:underlyingErrorTag:];
    }

    v51 = MIBUConnObj;
    v16 = v61;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [(MIBUSerializer *)v29 _serializeError:v51 withErrorCodeTag:v52 errorDomainTag:v53 errorDescriptionTag:v54 underlyingErrorTag:v55, v56, v57];
    }

    v18 = v28;
    goto LABEL_32;
  }

LABEL_29:
  domainTagCopy = v63;
  v16 = v61;
LABEL_30:

  objc_autoreleasePoolPop(v16);
  v58 = *MEMORY[0x277D85DE8];
  return v47;
}

void __105__MIBUSerializer__serializeError_withErrorCodeTag_errorDomainTag_errorDescriptionTag_underlyingErrorTag___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __105__MIBUSerializer__serializeError_withErrorCodeTag_errorDomainTag_errorDescriptionTag_underlyingErrorTag___block_invoke_62()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __105__MIBUSerializer__serializeError_withErrorCodeTag_errorDomainTag_errorDescriptionTag_underlyingErrorTag___block_invoke_66()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_serializeValue:(id)value forTag:(id)tag
{
  v40 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  tagCopy = tag;
  v31[4] = 0;
  *v31 = [tagCopy charValue];
  v7 = [MIBUSerializationUtil typeForTag:tagCopy];
  if (v7)
  {
    v8 = [MIBUSerializationUtil maxLengthForTag:tagCopy];
    if (v8)
    {
      switch([v7 unsignedIntValue])
      {
        case 1u:
        case 3u:
        case 4u:
          objc_opt_class();
          if (OUTLINED_FUNCTION_6_2())
          {
            v9 = valueCopy;
            longLongValue = [v9 longLongValue];
            goto LABEL_16;
          }

          if (MIBUOnceToken != -1)
          {
            dispatch_once(&MIBUOnceToken, &__block_literal_global_28);
          }

          v25 = MIBUConnObj;
          if (!OUTLINED_FUNCTION_5_1())
          {
            break;
          }

          goto LABEL_53;
        case 2u:
          objc_opt_class();
          if (OUTLINED_FUNCTION_6_2())
          {
            v9 = valueCopy;
            [v9 doubleValue];
            v30 = v11;
            goto LABEL_17;
          }

          if (MIBUOnceToken != -1)
          {
            dispatch_once(&MIBUOnceToken, &__block_literal_global_32_0);
          }

          v25 = MIBUConnObj;
          if (OUTLINED_FUNCTION_5_1())
          {
            goto LABEL_53;
          }

          break;
        case 5u:
          objc_opt_class();
          if (OUTLINED_FUNCTION_6_2())
          {
            v15 = [valueCopy dataUsingEncoding:4];
            goto LABEL_20;
          }

          if (MIBUOnceToken != -1)
          {
            dispatch_once(&MIBUOnceToken, &__block_literal_global_36_0);
          }

          v25 = MIBUConnObj;
          if (OUTLINED_FUNCTION_5_1())
          {
            goto LABEL_53;
          }

          break;
        case 6u:
          objc_opt_class();
          if (OUTLINED_FUNCTION_6_2())
          {
            v15 = valueCopy;
LABEL_20:
            v13 = v15;
            goto LABEL_21;
          }

          if (MIBUOnceToken != -1)
          {
            dispatch_once(&MIBUOnceToken, &__block_literal_global_39_1);
          }

          v25 = MIBUConnObj;
          if (!OUTLINED_FUNCTION_5_1())
          {
            break;
          }

          goto LABEL_53;
        case 7u:
          objc_opt_class();
          if (OUTLINED_FUNCTION_6_2())
          {
            v9 = valueCopy;
            longLongValue = [v9 unsignedLongLongValue];
LABEL_16:
            v30 = longLongValue;
LABEL_17:
            v13 = [MEMORY[0x277CBEA90] dataWithBytes:&v30 length:{objc_msgSend(v8, "unsignedIntValue", v30)}];

LABEL_21:
            *&v31[1] = [v13 length];
            if ([v8 unsignedIntValue] < *&v31[1])
            {
              if (MIBUOnceToken != -1)
              {
                dispatch_once(&MIBUOnceToken, &__block_literal_global_48_1);
              }

              v16 = MIBUConnObj;
              if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
              {
                v21 = v16;
                charValue = [tagCopy charValue];
                v23 = [v13 length];
                unsignedIntValue = [v8 unsignedIntValue];
                *buf = 67109890;
                unsignedIntValue2 = charValue;
                v34 = 2114;
                v35 = v13;
                v36 = 2048;
                v37 = v23;
                v38 = 1024;
                v39 = unsignedIntValue;
                _os_log_error_impl(&dword_259ABF000, v21, OS_LOG_TYPE_ERROR, "Truncating tag 0x%X - %{public}@ with data length %ld to %d", buf, 0x22u);
              }

              v17 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v13 length:{"bytes"), objc_msgSend(v8, "unsignedIntValue")}];

              *&v31[1] = [v17 length];
              v13 = v17;
            }

            v14 = objc_opt_new();
            [v14 appendBytes:v31 length:1];
            [v14 appendBytes:&v31[1] length:4];
            [v14 appendData:v13];
            goto LABEL_28;
          }

          if (MIBUOnceToken != -1)
          {
            dispatch_once(&MIBUOnceToken, &__block_literal_global_42);
          }

          v25 = MIBUConnObj;
          if (OUTLINED_FUNCTION_5_1())
          {
LABEL_53:
            v26 = v25;
            OUTLINED_FUNCTION_7_2();
            v27 = OUTLINED_FUNCTION_5_2();
            v28 = OUTLINED_FUNCTION_4_2();
            v29 = OUTLINED_FUNCTION_0_2(v28);
            _os_log_error_impl(&dword_259ABF000, v25, OS_LOG_TYPE_ERROR, "Tag 0x%X - class %{public}@ != %{public}@", buf, 0x1Cu);

LABEL_32:
          }

          break;
        default:
          if (MIBUOnceToken != -1)
          {
            dispatch_once(&MIBUOnceToken, &__block_literal_global_45_0);
          }

          v12 = MIBUConnObj;
          if (!OUTLINED_FUNCTION_5_1())
          {
            break;
          }

          v25 = v12;
          *buf = 67109120;
          unsignedIntValue2 = [v7 unsignedIntValue];
          _os_log_error_impl(&dword_259ABF000, v25, OS_LOG_TYPE_ERROR, "Unrecognized serialization data type: 0x%X", buf, 8u);
          goto LABEL_32;
      }
    }

    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v8 = 0;
  }

LABEL_28:
  v18 = v14;

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)serialize:(void *)a1 withValue:.cold.1(void *a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_8);
  }

  v2 = MIBUConnObj;
  *a1 = MIBUConnObj;
  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

- (void)serialize:(uint64_t)a3 withValue:(os_log_t)log .cold.2(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_259ABF000, log, OS_LOG_TYPE_ERROR, "Serialization tag list size %lu != data list size %lu", buf, 0x16u);
}

void __38__MIBUSerializer_serialize_withValue___block_invoke_3_cold_1(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_8_0);
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    v6 = v4;
    v7[0] = 67109378;
    v7[1] = [a1 charValue];
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_259ABF000, v6, OS_LOG_TYPE_ERROR, "Failed to serialize tag 0x%X with value %{public}@, skip serialization", v7, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __38__MIBUSerializer_serialize_withValue___block_invoke_3_cold_2()
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_5_2);
  }

  v0 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_259ABF000, v0, OS_LOG_TYPE_ERROR, "MIBUSerializer released before enumeration block", v1, 2u);
  }
}

- (void)_toJsonData:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_2(&dword_259ABF000, a2, a3, "Failed to serialize:%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_serializeError:(void *)a3 withErrorCodeTag:(void *)a4 errorDomainTag:errorDescriptionTag:underlyingErrorTag:.cold.1(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_61_1);
  }

  v8 = MIBUConnObj;
  if (OUTLINED_FUNCTION_5_1())
  {
    *v9 = 0;
    _os_log_error_impl(&dword_259ABF000, v8, OS_LOG_TYPE_ERROR, "Cannot serialize error, error domain is nil", v9, 2u);
  }

  *a4 = a1;
  *a3 = 0;
  *a2 = 0;
}

- (void)_serializeError:(uint64_t)a3 withErrorCodeTag:(uint64_t)a4 errorDomainTag:(uint64_t)a5 errorDescriptionTag:(uint64_t)a6 underlyingErrorTag:(uint64_t)a7 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_2(&dword_259ABF000, a2, a3, "Failed to serialize error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_serializeError:(uint64_t)a3 withErrorCodeTag:(uint64_t)a4 errorDomainTag:(uint64_t)a5 errorDescriptionTag:(uint64_t)a6 underlyingErrorTag:(uint64_t)a7 .cold.5(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_2(&dword_259ABF000, a2, a3, "Failed to serialize underlying error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end