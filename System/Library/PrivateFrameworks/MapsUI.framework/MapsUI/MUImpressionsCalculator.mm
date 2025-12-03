@interface MUImpressionsCalculator
- (BOOL)hasImpressionElements;
- (MUImpressionsCalculator)initWithConfiguration:(id)configuration;
- (NSString)debugState;
- (id)_uiElementForIdentifier:(id)identifier;
- (void)_checkVisibilityForAllItemsOnDate:(id)date;
- (void)_checkVisibilityForElement:(id)element onDate:(id)date;
- (void)_didEnterBackground:(id)background;
- (void)_logEnterForImpressionUIElement:(id)element usingStartDate:(id)date;
- (void)_logExitForImpressionUIElement:(id)element usingExitDate:(id)date;
- (void)_logWorkingSetWithDidBecomeVisible:(BOOL)visible;
- (void)_registerForBackgroundingNotifications;
- (void)_willEnterForeground:(id)foreground;
- (void)setActive:(BOOL)active;
- (void)setSessionIdentifier:(id)identifier;
@end

@implementation MUImpressionsCalculator

- (void)_didEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = MUGetMUImpressionCalculatorBackgroundingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "Did enter background", v6, 2u);
  }

  [(MUImpressionsCalculator *)self _handleNotification:backgroundCopy withProposedActiveState:0];
}

- (void)_willEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = MUGetMUImpressionCalculatorBackgroundingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "Will enter foreground", v6, 2u);
  }

  [(MUImpressionsCalculator *)self _handleNotification:foregroundCopy withProposedActiveState:1];
}

- (void)_registerForBackgroundingNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__willEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__didEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
}

- (BOOL)hasImpressionElements
{
  uiElementsByIdentifiers = [(MUImpressionsCalculator *)self uiElementsByIdentifiers];
  v3 = [uiElementsByIdentifiers count] != 0;

  return v3;
}

- (void)_logWorkingSetWithDidBecomeVisible:(BOOL)visible
{
  visibleCopy = visible;
  v32 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  uiElementsByIdentifiers = [(MUImpressionsCalculator *)self uiElementsByIdentifiers];
  allValues = [uiElementsByIdentifiers allValues];

  v8 = [allValues countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v26;
    *&v9 = 138412290;
    v23 = v9;
    v24 = visibleCopy;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if ([v13 state] == 1)
        {
          if (visibleCopy)
          {
            startDate = [v13 startDate];

            if (!startDate)
            {
              v15 = MUGetMUImpressionVisibilityCheckingLog();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                clientElement = [v13 clientElement];
                elementIdentifier = [clientElement elementIdentifier];
                *buf = v23;
                v30 = elementIdentifier;
                _os_log_impl(&dword_1C5620000, v15, OS_LOG_TYPE_INFO, "Did become visible so Start date of element is nil %@", buf, 0xCu);

                visibleCopy = v24;
              }
            }

            [v13 setStartDate:date];
            [(MUImpressionsCalculator *)self _logEnterForImpressionUIElement:v13 usingStartDate:date];
          }

          else
          {
            [(MUImpressionsCalculator *)self _logExitForImpressionUIElement:v13 usingExitDate:date];
            startDate2 = [v13 startDate];

            if (!startDate2)
            {
              v19 = MUGetMUImpressionVisibilityCheckingLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                clientElement2 = [v13 clientElement];
                elementIdentifier2 = [clientElement2 elementIdentifier];
                *buf = v23;
                v30 = elementIdentifier2;
                _os_log_impl(&dword_1C5620000, v19, OS_LOG_TYPE_INFO, "Start date is already nil %@", buf, 0xCu);

                visibleCopy = v24;
              }
            }

            [v13 setStartDate:0];
          }
        }
      }

      v10 = [allValues countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(MUImpressionsCalculator *)self _logWorkingSetWithDidBecomeVisible:?];
  }
}

