void sub_256131508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id LBLocalSpeechServiceGetXPCInterface()
{
  v30[6] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286836F20];
  v1 = MEMORY[0x277CBEB98];
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v30[2] = objc_opt_class();
  v30[3] = objc_opt_class();
  v30[4] = objc_opt_class();
  v30[5] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:6];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_startSpeechRecognitionResultsWithSettings_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x277CBEB98];
  v29 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_stopSpeechRecognitionWithReason_requestId_ argumentIndex:1 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_disableLocalSpeechRecognitionForRequestId_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_sendSpeechCorrectionInfo_interactionIdentifier_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x277CBEB98];
  v26 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_sendSpeechCorrectionInfo_interactionIdentifier_ argumentIndex:1 ofReply:0];

  v16 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_updateTCUState_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v21 = [v19 setWithArray:v20];
  [v0 setClasses:v21 forSelector:sel_sendVisualContextAndCorrectionsInfo_interactionIdentifier_ argumentIndex:0 ofReply:0];

  v22 = *MEMORY[0x277D85DE8];

  return v0;
}

void sub_2561322E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id LBLocalSpeechServiceDelegateGetXPCInterface()
{
  v147[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286832C60];
  v1 = MEMORY[0x277CBEB98];
  v147[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:1];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_localSpeechServiceDidReceivedPartialResultWithRequestId_language_tokens_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x277CBEB98];
  v146[0] = objc_opt_class();
  v146[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_localSpeechServiceDidReceivedPartialResultWithRequestId_language_tokens_ argumentIndex:2 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v145 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:1];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_localSpeechServiceDidReceivedPartialResultWithRequestId_language_tokens_metadata_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x277CBEB98];
  v144[0] = objc_opt_class();
  v144[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:2];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_localSpeechServiceDidReceivedPartialResultWithRequestId_language_tokens_metadata_ argumentIndex:2 ofReply:0];

  v13 = MEMORY[0x277CBEB98];
  v143 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:1];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_localSpeechServiceDidReceivedPartialResultWithRequestId_language_tokens_metadata_ argumentIndex:3 ofReply:0];

  v16 = MEMORY[0x277CBEB98];
  v142 = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v142 count:1];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_localSpeechServiceDidReceivedPartialResultWithRequestId_language_speechPackage_metadata_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x277CBEB98];
  v141[0] = objc_opt_class();
  v141[1] = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:2];
  v21 = [v19 setWithArray:v20];
  [v0 setClasses:v21 forSelector:sel_localSpeechServiceDidReceivedPartialResultWithRequestId_language_speechPackage_metadata_ argumentIndex:2 ofReply:0];

  v22 = MEMORY[0x277CBEB98];
  v140 = objc_opt_class();
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v140 count:1];
  v24 = [v22 setWithArray:v23];
  [v0 setClasses:v24 forSelector:sel_localSpeechServiceDidReceivedPartialResultWithRequestId_language_speechPackage_metadata_ argumentIndex:3 ofReply:0];

  v25 = MEMORY[0x277CBEB98];
  v139 = objc_opt_class();
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
  v27 = [v25 setWithArray:v26];
  [v0 setClasses:v27 forSelector:sel_localSpeechServiceDidReceivedFinalResultWithRequestId_speechPackage_ argumentIndex:0 ofReply:0];

  v28 = MEMORY[0x277CBEB98];
  v138 = objc_opt_class();
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
  v30 = [v28 setWithArray:v29];
  [v0 setClasses:v30 forSelector:sel_localSpeechServiceDidReceivedFinalResultWithRequestId_speechPackage_ argumentIndex:1 ofReply:0];

  v31 = MEMORY[0x277CBEB98];
  v137 = objc_opt_class();
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
  v33 = [v31 setWithArray:v32];
  [v0 setClasses:v33 forSelector:sel_localSpeechServiceDidReceivedFinalResultWithRequestId_speechPackage_metadata_ argumentIndex:0 ofReply:0];

  v34 = MEMORY[0x277CBEB98];
  v136 = objc_opt_class();
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
  v36 = [v34 setWithArray:v35];
  [v0 setClasses:v36 forSelector:sel_localSpeechServiceDidReceivedFinalResultWithRequestId_speechPackage_metadata_ argumentIndex:1 ofReply:0];

  v37 = MEMORY[0x277CBEB98];
  v135 = objc_opt_class();
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v135 count:1];
  v39 = [v37 setWithArray:v38];
  [v0 setClasses:v39 forSelector:sel_localSpeechServiceDidReceivedFinalResultWithRequestId_speechPackage_metadata_ argumentIndex:2 ofReply:0];

  v40 = MEMORY[0x277CBEB98];
  v134 = objc_opt_class();
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
  v42 = [v40 setWithArray:v41];
  [v0 setClasses:v42 forSelector:sel_localSpeechServiceDidCompletionRecognitionWithStatistics_requestId_endpointMode_error_ argumentIndex:1 ofReply:0];

  v43 = MEMORY[0x277CBEB98];
  v133 = objc_opt_class();
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
  v45 = [v43 setWithArray:v44];
  [v0 setClasses:v45 forSelector:sel_localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId_rcId_speechPackage_duration_ argumentIndex:0 ofReply:0];

  v46 = MEMORY[0x277CBEB98];
  v132 = objc_opt_class();
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
  v48 = [v46 setWithArray:v47];
  [v0 setClasses:v48 forSelector:sel_localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId_rcId_speechPackage_duration_ argumentIndex:2 ofReply:0];

  v49 = MEMORY[0x277CBEB98];
  v131 = objc_opt_class();
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
  v51 = [v49 setWithArray:v50];
  [v0 setClasses:v51 forSelector:sel_localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId_rcId_speechPackage_duration_metadata_ argumentIndex:0 ofReply:0];

  v52 = MEMORY[0x277CBEB98];
  v130 = objc_opt_class();
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
  v54 = [v52 setWithArray:v53];
  [v0 setClasses:v54 forSelector:sel_localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId_rcId_speechPackage_duration_metadata_ argumentIndex:2 ofReply:0];

  v55 = MEMORY[0x277CBEB98];
  v129 = objc_opt_class();
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
  v57 = [v55 setWithArray:v56];
  [v0 setClasses:v57 forSelector:sel_localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId_rcId_speechPackage_duration_metadata_ argumentIndex:4 ofReply:0];

  v58 = MEMORY[0x277CBEB98];
  v128 = objc_opt_class();
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
  v60 = [v58 setWithArray:v59];
  [v0 setClasses:v60 forSelector:sel_localSpeechServiceDidReceivedEagerResultWithRequestId_rcId_shouldAccept_mitigationSignal_featuresToLog_ argumentIndex:0 ofReply:0];

  v61 = MEMORY[0x277CBEB98];
  v127 = objc_opt_class();
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
  v63 = [v61 setWithArray:v62];
  [v0 setClasses:v63 forSelector:sel_localSpeechServiceDidReceivedEagerResultWithRequestId_rcId_shouldAccept_mitigationSignal_featuresToLog_ argumentIndex:1 ofReply:0];

  v64 = MEMORY[0x277CBEB98];
  v126[0] = objc_opt_class();
  v126[1] = objc_opt_class();
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:2];
  v66 = [v64 setWithArray:v65];
  [v0 setClasses:v66 forSelector:sel_localSpeechServiceDidReceivedEagerResultWithRequestId_rcId_shouldAccept_mitigationSignal_featuresToLog_ argumentIndex:4 ofReply:0];

  v67 = MEMORY[0x277CBEB98];
  v125 = objc_opt_class();
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
  v69 = [v67 setWithArray:v68];
  [v0 setClasses:v69 forSelector:sel_localSpeechServiceDidReceivedVoiceIdScoreCard_ argumentIndex:0 ofReply:0];

  v70 = MEMORY[0x277CBEB98];
  v124 = objc_opt_class();
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v124 count:1];
  v72 = [v70 setWithArray:v71];
  [v0 setClasses:v72 forSelector:sel_localSpeechServiceDidReceivedFinalResultCandidateWithRequestId_speechPackage_ argumentIndex:1 ofReply:0];

  v73 = MEMORY[0x277CBEB98];
  v123 = objc_opt_class();
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v123 count:1];
  v75 = [v73 setWithArray:v74];
  [v0 setClasses:v75 forSelector:sel_localSpeechServiceDidReceivedVoiceCommandCandidateWithRequestId_speechPackage_metadata_ argumentIndex:0 ofReply:0];

  v76 = MEMORY[0x277CBEB98];
  v122 = objc_opt_class();
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v122 count:1];
  v78 = [v76 setWithArray:v77];
  [v0 setClasses:v78 forSelector:sel_localSpeechServiceDidReceivedVoiceCommandCandidateWithRequestId_speechPackage_metadata_ argumentIndex:1 ofReply:0];

  v79 = MEMORY[0x277CBEB98];
  v121 = objc_opt_class();
  v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
  v81 = [v79 setWithArray:v80];
  [v0 setClasses:v81 forSelector:sel_localSpeechServiceDidReceivedVoiceCommandCandidateWithRequestId_speechPackage_metadata_ argumentIndex:2 ofReply:0];

  v82 = MEMORY[0x277CBEB98];
  v112 = 0;
  v113 = &v112;
  v114 = 0x2050000000;
  v83 = getSMTTRPCandidateClass_softClass;
  v115 = getSMTTRPCandidateClass_softClass;
  if (!getSMTTRPCandidateClass_softClass)
  {
    v107 = MEMORY[0x277D85DD0];
    v108 = 3221225472;
    v109 = __getSMTTRPCandidateClass_block_invoke;
    v110 = &unk_279823A60;
    v111 = &v112;
    __getSMTTRPCandidateClass_block_invoke(&v107);
    v83 = v113[3];
  }

  v84 = v83;
  _Block_object_dispose(&v112, 8);
  v120 = objc_opt_class();
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];
  v86 = [v82 setWithArray:v85];
  [v0 setClasses:v86 forSelector:sel_localSpeechServiceDidReceiveTRPCandidatePackage_ argumentIndex:0 ofReply:0];

  v87 = MEMORY[0x277CBEB98];
  v112 = 0;
  v113 = &v112;
  v114 = 0x2050000000;
  v88 = getSMTContinuityEndClass_softClass;
  v115 = getSMTContinuityEndClass_softClass;
  if (!getSMTContinuityEndClass_softClass)
  {
    v107 = MEMORY[0x277D85DD0];
    v108 = 3221225472;
    v109 = __getSMTContinuityEndClass_block_invoke;
    v110 = &unk_279823A60;
    v111 = &v112;
    __getSMTContinuityEndClass_block_invoke(&v107);
    v88 = v113[3];
  }

  v89 = v88;
  _Block_object_dispose(&v112, 8);
  v119 = objc_opt_class();
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v119 count:1];
  v91 = [v87 setWithArray:v90];
  [v0 setClasses:v91 forSelector:sel_localSpeechServiceDidReceiveContinuityEndDetected_ argumentIndex:0 ofReply:0];

  v92 = MEMORY[0x277CBEB98];
  v118[0] = objc_opt_class();
  v118[1] = objc_opt_class();
  v118[2] = objc_opt_class();
  v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:3];
  v94 = [v92 setWithArray:v93];
  [v0 setClasses:v94 forSelector:sel_localSpeechServiceDidReceiveTCUStateUpdate_ argumentIndex:0 ofReply:0];

  v95 = MEMORY[0x277CBEB98];
  v112 = 0;
  v113 = &v112;
  v114 = 0x2050000000;
  v96 = getSMTTRPDetectedClass_softClass;
  v115 = getSMTTRPDetectedClass_softClass;
  if (!getSMTTRPDetectedClass_softClass)
  {
    v107 = MEMORY[0x277D85DD0];
    v108 = 3221225472;
    v109 = __getSMTTRPDetectedClass_block_invoke;
    v110 = &unk_279823A60;
    v111 = &v112;
    __getSMTTRPDetectedClass_block_invoke(&v107);
    v96 = v113[3];
  }

  v97 = v96;
  _Block_object_dispose(&v112, 8);
  v117 = objc_opt_class();
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
  v99 = [v95 setWithArray:v98];
  [v0 setClasses:v99 forSelector:sel_localSpeechServiceDidReceiveTRPDetected_ argumentIndex:0 ofReply:0];

  v100 = MEMORY[0x277CBEB98];
  v112 = 0;
  v113 = &v112;
  v114 = 0x2050000000;
  v101 = getSMTMultiUserTRPCandidateClass_softClass;
  v115 = getSMTMultiUserTRPCandidateClass_softClass;
  if (!getSMTMultiUserTRPCandidateClass_softClass)
  {
    v107 = MEMORY[0x277D85DD0];
    v108 = 3221225472;
    v109 = __getSMTMultiUserTRPCandidateClass_block_invoke;
    v110 = &unk_279823A60;
    v111 = &v112;
    __getSMTMultiUserTRPCandidateClass_block_invoke(&v107);
    v101 = v113[3];
  }

  v102 = v101;
  _Block_object_dispose(&v112, 8);
  v116 = objc_opt_class();
  v103 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];
  v104 = [v100 setWithArray:v103];
  [v0 setClasses:v104 forSelector:sel_localSpeechServiceDidReceiveMultiUserTRPCandidatePackage_ argumentIndex:0 ofReply:0];

  v105 = *MEMORY[0x277D85DE8];

  return v0;
}

