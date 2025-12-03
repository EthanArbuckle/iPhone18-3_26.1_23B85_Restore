@interface CSLockScreenSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation CSLockScreenSettings

- (void)setDefaultValues
{
  [(CSLockScreenPasscodeSettings *)self->_passcodeSettings setDefaultValues];
  [(CSLockScreenChargingSettings *)self->_chargingSettings setDefaultValues];
  [(CSFocusSettings *)self->_focusSettings setDefaultValues];
  [(CSLookSettings *)self->_lookSettings setDefaultValues];
  [(CSVibrancySettings *)self->_vibrancySettings setDefaultValues];
  self->_showRawErrorCodes = 0;
  self->_showNowPlaying = 0;
  self->_autoDismissUnlockedLockScreen = 0;
  self->_alwaysEnableUserRequestedErase = 0;
  [(CSBounceSettings *)self->_horizontalBounceSettings setDefaultValues];
  [(CSBounceSettings *)self->_horizontalBounceSettings setMultiplier:0.5];
  [(CSBounceSettings *)self->_verticalBounceSettings setDefaultValues];
  [(CSLockScreenMesaSettings *)self->_mesaSettings setDefaultValues];
  [(CSLockScreenPearlSettings *)self->_pearlSettings setDefaultValues];
  [(CSCoverSheetTransitionsSettings *)self->_coverSheetTransitionsSettings setDefaultValues];
  [(CSHorizontalScrollFailureRecognizerSettings *)self->_horizontalScrollFailureRecognizerSettings setDefaultValues];
  [(CSDashBoardScrollModifierSettings *)self->_dashBoardScrollModifierSettings setDefaultValues];
  [(CSCoverSheetDismissGestureSettings *)self->_coverSheetDismissGestureSettings setDefaultValues];
  [(CSDashBoardNotificationVersusPagingScrollSettings *)self->_dashBoardNotificationScrollSettings setDefaultValues];
  [(CSLockScreenIdleTimerSettings *)self->_idleTimerSettings setDefaultValues];
  [(CSCameraExtensionSettings *)self->_cameraExtensionSettings setDefaultValues];
  [(CSAODTransitionSettings *)self->_aodTransitionSettings setDefaultValues];
  [(SBFAnimationSettings *)self->_unlockToPhoneWallpaperOutSettings setDefaultValues];
  [(SBFAnimationSettings *)self->_unlockToPhoneWallpaperOutSettings setDuration:0.35];
  [(SBFAnimationSettings *)self->_unlockToPhoneWallpaperOutSettings setCurve:393216];
  controlPoint1Settings = [(SBFAnimationSettings *)self->_unlockToPhoneWallpaperOutSettings controlPoint1Settings];
  [controlPoint1Settings setPointValue:{0.6, 0.0}];

  controlPoint2Settings = [(SBFAnimationSettings *)self->_unlockToPhoneWallpaperOutSettings controlPoint2Settings];
  [controlPoint2Settings setPointValue:{1.0, 0.4}];

  [(SBFAnimationSettings *)self->_unlockToPhoneWallpaperInSettings setDefaultValues];
  [(SBFAnimationSettings *)self->_unlockToPhoneWallpaperInSettings setDuration:0.35];
  [(SBFAnimationSettings *)self->_unlockToPhoneWallpaperInSettings setCurve:393216];
  controlPoint1Settings2 = [(SBFAnimationSettings *)self->_unlockToPhoneWallpaperOutSettings controlPoint1Settings];
  [controlPoint1Settings2 setPointValue:{0.0, 0.6}];

  controlPoint2Settings2 = [(SBFAnimationSettings *)self->_unlockToPhoneWallpaperOutSettings controlPoint2Settings];
  [controlPoint2Settings2 setPointValue:{0.4, 1.0}];

  [(SBFAnimationSettings *)self->_unlockWallpaperOutSettings setDefaultValues];
  [(SBFAnimationSettings *)self->_unlockWallpaperOutSettings setDuration:0.25];
  [(SBFAnimationSettings *)self->_unlockWallpaperOutSettings setCurve:393216];
  controlPoint1Settings3 = [(SBFAnimationSettings *)self->_unlockWallpaperOutSettings controlPoint1Settings];
  [controlPoint1Settings3 setPointValue:{0.0, 1.0}];

  controlPoint2Settings3 = [(SBFAnimationSettings *)self->_unlockWallpaperOutSettings controlPoint2Settings];
  [controlPoint2Settings3 setPointValue:{0.0, 1.0}];

  [(SBFAnimationSettings *)self->_unlockWallpaperInSettings setDefaultValues];
  [(SBFAnimationSettings *)self->_unlockWallpaperInSettings setAnimationType:1];
  [(SBFAnimationSettings *)self->_unlockWallpaperInSettings setMass:15.0];
  [(SBFAnimationSettings *)self->_unlockWallpaperInSettings setStiffness:600.0];
  [(SBFAnimationSettings *)self->_unlockWallpaperInSettings setDamping:700.0];
  self->_appGrabberSlideUpVelocityThreshold = 450.0;
  self->_nowPlayingHeightCompact = 282.0;
  self->_nowPlayingHeightExpanded = 336.0;
  if (__sb__runningInSpringBoard())
  {
    *&self->_mainToCameraViewSlideCompletionPercentage = qword_21EC95FA0[SBFEffectiveDeviceClass() == 2];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    *&self->_mainToCameraViewSlideCompletionPercentage = qword_21EC95FA0[[currentDevice userInterfaceIdiom] == 1];
  }

  if (__sb__runningInSpringBoard())
  {
    v10 = SBFEffectiveDeviceClass();
    v11 = 0.333;
    if (v10 == 2)
    {
      v11 = 0.25;
    }

    self->_mainToTodayViewSlideCompletionPercentage = v11;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];
    v14 = 0.333;
    if (userInterfaceIdiom == 1)
    {
      v14 = 0.25;
    }

    self->_mainToTodayViewSlideCompletionPercentage = v14;
  }

  self->_unlockSwipeWallpaperAlpha = 0.5;
  self->_alwaysPutPluginsBelowScrollView = 0;
  self->_killsInsecureDrawingApps = 1;
  self->_unlockPasscodeThreshold = 93.0;
  self->_unlockPasscodeThresholdForExternalDisplay = 93.0;
  self->_unlockRubberBandThreshold = 93.0;
  self->_unlockRubberBandFeedbackInterval = 0.1;
  self->_unlockRubberBandFeedbackIntensity = 2;
  self->_prewarmsCameraHardwareOnSwipe = 1;
  self->_prewarmsCameraHardwareOnTap = 1;
  self->_prelaunchesCameraAppOnSwipe = 1;
  self->_prelaunchesCameraAppOnTap = 1;
  self->_cameraPrewarmThresholdOnSwipe = 0.05;
  self->_cameraPrelaunchThresholdOnSwipe = 0.05;
  self->_cameraPrewarmDebounceTimeInterval = 1.5;
  self->_cameraPrewarmAutoCancelTimeInterval = 2.0;
  self->_lockJiggleHapticDelay = 0.0;
  self->_lockJiggleAnimationDelay = 0.0;
  self->_wallpaperOcclusionPercentage = 0.4;
  self->_shouldOptimizeDeviceMotionEffectUnderNotificationList = 0;
}

