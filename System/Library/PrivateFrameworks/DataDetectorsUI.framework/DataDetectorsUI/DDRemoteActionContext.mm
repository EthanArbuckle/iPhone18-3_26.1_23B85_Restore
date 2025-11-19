@interface DDRemoteActionContext
+ (BOOL)isClassAllowedFromString:(id)a3;
- (DDRemoteActionContext)initWithCoder:(id)a3;
- (DDRemoteActionContext)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5 associatedResults:(id)a6 associatedVisualResults:(id)a7 contactHandle:(id)a8 className:(id)a9;
- (id)createContact:(BOOL *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DDRemoteActionContext

+ (BOOL)isClassAllowedFromString:(id)a3
{
  if (a3)
  {
    return [&unk_282C2BE00 containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  result = self->_result;
  if (result)
  {
    CFRelease(result);
    self->_result = 0;
  }

  v4.receiver = self;
  v4.super_class = DDRemoteActionContext;
  [(DDRemoteActionContext *)&v4 dealloc];
}

- (DDRemoteActionContext)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5 associatedResults:(id)a6 associatedVisualResults:(id)a7 contactHandle:(id)a8 className:(id)a9
{
  v25 = a3;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = DDRemoteActionContext;
  v18 = [(DDRemoteActionContext *)&v26 init];
  if (!v18)
  {
LABEL_6:
    v20 = 0;
    goto LABEL_9;
  }

  if (![DDRemoteActionContext isClassAllowedFromString:v17, v22, v23, v24, v25])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [DDRemoteActionContext initWithURL:result:context:associatedResults:associatedVisualResults:contactHandle:className:];
      v20 = 0;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  objc_storeStrong(&v18->_URL, a3);
  if (a4)
  {
    v19 = CFRetain(a4);
  }

  else
  {
    v19 = 0;
  }

  v18->_result = v19;
  objc_storeStrong(&v18->_context, a5);
  objc_storeStrong(&v18->_actionClass, a9);
  objc_storeStrong(&v18->_associatedResults, a6);
  objc_storeStrong(&v18->_associatedVisualResults, a7);
  objc_storeStrong(&v18->_contactHandle, a8);
  v20 = v18;
LABEL_9:

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [DDAction encodableContextWithContext:self->_context];
  [v10 encodeObject:v4 forKey:@"context"];

  [v10 encodeObject:self->_actionClass forKey:@"actionClass"];
  if (self->_result)
  {
    v5 = [MEMORY[0x277D04218] resultFromCoreResult:?];
    [v10 encodeObject:v5 forKey:@"result"];
  }

  if (self->_associatedResults)
  {
    v6 = [MEMORY[0x277D04218] resultsFromCoreResults:?];
    [v10 encodeObject:v6 forKey:@"associatedResults"];
  }

  associatedVisualResults = self->_associatedVisualResults;
  if (associatedVisualResults)
  {
    [v10 encodeObject:associatedVisualResults forKey:@"associatedVisualResults"];
  }

  contactHandle = self->_contactHandle;
  if (contactHandle)
  {
    [v10 encodeObject:contactHandle forKey:@"contactHandle"];
  }

  v9 = [(DDRemoteActionContext *)self URL];
  [v10 encodeObject:v9 forKey:@"url"];
}

- (DDRemoteActionContext)initWithCoder:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v53.receiver = self;
  v53.super_class = DDRemoteActionContext;
  v6 = [(DDRemoteActionContext *)&v53 init];
  if (!v6)
  {
    goto LABEL_19;
  }

  v48 = a2;
  v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  [(DDRemoteActionContext *)v6 setURL:v7];

  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [v5 decodeObjectOfClasses:v15 forKey:@"context"];
  v17 = [v8 initWithDictionary:v16];
  [(DDRemoteActionContext *)v6 setContext:v17];

  if ([v5 containsValueForKey:@"result"])
  {
    v25 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    -[DDRemoteActionContext setResult:](v6, "setResult:", CFRetain([v25 coreResult]));

    if (![v5 containsValueForKey:@"associatedResults"])
    {
LABEL_4:
      if (![v5 containsValueForKey:@"associatedVisualResults"])
      {
        goto LABEL_5;
      }

LABEL_21:
      v42 = MEMORY[0x277CBEB98];
      v43 = objc_opt_class();
      v44 = objc_opt_class();
      v45 = [v42 setWithObjects:{v43, v44, objc_opt_class(), 0}];
      v46 = [v5 decodeObjectOfClasses:v45 forKey:@"associatedVisualResults"];
      associatedVisualResults = v6->_associatedVisualResults;
      v6->_associatedVisualResults = v46;

      v18 = 0x277CCA000;
      if (![v5 containsValueForKey:@"contactHandle"])
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (![v5 containsValueForKey:@"associatedResults"])
  {
    goto LABEL_4;
  }

  v26 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
  v30 = [v5 decodeObjectOfClasses:v29 forKey:@"associatedResults"];

  v31 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v32 = v30;
  v33 = [v32 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v50;
    do
    {
      v36 = 0;
      do
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(v32);
        }

        -[NSArray addObject:](v31, "addObject:", [*(*(&v49 + 1) + 8 * v36++) coreResult]);
      }

      while (v34 != v36);
      v34 = [v32 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v34);
  }

  associatedResults = v6->_associatedResults;
  v6->_associatedResults = v31;

  if ([v5 containsValueForKey:@"associatedVisualResults"])
  {
    goto LABEL_21;
  }

LABEL_5:
  v18 = 0x277CCA000uLL;
  if ([v5 containsValueForKey:@"contactHandle"])
  {
LABEL_6:
    v19 = *(v18 + 3240);
    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [v5 decodeObjectOfClasses:v20 forKey:@"contactHandle"];
    contactHandle = v6->_contactHandle;
    v6->_contactHandle = v21;
  }

LABEL_7:
  v23 = *(v18 + 3240);
  v24 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"actionClass"];
  if ([DDRemoteActionContext isClassAllowedFromString:v24])
  {
    [(DDRemoteActionContext *)v6 setActionClass:v24];
  }

  else
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:v48 object:v6 file:@"DDRemoteAction.m" lineNumber:901 description:@"Trying to create a context with an invalid preview action class or an empty class."];
  }

  v38 = v6;

LABEL_19:
  v39 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)createContact:(BOOL *)a3
{
  v5 = [(DDRemoteActionContext *)self result];
  v6 = [(DDRemoteActionContext *)self URL];
  v7 = [(DDRemoteActionContext *)self associatedVisualResults];
  v8 = DDContactFromResult(v5, v6, v7, a3);

  return v8;
}

@end