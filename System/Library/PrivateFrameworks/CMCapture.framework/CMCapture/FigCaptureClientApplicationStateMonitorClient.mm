@interface FigCaptureClientApplicationStateMonitorClient
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (FigCaptureClientApplicationStateMonitorClient)initWithAuditToken:(id *)a3 mediaEnvironment:(id)a4 forThirdPartyTorch:(BOOL)a5 applicationAndLayoutStateHandler:(id)a6;
- (id)debugDescription;
- (id)description;
- (void)_setUpClientInfoWithAuditToken:(uint64_t)a1;
- (void)dealloc;
@end

@implementation FigCaptureClientApplicationStateMonitorClient

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"pid: %d, ID: %@", self->_pid, self->_applicationID];
  v4 = v3;
  if (self->_mediaEnvironment)
  {
    [v3 appendFormat:@", mediaEnvironment: %@", self->_mediaEnvironment];
    if (self->_mediaEnvironmentBundleID)
    {
      [v4 appendFormat:@" (%@)", self->_mediaEnvironmentBundleID];
    }
  }

  if (self->_isXPCService)
  {
    [v4 appendFormat:@", host: %@[%d]", self->_xpcServiceRootHostApplicationID, self->_xpcServiceRootHostPID];
  }

  v5 = self->_clientType - 1;
  if (v5 > 7)
  {
    v6 = @"--- Undefined client type ---";
  }

  else
  {
    v6 = off_1E7997130[v5];
  }

  [v4 appendFormat:@", clientType: %@", v6];
  v7 = MEMORY[0x1E696AEC0];

  return [v7 stringWithString:v4];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *self[1].var0;
  *retstr->var0 = *&self->var0[4];
  *&retstr->var0[4] = v3;
  return self;
}

- (FigCaptureClientApplicationStateMonitorClient)initWithAuditToken:(id *)a3 mediaEnvironment:(id)a4 forThirdPartyTorch:(BOOL)a5 applicationAndLayoutStateHandler:(id)a6
{
  if (!a6)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"An application and layout state handler is required to create this object." userInfo:0]);
  }

  v15.receiver = self;
  v15.super_class = FigCaptureClientApplicationStateMonitorClient;
  v10 = [(FigCaptureClientApplicationStateMonitorClient *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v13 = *&a3->var0[4];
    v14[0] = *a3->var0;
    v14[1] = v13;
    [(FigCaptureClientApplicationStateMonitorClient *)v10 _setUpClientInfoWithAuditToken:v14];
    v11->_mediaEnvironment = [a4 copy];
    v11->_isForThirdPartyTorch = a5;
    v11->_applicationAndLayoutStateHandler = [a6 copy];
  }

  return v11;
}

