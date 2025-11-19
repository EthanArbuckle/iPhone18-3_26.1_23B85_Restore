@interface MGRemoteQueryClientTarget
+ (MGRemoteQueryClientTarget)targetWithEndpoint:(id)a3 txtRecord:(id)a4;
- (BOOL)_parseTXTRecord:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithEndpoint:(id)a3 txtRecord:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)_parseTXTRecord:(id)a3 forVersion:(id)a4 result:(id)a5;
@end

@implementation MGRemoteQueryClientTarget

+ (MGRemoteQueryClientTarget)targetWithEndpoint:(id)a3 txtRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (nw_endpoint_get_type(v6) == nw_endpoint_type_bonjour_service)
  {
    v8 = [[a1 alloc] _initWithEndpoint:v6 txtRecord:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_initWithEndpoint:(id)a3 txtRecord:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MGRemoteQueryClientTarget;
  v9 = [(MGRemoteQueryClientTarget *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endpoint, a3);
    v10->_protocolVersion = 0;
    if (![(MGRemoteQueryClientTarget *)v10 _parseTXTRecord:v8])
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MGRemoteQueryClientTarget *)self protocolVersion];
  v7 = [(MGRemoteQueryClientTarget *)self endpoint];
  v8 = [v3 stringWithFormat:@"<%@: %p, _protocolVersion=%lu, _endpoint=%@>", v5, self, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v2 = [(MGRemoteQueryClientTarget *)self endpoint];
  v3 = [v2 description];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (self == v4)
  {
    v17 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = MEMORY[0x277CCACA8];
    v8 = [(MGRemoteQueryClientTarget *)self endpoint];
    v9 = [v7 stringWithUTF8String:nw_endpoint_get_bonjour_service_name(v8)];

    v10 = MEMORY[0x277CCACA8];
    v11 = [(MGRemoteQueryClientTarget *)v6 endpoint];
    v12 = [v10 stringWithUTF8String:nw_endpoint_get_bonjour_service_name(v11)];

    v13 = [(MGRemoteQueryClientTarget *)self protocolVersion];
    if (v13 == [(MGRemoteQueryClientTarget *)v6 protocolVersion])
    {
      v14 = [(MGRemoteQueryClientTarget *)self endpoint];
      type = nw_endpoint_get_type(v14);
      v16 = [(MGRemoteQueryClientTarget *)v6 endpoint];
      if (type == nw_endpoint_get_type(v16))
      {
        v17 = [v9 isEqualToString:v12];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
LABEL_7:
    v17 = 0;
  }

LABEL_13:

  return v17;
}

- (BOOL)_parseTXTRecord:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __45__MGRemoteQueryClientTarget__parseTXTRecord___block_invoke;
  v20[3] = &unk_27989F348;
  v20[4] = &v25;
  v20[5] = &v29;
  [(MGRemoteQueryClientTarget *)self _parseTXTRecord:v4 forVersion:0x2869A5AA8 result:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__MGRemoteQueryClientTarget__parseTXTRecord___block_invoke_2;
  v19[3] = &unk_27989F348;
  v19[4] = &v21;
  v19[5] = &v29;
  [(MGRemoteQueryClientTarget *)self _parseTXTRecord:v4 forVersion:0x2869A5A88 result:v19];
  if (*(v30 + 24) != 1)
  {
    goto LABEL_11;
  }

  v5 = v22[3];
  if (v5 <= 1)
  {
    v5 = 1;
  }

  if (v5 <= (v26[3] != 0))
  {
    self->_protocolVersion = 1;
    v6 = MGLogForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MGRemoteQueryClientTarget *)self endpoint];
      protocolVersion = self->_protocolVersion;
      v12 = v22[3];
      v13 = v26[3];
      *buf = 134219522;
      v34 = self;
      v35 = 2112;
      v36 = v10;
      v37 = 2048;
      v38 = protocolVersion;
      v39 = 2048;
      v40 = v12;
      v41 = 2048;
      v42 = v13;
      v43 = 2048;
      v44 = 1;
      v45 = 2048;
      v46 = 1;
      _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p target %@ compatible version using %lu, peer(%lu->%lu) me(%lu->%lu)", buf, 0x48u);
    }
  }

  else
  {
    *(v30 + 24) = 0;
    v6 = MGLogForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(MGRemoteQueryClientTarget *)self endpoint];
      v8 = v22[3];
      v9 = v26[3];
      *buf = 134219266;
      v34 = self;
      v35 = 2112;
      v36 = v7;
      v37 = 2048;
      v38 = v8;
      v39 = 2048;
      v40 = v9;
      v41 = 2048;
      v42 = 1;
      v43 = 2048;
      v44 = 1;
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p target %@ incompatible version, peer(%lu->%lu) me(%lu->%lu)", buf, 0x3Eu);
    }
  }

  if (v30[3])
  {
    v14 = [@"h" UTF8String];
    access_value[0] = MEMORY[0x277D85DD0];
    access_value[1] = 3221225472;
    access_value[2] = __45__MGRemoteQueryClientTarget__parseTXTRecord___block_invoke_2;
    access_value[3] = &unk_27989F370;
    access_value[4] = self;
    nw_txt_record_access_key(v4, v14, access_value);
    v15 = *(v30 + 24);
  }

  else
  {
LABEL_11:
    v15 = 0;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t __45__MGRemoteQueryClientTarget__parseTXTRecord___block_invoke(uint64_t result, char a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  if ((a2 & 1) == 0)
  {
    *(*(*(result + 40) + 8) + 24) = 0;
  }

  return result;
}

uint64_t __45__MGRemoteQueryClientTarget__parseTXTRecord___block_invoke_2(uint64_t result, char a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  if ((a2 & 1) == 0)
  {
    *(*(*(result + 40) + 8) + 24) = 0;
  }

  return result;
}

uint64_t __45__MGRemoteQueryClientTarget__parseTXTRecord___block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 != 4 || a5 == 0;
  v6 = !v5;
  if (!v5)
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a5 encoding:4];
    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    *(v9 + 24) = v8;
  }

  return v6;
}

- (void)_parseTXTRecord:(id)a3 forVersion:(id)a4 result:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10 = [v8 UTF8String];
  access_value[0] = MEMORY[0x277D85DD0];
  access_value[1] = 3221225472;
  access_value[2] = __63__MGRemoteQueryClientTarget__parseTXTRecord_forVersion_result___block_invoke;
  access_value[3] = &unk_27989F398;
  access_value[4] = &v13;
  v11 = nw_txt_record_access_key(v7, v10, access_value);
  v9[2](v9, v11, v14[3]);
  _Block_object_dispose(&v13, 8);
}

BOOL __63__MGRemoteQueryClientTarget__parseTXTRecord_forVersion_result___block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = 0;
  if (a3 == 4)
  {
    if (a5)
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a5 encoding:4];
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "longLongValue")}];
      *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedIntegerValue];
      v8 = *(*(*(a1 + 32) + 8) + 24);

      if (v8)
      {
        return 1;
      }
    }
  }

  return result;
}

@end