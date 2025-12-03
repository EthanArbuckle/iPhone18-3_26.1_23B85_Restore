@interface SGReverseTemplateJS
+ (id)fakeFlightInformationWithAirlineCode:(id)code flightNumber:(id)number flightDate:(id)date;
- (BOOL)shouldDownloadFull:(id)full;
- (SGReverseTemplateJS)init;
- (id)_callJSFunction:(id)function withArguments:(id)arguments;
- (id)_diffSchemas:(id)schemas withExpectedSchemas:(id)expectedSchemas;
- (id)_eventClassificationForEntity:(id)entity;
- (id)_getFlightReferencesAndReservationId:(id)id;
- (id)_mergeSchemas:(id)schemas withExpectedSchemas:(id)expectedSchemas;
- (id)_prepareArguments:(id)arguments;
- (id)_prepareEntity:(id)entity;
- (id)_privacyAwareLogsForMLExtractions:(id)extractions;
- (id)_resolveCandidatesForJSDict:(id)dict;
- (id)_stringFromMemoryPressureStatus:(unint64_t)status;
- (id)dictionaryFromTimezone:(id)timezone;
- (id)flightInformationWithAirlineCode:(id)code flightNumber:(id)number flightDate:(id)date;
- (id)formattedDate:(id)date withTimezone:(id)timezone;
- (id)getJSContext;
- (id)loadJSFromASCIIFile:(id)file;
- (id)loadTrieWithFileName:(id)name;
- (id)mappedArrayBufferForFileName:(id)name;
- (id)outputExceptionsFromOutput:(id)output;
- (id)payloadToOutputWithEntryPoint:(id)point arguments:(id)arguments;
- (id)preprocessPackedSGMessage:(id)message;
- (id)processLoadRequestWithFileName:(id)name;
- (id)reverseMapEntity:(id)entity forCategory:(id)category withSchemaExpectation:(id)expectation;
- (id)sfAirportToDictionnary:(id)dictionnary;
- (id)sfFlightStatusToString:(int)string;
- (id)sfFlightsToDictionary:(id)dictionary;
- (void)LLMSchemaToOutput:(id)output reply:(id)reply;
- (void)_handleMemoryPressureStatus:(unint64_t)status;
- (void)dealloc;
- (void)diffSchemas:(id)schemas withExpectedSchemas:(id)expectedSchemas reply:(id)reply;
- (void)emailToJsonLd:(id)ld reply:(id)reply;
- (void)emailToOutput:(id)output reply:(id)reply;
- (void)eventClassificationForEntity:(id)entity reply:(id)reply;
- (void)flightInformationWithAirlineCode:(id)code flightNumber:(id)number flightDate:(id)date reply:(id)reply;
- (void)freeJSContext;
- (void)getFlightReferencesAndReservationId:(id)id reply:(id)reply;
- (void)holdXpcTransactionForShortDelay;
- (void)initCurrentAsset;
- (void)mergeSchemas:(id)schemas withExpectedSchemas:(id)expectedSchemas reply:(id)reply;
- (void)parseHTML:(id)l reply:(id)reply;
- (void)payloadToOutputWithEntryPoint:(id)point arguments:(id)arguments reply:(id)reply;
- (void)privacyAwareLogsForMLExtractions:(id)extractions reply:(id)reply;
- (void)refreshAssetPath;
- (void)resolveCandidatesForJSDict:(id)dict reply:(id)reply;
- (void)schemaOrgToJsonLd:(id)ld reply:(id)reply;
- (void)schemaOrgToOutput:(id)output reply:(id)reply;
- (void)setAssetPath:(id)path;
- (void)shouldDownloadFull:(id)full reply:(id)reply;
- (void)textMessageToOutput:(id)output reply:(id)reply;
@end

@implementation SGReverseTemplateJS

- (id)getJSContext
{
  dispatch_assert_queue_V2(self->_queue);
  [(SGReverseTemplateJS *)self refreshAssetPath];
  jsContext = self->_jsContext;
  if (!jsContext)
  {
    if (self->_assetPath)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v4 = getJSVirtualMachineClass_softClass;
      v20 = getJSVirtualMachineClass_softClass;
      if (!getJSVirtualMachineClass_softClass)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __getJSVirtualMachineClass_block_invoke;
        v16[3] = &unk_278955BF0;
        v16[4] = &v17;
        __getJSVirtualMachineClass_block_invoke(v16);
        v4 = v18[3];
      }

      v5 = v4;
      _Block_object_dispose(&v17, 8);
      v6 = objc_opt_new();
      jsVM = self->_jsVM;
      self->_jsVM = v6;

      v8 = [objc_alloc(getJSContextClass()) initWithVirtualMachine:self->_jsVM];
      v9 = self->_jsContext;
      self->_jsContext = v8;

      [(JSContext *)self->_jsContext setName:@"SGReverseTemplateJS"];
      v10 = objc_opt_new();
      memoryMappedFiles = self->_memoryMappedFiles;
      self->_memoryMappedFiles = v10;

      v12 = objc_opt_new();
      memoryMappedFileNames = self->_memoryMappedFileNames;
      self->_memoryMappedFileNames = v12;

      v14 = sgEventsLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16[0]) = 0;
        _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_INFO, "SGReverseTemplateJS: initialized JS context.", v16, 2u);
      }

      [(SGReverseTemplateJS *)self initCurrentAsset];
      jsContext = self->_jsContext;
    }

    else
    {
      jsContext = 0;
    }
  }

  return jsContext;
}

- (void)refreshAssetPath
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = +[SGAsset asset];
  v8 = [v4 filesystemPathForAssetDataRelativePath:@"ReverseTemplateJS"];

  v5 = v8;
  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGReverseTemplateJS.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"assetPath"}];

    v5 = 0;
  }

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];
  [(SGReverseTemplateJS *)self setAssetPath:v6];
}

- (void)holdXpcTransactionForShortDelay
{
  v2 = [SGXpcTransaction transactionWithName:"SGReverseTemplateJS.holdXpcTransactionForShortDelay"];
  v3 = MEMORY[0x277D425A0];
  v4 = dispatch_get_global_queue(9, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SGReverseTemplateJS_holdXpcTransactionForShortDelay__block_invoke;
  v6[3] = &unk_278954A30;
  v7 = v2;
  v5 = v2;
  [v3 runAsyncOnQueue:v4 afterDelaySeconds:v6 block:0.1];
}

- (id)_prepareArguments:(id)arguments
{
  v20 = *MEMORY[0x277D85DE8];
  argumentsCopy = arguments;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(argumentsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = argumentsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [(SGReverseTemplateJS *)self _prepareEntity:v11];
          [v5 addObject:v12];
        }

        else
        {
          [v5 addObject:{v11, v15}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_prepareEntity:(id)entity
{
  entityCopy = entity;
  if (!self->_jsContext)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGReverseTemplateJS.m" lineNumber:1188 description:{@"Invalid parameter not satisfying: %@", @"_jsContext"}];
  }

  return entityCopy;
}

- (id)outputExceptionsFromOutput:(id)output
{
  v3 = [output objectForKeyedSubscript:@"exceptions"];
  v4 = [MEMORY[0x277D01FE0] simpleDedupe:v3];

  return v4;
}

- (void)schemaOrgToJsonLd:(id)ld reply:(id)reply
{
  ldCopy = ld;
  replyCopy = reply;
  v8 = MEMORY[0x277D42668];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SGReverseTemplateJS_schemaOrgToJsonLd_reply___block_invoke;
  v11[3] = &unk_278955A98;
  v11[4] = self;
  v12 = ldCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = ldCopy;
  [v8 runWithExceptionBarrier:v11];
}

void __47__SGReverseTemplateJS_schemaOrgToJsonLd_reply___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 preprocessPackedSGMessage:*(a1 + 40)];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 payloadToOutputWithEntryPoint:@"schemaOrgToJsonLdWithExceptions" arguments:v4];

  [*(a1 + 32) holdXpcTransactionForShortDelay];
  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)emailToJsonLd:(id)ld reply:(id)reply
{
  ldCopy = ld;
  replyCopy = reply;
  v8 = MEMORY[0x277D42668];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__SGReverseTemplateJS_emailToJsonLd_reply___block_invoke;
  v11[3] = &unk_278955A98;
  v11[4] = self;
  v12 = ldCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = ldCopy;
  [v8 runWithExceptionBarrier:v11];
}

void __43__SGReverseTemplateJS_emailToJsonLd_reply___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 preprocessPackedSGMessage:*(a1 + 40)];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 payloadToOutputWithEntryPoint:@"emailToJsonLdWithExceptions" arguments:v4];

  [*(a1 + 32) holdXpcTransactionForShortDelay];
  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)LLMSchemaToOutput:(id)output reply:(id)reply
{
  outputCopy = output;
  replyCopy = reply;
  v8 = MEMORY[0x277D42668];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SGReverseTemplateJS_LLMSchemaToOutput_reply___block_invoke;
  v11[3] = &unk_278955A98;
  v11[4] = self;
  v12 = outputCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = outputCopy;
  [v8 runWithExceptionBarrier:v11];
}

void __47__SGReverseTemplateJS_LLMSchemaToOutput_reply___block_invoke(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [v2 preprocessPackedSGMessage:a1[5]];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 payloadToOutputWithEntryPoint:@"LLMSchemaToOutputWithTiming" arguments:v4 reply:a1[6]];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)schemaOrgToOutput:(id)output reply:(id)reply
{
  outputCopy = output;
  replyCopy = reply;
  v8 = MEMORY[0x277D42668];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SGReverseTemplateJS_schemaOrgToOutput_reply___block_invoke;
  v11[3] = &unk_278955A98;
  v11[4] = self;
  v12 = outputCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = outputCopy;
  [v8 runWithExceptionBarrier:v11];
}

void __47__SGReverseTemplateJS_schemaOrgToOutput_reply___block_invoke(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [v2 preprocessPackedSGMessage:a1[5]];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 payloadToOutputWithEntryPoint:@"schemaOrgToOutputWithTiming" arguments:v4 reply:a1[6]];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)textMessageToOutput:(id)output reply:(id)reply
{
  outputCopy = output;
  replyCopy = reply;
  v8 = MEMORY[0x277D42668];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__SGReverseTemplateJS_textMessageToOutput_reply___block_invoke;
  v11[3] = &unk_278955A98;
  v11[4] = self;
  v12 = outputCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = outputCopy;
  [v8 runWithExceptionBarrier:v11];
}

