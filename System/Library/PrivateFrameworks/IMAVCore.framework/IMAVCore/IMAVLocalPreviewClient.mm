@interface IMAVLocalPreviewClient
+ (CGSize)localPortraitAspectRatio;
+ (id)sharedInstance;
- (BOOL)_shouldPreviewBeRunning;
- (BOOL)isPreviewRunning;
- (IMAVLocalPreviewClient)init;
- (id)localScreenAttributesForVideoAttributes:(id)a3;
- (unsigned)cameraOrientation;
- (unsigned)cameraType;
- (void)_avDaemonConnected;
- (void)_updatePreviewState;
- (void)avChat:(id)a3 setLocalPortraitRatio:(CGSize)a4 localLandscapeRatio:(CGSize)a5;
- (void)beginAnimationToPIP;
- (void)beginAnimationToPreview;
- (void)cameraDidBecomeAvailableForUniqueID:(id)a3;
- (void)dealloc;
- (void)didChangeLocalScreenAttributes:(id)a3;
- (void)didChangeLocalVideoAttributes:(id)a3;
- (void)didPausePreview;
- (void)didReceiveErrorFromCameraUniqueID:(id)a3 error:(id)a4;
- (void)didReceiveFirstPreviewFrameFromCameraUniqueID:(id)a3;
- (void)didStartPreview;
- (void)didStopPreview;
- (void)endAnimationToPIP;
- (void)endAnimationToPreview;
- (void)localVideoBackLayer;
- (void)localVideoLayer;
- (void)pausePreview;
- (void)setLocalScreenAttributes:(id)a3;
- (void)setLocalVideoBackLayer:(void *)a3;
- (void)setLocalVideoLayer:(void *)a3;
- (void)startPreview;
- (void)stopPreview;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationWillEnterForeground;
- (void)systemScreenDidPowerDown;
- (void)systemScreenDidPowerUp;
- (void)unpausePreview;
- (void)updateLocalScreenAtrributes;
@end

@implementation IMAVLocalPreviewClient

+ (id)sharedInstance
{
  if (qword_28134A420 != -1)
  {
    sub_25477F990();
  }

  v3 = qword_28134A3F0;

  return v3;
}

- (IMAVLocalPreviewClient)init
{
  v48 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = IMAVLocalPreviewClient;
  v2 = [(IMAVLocalPreviewClient *)&v43 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x259C18990](@"AVConferencePreview", @"AVConference"));
    conferencePreview = v2->_conferencePreview;
    v2->_conferencePreview = v3;

    objc_msgSend_setDelegate_(v2->_conferencePreview, v5, v2, v6, v7);
    v8 = sub_254761764();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v2->_conferencePreview;
      *buf = 138412546;
      v45 = v2;
      v46 = 2112;
      v47 = v9;
      _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Setting %@ as delegate of local preview %@", buf, 0x16u);
    }

    v14 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v10, v11, v12, v13);
    objc_msgSend_addObserver_selector_name_object_(v14, v15, v2, sel__avDaemonConnected, @"__kIMAVDaemonDidConnectNotification", 0);

    v20 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v16, v17, v18, v19);
    objc_msgSend_addListener_(v20, v21, v2, v22, v23);

    v28 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v24, v25, v26, v27);
    objc_msgSend_setActive_(v28, v29, 1, v30, v31);

    v36 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v32, v33, v34, v35);
    objc_msgSend_setWatchesScreenLightState_(v36, v37, 1, v38, v39);

    v40 = v2;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, 0, 0);

  v12 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v8, v9, v10, v11);
  objc_msgSend_removeListener_(v12, v13, self, v14, v15);

  v20 = objc_msgSend_conferencePreview(self, v16, v17, v18, v19);
  objc_msgSend_setDelegate_(v20, v21, 0, v22, v23);

  v24.receiver = self;
  v24.super_class = IMAVLocalPreviewClient;
  [(IMAVLocalPreviewClient *)&v24 dealloc];
}

