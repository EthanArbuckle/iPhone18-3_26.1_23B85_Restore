@interface DSNavigationManager
- (BOOL)shouldIngestURL:(id)l;
- (Class)startingClassForURL:(id)l;
- (Class)topViewControllerForUnorderedClass:(Class)class;
- (DSNavigationManager)init;
- (id)deepLinkToPane:(Class)pane inFlow:(int64_t)flow;
- (id)navigationChaptersForFlowType:(int64_t)type;
- (id)navigationForURL:(id)l;
- (id)navigationOrderForFlowType:(int64_t)type;
- (id)restoredDTONavigationOrder:(int64_t)order withPath:(id)path;
- (id)restoredDeviceAccessNavigationOrder:(int64_t)order;
@end

@implementation DSNavigationManager

- (DSNavigationManager)init
{
  v114[4] = *MEMORY[0x277D85DE8];
  v97.receiver = self;
  v97.super_class = DSNavigationManager;
  v2 = [(DSNavigationManager *)&v97 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.DigitalSeparation", "DSNavigationManager");
    v4 = DSLog_10;
    DSLog_10 = v3;

    v114[0] = objc_opt_class();
    v114[1] = objc_opt_class();
    v114[2] = objc_opt_class();
    v114[3] = objc_opt_class();
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:4];
    panesRequiringNetwork = v2->_panesRequiringNetwork;
    v2->_panesRequiringNetwork = v5;

    v113[0] = objc_opt_class();
    v113[1] = objc_opt_class();
    v113[2] = objc_opt_class();
    v113[3] = objc_opt_class();
    v113[4] = objc_opt_class();
    v113[5] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:6];
    detailControllerPanes = v2->_detailControllerPanes;
    v2->_detailControllerPanes = v7;

    v112[0] = objc_opt_class();
    v112[1] = objc_opt_class();
    v112[2] = objc_opt_class();
    v112[3] = objc_opt_class();
    v112[4] = objc_opt_class();
    v112[5] = objc_opt_class();
    v112[6] = objc_opt_class();
    v112[7] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:8];
    safetyResetNavigationOrder = v2->_safetyResetNavigationOrder;
    v2->_safetyResetNavigationOrder = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v110[0] = v12;
    v111[0] = &unk_285BB93E8;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v110[1] = v14;
    v111[1] = &unk_285BB9400;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v110[2] = v16;
    v111[2] = &unk_285BB9418;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:3];
    safetyResetChapters = v2->_safetyResetChapters;
    v2->_safetyResetChapters = v17;

    v109[0] = objc_opt_class();
    v109[1] = objc_opt_class();
    v109[2] = objc_opt_class();
    v109[3] = objc_opt_class();
    v109[4] = objc_opt_class();
    v109[5] = objc_opt_class();
    v109[6] = objc_opt_class();
    v109[7] = objc_opt_class();
    v109[8] = objc_opt_class();
    v109[9] = objc_opt_class();
    v109[10] = objc_opt_class();
    v109[11] = objc_opt_class();
    v109[12] = objc_opt_class();
    v109[13] = objc_opt_class();
    v109[14] = objc_opt_class();
    v109[15] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:16];
    sharingActivityNavigationOrder = v2->_sharingActivityNavigationOrder;
    v2->_sharingActivityNavigationOrder = v19;

    v21 = objc_opt_class();
    v95 = NSStringFromClass(v21);
    v107[0] = v95;
    v108[0] = &unk_285BB93E8;
    v22 = objc_opt_class();
    v93 = NSStringFromClass(v22);
    v107[1] = v93;
    v108[1] = &unk_285BB93E8;
    v23 = objc_opt_class();
    v91 = NSStringFromClass(v23);
    v107[2] = v91;
    v108[2] = &unk_285BB9400;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v107[3] = v25;
    v108[3] = &unk_285BB9418;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v107[4] = v27;
    v108[4] = &unk_285BB9418;
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v107[5] = v29;
    v108[5] = &unk_285BB9418;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v107[6] = v31;
    v108[6] = &unk_285BB9418;
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v107[7] = v33;
    v108[7] = &unk_285BB9418;
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v107[8] = v35;
    v108[8] = &unk_285BB9418;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v107[9] = v37;
    v108[9] = &unk_285BB9418;
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v107[10] = v39;
    v108[10] = &unk_285BB9418;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:11];
    sharingActivityChapters = v2->_sharingActivityChapters;
    v2->_sharingActivityChapters = v40;

    v106[0] = objc_opt_class();
    v106[1] = objc_opt_class();
    v106[2] = objc_opt_class();
    v106[3] = objc_opt_class();
    v106[4] = objc_opt_class();
    v106[5] = objc_opt_class();
    v106[6] = objc_opt_class();
    v106[7] = objc_opt_class();
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:8];
    safetyResetNavigationOrderDTO = v2->_safetyResetNavigationOrderDTO;
    v2->_safetyResetNavigationOrderDTO = v42;

    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    v104[0] = v45;
    v105[0] = &unk_285BB93E8;
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v104[1] = v47;
    v105[1] = &unk_285BB9400;
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    v104[2] = v49;
    v105[2] = &unk_285BB9400;
    v50 = objc_opt_class();
    v51 = NSStringFromClass(v50);
    v104[3] = v51;
    v105[3] = &unk_285BB9418;
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    v104[4] = v53;
    v105[4] = &unk_285BB9418;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:5];
    safetyResetChaptersDTO = v2->_safetyResetChaptersDTO;
    v2->_safetyResetChaptersDTO = v54;

    v103[0] = objc_opt_class();
    v103[1] = objc_opt_class();
    v103[2] = objc_opt_class();
    v103[3] = objc_opt_class();
    v103[4] = objc_opt_class();
    v103[5] = objc_opt_class();
    v103[6] = objc_opt_class();
    v103[7] = objc_opt_class();
    v103[8] = objc_opt_class();
    v103[9] = objc_opt_class();
    v103[10] = objc_opt_class();
    v103[11] = objc_opt_class();
    v103[12] = objc_opt_class();
    v103[13] = objc_opt_class();
    v103[14] = objc_opt_class();
    v103[15] = objc_opt_class();
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:16];
    sharingActivityNavigationOrderDTO = v2->_sharingActivityNavigationOrderDTO;
    v2->_sharingActivityNavigationOrderDTO = v56;

    v58 = objc_opt_class();
    v96 = NSStringFromClass(v58);
    v101[0] = v96;
    v102[0] = &unk_285BB93E8;
    v59 = objc_opt_class();
    v94 = NSStringFromClass(v59);
    v101[1] = v94;
    v102[1] = &unk_285BB93E8;
    v60 = objc_opt_class();
    v92 = NSStringFromClass(v60);
    v101[2] = v92;
    v102[2] = &unk_285BB9400;
    v61 = objc_opt_class();
    v62 = NSStringFromClass(v61);
    v101[3] = v62;
    v102[3] = &unk_285BB9418;
    v63 = objc_opt_class();
    v64 = NSStringFromClass(v63);
    v101[4] = v64;
    v102[4] = &unk_285BB9418;
    v65 = objc_opt_class();
    v66 = NSStringFromClass(v65);
    v101[5] = v66;
    v102[5] = &unk_285BB9418;
    v67 = objc_opt_class();
    v68 = NSStringFromClass(v67);
    v101[6] = v68;
    v102[6] = &unk_285BB9418;
    v69 = objc_opt_class();
    v70 = NSStringFromClass(v69);
    v101[7] = v70;
    v102[7] = &unk_285BB9418;
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    v101[8] = v72;
    v102[8] = &unk_285BB9418;
    v73 = objc_opt_class();
    v74 = NSStringFromClass(v73);
    v101[9] = v74;
    v102[9] = &unk_285BB9418;
    v75 = objc_opt_class();
    v76 = NSStringFromClass(v75);
    v101[10] = v76;
    v102[10] = &unk_285BB9418;
    v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:11];
    sharingActivityChaptersDTO = v2->_sharingActivityChaptersDTO;
    v2->_sharingActivityChaptersDTO = v77;

    safetyCheckChaptersWifiSync = v2->_safetyCheckChaptersWifiSync;
    v80 = MEMORY[0x277CBEC10];
    v2->_safetyCheckChaptersWifiSync = MEMORY[0x277CBEC10];

    v100[0] = objc_opt_class();
    v100[1] = objc_opt_class();
    v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];
    safetyCheckNavigationOrderWifiSync = v2->_safetyCheckNavigationOrderWifiSync;
    v2->_safetyCheckNavigationOrderWifiSync = v81;

    reviewDeviceAccessChapters = v2->_reviewDeviceAccessChapters;
    v2->_reviewDeviceAccessChapters = v80;

    v99[0] = objc_opt_class();
    v99[1] = objc_opt_class();
    v99[2] = objc_opt_class();
    v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:3];
    reviewDeviceAccessNavigationOrder = v2->_reviewDeviceAccessNavigationOrder;
    v2->_reviewDeviceAccessNavigationOrder = v84;

    reviewBlockingChapters = v2->_reviewBlockingChapters;
    v2->_reviewBlockingChapters = v80;

    v98 = objc_opt_class();
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
    reviewBlockingNavigationOrder = v2->_reviewBlockingNavigationOrder;
    v2->_reviewBlockingNavigationOrder = v87;
  }

  v89 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)navigationOrderForFlowType:(int64_t)type
{
  if (type > 1)
  {
    if (type == 2)
    {
      reviewDeviceAccessNavigationOrder = [(DSNavigationManager *)self reviewDeviceAccessNavigationOrder];
      goto LABEL_18;
    }

    if (type == 3)
    {
      reviewDeviceAccessNavigationOrder = [(DSNavigationManager *)self reviewBlockingNavigationOrder];
      goto LABEL_18;
    }
  }

  else
  {
    if (!type)
    {
      if ([(DSNavigationManager *)self isDTOActive])
      {
        [(DSNavigationManager *)self safetyResetNavigationOrderDTO];
      }

      else
      {
        [(DSNavigationManager *)self safetyResetNavigationOrder];
      }

      goto LABEL_6;
    }

    if (type == 1)
    {
      if ([(DSNavigationManager *)self isDTOActive])
      {
        [(DSNavigationManager *)self sharingActivityNavigationOrderDTO];
      }

      else
      {
        [(DSNavigationManager *)self sharingActivityNavigationOrder];
      }

      reviewDeviceAccessNavigationOrder = LABEL_6:;
      goto LABEL_18;
    }
  }

  if (os_log_type_enabled(DSLog_10, OS_LOG_TYPE_ERROR))
  {
    [DSNavigationManager navigationOrderForFlowType:];
  }

  reviewDeviceAccessNavigationOrder = MEMORY[0x277CBEBF8];
LABEL_18:

  return reviewDeviceAccessNavigationOrder;
}

