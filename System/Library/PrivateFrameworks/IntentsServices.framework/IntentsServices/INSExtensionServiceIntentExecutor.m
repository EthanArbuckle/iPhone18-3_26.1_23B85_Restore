@interface INSExtensionServiceIntentExecutor
- (INSExtensionServiceIntentExecutor)initWithIntent:(id)a3 extensionProxy:(id)a4 queue:(id)a5;
- (INSExtensionServiceIntentExecutor)initWithVoiceShortcutClient:(id)a3 intent:(id)a4;
- (void)sendAceCommand:(id)a3 completionHandler:(id)a4;
@end

@implementation INSExtensionServiceIntentExecutor

- (void)sendAceCommand:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INSExtensionServiceIntentExecutor *)self voiceShortcutClient];

  if (v8)
  {
    v9 = [MEMORY[0x277CD3A88] sharedResolver];
    v10 = [(INSExtensionServiceIntentExecutor *)self intent];
    v11 = [v10 launchId];

    v12 = [v9 counterpartIdentifiersForLocalIdentifier:v11];
    v13 = [v12 anyObject];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }

    v16 = v15;

    v17 = [(INSExtensionServiceIntentExecutor *)self intent];
    [v17 _setLaunchId:v16];

    v18 = [v6 ins_jsonEncodedIntent];

    if (v18)
    {
      v19 = [(INSExtensionServiceIntentExecutor *)self intent];
      v20 = INSJSONEncodedIntent(v19);
      [v6 ins_setJSONEncodedIntent:v20];
    }

    else
    {
      v23 = [v6 ins_protobufEncodedIntent];

      if (!v23)
      {
LABEL_12:
        [v6 setRefId:0];
        v29 = [(INSExtensionServiceIntentExecutor *)self voiceShortcutClient];
        v30 = [v6 dictionary];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __70__INSExtensionServiceIntentExecutor_sendAceCommand_completionHandler___block_invoke;
        v31[3] = &unk_2797EA8D8;
        v32 = v7;
        [v29 sendAceCommandDictionary:v30 completion:v31];

        goto LABEL_13;
      }

      v19 = objc_alloc_init(MEMORY[0x277D47418]);
      v24 = [(INSExtensionServiceIntentExecutor *)self intent];
      v25 = [v24 backingStore];
      v26 = [v25 data];
      [v19 setData:v26];

      v27 = [(INSExtensionServiceIntentExecutor *)self intent];
      v28 = [v27 typeName];
      [v19 setTypeName:v28];

      [v6 ins_setProtobufEncodedIntent:v19];
    }

    goto LABEL_12;
  }

  v21 = [(INSExtensionServiceIntentExecutor *)self extensionProxy];

  if (v21)
  {
    v9 = [(INSExtensionServiceIntentExecutor *)self intent];
    v11 = [(INSExtensionServiceIntentExecutor *)self extensionProxy];
    v22 = [(INSExtensionServiceIntentExecutor *)self queue];
    [v6 ins_sendIntent:v9 toExtensionProxy:v11 onQueue:v22 completionHandler:v7];

LABEL_13:
  }
}

void __70__INSExtensionServiceIntentExecutor_sendAceCommand_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = MEMORY[0x277D470E0];
    v6 = a3;
    v8 = [v5 aceObjectWithDictionary:a2];
    (*(v3 + 16))(v3);
  }

  else
  {
    v7 = *(v3 + 16);
    v8 = a3;
    v7(v3, 0);
  }
}

- (INSExtensionServiceIntentExecutor)initWithIntent:(id)a3 extensionProxy:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = INSExtensionServiceIntentExecutor;
  v12 = [(INSExtensionServiceIntentExecutor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_intent, a3);
    objc_storeStrong(&v13->_extensionProxy, a4);
    v13->_queue = v11;
  }

  return v13;
}

- (INSExtensionServiceIntentExecutor)initWithVoiceShortcutClient:(id)a3 intent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = INSExtensionServiceIntentExecutor;
  v9 = [(INSExtensionServiceIntentExecutor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_voiceShortcutClient, a3);
    objc_storeStrong(&v10->_intent, a4);
  }

  return v10;
}

@end