- (unsigned)cameraType
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
    v36 = 138412290;
    v37 = v8;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Querying camera type from AVConferencePreview: %@", &v36, 0xCu);
  }

  v13 = objc_msgSend_sharedInstance(IMAVInterface, v9, v10, v11, v12);
  v18 = objc_msgSend_systemSupportsBackFacingCamera(v13, v14, v15, v16, v17);

  if (v18)
  {
    v23 = objc_msgSend_conferencePreview(self, v19, v20, v21, v22);
    v28 = objc_msgSend_localVideoAttributes(v23, v24, v25, v26, v27);

    sub_254772244(v28);
    v33 = objc_msgSend_camera(v28, v29, v30, v31, v32);
  }

  else
  {
    v33 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (unsigned)cameraOrientation
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
    v25 = 138412290;
    v26 = v8;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Querying camera orientation from AVConferencePreview: %@", &v25, 0xCu);
  }

  v13 = objc_msgSend_conferencePreview(self, v9, v10, v11, v12);
  v18 = objc_msgSend_localVideoAttributes(v13, v14, v15, v16, v17);

  sub_254772244(v18);
  LODWORD(v13) = objc_msgSend_orientation(v18, v19, v20, v21, v22);

  v23 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)localVideoLayer
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
    v20 = 138412290;
    v21 = v8;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Querying local video layer from AVConferencePreview: %@", &v20, 0xCu);
  }

  v13 = objc_msgSend_conferencePreview(self, v9, v10, v11, v12);
  v17 = objc_msgSend_localVideoLayer_(v13, v14, 1, v15, v16);

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)setLocalVideoLayer:(void *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_conferencePreview(self, a2, a3, v3, v4);
  objc_msgSend_setLocalVideoLayer_front_(v7, v8, a3, 1, v9);

  v10 = sub_254761764();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_msgSend_conferencePreview(self, v11, v12, v13, v14);
    v17 = 134218242;
    v18 = a3;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Setting local video layer: %p on preview: %@", &v17, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)localVideoBackLayer
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
    v20 = 138412290;
    v21 = v8;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Querying local video back layer from AVConferencePreview: %@", &v20, 0xCu);
  }

  v13 = objc_msgSend_conferencePreview(self, v9, v10, v11, v12);
  v17 = objc_msgSend_localVideoLayer_(v13, v14, 0, v15, v16);

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)setLocalVideoBackLayer:(void *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_conferencePreview(self, a2, a3, v3, v4);
  objc_msgSend_setLocalVideoLayer_front_(v7, v8, a3, 0, v9);

  v10 = sub_254761764();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_msgSend_conferencePreview(self, v11, v12, v13, v14);
    v17 = 134218242;
    v18 = a3;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Setting local video back-layer: %p on preview: %@", &v17, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)localScreenAttributesForVideoAttributes:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_conferencePreview(self, v6, v7, v8, v9);
    v22 = 138412290;
    v23 = v10;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Querying local screen attributes from AVConferencePreview: %@", &v22, 0xCu);
  }

  v15 = objc_msgSend_conferencePreview(self, v11, v12, v13, v14);
  v19 = objc_msgSend_localScreenAttributesForVideoAttributes_(v15, v16, v4, v17, v18);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)setLocalScreenAttributes:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_conferencePreview(self, v5, v6, v7, v8);
  objc_msgSend_setLocalScreenAttributes_(v9, v10, v4, v11, v12);

  v13 = sub_254761764();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_msgSend_conferencePreview(self, v14, v15, v16, v17);
    v20 = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, "Setting local screen attributes: %@ on preview: %@", &v20, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)avChat:(id)a3 setLocalPortraitRatio:(CGSize)a4 localLandscapeRatio:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v81 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = MEMORY[0x259C18990](@"VideoAttributes", @"AVConference");
  v12 = sub_254761764();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v82.width = v8;
      v82.height = v7;
      v14 = NSStringFromSize(v82);
      v79 = 138412290;
      v80 = v14;
      _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "Got portrait aspect ratio: %@", &v79, 0xCu);
    }

    v15 = sub_254761764();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v83.width = width;
      v83.height = height;
      v16 = NSStringFromSize(v83);
      v79 = 138412290;
      v80 = v16;
      _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "Got landscape aspect ratio: %@", &v79, 0xCu);
    }

    v12 = objc_alloc_init(v11);
    v17 = objc_alloc_init(v11);
    objc_msgSend_setOrientation_(v12, v18, 0, v19, v20);
    objc_msgSend_setOrientation_(v17, v21, 3, v22, v23);
    v27 = objc_msgSend_localScreenAttributesForVideoAttributes_(self, v24, v12, v25, v26);
    objc_msgSend_setRatio_(v27, v28, v29, v30, v31, v8, v7);
    v36 = objc_msgSend__timings(v10, v32, v33, v34, v35);
    objc_msgSend_startTimingForKey_(v36, v37, @"setting-local-screen-attributes", v38, v39);

    objc_msgSend_setLocalScreenAttributes_(self, v40, v27, v41, v42);
    v47 = objc_msgSend__timings(v10, v43, v44, v45, v46);
    objc_msgSend_stopTimingForKey_(v47, v48, @"setting-local-screen-attributes", v49, v50);

    v54 = objc_msgSend_localScreenAttributesForVideoAttributes_(self, v51, v17, v52, v53);

    objc_msgSend_setRatio_(v54, v55, v56, v57, v58, width, height);
    v63 = objc_msgSend__timings(v10, v59, v60, v61, v62);
    objc_msgSend_startTimingForKey_(v63, v64, @"setting-local-screen-attributes", v65, v66);

    objc_msgSend_setLocalScreenAttributes_(self, v67, v54, v68, v69);
    v74 = objc_msgSend__timings(v10, v70, v71, v72, v73);
    objc_msgSend_stopTimingForKey_(v74, v75, @"setting-local-screen-attributes", v76, v77);
  }

  else if (v13)
  {
    LOWORD(v79) = 0;
    _os_log_impl(&dword_254743000, v12, OS_LOG_TYPE_DEFAULT, "Unable to find VideoAttributes class, possibly failed to weak link AVConference.", &v79, 2u);
  }

  v78 = *MEMORY[0x277D85DE8];
}

