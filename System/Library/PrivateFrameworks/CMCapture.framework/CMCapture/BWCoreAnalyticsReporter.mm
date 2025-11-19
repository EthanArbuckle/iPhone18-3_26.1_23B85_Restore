@interface BWCoreAnalyticsReporter
+ (__CFString)commonClientApplicationID:(uint64_t)a1;
+ (id)geometricDistortionCorrectionSourceToShortString:(int)a3;
+ (id)shallowDepthOfFieldEffectStatusToString:(int)a3;
+ (id)sharedInstance;
+ (int)clientApplicationIDType:(id)a3;
- (uint64_t)_sendAutoFocusROIEventToBiome:(uint64_t)result;
- (void)_sanitizePayloadDictionary:(uint64_t)a3 eventName:;
- (void)sendEvent:(id)a3;
@end

@implementation BWCoreAnalyticsReporter

+ (id)sharedInstance
{
  if (sharedInstance_checkBWCoreAnalyticsReporterOnceToken != -1)
  {
    +[BWCoreAnalyticsReporter sharedInstance];
  }

  return sharedInstance_sSharedCoreAnalyticsReporter;
}

BWCoreAnalyticsReporter *__41__BWCoreAnalyticsReporter_sharedInstance__block_invoke()
{
  result = objc_alloc_init(BWCoreAnalyticsReporter);
  sharedInstance_sSharedCoreAnalyticsReporter = result;
  return result;
}

- (void)sendEvent:(id)a3
{
  v5 = [a3 eventDictionary];
  v6 = [a3 eventName];
  v7 = [(BWCoreAnalyticsReporter *)self _sanitizePayloadDictionary:v5 eventName:v6];
  if (v6)
  {
    v8 = v7;
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        global_queue = dispatch_get_global_queue(-2, 0);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __37__BWCoreAnalyticsReporter_sendEvent___block_invoke;
        v10[3] = &unk_1E798F898;
        v10[4] = self;
        v10[5] = v8;
        dispatch_async(global_queue, v10);
      }

      else
      {

        MEMORY[0x1EEDF8DB0](v6, v8);
      }
    }
  }
}

- (uint64_t)_sendAutoFocusROIEventToBiome:(uint64_t)result
{
  if (result)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3052000000;
    v26 = __Block_byref_object_copy__31;
    v3 = getBMCameraCaptureAutoFocusROIClass_softClass;
    v27 = __Block_byref_object_dispose__31;
    v28 = getBMCameraCaptureAutoFocusROIClass_softClass;
    if (!getBMCameraCaptureAutoFocusROIClass_softClass)
    {
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __getBMCameraCaptureAutoFocusROIClass_block_invoke;
      v21 = &unk_1E798FC38;
      v22 = &v23;
      __getBMCameraCaptureAutoFocusROIClass_block_invoke(&v18);
      v3 = *(v24 + 40);
    }

    _Block_object_dispose(&v23, 8);
    v4 = [v3 alloc];
    v5 = [a2 objectForKeyedSubscript:@"portType"];
    v6 = [objc_msgSend(a2 objectForKeyedSubscript:{@"focusRegionType", "intValue"}];
    v7 = [a2 objectForKeyedSubscript:@"focusRegionX"];
    v8 = [a2 objectForKeyedSubscript:@"focusRegionY"];
    v9 = [a2 objectForKeyedSubscript:@"focusRegionWidth"];
    v10 = [a2 objectForKeyedSubscript:@"focusRegionHeight"];
    v11 = [a2 objectForKeyedSubscript:@"luxLevel"];
    v12 = [a2 objectForKeyedSubscript:@"subjectDistance"];
    LODWORD(v17) = [objc_msgSend(a2 objectForKeyedSubscript:{@"clientIDType", "intValue"}];
    v13 = [v4 initWithPortType:v5 focusRegionType:(v6 + 1) topLeftCornerRow:v7 topLeftCornerColumn:v8 width:v9 height:v10 luxLevel:v11 subjectDistance:v12 clientApplicationIDType:v17];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v14 = getBiomeLibrarySymbolLoc_ptr;
    v21 = getBiomeLibrarySymbolLoc_ptr;
    if (!getBiomeLibrarySymbolLoc_ptr)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getBiomeLibrarySymbolLoc_block_invoke;
      v26 = &unk_1E798FC38;
      v27 = &v18;
      v15 = BiomeLibraryLibrary();
      v16 = dlsym(v15, "BiomeLibrary");
      *(*(v27 + 1) + 24) = v16;
      getBiomeLibrarySymbolLoc_ptr = *(*(v27 + 1) + 24);
      v14 = *(v19 + 24);
    }

    _Block_object_dispose(&v18, 8);
    if (!v14)
    {
      [BWCoreAnalyticsReporter _sendAutoFocusROIEventToBiome:];
    }

    return [(BWCoreAnalyticsReporter *)v14 _sendAutoFocusROIEventToBiome:v13];
  }

  return result;
}

