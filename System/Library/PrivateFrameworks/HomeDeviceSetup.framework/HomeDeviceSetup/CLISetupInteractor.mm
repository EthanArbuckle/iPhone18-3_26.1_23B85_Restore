@interface CLISetupInteractor
- (CLISetupInteractor)init;
- (void)_cleanupSession;
- (void)dealloc;
- (void)invalidate;
- (void)sessionHandleProgress:(unsigned int)progress inInfo:(id)info session:(id)session;
- (void)setCLIPromptsForStates;
- (void)setSetupUserInputConfig:(id)config;
@end

@implementation CLISetupInteractor

- (CLISetupInteractor)init
{
  v7.receiver = self;
  v7.super_class = CLISetupInteractor;
  v2 = [(CLISetupInteractor *)&v7 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(CLISetupInteractor *)self _cleanup];
  v3.receiver = self;
  v3.super_class = CLISetupInteractor;
  [(CLISetupInteractor *)&v3 dealloc];
}

- (void)_cleanupSession
{
  [(HDSSetupSession *)self->_setupSession invalidate];
  setupSession = self->_setupSession;
  self->_setupSession = 0;
}

- (void)setSetupUserInputConfig:(id)config
{
  configCopy = config;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  v5 = CFDictionaryGetInt64() != 0;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_recognizeVoiceEnabled = v5;
  v6 = CFDictionaryGetInt64() != 0;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_locationEnabled = v6;
  v7 = CFDictionaryGetInt64() != 0;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_personalRequestsEnabled = v7;
  v8 = CFDictionaryGetInt64() != 0;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_siriEnabled = v8;
  v9 = CFDictionaryGetInt64() != 0;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_activeDeviceEnabled = v9;
  v10 = CFDictionaryGetInt64() != 0;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_odeonEnabled = v10;
  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  objc_storeStrong(&self->_homeName, v11);
  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();

  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  objc_storeStrong(&self->_roomName, v12);
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();

  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  [(HDSSetupSession *)self->_setupSession forceCLIPassCode:v13];
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v15 = Int64Ranged;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_stereoRole = v15;
  v16 = CFDictionaryGetInt64Ranged();
  v17 = v16;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_stereoPairIndex = v17;
  CFStringGetTypeID();
  v18 = CFDictionaryGetTypedValue();

  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  [(HDSSetupSession *)self->_setupSession setAppleIDPassword:v18];
  v19 = CFDictionaryGetInt64() != 0;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_soundRecognitionEnabled = v19;
  v20 = CFDictionaryGetInt64Ranged();
  v21 = v20;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_homeIndex = v21;
  v22 = CFDictionaryGetInt64Ranged();
  v23 = v22;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_roomIndex = v23;
  v24 = CFDictionaryGetInt64Ranged();
  v25 = v24;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_suggestedRoomIndex = v25;
  v26 = CFDictionaryGetInt64Ranged();
  v27 = v26;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_delayTime = v27;
  v28 = CFDictionaryGetInt64() != 0;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_psgEnabled = v28;
  v29 = CFDictionaryGetInt64() != 0;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    [CLISetupInteractor setSetupUserInputConfig:];
  }

  self->_siriForICloudEnabled = v29;
}

