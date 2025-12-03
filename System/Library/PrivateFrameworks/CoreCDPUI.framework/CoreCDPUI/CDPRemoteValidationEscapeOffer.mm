@interface CDPRemoteValidationEscapeOffer
- (CDPRemoteValidationEscapeOffer)initWithCDPContext:(id)context;
- (NSString)title;
- (UIViewController)presentingViewController;
- (id)_actionFromEscapeOption:(id)option;
- (id)_makeEventForEscapeOptionSelectedWithKey:(id)key;
- (id)escapeOptions;
- (int64_t)_styleForEscapeOption:(id)option;
- (void)_performActionForEscapeOption:(id)option;
- (void)_sendEscapeOfferPresentedEventWithOptions:(id)options;
- (void)addEscapeOptionsObject:(id)object;
- (void)dismissOfferAnimated:(BOOL)animated completion:(id)completion;
- (void)handleEscapeAction:(id)action;
@end

@implementation CDPRemoteValidationEscapeOffer

- (CDPRemoteValidationEscapeOffer)initWithCDPContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = CDPRemoteValidationEscapeOffer;
  v6 = [(CDPRemoteValidationEscapeOffer *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    escapeOptions = v6->_escapeOptions;
    v6->_escapeOptions = v7;

    objc_storeStrong(&v6->_cdpContext, context);
  }

  return v6;
}

- (void)addEscapeOptionsObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    [CDPRemoteValidationEscapeOffer addEscapeOptionsObject:];
  }

  v5 = objectCopy;
  [(NSMutableArray *)self->_escapeOptions addObject:objectCopy];
}

- (id)escapeOptions
{
  v2 = [(NSMutableArray *)self->_escapeOptions copy];

  return v2;
}

- (NSString)title
{
  title = self->_title;
  if (!title)
  {
    title = self->_escapeOfferName;
  }

  v3 = title;

  return v3;
}

- (void)handleEscapeAction:(id)action
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  escapeOptions = [(CDPRemoteValidationEscapeOffer *)self escapeOptions];
  if ([escapeOptions count] != 1)
  {

    goto LABEL_8;
  }

  escapeOptions2 = [(CDPRemoteValidationEscapeOffer *)self escapeOptions];
  firstObject = [escapeOptions2 firstObject];
  style = [firstObject style];

  if (style != 4)
  {
LABEL_8:
    v18 = MEMORY[0x277D75110];
    title = [(CDPRemoteValidationEscapeOffer *)self title];
    message = [(CDPRemoteValidationEscapeOffer *)self message];
    v21 = [v18 alertControllerWithTitle:title message:message preferredStyle:1];

    rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    titleTelemetryKey = [(CDPRemoteValidationEscapeOffer *)self titleTelemetryKey];
    v24 = [(CDPRemoteValidationEscapeOffer *)self _makeEventForEscapeOptionSelectedWithKey:titleTelemetryKey];
    [rtcAnalyticsReporter sendEvent:v24];

    escapeOptions3 = [(CDPRemoteValidationEscapeOffer *)self escapeOptions];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __53__CDPRemoteValidationEscapeOffer_handleEscapeAction___block_invoke;
    v30[3] = &unk_278E2BDE0;
    v30[4] = self;
    v31 = v21;
    v26 = v4;
    v32 = v26;
    firstObject2 = v21;
    [escapeOptions3 enumerateObjectsUsingBlock:v30];

    presentingViewController = [(CDPRemoteValidationEscapeOffer *)self presentingViewController];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __53__CDPRemoteValidationEscapeOffer_handleEscapeAction___block_invoke_2;
    v28[3] = &unk_278E2B2D0;
    v28[4] = self;
    v29 = v26;
    [presentingViewController presentViewController:firstObject2 animated:1 completion:v28];

    goto LABEL_9;
  }

  escapeOptions4 = [(CDPRemoteValidationEscapeOffer *)self escapeOptions];
  firstObject2 = [escapeOptions4 firstObject];

  rtcAnalyticsReporter2 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  titleTelemetryKey2 = [firstObject2 titleTelemetryKey];
  v13 = [(CDPRemoteValidationEscapeOffer *)self _makeEventForEscapeOptionSelectedWithKey:titleTelemetryKey2];
  [rtcAnalyticsReporter2 sendEvent:v13];

  escapeAction = [firstObject2 escapeAction];

  if (escapeAction)
  {
    escapeAction2 = [firstObject2 escapeAction];
    escapeAction2[2]();

    titleTelemetryKey3 = [firstObject2 titleTelemetryKey];

    if (titleTelemetryKey3)
    {
      titleTelemetryKey4 = [firstObject2 titleTelemetryKey];
      [v4 addObject:titleTelemetryKey4];
    }

    [(CDPRemoteValidationEscapeOffer *)self _sendEscapeOfferPresentedEventWithOptions:v4];
  }

