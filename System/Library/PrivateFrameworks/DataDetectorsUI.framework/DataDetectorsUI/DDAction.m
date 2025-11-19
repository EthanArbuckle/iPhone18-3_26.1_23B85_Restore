@interface DDAction
+ (id)actionWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
+ (id)actionsWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
+ (id)clientActionsDelegate;
+ (id)contextByAddingValue:(id)a3 toKey:(id)a4 inContext:(id)a5;
+ (id)defaultActionWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
+ (id)encodableContextWithContext:(id)a3;
+ (id)patchedSchemeForScheme:(id)a3;
+ (void)setClientActionsDelegate:(id)a3;
- (BOOL)ambiguousIcon;
- (DDAction)initWithCoder:(id)a3;
- (DDAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (DDActionDelegate)delegate;
- (NSArray)associatedVisualResults;
- (UIImage)compactIcon;
- (UIImage)icon;
- (UIView)fallBackView;
- (__CFArray)associatedResults;
- (__DDResult)coalescedResult;
- (id)_iconFromName:(id)a3;
- (id)description;
- (id)feedbackIdentifier;
- (id)generateIdentifier;
- (id)localizedName;
- (id)localizedSubItemName:(BOOL)a3;
- (id)variantIconName;
- (uint64_t)calloutFlavor;
- (void)_openURL:(id)a3 fromView:(id)a4 options:(id)a5;
- (void)_openURL:(id)a3 options:(id)a4 fallbackURL:(id)a5;
- (void)addToRecents;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)localizedName;
- (void)performFromView:(id)a3;
- (void)prepareViewControllerForActionController:(id)a3;
- (void)setupPopoverPresentationController:(id)a3 view:(id)a4;
- (void)updateSourceRect:(CGRect)a3;
@end

@implementation DDAction

+ (void)setClientActionsDelegate:(id)a3
{
  obj = a1;
  v4 = a3;
  objc_sync_enter(obj);
  objc_storeWeak(&_clientActionsDelegate, v4);

  objc_sync_exit(obj);
}

+ (id)clientActionsDelegate
{
  v2 = a1;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&_clientActionsDelegate);
  objc_sync_exit(v2);

  return WeakRetained;
}

+ (id)patchedSchemeForScheme:(id)a3
{
  v4 = a3;
  if (v4 && ([a1 matchingSchemes], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v4), v5, v6))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (DDAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = DDAction;
  v11 = [(DDAction *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_url, a3);
    objc_storeStrong(&v12->_context, a5);
    if (a4)
    {
      v13 = DDCreateUpdatedResultWithContext(a4, v10);
      if (!v13)
      {
        v13 = CFRetain(a4);
      }
    }

    else
    {
      v13 = 0;
    }

    v12->_result = v13;
    v14 = [v10 objectForKeyedSubscript:@"Contact"];
    contact = v12->_contact;
    v12->_contact = v14;

    v16 = [v10 objectForKeyedSubscript:@"ICS"];
    ics = v12->_ics;
    v12->_ics = v16;

    DDTrackEventCreationInHostApplication(&v12->_hostApplication);
  }

  return v12;
}

