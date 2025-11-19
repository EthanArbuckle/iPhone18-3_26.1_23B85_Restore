@interface OspreyAuthService
- (OspreyAuthService)initWithChannel:(id)a3 authStrategyVersion:(unint64_t)a4;
- (void)certificateDataWithSuccess:(id)a3 failure:(id)a4;
- (void)createClientSessionWithData:(id)a3 success:(id)a4 failure:(id)a5;
@end

@implementation OspreyAuthService

- (OspreyAuthService)initWithChannel:(id)a3 authStrategyVersion:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = OspreyAuthService;
  v8 = [(OspreyAuthService *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_channel, a3);
    v10 = [MEMORY[0x277CCAD78] UUID];
    authUUID = v9->_authUUID;
    v9->_authUUID = v10;

    v9->_authStrategyVersion = a4;
  }

  return v9;
}

- (void)certificateDataWithSuccess:(id)a3 failure:(id)a4
{
  v6 = a3;
  v7 = a4;
  OspreyLoggingInit();
  v8 = OspreyLogContextAbsinthe;
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
  {
    [(OspreyAuthService *)v8 certificateDataWithSuccess:v9 failure:v10, v11, v12, v13, v14, v15];
  }

  v29 = 0;
  v30 = 0;
  v31 = xmmword_25DE49DA0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v35 = 1;
  v36 = 256;
  v37 = 0;
  flatbuffers::FlatBufferBuilder::NotNested(&v29);
  BYTE6(v34) = 1;
  v16 = flatbuffers::FlatBufferBuilder::EndTable(&v29, v32 - v33 + DWORD2(v32));
  flatbuffers::FlatBufferBuilder::Finish(&v29, v16, 0, 0);
  v17 = objc_alloc(MEMORY[0x277CBEA90]);
  BufferPointer = flatbuffers::FlatBufferBuilder::GetBufferPointer(&v29);
  v19 = [v17 initWithBytes:BufferPointer length:(v32 - v33 + DWORD2(v32))];
  v20 = [OspreyRequest requestWithMethodName:@"/siri.sidecars.auth.AuthSession/GetCertificate"];
  v21 = [(NSUUID *)self->_authUUID UUIDString];
  [v20 setClientTraceId:v21];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_authStrategyVersion];
  [v20 setDeviceAuthenticationVersion:v22];

  channel = self->_channel;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke;
  v26[3] = &unk_2799F2070;
  v24 = v7;
  v27 = v24;
  v25 = v6;
  v28 = v25;
  [(OspreyGRPCChannel *)channel unaryRequest:v20 requestData:v19 responseHandler:v26];

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v29);
}

void __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    OspreyLoggingInit();
    v7 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke_cold_1(v8, v22);
    }

    (*(*(a1 + 32) + 16))();
  }

  else if ([v5 length])
  {
    OspreyLoggingInit();
    v9 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
    {
      __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = v5;
    v18 = [v5 bytes];
    v19 = (v18 + *v18 + *(v18 + *v18 - *(v18 + *v18) + 4));
    v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v19 + *v19 + 4 length:*(v19 + *v19)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    OspreyLoggingInit();
    v21 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke_cold_3(v21);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)createClientSessionWithData:(id)a3 success:(id)a4 failure:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  OspreyLoggingInit();
  v11 = OspreyLogContextAbsinthe;
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
  {
    [(OspreyAuthService *)v11 createClientSessionWithData:v12 success:v13 failure:v14, v15, v16, v17, v18];
  }

  v19 = [v8 bytes];
  v20 = [v8 length];
  v48 = 0;
  v49 = 0;
  v50 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v48, v19, v19 + v20, v20);
  v39 = 0;
  v40 = 0;
  v41 = xmmword_25DE49DA0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0;
  v45 = 1;
  v46 = 256;
  if (v49 == v48)
  {
    v21 = &flatbuffers::data<unsigned char,std::allocator<unsigned char>>(std::vector<unsigned char> const&)::t;
  }

  else
  {
    v21 = v48;
  }

  v47 = 0;
  v22 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(&v39, v21, v49 - v48);
  flatbuffers::FlatBufferBuilder::NotNested(&v39);
  BYTE6(v44) = 1;
  v23 = DWORD2(v42);
  v24 = v43;
  v25 = v42;
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(&v39, 4, v22);
  v26 = flatbuffers::FlatBufferBuilder::EndTable(&v39, v25 - v24 + v23);
  flatbuffers::FlatBufferBuilder::Finish(&v39, v26, 0, 0);
  v27 = MEMORY[0x277CBEA90];
  BufferPointer = flatbuffers::FlatBufferBuilder::GetBufferPointer(&v39);
  v29 = [v27 dataWithBytes:BufferPointer length:(v42 - v43 + DWORD2(v42))];
  v30 = [OspreyRequest requestWithMethodName:@"/siri.sidecars.auth.AuthSession/CreateSession"];
  v31 = [(NSUUID *)self->_authUUID UUIDString];
  [v30 setClientTraceId:v31];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_authStrategyVersion];
  [v30 setDeviceAuthenticationVersion:v32];

  channel = self->_channel;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke;
  v36[3] = &unk_2799F2070;
  v34 = v10;
  v37 = v34;
  v35 = v9;
  v38 = v35;
  [(OspreyGRPCChannel *)channel unaryRequest:v30 requestData:v29 responseHandler:v36];

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v39);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }
}

