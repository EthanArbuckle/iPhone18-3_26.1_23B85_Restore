@interface CKTapToRadar
+ (void)launchTapToRadarForChatControllerLeak:(id)leak;
+ (void)launchTapToRadarForFailedMessage:(id)message inChat:(id)chat;
+ (void)launchTapToRadarForFailedMessageGUID:(id)d chatGUID:(id)iD messageDescription:(id)description error:(int64_t)error;
+ (void)launchTapToRadarForTranscriptDynamicsWatchdogWithTimeInterval:(double)interval;
+ (void)launchTapToRadarWithTitle:(id)title description:(id)description bundleID:(id)d componentID:(id)iD componentName:(id)name componentVersion:(id)version autodiagnostics:(id)autodiagnostics classification:(id)self0 reproducibility:(id)self1;
@end

@implementation CKTapToRadar

+ (void)launchTapToRadarWithTitle:(id)title description:(id)description bundleID:(id)d componentID:(id)iD componentName:(id)name componentVersion:(id)version autodiagnostics:(id)autodiagnostics classification:(id)self0 reproducibility:(id)self1
{
  v51 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  descriptionCopy = description;
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  versionCopy = version;
  autodiagnosticsCopy = autodiagnostics;
  classificationCopy = classification;
  reproducibilityCopy = reproducibility;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  LODWORD(name) = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (name)
  {
    uRLHostAllowedCharacterSet = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
    v18 = MEMORY[0x1E696AEC0];
    v19 = [titleCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
    v20 = [descriptionCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
    v21 = [dCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
    v22 = [iDCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
    v23 = [nameCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
    v24 = [versionCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
    v25 = [classificationCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
    v26 = [reproducibilityCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
    v27 = [v18 stringWithFormat:@"tap-to-radar://new?Title=%@&Description=%@&BundleID=%@&ComponentID=%@&ComponentName=%@&ComponentVersion=%@&AutoDiagnostics=%@&Classification=%@&Reproducibility=%@&IncludeDevicePrefixInTitle=1", v19, v20, v21, v22, v23, v24, autodiagnosticsCopy, v25, v26];

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
    defaultWorkspace = [v29 defaultWorkspace];
    v32 = [defaultWorkspace openURL:v28 withOptions:0];

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

+ (void)launchTapToRadarForFailedMessageGUID:(id)d chatGUID:(id)iD messageDescription:(id)description error:(int64_t)error
{
  iDCopy = iD;
  descriptionCopy = description;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Additional Notes:\n\n\nGUID: %@", d];
  if (iDCopy)
  {
    iDCopy = [v11 stringByAppendingFormat:@"\n\nChat GUID: %@", iDCopy];

    v11 = iDCopy;
  }

  if (error)
  {
    v13 = _NSStringFromIMMessageError();
    error = [v11 stringByAppendingFormat:@"\n\nError: %@ (%llu)", v13, error];

    v11 = error;
  }

  if (descriptionCopy)
  {
    descriptionCopy = [v11 stringByAppendingFormat:@"\n\nDescription: %@", descriptionCopy];

    v11 = descriptionCopy;
  }

  _titleForFailedMessageRadar = [self _titleForFailedMessageRadar];
  [self launchTapToRadarWithTitle:_titleForFailedMessageRadar description:v11];
}

+ (void)launchTapToRadarForFailedMessage:(id)message inChat:(id)chat
{
  chatCopy = chat;
  messageCopy = message;
  guid = [messageCopy guid];
  guid2 = [chatCopy guid];

  v9 = [messageCopy description];
  error = [messageCopy error];

  [self launchTapToRadarForFailedMessageGUID:guid chatGUID:guid2 messageDescription:v9 error:{objc_msgSend(error, "code")}];
}

+ (void)launchTapToRadarForChatControllerLeak:(id)leak
{
  v4 = MEMORY[0x1E696AEC0];
  leakCopy = leak;
  leakCopy = [v4 stringWithFormat:@"%@ Leak", leakCopy];
  leakCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ leak detected with chat controller leak detector", leakCopy];

  [self launchTapToRadarWithTitle:leakCopy description:leakCopy2];
}

+ (void)launchTapToRadarForTranscriptDynamicsWatchdogWithTimeInterval:(double)interval
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Transcript Dynamics Running For More Than %.1f Seconds", *&interval];
  [self launchTapToRadarWithTitle:v4 description:{@"Transcript dynamics wathdog fired. Animations have been invalidated, likely leading to an incorrect transcript layout.\n\nPlease describe what you were doing when this occured:\n"}];
}

@end