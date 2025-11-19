@interface IMNetworkAvailability
- (BOOL)_isNetworkAvailablibityCheckingDone:(BOOL)a3 wantsWiFi:(BOOL)a4 wantsCellular:(BOOL)a5 cellular:(BOOL)a6 hasCellularDataConnection:(BOOL)a7 done:(BOOL)a8 withinTimeWindow:(BOOL)a9;
- (IMNetworkAvailability)initWithFlags:(unint64_t)a3 options:(unint64_t)a4 timeout:(double)a5 wifiTimeout:(double)a6 completionBlock:(id)a7;
- (void)_cancel;
- (void)_setTimer;
- (void)_timerHit:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation IMNetworkAvailability

- (IMNetworkAvailability)initWithFlags:(unint64_t)a3 options:(unint64_t)a4 timeout:(double)a5 wifiTimeout:(double)a6 completionBlock:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = a7;
  v35.receiver = self;
  v35.super_class = IMNetworkAvailability;
  v13 = [(IMNetworkAvailability *)&v35 init];
  if (v13)
  {
    v14 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v37 = a3;
      *&v37[4] = 2048;
      *&v37[6] = a5;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_195988000, v14, OS_LOG_TYPE_DEFAULT, "Creating availabilty with: 0x%X    Timeout: %f  (%@)", buf, 0x1Cu);
    }

    v17 = objc_msgSend_copyStringGUID(MEMORY[0x1E696AEC0], v15, v16);
    guid = v13->_guid;
    v13->_guid = v17;

    v21 = objc_msgSend_copy(v12, v19, v20);
    completionBlock = v13->_completionBlock;
    v13->_completionBlock = v21;

    v13->_flags = a3;
    v13->_options = a4;
    v13->_timeout = a5;
    v13->_wifiTimeout = a6;
    v23 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if ((v13->_flags & 2) != 0)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      *buf = 138412290;
      *v37 = v24;
      _os_log_impl(&dword_195988000, v23, OS_LOG_TYPE_DEFAULT, "            Wants Cellular: %@", buf, 0xCu);
    }

    v25 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      if (v13->_flags)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      *buf = 138412290;
      *v37 = v26;
      _os_log_impl(&dword_195988000, v25, OS_LOG_TYPE_DEFAULT, "                Wants WiFi: %@", buf, 0xCu);
    }

    v27 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if (v13->_options)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      *buf = 138412290;
      *v37 = v28;
      _os_log_impl(&dword_195988000, v27, OS_LOG_TYPE_DEFAULT, "       Allow Early Timeout: %@", buf, 0xCu);
    }

    v29 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      if ((v13->_options & 2) != 0)
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      *buf = 138412290;
      *v37 = v30;
      _os_log_impl(&dword_195988000, v29, OS_LOG_TYPE_DEFAULT, "      Show Network Options: %@", buf, 0xCu);
    }

    v31 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if ((v13->_options & 4) != 0)
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      *buf = 138412290;
      *v37 = v32;
      _os_log_impl(&dword_195988000, v31, OS_LOG_TYPE_DEFAULT, "       Don't wait for wifi: %@", buf, 0xCu);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    flags = self->_flags;
    *buf = 67109378;
    v10 = flags;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc availabilty with: 0x%X  (%@)", buf, 0x12u);
  }

  self->_context = 0;
  objc_msgSend_invalidate(self->_timer, v5, v6);
  v8.receiver = self;
  v8.super_class = IMNetworkAvailability;
  [(IMNetworkAvailability *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_cancel
{
  timer = self->_timer;
  if (timer)
  {
    objc_msgSend_invalidate(timer, a2, v2);
    v5 = self->_timer;
    self->_timer = 0;
  }

  flags = self->_flags;
  if (flags)
  {
    v7 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v7, OS_LOG_TYPE_DEFAULT, "  => Removing assertion for WiFi desired", buf, 2u);
    }

    v10 = objc_msgSend_mobileNetworkManager(self, v8, v9);
    objc_msgSend_removeWiFiAutoAssociationClientToken_(v10, v11, self->_guid);

    flags = self->_flags;
  }

  if ((flags & 2) != 0)
  {
    v12 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_195988000, v12, OS_LOG_TYPE_DEFAULT, "  => Removing assertion for Cellular desired", v17, 2u);
    }

    v15 = objc_msgSend_mobileNetworkManager(self, v13, v14);
    objc_msgSend_removeCellularAutoAssociationClientToken_(v15, v16, self->_guid);
  }
}