+ (int)clientApplicationIDType:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 isEqualToString:0x1F216ED50])
  {
    return 3;
  }

  if ([a3 isEqualToString:0x1F2185210])
  {
    return 4;
  }

  if ([a3 isEqualToString:0x1F2185490])
  {
    return 5;
  }

  if ([a3 isEqualToString:0x1F2185330])
  {
    return 10;
  }

  if ([a3 isEqualToString:0x1F21852D0])
  {
    return 23;
  }

  if ([a3 isEqualToString:0x1F21854F0])
  {
    return 27;
  }

  if ([a3 isEqualToString:0x1F21854B0])
  {
    return 28;
  }

  if ([a3 isEqualToString:0x1F21855B0])
  {
    return 33;
  }

  if ([a3 isEqualToString:0x1F2185250])
  {
    return 34;
  }

  if ([a3 isEqualToString:0x1F2185270])
  {
    return 35;
  }

  if ([a3 isEqualToString:0x1F2185530] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", 0x1F2185550))
  {
    return 44;
  }

  if ([a3 isEqualToString:0x1F2185430])
  {
    return 45;
  }

  if ([a3 isEqualToString:0x1F2185410])
  {
    return 46;
  }

  if ([a3 isEqualToString:0x1F21851F0])
  {
    return 48;
  }

  if ([a3 hasPrefix:@"com.apple."])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"net.whatsapp.WhatsApp"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"desktop.WhatsApp") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"net.whatsapp.WhatsAppSMB") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"WhatsApp"))
  {
    return 6;
  }

  if ([a3 isEqualToString:@"com.facebook.Messenger"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"com.skype.skype"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.skype.SkypeForiPad"))
  {
    return 8;
  }

  if ([a3 isEqualToString:@"com.tencent.xin"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.tencent.xinWeChat"))
  {
    return 9;
  }

  if ([a3 isEqualToString:@"com.burbn.instagram"])
  {
    return 11;
  }

  if ([a3 isEqualToString:@"com.toyopagroup.picaboo"])
  {
    return 12;
  }

  if ([a3 isEqualToString:@"com.zhiliaoapp.musically"])
  {
    return 13;
  }

  if ([a3 isEqualToString:@"com.webex.meeting"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.webex.meetingmanager") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.cisco.squared") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.cisco.squared.intune") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.cisco.webexcalling") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"Cisco-Systems.Spark"))
  {
    return 14;
  }

  if ([a3 isEqualToString:@"us.zoom.videomeetings"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"us.zoom.xos"))
  {
    return 15;
  }

  if ([a3 isEqualToString:@"com.google.hangouts"])
  {
    return 16;
  }

  if ([a3 isEqualToString:@"com.bluejeansnet.Blue-Jeans"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.bluejeansnet.Huddle") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.bluejeansnet.Blue"))
  {
    return 17;
  }

  if ([a3 isEqualToString:@"com.logmein.gotomeeting"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.logmein.GoToMeeting"))
  {
    return 18;
  }

  if ([a3 isEqualToString:@"com.logmein.joinme"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.logmein.join.me"))
  {
    return 19;
  }

  if ([a3 isEqualToString:@"com.herzick.houseparty"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.herzick.mac"))
  {
    return 20;
  }

  if ([a3 isEqualToString:@"com.cisco.jabberIM"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.cisco.jabberIMintune") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.cisco.JabberGuest") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.cisco.jabberIMbb"))
  {
    return 21;
  }

  if ([a3 isEqualToString:@"com.microsoft.skype.teams"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.microsoft.teams") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.microsoft.teams2"))
  {
    return 22;
  }

  if ([a3 isEqualToString:@"com.meetinone.meetinone"])
  {
    return 24;
  }

  if ([a3 isEqualToString:@"com.google.meetings"])
  {
    return 25;
  }

  if ([a3 isEqualToString:@"com.tinyspeck.slackmacgap"])
  {
    return 26;
  }

  if ([a3 isEqualToString:@"com.tencent.tencentmeeting"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.tencent.meeting"))
  {
    return 29;
  }

  if ([a3 isEqualToString:@"com.hnc.Discord"])
  {
    return 30;
  }

  if ([a3 isEqualToString:@"com.obsproject.obs-studio"])
  {
    return 31;
  }

  if ([a3 isEqualToString:@"com.alibaba.DingTalkMac"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.alibaba.DingTalkMacLite"))
  {
    return 32;
  }

  if ([a3 isEqualToString:@"com.brave.Browser"])
  {
    return 36;
  }

  if ([a3 isEqualToString:@"com.google.Chrome"])
  {
    return 37;
  }

  if ([a3 isEqualToString:@"com.microsoft.edgemac"])
  {
    return 38;
  }

  if ([a3 isEqualToString:@"org.mozilla.firefox"])
  {
    return 39;
  }

  if ([a3 isEqualToString:@"ru.keepcoder.Telegram"])
  {
    return 40;
  }

  if ([a3 isEqualToString:@"jp.naver.line.mac"])
  {
    return 41;
  }

  if ([a3 isEqualToString:@"com.ecamm.EcammLive"])
  {
    return 42;
  }

  if ([a3 isEqualToString:@"com.reincubate.macos.cam"])
  {
    return 43;
  }

  if ([a3 isEqualToString:@"com.blackmagic-design.DaVinciCamera"])
  {
    return 47;
  }

  return 1;
}

+ (__CFString)commonClientApplicationID:(uint64_t)a1
{
  objc_opt_self();
  if (!a2)
  {
    return @"UnknownClient";
  }

  v3 = [BWCoreAnalyticsReporter clientApplicationIDType:a2];
  v4 = @"UnknownExternalClient";
  if (v3 != 1)
  {
    v4 = a2;
  }

  if (v3 == 2)
  {
    return @"UnknownInternalClient";
  }

  else
  {
    return v4;
  }
}

+ (id)shallowDepthOfFieldEffectStatusToString:(int)a3
{
  if (a3 > 0xF)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7999B98[a3];
  }
}

+ (id)geometricDistortionCorrectionSourceToShortString:(int)a3
{
  if (a3 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E7999C18[a3];
  }
}

- (void)_sanitizePayloadDictionary:(uint64_t)a3 eventName:
{
  if (!a1)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E695DF70] array];
  v13 = OUTLINED_FUNCTION_2_82(v5, v6, v7, v8, v9, v10, v11, v12, v33, v35, v37, v39, v40, v42, v44, v46, v47, v49, v51, v53, v54, v55, v57, v59, v60, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91);
  if (v13)
  {
    v15 = v13;
    v50 = MEMORY[0];
    *&v14 = 138412546;
    v45 = v14;
    *&v14 = 136315650;
    v38 = v14;
    v43 = v5;
    do
    {
      v16 = 0;
      v48 = v15;
      do
      {
        if (MEMORY[0] != v50)
        {
          objc_enumerationMutation(a2);
        }

        v17 = *(8 * v16);
        v18 = [a2 objectForKeyedSubscript:v17];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          [v18 floatValue];
          isKindOfClass = [v18 floatValue];
          if (fabsf(v27) == INFINITY)
          {
            FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
            OUTLINED_FUNCTION_1_95();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v90)))
            {
              v30 = HIDWORD(v90);
            }

            else
            {
              v30 = HIDWORD(v90) & 0xFFFFFFFE;
            }

            if (v30)
            {
              *v52 = v38;
              *&v52[4] = "[BWCoreAnalyticsReporter _sanitizePayloadDictionary:eventName:]";
              *&v52[12] = 2112;
              *&v52[14] = a3;
              *&v52[22] = 2112;
              OUTLINED_FUNCTION_0_84();
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            *v58 = v45;
            *&v58[4] = a3;
            *&v58[12] = 2112;
            *&v58[14] = v17;
            v31 = _os_log_send_and_compose_impl();
            v36 = 0;
            FigCapturePleaseFileRadar(FrameworkRadarComponent, v31, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Utilities/BWCoreAnalyticsReporter.m", 383, @"LastShownDate:BWCoreAnalyticsReporter.m:383", @"LastShownBuild:BWCoreAnalyticsReporter.m:383", 0);
            free(v31);
            v5 = v43;
            isKindOfClass = [v43 addObject:v17];
            v15 = v48;
          }
        }

        ++v16;
      }

      while (v15 != v16);
      v15 = OUTLINED_FUNCTION_2_82(isKindOfClass, v20, v21, v22, v23, v24, v25, v26, v34, v36, v38, *(&v38 + 1), v41, v43, v45, *(&v45 + 1), v48, v50, *v52, *&v52[8], *&v52[16], v56, *v58, *&v58[8], *&v58[16], v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92);
    }

    while (v15);
  }

  if ([v5 count])
  {
    a2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a2];
    [a2 removeObjectsForKeys:v5];
  }

  return a2;
}

- (void)_sendAutoFocusROIEventToBiome:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"id<BMRootLibrary> BWBMLibrary(void)") description:{@"BWCoreAnalyticsReporter.m", 32, @"%s", dlerror()}];
  __break(1u);
}

@end