void sub_256133308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2561399F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSXPCClientClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __CoreSpeechLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_2798239D8;
    v9 = 0;
    CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreSpeechLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LBAudioCapture.m" lineNumber:23 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CSXPCClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCSXPCClientClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LBAudioCapture.m" lineNumber:24 description:{@"Unable to find class %s", "CSXPCClient"}];

LABEL_10:
    __break(1u);
  }

  getCSXPCClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreSpeechLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpeechLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getSMTTRPCandidateClass_block_invoke(uint64_t a1)
{
  SiriMessageTypesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SMTTRPCandidate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSMTTRPCandidateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSMTTRPCandidateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LBLocalSpeechService.m" lineNumber:30 description:{@"Unable to find class %s", "SMTTRPCandidate"}];

    __break(1u);
  }
}

void __getSMTContinuityEndClass_block_invoke(uint64_t a1)
{
  SiriMessageTypesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SMTContinuityEnd");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSMTContinuityEndClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSMTContinuityEndClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LBLocalSpeechService.m" lineNumber:31 description:{@"Unable to find class %s", "SMTContinuityEnd"}];

    __break(1u);
  }
}

void __getSMTTRPDetectedClass_block_invoke(uint64_t a1)
{
  SiriMessageTypesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SMTTRPDetected");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSMTTRPDetectedClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSMTTRPDetectedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LBLocalSpeechService.m" lineNumber:32 description:{@"Unable to find class %s", "SMTTRPDetected"}];

    __break(1u);
  }
}