- (BOOL)_isNetworkAvailablibityCheckingDone:(BOOL)a3 wantsWiFi:(BOOL)a4 wantsCellular:(BOOL)a5 cellular:(BOOL)a6 hasCellularDataConnection:(BOOL)a7 done:(BOOL)a8 withinTimeWindow:(BOOL)a9
{
  v9 = a8;
  v22 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (a7 && a8 && !a6)
    {
      if (a4)
      {
        if (a3)
        {
          goto LABEL_23;
        }

        v12 = OSLogHandleForIDSCategory("NetworkAvailability");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_195988000, v12, OS_LOG_TYPE_DEFAULT, "Cellular is not yet reachable and we don't have a usable wifi, we're not done", &v18, 2u);
        }
      }

      else
      {
        v12 = OSLogHandleForIDSCategory("NetworkAvailability");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_195988000, v12, OS_LOG_TYPE_DEFAULT, "Cellular is not yet reachable and we don't want wifi, we're not done", &v18, 2u);
        }
      }

      v9 = 0;
    }

    if (!a3 && !a6)
    {
      v13 = OSLogHandleForIDSCategory("NetworkAvailability");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = @"NO";
        if (a9)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        if (v9)
        {
          v14 = @"YES";
        }

        v18 = 138412546;
        v19 = v15;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_195988000, v13, OS_LOG_TYPE_DEFAULT, "No available interfaces, withinTimeWindow: %@, done: %@", &v18, 0x16u);
      }

      LOBYTE(v9) = v9 && !a9;
    }
  }