- (void)setCLIPromptsForStates
{
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke;
  v21[3] = &unk_279713F50;
  v21[4] = self;
  [(HDSSetupSession *)self->_setupSession setProgressHandler:v21];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_2;
  v20[3] = &unk_279713FA0;
  v20[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForHomeHandler:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_4;
  v19[3] = &unk_279713FC8;
  v19[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForRoomHandlerDetailed:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_5;
  v18[3] = &unk_279713FF0;
  v18[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForHomeiCloudHandler:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_6;
  v17[3] = &unk_279713FF0;
  v17[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForiTunesSignInHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_7;
  v16[3] = &unk_279713FF0;
  v16[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForLocationEnableHandler:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_8;
  v15[3] = &unk_279713FF0;
  v15[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForPersonalRequestsHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_9;
  v14[3] = &unk_279713FF0;
  v14[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForSiriEnableHandler:v14];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_10;
  v13[3] = &unk_279713FF0;
  v13[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForTermsHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_11;
  v12[3] = &unk_279713FF0;
  v12[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForTVAudioHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_12;
  v11[3] = &unk_279713FF0;
  v11[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForStereoRoleHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_13;
  v10[3] = &unk_279713FF0;
  v10[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForSetupPSGHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_14;
  v9[3] = &unk_279714018;
  v9[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForStereoMultipleHandler:v9];
  [(HDSSetupSession *)self->_setupSession setPromptForHH2UpsellHandler:&__block_literal_global];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_16;
  v8[3] = &unk_279714018;
  v8[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForWiFiPickerHandler:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_17;
  v7[3] = &unk_279714060;
  v7[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForWiFiSummaryHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_18;
  v6[3] = &unk_279714060;
  v6[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForWiFiFailedHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_19;
  v5[3] = &unk_279713FF0;
  v5[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForSoundRecognitionHandler:v5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_20;
  v4[3] = &unk_279714088;
  v4[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptForDataAndPrivacyHandler:v4];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_21;
  v3[3] = &unk_2797140B0;
  v3[4] = self;
  [(HDSSetupSession *)self->_setupSession setPromptToShareSettingsHandler:v3];
}

uint64_t __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_cold_1(a2);
  }

  v5 = *(a1 + 32);
  if (v5[12])
  {
    [v5 sessionHandleProgress:a2 inInfo:v7 session:?];
  }

  return MEMORY[0x2821F96F8]();
}

void __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_2_cold_1(v5);
  }

  v6 = [v5 mutableCopy];
  v7 = *(*(a1 + 32) + 96);
  if (!v7)
  {
    goto LABEL_42;
  }

  NSLog(&cfstr_Cmdhomedevices.isa, v6);
  if (![v6 count])
  {
    v10 = [v7 selectedHome];
LABEL_10:
    v9 = v10;
    goto LABEL_11;
  }

  if ([*(*(a1 + 32) + 24) length])
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_3;
    v39[3] = &unk_279713F78;
    v39[4] = *(a1 + 32);
    v8 = [v6 indexOfObjectPassingTest:v39];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = [v6 objectAtIndex:v8];
      if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
      {
        __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_2_cold_2(v9);
      }
    }

LABEL_11:
    if (v9)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (*(*(a1 + 32) + 40) != -1 && [v6 count] > *(*(a1 + 32) + 40))
  {
    v10 = [v6 objectAtIndex:?];
    goto LABEL_10;
  }

LABEL_16:
  v9 = [v6 objectAtIndex:a3];
  NSLog(&cfstr_Cmdhomedevices_0.isa, v9);
LABEL_17:
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_2_cold_2(v9);
  }

  v11 = [v9 name];
  NSLog(&cfstr_Cmdhomedevices_1.isa, v11);

  [v7 homeKitSelectHome:v9];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = v6;
  v29 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v29)
  {
    v13 = *v36;
    v14 = *MEMORY[0x277CCE8B0];
    v27 = v7;
    v28 = v5;
    v30 = v12;
    v26 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v17 = [v16 accessories];
        v18 = [v17 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v32;
          while (2)
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v32 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v31 + 1) + 8 * j) category];
              v23 = [v22 categoryType];

              if (v23 == v14)
              {
                if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
                {
                  __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_2_cold_4();
                }

                v24 = 1;
                v7 = v27;
                v5 = v28;
                v12 = v30;
                goto LABEL_41;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v31 objects:v40 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v12 = v30;
        v13 = v26;
      }

      v24 = 0;
      v7 = v27;
      v5 = v28;
      v29 = [v30 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v29);
  }

  else
  {
    v24 = 0;
  }

LABEL_41:

  [v7 setHasExistingHomePodInAccount:v24];
LABEL_42:

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v21 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_4_cold_1(v9, v10);
  }

  v12 = *(*(a1 + 32) + 96);
  if (v12)
  {
    NSLog(&cfstr_Cmdhomedevices_3.isa, v9);
    NSLog(&cfstr_Cmdhomedevices_4.isa, v10);
    v13 = [v9 containsObject:*(*(a1 + 32) + 32)];
    v14 = *(a1 + 32);
    if (v13)
    {
LABEL_6:
      v15 = *(v14 + 32);
      goto LABEL_27;
    }

    if (*(v14 + 44) != -1)
    {
      v16 = [v9 count];
      v14 = *(a1 + 32);
      if (*(v14 + 44) < v16)
      {
        NSLog(&cfstr_Cmdhomedevices_5.isa, *(v14 + 44));
        v17 = *(*(a1 + 32) + 44);
LABEL_25:
        v19 = v9;
        goto LABEL_26;
      }
    }

    if (*(v14 + 48) == -1 || (v18 = [v10 count], v14 = *(a1 + 32), *(v14 + 48) >= v18))
    {
      if ([v10 containsObject:*(v14 + 32)])
      {
        v14 = *(a1 + 32);
        goto LABEL_6;
      }

      if (![v11 section])
      {
        v17 = [v11 row];
        goto LABEL_25;
      }

      if ([v11 section] != 1)
      {
        goto LABEL_28;
      }

      v17 = [v11 row];
    }

    else
    {
      NSLog(&cfstr_Cmdhomedevices_6.isa, *(v14 + 48));
      v17 = *(*(a1 + 32) + 48);
    }

    v19 = v10;
LABEL_26:
    v15 = [v19 objectAtIndex:v17];
LABEL_27:
    v20 = v15;
    if (v15)
    {
LABEL_32:
      NSLog(&cfstr_Cmdhomedevices_7.isa, v20);
      if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
      {
        __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_4_cold_2();
      }

      [v12 homeKitSelectRoom:v20];

      goto LABEL_36;
    }

LABEL_28:
    if ([v9 count])
    {
      [v9 objectAtIndex:v11];
    }

    else
    {
      [v10 firstObject];
    }
    v20 = ;
    goto LABEL_32;
  }

  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_4_cold_3();
  }

LABEL_36:
}

void __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_5(uint64_t a1)
{
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_5_cold_1();
  }

  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    v3 = v2;
    NSLog(&cfstr_Cmdhomedevices_8.isa);
    [v3 homeiCloudEnable];
  }
}

void __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_6(uint64_t a1)
{
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_6_cold_1();
  }

  v2 = *(*(a1 + 32) + 96);
  if (v2)
  {
    v3 = v2;
    NSLog(&cfstr_Cmdhomedevices_9.isa);
    [v3 skipiTunesSignIn];
  }
}

