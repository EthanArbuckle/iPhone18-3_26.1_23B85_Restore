@interface DYJavaScriptHelperContext
- (BOOL)evaluateScript:(id)script;
- (BOOL)prepareCounterNames:(id)names softwareCounterNames:(id)counterNames derivedCounterNames:(id)derivedCounterNames;
- (BOOL)prepareCounterValues:(id)values softwareCounterValues:(id)counterValues;
- (DYJavaScriptHelperContext)init;
- (id)evaluateDerivedCounters;
- (id)generateJavascriptCode:(id)code softwareCounterNames:(id)names derivedCounterNames:(id)counterNames;
- (void)exportCounterValues:(id)values;
@end

@implementation DYJavaScriptHelperContext

- (DYJavaScriptHelperContext)init
{
  v5.receiver = self;
  v5.super_class = DYJavaScriptHelperContext;
  v2 = [(DYJavaScriptHelperContext *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(DYJSScriptingContext);
    v2->_context = v3;
    [(JSContext *)[(DYJSScriptingContext *)v3 context] setObject:&__block_literal_global_1 forKeyedSubscript:@"ErrorLog"];
  }

  return v2;
}

uint64_t __33__DYJavaScriptHelperContext_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D85DF8];
  v3 = [a2 UTF8String];

  return fputs(v3, v2);
}

- (BOOL)evaluateScript:(id)script
{
  v5 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (v5)
  {
    context = self->_context;
    v7 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:script encoding:4 error:0];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:script];

    LOBYTE(v5) = [(DYJSScriptingContext *)context evaluteScript:v7 scriptURL:v8];
  }

  return v5;
}

- (void)exportCounterValues:(id)values
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__DYJavaScriptHelperContext_exportCounterValues___block_invoke;
  v3[3] = &unk_279309E90;
  v3[4] = self;
  [values enumerateKeysAndObjectsUsingBlock:v3];
}

- (id)generateJavascriptCode:(id)code softwareCounterNames:(id)names derivedCounterNames:(id)counterNames
{
  v58 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = [code countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v50;
    do
    {
      v12 = 0;
      do
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(code);
        }

        [string appendFormat:@"var %@ = 0;\n", *(*(&v49 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [code countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v10);
  }

  [string appendFormat:@"function _SetRawCounterValues() {\n"];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = [code countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v46;
    do
    {
      v17 = 0;
      do
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(code);
        }

        [string appendFormat:@"\t%@ = _RawCounterValues[%lu];\n", *(*(&v45 + 1) + 8 * v17++), v15++];
      }

      while (v14 != v17);
      v14 = [code countByEnumeratingWithState:&v45 objects:v56 count:16];
    }

    while (v14);
  }

  [string appendFormat:@"}\n"];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = [names countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
    do
    {
      v21 = 0;
      do
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(names);
        }

        [string appendFormat:@"var %@ = 0;\n", *(*(&v41 + 1) + 8 * v21++)];
      }

      while (v19 != v21);
      v19 = [names countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v19);
  }

  [string appendFormat:@"function _SetSoftwareCounterValues() {\n"];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = [names countByEnumeratingWithState:&v37 objects:v54 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v38;
    do
    {
      v26 = 0;
      do
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(names);
        }

        [string appendFormat:@"\t%@ = _SoftwareCounterValues[%lu];\n", *(*(&v37 + 1) + 8 * v26++), v24++];
      }

      while (v23 != v26);
      v23 = [names countByEnumeratingWithState:&v37 objects:v54 count:16];
    }

    while (v23);
  }

  [string appendFormat:@"}\n"];
  [string appendString:@"var _DerivedCounterResult = [];\nfunction _EvaluteDerivedCounters() {\n"];
  [string appendFormat:@"\t_DerivedCounterResult = [];\n"];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = [counterNames countByEnumeratingWithState:&v33 objects:v53 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      v30 = 0;
      do
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(counterNames);
        }

        [string appendFormat:@"\ttry { value = %@(); if (!isFinite(value)) { value = 0; } _DerivedCounterResult.push(value); } catch(err) { ErrorLog(err); _DerivedCounterResult.push(0); }\n", *(*(&v33 + 1) + 8 * v30++)];
      }

      while (v28 != v30);
      v28 = [counterNames countByEnumeratingWithState:&v33 objects:v53 count:16];
    }

    while (v28);
  }

  [string appendFormat:@"}\n"];
  v31 = *MEMORY[0x277D85DE8];
  return string;
}

- (BOOL)prepareCounterNames:(id)names softwareCounterNames:(id)counterNames derivedCounterNames:(id)derivedCounterNames
{
  v6 = [(DYJavaScriptHelperContext *)self generateJavascriptCode:names softwareCounterNames:counterNames derivedCounterNames:derivedCounterNames];

  return [(DYJavaScriptHelperContext *)self evaluateScriptCode:v6];
}

- (BOOL)prepareCounterValues:(id)values softwareCounterValues:(id)counterValues
{
  v6 = [(DYJSScriptingContext *)self->_context setValue:@"_SoftwareCounterValues" value:counterValues];
  if (v6)
  {
    [(DYJSScriptingContext *)self->_context callGlobalFunction:"_SetSoftwareCounterValues"];
    v6 = [(DYJSScriptingContext *)self->_context setValue:@"_RawCounterValues" value:values];
    if (v6)
    {
      [(DYJSScriptingContext *)self->_context callGlobalFunction:"_SetRawCounterValues"];
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (id)evaluateDerivedCounters
{
  [(DYJSScriptingContext *)self->_context callGlobalFunction:"_EvaluteDerivedCounters"];
  v3 = [(DYJSScriptingContext *)self->_context getValue:@"_DerivedCounterResult"];

  return [v3 toArray];
}

@end