LABEL_23:
  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_timerHit:(id)a3
{
  v197 = *MEMORY[0x1E69E9840];
  v184 = a3;
  v4 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v196 = self;
    _os_log_impl(&dword_195988000, v4, OS_LOG_TYPE_DEFAULT, "Timer hit: %@", buf, 0xCu);
  }

  v7 = objc_msgSend_mobileNetworkManager(self, v5, v6);
  isHostingWiFiHotSpot = objc_msgSend_isHostingWiFiHotSpot(v7, v8, v9);

  options = self->_options;
  v14 = objc_msgSend_mobileNetworkManager(self, v12, v13);
  isWiFiEnabled = objc_msgSend_isWiFiEnabled(v14, v15, v16);

  v20 = objc_msgSend_mobileNetworkManager(self, v18, v19);
  isWiFiAssociated = objc_msgSend_isWiFiAssociated(v20, v21, v22);

  v25 = objc_msgSend_mobileNetworkManager(self, v23, v24);
  isWiFiCaptive = objc_msgSend_isWiFiCaptive(v25, v26, v27);

  v30 = objc_msgSend_mobileNetworkManager(self, v28, v29);
  v190 = objc_msgSend_willTryToAutoAssociateWiFiNetwork(v30, v31, v32);

  v35 = objc_msgSend_mobileNetworkManager(self, v33, v34);
  v185 = objc_msgSend_willTryToSearchForWiFiNetwork(v35, v36, v37);

  v38 = self->_options;
  v41 = objc_msgSend_mobileNetworkManager(self, v39, v40);
  isAirplaneModeEnabled = objc_msgSend_isAirplaneModeEnabled(v41, v42, v43);

  v47 = objc_msgSend_mobileNetworkManager(self, v45, v46);
  valid = objc_msgSend_inValidSIMState(v47, v48, v49);

  v53 = objc_msgSend_mobileNetworkManager(self, v51, v52);
  v189 = objc_msgSend_dataConnectionExists(v53, v54, v55);

  v58 = objc_msgSend_mobileNetworkManager(self, v56, v57);
  isDataSwitchEnabled = objc_msgSend_isDataSwitchEnabled(v58, v59, v60);

  v63 = objc_msgSend_mobileNetworkManager(self, v61, v62);
  isDataConnectionActive = objc_msgSend_isDataConnectionActive(v63, v64, v65);

  v68 = objc_msgSend_mobileNetworkManager(self, v66, v67);
  hasLTEDataConnection = objc_msgSend_hasLTEDataConnection(v68, v69, v70);

  v191 = objc_msgSend_reachabilityForInternetConnection(IMNetworkReachability, v71, v72);
  v75 = objc_msgSend_currentReachabilityStatus(v191, v73, v74);
  flags = self->_flags;
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v77, v78);
  v80 = v79;
  v81 = isWiFiEnabled & (isHostingWiFiHotSpot ^ 1);
  if (flags)
  {
    v82 = v81 & isWiFiAssociated;
    if (v75 != 1)
    {
      v82 = 0;
    }

    v194 = v82 & (isWiFiCaptive ^ 1) | ((options & 0x10) != 0) & isHostingWiFiHotSpot;
  }

  else
  {
    v194 = 0;
  }

  wifiTimeout = self->_wifiTimeout;
  startTime = self->_startTime;
  v85 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v85, OS_LOG_TYPE_DEFAULT, "****************************** NETWORK AVAILABILITY CHECK ******************************", buf, 2u);
  }

  v86 = v80 - startTime;
  v87 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v196 = *&v86;
    _os_log_impl(&dword_195988000, v87, OS_LOG_TYPE_DEFAULT, "               Time Passed: %f", buf, 0xCu);
  }

  v88 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
  {
    timeout = self->_timeout;
    *buf = 134217984;
    v196 = *&timeout;
    _os_log_impl(&dword_195988000, v88, OS_LOG_TYPE_DEFAULT, "                   Timeout: %f", buf, 0xCu);
  }

  v90 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v196 = *&wifiTimeout;
    _os_log_impl(&dword_195988000, v90, OS_LOG_TYPE_DEFAULT, "              WiFi Timeout: %f", buf, 0xCu);
  }

  v91 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    v92 = @"YES";
    if ((v38 & 1) == 0)
    {
      v92 = @"NO";
    }

    *buf = 138412290;
    v196 = v92;
    _os_log_impl(&dword_195988000, v91, OS_LOG_TYPE_DEFAULT, "       Allow Early Timeout: %@", buf, 0xCu);
  }

  v93 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
  {
    v94 = @"NO";
    if ((options & 0x10) != 0)
    {
      v94 = @"YES";
    }

    *buf = 138412290;
    v196 = v94;
    _os_log_impl(&dword_195988000, v93, OS_LOG_TYPE_DEFAULT, "        Allow WiFi HotSpot: %@", buf, 0xCu);
  }

  v95 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
  {
    v96 = @"YES";
    if ((v38 & 2) == 0)
    {
      v96 = @"NO";
    }

    *buf = 138412290;
    v196 = v96;
    _os_log_impl(&dword_195988000, v95, OS_LOG_TYPE_DEFAULT, "      Show Network Options: %@", buf, 0xCu);
  }

  v97 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
  {
    v98 = @"NO";
    if ((v38 & 4) != 0)
    {
      v98 = @"YES";
    }

    *buf = 138412290;
    v196 = v98;
    _os_log_impl(&dword_195988000, v97, OS_LOG_TYPE_DEFAULT, "             Wait For WiFi: %@", buf, 0xCu);
  }

  v99 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
  {
    v100 = @"NO";
    if ((v38 & 8) != 0)
    {
      v100 = @"YES";
    }

    *buf = 138412290;
    v196 = v100;
    _os_log_impl(&dword_195988000, v99, OS_LOG_TYPE_DEFAULT, "      Wait For WiFi or LTE: %@", buf, 0xCu);
  }

  v101 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v101, OS_LOG_TYPE_DEFAULT, "                              ", buf, 2u);
  }

  v102 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    v103 = @"NO";
    if (v81)
    {
      v103 = @"YES";
    }

    *buf = 138412290;
    v196 = v103;
    _os_log_impl(&dword_195988000, v102, OS_LOG_TYPE_DEFAULT, "       WiFi Switch Enabled: %@", buf, 0xCu);
  }

  v104 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
    v105 = @"NO";
    if (isDataSwitchEnabled)
    {
      v105 = @"YES";
    }

    *buf = 138412290;
    v196 = v105;
    _os_log_impl(&dword_195988000, v104, OS_LOG_TYPE_DEFAULT, "       Data Switch Enabled: %@", buf, 0xCu);
  }

  v106 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    v107 = @"NO";
    if (isAirplaneModeEnabled)
    {
      v107 = @"YES";
    }

    *buf = 138412290;
    v196 = v107;
    _os_log_impl(&dword_195988000, v106, OS_LOG_TYPE_DEFAULT, "     Airplane Mode Enabled: %@", buf, 0xCu);
  }

  v108 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    v109 = @"NO";
    if (isHostingWiFiHotSpot)
    {
      v109 = @"YES";
    }

    *buf = 138412290;
    v196 = v109;
    _os_log_impl(&dword_195988000, v108, OS_LOG_TYPE_DEFAULT, "      WiFi HotSpot Enabled: %@", buf, 0xCu);
  }

  v110 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    v111 = @"NO";
    if (valid)
    {
      v111 = @"YES";
    }

    *buf = 138412290;
    v196 = v111;
    _os_log_impl(&dword_195988000, v110, OS_LOG_TYPE_DEFAULT, "        In Valid SIM State: %@", buf, 0xCu);
  }

  v112 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v112, OS_LOG_TYPE_DEFAULT, "                              ", buf, 2u);
  }

  v113 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    v114 = @"NO";
    if (v190)
    {
      v114 = @"YES";
    }

    *buf = 138412290;
    v196 = v114;
    _os_log_impl(&dword_195988000, v113, OS_LOG_TYPE_DEFAULT, "  Will Auto-Associate WiFi: %@", buf, 0xCu);
  }

  v115 = v185 | v190;
  v116 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    v117 = @"NO";
    if (v115)
    {
      v117 = @"YES";
    }

    *buf = 138412290;
    v196 = v117;
    _os_log_impl(&dword_195988000, v116, OS_LOG_TYPE_DEFAULT, "      Will Search For WiFi: %@", buf, 0xCu);
  }

  v118 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
  {
    v119 = @"NO";
    if (isWiFiAssociated)
    {
      v119 = @"YES";
    }

    *buf = 138412290;
    v196 = v119;
    _os_log_impl(&dword_195988000, v118, OS_LOG_TYPE_DEFAULT, "           WiFi Associated: %@", buf, 0xCu);
  }

  v120 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
  {
    v121 = @"NO";
    if (isWiFiCaptive)
    {
      v121 = @"YES";
    }

    *buf = 138412290;
    v196 = v121;
    _os_log_impl(&dword_195988000, v120, OS_LOG_TYPE_DEFAULT, "              WiFi Captive: %@", buf, 0xCu);
  }

  v122 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v122, OS_LOG_TYPE_DEFAULT, "                              ", buf, 2u);
  }

  v123 = v189 & (isAirplaneModeEnabled ^ 1) & isDataSwitchEnabled & valid;
  v124 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
  {
    v125 = @"NO";
    if (v123)
    {
      v125 = @"YES";
    }

    *buf = 138412290;
    v196 = v125;
    _os_log_impl(&dword_195988000, v124, OS_LOG_TYPE_DEFAULT, "              Data Enabled: %@", buf, 0xCu);
  }

  v126 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
  {
    v127 = @"NO";
    if (v189)
    {
      v127 = @"YES";
    }

    *buf = 138412290;
    v196 = v127;
    _os_log_impl(&dword_195988000, v126, OS_LOG_TYPE_DEFAULT, "    Data Connection Exists: %@", buf, 0xCu);
  }

  v128 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
  {
    v129 = @"NO";
    if (isDataConnectionActive)
    {
      v129 = @"YES";
    }

    *buf = 138412290;
    v196 = v129;
    _os_log_impl(&dword_195988000, v128, OS_LOG_TYPE_DEFAULT, " Data Connection Is Active: %@", buf, 0xCu);
  }

  v130 = v123 & isDataConnectionActive;
  v131 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
  {
    v132 = @"NO";
    if (v130)
    {
      v132 = @"YES";
    }

    *buf = 138412290;
    v196 = v132;
    _os_log_impl(&dword_195988000, v131, OS_LOG_TYPE_DEFAULT, "             Has Cell Data: %@", buf, 0xCu);
  }

  v133 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
  {
    v134 = @"NO";
    if (hasLTEDataConnection)
    {
      v134 = @"YES";
    }

    *buf = 138412290;
    v196 = v134;
    _os_log_impl(&dword_195988000, v133, OS_LOG_TYPE_DEFAULT, "              Has LTE Data: %@", buf, 0xCu);
  }

  v135 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
  {
    v136 = @"NO";
    if (isDataSwitchEnabled)
    {
      v136 = @"YES";
    }

    *buf = 138412290;
    v196 = v136;
    _os_log_impl(&dword_195988000, v135, OS_LOG_TYPE_DEFAULT, "       Data Switch Enabled: %@", buf, 0xCu);
  }

  v137 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v137, OS_LOG_TYPE_DEFAULT, "                              ", buf, 2u);
  }

  v138 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
  {
    if ((v75 == 1) | isWiFiAssociated & 1)
    {
      v139 = @"YES";
    }

    else
    {
      v139 = @"NO";
    }

    *buf = 138412290;
    v196 = v139;
    _os_log_impl(&dword_195988000, v138, OS_LOG_TYPE_DEFAULT, "       WiFi Network Active: %@", buf, 0xCu);
  }

  v140 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
  {
    v141 = @"NO";
    if (v75 == 1)
    {
      v141 = @"YES";
    }

    *buf = 138412290;
    v196 = v141;
    _os_log_impl(&dword_195988000, v140, OS_LOG_TYPE_DEFAULT, "    WiFi Network Reachable: %@", buf, 0xCu);
  }

  v142 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
  {
    v143 = @"NO";
    if (v75 == 2)
    {
      v143 = @"YES";
    }

    *buf = 138412290;
    v196 = v143;
    _os_log_impl(&dword_195988000, v142, OS_LOG_TYPE_DEFAULT, "               Data Active: %@", buf, 0xCu);
  }

  v144 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    v145 = @"NO";
    if (v75 == 2)
    {
      v145 = @"YES";
    }

    *buf = 138412290;
    v196 = v145;
    _os_log_impl(&dword_195988000, v144, OS_LOG_TYPE_DEFAULT, "            Data Reachable: %@", buf, 0xCu);
  }

  v146 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v146, OS_LOG_TYPE_DEFAULT, "                              ", buf, 2u);
  }

  v147 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
  {
    v148 = @"NO";
    if (flags)
    {
      v148 = @"YES";
    }

    *buf = 138412290;
    v196 = v148;
    _os_log_impl(&dword_195988000, v147, OS_LOG_TYPE_DEFAULT, "                Wants WiFi: %@", buf, 0xCu);
  }

  v149 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
  {
    v150 = @"NO";
    if ((flags & 2) != 0)
    {
      v150 = @"YES";
    }

    *buf = 138412290;
    v196 = v150;
    _os_log_impl(&dword_195988000, v149, OS_LOG_TYPE_DEFAULT, "            Wants Cellular: %@", buf, 0xCu);
  }

  v151 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
  {
    v152 = @"NO";
    if (v194)
    {
      v152 = @"YES";
    }

    *buf = 138412290;
    v196 = v152;
    _os_log_impl(&dword_195988000, v151, OS_LOG_TYPE_DEFAULT, "           Has Usable WiFi: %@", buf, 0xCu);
  }

  v153 = v130 & (flags >> 1) & (v75 == 2);
  v154 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    v155 = @"NO";
    if (v153)
    {
      v155 = @"YES";
    }

    *buf = 138412290;
    v196 = v155;
    _os_log_impl(&dword_195988000, v154, OS_LOG_TYPE_DEFAULT, "       Has Usable Cellular: %@", buf, 0xCu);
  }

  v156 = v153 & hasLTEDataConnection;
  v157 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
  {
    v158 = @"NO";
    if (v156)
    {
      v158 = @"YES";
    }

    *buf = 138412290;
    v196 = v158;
    _os_log_impl(&dword_195988000, v157, OS_LOG_TYPE_DEFAULT, "            Has Usable LTE: %@", buf, 0xCu);
  }

  v159 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v159, OS_LOG_TYPE_DEFAULT, "****************************************************************************************", buf, 2u);
  }

  v162 = v153 & v81;
  if (v38)
  {
    v165 = v162 & v115;
    v166 = v153;
    if (v165 == 1)
    {
      v166 = v153;
      if (flags)
      {
        v166 = (v38 & 0xC) == 0;
        if (v86 > wifiTimeout)
        {
          v166 = 1;
        }
      }
    }

    v164 = flags & ~v115 & ((flags & 2) == 0) | v166;
  }

  else
  {
    v163 = v162 & flags;
    v164 = v153;
    if (v163 == 1)
    {
      v164 = (v38 & 0xC) == 0;
      if (v86 > wifiTimeout)
      {
        v164 = 1;
      }
    }
  }

  LODWORD(v167) = (flags >> 1) & ~v123 & flags & (v86 > wifiTimeout) | v194 | v164 | (v81 | v123) ^ 1 | v156 & ((v38 & 8) != 0);
  if (v81)
  {
LABEL_155:
    if (v194 & 1 | ((v167 & flags & isWiFiAssociated & 1) == 0))
    {
      goto LABEL_168;
    }

    if ((flags & 2) == 0)
    {
      v167 = OSLogHandleForIDSCategory("NetworkAvailability");
      if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195988000, v167, OS_LOG_TYPE_DEFAULT, "Wifi is not yet reachable and we don't want cellular, we're not done", buf, 2u);
      }

