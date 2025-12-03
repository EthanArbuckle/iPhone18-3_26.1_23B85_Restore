@interface MODiagnosticReporter
+ (id)defaultReporter;
- (MODiagnosticReporter)init;
- (void)_configureFromDictionary:(id)dictionary;
- (void)_notificationHandlerWithNotificationRef:(__CFUserNotification *)ref andOptionFlags:(unint64_t)flags;
- (void)_saveTimeOfLastIncident;
- (void)configureWithPromptManager:(id)manager;
- (void)reportIncident:(id)incident subtype:(id)subtype context:(id)context;
- (void)reportIncidentAfterUserConsent:(id)consent subtype:(id)subtype context:(id)context;
- (void)showUserNotificationWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle acceptButtonTitle:(id)acceptButtonTitle withAcceptanceBlock:(id)block;
@end

@implementation MODiagnosticReporter

+ (id)defaultReporter
{
  if (defaultReporter_onceToken != -1)
  {
    +[MODiagnosticReporter defaultReporter];
  }

  v3 = defaultReporter_reporter;

  return v3;
}

uint64_t __39__MODiagnosticReporter_defaultReporter__block_invoke()
{
  defaultReporter_reporter = objc_alloc_init(MODiagnosticReporter);

  return MEMORY[0x2821F96F8]();
}

- (MODiagnosticReporter)init
{
  v9.receiver = self;
  v9.super_class = MODiagnosticReporter;
  v2 = [(MODiagnosticReporter *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("MODiagnosticReporter", v4);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    v7 = *(v2 + 6);
    *(v2 + 6) = 0;

    *(v2 + 56) = xmmword_22D931F90;
    *(v2 + 9) = 0x4024000000000000;
    *(v2 + 20) = 0;
    *(v2 + 11) = 4;
  }

  return v2;
}

- (void)configureWithPromptManager:(id)manager
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__MODiagnosticReporter_MOCore__configureWithPromptManager___block_invoke;
  v3[3] = &unk_278775830;
  v3[4] = self;
  [manager getDiagnosticReporterConfiguration:v3];
}

uint64_t __59__MODiagnosticReporter_MOCore__configureWithPromptManager___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(result + 32) _configureFromDictionary:a2];
  }

  return result;
}

- (void)_notificationHandlerWithNotificationRef:(__CFUserNotification *)ref andOptionFlags:(unint64_t)flags
{
  v16 = *MEMORY[0x277D85DE8];
  p_notification = &self->_notification;
  if (self->_notification != ref)
  {
    v7 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [MODiagnosticReporter _notificationHandlerWithNotificationRef:andOptionFlags:];
    }
  }

  v8 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:flags];
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_DEFAULT, "Received response flags %@", &v14, 0xCu);
  }

  if ((flags & 3) != 0)
  {
    self->_lastResult = 2;
  }

  else
  {
    self->_lastResult = 1;
    notificationAcceptanceCallback = self->_notificationAcceptanceCallback;
    if (notificationAcceptanceCallback)
    {
      notificationAcceptanceCallback[2]();
    }
  }

  Main = CFRunLoopGetMain();
  CFRunLoopRemoveSource(Main, self->_notificationSource, *MEMORY[0x277CBF048]);
  *p_notification = 0;
  p_notification[1] = 0;
  v12 = self->_notificationAcceptanceCallback;
  self->_notificationAcceptanceCallback = 0;

  v13 = *MEMORY[0x277D85DE8];
}

- (void)showUserNotificationWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle acceptButtonTitle:(id)acceptButtonTitle withAcceptanceBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!self->_notification)
  {
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{title, *MEMORY[0x277CBF188], message, *MEMORY[0x277CBF198], acceptButtonTitle, *MEMORY[0x277CBF1E8], buttonTitle, *MEMORY[0x277CBF1C0], 0}];
    v15 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v14;
      _os_log_impl(&dword_22D8C5000, v15, OS_LOG_TYPE_DEFAULT, "Prompting diagnostic report notification with alert parameters %@", buf, 0xCu);
    }

    *buf = 0;
    v16 = *MEMORY[0x277CBECE8];
    v17 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 60.0, 0, buf, v14);
    self->_notification = v17;
    if (v17)
    {
      RunLoopSource = CFUserNotificationCreateRunLoopSource(v16, v17, _MODiagnosticReporter_NotificationHandler, 0);
      self->_notificationSource = RunLoopSource;
      if (RunLoopSource)
      {
        v19 = [blockCopy copy];
        notificationAcceptanceCallback = self->_notificationAcceptanceCallback;
        self->_notificationAcceptanceCallback = v19;

        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, self->_notificationSource, *MEMORY[0x277CBF048]);
LABEL_15:

        goto LABEL_16;
      }

      self->_notification = 0;
      v22 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [MODiagnosticReporter showUserNotificationWithTitle:message:cancelButtonTitle:acceptButtonTitle:withAcceptanceBlock:];
      }
    }

    else
    {
      v22 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [MODiagnosticReporter showUserNotificationWithTitle:buf message:? cancelButtonTitle:? acceptButtonTitle:? withAcceptanceBlock:?];
      }
    }

    goto LABEL_15;
  }

  v13 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [MODiagnosticReporter showUserNotificationWithTitle:message:cancelButtonTitle:acceptButtonTitle:withAcceptanceBlock:];
  }

  self->_lastResult = 2;
LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)reportIncident:(id)incident subtype:(id)subtype context:(id)context
{
  v49 = *MEMORY[0x277D85DE8];
  incidentCopy = incident;
  subtypeCopy = subtype;
  contextCopy = context;
  if (self->_isInternalBuild)
  {
    if (self->_onboardingStatus || self->_forceNotification)
    {
      if (self->_isOnboardedOnDiagnosticReporter || self->_forceNotification)
      {
        if (self->_avoidNotification)
        {
          selfCopy = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
          if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
          {
            [MODiagnosticReporter reportIncident:subtype:context:];
          }
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          selfCopy = self;
          objc_sync_enter(selfCopy);
          lastResult = selfCopy->_lastResult;
          if (lastResult)
          {
            v14 = 0;
          }

          else
          {
            v14 = selfCopy->_timeOfLastIncident <= 0.0;
          }

          if (selfCopy->_forceNotification || v14)
          {
            goto LABEL_21;
          }

          v15 = Current - selfCopy->_timeOfLastIncident;
          v16 = lastResult == 1;
          v17 = 64;
          if (v16)
          {
            v17 = 56;
          }

          if (v15 > *(&selfCopy->super.isa + v17))
          {
LABEL_21:
            selfCopy->_timeOfLastIncident = Current;
            [(MODiagnosticReporter *)selfCopy _saveTimeOfLastIncident];
            objc_sync_exit(selfCopy);

            v18 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v38 = subtypeCopy;
              v39 = 2112;
              v40 = contextCopy;
              _os_log_impl(&dword_22D8C5000, v18, OS_LOG_TYPE_DEFAULT, "MODiagnosticReporter reporting incident [subtype=%@,context=%@]", buf, 0x16u);
            }

            if (incidentCopy == @"XPCInterruption")
            {
              v19 = @"The connection with %@ has been interrupted. Please tap Accept to proceed to Tap-to-Radar";
            }

            else
            {
              v19 = @"Process %@ appears to hang. Please tap Accept to proceed to Tap-to-Radar";
            }

            processInfo = [MEMORY[0x277CCAC38] processInfo];
            processName = [processInfo processName];

            v22 = [MEMORY[0x277CCACA8] stringWithFormat:v19, processName];
            contextCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\nSubtype: %@\nContext: %@", v22, subtypeCopy, contextCopy];

            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v33[2] = __55__MODiagnosticReporter_reportIncident_subtype_context___block_invoke;
            v33[3] = &unk_278775EE8;
            v33[4] = selfCopy;
            v34 = incidentCopy;
            v35 = subtypeCopy;
            v36 = contextCopy;
            [(MODiagnosticReporter *)selfCopy showUserNotificationWithTitle:@"Issue Detected" message:contextCopy cancelButtonTitle:@"Cancel" acceptButtonTitle:@"Accept" withAcceptanceBlock:v33];

            selfCopy = contextCopy;
          }

          else
          {
            v24 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_lastResult];
              v32 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_timeOfLastIncident];
              v27 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
              v28 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_refractoryPeriodAfterAcceptance];
              v29 = [MEMORY[0x277CCABB0] numberWithDouble:selfCopy->_refractoryPeriodAfterRejection];
              v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_onboardingStatus];
              *buf = 138413570;
              v38 = v31;
              v39 = 2112;
              v40 = v32;
              v41 = 2112;
              v42 = v27;
              v43 = 2112;
              v44 = v28;
              v45 = 2112;
              v46 = v29;
              v47 = 2112;
              v48 = v30;
              _os_log_debug_impl(&dword_22D8C5000, v24, OS_LOG_TYPE_DEBUG, "MODiagnosticReporter states [_lastResult=%@, _timeOfLastIncident=%@, interval=%@, _refractoryPeriodAfterAcceptance=%@, _refractoryPeriodAfterRejection=%@, _onboardingStatus=%@]", buf, 0x3Eu);
            }

            v25 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [MODiagnosticReporter reportIncident:subtype:context:];
            }

            objc_sync_exit(selfCopy);
          }
        }
      }

      else
      {
        selfCopy = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
        if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
        {
          [MODiagnosticReporter reportIncident:subtype:context:];
        }
      }
    }

    else
    {
      selfCopy = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
      {
        [MODiagnosticReporter reportIncident:subtype:context:];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)reportIncidentAfterUserConsent:(id)consent subtype:(id)subtype context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCACA8];
  v9 = MEMORY[0x277CCAC38];
  contextCopy = context;
  subtypeCopy = subtype;
  consentCopy = consent;
  processInfo = [v9 processInfo];
  processName = [processInfo processName];
  consentCopy = [v8 stringWithFormat:@"[%@] %@ Detected", processName, consentCopy];

  v16 = MEMORY[0x277CCACA8];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeOfLastIncident];
  v18 = [v16 stringWithFormat:@"Subtype: %@\n\nContext: %@\n\nApproximate timestamp: %@", subtypeCopy, contextCopy, v17];

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"?Title=%@&Description=%@&Classification=%@&Reproducibility=%@&ComponentName=%@&ComponentVersion=%@&ComponentID=%@", consentCopy, v18, @"Crash/Hang/Data Loss", @"I Didn't Try", @"Journaling Suggestions", @"All", @"1330744"];
  v20 = MEMORY[0x277CBEBC0];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"tap-to-radar://new%@", v19];
  v22 = [v20 URLWithString:v21];

  v23 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [v22 absoluteString];
    *buf = 138412290;
    v28 = absoluteString;
    _os_log_impl(&dword_22D8C5000, v23, OS_LOG_TYPE_DEFAULT, "Triggering tap to radar with url [%@]", buf, 0xCu);
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openURL:v22 configuration:0 completionHandler:&__block_literal_global_98];

  v26 = *MEMORY[0x277D85DE8];
}