void __49__SGReverseTemplateJS_textMessageToOutput_reply___block_invoke(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [v2 preprocessPackedSGMessage:a1[5]];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 payloadToOutputWithEntryPoint:@"textMessageToOutputWithTiming" arguments:v4 reply:a1[6]];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)emailToOutput:(id)output reply:(id)reply
{
  v54 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  replyCopy = reply;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__14927;
  v32 = __Block_byref_object_dispose__14928;
  v33 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __43__SGReverseTemplateJS_emailToOutput_reply___block_invoke;
  v27[3] = &unk_278950BE0;
  v27[4] = &v28;
  [(SGReverseTemplateJS *)self privacyAwareLogsForMLExtractions:outputCopy reply:v27];
  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = replyCopy;
    v23 = [v29[5] objectForKeyedSubscript:@"domain"];
    v22 = [v29[5] objectForKeyedSubscript:@"documentDateReceived"];
    v21 = [v29[5] objectForKeyedSubscript:@"hashedSubject"];
    v9 = [v29[5] objectForKeyedSubscript:@"privacyAwareSubject"];
    v10 = [v29[5] objectForKeyedSubscript:@"tdDistrib"];
    v11 = [v29[5] objectForKeyedSubscript:@"tdCount"];
    v12 = [v29[5] objectForKeyedSubscript:@"deviceLocale"];
    v13 = [v29[5] objectForKeyedSubscript:@"messageLength"];
    v14 = [v29[5] objectForKeyedSubscript:@"documentDateProcessed"];
    v15 = [v29[5] objectForKeyedSubscript:@"containsSchemaorg"];
    *buf = 138414594;
    v35 = v23;
    v36 = 2112;
    v37 = v22;
    v38 = 2112;
    v39 = v21;
    v40 = 2112;
    v41 = v9;
    v42 = 2112;
    v43 = v10;
    v44 = 2112;
    v45 = v11;
    v46 = 2112;
    v47 = v12;
    v48 = 2112;
    v49 = v13;
    v50 = 2112;
    v51 = v14;
    v52 = 2112;
    v53 = v15;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "Email: %@ %@ %@ %@ %@ %@ %@ %@ %@ %@", buf, 0x66u);

    replyCopy = v20;
  }

  v16 = MEMORY[0x277D42668];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __43__SGReverseTemplateJS_emailToOutput_reply___block_invoke_511;
  v24[3] = &unk_278955A98;
  v24[4] = self;
  v17 = outputCopy;
  v25 = v17;
  v18 = replyCopy;
  v26 = v18;
  [v16 runWithExceptionBarrier:v24];

  _Block_object_dispose(&v28, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __43__SGReverseTemplateJS_emailToOutput_reply___block_invoke_511(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [v2 preprocessPackedSGMessage:a1[5]];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 payloadToOutputWithEntryPoint:@"emailToOutputWithTiming" arguments:v4 reply:a1[6]];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)payloadToOutputWithEntryPoint:(id)point arguments:(id)arguments reply:(id)reply
{
  replyCopy = reply;
  v13 = [(SGReverseTemplateJS *)self payloadToOutputWithEntryPoint:point arguments:arguments];
  v9 = [v13 objectForKeyedSubscript:@"outputs"];
  v10 = [v13 objectForKeyedSubscript:@"sourceMetadata"];
  v11 = [(SGReverseTemplateJS *)self outputExceptionsFromOutput:v13];
  v12 = [v13 objectForKeyedSubscript:@"jsMessageLogs"];
  [(SGReverseTemplateJS *)self holdXpcTransactionForShortDelay];
  replyCopy[2](replyCopy, v9, v10, v11, v12);
}

- (void)parseHTML:(id)l reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  v8 = MEMORY[0x277D42668];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__SGReverseTemplateJS_parseHTML_reply___block_invoke;
  v11[3] = &unk_278955A98;
  v12 = lCopy;
  selfCopy = self;
  v14 = replyCopy;
  v9 = replyCopy;
  v10 = lCopy;
  [v8 runWithExceptionBarrier:v11];
}

void __39__SGReverseTemplateJS_parseHTML_reply___block_invoke(uint64_t a1)
{
  v3 = objc_opt_new();
  v2 = [v3 parseHTML:*(a1 + 32)];
  [*(a1 + 40) holdXpcTransactionForShortDelay];
  (*(*(a1 + 48) + 16))();
}

- (void)mergeSchemas:(id)schemas withExpectedSchemas:(id)expectedSchemas reply:(id)reply
{
  schemasCopy = schemas;
  expectedSchemasCopy = expectedSchemas;
  replyCopy = reply;
  v11 = MEMORY[0x277D42668];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__SGReverseTemplateJS_mergeSchemas_withExpectedSchemas_reply___block_invoke;
  v15[3] = &unk_27894E090;
  v15[4] = self;
  v16 = schemasCopy;
  v17 = expectedSchemasCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = expectedSchemasCopy;
  v14 = schemasCopy;
  [v11 runWithExceptionBarrier:v15];
}

void __62__SGReverseTemplateJS_mergeSchemas_withExpectedSchemas_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _mergeSchemas:*(a1 + 40) withExpectedSchemas:*(a1 + 48)];
  [*(a1 + 32) holdXpcTransactionForShortDelay];
  (*(*(a1 + 56) + 16))();
}

- (void)diffSchemas:(id)schemas withExpectedSchemas:(id)expectedSchemas reply:(id)reply
{
  schemasCopy = schemas;
  expectedSchemasCopy = expectedSchemas;
  replyCopy = reply;
  v11 = MEMORY[0x277D42668];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SGReverseTemplateJS_diffSchemas_withExpectedSchemas_reply___block_invoke;
  v15[3] = &unk_27894E090;
  v15[4] = self;
  v16 = schemasCopy;
  v17 = expectedSchemasCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = expectedSchemasCopy;
  v14 = schemasCopy;
  [v11 runWithExceptionBarrier:v15];
}

void __61__SGReverseTemplateJS_diffSchemas_withExpectedSchemas_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _diffSchemas:*(a1 + 40) withExpectedSchemas:*(a1 + 48)];
  [*(a1 + 32) holdXpcTransactionForShortDelay];
  (*(*(a1 + 56) + 16))();
}

- (void)resolveCandidatesForJSDict:(id)dict reply:(id)reply
{
  dictCopy = dict;
  replyCopy = reply;
  v8 = MEMORY[0x277D42668];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__SGReverseTemplateJS_resolveCandidatesForJSDict_reply___block_invoke;
  v11[3] = &unk_278955A98;
  v11[4] = self;
  v12 = dictCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = dictCopy;
  [v8 runWithExceptionBarrier:v11];
}

void __56__SGReverseTemplateJS_resolveCandidatesForJSDict_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolveCandidatesForJSDict:*(a1 + 40)];
  [*(a1 + 32) holdXpcTransactionForShortDelay];
  (*(*(a1 + 48) + 16))();
}

- (void)getFlightReferencesAndReservationId:(id)id reply:(id)reply
{
  idCopy = id;
  replyCopy = reply;
  v8 = MEMORY[0x277D42668];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__SGReverseTemplateJS_getFlightReferencesAndReservationId_reply___block_invoke;
  v11[3] = &unk_278955A98;
  v11[4] = self;
  v12 = idCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = idCopy;
  [v8 runWithExceptionBarrier:v11];
}

void __65__SGReverseTemplateJS_getFlightReferencesAndReservationId_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 preprocessPackedSGMessage:*(a1 + 40)];
  v4 = [v2 _getFlightReferencesAndReservationId:v3];

  [*(a1 + 32) holdXpcTransactionForShortDelay];
  (*(*(a1 + 48) + 16))();
}

- (void)privacyAwareLogsForMLExtractions:(id)extractions reply:(id)reply
{
  extractionsCopy = extractions;
  replyCopy = reply;
  v8 = MEMORY[0x277D42668];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SGReverseTemplateJS_privacyAwareLogsForMLExtractions_reply___block_invoke;
  v11[3] = &unk_278955A98;
  v11[4] = self;
  v12 = extractionsCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = extractionsCopy;
  [v8 runWithExceptionBarrier:v11];
}

void __62__SGReverseTemplateJS_privacyAwareLogsForMLExtractions_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 preprocessPackedSGMessage:*(a1 + 40)];
  v4 = [v2 _privacyAwareLogsForMLExtractions:v3];

  [*(a1 + 32) holdXpcTransactionForShortDelay];
  (*(*(a1 + 48) + 16))();
}

- (void)eventClassificationForEntity:(id)entity reply:(id)reply
{
  entityCopy = entity;
  replyCopy = reply;
  v8 = MEMORY[0x277D42668];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SGReverseTemplateJS_eventClassificationForEntity_reply___block_invoke;
  v11[3] = &unk_278955A98;
  v11[4] = self;
  v12 = entityCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = entityCopy;
  [v8 runWithExceptionBarrier:v11];
}

void __58__SGReverseTemplateJS_eventClassificationForEntity_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 preprocessPackedSGMessage:*(a1 + 40)];
  v4 = [v2 _eventClassificationForEntity:v3];

  [*(a1 + 32) holdXpcTransactionForShortDelay];
  (*(*(a1 + 48) + 16))();
}

- (void)shouldDownloadFull:(id)full reply:(id)reply
{
  fullCopy = full;
  replyCopy = reply;
  v8 = MEMORY[0x277D42668];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__SGReverseTemplateJS_shouldDownloadFull_reply___block_invoke;
  v11[3] = &unk_278955A98;
  v11[4] = self;
  v12 = fullCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = fullCopy;
  [v8 runWithExceptionBarrier:v11];
}

uint64_t __48__SGReverseTemplateJS_shouldDownloadFull_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 preprocessPackedSGMessage:*(a1 + 40)];
  [v2 shouldDownloadFull:v3];

  [*(a1 + 32) holdXpcTransactionForShortDelay];
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (id)payloadToOutputWithEntryPoint:(id)point arguments:(id)arguments
{
  pointCopy = point;
  argumentsCopy = arguments;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__14927;
  v25 = __Block_byref_object_dispose__14928;
  v26 = 0;
  queue = self->_queue;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __63__SGReverseTemplateJS_payloadToOutputWithEntryPoint_arguments___block_invoke;
  v16 = &unk_278953EC0;
  selfCopy = self;
  v9 = pointCopy;
  v18 = v9;
  v20 = &v21;
  v10 = argumentsCopy;
  v19 = v10;
  dispatch_sync(queue, &v13);
  v11 = [v22[5] copy];

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __63__SGReverseTemplateJS_payloadToOutputWithEntryPoint_arguments___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getJSContext];
  v4 = sgEventsLogHandle();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v22 = 138412290;
      v23 = v6;
      _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGReverseTemplateJS: Calling payloadToOutput with entry point: %@", &v22, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = [v3 objectForKeyedSubscript:*(a1 + 40)];
    v9 = [*(a1 + 32) _prepareArguments:*(a1 + 48)];
    v10 = [v7 _callJSFunction:v8 withArguments:v9];
    v11 = [v10 toDictionary];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [v3 exception];

    if (v14)
    {
      v15 = sgEventsLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v19 = *(a1 + 40);
        v20 = [v3 exception];
        v22 = 138412546;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        _os_log_fault_impl(&dword_231E60000, v15, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS payloadToOutputWithEntryPoint: JS exception during %@: %@", &v22, 0x16u);
      }
    }

    SGJSGarbageCollect([v3 JSGlobalContextRef]);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v21 = *(a1 + 40);
      v22 = 138412290;
      v23 = v21;
      _os_log_fault_impl(&dword_231E60000, v5, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS payloadToOutputWithEntryPoint: Tried to call %@ without JS assets", &v22, 0xCu);
    }

    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v18 = *MEMORY[0x277D85DE8];
}