void __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_7(uint64_t a1)
{
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_7_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (v3)
  {
    if (*(v2 + 9))
    {
      v4 = "yes";
    }

    else
    {
      v4 = "no";
    }

    v5 = v3;
    NSLog(&cfstr_Cmdhomedevices_10.isa, v4);
    [v5 locationEnable:*(*(a1 + 32) + 9)];
  }
}

uint64_t __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_8(uint64_t a1)
{
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_8_cold_1();
  }

  if (*(*(a1 + 32) + 10))
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  NSLog(&cfstr_Cmdhomedevices_11.isa, v2);
  v3 = *(*(a1 + 32) + 96);
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    if (*(*(a1 + 32) + 10) == 1)
    {
      if (gLogCategory_CLISetupInteractor <= 30)
      {
        if (gLogCategory_CLISetupInteractor != -1 || (v5 = _LogCategory_Initialize(), v4 = v8, v5))
        {
          __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_8_cold_3();
          v4 = v8;
        }
      }

      [v4 runPersonalRequestsAgreedCLI:*(*(a1 + 32) + 11) makeActiveDevice:*(*(a1 + 32) + 12)];
    }

    else
    {
      if (gLogCategory_CLISetupInteractor <= 30)
      {
        if (gLogCategory_CLISetupInteractor != -1 || (v6 = _LogCategory_Initialize(), v4 = v8, v6))
        {
          __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_8_cold_2();
          v4 = v8;
        }
      }

      [v4 personalRequestsEnabled:*(*(a1 + 32) + 10)];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void *__44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_9(uint64_t a1)
{
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_9_cold_1();
  }

  if (*(*(a1 + 32) + 11))
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  NSLog(&cfstr_Cmdhomedevices_12.isa, v2);
  result = *(*(a1 + 32) + 96);
  if (result)
  {

    return [result siriEnable];
  }

  return result;
}

void *__44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_10(uint64_t a1)
{
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_10_cold_1();
  }

  NSLog(&cfstr_Cmdhomedevices_13.isa);
  result = *(*(a1 + 32) + 96);
  if (result)
  {

    return [result termsAgreed];
  }

  return result;
}