void __71__MODiagnosticReporter_reportIncidentAfterUserConsent_subtype_context___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__MODiagnosticReporter_reportIncidentAfterUserConsent_subtype_context___block_invoke_cold_1();
    }
  }
}

- (void)_configureFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = _mo_log_facility_get_os_log(MOLogFacilityDiagnosticReporter);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MODiagnosticReporter *)dictionaryCopy _configureFromDictionary:v5];
  }

  if (dictionaryCopy)
  {
    v6 = [dictionaryCopy objectForKey:@"DiagnosticReporterRefractoryPeriodAfterAcceptance"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      self->_refractoryPeriodAfterAcceptance = v8;
    }

    v9 = [dictionaryCopy objectForKey:@"DiagnosticReporterRefractoryPeriodAfterRejection"];
    v10 = v9;
    if (v9)
    {
      [v9 doubleValue];
      self->_refractoryPeriodAfterRejection = v11;
    }

    v12 = [dictionaryCopy objectForKey:@"DiagnosticReporterAvoidNotification"];
    v13 = v12;
    if (v12)
    {
      self->_avoidNotification = [v12 BOOLValue];
    }

    v14 = [dictionaryCopy objectForKey:@"DiagnosticReporterForceNotification"];
    v15 = v14;
    if (v14)
    {
      self->_forceNotification = [v14 BOOLValue];
    }

    v16 = [dictionaryCopy objectForKey:@"DiagnosticReporterTimeOfLastNotification"];
    v17 = v16;
    if (v16)
    {
      [v16 doubleValue];
      self->_timeOfLastIncident = v18;
    }

    v19 = [dictionaryCopy objectForKey:@"DiagnosticReporterIsInternalBuild"];
    v20 = v19;
    if (v19)
    {
      self->_isInternalBuild = [v19 BOOLValue];
    }

    v28 = v10;
    v21 = [dictionaryCopy objectForKey:@"DiagnosticReporterOnboardingStatus"];
    v22 = v21;
    if (v21)
    {
      self->_onboardingStatus = [v21 intValue];
    }

    v23 = v7;
    v24 = [dictionaryCopy objectForKey:@"DiagnosticReporterMaxTimeout"];
    v25 = v24;
    if (v24)
    {
      self->_maxTimeout = [v24 intValue];
    }

    v26 = [dictionaryCopy objectForKey:@"DiagnosticReporterIsOnboardedOnDiagnosticReporter"];
    v27 = v26;
    if (v26)
    {
      self->_isOnboardedOnDiagnosticReporter = [v26 BOOLValue];
    }
  }
}

- (void)_saveTimeOfLastIncident
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (standardUserDefaults)
  {
    v5 = standardUserDefaults;
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeOfLastIncident];
    [v5 setObject:v4 forKey:@"DiagnosticReporterLastIncidentTime"];

    standardUserDefaults = v5;
  }
}

- (void)showUserNotificationWithTitle:message:cancelButtonTitle:acceptButtonTitle:withAcceptanceBlock:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)showUserNotificationWithTitle:(int *)a1 message:cancelButtonTitle:acceptButtonTitle:withAcceptanceBlock:.cold.3(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)reportIncident:subtype:context:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __71__MODiagnosticReporter_reportIncidentAfterUserConsent_subtype_context___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_configureFromDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_DEBUG, "Received configuration %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end