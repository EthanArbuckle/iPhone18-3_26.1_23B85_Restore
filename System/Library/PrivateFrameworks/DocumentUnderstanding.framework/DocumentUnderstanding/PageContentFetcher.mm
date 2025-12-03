@interface PageContentFetcher
+ (id)_copyDefaultWebViewConfiguration;
- (PageContentFetcher)init;
- (void)runJavaScriptOnHTML:(id)l javaScript:(id)script completionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation PageContentFetcher

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  if (objc_msgSend_length(self->_providedJavaScript, v6, v7, v8, v9))
  {
    providedJavaScript = self->_providedJavaScript;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_232CE5704;
    v15[3] = &unk_2789A7E38;
    v15[4] = self;
    objc_msgSend_evaluateJavaScript_completionHandler_(viewCopy, v10, providedJavaScript, v15, v11);
  }

  else
  {
    pendingBlock = self->_pendingBlock;
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v10, @"PageContentFetcher", -1, 0);
    pendingBlock[2](pendingBlock, 0, v14);
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_232CE5950;
  v8[3] = &unk_2789A7DE8;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)runJavaScriptOnHTML:(id)l javaScript:(id)script completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v14 = objc_msgSend_copy(script, v10, v11, v12, v13);
  providedJavaScript = self->_providedJavaScript;
  self->_providedJavaScript = v14;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_232CE5A98;
  block[3] = &unk_2789A7DC0;
  v19 = lCopy;
  v20 = handlerCopy;
  block[4] = self;
  v16 = lCopy;
  v17 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (PageContentFetcher)init
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v20.receiver = self;
  v20.super_class = PageContentFetcher;
  v3 = [(PageContentFetcher *)&v20 init];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CE3850]);
    v5 = objc_opt_class();
    v10 = objc_msgSend__copyDefaultWebViewConfiguration(v5, v6, v7, v8, v9);
    v14 = objc_msgSend_initWithFrame_configuration_(v4, v11, v10, v12, v13, 0.0, 0.0, 1366.0, 768.0);
    webView = v3->_webView;
    v3->_webView = v14;

    objc_msgSend_setNavigationDelegate_(v3->_webView, v16, v3, v17, v18);
  }

  return v3;
}