void __getSMTMultiUserTRPCandidateClass_block_invoke(uint64_t a1)
{
  SiriMessageTypesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SMTMultiUserTRPCandidate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSMTMultiUserTRPCandidateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSMTMultiUserTRPCandidateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"LBLocalSpeechService.m" lineNumber:33 description:{@"Unable to find class %s", "SMTMultiUserTRPCandidate"}];

    __break(1u);
  }
}

void SiriMessageTypesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SiriMessageTypesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SiriMessageTypesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279823A80;
    v6 = 0;
    SiriMessageTypesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SiriMessageTypesLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SiriMessageTypesLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"LBLocalSpeechService.m" lineNumber:29 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __SiriMessageTypesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SiriMessageTypesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void LBLogInitIfNeeded()
{
  if (LBLogInitIfNeeded_once != -1)
  {
    dispatch_once(&LBLogInitIfNeeded_once, &__block_literal_global);
  }
}

void __LBLogInitIfNeeded_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_InitializingLo.isa);
  v0 = os_log_create(LBLoggingSubsystem, kLBLoggingContextFramework);
  v1 = LBLogContextFacilityLocalSRBridge;
  LBLogContextFacilityLocalSRBridge = v0;

  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = _dateFormatter;
  _dateFormatter = v2;

  v4 = _dateFormatter;
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  [_dateFormatter setDateFormat:@"yyyyMMdd-HHmmss"];
  v6 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "LBLogInitIfNeeded_block_invoke";
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s ::: LocalSRBridge logging initialized", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}