LABEL_166:

      LOBYTE(v167) = 0;
      goto LABEL_168;
    }

    goto LABEL_162;
  }

  if ((flags & 2) == 0)
  {
    if (((flags & 1) == 0) | v194 & 1)
    {
      goto LABEL_168;
    }

    v167 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v167, OS_LOG_TYPE_DEFAULT, "Wifi is not enabled, but we only want wifi, marking as done.", buf, 2u);
    }

    LODWORD(v167) = 1;
    goto LABEL_155;
  }

  if (v194 & 1 | ((v167 & flags & isWiFiAssociated & 1) == 0))
  {
    goto LABEL_168;
  }

LABEL_162:
  if ((v38 & 4) != 0 && v86 < wifiTimeout)
  {
    v167 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v167, OS_LOG_TYPE_DEFAULT, "Wifi is not yet reachable and we haven't timed out waiting for wifi, we're not done", buf, 2u);
    }

    goto LABEL_166;
  }

LABEL_168:
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v160, v161);
  hasCellularDataConnection_done_withinTimeWindow = objc_msgSend__isNetworkAvailablibityCheckingDone_wantsWiFi_wantsCellular_cellular_hasCellularDataConnection_done_withinTimeWindow_(self, v169, v194, flags & 1, (flags >> 1) & 1, v153, v130, v167 & 1, v168 <= self->_startTime + 4.0);
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v171, v172);
  if (((v173 <= self->_timeout + self->_startTime) & ~hasCellularDataConnection_done_withinTimeWindow) != 0)
  {
    v179 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v179, OS_LOG_TYPE_DEFAULT, "        => Continuing", buf, 2u);
    }

    objc_msgSend__setTimer(self, v180, v181);
  }

  else
  {
    v174 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v174, OS_LOG_TYPE_DEFAULT, "        ******* Done", buf, 2u);
    }

    objc_msgSend__cancel(self, v175, v176);
    if (self->_completionBlock)
    {
      if (v194)
      {
        v177 = OSLogHandleForIDSCategory("NetworkAvailability");
        if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195988000, v177, OS_LOG_TYPE_DEFAULT, "  => WiFi is Usable", buf, 2u);
        }

        if (!v153)
        {
LABEL_176:
          v178 = OSLogHandleForIDSCategory("NetworkAvailability");
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195988000, v178, OS_LOG_TYPE_DEFAULT, "  => Cellular is *NOT* usable", buf, 2u);
          }

