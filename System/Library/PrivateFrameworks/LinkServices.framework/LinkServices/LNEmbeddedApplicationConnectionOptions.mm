@interface LNEmbeddedApplicationConnectionOptions
- (BOOL)activateSuspended;
- (BOOL)isEqual:(id)equal;
- (LNEmbeddedApplicationConnectionOptions)init;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newConnectionAction;
- (unint64_t)hash;
@end

@implementation LNEmbeddedApplicationConnectionOptions

- (LNEmbeddedApplicationConnectionOptions)init
{
  v6.receiver = self;
  v6.super_class = LNEmbeddedApplicationConnectionOptions;
  v2 = [(LNEmbeddedApplicationConnectionOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_sceneless = 1;
    v2->_openApplicationPriority = 1;
    v2->_allowsForegroundAppLaunchWhileInCarPlay = 1;
    v2->_actionSource = 0;
    v2->_assistantDismissalPolicy = 0;
    v4 = v2;
  }

  return v3;
}

- (NSString)description
{
  v28 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v29 = NSStringFromClass(v3);
  authenticationPolicy = [(LNConnectionOptions *)self authenticationPolicy];
  v5 = @"Force Unlock";
  if (!authenticationPolicy)
  {
    v5 = @"Default";
  }

  v6 = v5;
  sceneless = [(LNEmbeddedApplicationConnectionOptions *)self sceneless];
  activateSuspended = [(LNEmbeddedApplicationConnectionOptions *)self activateSuspended];
  openApplicationPriority = [(LNEmbeddedApplicationConnectionOptions *)self openApplicationPriority];
  if ((openApplicationPriority - 1) > 3)
  {
    v10 = @"None";
  }

  else
  {
    v10 = off_1E74B09E8[openApplicationPriority - 1];
  }

  v11 = v10;
  allowsForegroundAppLaunchWhileInCarPlay = [(LNEmbeddedApplicationConnectionOptions *)self allowsForegroundAppLaunchWhileInCarPlay];
  initiatesAudioSession = [(LNConnectionOptions *)self initiatesAudioSession];
  isCameraCaptureAction = [(LNEmbeddedApplicationConnectionOptions *)self isCameraCaptureAction];
  actionSource = [(LNEmbeddedApplicationConnectionOptions *)self actionSource];
  if (actionSource > 0xA)
  {
    v16 = @"app";
  }

  else
  {
    v16 = off_1E74B0848[actionSource];
  }

  if (isCameraCaptureAction)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if (initiatesAudioSession)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  if (allowsForegroundAppLaunchWhileInCarPlay)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  if (activateSuspended)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  if (sceneless)
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v22 = v16;
  assistantDismissalPolicy = [(LNEmbeddedApplicationConnectionOptions *)self assistantDismissalPolicy];
  v24 = @"unknown";
  if (assistantDismissalPolicy == 1)
  {
    v24 = @"retainAssistant";
  }

  if (assistantDismissalPolicy == 2)
  {
    v24 = @"dismissAssistant";
  }

  v25 = v24;
  v26 = [v28 stringWithFormat:@"<%@: %p, authenticationPolicy: %@, sceneless: %@, activateSuspended: %@, openApplicationPriority: %@, allowsForegroundAppLaunchWhileInCarPlay: %@, initiatesAudioSession: %@, isCameraCapture:%@, actionSource: %@, assistantDismissalPolicy: %@>", v29, self, v6, v21, v20, v11, v19, v18, v17, v22, v25];

  return v26;
}

- (BOOL)activateSuspended
{
  oneShotActionForSpringBoardOnly = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionForSpringBoardOnly];

  if (oneShotActionForSpringBoardOnly)
  {
    return [(LNEmbeddedApplicationConnectionOptions *)self openApplicationPriority]!= 2;
  }

  else
  {
    return ![(LNEmbeddedApplicationConnectionOptions *)self isCameraCaptureAction];
  }
}