uint64_t __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_11(uint64_t a1)
{
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_11_cold_1();
  }

  NSLog(&cfstr_Cmdhomedevices_14.isa);
  v3 = *(a1 + 32);
  v2 = a1 + 32;
  v4 = *(v3 + 96);
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    if (gLogCategory_CLISetupInteractor <= 30)
    {
      if (gLogCategory_CLISetupInteractor != -1 || (v6 = _LogCategory_Initialize(), v5 = v8, v6))
      {
        __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_11_cold_2(v2);
        v5 = v8;
      }
    }

    [v5 tvAudioEnabled:*(*v2 + 13)];
  }

  return MEMORY[0x2821F96F8]();
}

void *__44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_12(uint64_t a1)
{
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_12_cold_1();
  }

  NSLog(&cfstr_Cmdhomedevices_15.isa);
  v2 = *(a1 + 32);
  result = *(v2 + 96);
  if (result)
  {
    v4 = *(v2 + 68);

    return [result stereoRolePicked:v4];
  }

  return result;
}

uint64_t __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_13(uint64_t a1)
{
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_13_cold_1();
  }

  if (*(*(a1 + 32) + 15))
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  NSLog(&cfstr_Cmdhomedevices_16.isa, v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  v5 = *(v3 + 15);

  return [v4 psgSelected:v5];
}

void __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_14(uint64_t a1, void *a2)
{
  v8 = a2;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_14_cold_1();
  }

  v3 = *(*(a1 + 32) + 96);
  if (v3)
  {
    v4 = *(*(a1 + 32) + 56);
    v5 = [v8 count];
    v6 = *(a1 + 32);
    if (v4 >= v5)
    {
      NSLog(&cfstr_Cmdhomedevices_17.isa, *(v6 + 56));
    }

    else
    {
      v7 = [v8 objectAtIndex:*(v6 + 56)];
      NSLog(&cfstr_Cmdhomedevices_18.isa, v7);
      [v3 stereoMultiplePicked:v7];
    }
  }
}

void __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_15()
{
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_15_cold_1();
  }

  NSLog(&cfstr_YouCannotSetup.isa);
}

uint64_t __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_16(uint64_t a1, void *a2)
{
  v10 = a2;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_16_cold_1();
  }

  v3 = *(*(a1 + 32) + 96);
  if (v3)
  {
    v4 = v3;
    v5 = [v10 firstObject];
    CFStringGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"?";
    }

    [v4 wiFiSelected:v8];
  }

  return MEMORY[0x2821F96F8]();
}

void __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_17(uint64_t a1, void *a2)
{
  v4 = a2;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_17_cold_1();
  }

  v3 = *(*(a1 + 32) + 96);
  if (v3)
  {
    [v3 wiFiAcknowledged];
  }
}

void __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_18(uint64_t a1, void *a2)
{
  v4 = a2;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_18_cold_1();
  }

  v3 = *(*(a1 + 32) + 96);
  if (v3)
  {
    [v3 wiFiRetry];
  }
}

void *__44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_19(uint64_t a1)
{
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_19_cold_1();
  }

  if (*(*(a1 + 32) + 14))
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  NSLog(&cfstr_Cmdhomedevices_19.isa, v2);
  v3 = *(a1 + 32);
  result = *(v3 + 96);
  if (result)
  {
    v5 = *(v3 + 14);

    return [result soundRecognitionAgreed:v5];
  }

  return result;
}

void __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_20(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_20_cold_1();
  }

  NSLog(&cfstr_Cmdhomedevices_20.isa);
  v12 = *(*(a1 + 32) + 96);
  if (v12)
  {
    [v12 dataAndPrivacyAgreed];
  }
}

void __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
  {
    __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_21_cold_1();
  }

  NSLog(&cfstr_Cmdhomedevices_21.isa);
  v6 = *(*(a1 + 32) + 96);
  if (v6)
  {
    [v6 shareSettingsAgreed];
  }
}

