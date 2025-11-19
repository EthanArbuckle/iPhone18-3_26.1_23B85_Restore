@interface CDPUICustodianAskHelpViewController
- (CDPUICustodianAskHelpViewController)initWithViewModel:(id)a3 cdpContext:(id)a4;
- (id)_buttonIdentifiersJoinedByComma;
- (id)_dontAskForHelpButtonTitle;
- (id)_getHelpNowButtonTitle;
- (id)_makeEventForAskForHelp;
- (id)_makeEventForDontAskForHelp;
- (id)_makeViewAppearedEvent;
- (id)_makeViewWillDisappearEvent;
- (void)_handleAskForHelpNowAction:(id)a3;
- (void)_handleDontAskForHelpAction:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CDPUICustodianAskHelpViewController

- (CDPUICustodianAskHelpViewController)initWithViewModel:(id)a3 cdpContext:(id)a4
{
  v5 = a3;
  v32[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    v30 = a4;
    v10 = MEMORY[0x277D755D0];
    v11 = [MEMORY[0x277D75348] systemWhiteColor];
    v32[0] = v11;
    [MEMORY[0x277D75348] systemWhiteColor];
    v29 = v9;
    v12 = v5;
    v14 = v13 = v8;
    v15 = [v14 colorWithAlphaComponent:0.5];
    v32[1] = v15;
    v16 = [MEMORY[0x277D75348] systemBlueColor];
    v32[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
    v18 = [v10 configurationWithPaletteColors:v17];

    v8 = v13;
    v5 = v12;
    v9 = v29;

    v19 = [MEMORY[0x277D755D0] configurationWithColorRenderingMode:2];
    v20 = [v18 configurationByApplyingConfiguration:v19];

    v21 = MEMORY[0x277D755B8];
    v22 = [v7 iconName];
    v23 = [v21 imageNamed:v22 inBundle:v29 withConfiguration:v20];

    a4 = v30;
  }

  else
  {
    v24 = MEMORY[0x277D755B8];
    v20 = [v7 iconName];
    v23 = [v24 imageNamed:v20 inBundle:v9];
  }

  v25 = [v7 title];
  v26 = [v7 message];
  v31.receiver = self;
  v31.super_class = CDPUICustodianAskHelpViewController;
  v27 = [(CDPUICustodianAskHelpViewController *)&v31 initWithTitle:v25 detailText:v26 icon:v23 contentLayout:3];

  if (v27)
  {
    objc_storeStrong(&v27->_viewModel, v5);
    objc_storeStrong(&v27->_cdpContext, a4);
  }

  return v27;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = CDPUICustodianAskHelpViewController;
  [(OBBaseWelcomeController *)&v9 viewDidLoad];
  v3 = [MEMORY[0x277D37618] boldButton];
  [v3 addTarget:self action:sel__handleAskForHelpNowAction_ forControlEvents:64];
  v4 = [(CDPUICustodianAskHelpViewController *)self _getHelpNowButtonTitle];
  [v3 setTitle:v4 forState:0];

  v5 = [(CDPUICustodianAskHelpViewController *)self buttonTray];
  [v5 addButton:v3];

  v6 = [MEMORY[0x277D37650] linkButton];
  [v6 addTarget:self action:sel__handleDontAskForHelpAction_ forControlEvents:64];
  v7 = [(CDPUICustodianAskHelpViewController *)self _dontAskForHelpButtonTitle];
  [v6 setTitle:v7 forState:0];

  v8 = [(CDPUICustodianAskHelpViewController *)self buttonTray];
  [v8 addButton:v6];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CDPUICustodianAskHelpViewController;
  [(OBBaseWelcomeController *)&v6 viewDidAppear:a3];
  v4 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  v5 = [(CDPUICustodianAskHelpViewController *)self _makeViewAppearedEvent];
  [v4 sendEvent:v5];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CDPUICustodianAskHelpViewController;
  [(OBBaseWelcomeController *)&v6 viewWillDisappear:a3];
  v4 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  v5 = [(CDPUICustodianAskHelpViewController *)self _makeViewWillDisappearEvent];
  [v4 sendEvent:v5];
}

- (id)_makeViewAppearedEvent
{
  v3 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD7F0] category:*MEMORY[0x277CFD930]];
  v4 = [(CDPUICustodianAskHelpViewController *)self _buttonIdentifiersJoinedByComma];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CFD6C8]];
  }

  return v3;
}

- (id)_makeViewWillDisappearEvent
{
  v3 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6E0] category:*MEMORY[0x277CFD930]];
  v4 = [(UIViewController *)self isDisappearingDueToPop];
  v5 = MEMORY[0x277CFD950];
  if (!v4)
  {
    v5 = MEMORY[0x277CFD958];
  }

  [v3 setObject:*v5 forKeyedSubscript:*MEMORY[0x277CFD6D8]];

  return v3;
}

- (void)_handleAskForHelpNowAction:(id)a3
{
  v4 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  v5 = [(CDPUICustodianAskHelpViewController *)self _makeEventForAskForHelp];
  [v4 sendEvent:v5];

  v6 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel getHelpNowOption];
  v7 = [v6 escapeAction];

  if (v7)
  {
    v10 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel getHelpNowOption];
    v8 = [v10 escapeAction];
    v8[2]();
  }

  else
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CDPUICustodianAskHelpViewController _handleAskForHelpNowAction:v9];
    }
  }
}

- (void)_handleDontAskForHelpAction:(id)a3
{
  v4 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  v5 = [(CDPUICustodianAskHelpViewController *)self _makeEventForDontAskForHelp];
  [v4 sendEvent:v5];

  v6 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel dontAskForHelpOption];

  if (v6)
  {
    v8 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel dontAskForHelpOption];
    [v8 handleEscapeAction:self];
  }

  else
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CDPUICustodianAskHelpViewController _handleDontAskForHelpAction:v7];
    }
  }
}

- (id)_getHelpNowButtonTitle
{
  v2 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel getHelpNowOption];
  v3 = [v2 title];

  return v3;
}

- (id)_dontAskForHelpButtonTitle
{
  v2 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel dontAskForHelpOption];
  v3 = [v2 escapeOfferName];

  return v3;
}

- (id)_buttonIdentifiersJoinedByComma
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  v5 = [v4 backBarButtonItem];

  if (v5)
  {
    v6 = MEMORY[0x277CFD950];
  }

  else
  {
    v7 = [(OBBaseWelcomeController *)self navigationItem];
    v8 = [v7 leftBarButtonItem];

    if (!v8)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x277CFD958];
  }

  [v3 addObject:*v6];
LABEL_6:
  v9 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel getHelpNowOption];

  if (v9)
  {
    v10 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel getHelpNowOption];
    v11 = [v10 titleTelemetryKey];
    [v3 addObject:v11];
  }

  v12 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel dontAskForHelpOption];

  if (v12)
  {
    v13 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel dontAskForHelpOption];
    v14 = [v13 titleTelemetryKey];
    [v3 addObject:v14];
  }

  if ([v3 count])
  {
    v15 = [v3 aaf_arrayAsCommaSeperatedString];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_makeEventForAskForHelp
{
  v3 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6E0] category:*MEMORY[0x277CFD930]];
  v4 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel getHelpNowOption];
  v5 = [v4 titleTelemetryKey];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CFD6D8]];

  return v3;
}

- (id)_makeEventForDontAskForHelp
{
  v3 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6E0] category:*MEMORY[0x277CFD930]];
  v4 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel dontAskForHelpOption];
  v5 = [v4 titleTelemetryKey];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CFD6D8]];

  return v3;
}

@end