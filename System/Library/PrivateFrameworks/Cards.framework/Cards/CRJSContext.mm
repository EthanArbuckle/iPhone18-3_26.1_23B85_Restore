@interface CRJSContext
+ (id)sharedContext;
- (CRJSContext)initWithVirtualMachine:(id)a3;
- (id)_cardWithTitle:(id)a3 cardSections:(id)a4 interaction:(id)a5 error:(id *)a6;
- (void)_createCard:(id)a3 completionHandler:(id)a4;
- (void)evaluateScript:(id)a3 completionHandler:(id)a4;
@end

@implementation CRJSContext

- (CRJSContext)initWithVirtualMachine:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CRJSContext;
  v5 = [(CRJSContext *)&v26 initWithVirtualMachine:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(CRJSContext *)v5 setObject:v6 forKeyedSubscript:v8];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 pathForResource:@"Base" ofType:@"js"];
    v12 = [v9 stringWithContentsOfFile:v11 encoding:4 error:0];

    v13 = [(CRJSContext *)v5 evaluateScript:v12];
    objc_initWeak(&location, v5);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __38__CRJSContext_initWithVirtualMachine___block_invoke;
    v23 = &unk_278DA59A0;
    objc_copyWeak(&v24, &location);
    v14 = MEMORY[0x245D2DFD0](&v20);
    v15 = [(CRJSContext *)v5 objectForKeyedSubscript:@"System", v20, v21, v22, v23];
    [v15 setObject:v14 forKeyedSubscript:@"Data"];

    v16 = [(CRJSContext *)v5 evaluateScript:@"var console = {}"];
    v17 = [(CRJSContext *)v5 objectForKeyedSubscript:@"console"];
    [v17 setObject:&__block_literal_global_2 forKeyedSubscript:@"log"];

    v18 = [(CRJSContext *)v5 objectForKeyedSubscript:@"console"];
    [v18 setObject:&__block_literal_global_62 forKeyedSubscript:@"error"];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v5;
}

id __38__CRJSContext_initWithVirtualMachine___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277CBEA90];
  v6 = [v3 toString];

  v7 = [v5 dataWithContentsOfFile:v6];

  if (v7)
  {
    [MEMORY[0x277CD4658] valueWithObject:v7 inContext:WeakRetained];
  }

  else
  {
    [MEMORY[0x277CD4658] valueWithNullInContext:WeakRetained];
  }
  v8 = ;

  return v8;
}

+ (id)sharedContext
{
  if (sharedContext_onceToken != -1)
  {
    +[CRJSContext sharedContext];
  }

  v3 = sharedContext_sharedContext;

  return v3;
}

void __28__CRJSContext_sharedContext__block_invoke()
{
  v0 = [CRJSContext alloc];
  v3 = objc_alloc_init(MEMORY[0x277CD4660]);
  v1 = [(CRJSContext *)v0 initWithVirtualMachine:v3];
  v2 = sharedContext_sharedContext;
  sharedContext_sharedContext = v1;
}

- (void)evaluateScript:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __48__CRJSContext_evaluateScript_completionHandler___block_invoke;
    v21[3] = &unk_278DA59E8;
    v9 = v7;
    v22 = v9;
    [(CRJSContext *)self setExceptionHandler:v21];
    objc_initWeak(&location, self);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __48__CRJSContext_evaluateScript_completionHandler___block_invoke_2;
    v17 = &unk_278DA5A10;
    objc_copyWeak(&v19, &location);
    v18 = v9;
    v10 = MEMORY[0x245D2DFD0](&v14);
    [(CRJSContext *)self setObject:v10 forKeyedSubscript:@"createCard"];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"createCard(function() { %@ }())", v6, v14, v15, v16, v17];;
    v12 = [(CRJSContext *)self evaluateScript:v11];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __48__CRJSContext_evaluateScript_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v5 = [a3 toString];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:@"CRJSContextErrorDomain" code:0 userInfo:v6];

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

void __48__CRJSContext_evaluateScript_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _createCard:v3 completionHandler:*(a1 + 32)];
}