- (id)navigationChaptersForFlowType:(int64_t)type
{
  if (type > 1)
  {
    if (type == 2)
    {
      reviewDeviceAccessChapters = [(DSNavigationManager *)self reviewDeviceAccessChapters];
      goto LABEL_18;
    }

    if (type == 3)
    {
      reviewDeviceAccessChapters = [(DSNavigationManager *)self reviewBlockingChapters];
      goto LABEL_18;
    }
  }

  else
  {
    if (!type)
    {
      if ([(DSNavigationManager *)self isDTOActive])
      {
        [(DSNavigationManager *)self safetyResetChaptersDTO];
      }

      else
      {
        [(DSNavigationManager *)self safetyResetChapters];
      }

      goto LABEL_6;
    }

    if (type == 1)
    {
      if ([(DSNavigationManager *)self isDTOActive])
      {
        [(DSNavigationManager *)self sharingActivityChaptersDTO];
      }

      else
      {
        [(DSNavigationManager *)self sharingActivityChapters];
      }

      reviewDeviceAccessChapters = LABEL_6:;
      goto LABEL_18;
    }
  }

  if (os_log_type_enabled(DSLog_10, OS_LOG_TYPE_ERROR))
  {
    [DSNavigationManager navigationChaptersForFlowType:];
  }

  reviewDeviceAccessChapters = MEMORY[0x277CBEC10];
LABEL_18:

  return reviewDeviceAccessChapters;
}