- (id)_uiElementForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSMutableDictionary *)self->_uiElementsByIdentifiers objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_checkVisibilityForElement:(id)element onDate:(id)date
{
  v65 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  dateCopy = date;
  if ([(MUImpressionsCalculator *)self isActive])
  {
    clientElement = [elementCopy clientElement];
    [clientElement visibilityThreshold];
    v10 = v9;

    state = [elementCopy state];
    v12 = 0.0;
    if (state != 1)
    {
      v12 = v10;
    }

    v58 = v12;
    scrollView = [(MUImpressionsCalculator *)self scrollView];
    [elementCopy frame];
    v15 = v14;
    [elementCopy frame];
    v17 = v16;
    [scrollView contentInset];
    v19 = v17 + v18;
    [elementCopy frame];
    v21 = v20;
    [elementCopy frame];
    v23 = v22;
    hostingContainerView = [(MUImpressionsCalculatorConfiguration *)self->_configuration hostingContainerView];
    [scrollView convertRect:hostingContainerView toView:{v15, v19, v21, v23}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    [scrollView frame];
    v72.origin.x = v33;
    v72.origin.y = v34;
    v72.size.width = v35;
    v72.size.height = v36;
    v66.origin.x = v26;
    v66.origin.y = v28;
    v66.size.width = v30;
    v66.size.height = v32;
    v67 = CGRectIntersection(v66, v72);
    x = v67.origin.x;
    y = v67.origin.y;
    width = v67.size.width;
    height = v67.size.height;
    clientElement2 = [elementCopy clientElement];
    sessionIdentifier = [clientElement2 sessionIdentifier];
    v43 = [sessionIdentifier isEqual:self->_sessionIdentifier];

    if ((v43 & 1) == 0)
    {
      v44 = MUGetMUImpressionVisibilityCheckingLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        clientElement3 = [elementCopy clientElement];
        sessionIdentifier2 = [clientElement3 sessionIdentifier];
        sessionIdentifier = self->_sessionIdentifier;
        *buf = 138412546;
        v60 = sessionIdentifier2;
        v61 = 2112;
        v62 = sessionIdentifier;
        _os_log_impl(&dword_1C5620000, v44, OS_LOG_TYPE_INFO, "Mismatch of session identifiers %@ with element identifier %@", buf, 0x16u);
      }
    }

    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    if (CGRectIsNull(v68) || (v69.origin.x = x, v69.origin.y = y, v69.size.width = width, v69.size.height = height, CGRectGetHeight(v69) <= 0.0))
    {
      v53 = MUGetMUImpressionVisibilityCheckingLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5620000, v53, OS_LOG_TYPE_DEBUG, "No intersection", buf, 2u);
      }
    }

    else
    {
      v57 = height / v32;
      v48 = MUGetMUImpressionVisibilityCheckingLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v70.origin.x = x;
        v70.origin.y = y;
        v70.size.width = width;
        v70.size.height = height;
        v49 = NSStringFromCGRect(v70);
        v71.origin.x = v26;
        v71.origin.y = v28;
        v71.size.width = v30;
        v71.size.height = v32;
        v50 = NSStringFromCGRect(v71);
        *buf = 138412802;
        v60 = v49;
        v61 = 2112;
        v62 = v50;
        v63 = 2048;
        v64 = height / v32;
        _os_log_impl(&dword_1C5620000, v48, OS_LOG_TYPE_DEBUG, "Comparing a intersection %@ within parent frame %@ and visible percent is %f", buf, 0x20u);
      }

      v52 = height / v32;
      v51 = v58;
      if (v57 >= v58)
      {
        if (![elementCopy state])
        {
          [elementCopy setState:1];
          [elementCopy setStartDate:dateCopy];
          [(MUImpressionsCalculator *)self _logEnterForImpressionUIElement:elementCopy usingStartDate:dateCopy];
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    if ([elementCopy state] == 1)
    {
      [elementCopy setState:0];
      startDate = [elementCopy startDate];

      if (startDate)
      {
        [(MUImpressionsCalculator *)self _logExitForImpressionUIElement:elementCopy usingExitDate:dateCopy];
      }

      else
      {
        v55 = MUGetMUImpressionVisibilityCheckingLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C5620000, v55, OS_LOG_TYPE_DEBUG, "For some reason we have a nil start date", buf, 2u);
        }
      }
    }

    goto LABEL_24;
  }

LABEL_25:

  v56 = *MEMORY[0x1E69E9840];
}

