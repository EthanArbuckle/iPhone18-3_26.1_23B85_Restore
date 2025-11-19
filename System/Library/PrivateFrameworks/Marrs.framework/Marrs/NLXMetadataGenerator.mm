@interface NLXMetadataGenerator
+ (id)createEventMetadataWithNlId:(id)a3 andWithTrpId:(id)a4 andWithRequestId:(id)a5 andWithResultCandidateId:(id)a6 andWithRequester:(int)a7;
@end

@implementation NLXMetadataGenerator

+ (id)createEventMetadataWithNlId:(id)a3 andWithTrpId:(id)a4 andWithRequestId:(id)a5 andWithResultCandidateId:(id)a6 andWithRequester:(int)a7
{
  v25 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = os_log_create("com.apple.siri.marrs", "General");
  v15 = [MEMORY[0x277D5DEE8] convertFromUUID:v11];

  LODWORD(v11) = AFDeviceSupportsSAE();
  v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_2227A9000, v14, OS_LOG_TYPE_DEFAULT, "Device supports AssistantEngine flow, use incoming requestId as subRequestId for Marrs", buf, 2u);
    }

    v17 = 0;
    v18 = v15;
  }

  else
  {
    if (v16)
    {
      *v23 = 0;
      _os_log_impl(&dword_2227A9000, v14, OS_LOG_TYPE_DEFAULT, "Device does NOT support AssistantEngine flow, use incoming requestId as is for Marrs", v23, 2u);
    }

    v18 = 0;
    v17 = v15;
  }

  v19 = MEMORY[0x277D5DEF8];
  v20 = v15;
  v21 = [v19 createNLXClientEventMetadataWithNlId:v13 andWithTrpId:v12 andWithRequestId:v17 andWithSubRequestId:v18 andWithResultCandidateId:v10 andWithRequester:&v25];

  return v21;
}

@end