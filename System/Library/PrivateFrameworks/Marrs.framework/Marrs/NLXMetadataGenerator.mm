@interface NLXMetadataGenerator
+ (id)createEventMetadataWithNlId:(id)id andWithTrpId:(id)trpId andWithRequestId:(id)requestId andWithResultCandidateId:(id)candidateId andWithRequester:(int)requester;
@end

@implementation NLXMetadataGenerator

+ (id)createEventMetadataWithNlId:(id)id andWithTrpId:(id)trpId andWithRequestId:(id)requestId andWithResultCandidateId:(id)candidateId andWithRequester:(int)requester
{
  requesterCopy = requester;
  candidateIdCopy = candidateId;
  requestIdCopy = requestId;
  trpIdCopy = trpId;
  idCopy = id;
  v14 = os_log_create("com.apple.siri.marrs", "General");
  v15 = [MEMORY[0x277D5DEE8] convertFromUUID:requestIdCopy];

  LODWORD(requestIdCopy) = AFDeviceSupportsSAE();
  v16 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (requestIdCopy)
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
  v21 = [v19 createNLXClientEventMetadataWithNlId:idCopy andWithTrpId:trpIdCopy andWithRequestId:v17 andWithSubRequestId:v18 andWithResultCandidateId:candidateIdCopy andWithRequester:&requesterCopy];

  return v21;
}

@end