LABEL_9:
}

void __53__CDPRemoteValidationEscapeOffer_handleEscapeAction___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 canShowEscapeOption];

  if (!v3 || ([v10 canShowEscapeOption], v4 = objc_claimAutoreleasedReturnValue(), v5 = v4[2](), v4, v5))
  {
    v6 = [*(a1 + 32) _actionFromEscapeOption:v10];
    [*(a1 + 40) addAction:v6];
    v7 = [v10 titleTelemetryKey];

    if (v7)
    {
      v8 = *(a1 + 48);
      v9 = [v10 titleTelemetryKey];
      [v8 addObject:v9];
    }

    if ([v10 style] == 3)
    {
      [*(a1 + 40) setPreferredAction:v6];
    }
  }
}

- (id)_actionFromEscapeOption:(id)option
{
  optionCopy = option;
  v5 = MEMORY[0x277D750F8];
  title = [optionCopy title];
  v7 = [(CDPRemoteValidationEscapeOffer *)self _styleForEscapeOption:optionCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__CDPRemoteValidationEscapeOffer__actionFromEscapeOption___block_invoke;
  v11[3] = &unk_278E2B7F8;
  v11[4] = self;
  v12 = optionCopy;
  v8 = optionCopy;
  v9 = [v5 actionWithTitle:title style:v7 handler:v11];

  return v9;
}

void __58__CDPRemoteValidationEscapeOffer__actionFromEscapeOption___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__CDPRemoteValidationEscapeOffer__actionFromEscapeOption___block_invoke_2;
  v2[3] = &unk_278E2B2D0;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

- (void)_performActionForEscapeOption:(id)option
{
  optionCopy = option;
  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  titleTelemetryKey = [optionCopy titleTelemetryKey];
  v6 = [(CDPRemoteValidationEscapeOffer *)self _makeEventForEscapeOptionSelectedWithKey:titleTelemetryKey];
  [rtcAnalyticsReporter sendEvent:v6];

  escapeAction = [optionCopy escapeAction];

  if (escapeAction)
  {
    escapeAction2 = [optionCopy escapeAction];
    escapeAction2[2]();
  }
}

- (int64_t)_styleForEscapeOption:(id)option
{
  style = [option style];
  if (style == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (style == 2);
  }
}

- (void)dismissOfferAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentingViewController = [(CDPRemoteValidationEscapeOffer *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)_sendEscapeOfferPresentedEventWithOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy count])
  {
    v5 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6D0] category:*MEMORY[0x277CFD930]];
    aaf_arrayAsCommaSeperatedString = [optionsCopy aaf_arrayAsCommaSeperatedString];
    [v5 setObject:aaf_arrayAsCommaSeperatedString forKeyedSubscript:*MEMORY[0x277CFD6C8]];

    rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [rtcAnalyticsReporter sendEvent:v5];
  }

  else
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CDPRemoteValidationEscapeOffer _sendEscapeOfferPresentedEventWithOptions:v5];
    }
  }
}

- (id)_makeEventForEscapeOptionSelectedWithKey:(id)key
{
  keyCopy = key;
  v5 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6E0] category:*MEMORY[0x277CFD930]];
  v6 = v5;
  if (keyCopy)
  {
    [v5 setObject:keyCopy forKeyedSubscript:*MEMORY[0x277CFD6D8]];
  }

  return v6;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end