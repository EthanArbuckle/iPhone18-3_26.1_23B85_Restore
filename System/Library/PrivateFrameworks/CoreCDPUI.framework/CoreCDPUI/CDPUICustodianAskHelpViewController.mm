@interface CDPUICustodianAskHelpViewController
- (CDPUICustodianAskHelpViewController)initWithViewModel:(id)model cdpContext:(id)context;
- (id)_buttonIdentifiersJoinedByComma;
- (id)_dontAskForHelpButtonTitle;
- (id)_getHelpNowButtonTitle;
- (id)_makeEventForAskForHelp;
- (id)_makeEventForDontAskForHelp;
- (id)_makeViewAppearedEvent;
- (id)_makeViewWillDisappearEvent;
- (void)_handleAskForHelpNowAction:(id)action;
- (void)_handleDontAskForHelpAction:(id)action;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CDPUICustodianAskHelpViewController

- (CDPUICustodianAskHelpViewController)initWithViewModel:(id)model cdpContext:(id)context
{
  modelCopy = model;
  v32[3] = *MEMORY[0x277D85DE8];
  modelCopy2 = model;
  contextCopy = context;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if ([MEMORY[0x277CFD560] isNaturalUIEnabled])
  {
    contextCopy2 = context;
    v10 = MEMORY[0x277D755D0];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    v32[0] = systemWhiteColor;
    [MEMORY[0x277D75348] systemWhiteColor];
    v29 = v9;
    v12 = modelCopy;
    v14 = v13 = contextCopy;
    v15 = [v14 colorWithAlphaComponent:0.5];
    v32[1] = v15;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v32[2] = systemBlueColor;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
    v18 = [v10 configurationWithPaletteColors:v17];

    contextCopy = v13;
    modelCopy = v12;
    v9 = v29;

    v19 = [MEMORY[0x277D755D0] configurationWithColorRenderingMode:2];
    iconName2 = [v18 configurationByApplyingConfiguration:v19];

    v21 = MEMORY[0x277D755B8];
    iconName = [modelCopy2 iconName];
    v23 = [v21 imageNamed:iconName inBundle:v29 withConfiguration:iconName2];

    context = contextCopy2;
  }

  else
  {
    v24 = MEMORY[0x277D755B8];
    iconName2 = [modelCopy2 iconName];
    v23 = [v24 imageNamed:iconName2 inBundle:v9];
  }

  title = [modelCopy2 title];
  message = [modelCopy2 message];
  v31.receiver = self;
  v31.super_class = CDPUICustodianAskHelpViewController;
  v27 = [(CDPUICustodianAskHelpViewController *)&v31 initWithTitle:title detailText:message icon:v23 contentLayout:3];

  if (v27)
  {
    objc_storeStrong(&v27->_viewModel, modelCopy);
    objc_storeStrong(&v27->_cdpContext, context);
  }

  return v27;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = CDPUICustodianAskHelpViewController;
  [(OBBaseWelcomeController *)&v9 viewDidLoad];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton addTarget:self action:sel__handleAskForHelpNowAction_ forControlEvents:64];
  _getHelpNowButtonTitle = [(CDPUICustodianAskHelpViewController *)self _getHelpNowButtonTitle];
  [boldButton setTitle:_getHelpNowButtonTitle forState:0];

  buttonTray = [(CDPUICustodianAskHelpViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [linkButton addTarget:self action:sel__handleDontAskForHelpAction_ forControlEvents:64];
  _dontAskForHelpButtonTitle = [(CDPUICustodianAskHelpViewController *)self _dontAskForHelpButtonTitle];
  [linkButton setTitle:_dontAskForHelpButtonTitle forState:0];

  buttonTray2 = [(CDPUICustodianAskHelpViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CDPUICustodianAskHelpViewController;
  [(OBBaseWelcomeController *)&v6 viewDidAppear:appear];
  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  _makeViewAppearedEvent = [(CDPUICustodianAskHelpViewController *)self _makeViewAppearedEvent];
  [rtcAnalyticsReporter sendEvent:_makeViewAppearedEvent];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CDPUICustodianAskHelpViewController;
  [(OBBaseWelcomeController *)&v6 viewWillDisappear:disappear];
  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  _makeViewWillDisappearEvent = [(CDPUICustodianAskHelpViewController *)self _makeViewWillDisappearEvent];
  [rtcAnalyticsReporter sendEvent:_makeViewWillDisappearEvent];
}

- (id)_makeViewAppearedEvent
{
  v3 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD7F0] category:*MEMORY[0x277CFD930]];
  _buttonIdentifiersJoinedByComma = [(CDPUICustodianAskHelpViewController *)self _buttonIdentifiersJoinedByComma];
  if (_buttonIdentifiersJoinedByComma)
  {
    [v3 setObject:_buttonIdentifiersJoinedByComma forKeyedSubscript:*MEMORY[0x277CFD6C8]];
  }

  return v3;
}

- (id)_makeViewWillDisappearEvent
{
  v3 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6E0] category:*MEMORY[0x277CFD930]];
  isDisappearingDueToPop = [(UIViewController *)self isDisappearingDueToPop];
  v5 = MEMORY[0x277CFD950];
  if (!isDisappearingDueToPop)
  {
    v5 = MEMORY[0x277CFD958];
  }

  [v3 setObject:*v5 forKeyedSubscript:*MEMORY[0x277CFD6D8]];

  return v3;
}