- (void)dealloc
{
  [(FigCaptureClientApplicationStateMonitorClient *)self invalidate];

  v3.receiver = self;
  v3.super_class = FigCaptureClientApplicationStateMonitorClient;
  [(FigCaptureClientApplicationStateMonitorClient *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[FigCaptureClientApplicationStateMonitorClient debugDescription](self, "debugDescription")];
}

uint64_t __80__FigCaptureClientApplicationStateMonitorClient__setUpClientInfoWithAuditToken___block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] arrayWithObjects:{0x1F21853D0, 0x1F21852B0, 0x1F2185430, 0x1F21855B0, 0x1F2185630, 0}];
  v1 = [MEMORY[0x1E695DF70] arrayWithObjects:{0x1F21854D0, 0}];
  v2 = [MEMORY[0x1E695DF70] arrayWithObjects:{@"com.apple.AppleAccountUI.AAUIFollowUpExtension", @"com.apple.AssetViewer.ASVAssetViewer", @"com.apple.ist.colosseum.action.extension", @"com.apple.ist.concierge-development.extension-queue", @"com.apple.ist.concierge.extension.queue", @"com.apple.ist.easypay-uat.extension", @"com.apple.ist.easypay.extension", @"com.apple.ist.wtb-uat.extension", @"com.apple.ist.wtb.extension", @"com.apple.ist.runner5.submissionextension", @"com.apple.ist.catalog.extension", @"com.apple.ist.scanner.extension", @"com.apple.ist.mysteryshop.extension", @"com.apple.ist.sprinter.extension", @"com.apple.MLKit.MLModelPreview", @"com.apple.MLKit.MLPackagePreview", @"com.apple.NewDeviceOutreach.Extension", @"com.apple.quicklook.extension.previewUI", @"com.apple.sidecar.extension.camera", @"com.apple.tula.extension", 0x1F21852F0, @"com.apple.WebKit.WebContent", @"com.apple.WebKit.WebContent.Development", @"com.apple.WebKit.GPU", @"com.apple.WebKit.GPU.Development", 0}];
  v3 = [MEMORY[0x1E695DF70] arrayWithObjects:{@"com.apple.ar.viewer", @"com.apple.contact-view", @"com.apple.diagnostics-restricted-ui-service", @"com.apple.gamecenter-services", @"com.apple.message-payload-provider", @"com.apple.message-payload-provider.highmemory", @"com.apple.people-picker", 0x1F2185710, @"com.apple.web-browser-engine.gpu", @"com.apple.web-browser-engine.rendering", 0}];
  v4 = [MEMORY[0x1E695DF70] arrayWithObjects:{0x1F21853F0, 0x1F2185170, 0x1F2185190, 0x1F21851B0, 0x1F21851D0, 0x1F21851F0, @"com.apple.CheckerBoard", @"com.apple.companionfindlocallyd", 0x1F2185250, @"com.apple.dockaccessoryd", @"com.apple.FactoryOTAd", @"com.apple.facemetricsd", @"com.apple.internal.silly_tool", 0x1F2170190, @"com.apple.monkeybars", @"com.apple.NanoLeash", @"com.apple.nearbyd", 0x1F2185430, @"com.apple.pearloid", 0x1F2185510, @"com.apple.TVSystemUIService", 0x1F2185630, 0}];
  v5 = [MEMORY[0x1E695DF70] arrayWithObjects:{0x1F21853D0, 0x1F21852B0, @"com.apple.ShortcutsUI", 0x1F2185450, 0}];
  _MergedGlobals_6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v0];
  qword_1ED844F10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v1];
  qword_1ED844F18 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v2];
  qword_1ED844F20 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v3];
  qword_1ED844F28 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4];
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5];
  qword_1ED844F30 = result;
  return result;
}

