@interface DDRemoteActionContext
+ (BOOL)isClassAllowedFromString:(id)string;
- (DDRemoteActionContext)initWithCoder:(id)coder;
- (DDRemoteActionContext)initWithURL:(id)l result:(__DDResult *)result context:(id)context associatedResults:(id)results associatedVisualResults:(id)visualResults contactHandle:(id)handle className:(id)name;
- (id)createContact:(BOOL *)contact;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DDRemoteActionContext

+ (BOOL)isClassAllowedFromString:(id)string
{
  if (string)
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

- (DDRemoteActionContext)initWithURL:(id)l result:(__DDResult *)result context:(id)context associatedResults:(id)results associatedVisualResults:(id)visualResults contactHandle:(id)handle className:(id)name
{
  lCopy = l;
  contextCopy = context;
  resultsCopy = results;
  visualResultsCopy = visualResults;
  handleCopy = handle;
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = DDRemoteActionContext;
  v18 = [(DDRemoteActionContext *)&v26 init];
  if (!v18)
  {
LABEL_6:
    v20 = 0;
    goto LABEL_9;
  }

  if (![DDRemoteActionContext isClassAllowedFromString:nameCopy, visualResultsCopy, resultsCopy, contextCopy, lCopy])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [DDRemoteActionContext initWithURL:result:context:associatedResults:associatedVisualResults:contactHandle:className:];
      v20 = 0;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  objc_storeStrong(&v18->_URL, l);
  if (result)
  {
    v19 = CFRetain(result);
  }

  else
  {
    v19 = 0;
  }

  v18->_result = v19;
  objc_storeStrong(&v18->_context, context);
  objc_storeStrong(&v18->_actionClass, name);
  objc_storeStrong(&v18->_associatedResults, results);
  objc_storeStrong(&v18->_associatedVisualResults, visualResults);
  objc_storeStrong(&v18->_contactHandle, handle);
  v20 = v18;
LABEL_9:

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [DDAction encodableContextWithContext:self->_context];
  [coderCopy encodeObject:v4 forKey:@"context"];

  [coderCopy encodeObject:self->_actionClass forKey:@"actionClass"];
  if (self->_result)
  {
    v5 = [MEMORY[0x277D04218] resultFromCoreResult:?];
    [coderCopy encodeObject:v5 forKey:@"result"];
  }

  if (self->_associatedResults)
  {
    v6 = [MEMORY[0x277D04218] resultsFromCoreResults:?];
    [coderCopy encodeObject:v6 forKey:@"associatedResults"];
  }

  associatedVisualResults = self->_associatedVisualResults;
  if (associatedVisualResults)
  {
    [coderCopy encodeObject:associatedVisualResults forKey:@"associatedVisualResults"];
  }

  contactHandle = self->_contactHandle;
  if (contactHandle)
  {
    [coderCopy encodeObject:contactHandle forKey:@"contactHandle"];
  }

  v9 = [(DDRemoteActionContext *)self URL];
  [coderCopy encodeObject:v9 forKey:@"url"];
}

- (DDRemoteActionContext)initWithCoder:(id)coder
{
  v55 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = DDRemoteActionContext;
  v6 = [(DDRemoteActionContext *)&v53 init];
  if (!v6)
  {
    goto LABEL_19;
  }

  v48 = a2;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  [(DDRemoteActionContext *)v6 setURL:v7];

  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v9 setWithObjects:{v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"context"];
  v17 = [v8 initWithDictionary:v16];
  [(DDRemoteActionContext *)v6 setContext:v17];

  if ([coderCopy containsValueForKey:@"result"])
  {
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
    -[DDRemoteActionContext setResult:](v6, "setResult:", CFRetain([v25 coreResult]));

    if (![coderCopy containsValueForKey:@"associatedResults"])
    {
LABEL_4:
      if (![coderCopy containsValueForKey:@"associatedVisualResults"])
      {
        goto LABEL_5;
      }

LABEL_21:
      v42 = MEMORY[0x277CBEB98];
      v43 = objc_opt_class();
      v44 = objc_opt_class();
      v45 = [v42 setWithObjects:{v43, v44, objc_opt_class(), 0}];
      v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"associatedVisualResults"];
      associatedVisualResults = v6->_associatedVisualResults;
      v6->_associatedVisualResults = v46;

      v18 = 0x277CCA000;
      if (![coderCopy containsValueForKey:@"contactHandle"])
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (![coderCopy containsValueForKey:@"associatedResults"])
  {
    goto LABEL_4;
  }

  v26 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
  v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"associatedResults"];

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

  if ([coderCopy containsValueForKey:@"associatedVisualResults"])
  {
    goto LABEL_21;
  }

LABEL_5:
  v18 = 0x277CCA000uLL;
  if ([coderCopy containsValueForKey:@"contactHandle"])
  {
LABEL_6:
    v19 = *(v18 + 3240);
    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"contactHandle"];
    contactHandle = v6->_contactHandle;
    v6->_contactHandle = v21;
  }

LABEL_7:
  v23 = *(v18 + 3240);
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionClass"];
  if ([DDRemoteActionContext isClassAllowedFromString:v24])
  {
    [(DDRemoteActionContext *)v6 setActionClass:v24];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:v48 object:v6 file:@"DDRemoteAction.m" lineNumber:901 description:@"Trying to create a context with an invalid preview action class or an empty class."];
  }

  v38 = v6;

LABEL_19:
  v39 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)createContact:(BOOL *)contact
{
  result = [(DDRemoteActionContext *)self result];
  v6 = [(DDRemoteActionContext *)self URL];
  associatedVisualResults = [(DDRemoteActionContext *)self associatedVisualResults];
  v8 = DDContactFromResult(result, v6, associatedVisualResults, contact);

  return v8;
}

@end