- (id)newConnectionAction
{
  oneShotActionForSpringBoardOnly = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionForSpringBoardOnly];

  if (oneShotActionForSpringBoardOnly)
  {
    v4 = [LNOneShotConnectionAction alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    oneShotActionForSpringBoardOnly2 = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionForSpringBoardOnly];
    oneShotActionExecutorOptionsForSpringBoardOnly = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionExecutorOptionsForSpringBoardOnly];
    v8 = [(LNOneShotConnectionAction *)v4 initWithIdentifier:uUID action:oneShotActionForSpringBoardOnly2 executorOptions:oneShotActionExecutorOptionsForSpringBoardOnly];

    return v8;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = LNEmbeddedApplicationConnectionOptions;
    return [(LNConnectionOptions *)&v10 newConnectionAction];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v18 = 1;
    goto LABEL_19;
  }

  v6 = equalCopy;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20.receiver = self;
    v20.super_class = LNEmbeddedApplicationConnectionOptions;
    if ([(LNConnectionOptions *)&v20 isEqual:v6])
    {
      sceneless = [(LNEmbeddedApplicationConnectionOptions *)self sceneless];
      if (sceneless == [(LNEmbeddedApplicationConnectionOptions *)v6 sceneless])
      {
        openApplicationPriority = [(LNEmbeddedApplicationConnectionOptions *)self openApplicationPriority];
        if (openApplicationPriority == [(LNEmbeddedApplicationConnectionOptions *)v6 openApplicationPriority])
        {
          allowsForegroundAppLaunchWhileInCarPlay = [(LNEmbeddedApplicationConnectionOptions *)self allowsForegroundAppLaunchWhileInCarPlay];
          if (allowsForegroundAppLaunchWhileInCarPlay == [(LNEmbeddedApplicationConnectionOptions *)v6 allowsForegroundAppLaunchWhileInCarPlay])
          {
            actionSource = [(LNEmbeddedApplicationConnectionOptions *)self actionSource];
            if (actionSource == [(LNEmbeddedApplicationConnectionOptions *)v6 actionSource])
            {
              isCameraCaptureAction = [(LNEmbeddedApplicationConnectionOptions *)self isCameraCaptureAction];
              if (isCameraCaptureAction == [(LNEmbeddedApplicationConnectionOptions *)v6 isCameraCaptureAction])
              {
                assistantDismissalPolicy = [(LNEmbeddedApplicationConnectionOptions *)self assistantDismissalPolicy];
                if (assistantDismissalPolicy == [(LNEmbeddedApplicationConnectionOptions *)v6 assistantDismissalPolicy])
                {
                  oneShotActionForSpringBoardOnly = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionForSpringBoardOnly];
                  oneShotActionForSpringBoardOnly2 = [(LNEmbeddedApplicationConnectionOptions *)v6 oneShotActionForSpringBoardOnly];
                  v15 = oneShotActionForSpringBoardOnly;
                  v16 = oneShotActionForSpringBoardOnly2;
                  v17 = v16;
                  if (v15 == v16)
                  {
                    v18 = 1;
                  }

                  else
                  {
                    v18 = 0;
                    if (v15 && v16)
                    {
                      v18 = [v15 isEqual:v16];
                    }
                  }

                  goto LABEL_17;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {

    v6 = 0;
  }

  v18 = 0;
LABEL_17:

LABEL_19:
  return v18;
}

- (unint64_t)hash
{
  sceneless = [(LNEmbeddedApplicationConnectionOptions *)self sceneless];
  v4 = [(LNEmbeddedApplicationConnectionOptions *)self openApplicationPriority]^ sceneless;
  allowsForegroundAppLaunchWhileInCarPlay = [(LNEmbeddedApplicationConnectionOptions *)self allowsForegroundAppLaunchWhileInCarPlay];
  v6 = v4 ^ allowsForegroundAppLaunchWhileInCarPlay ^ [(LNEmbeddedApplicationConnectionOptions *)self actionSource];
  isCameraCaptureAction = [(LNEmbeddedApplicationConnectionOptions *)self isCameraCaptureAction];
  v8 = isCameraCaptureAction ^ [(LNEmbeddedApplicationConnectionOptions *)self assistantDismissalPolicy];
  oneShotActionForSpringBoardOnly = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionForSpringBoardOnly];
  v10 = v8 ^ [oneShotActionForSpringBoardOnly hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = LNEmbeddedApplicationConnectionOptions;
  v4 = [(LNConnectionOptions *)&v8 copyWithZone:zone];
  [v4 setSceneless:{-[LNEmbeddedApplicationConnectionOptions sceneless](self, "sceneless")}];
  [v4 setOpenApplicationPriority:{-[LNEmbeddedApplicationConnectionOptions openApplicationPriority](self, "openApplicationPriority")}];
  [v4 setAllowsForegroundAppLaunchWhileInCarPlay:{-[LNEmbeddedApplicationConnectionOptions allowsForegroundAppLaunchWhileInCarPlay](self, "allowsForegroundAppLaunchWhileInCarPlay")}];
  [v4 setActionSource:{-[LNEmbeddedApplicationConnectionOptions actionSource](self, "actionSource")}];
  [v4 setIsCameraCaptureAction:{-[LNEmbeddedApplicationConnectionOptions isCameraCaptureAction](self, "isCameraCaptureAction")}];
  [v4 setAssistantDismissalPolicy:{-[LNEmbeddedApplicationConnectionOptions assistantDismissalPolicy](self, "assistantDismissalPolicy")}];
  oneShotActionForSpringBoardOnly = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionForSpringBoardOnly];
  [v4 setOneShotActionForSpringBoardOnly:oneShotActionForSpringBoardOnly];

  oneShotActionExecutorOptionsForSpringBoardOnly = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionExecutorOptionsForSpringBoardOnly];
  [v4 setOneShotActionExecutorOptionsForSpringBoardOnly:oneShotActionExecutorOptionsForSpringBoardOnly];

  return v4;
}

@end