- (void)_setUpClientInfoWithAuditToken:(uint64_t)a1
{
  if (a1)
  {
    if (qword_1ED844F38 != -1)
    {
      dispatch_once(&qword_1ED844F38, &__block_literal_global_54);
    }

    v6 = a2[1];
    *token.val = *a2;
    *&token.val[4] = v6;
    *(a1 + 8) = [FigCaptureProcessHandle handleForAuditToken:&token error:0];
    v7 = a2[1];
    *(a1 + 16) = *a2;
    *(a1 + 32) = v7;
    v8 = a2[1];
    *token.val = *a2;
    *&token.val[4] = v8;
    PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&token);
    v10 = MEMORY[0x1E695E480];
    *(a1 + 48) = PIDFromAuditToken;
    v11 = *v10;
    v12 = *(a1 + 32);
    *token.val = *(a1 + 16);
    *&token.val[4] = v12;
    v13 = SecTaskCreateWithAuditToken(v11, &token);
    if (v13)
    {
      v14 = v13;
      v31 = 0;
      v15 = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", *(a1 + 48)), &v31}];
      v16 = [objc_msgSend(objc_msgSend(v15 "bundle")];
      *(a1 + 56) = v16;
      if (!v16)
      {
        *(a1 + 56) = SecTaskCopySigningIdentifier(v14, 0);
      }

      *(a1 + 93) = FigCaptureClientIsSwiftPlaygroundsDevelopmentAppWithSecTask(v14) != 0;
      v17 = *(a1 + 32);
      *token.val = *(a1 + 16);
      *&token.val[4] = v17;
      if (FigCaptureClientIsAllowedToRunInBackground(&token) && [_MergedGlobals_6 containsObject:*(a1 + 56)])
      {
        *(a1 + 95) = 1;
      }

      if (([v15 isApplication] & 1) != 0 || (objc_msgSend(*(a1 + 56), "isEqualToString:", 0x1F21855F0) & 1) != 0 || objc_msgSend(*(a1 + 56), "isEqualToString:", 0x1F2185230))
      {
        v18 = 1;
      }

      else if ([qword_1ED844F30 containsObject:*(a1 + 56)])
      {
        v18 = 2;
      }

      else if ([v15 isXPCService])
      {
        *(a1 + 96) = 1;
        *(a1 + 94) = [objc_msgSend(objc_msgSend(v15 "bundle")];
        v19 = v15;
        do
        {
          v20 = [v19 hostProcess];
          v19 = [v19 hostProcess];
        }

        while ([v19 hostProcess]);
        *(a1 + 100) = [v20 pid];
        *(a1 + 104) = [objc_msgSend(objc_msgSend(v20 "bundle")];
        if (FigCaptureClientHasPrivateCaptureEntitlement(v14) || ([qword_1ED844F18 containsObject:*(a1 + 56)] & 1) != 0 || (objc_msgSend(qword_1ED844F20, "containsObject:", objc_msgSend(objc_msgSend(v15, "bundle"), "extensionPointIdentifier")) & 1) != 0 || objc_msgSend(qword_1ED844F10, "containsObject:", *(a1 + 104)))
        {
          v18 = 3;
        }

        else
        {
          v18 = 4;
        }
      }

      else
      {
        if (!FigCaptureClientIsRunningInXCTestWithSecTask(v14))
        {
          if (FigCaptureClientIsNonStandardWithSecTask(v14) || FigCaptureClientHasPrivateCaptureEntitlement(v14))
          {
            v21 = 1;
          }

          else
          {
            v21 = [*(a1 + 56) isEqualToString:0x1F2170190];
          }

          v22 = [qword_1ED844F28 containsObject:*(a1 + 56)];
          if (v21 && v22)
          {
            *(a1 + 88) = 6;
            if (([*(a1 + 56) isEqualToString:0x1F21851B0] & 1) != 0 || objc_msgSend(*(a1 + 56), "isEqualToString:", 0x1F2170190))
            {

              *(a1 + 56) = [@"com.apple.facetime" copy];
              *(a1 + 88) = 5;
              v30[0] = 0x1F2185490;
              v30[1] = 0x1F21852D0;
              v30[2] = @"com.apple.VideoConference.AVConferenceTestRunneriOS";
              v30[3] = @"com.apple.AVConferenceTestRunnertvOS";
              *(a1 + 128) = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
            }
          }

          else
          {
            *(a1 + 88) = 7;
            if (FigGetCFPreferenceBooleanWithDefault() && FigDebugIsInternalBuild())
            {
              v23 = OUTLINED_FUNCTION_16_16();
              OUTLINED_FUNCTION_36_0(v23);
              OUTLINED_FUNCTION_115_0();
              if (v25)
              {
                v26 = v24;
              }

              else
              {
                v26 = v3;
              }

              if (v26)
              {
                OUTLINED_FUNCTION_5();
                OUTLINED_FUNCTION_4_4();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_1_4();
              OUTLINED_FUNCTION_13_0();
            }
          }

          goto LABEL_15;
        }

        v18 = 8;
      }

      *(a1 + 88) = v18;
LABEL_15:
      CFRelease(v14);
      return;
    }

    v27 = OUTLINED_FUNCTION_20_9();
    OUTLINED_FUNCTION_29_4(v27);
    OUTLINED_FUNCTION_39_7();
    if (v25)
    {
      v29 = v28;
    }

    else
    {
      v29 = v2;
    }

    if (v29)
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_54_1();
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_17_8();
  }
}

@end