+ (CGSize)localPortraitAspectRatio
{
  v2 = MEMORY[0x259C18990](@"CADisplay", @"QuartzCore");
  if (v2)
  {
    v7 = objc_msgSend_mainDisplay(v2, v3, v4, v5, v6);
    objc_msgSend_bounds(v7, v8, v9, v10, v11);
    v13 = v12;
    v15 = v14;

    if (v13 <= v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    if (v13 <= v15)
    {
      v13 = v15;
    }

    v17 = sub_25475B094(v16, v13);
    v18 = v16 / v17;
    v19 = v13 / v17;
  }

  else
  {
    v20 = sub_254761764();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "Unable to find CADisplay class, possibly failed to weak link QuartzCore or CADisplay doesn't exist on this device.", v21, 2u);
    }

    v18 = *MEMORY[0x277CCA870];
    v19 = *(MEMORY[0x277CCA870] + 8);
  }

  result.height = v19;
  result.width = v18;
  return result;
}

- (void)updateLocalScreenAtrributes
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "updateLocalScreenAtrributes was called", v14, 2u);
  }

  v4 = objc_opt_class();
  objc_msgSend_localPortraitAspectRatio(v4, v5, v6, v7, v8);
  objc_msgSend_avChat_setLocalPortraitRatio_localLandscapeRatio_(self, v9, 0, v10, v11, v12, v13, v13, v12);
}

- (BOOL)_shouldPreviewBeRunning
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], a2, v2, v3, v4);
  if (objc_msgSend_isInBackground(v6, v7, v8, v9, v10))
  {
    wantsPreview = 0;
  }

  else
  {
    v16 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v11, v12, v13, v14);
    if (objc_msgSend_isScreenLit(v16, v17, v18, v19, v20))
    {
      wantsPreview = self->_wantsPreview;
    }

    else
    {
      wantsPreview = 0;
    }
  }

  return wantsPreview;
}

