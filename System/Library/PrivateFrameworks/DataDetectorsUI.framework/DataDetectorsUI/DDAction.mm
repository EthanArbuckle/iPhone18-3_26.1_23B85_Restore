@interface DDAction
+ (id)actionWithURL:(id)l result:(__DDResult *)result context:(id)context;
+ (id)actionsWithURL:(id)l result:(__DDResult *)result context:(id)context;
+ (id)clientActionsDelegate;
+ (id)contextByAddingValue:(id)value toKey:(id)key inContext:(id)context;
+ (id)defaultActionWithURL:(id)l result:(__DDResult *)result context:(id)context;
+ (id)encodableContextWithContext:(id)context;
+ (id)patchedSchemeForScheme:(id)scheme;
+ (void)setClientActionsDelegate:(id)delegate;
- (BOOL)ambiguousIcon;
- (DDAction)initWithCoder:(id)coder;
- (DDAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (DDActionDelegate)delegate;
- (NSArray)associatedVisualResults;
- (UIImage)compactIcon;
- (UIImage)icon;
- (UIView)fallBackView;
- (__CFArray)associatedResults;
- (__DDResult)coalescedResult;
- (id)_iconFromName:(id)name;
- (id)description;
- (id)feedbackIdentifier;
- (id)generateIdentifier;
- (id)localizedName;
- (id)localizedSubItemName:(BOOL)name;
- (id)variantIconName;
- (uint64_t)calloutFlavor;
- (void)_openURL:(id)l fromView:(id)view options:(id)options;
- (void)_openURL:(id)l options:(id)options fallbackURL:(id)rL;
- (void)addToRecents;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)localizedName;
- (void)performFromView:(id)view;
- (void)prepareViewControllerForActionController:(id)controller;
- (void)setupPopoverPresentationController:(id)controller view:(id)view;
- (void)updateSourceRect:(CGRect)rect;
@end

@implementation DDAction

+ (void)setClientActionsDelegate:(id)delegate
{
  obj = self;
  delegateCopy = delegate;
  objc_sync_enter(obj);
  objc_storeWeak(&_clientActionsDelegate, delegateCopy);

  objc_sync_exit(obj);
}

+ (id)clientActionsDelegate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&_clientActionsDelegate);
  objc_sync_exit(selfCopy);

  return WeakRetained;
}