+ (id)contextByAddingValue:(id)a3 toKey:(id)a4 inContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = [v9 mutableCopy];
    }

    v11 = v10;
    [v10 setObject:v7 forKeyedSubscript:v8];
  }

  else if (v7)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v7, v8, 0}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)encodableContextWithContext:(id)a3
{
  v19[14] = *MEMORY[0x277D85DE8];
  v3 = a3;
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
        v11 = [v3 objectForKeyedSubscript:{v10, v14}];
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

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [DDAction encodableContextWithContext:self->_context];
  [v12 encodeObject:v4 forKey:@"context"];

  if (self->_result)
  {
    v5 = [MEMORY[0x277D04218] resultFromCoreResult:?];
    [v12 encodeObject:v5 forKey:@"result"];
  }

  if ([(DDAction *)self coalescedResult])
  {
    v6 = [MEMORY[0x277D04218] resultFromCoreResult:{-[DDAction coalescedResult](self, "coalescedResult")}];
    [v12 encodeObject:v6 forKey:@"coalescedResult"];
  }

  else if ([(DDAction *)self associatedResults])
  {
    v10 = [MEMORY[0x277D04218] resultsFromCoreResults:{-[DDAction associatedResults](self, "associatedResults")}];
    [v12 encodeObject:v10 forKey:@"associatedResults"];

    associatedVisualResults = self->_associatedVisualResults;
    if (associatedVisualResults)
    {
      [v12 encodeObject:associatedVisualResults forKey:@"associatedVisualResults"];
    }
  }

  contact = self->_contact;
  if (contact)
  {
    [v12 encodeObject:contact forKey:@"contact"];
  }

  ics = self->_ics;
  v9 = v12;
  if (ics)
  {
    [v12 encodeObject:ics forKey:@"event"];
    v9 = v12;
  }

  [v9 encodeObject:self->_url forKey:@"url"];
  [v12 encodeBool:self->_isDefaultAction forKey:@"isDefault"];
  [v12 encodeInteger:self->_hostApplication forKey:@"hostApplication"];
}

- (DDAction)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = DDAction;
  v5 = [(DDAction *)&v42 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
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
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"context"];
    v18 = [v41 initWithDictionary:v17];
    context = v5->_context;
    v5->_context = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    ics = v5->_ics;
    v5->_ics = v22;

    if ([v4 containsValueForKey:@"result"])
    {
      v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"result"];
      v5->_result = CFRetain([v24 coreResult]);
    }

    if ([v4 containsValueForKey:@"coalescedResult"])
    {
      v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coalescedResult"];
      v5->_coalescedResult = CFRetain([v25 coreResult]);

      v5->_cachedCoalescedResult = 1;
    }

    if ([v4 containsValueForKey:@"associatedResults"])
    {
      v26 = MEMORY[0x277CBEB98];
      v27 = objc_opt_class();
      v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
      v29 = [v4 decodeObjectOfClasses:v28 forKey:@"associatedResults"];

      v5->_associatedResults = copyCoreResultsArray(v29);
      if ([v4 containsValueForKey:@"associatedVisualResults"])
      {
        v30 = MEMORY[0x277CBEB98];
        v31 = objc_opt_class();
        v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
        v33 = [v4 decodeObjectOfClasses:v32 forKey:@"associatedVisualResults"];
        associatedVisualResults = v5->_associatedVisualResults;
        v5->_associatedVisualResults = v33;
      }

      v5->_cachedAssociatedResults = 1;
    }

    v5->_isDefaultAction = [v4 decodeBoolForKey:@"isDefault"];
    v5->_hostApplication = [v4 decodeIntegerForKey:@"hostApplication"];
  }

  return v5;
}

+ (id)actionWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithURL:v9 result:a4 context:v8];

  return v10;
}

+ (id)actionsWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithURL:v9 result:a4 context:v8];

  v11 = [v10 companionAction];
  v12 = v11;
  if (v11)
  {
    v20 = v10;
    v21 = v11;
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

+ (id)defaultActionWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([a1 isAvailable])
  {
    v10 = [a1 actionWithURL:v8 result:a4 context:v9];
    v11 = [v10 defaultAction];
  }

  else
  {
    v11 = 0;
  }

  return v11;
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

- (void)updateSourceRect:(CGRect)a3
{
  v6 = [MEMORY[0x277CCAE60] valueWithCGRect:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v4 = [DDAction contextByAddingValue:v6 toKey:@"SourceRect" inContext:self->_context];
  context = self->_context;
  self->_context = v4;
}

- (void)prepareViewControllerForActionController:(id)a3
{
  v4 = a3;
  v5 = [(DDAction *)self viewController];
  [v4 action:self viewControllerReady:v5];
  [v4 action:self presentationShouldBeModal:1];
}

- (void)performFromView:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [DDAction performFromView:];
  }
}

- (void)_openURL:(id)a3 options:(id)a4 fallbackURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(33, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__DDAction__openURL_options_fallbackURL___block_invoke;
  v15[3] = &unk_278290DF0;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)_openURL:(id)a3 fromView:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D75128] sharedApplication];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__DDAction__openURL_fromView_options___block_invoke;
  v15[3] = &unk_278291428;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 _openURL:v14 originatingView:v13 options:v12 completionHandler:v15];
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