+ (id)_copyDefaultWebViewConfiguration
{
  v5 = qword_27DDD4E28;
  if (!qword_27DDD4E28)
  {
    v6 = objc_alloc_init(MEMORY[0x277CE3858]);
    v7 = qword_27DDD4E28;
    qword_27DDD4E28 = v6;

    objc_msgSend__setAllowsJavaScriptMarkup_(qword_27DDD4E28, v8, 0, v9, v10);
    objc_msgSend__setAllowsMetaRefresh_(qword_27DDD4E28, v11, 0, v12, v13);
    objc_msgSend__setAllowUniversalAccessFromFileURLs_(qword_27DDD4E28, v14, 0, v15, v16);
    objc_msgSend__setLegacyEncryptedMediaAPIEnabled_(qword_27DDD4E28, v17, 0, v18, v19);
    objc_msgSend__setLoadsSubresources_(qword_27DDD4E28, v20, 0, v21, v22);
    v27 = objc_msgSend_preferences(qword_27DDD4E28, v23, v24, v25, v26);
    objc_msgSend__setAVFoundationEnabled_(v27, v28, 0, v29, v30);

    v35 = objc_msgSend_preferences(qword_27DDD4E28, v31, v32, v33, v34);
    objc_msgSend__setDOMPasteAllowed_(v35, v36, 0, v37, v38);

    v43 = objc_msgSend_preferences(qword_27DDD4E28, v39, v40, v41, v42);
    objc_msgSend__setJavaScriptCanAccessClipboard_(v43, v44, 0, v45, v46);

    v51 = objc_msgSend_preferences(qword_27DDD4E28, v47, v48, v49, v50);
    objc_msgSend__setLoadsImagesAutomatically_(v51, v52, 0, v53, v54);

    v59 = objc_msgSend_preferences(qword_27DDD4E28, v55, v56, v57, v58);
    objc_msgSend__setMediaDevicesEnabled_(v59, v60, 0, v61, v62);

    v67 = objc_msgSend_preferences(qword_27DDD4E28, v63, v64, v65, v66);
    objc_msgSend__setPeerConnectionEnabled_(v67, v68, 0, v69, v70);

    v75 = objc_msgSend_preferences(qword_27DDD4E28, v71, v72, v73, v74);
    objc_msgSend__setRemotePlaybackEnabled_(v75, v76, 0, v77, v78);

    v83 = objc_msgSend_preferences(qword_27DDD4E28, v79, v80, v81, v82);
    objc_msgSend__setScreenCaptureEnabled_(v83, v84, 0, v85, v86);

    v91 = objc_msgSend_preferences(qword_27DDD4E28, v87, v88, v89, v90);
    objc_msgSend__setStorageBlockingPolicy_(v91, v92, 2, v93, v94);

    v99 = objc_msgSend_preferences(qword_27DDD4E28, v95, v96, v97, v98);
    objc_msgSend__setWebAudioEnabled_(v99, v100, 0, v101, v102);

    v107 = objc_msgSend_preferences(qword_27DDD4E28, v103, v104, v105, v106);
    objc_msgSend_setJavaScriptCanOpenWindowsAutomatically_(v107, v108, 0, v109, v110);

    v115 = objc_msgSend_preferences(qword_27DDD4E28, v111, v112, v113, v114);
    objc_msgSend__setTextAutosizingEnabled_(v115, v116, 0, v117, v118);

    v123 = objc_msgSend_preferences(qword_27DDD4E28, v119, v120, v121, v122);
    objc_msgSend__setShouldEnableTextAutosizingBoost_(v123, v124, 0, v125, v126);

    v196 = 0;
    v197 = &v196;
    v198 = 0x2050000000;
    v131 = qword_27DDD4E30;
    v199 = qword_27DDD4E30;
    if (!qword_27DDD4E30)
    {
      v191 = MEMORY[0x277D85DD0];
      v192 = 3221225472;
      v193 = sub_232CE5FD8;
      v194 = &unk_2789A7E60;
      v195 = &v196;
      sub_232CE5FD8(&v191, v127, v128, v129, v130);
      v131 = v197[3];
    }

    v132 = v131;
    _Block_object_dispose(&v196, 8);
    v137 = objc_msgSend_nonPersistentDataStore(v131, v133, v134, v135, v136);
    objc_msgSend_setWebsiteDataStore_(qword_27DDD4E28, v138, v137, v139, v140);

    objc_msgSend_setAllowsAirPlayForMediaPlayback_(qword_27DDD4E28, v141, 0, v142, v143);
    v196 = 0;
    v197 = &v196;
    v198 = 0x2050000000;
    v148 = qword_27DDD4E40;
    v199 = qword_27DDD4E40;
    if (!qword_27DDD4E40)
    {
      v191 = MEMORY[0x277D85DD0];
      v192 = 3221225472;
      v193 = sub_232CE60A0;
      v194 = &unk_2789A7E60;
      v195 = &v196;
      sub_232CE60A0(&v191, v144, v145, v146, v147);
      v148 = v197[3];
    }

    v149 = v148;
    _Block_object_dispose(&v196, 8);
    v150 = objc_opt_new();
    objc_msgSend_setAllowsContentJavaScript_(v150, v151, 0, v152, v153);
    objc_msgSend_setPreferredContentMode_(v150, v154, 2, v155, v156);
    objc_msgSend_setDefaultWebpagePreferences_(qword_27DDD4E28, v157, v150, v158, v159);
    objc_msgSend_setAllowsInlineMediaPlayback_(qword_27DDD4E28, v160, 0, v161, v162);
    objc_msgSend_setAllowsPictureInPictureMediaPlayback_(qword_27DDD4E28, v163, 0, v164, v165);
    objc_msgSend__setClientNavigationsRunAtForegroundPriority_(qword_27DDD4E28, v166, 1, v167, v168);
    v169 = objc_alloc_init(MEMORY[0x277CE3890]);
    objc_msgSend_setJITEnabled_(v169, v170, 0, v171, v172);
    v173 = objc_alloc(MEMORY[0x277CE3820]);
    v177 = objc_msgSend__initWithConfiguration_(v173, v174, v169, v175, v176);
    objc_msgSend_setProcessPool_(qword_27DDD4E28, v178, v177, v179, v180);

    v5 = qword_27DDD4E28;
  }

  v181 = objc_msgSend_copy(v5, a2, v2, v3, v4);
  v186 = objc_msgSend_nonPersistentDataStore(MEMORY[0x277CE3868], v182, v183, v184, v185);
  objc_msgSend_setWebsiteDataStore_(v181, v187, v186, v188, v189);

  return v181;
}

@end