LABEL_187:

          (*(self->_completionBlock + 2))();
          goto LABEL_188;
        }
      }

      else
      {
        v182 = OSLogHandleForIDSCategory("NetworkAvailability");
        if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195988000, v182, OS_LOG_TYPE_DEFAULT, "  => WiFi is *NOT* usable", buf, 2u);
        }

        if (!v153)
        {
          goto LABEL_176;
        }
      }

      v178 = OSLogHandleForIDSCategory("NetworkAvailability");
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195988000, v178, OS_LOG_TYPE_DEFAULT, "  => Cellular is usable", buf, 2u);
      }

      goto LABEL_187;
    }
  }

LABEL_188:

  v183 = *MEMORY[0x1E69E9840];
}

- (void)_setTimer
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_timer)
  {
    v3 = OSLogHandleForIDSCategory("NetworkAvailability");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      timeout = self->_timeout;
      *buf = 134218240;
      v13 = 0x3FF0000000000000;
      v14 = 2048;
      v15 = timeout;
      _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "Starting timer with time interval: %f   (Timeout: %f)", buf, 0x16u);
    }

    v5 = [IMDispatchTimer alloc];
    v6 = im_primary_queue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1959CCBC4;
    v11[3] = &unk_1E7439BF0;
    v11[4] = self;
    v8 = objc_msgSend_initWithQueue_interval_repeats_handlerBlock_(v5, v7, v6, 1, 1, v11);
    timer = self->_timer;
    self->_timer = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 138412290;
    v43 = self;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "Client requested start availability check: %@", &v42, 0xCu);
  }

  if (self->_startTime == 0.0)
  {
    if (self->_flags)
    {
      v6 = OSLogHandleForIDSCategory("NetworkAvailability");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v42) = 0;
        _os_log_impl(&dword_195988000, v6, OS_LOG_TYPE_DEFAULT, "  => Asserting WiFi desired", &v42, 2u);
      }

      v9 = objc_msgSend_mobileNetworkManager(self, v7, v8);
      objc_msgSend_addWiFiAutoAssociationClientToken_(v9, v10, self->_guid);

      v13 = objc_msgSend_mobileNetworkManager(self, v11, v12);
      LODWORD(v9) = objc_msgSend_isWiFiEnabled(v13, v14, v15);

      v18 = objc_msgSend_mobileNetworkManager(self, v16, v17);
      isWiFiAssociated = objc_msgSend_isWiFiAssociated(v18, v19, v20);

      v24 = objc_msgSend_mobileNetworkManager(self, v22, v23);
      isWiFiCaptive = objc_msgSend_isWiFiCaptive(v24, v25, v26);

      if (v9)
      {
        v28 = isWiFiAssociated & (isWiFiCaptive ^ 1);
      }

      else
      {
        v28 = 0;
      }

      if ((self->_options & 2) != 0 && (v28 & 1) == 0)
      {
        v29 = OSLogHandleForIDSCategory("NetworkAvailability");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v42) = 0;
          _os_log_impl(&dword_195988000, v29, OS_LOG_TYPE_DEFAULT, "  => Show Network Options", &v42, 2u);
        }

        v32 = objc_msgSend_mobileNetworkManager(self, v30, v31);
        objc_msgSend_showNetworkOptions(v32, v33, v34);
      }
    }

    if ((self->_flags & 2) != 0)
    {
      v35 = OSLogHandleForIDSCategory("NetworkAvailability");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v42) = 0;
        _os_log_impl(&dword_195988000, v35, OS_LOG_TYPE_DEFAULT, "  => Asserting Cellular desired", &v42, 2u);
      }

      v38 = objc_msgSend_mobileNetworkManager(self, v36, v37);
      objc_msgSend_addCellularAutoAssociationClientToken_(v38, v39, self->_guid);
    }

    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v4, v5);
    self->_startTime = v40;
  }

  objc_msgSend__timerHit_(self, v4, self->_timer);
  v41 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "Client requested cancel availability check: %@", &v7, 0xCu);
  }

  objc_msgSend__cancel(self, v4, v5);
  v6 = *MEMORY[0x1E69E9840];
}

@end