- (id)localizedSubItemName:(BOOL)a3
{
  v3 = a3;
  v5 = [(DDAction *)self context];
  v6 = [v5 objectForKeyedSubscript:@"ContactLabel"];
  if (v6)
  {
    v7 = v6;
    v8 = [(DDAction *)self context];
    v9 = [v8 objectForKeyedSubscript:@"ContactValue"];

    if (v9)
    {
      v10 = MEMORY[0x277CCACA8];
      if (v3)
      {
        v11 = DDLocalizedString(@"%@: %@");
        v12 = [(DDAction *)self context];
        v13 = [v12 objectForKeyedSubscript:@"ContactLabel"];
        v14 = [(DDAction *)self context];
        v15 = [v14 objectForKeyedSubscript:@"ContactValue"];
        v16 = [v10 stringWithFormat:v11, v13, v15];
      }

      else
      {
        v11 = [(DDAction *)self context];
        v12 = [v11 objectForKeyedSubscript:@"ContactLabel"];
        v13 = [(DDAction *)self context];
        v14 = [v13 objectForKeyedSubscript:@"ContactValue"];
        v16 = [v10 stringWithFormat:@"%@\n%@", v12, v14];
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v17 = [(DDAction *)self context];
  v18 = [v17 objectForKeyedSubscript:@"ContactValue"];

  if (v18)
  {
    v19 = [(DDAction *)self context];
    v16 = [v19 objectForKeyedSubscript:@"ContactValue"];
  }

  else
  {
    v16 = [(DDAction *)self localizedName];
  }

LABEL_11:

  return v16;
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
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  v7 = [v2 stringWithFormat:@"com.apple.datadetectors.%@.%@", v4, v6];

  return v7;
}

- (id)feedbackIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)ambiguousIcon
{
  v2 = [(DDAction *)self iconName];
  if (v2)
  {
    v3 = [&unk_282C2CAD8 containsObject:v2];

    return v3;
  }

  else
  {

    return 1;
  }
}

- (id)variantIconName
{
  v2 = [(DDAction *)self iconName];
  v3 = [v2 stringByAppendingString:@".fill"];

  return v3;
}

- (id)_iconFromName:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277D755B8] _systemImageNamed:v3];
    if (!v4)
    {
      v5 = MEMORY[0x277D755B8];
      v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.DataDetectorsUI"];
      v4 = [v5 imageNamed:v3 inBundle:v6];
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
  v3 = [(DDAction *)self iconName];
  v4 = [(DDAction *)self _iconFromName:v3];

  return v4;
}

- (UIImage)compactIcon
{
  v3 = [(DDAction *)self variantIconName];
  v4 = [(DDAction *)self _iconFromName:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(DDAction *)self icon];
  }

  v7 = v6;

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

- (void)setupPopoverPresentationController:(id)a3 view:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(NSDictionary *)self->_context objectForKeyedSubscript:@"SourceRect"];
  v8 = [v6 window];

  if (!v8)
  {
    v10 = [(DDAction *)self fallBackView];
    goto LABEL_15;
  }

  v9 = v6;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    while (![v11 isHidden])
    {
      v12 = [v11 superview];

      v11 = v12;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    v14 = [(DDAction *)self fallBackView];

    v6 = v7;
    v7 = v11;
    v10 = v14;
LABEL_15:

    v7 = 0;
    v15 = [v10 window];

    if (v15)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_6:
  v13 = [v10 window];

  if (v13)
  {
    goto LABEL_7;
  }

LABEL_16:

  v10 = 0;
LABEL_7:
  [v16 setSourceView:v10];
  [v16 _setCentersPopoverIfSourceViewNotSet:1];
  if (v7)
  {
    [v7 CGRectValue];
  }

  else
  {
    [v10 bounds];
  }

  [v16 setSourceRect:?];
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
    v2 = [v1 BOOLValue];

    return v2;
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