- (void)_updatePreviewState
{
  v114 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v112) = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, &v112, 2u);
  }

  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_msgSend_sharedInstance(IMAVDaemonController, v5, v6, v7, v8);
    if (objc_msgSend_isConnected(v9, v10, v11, v12, v13))
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v112 = 138412290;
    v113 = v14;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "         Connected to daemon: %@", &v112, 0xCu);
  }

  v15 = sub_254761764();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v16, v17, v18, v19);
    if (objc_msgSend_isInBackground(v20, v21, v22, v23, v24))
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v112 = 138412290;
    v113 = v25;
    _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "    App is in the background: %@", &v112, 0xCu);
  }

  v26 = sub_254761764();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v31 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v27, v28, v29, v30);
    if (objc_msgSend_isScreenLit(v31, v32, v33, v34, v35))
    {
      v36 = @"YES";
    }

    else
    {
      v36 = @"NO";
    }

    v112 = 138412290;
    v113 = v36;
    _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "               Screen is lit: %@", &v112, 0xCu);
  }

  v37 = sub_254761764();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_shouldAlterPreviewState)
    {
      v38 = @"YES";
    }

    else
    {
      v38 = @"NO";
    }

    v112 = 138412290;
    v113 = v38;
    _os_log_impl(&dword_254743000, v37, OS_LOG_TYPE_DEFAULT, "Should we alter preview state ?: %@", &v112, 0xCu);
  }

  v39 = sub_254761764();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_wantsPreview)
    {
      v40 = @"YES";
    }

    else
    {
      v40 = @"NO";
    }

    v112 = 138412290;
    v113 = v40;
    _os_log_impl(&dword_254743000, v39, OS_LOG_TYPE_DEFAULT, "           Do we want preview ?: %@", &v112, 0xCu);
  }

  v41 = sub_254761764();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend__shouldPreviewBeRunning(self, v42, v43, v44, v45))
    {
      v46 = @"YES";
    }

    else
    {
      v46 = @"NO";
    }

    v112 = 138412290;
    v113 = v46;
    _os_log_impl(&dword_254743000, v41, OS_LOG_TYPE_DEFAULT, "    Should preview be running ?: %@", &v112, 0xCu);
  }

  v47 = sub_254761764();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_wantsPausedPreview)
    {
      v48 = @"YES";
    }

    else
    {
      v48 = @"NO";
    }

    v112 = 138412290;
    v113 = v48;
    _os_log_impl(&dword_254743000, v47, OS_LOG_TYPE_DEFAULT, "     Should preview be paused ?: %@", &v112, 0xCu);
  }

  v49 = sub_254761764();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_wantsUnpausedPreview)
    {
      v50 = @"YES";
    }

    else
    {
      v50 = @"NO";
    }

    v112 = 138412290;
    v113 = v50;
    _os_log_impl(&dword_254743000, v49, OS_LOG_TYPE_DEFAULT, "   Should preview be unpaused ?: %@", &v112, 0xCu);
  }

  if (self->_shouldAlterPreviewState)
  {
    shouldPreviewBeRunning = objc_msgSend__shouldPreviewBeRunning(self, v51, v52, v53, v54);
    v56 = sub_254761764();
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
    if (shouldPreviewBeRunning)
    {
      if (v57)
      {
        LOWORD(v112) = 0;
        _os_log_impl(&dword_254743000, v56, OS_LOG_TYPE_DEFAULT, "Asking daemon to start preview", &v112, 2u);
      }

      v62 = objc_msgSend_sharedInstance(IMAVDaemonController, v58, v59, v60, v61);
      objc_msgSend_addListenerID_(v62, v63, @"IMAVLocalPreview", v64, v65);

      v70 = objc_msgSend_sharedInstance(IMAVDaemonController, v66, v67, v68, v69);
      isConnected = objc_msgSend_isConnected(v70, v71, v72, v73, v74);

      if (isConnected)
      {
        v80 = objc_msgSend_sharedInstance(IMAVDaemonController, v76, v77, v78, v79);
        objc_msgSend_startPreview(v80, v81, v82, v83, v84);
      }

      else
      {
        v80 = sub_254761764();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v112) = 0;
          _os_log_impl(&dword_254743000, v80, OS_LOG_TYPE_DEFAULT, "*** Not connected to daemon, can't startPreview just yet ***", &v112, 2u);
        }
      }
    }

    else
    {
      if (v57)
      {
        LOWORD(v112) = 0;
        _os_log_impl(&dword_254743000, v56, OS_LOG_TYPE_DEFAULT, "Asking daemon to stop preview", &v112, 2u);
      }

      v89 = objc_msgSend_sharedInstance(IMAVDaemonController, v85, v86, v87, v88);
      v94 = objc_msgSend_isConnected(v89, v90, v91, v92, v93);

      if (v94)
      {
        v99 = objc_msgSend_sharedInstance(IMAVDaemonController, v95, v96, v97, v98);
        objc_msgSend_stopPreview(v99, v100, v101, v102, v103);
      }

      else
      {
        v99 = sub_254761764();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v112) = 0;
          _os_log_impl(&dword_254743000, v99, OS_LOG_TYPE_DEFAULT, "*** Not connected to daemon, don't need to stopPreview ***", &v112, 2u);
        }
      }

      v80 = objc_msgSend_sharedInstance(IMAVDaemonController, v104, v105, v106, v107);
      objc_msgSend_removeListenerID_(v80, v108, @"IMAVLocalPreview", v109, v110);
    }
  }

  v111 = *MEMORY[0x277D85DE8];
}