- (id)reverseMapEntity:(id)entity forCategory:(id)category withSchemaExpectation:(id)expectation
{
  entityCopy = entity;
  categoryCopy = category;
  expectationCopy = expectation;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__14927;
  v26 = __Block_byref_object_dispose__14928;
  v27 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SGReverseTemplateJS_reverseMapEntity_forCategory_withSchemaExpectation___block_invoke;
  block[3] = &unk_27894E068;
  v20 = expectationCopy;
  v21 = &v22;
  block[4] = self;
  v18 = entityCopy;
  v19 = categoryCopy;
  v12 = expectationCopy;
  v13 = categoryCopy;
  v14 = entityCopy;
  dispatch_sync(queue, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

void __74__SGReverseTemplateJS_reverseMapEntity_forCategory_withSchemaExpectation___block_invoke(uint64_t a1)
{
  v41[3] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getJSContext];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);
    v8 = [v3 objectForKeyedSubscript:@"reverseMapForEntity"];
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = &stru_284703F00;
    if (!v9)
    {
      v9 = MEMORY[0x277CBEC10];
    }

    v12 = *(a1 + 56);
    if (*(a1 + 48))
    {
      v11 = *(a1 + 48);
    }

    v41[0] = v9;
    v41[1] = v11;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = MEMORY[0x277CBEC10];
    }

    v41[2] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
    v15 = [v10 _prepareArguments:v14];
    v16 = [v7 _callJSFunction:v8 withArguments:v15];
    v17 = [v16 toDictionary];

    if (v17)
    {
      [v17 objectForKeyedSubscript:@"taggedCharacterRanges"];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v18 = v37 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v35;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v34 + 1) + 8 * i);
            v24 = [SGTaggedCharacterRange alloc];
            v25 = [(SGTaggedCharacterRange *)v24 initWithDict:v23, v34];
            if (!v25)
            {
              v27 = sgEventsLogHandle();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_231E60000, v27, OS_LOG_TYPE_ERROR, "SGReverseTemplateJS: Unable to convert JS taggedCharacterRange to Objective-C", buf, 2u);
              }

              v28 = *(*(a1 + 64) + 8);
              v29 = *(v28 + 40);
              *(v28 + 40) = 0;

              goto LABEL_24;
            }

            v26 = v25;
            [*(*(*(a1 + 64) + 8) + 40) addObject:v25];
          }

          v20 = [v18 countByEnumeratingWithState:&v34 objects:v40 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:
    }

    v30 = [v3 exception];

    if (v30)
    {
      v31 = sgEventsLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        v33 = [v3 exception];
        *buf = 138412290;
        v39 = v33;
        _os_log_fault_impl(&dword_231E60000, v31, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS: JS Exception during reverseMapEntity %@", buf, 0xCu);
      }
    }

    SGJSGarbageCollect([v3 JSGlobalContextRef]);
  }

  else
  {
    v17 = sgEventsLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_231E60000, v17, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS: Tried to call reverseMapEntity without JS assets", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v2);
  v32 = *MEMORY[0x277D85DE8];
}

- (id)_mergeSchemas:(id)schemas withExpectedSchemas:(id)expectedSchemas
{
  schemasCopy = schemas;
  expectedSchemasCopy = expectedSchemas;
  v8 = sgEventsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "SGReverseTemplateJS: Calling JS to merge schemas", buf, 2u);
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14927;
  v22 = __Block_byref_object_dispose__14928;
  v23 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__SGReverseTemplateJS__mergeSchemas_withExpectedSchemas___block_invoke;
  v14[3] = &unk_278953EC0;
  v14[4] = self;
  v15 = expectedSchemasCopy;
  v16 = schemasCopy;
  v17 = buf;
  v10 = schemasCopy;
  v11 = expectedSchemasCopy;
  dispatch_sync(queue, v14);
  v12 = *(v19 + 5);

  _Block_object_dispose(buf, 8);

  return v12;
}

void __57__SGReverseTemplateJS__mergeSchemas_withExpectedSchemas___block_invoke(uint64_t a1)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getJSContext];
  if (v3)
  {
    v26[0] = @"expected";
    v26[1] = @"predicted";
    v4 = *(a1 + 48);
    v27[0] = *(a1 + 40);
    v27[1] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v6 = *(a1 + 32);
    v7 = [v3 objectForKeyedSubscript:@"mergeSchemasArrays"];
    v8 = *(a1 + 32);
    v25 = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v10 = [v8 _prepareArguments:v9];
    v11 = [v6 _callJSFunction:v7 withArguments:v10];
    v12 = [v11 toDictionary];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = sgEventsLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(*(*(a1 + 56) + 8) + 40);
      v23 = 138412290;
      v24 = v21;
      _os_log_debug_impl(&dword_231E60000, v15, OS_LOG_TYPE_DEBUG, "SGReverseTemplateJS: Called mergeSchemasArrays with result: %@", &v23, 0xCu);
    }

    v16 = [v3 exception];

    if (v16)
    {
      v17 = sgEventsLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v22 = [v3 exception];
        v23 = 138412290;
        v24 = v22;
        _os_log_fault_impl(&dword_231E60000, v17, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS _mergeSchemas: JS Exception during mergeSchemasArrays: %@", &v23, 0xCu);
      }
    }

    SGJSGarbageCollect([v3 JSGlobalContextRef]);
  }

  else
  {
    v18 = sgEventsLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v23) = 0;
      _os_log_fault_impl(&dword_231E60000, v18, OS_LOG_TYPE_FAULT, "Tried to call mergeSchemas without JS assets", &v23, 2u);
    }

    v19 = *(*(a1 + 56) + 8);
    v5 = *(v19 + 40);
    *(v19 + 40) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v20 = *MEMORY[0x277D85DE8];
}

- (id)_diffSchemas:(id)schemas withExpectedSchemas:(id)expectedSchemas
{
  schemasCopy = schemas;
  expectedSchemasCopy = expectedSchemas;
  v8 = sgEventsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "SGReverseTemplateJS: Calling JS to diff schemas", buf, 2u);
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14927;
  v22 = __Block_byref_object_dispose__14928;
  v23 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__SGReverseTemplateJS__diffSchemas_withExpectedSchemas___block_invoke;
  v14[3] = &unk_278953EC0;
  v14[4] = self;
  v15 = expectedSchemasCopy;
  v16 = schemasCopy;
  v17 = buf;
  v10 = schemasCopy;
  v11 = expectedSchemasCopy;
  dispatch_sync(queue, v14);
  v12 = *(v19 + 5);

  _Block_object_dispose(buf, 8);

  return v12;
}

void __56__SGReverseTemplateJS__diffSchemas_withExpectedSchemas___block_invoke(uint64_t a1)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getJSContext];
  if (v3)
  {
    v26[0] = @"expected";
    v26[1] = @"predicted";
    v4 = *(a1 + 48);
    v27[0] = *(a1 + 40);
    v27[1] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v6 = *(a1 + 32);
    v7 = [v3 objectForKeyedSubscript:@"diffSchemasArrays"];
    v8 = *(a1 + 32);
    v25 = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v10 = [v8 _prepareArguments:v9];
    v11 = [v6 _callJSFunction:v7 withArguments:v10];
    v12 = [v11 toDictionary];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = sgEventsLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(*(*(a1 + 56) + 8) + 40);
      v23 = 138412290;
      v24 = v21;
      _os_log_debug_impl(&dword_231E60000, v15, OS_LOG_TYPE_DEBUG, "SGReverseTemplateJS: Called diffSchemasArrays with result: %@", &v23, 0xCu);
    }

    v16 = [v3 exception];

    if (v16)
    {
      v17 = sgEventsLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v22 = [v3 exception];
        v23 = 138412290;
        v24 = v22;
        _os_log_fault_impl(&dword_231E60000, v17, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS _diffSchemas: JS Exception during diffSchemasArrays: %@", &v23, 0xCu);
      }
    }

    SGJSGarbageCollect([v3 JSGlobalContextRef]);
  }

  else
  {
    v18 = sgEventsLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v23) = 0;
      _os_log_fault_impl(&dword_231E60000, v18, OS_LOG_TYPE_FAULT, "Tried to call diffSchemas without JS assets", &v23, 2u);
    }

    v19 = *(*(a1 + 56) + 8);
    v5 = *(v19 + 40);
    *(v19 + 40) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v20 = *MEMORY[0x277D85DE8];
}

- (id)_getFlightReferencesAndReservationId:(id)id
{
  idCopy = id;
  v5 = sgEventsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGReverseTemplateJS: Calling JS to get flight references and reservation id given text message", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14927;
  v17 = __Block_byref_object_dispose__14928;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SGReverseTemplateJS__getFlightReferencesAndReservationId___block_invoke;
  block[3] = &unk_2789561A8;
  v11 = idCopy;
  v12 = buf;
  block[4] = self;
  v7 = idCopy;
  dispatch_sync(queue, block);
  v8 = *(v14 + 5);

  _Block_object_dispose(buf, 8);

  return v8;
}

void __60__SGReverseTemplateJS__getFlightReferencesAndReservationId___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getJSContext];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 objectForKeyedSubscript:@"getFlightReferencesAndReservationId"];
    v7 = *(a1 + 32);
    v25[0] = *(a1 + 40);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v9 = [v7 _prepareArguments:v8];
    v10 = [v5 _callJSFunction:v6 withArguments:v9];
    v11 = [v10 toDictionary];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = sgEventsLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(*(*(a1 + 48) + 8) + 40);
      v23 = 138412290;
      v24 = v21;
      _os_log_debug_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEBUG, "SGReverseTemplateJS: Called getFlightReferencesAndReservationId with result: %@", &v23, 0xCu);
    }

    v15 = [v4 exception];

    if (v15)
    {
      v16 = sgEventsLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v22 = [v4 exception];
        v23 = 138412290;
        v24 = v22;
        _os_log_fault_impl(&dword_231E60000, v16, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS: JS Exception during getFlightReferencesAndReservationId: %@", &v23, 0xCu);
      }
    }

    SGJSGarbageCollect([v4 JSGlobalContextRef]);
  }

  else
  {
    v17 = sgEventsLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v23) = 0;
      _os_log_fault_impl(&dword_231E60000, v17, OS_LOG_TYPE_FAULT, "Tried to call getFlightReferencesAndReservationId without JS assets", &v23, 2u);
    }

    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v20 = *MEMORY[0x277D85DE8];
}

- (id)_privacyAwareLogsForMLExtractions:(id)extractions
{
  extractionsCopy = extractions;
  v5 = sgEventsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGReverseTemplateJS: Calling JS to get privacy aware logging", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14927;
  v17 = __Block_byref_object_dispose__14928;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SGReverseTemplateJS__privacyAwareLogsForMLExtractions___block_invoke;
  block[3] = &unk_2789561A8;
  v11 = extractionsCopy;
  v12 = buf;
  block[4] = self;
  v7 = extractionsCopy;
  dispatch_sync(queue, block);
  v8 = *(v14 + 5);

  _Block_object_dispose(buf, 8);

  return v8;
}

void __57__SGReverseTemplateJS__privacyAwareLogsForMLExtractions___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getJSContext];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 objectForKeyedSubscript:@"getPrivacyAwareMlLogs"];
    v7 = *(a1 + 32);
    v25[0] = *(a1 + 40);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v9 = [v7 _prepareArguments:v8];
    v10 = [v5 _callJSFunction:v6 withArguments:v9];
    v11 = [v10 toDictionary];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = sgEventsLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(*(*(a1 + 48) + 8) + 40);
      v23 = 138412290;
      v24 = v21;
      _os_log_debug_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEBUG, "SGReverseTemplateJS: Called getPrivacyAwareMlLogs with result: %@", &v23, 0xCu);
    }

    v15 = [v4 exception];

    if (v15)
    {
      v16 = sgEventsLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v22 = [v4 exception];
        v23 = 138412290;
        v24 = v22;
        _os_log_fault_impl(&dword_231E60000, v16, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS: JS Exception during getPrivacyAwareMlLogs: %@", &v23, 0xCu);
      }
    }

    SGJSGarbageCollect([v4 JSGlobalContextRef]);
  }

  else
  {
    v17 = sgEventsLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v23) = 0;
      _os_log_fault_impl(&dword_231E60000, v17, OS_LOG_TYPE_FAULT, "Tried to call getPrivacyAwareMlLogs without JS assets", &v23, 2u);
    }

    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v20 = *MEMORY[0x277D85DE8];
}

- (id)_resolveCandidatesForJSDict:(id)dict
{
  dictCopy = dict;
  v5 = sgEventsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGReverseTemplateJS: Calling JS to resolve candidates", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14927;
  v17 = __Block_byref_object_dispose__14928;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SGReverseTemplateJS__resolveCandidatesForJSDict___block_invoke;
  block[3] = &unk_2789561A8;
  v11 = dictCopy;
  v12 = buf;
  block[4] = self;
  v7 = dictCopy;
  dispatch_sync(queue, block);
  v8 = *(v14 + 5);

  _Block_object_dispose(buf, 8);

  return v8;
}