- (void)_createCard:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 valueForProperty:@"sash"];
  v9 = [v8 valueForProperty:@"applicationBundleIdentifier"];
  v10 = [v8 valueForProperty:@"title"];
  v11 = [v6 valueForProperty:@"cardSections"];
  v12 = [v11 toArray];

  if ([v9 isUndefined])
  {
    v13 = 0;
  }

  else
  {
    v13 = [v9 toString];
  }

  if ([v10 isUndefined])
  {
    v14 = 0;
  }

  else
  {
    v14 = [v10 toString];
  }

  v23 = v6;
  v15 = [v6 valueForProperty:@"interaction"];
  v16 = [v15 toDictionary];

  v24 = 0;
  v17 = [(CRJSContext *)self _cardWithTitle:v14 cardSections:v12 interaction:v16 error:&v24];
  v18 = v24;
  if (v18)
  {
    (*(v7 + 2))(v7, 0, 0, 0, v18);
  }

  else
  {
    [v17 data];
    v22 = v8;
    v19 = v10;
    v21 = v20 = v9;
    (*(v7 + 2))(v7, v13, v14, v21, 0);

    v9 = v20;
    v10 = v19;
    v8 = v22;
  }
}

- (id)_cardWithTitle:(id)a3 cardSections:(id)a4 interaction:(id)a5 error:(id *)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 count])
  {
    v28 = 0;
    goto LABEL_29;
  }

  v49 = a6;
  v44 = [v10 objectForKeyedSubscript:@"intent"];
  v41 = v10;
  v43 = [v10 objectForKeyedSubscript:@"intentResponse"];
  v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v42 = v9;
  obj = v9;
  v47 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v47)
  {
    v46 = *v53;
    v11 = 0x277CBE000uLL;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v53 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v52 + 1) + 8 * v12);
      v14 = [v13 objectForKeyedSubscript:@"_backingObject"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v15 = [v13 objectForKeyedSubscript:@"_type"];
      v16 = [v15 integerValue];

      v17 = [v13 objectForKeyedSubscript:@"_value"];
      v18 = [v13 objectForKeyedSubscript:@"nextCard"];
      v19 = *(v11 + 2920);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = 0;
      }

      else
      {
        v20 = [v18 objectForKeyedSubscript:@"cardSections"];
      }

      v21 = v11;
      v22 = *(v11 + 2920);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = 0;
      }

      else
      {
        v23 = [v18 objectForKeyedSubscript:@"interaction"];
      }

      v24 = objc_alloc_init(MEMORY[0x277D4C738]);
      NSSelectorFromString(v17);
      if (objc_opt_respondsToSelector())
      {
        v25 = [v14 backingObject];
        [v24 setValue:v25 forKey:v17];
      }

      v26 = objc_alloc_init(MEMORY[0x277D4C730]);
      [v26 setType:v16];
      [v26 setValue:v24];
      v27 = [(CRJSContext *)self _cardWithTitle:v51 cardSections:v20 interaction:v23 error:v49];
      [v26 setNextCard:v27];

      [v50 addObject:v26];
      ++v12;
      v11 = v21;
      if (v47 == v12)
      {
        v47 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
        if (v47)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }
    }

    if (v49)
    {
      v38 = MEMORY[0x277CCA9B8];
      v56 = *MEMORY[0x277CCA450];
      v57 = @"Unable to create card";
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      [v38 errorWithDomain:@"CRJSContextErrorDomain" code:1 userInfo:v36];
      *v49 = v28 = 0;
      goto LABEL_24;
    }

    v28 = 0;
    v10 = v41;
    v9 = v42;
  }

  else
  {
LABEL_18:

    v28 = objc_alloc_init(MEMORY[0x277D4C728]);
    [v28 setTitle:v51];
    [v28 setCardSections:v50];
    v29 = v44;
    if (v44)
    {
      v30 = [v44 objectForKeyedSubscript:@"_backingObject"];
      v31 = [v44 objectForKeyedSubscript:@"_type"];
      v32 = [v30 backingObject];
      [v28 setIntentMessageName:v31];
      v33 = [v32 data];
      [v28 setIntentMessageData:v33];
    }

    v34 = v43;
    if (!v43)
    {
      v10 = v41;
      v9 = v42;
      goto LABEL_28;
    }

    v35 = [v43 objectForKeyedSubscript:@"_backingObject"];
    v14 = [v43 objectForKeyedSubscript:@"_type"];
    obj = v35;
    v36 = [v35 backingObject];
    [v28 setIntentResponseMessageName:v14];
    v37 = [v36 data];
    [v28 setIntentResponseMessageData:v37];

LABEL_24:
    v10 = v41;
    v9 = v42;
  }

  v34 = v43;
  v29 = v44;
LABEL_28:

LABEL_29:
  v39 = *MEMORY[0x277D85DE8];

  return v28;
}

@end