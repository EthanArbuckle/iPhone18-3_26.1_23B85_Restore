@interface IMAVEmbeddedInterface
+ (void)updateCriticalState;
- (int64_t)_runPingTestForChat:(id)chat;
- (void)_conferenceEnded:(id)ended;
- (void)_conferenceWillStart:(id)start;
- (void)chatStateUpdated;
@end

@implementation IMAVEmbeddedInterface

- (void)_conferenceWillStart:(id)start
{
  startCopy = start;
  v25.receiver = self;
  v25.super_class = IMAVEmbeddedInterface;
  [(IMAVInterface *)&v25 _conferenceWillStart:startCopy];
  if (!qword_27F610658)
  {
    qword_27F610658 = MEMORY[0x259C18990](@"AVSystemController", @"Celestial");
  }

  if (qword_27F610660 != -1)
  {
    sub_25477F8A0();
  }

  v9 = objc_msgSend_sharedAVSystemController(qword_27F610658, v5, v6, v7, v8);
  v13 = objc_msgSend_attributeForKey_(v9, v10, qword_27F610668, v11, v12);

  if (objc_msgSend_BOOLValue(v13, v14, v15, v16, v17))
  {
    v21 = objc_msgSend__existingConferenceForAVChat_(self, v18, startCopy, v19, v20);
    objc_msgSend_setMicrophoneMuted_(v21, v22, 1, v23, v24);
  }
}

- (void)_conferenceEnded:(id)ended
{
  v10 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = endedCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "_conferenceEnded: %@", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = IMAVEmbeddedInterface;
  [(IMAVConferenceInterface *)&v7 _conferenceEnded:endedCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)chatStateUpdated
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__nonFinalChat(IMAVChat, a2, v2, v3, v4);
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Found non final chat: %@", buf, 0xCu);
  }

  if (!qword_27F610670)
  {
    qword_27F610670 = MEMORY[0x259C18990](@"UIApplication", @"UIKit");
  }

  v8 = sub_254761764();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 0;
      v10 = "Disabling system idle timer";
LABEL_10:
      _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    }
  }

  else if (v9)
  {
    *buf = 0;
    v10 = "Enabling system idle timer";
    goto LABEL_10;
  }

  v15 = objc_msgSend_sharedApplication(qword_27F610670, v11, v12, v13, v14);
  objc_msgSend_setIdleTimerDisabled_(v15, v16, v6 != 0, v17, v18);

  sub_254759A18(v6 != 0);
  v25.receiver = self;
  v25.super_class = IMAVEmbeddedInterface;
  [(IMAVConferenceInterface *)&v25 chatStateUpdated];
  v19 = objc_opt_class();
  objc_msgSend_updateCriticalState(v19, v20, v21, v22, v23);

  v24 = *MEMORY[0x277D85DE8];
}

+ (void)updateCriticalState
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  if (objc_msgSend__shouldRunConferences(v5, v6, v7, v8, v9))
  {
  }

  else
  {
    v18 = objc_msgSend_sharedInstance(IMAVController, v10, v11, v12, v13);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v18, v19, v20, v21, v22);

    if (!shouldRunACConferences)
    {
      goto LABEL_18;
    }
  }

  v24 = objc_msgSend__connectingChats(IMAVChat, v14, v15, v16, v17);
  if (objc_msgSend_count(v24, v25, v26, v27, v28))
  {
    v33 = 1;
  }

  else
  {
    v34 = objc_msgSend__connectedChats(IMAVChat, v29, v30, v31, v32);
    if (objc_msgSend_count(v34, v35, v36, v37, v38))
    {
      v33 = 1;
    }

    else
    {
      v43 = objc_msgSend__incomingInvitations(IMAVChat, v39, v40, v41, v42);
      if (objc_msgSend_count(v43, v44, v45, v46, v47))
      {
        v33 = 1;
      }

      else
      {
        v52 = objc_msgSend__outgoingInvitations(IMAVChat, v48, v49, v50, v51);
        v33 = objc_msgSend_count(v52, v53, v54, v55, v56) != 0;
      }
    }
  }

  v57 = sub_254761764();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = @"NO";
    if (v33)
    {
      v58 = @"YES";
    }

    v68 = 138412290;
    v69 = v58;
    _os_log_impl(&dword_254743000, v57, OS_LOG_TYPE_DEFAULT, "Any chats need critical state: %@", &v68, 0xCu);
  }

  v63 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v59, v60, v61, v62);
  objc_msgSend_setEnableCriticalReliability_(v63, v64, v33, v65, v66);