void __51__SGReverseTemplateJS__resolveCandidatesForJSDict___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getJSContext];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 objectForKeyedSubscript:@"resolveCandidatesForJSDict"];
    v7 = *(a1 + 32);
    v24[0] = *(a1 + 40);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v9 = [v7 _prepareArguments:v8];
    v10 = [v5 _callJSFunction:v6 withArguments:v9];

    if (([v10 isNull] & 1) == 0)
    {
      v11 = [v10 toString];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v14 = sgEventsLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(*(*(a1 + 48) + 8) + 40);
      v22 = 138412290;
      v23 = v20;
      _os_log_debug_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEBUG, "SGReverseTemplateJS: Called resolveCandidatesForJSDict with result: %@", &v22, 0xCu);
    }

    v15 = [v4 exception];

    if (v15)
    {
      v16 = sgEventsLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v21 = [v4 exception];
        v22 = 138412290;
        v23 = v21;
        _os_log_fault_impl(&dword_231E60000, v16, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS: JS Exception during resolveCandidatesForJSDict: %@", &v22, 0xCu);
      }
    }

    SGJSGarbageCollect([v4 JSGlobalContextRef]);
  }

  else
  {
    v17 = sgEventsLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v22) = 0;
      _os_log_fault_impl(&dword_231E60000, v17, OS_LOG_TYPE_FAULT, "Tried to call resolveCandidatesForJSDict without JS assets", &v22, 2u);
    }

    v18 = *(*(a1 + 48) + 8);
    v10 = *(v18 + 40);
    *(v18 + 40) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v19 = *MEMORY[0x277D85DE8];
}

- (id)_eventClassificationForEntity:(id)entity
{
  entityCopy = entity;
  v5 = sgEventsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGReverseTemplateJS: Calling js for event classification", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14927;
  v17 = __Block_byref_object_dispose__14928;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SGReverseTemplateJS__eventClassificationForEntity___block_invoke;
  block[3] = &unk_2789561A8;
  v11 = entityCopy;
  v12 = buf;
  block[4] = self;
  v7 = entityCopy;
  dispatch_sync(queue, block);
  v8 = *(v14 + 5);

  _Block_object_dispose(buf, 8);

  return v8;
}

void __53__SGReverseTemplateJS__eventClassificationForEntity___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getJSContext];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 objectForKeyedSubscript:@"eventClassificationForEntity"];
    v7 = *(a1 + 32);
    v25[0] = *(a1 + 40);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v9 = [v7 _prepareArguments:v8];
    v10 = [v5 _callJSFunction:v6 withArguments:v9];
    v11 = [v10 toDictionary];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = sgEventsLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(*(*(a1 + 48) + 8) + 40);
      v23 = 138412290;
      v24 = v21;
      _os_log_debug_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEBUG, "SGReverseTemplateJS: Called eventClassificationForEntity with result: %@", &v23, 0xCu);
    }

    v15 = [v4 exception];

    if (v15)
    {
      v16 = sgEventsLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v22 = [v4 exception];
        v23 = 138412290;
        v24 = v22;
        _os_log_fault_impl(&dword_231E60000, v16, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS _eventClassificationForEntity: JS Exception during eventClassificationForEntity: %@", &v23, 0xCu);
      }
    }

    SGJSGarbageCollect([v4 JSGlobalContextRef]);
  }

  else
  {
    v17 = sgEventsLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v23) = 0;
      _os_log_fault_impl(&dword_231E60000, v17, OS_LOG_TYPE_FAULT, "Tried to call eventClassificationForEntity without JS assets", &v23, 2u);
    }

    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldDownloadFull:(id)full
{
  fullCopy = full;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SGReverseTemplateJS_shouldDownloadFull___block_invoke;
  block[3] = &unk_2789561A8;
  v9 = fullCopy;
  v10 = &v11;
  block[4] = self;
  v6 = fullCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

void __42__SGReverseTemplateJS_shouldDownloadFull___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) getJSContext];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 objectForKeyedSubscript:@"shouldDownloadFull"];
    v7 = *(a1 + 32);
    v20[0] = *(a1 + 40);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v9 = [v7 _prepareArguments:v8];
    v10 = [v5 _callJSFunction:v6 withArguments:v9];
    *(*(*(a1 + 48) + 8) + 24) = [v10 toBool];

    v11 = sgEventsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(*(*(a1 + 48) + 8) + 24);
      v18 = 67109120;
      LODWORD(v19) = v16;
      _os_log_debug_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEBUG, "SGReverseTemplateJS Called shouldDownloadFull with result = %d", &v18, 8u);
    }

    v12 = [v4 exception];

    if (v12)
    {
      v13 = sgEventsLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v17 = [v4 exception];
        v18 = 138412290;
        v19 = v17;
        _os_log_fault_impl(&dword_231E60000, v13, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS JS exception during shouldDownloadFull: %@.", &v18, 0xCu);
      }
    }

    SGJSGarbageCollect([v4 JSGlobalContextRef]);
  }

  else
  {
    v14 = sgEventsLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v18) = 0;
      _os_log_fault_impl(&dword_231E60000, v14, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS Tried to call shouldDownloadFull without JS assets", &v18, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x277D85DE8];
}

- (id)loadJSFromASCIIFile:(id)file
{
  v64 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  if (fileCopy)
  {
    context = objc_autoreleasePoolPush();
    v56 = 0;
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:fileCopy options:1 error:&v56];
    v55 = v56;
    if (v6)
    {
      lastPathComponent = [fileCopy lastPathComponent];
      if (!lastPathComponent)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SGReverseTemplateJS.m" lineNumber:771 description:@"File URL must be a valid path."];
      }

      [(NSMutableArray *)self->_memoryMappedFiles addObject:v6];
      [(NSMutableArray *)self->_memoryMappedFileNames addObject:lastPathComponent];
      jSGlobalContextRef = [(JSContext *)self->_jsContext JSGlobalContextRef];
      v57 = 0;
      v58 = &v57;
      v59 = 0x2020000000;
      v8 = getJSContextGetGroupSymbolLoc_ptr;
      v60 = getJSContextGetGroupSymbolLoc_ptr;
      if (!getJSContextGetGroupSymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getJSContextGetGroupSymbolLoc_block_invoke;
        v62 = &unk_278955BF0;
        v63 = &v57;
        v9 = JavaScriptCoreLibrary();
        v10 = dlsym(v9, "JSContextGetGroup");
        *(v63[1] + 24) = v10;
        getJSContextGetGroupSymbolLoc_ptr = *(v63[1] + 24);
        v8 = v58[3];
      }

      _Block_object_dispose(&v57, 8);
      if (v8)
      {
        v11 = v8(jSGlobalContextRef);
        absoluteString = [fileCopy absoluteString];
        v13 = absoluteString;
        uTF8String = [absoluteString UTF8String];
        v57 = 0;
        v58 = &v57;
        v59 = 0x2020000000;
        v15 = getJSStringCreateWithUTF8CStringSymbolLoc_ptr;
        v60 = getJSStringCreateWithUTF8CStringSymbolLoc_ptr;
        if (!getJSStringCreateWithUTF8CStringSymbolLoc_ptr)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getJSStringCreateWithUTF8CStringSymbolLoc_block_invoke;
          v62 = &unk_278955BF0;
          v63 = &v57;
          v16 = JavaScriptCoreLibrary();
          v17 = dlsym(v16, "JSStringCreateWithUTF8CString");
          *(v63[1] + 24) = v17;
          getJSStringCreateWithUTF8CStringSymbolLoc_ptr = *(v63[1] + 24);
          v15 = v58[3];
        }

        _Block_object_dispose(&v57, 8);
        if (v15)
        {
          v18 = v15(uTF8String);

          v19 = v6;
          bytes = [v6 bytes];
          v21 = [v6 length];
          v57 = 0;
          v58 = &v57;
          v59 = 0x2020000000;
          v22 = getJSScriptCreateReferencingImmortalASCIITextSymbolLoc_ptr;
          v60 = getJSScriptCreateReferencingImmortalASCIITextSymbolLoc_ptr;
          if (!getJSScriptCreateReferencingImmortalASCIITextSymbolLoc_ptr)
          {
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = __getJSScriptCreateReferencingImmortalASCIITextSymbolLoc_block_invoke;
            v62 = &unk_278955BF0;
            v63 = &v57;
            v23 = JavaScriptCoreLibrary();
            v24 = dlsym(v23, "JSScriptCreateReferencingImmortalASCIIText");
            *(v63[1] + 24) = v24;
            getJSScriptCreateReferencingImmortalASCIITextSymbolLoc_ptr = *(v63[1] + 24);
            v22 = v58[3];
          }

          _Block_object_dispose(&v57, 8);
          if (v22)
          {
            v25 = (v22)(v11, v18, 0, bytes, v21, 0, 0);
            v57 = 0;
            v58 = &v57;
            v59 = 0x2020000000;
            v26 = getJSStringReleaseSymbolLoc_ptr;
            v60 = getJSStringReleaseSymbolLoc_ptr;
            if (!getJSStringReleaseSymbolLoc_ptr)
            {
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __getJSStringReleaseSymbolLoc_block_invoke;
              v62 = &unk_278955BF0;
              v63 = &v57;
              v27 = JavaScriptCoreLibrary();
              v28 = dlsym(v27, "JSStringRelease");
              *(v63[1] + 24) = v28;
              getJSStringReleaseSymbolLoc_ptr = *(v63[1] + 24);
              v26 = v58[3];
            }

            _Block_object_dispose(&v57, 8);
            if (v26)
            {
              v26(v18);
              v57 = 0;
              v58 = &v57;
              v59 = 0x2020000000;
              v29 = getJSScriptEvaluateSymbolLoc_ptr;
              v60 = getJSScriptEvaluateSymbolLoc_ptr;
              if (!getJSScriptEvaluateSymbolLoc_ptr)
              {
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __getJSScriptEvaluateSymbolLoc_block_invoke;
                v62 = &unk_278955BF0;
                v63 = &v57;
                v30 = JavaScriptCoreLibrary();
                v31 = dlsym(v30, "JSScriptEvaluate");
                *(v63[1] + 24) = v31;
                getJSScriptEvaluateSymbolLoc_ptr = *(v63[1] + 24);
                v29 = v58[3];
              }

              _Block_object_dispose(&v57, 8);
              if (v29)
              {
                v32 = (v29)(jSGlobalContextRef, v25, 0, 0);
                v57 = 0;
                v58 = &v57;
                v59 = 0x2020000000;
                v33 = getJSScriptReleaseSymbolLoc_ptr;
                v60 = getJSScriptReleaseSymbolLoc_ptr;
                if (!getJSScriptReleaseSymbolLoc_ptr)
                {
                  *buf = MEMORY[0x277D85DD0];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __getJSScriptReleaseSymbolLoc_block_invoke;
                  v62 = &unk_278955BF0;
                  v63 = &v57;
                  v34 = JavaScriptCoreLibrary();
                  v35 = dlsym(v34, "JSScriptRelease");
                  *(v63[1] + 24) = v35;
                  getJSScriptReleaseSymbolLoc_ptr = *(v63[1] + 24);
                  v33 = v58[3];
                }

                _Block_object_dispose(&v57, 8);
                if (v33)
                {
                  v33(v25);
                  v36 = [getJSValueClass() valueWithJSValueRef:v32 inContext:self->_jsContext];
LABEL_30:

                  objc_autoreleasePoolPop(context);
                  goto LABEL_31;
                }

                currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
                v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void SGJSScriptRelease(JSScriptRef)"];
                [currentHandler2 handleFailureInFunction:v52 file:@"SGReverseTemplateJS.m" lineNumber:55 description:{@"%s", dlerror()}];
              }

              else
              {
                currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
                v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"JSValueRef SGJSScriptEvaluate(JSContextRef, JSScriptRef, JSValueRef, JSValueRef *)"}];
                [currentHandler3 handleFailureInFunction:v50 file:@"SGReverseTemplateJS.m" lineNumber:54 description:{@"%s", dlerror()}];
              }
            }

            else
            {
              currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
              v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void SGJSStringRelease(JSStringRef)"];
              [currentHandler4 handleFailureInFunction:v48 file:@"SGReverseTemplateJS.m" lineNumber:53 description:{@"%s", dlerror()}];
            }
          }

          else
          {
            currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
            v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"JSScriptRef SGJSScriptCreateReferencingImmortalASCIIText(JSContextGroupRef, JSStringRef, int, const char *, size_t, JSStringRef *, int *)"}];
            [currentHandler5 handleFailureInFunction:v46 file:@"SGReverseTemplateJS.m" lineNumber:52 description:{@"%s", dlerror()}];
          }
        }

        else
        {
          currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
          v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"JSStringRef SGJSStringCreateWithUTF8CString(const char *)"];
          [currentHandler6 handleFailureInFunction:v44 file:@"SGReverseTemplateJS.m" lineNumber:51 description:{@"%s", dlerror()}];
        }
      }

      else
      {
        currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"JSContextGroupRef SGJSContextGetGroup(JSContextRef)"];
        [currentHandler7 handleFailureInFunction:v42 file:@"SGReverseTemplateJS.m" lineNumber:50 description:{@"%s", dlerror()}];
      }

      __break(1u);
    }

    lastPathComponent = sgEventsLogHandle();
    if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      *&buf[4] = fileCopy;
      *&buf[12] = 2112;
      *&buf[14] = v55;
      _os_log_fault_impl(&dword_231E60000, lastPathComponent, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS loadJSFromASCIIFile: Error loading JS file %@: %@", buf, 0x16u);
    }

    v36 = 0;
    goto LABEL_30;
  }

  v37 = sgEventsLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_231E60000, v37, OS_LOG_TYPE_FAULT, "SGReverseTemplateJS loadJSFromASCIIFile: no file defined.", buf, 2u);
  }

  v36 = 0;