void __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    OspreyLoggingInit();
    v7 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_1(v8, v33);
    }

    (*(*(a1 + 32) + 16))();
    goto LABEL_21;
  }

  if (!v5 || ![v5 length])
  {
    OspreyLoggingInit();
    v27 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_4(v27);
    }

    goto LABEL_20;
  }

  v9 = [v5 bytes];
  v10 = (v9 + *v9);
  v11 = (v10 - *v10);
  if (*v11 < 5u || (v12 = v11[2]) == 0)
  {
    v13 = 0;
LABEL_18:
    OspreyLoggingInit();
    v28 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_3(v13, v28);
    }

LABEL_20:
    (*(*(a1 + 32) + 16))();
    goto LABEL_21;
  }

  v13 = *(v10 + v12);
  if (v13 != 1)
  {
    goto LABEL_18;
  }

  OspreyLoggingInit();
  v14 = OspreyLogContextAbsinthe;
  if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_DEBUG))
  {
    __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v22 = *v10;
  v23 = v10 - v22;
  v24 = *(v10 - v22);
  v25 = *(v10 - v22 + 6);
  if (*(v10 - v22 + 6))
  {
    v22 = *(v10 + v25);
    v26 = v10 + v25 + v22;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v22 = v22;
  }

  v29 = 0.0;
  if (v24 >= 9)
  {
    v30 = *(v23 + 4);
    if (v30)
    {
      v29 = *(v10 + v30);
    }
  }

  v31 = *(a1 + 40);
  v32 = [MEMORY[0x277CBEA90] dataWithBytes:v26 + 4 length:*(v10 + v25 + v22)];
  (*(v31 + 16))(v31, v32, v29);

LABEL_21:
}

void __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke_cold_1(void *a1, _DWORD *a2)
{
  *a2 = 136315394;
  OUTLINED_FUNCTION_1_4(a1, a2, "[OspreyAuthService certificateDataWithSuccess:failure:]_block_invoke");
  _os_log_error_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_ERROR, "%s Error fetching cert from auth service! Error: %@", v4, 0x16u);
}

void __56__OspreyAuthService_certificateDataWithSuccess_failure___block_invoke_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyAuthService certificateDataWithSuccess:failure:]_block_invoke";
  _os_log_error_impl(&dword_25DDE6000, log, OS_LOG_TYPE_ERROR, "%s Certificate data was empty!", &v1, 0xCu);
}

void __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_1(void *a1, _DWORD *a2)
{
  *a2 = 136315394;
  OUTLINED_FUNCTION_1_4(a1, a2, "[OspreyAuthService createClientSessionWithData:success:failure:]_block_invoke");
  _os_log_error_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_ERROR, "%s Error getting session info response from auth service! Error: %@", v4, 0x16u);
}

void __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_3(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[OspreyAuthService createClientSessionWithData:success:failure:]_block_invoke";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_25DDE6000, a2, OS_LOG_TYPE_ERROR, "%s Auth server responded with non 1 code. Code: %d", &v2, 0x12u);
}

void __65__OspreyAuthService_createClientSessionWithData_success_failure___block_invoke_cold_4(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyAuthService createClientSessionWithData:success:failure:]_block_invoke";
  _os_log_error_impl(&dword_25DDE6000, log, OS_LOG_TYPE_ERROR, "%s Could not get signed session info from auth service!", &v1, 0xCu);
}

@end