- (void)_handleAskForHelpNowAction:(id)action
{
  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  _makeEventForAskForHelp = [(CDPUICustodianAskHelpViewController *)self _makeEventForAskForHelp];
  [rtcAnalyticsReporter sendEvent:_makeEventForAskForHelp];

  getHelpNowOption = [(CDPUICustodianAskHelpViewModel *)self->_viewModel getHelpNowOption];
  escapeAction = [getHelpNowOption escapeAction];

  if (escapeAction)
  {
    getHelpNowOption2 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel getHelpNowOption];
    escapeAction2 = [getHelpNowOption2 escapeAction];
    escapeAction2[2]();
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

- (void)_handleDontAskForHelpAction:(id)action
{
  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  _makeEventForDontAskForHelp = [(CDPUICustodianAskHelpViewController *)self _makeEventForDontAskForHelp];
  [rtcAnalyticsReporter sendEvent:_makeEventForDontAskForHelp];

  dontAskForHelpOption = [(CDPUICustodianAskHelpViewModel *)self->_viewModel dontAskForHelpOption];

  if (dontAskForHelpOption)
  {
    dontAskForHelpOption2 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel dontAskForHelpOption];
    [dontAskForHelpOption2 handleEscapeAction:self];
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
  getHelpNowOption = [(CDPUICustodianAskHelpViewModel *)self->_viewModel getHelpNowOption];
  title = [getHelpNowOption title];

  return title;
}

- (id)_dontAskForHelpButtonTitle
{
  dontAskForHelpOption = [(CDPUICustodianAskHelpViewModel *)self->_viewModel dontAskForHelpOption];
  escapeOfferName = [dontAskForHelpOption escapeOfferName];

  return escapeOfferName;
}

- (id)_buttonIdentifiersJoinedByComma
{
  array = [MEMORY[0x277CBEB18] array];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  backBarButtonItem = [navigationItem backBarButtonItem];

  if (backBarButtonItem)
  {
    v6 = MEMORY[0x277CFD950];
  }

  else
  {
    navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
    leftBarButtonItem = [navigationItem2 leftBarButtonItem];

    if (!leftBarButtonItem)
    {
      goto LABEL_6;
    }

    v6 = MEMORY[0x277CFD958];
  }

  [array addObject:*v6];
LABEL_6:
  getHelpNowOption = [(CDPUICustodianAskHelpViewModel *)self->_viewModel getHelpNowOption];

  if (getHelpNowOption)
  {
    getHelpNowOption2 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel getHelpNowOption];
    titleTelemetryKey = [getHelpNowOption2 titleTelemetryKey];
    [array addObject:titleTelemetryKey];
  }

  dontAskForHelpOption = [(CDPUICustodianAskHelpViewModel *)self->_viewModel dontAskForHelpOption];

  if (dontAskForHelpOption)
  {
    dontAskForHelpOption2 = [(CDPUICustodianAskHelpViewModel *)self->_viewModel dontAskForHelpOption];
    titleTelemetryKey2 = [dontAskForHelpOption2 titleTelemetryKey];
    [array addObject:titleTelemetryKey2];
  }

  if ([array count])
  {
    aaf_arrayAsCommaSeperatedString = [array aaf_arrayAsCommaSeperatedString];
  }

  else
  {
    aaf_arrayAsCommaSeperatedString = 0;
  }

  return aaf_arrayAsCommaSeperatedString;
}

- (id)_makeEventForAskForHelp
{
  v3 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6E0] category:*MEMORY[0x277CFD930]];
  getHelpNowOption = [(CDPUICustodianAskHelpViewModel *)self->_viewModel getHelpNowOption];
  titleTelemetryKey = [getHelpNowOption titleTelemetryKey];
  [v3 setObject:titleTelemetryKey forKeyedSubscript:*MEMORY[0x277CFD6D8]];

  return v3;
}

- (id)_makeEventForDontAskForHelp
{
  v3 = [MEMORY[0x277CE44D8] analyticsEventWithContext:self->_cdpContext eventName:*MEMORY[0x277CFD6E0] category:*MEMORY[0x277CFD930]];
  dontAskForHelpOption = [(CDPUICustodianAskHelpViewModel *)self->_viewModel dontAskForHelpOption];
  titleTelemetryKey = [dontAskForHelpOption titleTelemetryKey];
  [v3 setObject:titleTelemetryKey forKeyedSubscript:*MEMORY[0x277CFD6D8]];

  return v3;
}

@end