LABEL_31:

  v38 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)sfFlightStatusToString:(int)string
{
  if ((string - 1) > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_27894E0C8[string - 1];
  }
}

- (id)dictionaryFromTimezone:(id)timezone
{
  timezoneCopy = timezone;
  v4 = objc_opt_new();
  name = [timezoneCopy name];

  if (name)
  {
    name2 = [timezoneCopy name];
    [v4 setObject:name2 forKeyedSubscript:@"name"];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(timezoneCopy, "secondsFromGMT")}];
  [v4 setObject:v7 forKeyedSubscript:@"secondsFromGMT"];

  return v4;
}

- (id)sfAirportToDictionnary:(id)dictionnary
{
  dictionnaryCopy = dictionnary;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  code = [dictionnaryCopy code];
  if (code)
  {
    [v6 setObject:code forKeyedSubscript:@"code"];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null forKeyedSubscript:@"code"];
  }

  timezone = [dictionnaryCopy timezone];
  v10 = [(SGReverseTemplateJS *)self dictionaryFromTimezone:timezone];
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"timezone"];
  }

  else
  {
    null2 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null2 forKeyedSubscript:@"timezone"];
  }

  city = [dictionnaryCopy city];
  if (city)
  {
    [v6 setObject:city forKeyedSubscript:@"city"];
  }

  else
  {
    null3 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null3 forKeyedSubscript:@"city"];
  }

  street = [dictionnaryCopy street];
  if (street)
  {
    [v6 setObject:street forKeyedSubscript:@"street"];
  }

  else
  {
    null4 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null4 forKeyedSubscript:@"street"];
  }

  district = [dictionnaryCopy district];
  if (district)
  {
    [v6 setObject:district forKeyedSubscript:@"district"];
  }

  else
  {
    null5 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null5 forKeyedSubscript:@"district"];
  }

  state = [dictionnaryCopy state];
  if (state)
  {
    [v6 setObject:state forKeyedSubscript:@"state"];
  }

  else
  {
    null6 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null6 forKeyedSubscript:@"state"];
  }

  postalCode = [dictionnaryCopy postalCode];
  if (postalCode)
  {
    [v6 setObject:postalCode forKeyedSubscript:@"postalCode"];
  }

  else
  {
    null7 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null7 forKeyedSubscript:@"postalCode"];
  }

  countryCode = [dictionnaryCopy countryCode];
  if (countryCode)
  {
    [v6 setObject:countryCode forKeyedSubscript:@"countryCode"];
  }

  else
  {
    null8 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null8 forKeyedSubscript:@"countryCode"];
  }

  country = [dictionnaryCopy country];
  if (country)
  {
    [v6 setObject:country forKeyedSubscript:@"country"];
  }

  else
  {
    null9 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null9 forKeyedSubscript:@"country"];
  }

  name = [dictionnaryCopy name];
  if (name)
  {
    [v6 setObject:name forKeyedSubscript:@"name"];
  }

  else
  {
    null10 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null10 forKeyedSubscript:@"name"];
  }

  v28 = objc_opt_new();
  v29 = MEMORY[0x277CCABB0];
  location = [dictionnaryCopy location];
  [location lat];
  v31 = [v29 numberWithDouble:?];
  if (v31)
  {
    [v28 setObject:v31 forKeyedSubscript:@"lat"];
  }

  else
  {
    null11 = [MEMORY[0x277CBEB68] null];
    [v28 setObject:null11 forKeyedSubscript:@"lat"];
  }

  v33 = MEMORY[0x277CCABB0];
  location2 = [dictionnaryCopy location];
  [location2 lng];
  v35 = [v33 numberWithDouble:?];
  if (v35)
  {
    [v28 setObject:v35 forKeyedSubscript:@"lng"];
  }

  else
  {
    null12 = [MEMORY[0x277CBEB68] null];
    [v28 setObject:null12 forKeyedSubscript:@"lng"];
  }

  if (v28)
  {
    [v6 setObject:v28 forKeyedSubscript:@"location"];
  }

  else
  {
    null13 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:null13 forKeyedSubscript:@"location"];
  }

  v38 = [v6 copy];

  objc_autoreleasePoolPop(v5);

  return v38;
}

- (id)formattedDate:(id)date withTimezone:(id)timezone
{
  dateCopy = date;
  timezoneCopy = timezone;
  v9 = objc_autoreleasePoolPush();
  if (!dateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGReverseTemplateJS.m" lineNumber:676 description:{@"Can't create formattedDate, date is nil"}];
  }

  dateFormatter = self->_dateFormatter;
  if (dateFormatter)
  {
    if (timezoneCopy)
    {
LABEL_5:
      v11 = dateFormatter;
      [(NSISO8601DateFormatter *)v11 setTimeZone:timezoneCopy];
      v12 = [(NSISO8601DateFormatter *)v11 formatOptions]| 0x40;
      goto LABEL_8;
    }
  }

  else
  {
    dateFormatter = objc_opt_new();
    v13 = self->_dateFormatter;
    self->_dateFormatter = dateFormatter;

    if (timezoneCopy)
    {
      goto LABEL_5;
    }
  }

  v14 = MEMORY[0x277CBEBB0];
  v15 = dateFormatter;
  v16 = [v14 timeZoneForSecondsFromGMT:0];
  [(NSISO8601DateFormatter *)v15 setTimeZone:v16];

  v12 = [(NSISO8601DateFormatter *)v15 formatOptions]& 0xFFFFFFFFFFFFFFBFLL;
LABEL_8:
  [(NSISO8601DateFormatter *)dateFormatter setFormatOptions:v12];
  v17 = [(NSISO8601DateFormatter *)dateFormatter stringFromDate:dateCopy];

  objc_autoreleasePoolPop(v9);

  return v17;
}