- (void)_avDaemonConnected
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "*** Connected to daemon ! ***", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)startPreview
{
  *&self->_shouldAlterPreviewState = 257;
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "** Requesting START preview", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)stopPreview
{
  *&self->_shouldAlterPreviewState = 1;
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "** Requesting STOP preview", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)pausePreview
{
  *&self->_shouldAlterPreviewState = 65537;
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "** Requesting PAUSE preview", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)unpausePreview
{
  *&self->_shouldAlterPreviewState = 16777473;
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "** Requesting UN-PAUSE preview", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (BOOL)isPreviewRunning
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
    v21 = 138412290;
    v22 = v8;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Querying is preview running from AVConferencePreview: %@", &v21, 0xCu);
  }

  v13 = objc_msgSend_conferencePreview(self, v9, v10, v11, v12);
  isPreviewRunning = objc_msgSend_isPreviewRunning(v13, v14, v15, v16, v17);

  v19 = *MEMORY[0x277D85DE8];
  return isPreviewRunning;
}

- (void)beginAnimationToPIP
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Begin animation to PIP", v19, 2u);
  }

  v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v14 = objc_msgSend_conferencePreview(self, v10, v11, v12, v13);
    objc_msgSend_beginPreviewToPIPAnimation(v14, v15, v16, v17, v18);
  }
}

- (void)endAnimationToPIP
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "End animation to PIP", v19, 2u);
  }

  v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v14 = objc_msgSend_conferencePreview(self, v10, v11, v12, v13);
    objc_msgSend_endPreviewToPIPAnimation(v14, v15, v16, v17, v18);
  }
}

- (void)beginAnimationToPreview
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Begin animation to preview", v19, 2u);
  }

  v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v14 = objc_msgSend_conferencePreview(self, v10, v11, v12, v13);
    objc_msgSend_beginPIPToPreviewAnimation(v14, v15, v16, v17, v18);
  }
}

- (void)endAnimationToPreview
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "End animation to preview", v19, 2u);
  }

  v8 = objc_msgSend_conferencePreview(self, v4, v5, v6, v7);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v14 = objc_msgSend_conferencePreview(self, v10, v11, v12, v13);
    objc_msgSend_endPIPToPreviewAnimation(v14, v15, v16, v17, v18);
  }
}

- (void)systemApplicationDidEnterBackground
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "App is in the background, refresh preview state", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)systemApplicationWillEnterForeground
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "App will enter the foreground, refresh preview state", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)systemScreenDidPowerUp
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Screen turned on, refreshing preview state", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)systemScreenDidPowerDown
{
  v3 = sub_254761764();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "Screen shut off, refreshing preview state", v8, 2u);
  }

  objc_msgSend__updatePreviewState(self, v4, v5, v6, v7);
}

- (void)didStartPreview
{
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, v3, 2u);
  }
}

- (void)didStopPreview
{
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, buf, 2u);
  }

  im_dispatch_after();
}

- (void)didPausePreview
{
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, &unk_2547876A3, v3, 2u);
  }
}

- (void)didReceiveFirstPreviewFrameFromCameraUniqueID:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "cameraUID: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didChangeLocalVideoAttributes:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "videoAttributes: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didChangeLocalScreenAttributes:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = sub_254761764();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "videoAttributes: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveErrorFromCameraUniqueID:(id)a3 error:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "cameraUID: %@ error: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cameraDidBecomeAvailableForUniqueID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "cameraUID: %@", &v11, 0xCu);
  }

  objc_msgSend__updatePreviewState(self, v6, v7, v8, v9);
  v10 = *MEMORY[0x277D85DE8];
}

@end