- (void)sessionHandleProgress:(unsigned int)progress inInfo:(id)info session:(id)session
{
  infoCopy = info;
  sessionCopy = session;
  if (progress > 123)
  {
    if (progress <= 229)
    {
      if (progress > 199)
      {
        if (progress == 200)
        {
          v21 = *MEMORY[0x277D85E08];
        }

        else
        {
          if (progress != 210)
          {
            goto LABEL_55;
          }

          v11 = *MEMORY[0x277D85E08];
        }
      }

      else
      {
        if (progress != 124)
        {
          if (progress == 140)
          {
            if (self->_recognizeVoiceEnabled)
            {
              v9 = "yes";
            }

            else
            {
              v9 = "no";
            }

            NSLog(&cfstr_Cmdhomedevices_22.isa, v9);
            [sessionCopy siriForiCloudRecognizeAnswered:self->_siriForICloudEnabled];
            [sessionCopy recognizeVoiceAnswered:self->_recognizeVoiceEnabled];
          }

          goto LABEL_55;
        }

        v15 = *MEMORY[0x277D85E08];
      }

LABEL_54:
      FPrintF();
      goto LABEL_55;
    }

    if (progress > 235)
    {
      if (progress != 236)
      {
        if (progress != 250)
        {
          goto LABEL_55;
        }

        goto LABEL_37;
      }

      v23 = *MEMORY[0x277D85E08];
      FPrintF();
    }

    else
    {
      if (progress == 230)
      {
        v19 = *MEMORY[0x277D85E08];
        goto LABEL_54;
      }

      if (progress != 234)
      {
        goto LABEL_55;
      }
    }

    v24 = *MEMORY[0x277D85E08];
    goto LABEL_54;
  }

  if (progress <= 79)
  {
    if (progress <= 34)
    {
      if (progress != 20)
      {
        if (progress != 30)
        {
          goto LABEL_55;
        }

        NSLog(&cfstr_Cmdhomedevices_36.isa);
        if (gLogCategory_CLISetupInteractor <= 90 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
        {
          [CLISetupInteractor sessionHandleProgress:inInfo:session:];
        }

        goto LABEL_40;
      }

LABEL_37:
      v13 = *MEMORY[0x277D85E08];
      FPrintF();
      if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
      {
        [CLISetupInteractor sessionHandleProgress:inInfo:session:];
      }

LABEL_40:
      promptForSetupCompletionHandler = [(HDSSetupSession *)self->_setupSession promptForSetupCompletionHandler];
      promptForSetupCompletionHandler[2]();

      goto LABEL_55;
    }

    if (progress == 35)
    {
      v20 = *MEMORY[0x277D85E08];
    }

    else
    {
      if (progress != 40)
      {
        goto LABEL_55;
      }

      v10 = *MEMORY[0x277D85E08];
    }

    goto LABEL_54;
  }

  if (progress > 119)
  {
    if (progress == 120)
    {
      v22 = *MEMORY[0x277D85E08];
    }

    else
    {
      if (progress != 122)
      {
        goto LABEL_55;
      }

      v12 = *MEMORY[0x277D85E08];
    }

    goto LABEL_54;
  }

  if (progress == 80)
  {
    if (self->_delayTime)
    {
      if (gLogCategory_CLISetupInteractor <= 30 && (gLogCategory_CLISetupInteractor != -1 || _LogCategory_Initialize()))
      {
        [CLISetupInteractor sessionHandleProgress:inInfo:session:];
      }

      v16 = dispatch_semaphore_create(0);
      v17 = dispatch_time(0, 1000000000 * self->_delayTime);
      dispatch_semaphore_wait(v16, v17);
    }

    v18 = *MEMORY[0x277D85E08];
    goto LABEL_54;
  }

  if (progress == 96)
  {
    goto LABEL_37;
  }

LABEL_55:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__CLISetupInteractor_invalidate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_cold_1(int a1)
{
  if (!(!v2 & v1))
  {
    switch(a1)
    {
      case 900:
      case 901:
      case 902:
      case 903:
      case 904:
      case 905:
      case 906:
      case 907:
      case 908:
      case 909:
      case 910:
      case 911:
      case 912:
      case 913:
        return LogPrintF();
      default:
        JUMPOUT(0);
    }
  }

  return LogPrintF();
}

void __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_2_cold_2(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

uint64_t __44__CLISetupInteractor_setCLIPromptsForStates__block_invoke_4_cold_1(void *a1, void *a2)
{
  [a1 count];
  [a2 count];
  return LogPrintF();
}

@end