- (id)sfFlightsToDictionary:(id)dictionary
{
  v92 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v74 = objc_opt_new();
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = dictionaryCopy;
  v75 = [obj countByEnumeratingWithState:&v86 objects:v91 count:16];
  if (v75)
  {
    v73 = *v87;
    do
    {
      v5 = 0;
      do
      {
        if (*v87 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v78 = v5;
        v6 = *(*(&v86 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v7 = objc_opt_new();
        flightNumber = [v6 flightNumber];
        if (flightNumber)
        {
          [v7 setObject:flightNumber forKeyedSubscript:@"flightNumber"];
        }

        else
        {
          null = [MEMORY[0x277CBEB68] null];
          [v7 setObject:null forKeyedSubscript:@"flightNumber"];
        }

        carrierCode = [v6 carrierCode];
        if (carrierCode)
        {
          [v7 setObject:carrierCode forKeyedSubscript:@"carrierCode"];
        }

        else
        {
          null2 = [MEMORY[0x277CBEB68] null];
          [v7 setObject:null2 forKeyedSubscript:@"carrierCode"];
        }

        carrierName = [v6 carrierName];
        if (carrierName)
        {
          [v7 setObject:carrierName forKeyedSubscript:@"carrierName"];
        }

        else
        {
          null3 = [MEMORY[0x277CBEB68] null];
          [v7 setObject:null3 forKeyedSubscript:@"carrierName"];
        }

        carrierPhoneNumber = [v6 carrierPhoneNumber];
        if (carrierPhoneNumber)
        {
          [v7 setObject:carrierPhoneNumber forKeyedSubscript:@"carrierPhoneNumber"];
        }

        else
        {
          null4 = [MEMORY[0x277CBEB68] null];
          [v7 setObject:null4 forKeyedSubscript:@"carrierPhoneNumber"];
        }

        flightID = [v6 flightID];
        if (flightID)
        {
          [v7 setObject:flightID forKeyedSubscript:@"flightID"];
        }

        else
        {
          null5 = [MEMORY[0x277CBEB68] null];
          [v7 setObject:null5 forKeyedSubscript:@"flightID"];
        }

        operatorCarrierCode = [v6 operatorCarrierCode];
        if (operatorCarrierCode)
        {
          [v7 setObject:operatorCarrierCode forKeyedSubscript:@"operatorCarrierCode"];
        }

        else
        {
          null6 = [MEMORY[0x277CBEB68] null];
          [v7 setObject:null6 forKeyedSubscript:@"operatorCarrierCode"];
        }

        operatorFlightNumber = [v6 operatorFlightNumber];
        v76 = v7;
        if (operatorFlightNumber)
        {
          [v7 setObject:operatorFlightNumber forKeyedSubscript:@"operatorFlightNumber"];
        }

        else
        {
          null7 = [MEMORY[0x277CBEB68] null];
          [v7 setObject:null7 forKeyedSubscript:@"operatorFlightNumber"];
        }

        v22 = objc_opt_new();
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        legs = [v6 legs];
        v81 = [legs countByEnumeratingWithState:&v82 objects:v90 count:16];
        if (v81)
        {
          v80 = *v83;
          do
          {
            for (i = 0; i != v81; ++i)
            {
              if (*v83 != v80)
              {
                objc_enumerationMutation(legs);
              }

              v24 = *(*(&v82 + 1) + 8 * i);
              v25 = objc_opt_new();
              v26 = -[SGReverseTemplateJS sfFlightStatusToString:](self, "sfFlightStatusToString:", [v24 status]);
              if (v26)
              {
                [v25 setObject:v26 forKeyedSubscript:@"status"];
              }

              else
              {
                null8 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null8 forKeyedSubscript:@"status"];
              }

              title = [v24 title];
              if (title)
              {
                [v25 setObject:title forKeyedSubscript:@"title"];
              }

              else
              {
                null9 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null9 forKeyedSubscript:@"title"];
              }

              departurePublishedTime = [v24 departurePublishedTime];
              departureAirport = [v24 departureAirport];
              timezone = [departureAirport timezone];
              v33 = [(SGReverseTemplateJS *)self formattedDate:departurePublishedTime withTimezone:timezone];
              if (v33)
              {
                [v25 setObject:v33 forKeyedSubscript:@"departurePublishedTime"];
              }

              else
              {
                null10 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null10 forKeyedSubscript:@"departurePublishedTime"];
              }

              departureActualTime = [v24 departureActualTime];
              departureAirport2 = [v24 departureAirport];
              timezone2 = [departureAirport2 timezone];
              v38 = [(SGReverseTemplateJS *)self formattedDate:departureActualTime withTimezone:timezone2];
              if (v38)
              {
                [v25 setObject:v38 forKeyedSubscript:@"departureActualTime"];
              }

              else
              {
                null11 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null11 forKeyedSubscript:@"departureActualTime"];
              }

              departureTerminal = [v24 departureTerminal];
              if (departureTerminal)
              {
                [v25 setObject:departureTerminal forKeyedSubscript:@"departureTerminal"];
              }

              else
              {
                null12 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null12 forKeyedSubscript:@"departureTerminal"];
              }

              departureGate = [v24 departureGate];
              if (departureGate)
              {
                [v25 setObject:departureGate forKeyedSubscript:@"departureGate"];
              }

              else
              {
                null13 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null13 forKeyedSubscript:@"departureGate"];
              }

              arrivalPublishedTime = [v24 arrivalPublishedTime];
              arrivalAirport = [v24 arrivalAirport];
              timezone3 = [arrivalAirport timezone];
              v47 = [(SGReverseTemplateJS *)self formattedDate:arrivalPublishedTime withTimezone:timezone3];
              if (v47)
              {
                [v25 setObject:v47 forKeyedSubscript:@"arrivalPublishedTime"];
              }

              else
              {
                null14 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null14 forKeyedSubscript:@"arrivalPublishedTime"];
              }

              arrivalActualTime = [v24 arrivalActualTime];
              arrivalAirport2 = [v24 arrivalAirport];
              timezone4 = [arrivalAirport2 timezone];
              v52 = [(SGReverseTemplateJS *)self formattedDate:arrivalActualTime withTimezone:timezone4];
              if (v52)
              {
                [v25 setObject:v52 forKeyedSubscript:@"arrivalActualTime"];
              }

              else
              {
                null15 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null15 forKeyedSubscript:@"arrivalActualTime"];
              }

              arrivalTerminal = [v24 arrivalTerminal];
              if (arrivalTerminal)
              {
                [v25 setObject:arrivalTerminal forKeyedSubscript:@"arrivalTerminal"];
              }

              else
              {
                null16 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null16 forKeyedSubscript:@"arrivalTerminal"];
              }

              arrivalGate = [v24 arrivalGate];
              if (arrivalGate)
              {
                [v25 setObject:arrivalGate forKeyedSubscript:@"arrivalGate"];
              }

              else
              {
                null17 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null17 forKeyedSubscript:@"arrivalGate"];
              }

              departureAirport3 = [v24 departureAirport];
              v59 = [(SGReverseTemplateJS *)self sfAirportToDictionnary:departureAirport3];
              if (v59)
              {
                [v25 setObject:v59 forKeyedSubscript:@"departureAirport"];
              }

              else
              {
                null18 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null18 forKeyedSubscript:@"departureAirport"];
              }

              arrivalAirport3 = [v24 arrivalAirport];
              v62 = [(SGReverseTemplateJS *)self sfAirportToDictionnary:arrivalAirport3];
              if (v62)
              {
                [v25 setObject:v62 forKeyedSubscript:@"arrivalAirport"];
              }

              else
              {
                null19 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null19 forKeyedSubscript:@"arrivalAirport"];
              }

              divertedAirport = [v24 divertedAirport];
              v65 = [(SGReverseTemplateJS *)self sfAirportToDictionnary:divertedAirport];
              if (v65)
              {
                [v25 setObject:v65 forKeyedSubscript:@"divertedAirport"];
              }

              else
              {
                null20 = [MEMORY[0x277CBEB68] null];
                [v25 setObject:null20 forKeyedSubscript:@"divertedAirport"];
              }

              [v22 addObject:v25];
            }

            v81 = [legs countByEnumeratingWithState:&v82 objects:v90 count:16];
          }

          while (v81);
        }

        if (v22)
        {
          v67 = v76;
          [v76 setObject:v22 forKeyedSubscript:@"legs"];
        }

        else
        {
          null21 = [MEMORY[0x277CBEB68] null];
          v67 = v76;
          [v76 setObject:null21 forKeyedSubscript:@"legs"];
        }

        [v74 addObject:v67];

        objc_autoreleasePoolPop(context);
        v5 = v78 + 1;
      }

      while (v78 + 1 != v75);
      v75 = [obj countByEnumeratingWithState:&v86 objects:v91 count:16];
    }

    while (v75);
  }

  v69 = [v74 copy];
  v70 = *MEMORY[0x277D85DE8];

  return v69;
}

- (void)flightInformationWithAirlineCode:(id)code flightNumber:(id)number flightDate:(id)date reply:(id)reply
{
  codeCopy = code;
  numberCopy = number;
  dateCopy = date;
  replyCopy = reply;
  v14 = MEMORY[0x277D42668];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__SGReverseTemplateJS_flightInformationWithAirlineCode_flightNumber_flightDate_reply___block_invoke;
  v19[3] = &unk_27894E040;
  v19[4] = self;
  v20 = codeCopy;
  v21 = numberCopy;
  v22 = dateCopy;
  v23 = replyCopy;
  v15 = replyCopy;
  v16 = dateCopy;
  v17 = numberCopy;
  v18 = codeCopy;
  [v14 runWithExceptionBarrier:v19];
}

void __86__SGReverseTemplateJS_flightInformationWithAirlineCode_flightNumber_flightDate_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) flightInformationWithAirlineCode:*(a1 + 40) flightNumber:*(a1 + 48) flightDate:*(a1 + 56)];
  [*(a1 + 32) holdXpcTransactionForShortDelay];
  (*(*(a1 + 64) + 16))();
}

- (id)flightInformationWithAirlineCode:(id)code flightNumber:(id)number flightDate:(id)date
{
  v77 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  numberCopy = number;
  dateCopy = date;
  v12 = dateCopy;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__14927;
  v64 = __Block_byref_object_dispose__14928;
  v65 = 0;
  if (!codeCopy)
  {
    numberCopy = sgEventsLogHandle();
    if (!os_log_type_enabled(numberCopy, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v29 = "SGReverseTemplateJS flightInformationWithAirlineCode: Can't get flightInformation, airlineCode is nil";
LABEL_19:
    _os_log_fault_impl(&dword_231E60000, numberCopy, OS_LOG_TYPE_FAULT, v29, buf, 2u);
    goto LABEL_20;
  }

  if (!numberCopy)
  {
    numberCopy = sgEventsLogHandle();
    if (!os_log_type_enabled(numberCopy, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v29 = "SGReverseTemplateJS flightInformationWithAirlineCode: Can't get flightInformation, flightNumber is nil";
    goto LABEL_19;
  }

  if (!dateCopy)
  {
    numberCopy = sgEventsLogHandle();
    if (os_log_type_enabled(numberCopy, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v29 = "SGReverseTemplateJS flightInformationWithAirlineCode: Can't get flightInformation, flightDate is nil";
      goto LABEL_19;
    }

LABEL_20:
    v28 = 0;
    goto LABEL_32;
  }

  numberCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", codeCopy, numberCopy];
  v14 = objc_opt_new();
  [v14 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
  v15 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v14 setTimeZone:v15];
  v46 = v14;

  v45 = [v14 dateFromString:v12];
  if (v45)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (!bundleIdentifier)
    {
      v18 = sgEventsLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v18, OS_LOG_TYPE_ERROR, "SGReverseTemplateJS flightInformationWithAirlineCode: bundleIdentifier is undefined.", buf, 2u);
      }

      bundleIdentifier = @"com.apple.undefined";
    }

    v42 = bundleIdentifier;
    v19 = [MEMORY[0x277D007B0] flightRequestForQuery:numberCopy date:v45 appBundleId:bundleIdentifier];
    if (!v19)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SGReverseTemplateJS.m" lineNumber:589 description:{@"Invalid parameter not satisfying: %@", @"request"}];
    }

    v44 = v19;
    mEMORY[0x277D007C0] = [MEMORY[0x277D007C0] sharedSession];
    *buf = 0;
    v55 = buf;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__14927;
    v58 = __Block_byref_object_dispose__14928;
    v59 = 0;
    v21 = dispatch_semaphore_create(0);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __80__SGReverseTemplateJS_flightInformationWithAirlineCode_flightNumber_flightDate___block_invoke;
    v47[3] = &unk_27894E018;
    v52 = &v60;
    v53 = buf;
    v47[4] = self;
    v22 = codeCopy;
    v48 = v22;
    v23 = numberCopy;
    v49 = v23;
    v24 = v12;
    v50 = v24;
    v25 = v21;
    v51 = v25;
    v43 = mEMORY[0x277D007C0];
    v26 = [mEMORY[0x277D007C0] taskWithRequest:v44 completion:v47];
    [v26 resume];
    if ([MEMORY[0x277D425A0] waitForSemaphore:v25 timeoutSeconds:60.0])
    {
      v27 = v26;
      v28 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v31 = sgEventsLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v40 = v61[5];
        *v69 = 138413058;
        v70 = v22;
        v71 = 2112;
        v72 = v23;
        v73 = 2112;
        v74 = v24;
        v75 = 2112;
        v76 = v40;
        _os_log_debug_impl(&dword_231E60000, v31, OS_LOG_TYPE_DEBUG, "SGReverseTemplateJS flightInformationWithAirlineCode: CoreParsec results for: %@, %@, %@ = %@", v69, 0x2Au);
      }

      if (![v61[5] count])
      {
        v32 = *(v55 + 5);
        if (v32)
        {
          v67[0] = @"error";
          v66[0] = @"type";
          v66[1] = @"errorCode";
          v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v32, "code")}];
          v67[1] = v33;
          v66[2] = @"userInfo";
          userInfo = [*(v55 + 5) userInfo];
          v67[2] = userInfo;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
          v68 = v35;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
          v37 = v61[5];
          v61[5] = v36;
        }
      }

      v27 = v26;
      v28 = v61[5];
    }

    _Block_object_dispose(buf, 8);
    v30 = v42;
  }

  else
  {
    v30 = sgEventsLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v30, OS_LOG_TYPE_ERROR, "SGReverseTemplateJS flightInformationWithAirlineCode: Can't get flightInformation, flightDate is malformed", buf, 2u);
    }

    v28 = 0;
  }

LABEL_32:
  _Block_object_dispose(&v60, 8);

  v38 = *MEMORY[0x277D85DE8];

  return v28;
}

void __80__SGReverseTemplateJS_flightInformationWithAirlineCode_flightNumber_flightDate___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = [a3 flightResults];
  v10 = [v8 sfFlightsToDictionary:v9];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
    v13 = sgEventsLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v18 = 138413058;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v7;
      _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "flightInformationWithAirlineCode flightInformationWithAirlineCode: error when calling CoreParsec for: %@, %@, %@ = %@", &v18, 0x2Au);
    }
  }

  dispatch_semaphore_signal(*(a1 + 64));

  v14 = *MEMORY[0x277D85DE8];
}

