@interface INSExtensionServiceIntentExecutor
- (INSExtensionServiceIntentExecutor)initWithIntent:(id)intent extensionProxy:(id)proxy queue:(id)queue;
- (INSExtensionServiceIntentExecutor)initWithVoiceShortcutClient:(id)client intent:(id)intent;
- (void)sendAceCommand:(id)command completionHandler:(id)handler;
@end

@implementation INSExtensionServiceIntentExecutor

- (void)sendAceCommand:(id)command completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  voiceShortcutClient = [(INSExtensionServiceIntentExecutor *)self voiceShortcutClient];

  if (voiceShortcutClient)
  {
    mEMORY[0x277CD3A88] = [MEMORY[0x277CD3A88] sharedResolver];
    intent = [(INSExtensionServiceIntentExecutor *)self intent];
    launchId = [intent launchId];

    v12 = [mEMORY[0x277CD3A88] counterpartIdentifiersForLocalIdentifier:launchId];
    anyObject = [v12 anyObject];
    v14 = anyObject;
    if (anyObject)
    {
      v15 = anyObject;
    }

    else
    {
      v15 = launchId;
    }

    v16 = v15;

    intent2 = [(INSExtensionServiceIntentExecutor *)self intent];
    [intent2 _setLaunchId:v16];

    ins_jsonEncodedIntent = [commandCopy ins_jsonEncodedIntent];

    if (ins_jsonEncodedIntent)
    {
      intent3 = [(INSExtensionServiceIntentExecutor *)self intent];
      v20 = INSJSONEncodedIntent(intent3);
      [commandCopy ins_setJSONEncodedIntent:v20];
    }

    else
    {
      ins_protobufEncodedIntent = [commandCopy ins_protobufEncodedIntent];

      if (!ins_protobufEncodedIntent)
      {
LABEL_12:
        [commandCopy setRefId:0];
        voiceShortcutClient2 = [(INSExtensionServiceIntentExecutor *)self voiceShortcutClient];
        dictionary = [commandCopy dictionary];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __70__INSExtensionServiceIntentExecutor_sendAceCommand_completionHandler___block_invoke;
        v31[3] = &unk_2797EA8D8;
        v32 = handlerCopy;
        [voiceShortcutClient2 sendAceCommandDictionary:dictionary completion:v31];

        goto LABEL_13;
      }

      intent3 = objc_alloc_init(MEMORY[0x277D47418]);
      intent4 = [(INSExtensionServiceIntentExecutor *)self intent];
      backingStore = [intent4 backingStore];
      data = [backingStore data];
      [intent3 setData:data];

      intent5 = [(INSExtensionServiceIntentExecutor *)self intent];
      typeName = [intent5 typeName];
      [intent3 setTypeName:typeName];

      [commandCopy ins_setProtobufEncodedIntent:intent3];
    }

    goto LABEL_12;
  }

  extensionProxy = [(INSExtensionServiceIntentExecutor *)self extensionProxy];

  if (extensionProxy)
  {
    mEMORY[0x277CD3A88] = [(INSExtensionServiceIntentExecutor *)self intent];
    launchId = [(INSExtensionServiceIntentExecutor *)self extensionProxy];
    queue = [(INSExtensionServiceIntentExecutor *)self queue];
    [commandCopy ins_sendIntent:mEMORY[0x277CD3A88] toExtensionProxy:launchId onQueue:queue completionHandler:handlerCopy];

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

- (INSExtensionServiceIntentExecutor)initWithIntent:(id)intent extensionProxy:(id)proxy queue:(id)queue
{
  intentCopy = intent;
  proxyCopy = proxy;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = INSExtensionServiceIntentExecutor;
  v12 = [(INSExtensionServiceIntentExecutor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_intent, intent);
    objc_storeStrong(&v13->_extensionProxy, proxy);
    v13->_queue = queueCopy;
  }

  return v13;
}

- (INSExtensionServiceIntentExecutor)initWithVoiceShortcutClient:(id)client intent:(id)intent
{
  clientCopy = client;
  intentCopy = intent;
  v12.receiver = self;
  v12.super_class = INSExtensionServiceIntentExecutor;
  v9 = [(INSExtensionServiceIntentExecutor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_voiceShortcutClient, client);
    objc_storeStrong(&v10->_intent, intent);
  }

  return v10;
}

@end