- (BOOL)shouldIngestURL:(id)l
{
  v4 = [l objectForKey:@"path"];
  v5 = [v4 length] && (objc_msgSend(v4, "isEqualToString:", @"/") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"SAFETY_CHECK") & 1) == 0 && -[DSNavigationManager startingClassForURL:](self, "startingClassForURL:", v4) != 0;

  return v5;
}

- (id)deepLinkToPane:(Class)pane inFlow:(int64_t)flow
{
  v6 = [MEMORY[0x277CCAB68] stringWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/SAFETY_CHECK/"];
  v7 = v6;
  if (flow)
  {
    v8 = @"MANAGE_SHARING";
  }

  else
  {
    v8 = @"EMERGENCY_RESET";
  }

  [v6 appendString:v8];
  if (objc_opt_class() == pane)
  {
    v9 = @"PASSCODE";
LABEL_12:
    [v7 appendString:v9];
    goto LABEL_13;
  }

  if (objc_opt_class() == pane)
  {
    v9 = @"FACEID";
    goto LABEL_12;
  }

  if (objc_opt_class() == pane)
  {
    v9 = @"TOUCHID";
    goto LABEL_12;
  }

  if (os_log_type_enabled(DSLog_10, OS_LOG_TYPE_ERROR))
  {
    [DSNavigationManager deepLinkToPane:inFlow:];
  }

LABEL_13:

  return v7;
}

- (id)navigationForURL:(id)l
{
  v4 = [l objectForKey:@"path"];
  v5 = [v4 containsString:@"EMERGENCY_RESET"];
  v6 = v5;
  v7 = v5 ^ 1u;
  v8 = [(DSNavigationManager *)self startingClassForURL:v4];
  if (v8 == objc_opt_class())
  {
    safetyCheckNavigationOrderWifiSync = [(DSNavigationManager *)self safetyCheckNavigationOrderWifiSync];
    safetyCheckChaptersWifiSync = [(DSNavigationManager *)self safetyCheckChaptersWifiSync];
    v11 = 1;
    v12 = 3;
    v13 = @"Sharing Reminder";
  }

  else if ([v4 containsString:@"DEVICE_ACCESS"])
  {
    safetyCheckNavigationOrderWifiSync = [(DSNavigationManager *)self restoredDeviceAccessNavigationOrder:v7];
    safetyCheckChaptersWifiSync = [(DSNavigationManager *)self navigationChaptersForFlowType:v7];
    v11 = 0;
    v12 = 1;
    v13 = @"Passcode Change";
  }

  else if (v8 == objc_opt_class() || v8 == objc_opt_class())
  {
    safetyCheckNavigationOrderWifiSync = [(DSNavigationManager *)self navigationOrderForFlowType:v7];
    safetyCheckChaptersWifiSync = [(DSNavigationManager *)self navigationChaptersForFlowType:v7];
    v12 = 0;
    v11 = 1;
    v13 = @"Apple Intelligence";
  }

  else
  {
    safetyCheckNavigationOrderWifiSync = [(DSNavigationManager *)self restoredDTONavigationOrder:v7 withPath:v4];
    if (v6)
    {
      [(DSNavigationManager *)self safetyResetChaptersDTO];
    }

    else
    {
      [(DSNavigationManager *)self sharingActivityChaptersDTO];
    }
    safetyCheckChaptersWifiSync = ;
    v11 = 0;
    v12 = 2;
    v13 = @"SDP Delay";
  }

  v14 = [[DSDeepLinkRepresentation alloc] initWithOrder:safetyCheckNavigationOrderWifiSync orderType:v12 chapters:safetyCheckChaptersWifiSync requiresAuth:v11 flowType:v7 entrypointAnalytic:v13 path:v4];

  return v14;
}

- (id)restoredDTONavigationOrder:(int64_t)order withPath:(id)path
{
  pathCopy = path;
  v7 = [(DSNavigationManager *)self startingClassForURL:pathCopy];
  if (v7)
  {
    v8 = v7;
    if (order)
    {
      [(DSNavigationManager *)self sharingActivityNavigationOrderDTO];
    }

    else
    {
      [(DSNavigationManager *)self safetyResetNavigationOrderDTO];
    }
    v10 = ;
    v11 = [v10 indexOfObject:v8];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(DSLog_10, OS_LOG_TYPE_ERROR))
      {
        [DSNavigationManager restoredDTONavigationOrder:withPath:];
      }

      v9 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v12 = v11;
      v9 = objc_opt_new();
      if (v8 == objc_opt_class())
      {
        v13 = off_278F74848;
        if (order)
        {
          v13 = off_278F74950;
        }

        v14 = *v13;
        [v9 addObject:objc_opt_class()];
      }

      v15 = [v10 subarrayWithRange:{v12, objc_msgSend(v10, "count") - v12}];
      [v9 addObjectsFromArray:v15];
    }
  }

  else
  {
    if (os_log_type_enabled(DSLog_10, OS_LOG_TYPE_ERROR))
    {
      [DSNavigationManager restoredDTONavigationOrder:withPath:];
    }

    v9 = 0;
  }

  return v9;
}