- (id)preprocessPackedSGMessage:(id)message
{
  messageCopy = message;
  v4 = [messageCopy objectForKeyedSubscript:@"html"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [messageCopy mutableCopy];
    v7 = MEMORY[0x277CCACA8];
    v8 = [v6 objectForKeyedSubscript:@"html"];
    v9 = [v7 _pas_stringWithDataNoCopy:v8 encoding:4 nullTerminated:0];
    [v6 setObject:v9 forKeyedSubscript:@"html"];

    messageCopy = v6;
  }

  return messageCopy;
}

- (id)mappedArrayBufferForFileName:(id)name
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = +[SGAsset asset];
  v6 = [v5 filesystemPathForAssetDataRelativePath:@"ReverseTemplateJS"];

  v7 = objc_autoreleasePoolPush();
  v8 = [v6 stringByAppendingPathComponent:nameCopy];
  objc_autoreleasePoolPop(v7);
  v27 = 0;
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v8 options:1 error:&v27];
  v10 = v27;
  if (v9)
  {
    CFRetain(v9);
    jSGlobalContextRef = [(JSContext *)self->_jsContext JSGlobalContextRef];
    v11 = v9;
    bytes = [v9 bytes];
    v13 = [v9 length];
    v14 = nameCopy;
    v15 = v10;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v16 = getJSObjectMakeArrayBufferWithBytesNoCopySymbolLoc_ptr;
    v31 = getJSObjectMakeArrayBufferWithBytesNoCopySymbolLoc_ptr;
    if (!getJSObjectMakeArrayBufferWithBytesNoCopySymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getJSObjectMakeArrayBufferWithBytesNoCopySymbolLoc_block_invoke;
      v33 = &unk_278955BF0;
      v34 = &v28;
      v17 = JavaScriptCoreLibrary();
      v18 = dlsym(v17, "JSObjectMakeArrayBufferWithBytesNoCopy");
      *(v34[1] + 24) = v18;
      getJSObjectMakeArrayBufferWithBytesNoCopySymbolLoc_ptr = *(v34[1] + 24);
      v16 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
    if (!v16)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"JSObjectRef SGJSObjectMakeArrayBufferWithBytesNoCopy(JSContextRef, void *, size_t, JSTypedArrayBytesDeallocator, void *, JSValueRef *)"}];
      [currentHandler handleFailureInFunction:v25 file:@"SGReverseTemplateJS.m" lineNumber:49 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v19 = v16(jSGlobalContextRef, bytes, v13, typedArrayDeallocatorRelease, v9, 0);
    v10 = v15;
    nameCopy = v14;
    v20 = [getJSValueClass() valueWithJSValueRef:v19 inContext:self->_jsContext];
  }

  else
  {
    v21 = sgEventsLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_fault_impl(&dword_231E60000, v21, OS_LOG_TYPE_FAULT, "Could not load data asset %@: %@", buf, 0x16u);
    }

    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)initCurrentAsset
{
  v74[1] = *MEMORY[0x277D85DE8];
  v3 = self->_localeIdentifier;
  v4 = self->_queue;
  objc_initWeak(&location, self);
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x2020000000;
  v71[3] = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke;
  v65[3] = &unk_27894DDB8;
  objc_copyWeak(&v66, &location);
  v5 = MEMORY[0x2383809F0](v65);
  [(JSContext *)self->_jsContext setObject:v5 forKeyedSubscript:@"load"];

  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_2;
  v60[3] = &unk_27894DDE0;
  v62 = &v67;
  v63 = v71;
  v6 = v4;
  v61 = v6;
  objc_copyWeak(&v64, &location);
  v7 = MEMORY[0x2383809F0](v60);
  [(JSContext *)self->_jsContext setObject:v7 forKeyedSubscript:@"loadWithVmGrowthCounter"];

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_4;
  v58[3] = &unk_27894DDB8;
  objc_copyWeak(&v59, &location);
  v8 = MEMORY[0x2383809F0](v58);
  [(JSContext *)self->_jsContext setObject:v8 forKeyedSubscript:@"loadNoVmGrowthCounter"];

  [(JSContext *)self->_jsContext setObject:&__block_literal_global_83 forKeyedSubscript:@"debug"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_89 forKeyedSubscript:@"developerLog"];
  v9 = [(JSContext *)self->_jsContext objectForKeyedSubscript:@"console"];
  LODWORD(v8) = v9 == 0;

  if (v8)
  {
    v73 = @"log";
    v10 = [(JSContext *)self->_jsContext objectForKeyedSubscript:@"debug"];
    v74[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:&v73 count:1];
    [(JSContext *)self->_jsContext setObject:v11 forKeyedSubscript:@"console"];
  }

  v12 = self->_dd;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_100;
  v56[3] = &unk_27894DE28;
  v13 = v12;
  v57 = v13;
  v14 = MEMORY[0x2383809F0](v56);
  [(JSContext *)self->_jsContext setObject:v14 forKeyedSubscript:@"runDataDetectors"];

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_2_105;
  v54[3] = &unk_27894DE50;
  v15 = v13;
  v55 = v15;
  v16 = MEMORY[0x2383809F0](v54);
  [(JSContext *)self->_jsContext setObject:v16 forKeyedSubscript:@"runDataDetectorsWithMetadata"];

  [(JSContext *)self->_jsContext setObject:&__block_literal_global_115_15171 forKeyedSubscript:@"parseMicrodata"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_122 forKeyedSubscript:@"tokenizeString"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_130 forKeyedSubscript:@"decodeEntitiesInString"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_136 forKeyedSubscript:@"detectLanguageForString"];
  v17 = +[SGAsset asset];
  assetVersion = [v17 assetVersion];

  if (assetVersion == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v19 = assetVersion;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  [(JSContext *)self->_jsContext setObject:v20 forKeyedSubscript:@"ASSET_VERSION"];

  [(JSContext *)self->_jsContext setObject:&__block_literal_global_147 forKeyedSubscript:@"htmlToPlainText"];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_8;
  v52[3] = &unk_278951348;
  v21 = v3;
  v53 = v21;
  v22 = MEMORY[0x2383809F0](v52);
  [(JSContext *)self->_jsContext setObject:v22 forKeyedSubscript:@"getCurrentLocale"];

  [(JSContext *)self->_jsContext setObject:&__block_literal_global_162 forKeyedSubscript:@"getLinguisticTagsForString"];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_11;
  v50[3] = &unk_27894DEF8;
  v23 = v21;
  v51 = v23;
  v24 = MEMORY[0x2383809F0](v50);
  [(JSContext *)self->_jsContext setObject:v24 forKeyedSubscript:@"getPreferredLocalizationsFromArray"];

  [(JSContext *)self->_jsContext setObject:&__block_literal_global_187 forKeyedSubscript:@"getLocalizedFormattedDatetimeString"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_196 forKeyedSubscript:@"isInternalDevice"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_201 forKeyedSubscript:@"isSplashScreenAcknowledged"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_207 forKeyedSubscript:@"allowAnyDomainForMarkup"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_212 forKeyedSubscript:@"allowUnverifiedSourceForMarkup"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_218 forKeyedSubscript:@"getSystemVersion"];
  [(JSContext *)self->_jsContext setObject:&__block_literal_global_226_15183 forKeyedSubscript:@"getGMTOffsetFromDateTimeAndTimeZoneOlsonCode"];
  if (initCurrentAsset_onceToken != -1)
  {
    dispatch_once(&initCurrentAsset_onceToken, &__block_literal_global_234);
  }

  v25 = mach_absolute_time();
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_21;
  v49[3] = &__block_descriptor_40_e5_d8__0l;
  v49[4] = v25;
  v26 = MEMORY[0x2383809F0](v49);
  [(JSContext *)self->_jsContext setObject:v26 forKeyedSubscript:@"secondsForTiming"];

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_22;
  v46[3] = &unk_278950F68;
  v27 = v6;
  v47 = v27;
  objc_copyWeak(&v48, &location);
  v28 = MEMORY[0x2383809F0](v46);
  [(JSContext *)self->_jsContext setObject:v28 forKeyedSubscript:@"freeJSContext"];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_24;
  v44[3] = &unk_27894DFA0;
  objc_copyWeak(&v45, &location);
  v29 = MEMORY[0x2383809F0](v44);
  [(JSContext *)self->_jsContext setObject:v29 forKeyedSubscript:@"getFlightInformation"];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_25;
  v42[3] = &unk_27894DFC8;
  objc_copyWeak(&v43, &location);
  v30 = MEMORY[0x2383809F0](v42);
  [(JSContext *)self->_jsContext setObject:v30 forKeyedSubscript:@"getMD5Hash"];

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_26;
  v40[3] = &unk_27894DFF0;
  objc_copyWeak(&v41, &location);
  v31 = MEMORY[0x2383809F0](v40);
  [(JSContext *)self->_jsContext setObject:v31 forKeyedSubscript:@"loadBurstTrie"];

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_27;
  v38[3] = &unk_27894DDB8;
  objc_copyWeak(&v39, &location);
  v32 = MEMORY[0x2383809F0](v38);
  [(JSContext *)self->_jsContext setObject:v32 forKeyedSubscript:@"loadMappedData"];

  v33 = [(JSContext *)self->_jsContext objectForKeyedSubscript:@"load"];
  v34 = [(SGReverseTemplateJS *)self _callJSFunction:v33 withArguments:&unk_28474A648];

  *(v68 + 24) = 1;
  v35 = sgEventsLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v37[0] = 0;
    _os_log_impl(&dword_231E60000, v35, OS_LOG_TYPE_INFO, "SGReverseTemplateJS: completed initialization of JS context.", v37, 2u);
  }

  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&v48);

  objc_destroyWeak(&v59);
  objc_destroyWeak(&v64);

  objc_destroyWeak(&v66);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(v71, 8);
  objc_destroyWeak(&location);

  v36 = *MEMORY[0x277D85DE8];
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained processLoadRequestWithFileName:v3];

  return v5;
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 24);
    *(v4 + 24) = v5 + 1;
    if (v5 == 20)
    {
      v6 = *(a1 + 32);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_3;
      block[3] = &unk_278955AC0;
      objc_copyWeak(&v11, (a1 + 56));
      dispatch_async(v6, block);
      objc_destroyWeak(&v11);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained processLoadRequestWithFileName:v3];

  return v8;
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained processLoadRequestWithFileName:v3];

  return v5;
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_2_105(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [*(a1 + 32) runDataDetectors:v10 locale:v9 epoch:v12 metadataForTypes:a5];

  return v13;
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAF8] currentLocale];
    v2 = [v3 localeIdentifier];
  }

  return v2;
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_11(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v2 = v5;
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JSValueClass = getJSValueClass();
          v11 = [getJSContextClass() currentContext];
          v15 = [JSValueClass valueWithNewErrorFromMessage:@"getPreferredLocalizationsFromArray must be called with an array of strings" inContext:v11];
          v16 = [getJSContextClass() currentContext];
          [v16 setException:v15];

          v13 = 0;
          v2 = v4;
          goto LABEL_14;
        }
      }

      v2 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v9 = MEMORY[0x277CCA8D8];
  v10 = *(a1 + 32);
  v11 = v10;
  if (!v10)
  {
    v2 = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [v2 localeIdentifier];
  }

  v23 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:{1, v19}];
  v13 = [v9 preferredLocalizationsFromArray:v4 forPreferences:v12];

  if (!v10)
  {
LABEL_14:
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

void __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_22(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_23;
  block[3] = &unk_278955AC0;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained flightInformationWithAirlineCode:v9 flightNumber:v8 flightDate:v7];

  return v11;
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained md5Hash:v3];

  return v5;
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained loadTrieWithFileName:v3];

  return v5;
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained mappedArrayBufferForFileName:v3];

  return v5;
}

