@interface CKTapToRadar
+ (void)launchTapToRadarForChatControllerLeak:(id)a3;
+ (void)launchTapToRadarForFailedMessage:(id)a3 inChat:(id)a4;
+ (void)launchTapToRadarForFailedMessageGUID:(id)a3 chatGUID:(id)a4 messageDescription:(id)a5 error:(int64_t)a6;
+ (void)launchTapToRadarForTranscriptDynamicsWatchdogWithTimeInterval:(double)a3;
+ (void)launchTapToRadarWithTitle:(id)a3 description:(id)a4 bundleID:(id)a5 componentID:(id)a6 componentName:(id)a7 componentVersion:(id)a8 autodiagnostics:(id)a9 classification:(id)a10 reproducibility:(id)a11;
@end

@implementation CKTapToRadar

+ (void)launchTapToRadarWithTitle:(id)a3 description:(id)a4 bundleID:(id)a5 componentID:(id)a6 componentName:(id)a7 componentVersion:(id)a8 autodiagnostics:(id)a9 classification:(id)a10 reproducibility:(id)a11
{
  v51 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v40 = a7;
  v41 = a8;
  v39 = a9;
  v42 = a10;
  v43 = a11;
  v16 = [MEMORY[0x1E69A60F0] sharedInstance];
  LODWORD(a7) = [v16 isInternalInstall];

  if (a7)
  {
    v17 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v18 = MEMORY[0x1E696AEC0];
    v19 = [v35 stringByAddingPercentEncodingWithAllowedCharacters:v17];
    v20 = [v36 stringByAddingPercentEncodingWithAllowedCharacters:v17];
    v21 = [v37 stringByAddingPercentEncodingWithAllowedCharacters:v17];
    v22 = [v38 stringByAddingPercentEncodingWithAllowedCharacters:v17];
    v23 = [v40 stringByAddingPercentEncodingWithAllowedCharacters:v17];
    v24 = [v41 stringByAddingPercentEncodingWithAllowedCharacters:v17];
    v25 = [v42 stringByAddingPercentEncodingWithAllowedCharacters:v17];
    v26 = [v43 stringByAddingPercentEncodingWithAllowedCharacters:v17];
    v27 = [v18 stringWithFormat:@"tap-to-radar://new?Title=%@&Description=%@&BundleID=%@&ComponentID=%@&ComponentName=%@&ComponentVersion=%@&AutoDiagnostics=%@&Classification=%@&Reproducibility=%@&IncludeDevicePrefixInTitle=1", v19, v20, v21, v22, v23, v24, v39, v25, v26];

    v28 = [MEMORY[0x1E695DFF8] URLWithString:v27];
    v44 = 0;
    v45 = &v44;
    v46 = 0x2050000000;
    v29 = getLSApplicationWorkspaceClass_softClass;
    v47 = getLSApplicationWorkspaceClass_softClass;
    if (!getLSApplicationWorkspaceClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getLSApplicationWorkspaceClass_block_invoke;
      v49 = &unk_1E72EB968;
      v50 = &v44;
      __getLSApplicationWorkspaceClass_block_invoke(buf);
      v29 = v45[3];
    }

    v30 = v29;
    _Block_object_dispose(&v44, 8);
    v31 = [v29 defaultWorkspace];
    v32 = [v31 openURL:v28 withOptions:0];

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = @"Failed to open";
        if (v32)
        {
          v34 = @"Successfully opened";
        }

        *buf = 138412546;
        *&buf[4] = v34;
        *&buf[12] = 2112;
        *&buf[14] = v28;
        _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "%@ Tap-to-Radar url, URL: %@", buf, 0x16u);
      }
    }
  }
}

+ (void)launchTapToRadarForFailedMessageGUID:(id)a3 chatGUID:(id)a4 messageDescription:(id)a5 error:(int64_t)a6
{
  v17 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Additional Notes:\n\n\nGUID: %@", a3];
  if (v17)
  {
    v12 = [v11 stringByAppendingFormat:@"\n\nChat GUID: %@", v17];

    v11 = v12;
  }

  if (a6)
  {
    v13 = _NSStringFromIMMessageError();
    v14 = [v11 stringByAppendingFormat:@"\n\nError: %@ (%llu)", v13, a6];

    v11 = v14;
  }

  if (v10)
  {
    v15 = [v11 stringByAppendingFormat:@"\n\nDescription: %@", v10];

    v11 = v15;
  }

  v16 = [a1 _titleForFailedMessageRadar];
  [a1 launchTapToRadarWithTitle:v16 description:v11];
}

+ (void)launchTapToRadarForFailedMessage:(id)a3 inChat:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [v7 guid];
  v8 = [v6 guid];

  v9 = [v7 description];
  v10 = [v7 error];

  [a1 launchTapToRadarForFailedMessageGUID:v11 chatGUID:v8 messageDescription:v9 error:{objc_msgSend(v10, "code")}];
}

+ (void)launchTapToRadarForChatControllerLeak:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v7 = [v4 stringWithFormat:@"%@ Leak", v5];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ leak detected with chat controller leak detector", v5];

  [a1 launchTapToRadarWithTitle:v7 description:v6];
}

+ (void)launchTapToRadarForTranscriptDynamicsWatchdogWithTimeInterval:(double)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Transcript Dynamics Running For More Than %.1f Seconds", *&a3];
  [a1 launchTapToRadarWithTitle:v4 description:{@"Transcript dynamics wathdog fired. Animations have been invalidated, likely leading to an incorrect transcript layout.\n\nPlease describe what you were doing when this occured:\n"}];
}

@end