@interface NSExtension(IntentsCore)
- (void)_intents_startExtensionConnectionWithExtensionInputItems:()IntentsCore intent:queue:completion:;
@end

@implementation NSExtension(IntentsCore)

- (void)_intents_startExtensionConnectionWithExtensionInputItems:()IntentsCore intent:queue:completion:
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v43 = [a1 _plugIn];
  v14 = [v43 userElection];
  v15 = MEMORY[0x277CD38C8];
  v44 = v11;
  if ((v14 & 0x100) != 0)
  {
    v19 = *MEMORY[0x277CD38C8];
    v17 = v10;
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v55 = "[NSExtension(IntentsCore) _intents_startExtensionConnectionWithExtensionInputItems:intent:queue:completion:]";
      v56 = 2112;
      v57 = a1;
      _os_log_impl(&dword_255503000, v19, OS_LOG_TYPE_INFO, "%s Extension loading timeout disabled for %@ for debugging.", buf, 0x16u);
    }

    v18 = 0;
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CD4300]);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __109__NSExtension_IntentsCore___intents_startExtensionConnectionWithExtensionInputItems_intent_queue_completion___block_invoke;
    v49[3] = &unk_2797E8068;
    v17 = v10;
    v50 = v10;
    v51 = v12;
    v18 = [v16 initWithTimeoutInterval:v11 onQueue:v49 timeoutHandler:10.0];
  }

  [v18 start];
  v20 = os_signpost_id_generate(*v15);
  v21 = *v15;
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v23 = [a1 identifier];
    *buf = 138412290;
    v55 = v23;
    _os_signpost_emit_with_name_impl(&dword_255503000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "INSignpostExtensionLaunch", "%@", buf, 0xCu);
  }

  v48 = 0;
  v24 = [a1 beginExtensionRequestWithOptions:1 inputItems:v13 error:&v48];

  v25 = v48;
  v26 = *v15;
  v27 = v26;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    v28 = [a1 identifier];
    *buf = 138412290;
    v55 = v28;
    _os_signpost_emit_with_name_impl(&dword_255503000, v27, OS_SIGNPOST_INTERVAL_END, v20, "INSignpostExtensionLaunch", "%@", buf, 0xCu);
  }

  [v18 cancel];
  if (!v25)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_22;
    }

    v34 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v55 = "[NSExtension(IntentsCore) _intents_startExtensionConnectionWithExtensionInputItems:intent:queue:completion:]";
      v56 = 2114;
      v57 = v24;
      _os_log_error_impl(&dword_255503000, v34, OS_LOG_TYPE_ERROR, "%s UNEXPECTED: requestIdentifier should be of class NSUUID: %{public}@", buf, 0x16u);
    }

    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD3848] code:5001 userInfo:0];
    if (!v33)
    {
      goto LABEL_22;
    }

LABEL_21:
    (*(v12 + 2))(v12, 0, v33);
    goto LABEL_30;
  }

  v29 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v55 = "[NSExtension(IntentsCore) _intents_startExtensionConnectionWithExtensionInputItems:intent:queue:completion:]";
    v56 = 2114;
    v57 = v25;
    _os_log_error_impl(&dword_255503000, v29, OS_LOG_TYPE_ERROR, "%s Error with extension request %{public}@", buf, 0x16u);
  }

  v30 = MEMORY[0x277CCA9B8];
  v31 = *MEMORY[0x277CD3848];
  v52 = *MEMORY[0x277CCA7E8];
  v53 = v25;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v33 = [v30 errorWithDomain:v31 code:5001 userInfo:v32];

  if (v33)
  {
    goto LABEL_21;
  }

LABEL_22:
  v35 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v55 = "[NSExtension(IntentsCore) _intents_startExtensionConnectionWithExtensionInputItems:intent:queue:completion:]";
    v56 = 2112;
    v57 = v24;
    _os_log_impl(&dword_255503000, v35, OS_LOG_TYPE_INFO, "%s Extension successfully brought up with request identifier %@", buf, 0x16u);
  }

  v36 = [a1 _extensionContextForUUID:v24];
  v37 = v36;
  if (v36)
  {
    v38 = [v36 _auxiliaryConnection];
    v39 = [v38 remoteObjectProxy];

    v40 = [v17 identifier];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __109__NSExtension_IntentsCore___intents_startExtensionConnectionWithExtensionInputItems_intent_queue_completion___block_invoke_4;
    v45[3] = &unk_2797E8068;
    v47 = v12;
    v46 = v24;
    [v39 beginTransactionWithIntentIdentifier:v40 completion:v45];

    v33 = 0;
  }

  else
  {
    v41 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v55 = "[NSExtension(IntentsCore) _intents_startExtensionConnectionWithExtensionInputItems:intent:queue:completion:]";
      v56 = 2114;
      v57 = v24;
      _os_log_error_impl(&dword_255503000, v41, OS_LOG_TYPE_ERROR, "%s UNEXPECTED: extension context host is nil: %{public}@", buf, 0x16u);
    }

    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD3848] code:5001 userInfo:0];
    (*(v12 + 2))(v12, 0, v33);
  }

LABEL_30:
  v42 = *MEMORY[0x277D85DE8];
}

@end