@interface DiagnosticPipelineRapidServiceFunctionsClientObjc
- (DiagnosticPipelineRapidServiceFunctionsClientObjc)init;
- (void)submitRapidPayloadWithBuildVariant:(id)a3 deviceCategory:(id)a4 deviceModel:(id)a5 platform:(id)a6 teamID:(id)a7 issueCategory:(id)a8 contextDictionaryData:(id)a9 requestTime:(unint64_t)a10 build:(id)a11 logType:(id)a12 logSize:(unint64_t)a13 fileName:(id)a14 uploadAttempts:(unsigned int)a15 payload:(id)a16 completionHandler:(id)aBlock;
@end

@implementation DiagnosticPipelineRapidServiceFunctionsClientObjc

- (void)submitRapidPayloadWithBuildVariant:(id)a3 deviceCategory:(id)a4 deviceModel:(id)a5 platform:(id)a6 teamID:(id)a7 issueCategory:(id)a8 contextDictionaryData:(id)a9 requestTime:(unint64_t)a10 build:(id)a11 logType:(id)a12 logSize:(unint64_t)a13 fileName:(id)a14 uploadAttempts:(unsigned int)a15 payload:(id)a16 completionHandler:(id)aBlock
{
  v55 = _Block_copy(aBlock);
  v58 = sub_232973CE8();
  v62 = v17;
  v57 = sub_232973CE8();
  v61 = v18;
  v56 = sub_232973CE8();
  v60 = v19;
  v54 = sub_232973CE8();
  v59 = v20;
  v53 = sub_232973CE8();
  v64 = v21;
  v52 = sub_232973CE8();
  v63 = v22;
  v23 = a11;
  v24 = a12;
  v25 = a14;
  v26 = a16;
  v27 = self;
  if (a9)
  {
    v28 = a9;
    v51 = sub_232973AF8();
    v30 = v29;
  }

  else
  {
    v51 = 0;
    v30 = 0xF000000000000000;
  }

  v31 = sub_232973CE8();
  v33 = v32;

  v34 = sub_232973CE8();
  v36 = v35;

  v37 = sub_232973CE8();
  v39 = v38;

  v40 = sub_232973AF8();
  v42 = v41;
  v50 = v41;

  v43 = swift_allocObject();
  *(v43 + 16) = v55;
  *(&v49 + 1) = v37;
  *(&v48 + 1) = v36;
  *&v49 = a13;
  *&v48 = v34;
  *(&v47 + 1) = v31;
  *(&v46 + 1) = v30;
  *&v47 = a10;
  *&v46 = v51;
  *&v45 = v52;
  *(&v45 + 1) = v63;
  *&v44 = v53;
  *(&v44 + 1) = v64;
  DiagnosticPipelineRapidServiceFunctionsClient.submitRapidPayload(buildVariant:deviceCategory:deviceModel:platform:teamID:issueCategory:contextDictionaryData:requestTime:build:logType:logSize:fileName:uploadAttempts:payload:completionHandler:)(v58, v62, v57, v61, v56, v60, v54, v59, v44, v45, v46, v47, v33, v48, v49, v39, a15, v40, v42, sub_2329696C8, v43);

  sub_2329696D0(v40, v50);

  sub_232969724(v51, v30);
}

- (DiagnosticPipelineRapidServiceFunctionsClientObjc)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end