- (id)restoredDeviceAccessNavigationOrder:(int64_t)order
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [(DSNavigationManager *)self navigationOrderForFlowType:order];
  v5 = [v3 arrayWithArray:v4];

  [v5 removeObject:objc_opt_class()];

  return v5;
}

- (Class)startingClassForURL:(id)l
{
  v10 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([lCopy containsString:@"PASSCODE"] || objc_msgSend(lCopy, "containsString:", @"FACEID") || objc_msgSend(lCopy, "containsString:", @"TOUCHID") || objc_msgSend(lCopy, "containsString:", @"apple.com") || objc_msgSend(lCopy, "containsString:", @"reminders/wifisync") || objc_msgSend(lCopy, "containsString:", @"EMERGENCY_RESET") || objc_msgSend(lCopy, "containsString:", @"MANAGE_SHARING"))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v7 = DSLog_10;
    if (os_log_type_enabled(DSLog_10, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = lCopy;
      _os_log_impl(&dword_248C7E000, v7, OS_LOG_TYPE_DEFAULT, "Couldn't parse an entry configuration from URL path: %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (Class)topViewControllerForUnorderedClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    v5 = off_278F74938;
  }

  else if (objc_opt_class() == class || objc_opt_class() == class)
  {
    v5 = off_278F748D8;
  }

  else if (objc_opt_class() == class)
  {
    v5 = off_278F74970;
  }

  else if (objc_opt_class() == class)
  {
    v5 = off_278F74818;
  }

  else
  {
    v4 = objc_opt_class();
    v5 = off_278F74900;
    if (v4 == class)
    {
      v5 = off_278F74800;
    }
  }

  v6 = *v5;
  v7 = objc_opt_class();

  return v7;
}

- (void)navigationOrderForFlowType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error: can't determine navigation order for unexpected flow type %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)navigationChaptersForFlowType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error: can't determine navigation chapters for unexpected flow type %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deepLinkToPane:inFlow:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Pointing to Safety Check landing page because Class %@ is not handled", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)restoredDTONavigationOrder:withPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_248C7E000, v1, OS_LOG_TYPE_ERROR, "Current pane type: %@ not found in DTO navigation order: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)restoredDTONavigationOrder:withPath:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Couldn't parse a DTO entry configuration from URL path: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end