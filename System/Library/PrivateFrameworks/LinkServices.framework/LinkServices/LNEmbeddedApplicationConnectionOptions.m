@interface LNEmbeddedApplicationConnectionOptions
- (BOOL)activateSuspended;
- (BOOL)isEqual:(id)a3;
- (LNEmbeddedApplicationConnectionOptions)init;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
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
  v4 = [(LNConnectionOptions *)self authenticationPolicy];
  v5 = @"Force Unlock";
  if (!v4)
  {
    v5 = @"Default";
  }

  v6 = v5;
  v7 = [(LNEmbeddedApplicationConnectionOptions *)self sceneless];
  v8 = [(LNEmbeddedApplicationConnectionOptions *)self activateSuspended];
  v9 = [(LNEmbeddedApplicationConnectionOptions *)self openApplicationPriority];
  if ((v9 - 1) > 3)
  {
    v10 = @"None";
  }

  else
  {
    v10 = off_1E74B09E8[v9 - 1];
  }

  v11 = v10;
  v12 = [(LNEmbeddedApplicationConnectionOptions *)self allowsForegroundAppLaunchWhileInCarPlay];
  v13 = [(LNConnectionOptions *)self initiatesAudioSession];
  v14 = [(LNEmbeddedApplicationConnectionOptions *)self isCameraCaptureAction];
  v15 = [(LNEmbeddedApplicationConnectionOptions *)self actionSource];
  if (v15 > 0xA)
  {
    v16 = @"app";
  }

  else
  {
    v16 = off_1E74B0848[v15];
  }

  if (v14)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if (v13)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  if (v12)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  if (v8)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  if (v7)
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v22 = v16;
  v23 = [(LNEmbeddedApplicationConnectionOptions *)self assistantDismissalPolicy];
  v24 = @"unknown";
  if (v23 == 1)
  {
    v24 = @"retainAssistant";
  }

  if (v23 == 2)
  {
    v24 = @"dismissAssistant";
  }

  v25 = v24;
  v26 = [v28 stringWithFormat:@"<%@: %p, authenticationPolicy: %@, sceneless: %@, activateSuspended: %@, openApplicationPriority: %@, allowsForegroundAppLaunchWhileInCarPlay: %@, initiatesAudioSession: %@, isCameraCapture:%@, actionSource: %@, assistantDismissalPolicy: %@>", v29, self, v6, v21, v20, v11, v19, v18, v17, v22, v25];

  return v26;
}

- (BOOL)activateSuspended
{
  v3 = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionForSpringBoardOnly];

  if (v3)
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
  v3 = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionForSpringBoardOnly];

  if (v3)
  {
    v4 = [LNOneShotConnectionAction alloc];
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionForSpringBoardOnly];
    v7 = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionExecutorOptionsForSpringBoardOnly];
    v8 = [(LNOneShotConnectionAction *)v4 initWithIdentifier:v5 action:v6 executorOptions:v7];

    return v8;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = LNEmbeddedApplicationConnectionOptions;
    return [(LNConnectionOptions *)&v10 newConnectionAction];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v18 = 1;
    goto LABEL_19;
  }

  v6 = v4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20.receiver = self;
    v20.super_class = LNEmbeddedApplicationConnectionOptions;
    if ([(LNConnectionOptions *)&v20 isEqual:v6])
    {
      v7 = [(LNEmbeddedApplicationConnectionOptions *)self sceneless];
      if (v7 == [(LNEmbeddedApplicationConnectionOptions *)v6 sceneless])
      {
        v8 = [(LNEmbeddedApplicationConnectionOptions *)self openApplicationPriority];
        if (v8 == [(LNEmbeddedApplicationConnectionOptions *)v6 openApplicationPriority])
        {
          v9 = [(LNEmbeddedApplicationConnectionOptions *)self allowsForegroundAppLaunchWhileInCarPlay];
          if (v9 == [(LNEmbeddedApplicationConnectionOptions *)v6 allowsForegroundAppLaunchWhileInCarPlay])
          {
            v10 = [(LNEmbeddedApplicationConnectionOptions *)self actionSource];
            if (v10 == [(LNEmbeddedApplicationConnectionOptions *)v6 actionSource])
            {
              v11 = [(LNEmbeddedApplicationConnectionOptions *)self isCameraCaptureAction];
              if (v11 == [(LNEmbeddedApplicationConnectionOptions *)v6 isCameraCaptureAction])
              {
                v12 = [(LNEmbeddedApplicationConnectionOptions *)self assistantDismissalPolicy];
                if (v12 == [(LNEmbeddedApplicationConnectionOptions *)v6 assistantDismissalPolicy])
                {
                  v13 = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionForSpringBoardOnly];
                  v14 = [(LNEmbeddedApplicationConnectionOptions *)v6 oneShotActionForSpringBoardOnly];
                  v15 = v13;
                  v16 = v14;
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
  v3 = [(LNEmbeddedApplicationConnectionOptions *)self sceneless];
  v4 = [(LNEmbeddedApplicationConnectionOptions *)self openApplicationPriority]^ v3;
  v5 = [(LNEmbeddedApplicationConnectionOptions *)self allowsForegroundAppLaunchWhileInCarPlay];
  v6 = v4 ^ v5 ^ [(LNEmbeddedApplicationConnectionOptions *)self actionSource];
  v7 = [(LNEmbeddedApplicationConnectionOptions *)self isCameraCaptureAction];
  v8 = v7 ^ [(LNEmbeddedApplicationConnectionOptions *)self assistantDismissalPolicy];
  v9 = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionForSpringBoardOnly];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = LNEmbeddedApplicationConnectionOptions;
  v4 = [(LNConnectionOptions *)&v8 copyWithZone:a3];
  [v4 setSceneless:{-[LNEmbeddedApplicationConnectionOptions sceneless](self, "sceneless")}];
  [v4 setOpenApplicationPriority:{-[LNEmbeddedApplicationConnectionOptions openApplicationPriority](self, "openApplicationPriority")}];
  [v4 setAllowsForegroundAppLaunchWhileInCarPlay:{-[LNEmbeddedApplicationConnectionOptions allowsForegroundAppLaunchWhileInCarPlay](self, "allowsForegroundAppLaunchWhileInCarPlay")}];
  [v4 setActionSource:{-[LNEmbeddedApplicationConnectionOptions actionSource](self, "actionSource")}];
  [v4 setIsCameraCaptureAction:{-[LNEmbeddedApplicationConnectionOptions isCameraCaptureAction](self, "isCameraCaptureAction")}];
  [v4 setAssistantDismissalPolicy:{-[LNEmbeddedApplicationConnectionOptions assistantDismissalPolicy](self, "assistantDismissalPolicy")}];
  v5 = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionForSpringBoardOnly];
  [v4 setOneShotActionForSpringBoardOnly:v5];

  v6 = [(LNEmbeddedApplicationConnectionOptions *)self oneShotActionExecutorOptionsForSpringBoardOnly];
  [v4 setOneShotActionExecutorOptionsForSpringBoardOnly:v6];

  return v4;
}

@end