LABEL_18:
  v67 = *MEMORY[0x277D85DE8];
}

- (int64_t)_runPingTestForChat:(id)chat
{
  *&v108[5] = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (objc_msgSend__localNetworkConnectionType(chatCopy, v4, v5, v6, v7) == 2)
  {
    v12 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v8, v9, v10, v11);
    v17 = objc_msgSend_myGatewayAddress(v12, v13, v14, v15, v16);

    if (objc_msgSend_length(v17, v18, v19, v20, v21))
    {
      v22 = sub_254761764();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v108[0] = 2;
        LOWORD(v108[1]) = 2112;
        *(&v108[1] + 2) = v17;
        _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "Running ping test: connection type %d - gateway IP %@", buf, 0x12u);
      }

      v23 = objc_autoreleasePoolPush();
      IMPerformPingTest();
      v24 = 0;
      v29 = objc_msgSend_packetsSuccessfullySent(v24, v25, v26, v27, v28);
      v30 = 4 * (v29 < 1);
      objc_autoreleasePoolPop(v23);
      objc_msgSend__setPingTestResult_(chatCopy, v31, v30, v32, v33);
      v34 = sub_254761764();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      if (v29 < 1)
      {
        if (v35)
        {
          *buf = 138412290;
          *v108 = @"Failed to run";
          _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, "Ping test ended with error: %@", buf, 0xCu);
        }
      }

      else
      {
        if (v35)
        {
          *buf = 138412290;
          *v108 = v24;
          _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, "Ping results: %@", buf, 0xCu);
        }

        v36 = MEMORY[0x277CCABB0];
        objc_msgSend_minRoundtripTime(v24, v37, v38, v39, v40);
        v45 = 0.0;
        v47 = v46 <= 0.0;
        v48 = 0.0;
        if (!v47)
        {
          objc_msgSend_minRoundtripTime(v24, v41, v42, v43, v44, 0.0);
          *&v48 = v48;
        }

        v34 = objc_msgSend_numberWithFloat_(v36, v41, v42, v43, v44, v48);
        v49 = MEMORY[0x277CCABB0];
        objc_msgSend_maxRoundtripTime(v24, v50, v51, v52, v53);
        if (v58 > 0.0)
        {
          objc_msgSend_maxRoundtripTime(v24, v54, v55, v56, v57);
          v45 = v58;
        }

        *&v58 = v45;
        v59 = objc_msgSend_numberWithFloat_(v49, v54, v55, v56, v57, v58);
        v60 = MEMORY[0x277CCABB0];
        objc_msgSend_averageRoundtripTime(v24, v61, v62, v63, v64);
        v69 = 0.0;
        v47 = v70 <= 0.0;
        v71 = 0.0;
        if (!v47)
        {
          objc_msgSend_averageRoundtripTime(v24, v65, v66, v67, v68, 0.0);
          *&v71 = v71;
        }

        v72 = objc_msgSend_numberWithFloat_(v60, v65, v66, v67, v68, v71);
        v73 = MEMORY[0x277CCABB0];
        objc_msgSend_standardDeviationRoundtripTime(v24, v74, v75, v76, v77);
        if (v82 > 0.0)
        {
          objc_msgSend_standardDeviationRoundtripTime(v24, v78, v79, v80, v81);
          v69 = v82;
        }

        *&v82 = v69;
        v83 = objc_msgSend_numberWithFloat_(v73, v78, v79, v80, v81, v82);
        v84 = MEMORY[0x277CCABB0];
        objc_msgSend_packetLossRate(v24, v85, v86, v87, v88);
        v94 = v93;
        v95 = 0.0;
        if (v94 > 0.0)
        {
          objc_msgSend_packetLossRate(v24, v89, v90, v91, v92, 0.0);
          *&v95 = v95;
        }

        v96 = objc_msgSend_numberWithFloat_(v84, v89, v90, v91, v92, v95);
        v97 = objc_alloc(MEMORY[0x277CBEAC0]);
        v101 = objc_msgSend_initWithObjectsAndKeys_(v97, v98, v34, v99, v100, @"AVPingTestMin", v59, @"AVPingTestMax", v72, @"AVPingTestAvg", v83, @"AVPingTestStdDeviation", v96, @"AVPingTestPacketLoss", 0);
        objc_msgSend__setPingTestResults_(chatCopy, v102, v101, v103, v104);
      }
    }

    else
    {
      v30 = 4;
    }
  }

  else
  {
    v30 = -1;
  }

  v105 = *MEMORY[0x277D85DE8];
  return v30;
}

@end