+ (id)patchedSchemeForScheme:(id)scheme
{
  schemeCopy = scheme;
  if (schemeCopy && ([self matchingSchemes], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", schemeCopy), v5, v6))
  {
    v7 = schemeCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (DDAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  lCopy = l;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = DDAction;
  v11 = [(DDAction *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_url, l);
    objc_storeStrong(&v12->_context, context);
    if (result)
    {
      v13 = DDCreateUpdatedResultWithContext(result, contextCopy);
      if (!v13)
      {
        v13 = CFRetain(result);
      }
    }

    else
    {
      v13 = 0;
    }

    v12->_result = v13;
    v14 = [contextCopy objectForKeyedSubscript:@"Contact"];
    contact = v12->_contact;
    v12->_contact = v14;

    v16 = [contextCopy objectForKeyedSubscript:@"ICS"];
    ics = v12->_ics;
    v12->_ics = v16;

    DDTrackEventCreationInHostApplication(&v12->_hostApplication);
  }

  return v12;
}

+ (id)contextByAddingValue:(id)value toKey:(id)key inContext:(id)context
{
  valueCopy = value;
  keyCopy = key;
  contextCopy = context;
  if (contextCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = contextCopy;
    }

    else
    {
      v10 = [contextCopy mutableCopy];
    }

    v11 = v10;
    [v10 setObject:valueCopy forKeyedSubscript:keyCopy];
  }

  else if (valueCopy)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{valueCopy, keyCopy, 0}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)encodableContextWithContext:(id)context
{
  v19[14] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19[0] = @"EventTitle";
  v19[1] = @"SelectedText";
  v19[2] = @"ReferenceDate";
  v19[3] = @"SpecialURL";
  v19[4] = @"IsAccountManaged";
  v19[5] = @"CoreRecents";
  v19[6] = @"EventComponents";
  v19[7] = @"ICS";
  v19[8] = @"Contact";
  v19[9] = @"LeadingText";
  v19[10] = @"MiddleText";
  v19[11] = @"TrailingText";
  v19[12] = @"GroupTranscript";
  v19[13] = @"CoreSpotlightUniqueIdentifier";
  [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:14];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [contextCopy objectForKeyedSubscript:{v10, v14}];
        if (v11)
        {
          [v4 setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [DDAction encodableContextWithContext:self->_context];
  [coderCopy encodeObject:v4 forKey:@"context"];

  if (self->_result)
  {
    v5 = [MEMORY[0x277D04218] resultFromCoreResult:?];
    [coderCopy encodeObject:v5 forKey:@"result"];
  }

  if ([(DDAction *)self coalescedResult])
  {
    v6 = [MEMORY[0x277D04218] resultFromCoreResult:{-[DDAction coalescedResult](self, "coalescedResult")}];
    [coderCopy encodeObject:v6 forKey:@"coalescedResult"];
  }

  else if ([(DDAction *)self associatedResults])
  {
    v10 = [MEMORY[0x277D04218] resultsFromCoreResults:{-[DDAction associatedResults](self, "associatedResults")}];
    [coderCopy encodeObject:v10 forKey:@"associatedResults"];

    associatedVisualResults = self->_associatedVisualResults;
    if (associatedVisualResults)
    {
      [coderCopy encodeObject:associatedVisualResults forKey:@"associatedVisualResults"];
    }
  }

  contact = self->_contact;
  if (contact)
  {
    [coderCopy encodeObject:contact forKey:@"contact"];
  }

  ics = self->_ics;
  v9 = coderCopy;
  if (ics)
  {
    [coderCopy encodeObject:ics forKey:@"event"];
    v9 = coderCopy;
  }

  [v9 encodeObject:self->_url forKey:@"url"];
  [coderCopy encodeBool:self->_isDefaultAction forKey:@"isDefault"];
  [coderCopy encodeInteger:self->_hostApplication forKey:@"hostApplication"];
}

- (DDAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = DDAction;
  v5 = [(DDAction *)&v42 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = objc_alloc(MEMORY[0x277CBEB38]);
    v40 = MEMORY[0x277CBEB98];
    v41 = v8;
    v39 = objc_opt_class();
    v38 = objc_opt_class();
    v37 = objc_opt_class();
    v36 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v40 setWithObjects:{v39, v38, v37, v36, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"context"];
    v18 = [v41 initWithDictionary:v17];
    context = v5->_context;
    v5->_context = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    ics = v5->_ics;
    v5->_ics = v22;

    if ([coderCopy containsValueForKey:@"result"])
    {
      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"result"];
      v5->_result = CFRetain([v24 coreResult]);
    }

    if ([coderCopy containsValueForKey:@"coalescedResult"])
    {
      v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coalescedResult"];
      v5->_coalescedResult = CFRetain([v25 coreResult]);

      v5->_cachedCoalescedResult = 1;
    }

    if ([coderCopy containsValueForKey:@"associatedResults"])
    {
      v26 = MEMORY[0x277CBEB98];
      v27 = objc_opt_class();
      v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
      v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"associatedResults"];

      v5->_associatedResults = copyCoreResultsArray(v29);
      if ([coderCopy containsValueForKey:@"associatedVisualResults"])
      {
        v30 = MEMORY[0x277CBEB98];
        v31 = objc_opt_class();
        v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
        v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"associatedVisualResults"];
        associatedVisualResults = v5->_associatedVisualResults;
        v5->_associatedVisualResults = v33;
      }

      v5->_cachedAssociatedResults = 1;
    }

    v5->_isDefaultAction = [coderCopy decodeBoolForKey:@"isDefault"];
    v5->_hostApplication = [coderCopy decodeIntegerForKey:@"hostApplication"];
  }

  return v5;
}

+ (id)actionWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  contextCopy = context;
  lCopy = l;
  v10 = [[self alloc] initWithURL:lCopy result:result context:contextCopy];

  return v10;
}

+ (id)actionsWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  lCopy = l;
  v10 = [[self alloc] initWithURL:lCopy result:result context:contextCopy];

  companionAction = [v10 companionAction];
  v12 = companionAction;
  if (companionAction)
  {
    v20 = v10;
    v21 = companionAction;
    v13 = MEMORY[0x277CBEA60];
    v14 = &v20;
    v15 = 2;
  }

  else
  {
    v19 = v10;
    v13 = MEMORY[0x277CBEA60];
    v14 = &v19;
    v15 = 1;
  }

  v16 = [v13 arrayWithObjects:v14 count:{v15, v19, v20, v21, v22}];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)defaultActionWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  lCopy = l;
  contextCopy = context;
  if ([self isAvailable])
  {
    v10 = [self actionWithURL:lCopy result:result context:contextCopy];
    defaultAction = [v10 defaultAction];
  }

  else
  {
    defaultAction = 0;
  }

  return defaultAction;
}