- (void)_checkVisibilityForAllItemsOnDate:(id)date
{
  v16 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if ([(MUImpressionsCalculator *)self isActive])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allValues = [(NSMutableDictionary *)self->_uiElementsByIdentifiers allValues];
    v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          [(MUImpressionsCalculator *)self _checkVisibilityForElement:*(*(&v11 + 1) + 8 * v9++) onDate:dateCopy];
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setSessionIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (([(NSUUID *)self->_sessionIdentifier isEqual:identifierCopy]& 1) == 0)
  {
    v6 = MUGetMUImpressionVisibilityCheckingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      sessionIdentifier = self->_sessionIdentifier;
      v10 = 138412546;
      v11 = sessionIdentifier;
      v12 = 2112;
      v13 = identifierCopy;
      _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "Rotating Session Identifier %@ with %@", &v10, 0x16u);
    }

    objc_storeStrong(&self->_sessionIdentifier, identifier);
    [(NSMutableDictionary *)self->_uiElementsByIdentifiers removeAllObjects];
    v8 = MUGetMUImpressionVisibilityCheckingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_INFO, "Finished removing items and removed the working set", &v10, 2u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (MUImpressionsCalculator)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = MUImpressionsCalculator;
  v6 = [(MUImpressionsCalculator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    uiElementsByIdentifiers = v7->_uiElementsByIdentifiers;
    v7->_uiElementsByIdentifiers = v8;

    [(MUImpressionsCalculator *)v7 _registerForBackgroundingNotifications];
  }

  return v7;
}

- (NSString)debugState
{
  v48 = *MEMORY[0x1E69E9840];
  allValues = [(NSMutableDictionary *)self->_uiElementsByIdentifiers allValues];
  v3 = [allValues copy];

  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_10613];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        state = [v10 state];
        v12 = MEMORY[0x1E696AEC0];
        clientElement = [v10 clientElement];
        debugString = [clientElement debugString];
        startDate = [v10 startDate];
        [v10 frame];
        v16 = NSStringFromCGRect(v52);
        v17 = [v12 stringWithFormat:@"%@ | %@    |   %@", debugString, startDate, v16];

        if (state == 1)
        {
          v18 = v5;
        }

        else
        {
          v18 = v41;
        }

        [v18 addObject:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v7);
  }

  v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Session Identifier: %@\n", self->_sessionIdentifier];
  v19 = v5;
  [v5 insertObject:@"Visible Elements" atIndex:0];
  v37 = [v5 componentsJoinedByString:@"\n"];
  [v41 insertObject:@"Nonvisible Elements" atIndex:0];
  v20 = [v41 componentsJoinedByString:@"\n"];
  scrollView = [(MUImpressionsCalculator *)self scrollView];
  [scrollView contentOffset];
  v23 = v22;
  v25 = v24;
  v26 = MEMORY[0x1E696AEC0];
  [scrollView frame];
  v27 = NSStringFromCGRect(v53);
  [scrollView contentSize];
  v28 = NSStringFromCGSize(v50);
  v51.x = v23;
  v51.y = v25;
  v29 = NSStringFromCGPoint(v51);
  v30 = objc_opt_class();
  v31 = NSStringFromClass(v30);
  v32 = [v26 stringWithFormat:@"Scrollview Metrics\nframe: %@\ncontentSize %@\ncontent offset: %@\ntype: %@", v27, v28, v29, v31];

  v46[0] = v38;
  v46[1] = v37;
  v46[2] = v20;
  v46[3] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
  v34 = [v33 componentsJoinedByString:@"\n\n"];

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

uint64_t __37__MUImpressionsCalculator_debugState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_logEnterForImpressionUIElement:(id)element usingStartDate:(id)date
{
  dateCopy = date;
  elementCopy = element;
  observerBlock = [(MUImpressionsCalculator *)self observerBlock];

  if (observerBlock)
  {
    observerBlock2 = [(MUImpressionsCalculator *)self observerBlock];
    observerBlock2[2]();
  }

  logger = [(MUImpressionsCalculatorConfiguration *)self->_configuration logger];
  clientElement = [elementCopy clientElement];

  [logger logImpressionElementDidEnter:clientElement onDate:dateCopy];
}

- (void)_logExitForImpressionUIElement:(id)element usingExitDate:(id)date
{
  dateCopy = date;
  elementCopy = element;
  observerBlock = [(MUImpressionsCalculator *)self observerBlock];

  if (observerBlock)
  {
    observerBlock2 = [(MUImpressionsCalculator *)self observerBlock];
    observerBlock2[2]();
  }

  logger = [(MUImpressionsCalculatorConfiguration *)self->_configuration logger];
  clientElement = [elementCopy clientElement];
  startDate = [elementCopy startDate];

  [logger logImpressionElementDidExit:clientElement usingEnterDate:startDate exitDate:dateCopy];
}

@end