void __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained freeJSContext];
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  [a2 doubleValue];
  v6 = [v4 dateWithTimeIntervalSince1970:?];
  v7 = objc_opt_new();
  [v7 setDateFormat:@"ZZZZZ"];
  v8 = [MEMORY[0x277CBEBB0] timeZoneWithName:v5];

  [v7 setTimeZone:v8];
  v9 = [v7 stringFromDate:v6];

  return v9;
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_17()
{
  if (kSqlEventFired_block_invoke_onceToken != -1)
  {
    dispatch_once(&kSqlEventFired_block_invoke_onceToken, &__block_literal_global_220);
  }

  v1 = kSqlEventFired_block_invoke_version;

  return v1;
}

void __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_18()
{
  v0 = _CFCopyServerVersionDictionary();
  v1 = kSqlEventFired_block_invoke_version;
  kSqlEventFired_block_invoke_version = v0;

  if (!kSqlEventFired_block_invoke_version)
  {
    v2 = _CFCopySystemVersionDictionary();
    v3 = kSqlEventFired_block_invoke_version;
    kSqlEventFired_block_invoke_version = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_12(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = a2;
  v12 = objc_opt_new();
  [v12 setFormatterBehavior:1040];
  v13 = [v10 unsignedIntegerValue];

  [v12 setDateStyle:v13];
  v14 = [v9 unsignedIntegerValue];

  [v12 setTimeStyle:v14];
  v15 = MEMORY[0x277CBEBB0];
  if (v8)
  {
    v16 = [v8 unsignedIntegerValue];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v15 timeZoneForSecondsFromGMT:v16];
  [v12 setTimeZone:v17];

  v18 = MEMORY[0x277CBEAA8];
  [v11 doubleValue];
  v20 = v19;

  v21 = [v18 dateWithTimeIntervalSince1970:v20];
  v22 = [v12 stringFromDate:v21];

  return v22;
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v10 length];
  v12 = [MEMORY[0x277CCABF8] defaultOrthographyForLanguage:v9];

  v19 = 0;
  v13 = [v10 linguisticTagsInRange:0 scheme:v11 options:v8 orthography:a5 tokenRanges:{v12, &v19}];

  v14 = v19;
  if ([v14 count])
  {
    v15 = sgMap();

    v14 = v15;
  }

  v20[0] = @"tags";
  v20[1] = @"ranges";
  v21[0] = v13;
  v21[1] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_10(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = [a2 rangeValue];
  v4 = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
  v10[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

__CFString *__39__SGReverseTemplateJS_initCurrentAsset__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [SGMonochrome stringByExtractingPlainTextFromHTML:a2 tableDelimiters:1 stripLinks:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_284703F00;
  }

  v6 = v5;

  return v5;
}

id __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_3_112(uint64_t a1, uint64_t a2)
{
  v2 = [SGMicrodataParser parse:a2];
  v3 = [v2 asJsonLd];

  return v3;
}

void __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_87(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgDeveloperLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_5(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sgEventsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_debug_impl(&dword_231E60000, v3, OS_LOG_TYPE_DEBUG, "JS log: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __39__SGReverseTemplateJS_initCurrentAsset__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained freeJSContext];
}

- (id)loadTrieWithFileName:(id)name
{
  nameCopy = name;
  v6 = [nameCopy stringByAppendingPathExtension:@"trie"];
  if (!v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGReverseTemplateJS.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"fileNameWithPathExtension"}];
  }

  v7 = objc_autoreleasePoolPush();
  v8 = +[SGAsset asset];
  v9 = [v8 filesystemPathForAssetDataRelativePath:v6];

  objc_autoreleasePoolPop(v7);
  if (!v9)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGReverseTemplateJS.m" lineNumber:288 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v10 = [(_PASCFBurstTrie *)[SGJSBurstTrie alloc] initWithPath:v9];

  return v10;
}

- (id)processLoadRequestWithFileName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = [getJSValueClass() valueWithUndefinedInContext:self->_jsContext];
  if (nameCopy && [nameCopy length] > 2)
  {
    v8 = [nameCopy substringFromIndex:{objc_msgSend(nameCopy, "length") - 3}];
    if ([v8 isEqualToString:@".js"])
    {
      v9 = sgEventsLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = nameCopy;
        _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGReverseTemplateJS: loading %@ in JS context.", buf, 0xCu);
      }

      v10 = +[SGAsset asset];
      v11 = [v10 filesystemPathForAssetDataRelativePath:@"ReverseTemplateJS"];

      if (!v11)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SGReverseTemplateJS.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"parentDir"}];
      }

      v12 = objc_autoreleasePoolPush();
      v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
      v14 = [v13 URLByAppendingPathComponent:nameCopy];

      objc_autoreleasePoolPop(v12);
      v7 = [(SGReverseTemplateJS *)self loadJSFromASCIIFile:v14];
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = v6;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)setAssetPath:(id)path
{
  queue = self->_queue;
  pathCopy = path;
  dispatch_assert_queue_V2(queue);
  obj = [pathCopy URLByStandardizingPath];

  assetPath = self->_assetPath;
  if (!assetPath || ([(NSURL *)assetPath isEqual:obj]& 1) == 0)
  {
    objc_storeStrong(&self->_assetPath, obj);
    [(SGReverseTemplateJS *)self freeJSContext];
  }
}

- (void)freeJSContext
{
  v3 = sgEventsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "SGReverseTemplateJS: freeing JS context.", v8, 2u);
  }

  dispatch_assert_queue_V2(self->_queue);
  jsVM = self->_jsVM;
  self->_jsVM = 0;

  jsContext = self->_jsContext;
  self->_jsContext = 0;

  memoryMappedFiles = self->_memoryMappedFiles;
  self->_memoryMappedFiles = 0;

  memoryMappedFileNames = self->_memoryMappedFileNames;
  self->_memoryMappedFileNames = 0;
}

- (void)dealloc
{
  v3 = +[SGAsset asset];
  [v3 deregisterUpdateHandlerAsyncWithToken:self->_assetUpdateToken];

  memoryPressureSource = self->_memoryPressureSource;
  if (memoryPressureSource)
  {
    dispatch_source_cancel(memoryPressureSource);
  }

  v5.receiver = self;
  v5.super_class = SGReverseTemplateJS;
  [(SGReverseTemplateJS *)&v5 dealloc];
}

- (id)_stringFromMemoryPressureStatus:(unint64_t)status
{
  if (status > 3)
  {
    if (status == 4)
    {
      return @"DISPATCH_MEMORYPRESSURE_CRITICAL";
    }

    if (status == 16)
    {
      return @"DISPATCH_MEMORYPRESSURE_PROC_LIMIT_WARN";
    }
  }

  else
  {
    if (status == 1)
    {
      return @"DISPATCH_MEMORYPRESSURE_NORMAL";
    }

    if (status == 2)
    {
      return @"DISPATCH_MEMORYPRESSURE_WARN";
    }
  }

  if (status == 32)
  {
    return @"DISPATCH_MEMORYPRESSURE_PROC_LIMIT_CRITICAL";
  }

  else
  {
    return @"UNKNOWN";
  }
}

- (void)_handleMemoryPressureStatus:(unint64_t)status
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sgEventsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(SGReverseTemplateJS *)self _stringFromMemoryPressureStatus:status];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGReverseTemplateJS: Received %@ notification.", buf, 0xCu);
  }

  if (status == 32 || status == 16)
  {
    objc_initWeak(buf, self);
    memoryPressureQueue = self->_memoryPressureQueue;
    objc_copyWeak(&v9, buf);
    SGThrottle();
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __51__SGReverseTemplateJS__handleMemoryPressureStatus___block_invoke(uint64_t a1, unsigned int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[9];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SGReverseTemplateJS__handleMemoryPressureStatus___block_invoke_2;
    block[3] = &unk_278954A30;
    block[4] = v4;
    dispatch_async(v5, block);
    if (a2)
    {
      v6 = sgEventsLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v10 = a2;
        _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_INFO, "SGReverseTemplateJS: suppressed process memory warning %lu times", buf, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __51__SGReverseTemplateJS__handleMemoryPressureStatus___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sgEventsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_231E60000, v2, OS_LOG_TYPE_INFO, "SGReverseTemplateJS: Queuing request to free JS context.", &v10, 2u);
  }

  v3 = sgEventsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = +[SGAsset asset];
    v5 = [v4 assetVersion];
    v10 = 134217984;
    v11 = v5;
    _os_log_impl(&dword_231E60000, v3, OS_LOG_TYPE_INFO, "SGReverseTemplateJS: Asset version = %lu", &v10, 0xCu);
  }

  v6 = sgEventsLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(*(a1 + 32) + 24) _pas_componentsJoinedByString:{@", "}];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_INFO, "SGReverseTemplateJS: List of loaded JS files in context = %@", &v10, 0xCu);
  }

  result = [*(a1 + 32) freeJSContext];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_callJSFunction:(id)function withArguments:(id)arguments
{
  v6 = dispatch_get_global_queue(2, 0);
  argumentsCopy = arguments;
  functionCopy = function;
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v6);

  dispatch_source_set_event_handler(v9, &__block_literal_global_15350);
  v10 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_resume(v9);
  v11 = [functionCopy callWithArguments:argumentsCopy];

  dispatch_source_cancel(v9);

  return v11;
}

void __53__SGReverseTemplateJS__callJSFunction_withArguments___block_invoke()
{
  v0 = sgLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_231E60000, v0, OS_LOG_TYPE_FAULT, "JS not interrupted after timeout!", v1, 2u);
  }

  if (!_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    exit(1);
  }

  abort();
}

- (SGReverseTemplateJS)init
{
  v25.receiver = self;
  v25.super_class = SGReverseTemplateJS;
  v2 = [(SGReverseTemplateJS *)&v25 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 5);
    *(v2 + 5) = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.suggestions.reversetemplatejs", v5);

    objc_storeStrong(v2 + 9, v6);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("com.apple.suggestions.reversetemplatejs.pressure", v8);
    v10 = *(v2 + 10);
    *(v2 + 10) = v9;

    objc_initWeak(&location, v2);
    v11 = +[SGAsset asset];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __27__SGReverseTemplateJS_init__block_invoke;
    v21[3] = &unk_27894DD68;
    v12 = v6;
    v22 = v12;
    objc_copyWeak(&v23, &location);
    v13 = [v11 registerUpdateHandler:v21];
    v14 = *(v2 + 6);
    *(v2 + 6) = v13;

    v15 = dispatch_source_create(MEMORY[0x277D85D18], 0, 0x37uLL, *(v2 + 10));
    v16 = *(v2 + 11);
    *(v2 + 11) = v15;

    v17 = *(v2 + 11);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __27__SGReverseTemplateJS_init__block_invoke_3;
    v19[3] = &unk_278955AC0;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v17, v19);
    dispatch_resume(*(v2 + 11));
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v23);

    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__SGReverseTemplateJS_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SGReverseTemplateJS_init__block_invoke_2;
  block[3] = &unk_278955AC0;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __27__SGReverseTemplateJS_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(dispatch_source_t *)WeakRetained _handleMemoryPressureStatus:dispatch_source_get_data(WeakRetained[11])];
    WeakRetained = v2;
  }
}

void __27__SGReverseTemplateJS_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained freeJSContext];
}

+ (id)fakeFlightInformationWithAirlineCode:(id)code flightNumber:(id)number flightDate:(id)date
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGReverseTemplateJS.m" lineNumber:1207 description:@"This method must be stubbed!"];

  return 0;
}

@end