- (void)dealloc
{
  result = self->_result;
  if (result)
  {
    CFRelease(result);
  }

  coalescedResult = self->_coalescedResult;
  if (coalescedResult)
  {
    CFRelease(coalescedResult);
  }

  associatedResults = self->_associatedResults;
  if (associatedResults)
  {
    CFRelease(associatedResults);
  }

  v6.receiver = self;
  v6.super_class = DDAction;
  [(DDAction *)&v6 dealloc];
}

- (void)updateSourceRect:(CGRect)rect
{
  v6 = [MEMORY[0x277CCAE60] valueWithCGRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  v4 = [DDAction contextByAddingValue:v6 toKey:@"SourceRect" inContext:self->_context];
  context = self->_context;
  self->_context = v4;
}

- (void)prepareViewControllerForActionController:(id)controller
{
  controllerCopy = controller;
  viewController = [(DDAction *)self viewController];
  [controllerCopy action:self viewControllerReady:viewController];
  [controllerCopy action:self presentationShouldBeModal:1];
}

- (void)performFromView:(id)view
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [DDAction performFromView:];
  }
}

- (void)_openURL:(id)l options:(id)options fallbackURL:(id)rL
{
  lCopy = l;
  optionsCopy = options;
  rLCopy = rL;
  v11 = dispatch_get_global_queue(33, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__DDAction__openURL_options_fallbackURL___block_invoke;
  v15[3] = &unk_278290DF0;
  v16 = lCopy;
  v17 = optionsCopy;
  v18 = rLCopy;
  selfCopy = self;
  v12 = rLCopy;
  v13 = optionsCopy;
  v14 = lCopy;
  dispatch_async(v11, v15);
}

void __41__DDAction__openURL_options_fallbackURL___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__DDAction__openURL_options_fallbackURL___block_invoke_2;
  v9[3] = &unk_278291428;
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 32);
  *(&v7 + 1) = *(a1 + 56);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v2 openURL:v3 options:v4 completionHandler:v9];
}

void __41__DDAction__openURL_options_fallbackURL___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = dispatch_get_global_queue(33, 0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __41__DDAction__openURL_options_fallbackURL___block_invoke_3;
    v8[3] = &unk_278290DF0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *&v6 = *(a1 + 48);
    *(&v6 + 1) = *(a1 + 56);
    *&v7 = v4;
    *(&v7 + 1) = v5;
    v9 = v7;
    v10 = v6;
    dispatch_async(v3, v8);
  }
}

void __41__DDAction__openURL_options_fallbackURL___block_invoke_3(uint64_t a1)
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277D75128] sharedApplication];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__DDAction__openURL_options_fallbackURL___block_invoke_4;
    v14[3] = &unk_278291400;
    v15 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v16 = v5;
    v17 = v6;
    [v2 openURL:v3 options:v4 completionHandler:v14];

    v7 = v15;
  }

  else
  {
    v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v9 = *(a1 + 48);
    v10 = *MEMORY[0x277D0AC58];
    v18[0] = *MEMORY[0x277D0AC70];
    v18[1] = v10;
    v19[0] = MEMORY[0x277CBEC38];
    v19[1] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v13 = 0;
    [v8 openSensitiveURL:v9 withOptions:v11 error:&v13];
    v7 = v13;

    if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __41__DDAction__openURL_options_fallbackURL___block_invoke_3_cold_1((a1 + 48), a1);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __41__DDAction__openURL_options_fallbackURL___block_invoke_4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __41__DDAction__openURL_options_fallbackURL___block_invoke_4_cold_1(a1);
  }
}

- (void)_openURL:(id)l fromView:(id)view options:(id)options
{
  lCopy = l;
  viewCopy = view;
  optionsCopy = options;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__DDAction__openURL_fromView_options___block_invoke;
  v15[3] = &unk_278291428;
  v16 = lCopy;
  v17 = viewCopy;
  v18 = optionsCopy;
  selfCopy = self;
  v12 = optionsCopy;
  v13 = viewCopy;
  v14 = lCopy;
  [mEMORY[0x277D75128] _openURL:v14 originatingView:v13 options:v12 completionHandler:v15];
}

