@interface CDPRemoteValidationEscapeOffer
- (CDPRemoteValidationEscapeOffer)initWithCDPContext:(id)a3;
- (NSString)title;
- (UIViewController)presentingViewController;
- (id)_actionFromEscapeOption:(id)a3;
- (id)_makeEventForEscapeOptionSelectedWithKey:(id)a3;
- (id)escapeOptions;
- (int64_t)_styleForEscapeOption:(id)a3;
- (void)_performActionForEscapeOption:(id)a3;
- (void)_sendEscapeOfferPresentedEventWithOptions:(id)a3;
- (void)addEscapeOptionsObject:(id)a3;
- (void)dismissOfferAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleEscapeAction:(id)a3;
@end

@implementation CDPRemoteValidationEscapeOffer

- (CDPRemoteValidationEscapeOffer)initWithCDPContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CDPRemoteValidationEscapeOffer;
  v6 = [(CDPRemoteValidationEscapeOffer *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    escapeOptions = v6->_escapeOptions;
    v6->_escapeOptions = v7;

    objc_storeStrong(&v6->_cdpContext, a3);
  }

  return v6;
}

- (void)addEscapeOptionsObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [CDPRemoteValidationEscapeOffer addEscapeOptionsObject:];
  }

  v5 = v4;
  [(NSMutableArray *)self->_escapeOptions addObject:v4];
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

- (void)handleEscapeAction:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(CDPRemoteValidationEscapeOffer *)self escapeOptions];
  if ([v5 count] != 1)
  {

    goto LABEL_8;
  }

  v6 = [(CDPRemoteValidationEscapeOffer *)self escapeOptions];
  v7 = [v6 firstObject];
  v8 = [v7 style];

  if (v8 != 4)
  {
LABEL_8:
    v18 = MEMORY[0x277D75110];
    v19 = [(CDPRemoteValidationEscapeOffer *)self title];
    v20 = [(CDPRemoteValidationEscapeOffer *)self message];
    v21 = [v18 alertControllerWithTitle:v19 message:v20 preferredStyle:1];

    v22 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    v23 = [(CDPRemoteValidationEscapeOffer *)self titleTelemetryKey];
    v24 = [(CDPRemoteValidationEscapeOffer *)self _makeEventForEscapeOptionSelectedWithKey:v23];
    [v22 sendEvent:v24];

    v25 = [(CDPRemoteValidationEscapeOffer *)self escapeOptions];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __53__CDPRemoteValidationEscapeOffer_handleEscapeAction___block_invoke;
    v30[3] = &unk_278E2BDE0;
    v30[4] = self;
    v31 = v21;
    v26 = v4;
    v32 = v26;
    v10 = v21;
    [v25 enumerateObjectsUsingBlock:v30];

    v27 = [(CDPRemoteValidationEscapeOffer *)self presentingViewController];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __53__CDPRemoteValidationEscapeOffer_handleEscapeAction___block_invoke_2;
    v28[3] = &unk_278E2B2D0;
    v28[4] = self;
    v29 = v26;
    [v27 presentViewController:v10 animated:1 completion:v28];

    goto LABEL_9;
  }

  v9 = [(CDPRemoteValidationEscapeOffer *)self escapeOptions];
  v10 = [v9 firstObject];

  v11 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  v12 = [v10 titleTelemetryKey];
  v13 = [(CDPRemoteValidationEscapeOffer *)self _makeEventForEscapeOptionSelectedWithKey:v12];
  [v11 sendEvent:v13];

  v14 = [v10 escapeAction];

  if (v14)
  {
    v15 = [v10 escapeAction];
    v15[2]();

    v16 = [v10 titleTelemetryKey];

    if (v16)
    {
      v17 = [v10 titleTelemetryKey];
      [v4 addObject:v17];
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

- (id)_actionFromEscapeOption:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D750F8];
  v6 = [v4 title];
  v7 = [(CDPRemoteValidationEscapeOffer *)self _styleForEscapeOption:v4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__CDPRemoteValidationEscapeOffer__actionFromEscapeOption___block_invoke;
  v11[3] = &unk_278E2B7F8;
  v11[4] = self;
  v12 = v4;
  v8 = v4;
  v9 = [v5 actionWithTitle:v6 style:v7 handler:v11];

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

- (void)_performActionForEscapeOption:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  v5 = [v9 titleTelemetryKey];
  v6 = [(CDPRemoteValidationEscapeOffer *)self _makeEventForEscapeOptionSelectedWithKey:v5];
  [v4 sendEvent:v6];

  v7 = [v9 escapeAction];

  if (v7)
  {
    v8 = [v9 escapeAction];
    v8[2]();
  }
}

- (int64_t)_styleForEscapeOption:(id)a3
{
  v3 = [a3 style];
  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

- (void)dismissOfferAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CDPRemoteValidationEscapeOffer *)self presentingViewController];
  [v7 dismissViewControllerAnimated:v4 completion:v6];
}

- (void)_sendEscapeOfferPresentedEventWithOptions:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6D0] category:*MEMORY[0x277CFD930]];
    v6 = [v4 aaf_arrayAsCommaSeperatedString];
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CFD6C8]];

    v7 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v7 sendEvent:v5];
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

- (id)_makeEventForEscapeOptionSelectedWithKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6E0] category:*MEMORY[0x277CFD930]];
  v6 = v5;
  if (v4)
  {
    [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x277CFD6D8]];
  }

  return v6;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end