+ (id)settingsControllerModule
{
  v220[1] = *MEMORY[0x277D85DE8];
  v160 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Raw Error Codes" valueKeyPath:@"showRawErrorCodes"];
  v2 = MEMORY[0x277D43218];
  v220[0] = v160;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v220 count:1];
  v188 = [v2 sectionWithRows:v3 title:@"Phone Unlock with Watch"];

  v191 = [MEMORY[0x277D432A0] rowWithTitle:@"Auto Dismiss Unlocked LockScreen" valueKeyPath:@"autoDismissUnlockedLockScreen"];
  v190 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Now Playing" valueKeyPath:@"showNowPlaying"];
  v4 = [MEMORY[0x277D43298] row];
  v5 = [v4 valueKeyPath:@"nowPlayingHeightCompact"];
  v189 = [v5 minValue:110.0 maxValue:520.0];

  v6 = [MEMORY[0x277D43298] row];
  v7 = [v6 valueKeyPath:@"nowPlayingHeightExpanded"];
  v159 = [v7 minValue:110.0 maxValue:520.0];

  v158 = [MEMORY[0x277D432A0] rowWithTitle:@"Show User Picture" valueKeyPath:@"showUserPicture"];
  v157 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Logout Button" valueKeyPath:@"showLogoutButton"];
  v156 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Thermal Trap" valueKeyPath:@"showThermalTrap"];
  v155 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Blocked UI" valueKeyPath:@"showBlockedUI"];
  v154 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Reset/Restore" valueKeyPath:@"showResetRestore"];
  v153 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Emergency Dialer" valueKeyPath:@"showEmergencyDialer"];
  v152 = [MEMORY[0x277D432A0] rowWithTitle:@"Show Regions Debug" valueKeyPath:@"showRegionsDebugView"];
  v151 = [MEMORY[0x277D432A0] rowWithTitle:@"Always Enable User Requested Erase" valueKeyPath:@"alwaysEnableUserRequestedErase"];
  v150 = [MEMORY[0x277D431A8] rowWithTitle:@"Add Notification" outletKeyPath:@"addNotificationOutlet"];
  v8 = MEMORY[0x277D43218];
  v219[0] = v191;
  v219[1] = v190;
  v219[2] = v189;
  v219[3] = v159;
  v219[4] = v158;
  v219[5] = v157;
  v219[6] = v156;
  v219[7] = v155;
  v219[8] = v154;
  v219[9] = v153;
  v219[10] = v152;
  v219[11] = v151;
  v219[12] = v150;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v219 count:13];
  v187 = [v8 sectionWithRows:v9 title:@"Modern Lockscreen"];

  v149 = [MEMORY[0x277D432A0] rowWithTitle:@"Prewarms on Swipe" valueKeyPath:@"prewarmsCameraHardwareOnSwipe"];
  v148 = [MEMORY[0x277D432A0] rowWithTitle:@"Prewarms on Button" valueKeyPath:@"prewarmsCameraHardwareOnTap"];
  v147 = [MEMORY[0x277D432A0] rowWithTitle:@"Prelaunches on Swipe" valueKeyPath:@"prelaunchesCameraAppOnSwipe"];
  v146 = [MEMORY[0x277D432A0] rowWithTitle:@"Prelaunches on Button" valueKeyPath:@"prelaunchesCameraAppOnTap"];
  v145 = [MEMORY[0x277D431F0] rowWithTitle:@"Camera Prewarm Backoff" valueKeyPath:@"cameraPrewarmDebounceTimeInterval"];
  v144 = [MEMORY[0x277D431F0] rowWithTitle:@"Camera Prewarm Backoff" valueKeyPath:@"cameraPrewarmAutoCancelTimeInterval"];
  v10 = MEMORY[0x277D43218];
  v218[0] = v149;
  v218[1] = v148;
  v218[2] = v147;
  v218[3] = v146;
  v218[4] = v145;
  v218[5] = v144;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v218 count:6];
  v186 = [v10 sectionWithRows:v11 title:@"Prewarm/Prelaunch"];

  v12 = [MEMORY[0x277D43298] rowWithTitle:@"Prewarm Threshold" valueKeyPath:@"cameraPrewarmThresholdOnSwipe"];
  v143 = [v12 minValue:0.0 maxValue:1.0];

  v13 = [MEMORY[0x277D43298] rowWithTitle:@"Prelaunch Threshold" valueKeyPath:@"cameraPrelaunchThresholdOnSwipe"];
  v142 = [v13 minValue:0.0 maxValue:1.0];

  v14 = MEMORY[0x277D43218];
  v217[0] = v143;
  v217[1] = v142;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v217 count:2];
  v184 = [v14 sectionWithRows:v15 title:@"Prewarm/Prelaunch Thresholds"];

  v141 = [MEMORY[0x277D431E0] rowWithTitle:@"CoverSheet Transitions" childSettingsKeyPath:@"coverSheetTransitionsSettings"];
  v16 = MEMORY[0x277D43218];
  v216 = v141;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v216 count:1];
  v185 = [v16 sectionWithRows:v17];

  v140 = [MEMORY[0x277D431E0] rowWithTitle:@"Custom Time Looks" childSettingsKeyPath:@"lookSettings"];
  v18 = MEMORY[0x277D43218];
  v215 = v140;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v215 count:1];
  v183 = [v18 sectionWithRows:v19];

  v139 = [MEMORY[0x277D431E0] rowWithTitle:@"Passcode Settings" childSettingsKeyPath:@"passcodeSettings"];
  v20 = MEMORY[0x277D43218];
  v214 = v139;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v214 count:1];
  v182 = [v20 sectionWithRows:v21];

  v138 = [MEMORY[0x277D431E0] rowWithTitle:@"Charging Settings" childSettingsKeyPath:@"chargingSettings"];
  v22 = MEMORY[0x277D43218];
  v213 = v138;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v213 count:1];
  v181 = [v22 sectionWithRows:v23];

  v137 = [MEMORY[0x277D431E0] rowWithTitle:@"Focus Settings" childSettingsKeyPath:@"focusSettings"];
  v24 = MEMORY[0x277D43218];
  v212 = v137;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v212 count:1];
  v180 = [v24 sectionWithRows:v25];

  v136 = [MEMORY[0x277D431E0] rowWithTitle:@"Vibrancy Settings" childSettingsKeyPath:@"vibrancySettings"];
  v26 = MEMORY[0x277D43218];
  v211 = v136;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v211 count:1];
  v179 = [v26 sectionWithRows:v27];

  v135 = [MEMORY[0x277D431E0] rowWithTitle:@"Slide To Unlock Failure Recognizer" childSettingsKeyPath:@"horizontalScrollFailureRecognizerSettings"];
  v134 = [MEMORY[0x277D431E0] rowWithTitle:@"DashBoard Scroll Modifier" childSettingsKeyPath:@"dashBoardScrollModifierSettings"];
  v133 = [MEMORY[0x277D431E0] rowWithTitle:@"Notification Paging" childSettingsKeyPath:@"dashBoardNotificationScrollSettings"];
  v28 = MEMORY[0x277D43218];
  v210[0] = v135;
  v210[1] = v134;
  v210[2] = v133;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v210 count:3];
  v178 = [v28 sectionWithRows:v29];

  v132 = [MEMORY[0x277D431E0] rowWithTitle:@"Quick Actions" childSettingsKeyPath:@"dashBoardQuickActionButtonSettings"];
  v131 = [MEMORY[0x277D431E0] rowWithTitle:@"Remote Content" childSettingsKeyPath:@"dashBoardRemoteContentSettings"];
  v30 = MEMORY[0x277D43218];
  v209[0] = v132;
  v209[1] = v131;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v209 count:2];
  v177 = [v30 sectionWithRows:v31];

  v130 = [MEMORY[0x277D431E0] rowWithTitle:@"Idle Timer" childSettingsKeyPath:@"idleTimerSettings"];
  v32 = MEMORY[0x277D43218];
  v208 = v130;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v208 count:1];
  v176 = [v32 sectionWithRows:v33];

  v129 = [MEMORY[0x277D431E0] rowWithTitle:@"Camera Extension Settings" childSettingsKeyPath:@"cameraExtensionSettings"];
  v34 = MEMORY[0x277D43218];
  v207 = v129;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v207 count:1];
  v175 = [v34 sectionWithRows:v35];

  v128 = [MEMORY[0x277D431E0] rowWithTitle:@"AOD Transition" childSettingsKeyPath:@"aodTransitionSettings"];
  v36 = MEMORY[0x277D43218];
  v206 = v128;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v206 count:1];
  v174 = [v36 sectionWithRows:v37];

  v127 = [MEMORY[0x277D432A0] rowWithTitle:@"Optimize Device Motion Effect Under Notifications" valueKeyPath:@"shouldOptimizeDeviceMotionEffectUnderNotificationList"];
  v38 = [MEMORY[0x277D43298] rowWithTitle:@"Wallpaper Occlusion Percentage" valueKeyPath:@"wallpaperOcclusionPercentage"];
  v126 = [v38 minValue:0.0 maxValue:1.0];

  v39 = MEMORY[0x277D43218];
  v205[0] = v127;
  v205[1] = v126;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v205 count:2];
  v173 = [v39 sectionWithRows:v40];

  v125 = [MEMORY[0x277D431E0] rowWithTitle:@"Mesa Settings" childSettingsKeyPath:@"mesaSettings"];
  v124 = [MEMORY[0x277D431E0] rowWithTitle:@"Pearl Settings" childSettingsKeyPath:@"pearlSettings"];
  v41 = MEMORY[0x277D43218];
  v204[0] = v125;
  v204[1] = v124;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v204 count:2];
  v172 = [v41 sectionWithRows:v42];

  v43 = MEMORY[0x277D43218];
  v44 = [MEMORY[0x277D431E0] rowWithTitle:@"Dismiss Gesture" childSettingsKeyPath:@"coverSheetDismissGestureSettings"];
  v203 = v44;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v203 count:1];
  v171 = [v43 sectionWithRows:v45];

  v169 = [MEMORY[0x277D43298] rowWithTitle:@"Gravity" valueKeyPath:@"verticalBounceSettings.gravity"];
  v167 = [v169 minValue:0.0 maxValue:6.0];
  v202[0] = v167;
  v165 = [MEMORY[0x277D43298] rowWithTitle:@"Elasticity" valueKeyPath:@"verticalBounceSettings.elasticity"];
  v163 = [v165 minValue:0.0 maxValue:1.0];
  v202[1] = v163;
  v161 = [MEMORY[0x277D43298] rowWithTitle:@"Friction" valueKeyPath:@"verticalBounceSettings.friction"];
  v46 = [v161 minValue:0.0 maxValue:1.0];
  v202[2] = v46;
  v47 = [MEMORY[0x277D43298] rowWithTitle:@"Velocity" valueKeyPath:@"verticalBounceSettings.velocity"];
  v48 = [v47 minValue:0.0 maxValue:1000.0];
  v202[3] = v48;
  v49 = [MEMORY[0x277D43298] rowWithTitle:@"Minimum Velocity To Assist" valueKeyPath:@"verticalBounceSettings.minVelocityToAssist"];
  v50 = [v49 minValue:500.0 maxValue:3000.0];
  v202[4] = v50;
  v51 = [MEMORY[0x277D43298] rowWithTitle:@"Maximum Velocity To Assist" valueKeyPath:@"verticalBounceSettings.maxVelocityToAssist"];
  v52 = [v51 minValue:500.0 maxValue:3000.0];
  v202[5] = v52;
  v53 = [MEMORY[0x277D43298] rowWithTitle:@"Velocity Assistance Amount" valueKeyPath:@"verticalBounceSettings.maxVelocityAssistance"];
  v54 = [v53 minValue:0.0 maxValue:1500.0];
  v202[6] = v54;
  v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v202 count:7];

  v170 = [MEMORY[0x277D43218] sectionWithRows:v120 title:@"Camera Bounce Settings"];
  v55 = MEMORY[0x277D43218];
  v56 = [MEMORY[0x277D65DD8] _moduleWithSectionTitle:@"Unlock To Phone Wallpaper Out" delay:0 frameRate:0];
  v168 = [v55 submoduleWithModule:v56 childSettingsKeyPath:@"unlockToPhoneWallpaperOutSettings"];

  v57 = MEMORY[0x277D43218];
  v58 = [MEMORY[0x277D65DD8] _moduleWithSectionTitle:@"Unlock To Phone Wallpaper In" delay:1 frameRate:0];
  v166 = [v57 submoduleWithModule:v58 childSettingsKeyPath:@"unlockToPhoneWallpaperInSettings"];

  v59 = MEMORY[0x277D43218];
  v60 = [MEMORY[0x277D65DD8] _moduleWithSectionTitle:@"Unlock Wallpaper Out" delay:0 frameRate:0];
  v164 = [v59 submoduleWithModule:v60 childSettingsKeyPath:@"unlockWallpaperOutSettings"];

  v61 = MEMORY[0x277D43218];
  v62 = [MEMORY[0x277D65DD8] _moduleWithSectionTitle:@"Unlock Wallpaper In" delay:1 frameRate:0];
  v162 = [v61 submoduleWithModule:v62 childSettingsKeyPath:@"unlockWallpaperInSettings"];

  v63 = MEMORY[0x277D43218];
  v64 = [MEMORY[0x277D43298] row];
  v65 = [v64 valueKeyPath:@"mainToCameraViewSlideCompletionPercentage"];
  v66 = [v65 minValue:0.0 maxValue:1.0];
  v201 = v66;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v201 count:1];
  v123 = [v63 sectionWithRows:v67 title:@"Main page to Camera Slide Completion Percentage"];

  v68 = MEMORY[0x277D43218];
  v69 = [MEMORY[0x277D43298] row];
  v70 = [v69 valueKeyPath:@"mainToTodayViewSlideCompletionPercentage"];
  v71 = [v70 minValue:0.0 maxValue:1.0];
  v200 = v71;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v200 count:1];
  v122 = [v68 sectionWithRows:v72 title:@"Main page to Today view slide Completion Percentage"];

  v73 = MEMORY[0x277D43218];
  v74 = [MEMORY[0x277D43298] row];
  v75 = [v74 valueKeyPath:@"unlockSwipeWallpaperAlpha"];
  v76 = [v75 minValue:0.0 maxValue:1.0];
  v199 = v76;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v199 count:1];
  v119 = [v73 sectionWithRows:v77 title:@"Unlock Swipe Wallpaper Alpha"];

  v117 = MEMORY[0x277D43218];
  v115 = [MEMORY[0x277D43298] rowWithTitle:@"Passcode Threshold" valueKeyPath:@"unlockPasscodeThreshold"];
  v78 = [v115 minValue:0.0 maxValue:300.0];
  v198[0] = v78;
  v79 = [MEMORY[0x277D43298] rowWithTitle:@"Passcode ThresholdForExternalDisplay" valueKeyPath:@"unlockPasscodeThresholdForExternalDisplay"];
  v80 = [v79 minValue:0.0 maxValue:300.0];
  v198[1] = v80;
  v81 = [MEMORY[0x277D43298] rowWithTitle:@"Rubber Band Range" valueKeyPath:@"unlockRubberBandThreshold"];
  v82 = [v81 minValue:0.0 maxValue:300.0];
  v198[2] = v82;
  v83 = [MEMORY[0x277D43298] rowWithTitle:@"Haptic Interval" valueKeyPath:@"unlockRubberBandFeedbackInterval"];
  v84 = [v83 minValue:0.0 maxValue:0.3];
  v198[3] = v84;
  v85 = [MEMORY[0x277D431B8] rowWithTitle:@"Haptic Intensity" valueKeyPath:@"unlockRubberBandFeedbackIntensity"];
  v86 = [v85 possibleValues:&unk_28307A058 titles:&unk_28307A070];
  v198[4] = v86;
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v198 count:5];
  v118 = [v117 sectionWithRows:v87 title:@"Unlock Swipe Thresholds"];

  v88 = MEMORY[0x277D43218];
  v89 = [MEMORY[0x277D43298] row];
  v90 = [v89 valueKeyPath:@"appGrabberSlideUpVelocityThreshold"];
  v91 = [v90 minValue:300.0 maxValue:2000.0];
  v197 = v91;
  v92 = [MEMORY[0x277CBEA60] arrayWithObjects:&v197 count:1];
  v116 = [v88 sectionWithRows:v92 title:@"App Grabber Slide Up Velocity Threshold"];

  v93 = [MEMORY[0x277D432A0] rowWithTitle:@"Always put plugins below scroll view" valueKeyPath:@"alwaysPutPluginsBelowScrollView"];
  v196[0] = v93;
  v94 = [MEMORY[0x277D431E0] rowWithTitle:@"Test Plugin" childSettingsKeyPath:@"testPluginSettings"];
  v196[1] = v94;
  v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v196 count:2];

  v114 = [MEMORY[0x277D43218] sectionWithRows:v95 title:@"Plugins"];
  v96 = [MEMORY[0x277D432A0] rowWithTitle:@"Kill Insecure Drawing Apps" valueKeyPath:@"killsInsecureDrawingApps"];
  v195 = v96;
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:&v195 count:1];

  v113 = [MEMORY[0x277D43218] sectionWithRows:v97 title:@"Security"];
  v98 = MEMORY[0x277D431A8];
  action = [MEMORY[0x277D43238] action];
  v100 = [v98 rowWithTitle:@"Restore Defaults" action:action];
  v194 = v100;
  v121 = [MEMORY[0x277CBEA60] arrayWithObjects:&v194 count:1];

  v112 = [MEMORY[0x277D43218] sectionWithRows:v121];
  v101 = MEMORY[0x277D43218];
  v102 = [MEMORY[0x277D43298] rowWithTitle:@"Haptic Delay" valueKeyPath:@"lockJiggleHapticDelay"];
  v103 = [v102 minValue:0.0 maxValue:0.3];
  v193[0] = v103;
  v104 = [MEMORY[0x277D43298] rowWithTitle:@"Animation Delay" valueKeyPath:@"lockJiggleAnimationDelay"];
  v105 = [v104 minValue:0.0 maxValue:0.3];
  v193[1] = v105;
  v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v193 count:2];
  v107 = [v101 sectionWithRows:v106 title:@"Lock Jiggle Timings"];

  v110 = MEMORY[0x277D43218];
  v192[0] = v188;
  v192[1] = v187;
  v192[2] = v185;
  v192[3] = v183;
  v192[4] = v182;
  v192[5] = v179;
  v192[6] = v181;
  v192[7] = v175;
  v192[8] = v174;
  v192[9] = v180;
  v192[10] = v173;
  v192[11] = v186;
  v192[12] = v184;
  v192[13] = v178;
  v192[14] = v177;
  v192[15] = v176;
  v192[16] = v172;
  v192[17] = v171;
  v192[18] = v170;
  v192[19] = v168;
  v192[20] = v166;
  v192[21] = v164;
  v192[22] = v162;
  v192[23] = v123;
  v192[24] = v122;
  v192[25] = v119;
  v192[26] = v118;
  v192[27] = v116;
  v192[28] = v107;
  v192[29] = v114;
  v192[30] = v113;
  v192[31] = v112;
  v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:32];
  v111 = [v110 moduleWithTitle:@"LockScreen Settings" contents:v108];

  return v111;
}

@end