void __38__DDAction__openURL_fromView_options___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (dd_isInternalInstall())
    {
      v3 = [*(a1 + 32) radarWebURL];
      if (v3)
      {
        v4 = [MEMORY[0x277D75128] sharedApplication];
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __38__DDAction__openURL_fromView_options___block_invoke_2;
        v10[3] = &unk_278291428;
        v10[4] = *(a1 + 56);
        v11 = *(a1 + 32);
        v12 = *(a1 + 48);
        v13 = v3;
        [v4 _openURL:v13 originatingView:v5 options:v6 completionHandler:v10];
      }

      else
      {
        [*(a1 + 56) _openURL:*(a1 + 32) options:*(a1 + 48) fallbackURL:0];
      }
    }

    else
    {
      v7 = *(a1 + 32);
      v9 = *(a1 + 48);
      v8 = *(a1 + 56);

      [v8 _openURL:v7 options:v9 fallbackURL:0];
    }
  }
}

uint64_t __38__DDAction__openURL_fromView_options___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _openURL:*(result + 40) options:*(result + 48) fallbackURL:*(result + 56)];
  }

  return result;
}

- (id)localizedName
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [DDAction localizedName];
  }

  return &stru_282C1E0A8;
}

- (id)localizedSubItemName:(BOOL)name
{
  nameCopy = name;
  context = [(DDAction *)self context];
  v6 = [context objectForKeyedSubscript:@"ContactLabel"];
  if (v6)
  {
    v7 = v6;
    context2 = [(DDAction *)self context];
    v9 = [context2 objectForKeyedSubscript:@"ContactValue"];

    if (v9)
    {
      v10 = MEMORY[0x277CCACA8];
      if (nameCopy)
      {
        context5 = DDLocalizedString(@"%@: %@");
        context3 = [(DDAction *)self context];
        context6 = [context3 objectForKeyedSubscript:@"ContactLabel"];
        context4 = [(DDAction *)self context];
        v15 = [context4 objectForKeyedSubscript:@"ContactValue"];
        localizedName = [v10 stringWithFormat:context5, context6, v15];
      }

      else
      {
        context5 = [(DDAction *)self context];
        context3 = [context5 objectForKeyedSubscript:@"ContactLabel"];
        context6 = [(DDAction *)self context];
        context4 = [context6 objectForKeyedSubscript:@"ContactValue"];
        localizedName = [v10 stringWithFormat:@"%@\n%@", context3, context4];
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  context7 = [(DDAction *)self context];
  v18 = [context7 objectForKeyedSubscript:@"ContactValue"];

  if (v18)
  {
    context8 = [(DDAction *)self context];
    localizedName = [context8 objectForKeyedSubscript:@"ContactValue"];
  }

  else
  {
    localizedName = [(DDAction *)self localizedName];
  }

LABEL_11:

  return localizedName;
}

- (__DDResult)coalescedResult
{
  if (self->_cachedCoalescedResult)
  {
    return self->_coalescedResult;
  }

  v4 = [(NSDictionary *)self->_context objectForKey:@"GroupAllResultsKey"];
  v5 = copyCoreResultsArray(v4);
  v6 = v5;
  if (v5)
  {
    v7 = v5;

    if (!self->_result)
    {
LABEL_5:

      return 0;
    }
  }

  else
  {
    v7 = [(NSDictionary *)self->_context objectForKey:@"AllResults"];

    if (!self->_result)
    {
      goto LABEL_5;
    }
  }

  if (!v7)
  {
    goto LABEL_5;
  }

  SignatureContainingResult = DDResultGetSignatureContainingResult();
  if (SignatureContainingResult)
  {
    v9 = CFRetain(SignatureContainingResult);
  }

  else
  {
    v9 = 0;
  }

  self->_coalescedResult = v9;
  self->_cachedCoalescedResult = 1;

  return v9;
}

- (__CFArray)associatedResults
{
  if (self->_cachedAssociatedResults)
  {
    return self->_associatedResults;
  }

  v4 = self->_result;
  context = self->_context;
  v10 = 0;
  v6 = copyAssociatedResultsFromResultWithContext(v4, context, &v10);
  v7 = v10;
  v8 = v10;
  self->_associatedResults = v6;
  if (v6)
  {
    objc_storeStrong(&self->_associatedVisualResults, v7);
    self->_cachedAssociatedResults = 1;
    associatedResults = self->_associatedResults;
  }

  else
  {
    associatedResults = 0;
  }

  return associatedResults;
}

- (NSArray)associatedVisualResults
{
  [(DDAction *)self associatedResults];
  associatedVisualResults = self->_associatedVisualResults;

  return associatedVisualResults;
}

- (id)generateIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [v2 stringWithFormat:@"com.apple.datadetectors.%@.%@", v4, uUIDString];

  return v7;
}

- (id)feedbackIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)ambiguousIcon
{
  iconName = [(DDAction *)self iconName];
  if (iconName)
  {
    v3 = [&unk_282C2CAD8 containsObject:iconName];

    return v3;
  }

  else
  {

    return 1;
  }
}

- (id)variantIconName
{
  iconName = [(DDAction *)self iconName];
  v3 = [iconName stringByAppendingString:@".fill"];

  return v3;
}

- (id)_iconFromName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v4 = [MEMORY[0x277D755B8] _systemImageNamed:nameCopy];
    if (!v4)
    {
      v5 = MEMORY[0x277D755B8];
      v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.DataDetectorsUI"];
      v4 = [v5 imageNamed:nameCopy inBundle:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIImage)icon
{
  iconName = [(DDAction *)self iconName];
  v4 = [(DDAction *)self _iconFromName:iconName];

  return v4;
}

- (UIImage)compactIcon
{
  variantIconName = [(DDAction *)self variantIconName];
  v4 = [(DDAction *)self _iconFromName:variantIconName];
  v5 = v4;
  if (v4)
  {
    icon = v4;
  }

  else
  {
    icon = [(DDAction *)self icon];
  }

  v7 = icon;

  return v7;
}

- (void)addToRecents
{
  if (self->_result)
  {
    v3 = [MEMORY[0x277D04218] resultFromCoreResult:?];
    [DDCoreRecents addResultToRecents:v3 associatedResults:[(DDAction *)self associatedResults] weight:0 context:self->_context userInitiated:1];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = self->_result;
  v7 = [v3 stringWithFormat:@"<%@:%p result:%@ URL:%@>", v5, self, v6, self->_url];

  return v7;
}

- (void)invalidate
{
  viewController = self->_viewController;
  self->_viewController = 0;
  MEMORY[0x2821F96F8]();
}

- (void)setupPopoverPresentationController:(id)controller view:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  v7 = [(NSDictionary *)self->_context objectForKeyedSubscript:@"SourceRect"];
  window = [viewCopy window];

  if (!window)
  {
    fallBackView = [(DDAction *)self fallBackView];
    goto LABEL_15;
  }

  v9 = viewCopy;
  fallBackView = v9;
  if (v9)
  {
    v11 = v9;
    while (![v11 isHidden])
    {
      superview = [v11 superview];

      v11 = superview;
      if (!superview)
      {
        goto LABEL_6;
      }
    }

    fallBackView2 = [(DDAction *)self fallBackView];

    viewCopy = v7;
    v7 = v11;
    fallBackView = fallBackView2;
LABEL_15:

    v7 = 0;
    window2 = [fallBackView window];

    if (window2)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_6:
  window3 = [fallBackView window];

  if (window3)
  {
    goto LABEL_7;
  }

LABEL_16:

  fallBackView = 0;
LABEL_7:
  [controllerCopy setSourceView:fallBackView];
  [controllerCopy _setCentersPopoverIfSourceViewNotSet:1];
  if (v7)
  {
    [v7 CGRectValue];
  }

  else
  {
    [fallBackView bounds];
  }

  [controllerCopy setSourceRect:?];
}

- (DDActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)fallBackView
{
  WeakRetained = objc_loadWeakRetained(&self->_fallBackView);

  return WeakRetained;
}

- (uint64_t)calloutFlavor
{
  if (result)
  {
    v1 = [*(result + 56) objectForKeyedSubscript:@"kDDContextNoRoomForSubtitlesKey"];
    bOOLValue = [v1 BOOLValue];

    return bOOLValue;
  }

  return result;
}

- (void)performFromView:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __41__DDAction__openURL_options_fallbackURL___block_invoke_3_cold_1(id *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [*a1 scheme];
  v4 = *(a2 + 56);
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __41__DDAction__openURL_options_fallbackURL___block_invoke_4_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) scheme];
  v3 = [*(a1 + 40) scheme];
  v4 = *(a1 + 48);
  objc_opt_class();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)localizedName
{
  v8 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end