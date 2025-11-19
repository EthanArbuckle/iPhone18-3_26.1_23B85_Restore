@interface IMDBaseSpotlightIndexController
- (IMDBaseSpotlightIndexControllerDelegate)delegate;
- (id)_createErrorFromSyncError:(id)a3;
- (id)dataForSearchableIndex:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 error:(id *)a6;
- (id)fileURLForSearchableIndex:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 options:(int64_t)a6 error:(id *)a7;
- (id)fileURLsForSearchableIndex:(id)a3 itemIdentifiers:(id)a4 typeIdentifier:(id)a5 options:(int64_t)a6 error:(id *)a7;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
- (void)searchableItemsDidUpdate:(id)a3 mask:(int64_t)a4;
@end

@implementation IMDBaseSpotlightIndexController

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_needsIndexing(MEMORY[0x1E69A7FF8], v7, v8);
  v12 = sub_1B7BAB53C();
  if (v12)
  {
    v13 = objc_msgSend_date(MEMORY[0x1E695DF00], v10, v11);
    objc_msgSend_timeIntervalSinceDate_(v13, v14, v12);
    v16 = fabs(v15);

    if (v16 < 10800.0)
    {

      v17 = 1;
      goto LABEL_15;
    }
  }

  if (v9)
  {
    v17 = 0;
LABEL_15:
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = sub_1B7BAB53C();
        v40 = v39;
        v41 = @"NO";
        if (v17)
        {
          v42 = @"YES";
        }

        else
        {
          v42 = @"NO";
        }

        *v48 = 138412802;
        if (v9)
        {
          v41 = @"YES";
        }

        *&v48[4] = v41;
        v49 = 2112;
        v50 = v42;
        v51 = 2112;
        v52 = v39;
        _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "Spotlight requesting full reindex, scheduling deferred indexing. Index in progress %@ rerequestWithinInterval %@ lastRequestDate %@", v48, 0x20u);
      }
    }

    v43 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v36, v37, *v48);
    objc_msgSend_deferredReindexScheduled(v43, v44, v45);

    sub_1B7BAB424(2);
    objc_msgSend_setNeedsDeferredIndexing_(MEMORY[0x1E69A7FF8], v46, 1);
    goto LABEL_25;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v48 = 0;
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Spotlight requesting full reindex, fullfilling request", v48, 2u);
    }
  }

  v21 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v18, v19);
  isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v21, v22, v23);

  if ((isSpotlightReindexRefactorEnabled & 1) == 0)
  {
    sub_1B7BAB424(1);
  }

  v27 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v25, v26);
  v29 = objc_msgSend_contextWithReason_(IMDIndexingContext, v28, 6);
  objc_msgSend_setNeedsMessageReindexingWithContext_completion_(v27, v30, v29, &unk_1F2FA0470);

  v33 = objc_msgSend_date(MEMORY[0x1E695DF00], v31, v32);
  v34 = CPCopySharedResourcesPreferencesDomainForDomain();
  v35 = v34;
  if (v34)
  {
    CFPreferencesAppSynchronize(v34);
    CFPreferencesSetAppValue(@"IMDCoreSpotlightLastFullReindexRequestTime", v33, v35);
    CFRelease(v35);
  }

LABEL_25:
  if (v6)
  {
    v6[2](v6);
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v27 = 134217984;
      v28 = objc_msgSend_count(v8, v13, v14);
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Got the callback for reindexSearchableItemsWithIdentifiers with %lu identifiers", &v27, 0xCu);
    }
  }

  v15 = objc_msgSend_count(v8, v10, v11) == 0;
  v16 = IMOSLoggingEnabled();
  if (v15)
  {
    if (v16)
    {
      v25 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "Not reindexing, we were asked to index 0 items", &v27, 2u);
      }
    }

    if (v9)
    {
      v9[2](v9);
    }
  }

  else
  {
    if (v16)
    {
      v17 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = objc_msgSend_count(v8, v18, v19);
        v27 = 134217984;
        v28 = v20;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Spotlight requesting reindexing of %lu identifiers, fullfilling request", &v27, 0xCu);
      }
    }

    v21 = [IMDCoreSpotlightSelectiveReindexingJob alloc];
    v23 = objc_msgSend_initWithItemIdentifiers_(v21, v22, v8);
    objc_msgSend_runWithAcknowledgementHandler_(v23, v24, v9);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)_createErrorFromSyncError:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = objc_msgSend_errorAnalyzer(self, v4, v5);
    v28 = &unk_1F2FCA308;
    v9 = objc_msgSend_responseForError_attempt_retryInterval_(v7, v8, v6, 0, &v28);
    v10 = v28;

    v11 = *MEMORY[0x1E696AA08];
    v29[0] = *MEMORY[0x1E69A6A68];
    v29[1] = v11;
    v30[0] = v10;
    v12 = MEMORY[0x1E696ABC0];
    v15 = objc_msgSend_domain(v6, v13, v14);
    v18 = objc_msgSend_code(v6, v16, v17);
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(v12, v19, v15, v18, 0);
    v30[1] = v20;
    v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, v30, v29, 2);

    v24 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v23, @"com.apple.messages.IndexRequestHandler", v9, v22);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v32 = "[IMDBaseSpotlightIndexController _createErrorFromSyncError:]";
        _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "%s originalError was nil, returning nil", buf, 0xCu);
      }
    }

    v24 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)fileURLForSearchableIndex:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 options:(int64_t)a6 error:(id *)a7
{
  v138 = *MEMORY[0x1E69E9840];
  v86 = a3;
  v12 = a4;
  v13 = a5;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Spotlight requesting fileURL for item identifier %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v134 = 0x3032000000;
  v135 = sub_1B7AE1AD0;
  v136 = sub_1B7AE2570;
  v15 = v12;
  v137 = v15;
  v117 = 0;
  v118 = &v117;
  v119 = 0x3032000000;
  v120 = sub_1B7AE1AD0;
  v121 = sub_1B7AE2570;
  v122 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x3032000000;
  v114 = sub_1B7AE1AD0;
  v115 = sub_1B7AE2570;
  v116 = 0;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = sub_1B7AE1AD0;
  v109 = sub_1B7AE2570;
  v110 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = sub_1B7AE1AD0;
  v103 = sub_1B7AE2570;
  v104 = 0;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(*(&buf + 1) + 40);
      *v126 = 138412290;
      v127 = v17;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Starting download of file transfer with GUID %@", v126, 0xCu);
    }
  }

  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v21 = objc_msgSend_delegate(self, v19, v20);
  v132 = *(*(&buf + 1) + 40);
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v22, &v132, 1);
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = sub_1B7BAC5C8;
  v92[3] = &unk_1E7CBBF98;
  v95 = &v99;
  v96 = &v111;
  v97 = &v117;
  v98 = &v105;
  p_buf = &buf;
  v92[4] = self;
  v24 = v18;
  v93 = v24;
  objc_msgSend_retrieveLocalFileURLForFileTransferWithGUIDs_options_completion_(v21, v25, v23, a6, v92);

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *v126 = 0;
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Beginning blocking index extension on file transfer download.", v126, 2u);
    }
  }

  v27 = dispatch_time(0, 180000000000);
  v28 = dispatch_group_wait(v24, v27);
  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *v126 = 0;
      _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Finished blocking index extension on file transfer download.", v126, 2u);
    }
  }

  v32 = v112[5];
  if (v32 || !v28)
  {
    if (!v32)
    {
      v53 = v118[5];
      if (v53)
      {
        if ((objc_msgSend_isEqualToString_(*(*(&buf + 1) + 40), v29, v53) & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v54 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              v55 = *(*(&buf + 1) + 40);
              v56 = v118[5];
              *v126 = 138412546;
              v127 = v55;
              v128 = 2112;
              v129 = v56;
              _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_INFO, "Requested download of file transfer with GUID %@ failed, but was able to derive a suggested retry GUID %@", v126, 0x16u);
            }
          }

          v57 = dispatch_group_create();
          dispatch_group_enter(v57);
          v60 = objc_msgSend_delegate(self, v58, v59);
          v125 = v118[5];
          v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v61, &v125, 1);
          v87[0] = MEMORY[0x1E69E9820];
          v87[1] = 3221225472;
          v87[2] = sub_1B7BAC8F0;
          v87[3] = &unk_1E7CBBFC0;
          v89 = &v117;
          v90 = &v99;
          v91 = &v111;
          v63 = v57;
          v88 = v63;
          objc_msgSend_retrieveLocalFileURLForFileTransferWithGUIDs_options_completion_(v60, v64, v62, a6, v87);

          if (IMOSLoggingEnabled())
          {
            v65 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              *v126 = 0;
              _os_log_impl(&dword_1B7AD5000, v65, OS_LOG_TYPE_INFO, "Beginning blocking index extension on secondary file transfer download.", v126, 2u);
            }
          }

          v66 = dispatch_time(0, 180000000000);
          dispatch_group_wait(v63, v66);
          if (IMOSLoggingEnabled())
          {
            v67 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              *v126 = 0;
              _os_log_impl(&dword_1B7AD5000, v67, OS_LOG_TYPE_INFO, "Finished blocking index extension on secondary file transfer download.", v126, 2u);
            }
          }
        }
      }
    }

    v49 = v112[5];
    if (v49 || a7 && (v68 = v106[5]) != 0 && (*a7 = v68, (v49 = v112[5]) != 0))
    {
      v50 = v100[5];
      if (!IMUTITypeIsSupportedByPhotos())
      {
        v70 = MEMORY[0x1E696ABC0];
        v123[0] = *MEMORY[0x1E696A578];
        v71 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v51, v52);
        v73 = objc_msgSend_localizedStringForKey_value_table_(v71, v72, @"File URL fetch operation was unsuccessful.", &stru_1F2FA9728, 0);
        v124[0] = v73;
        v123[1] = *MEMORY[0x1E696A588];
        v75 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v74, @"File transfer had an unsupported UTI %@", v100[5], v86);
        v124[1] = v75;
        v77 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v76, v124, v123, 2);
        v79 = objc_msgSend_errorWithDomain_code_userInfo_(v70, v78, *MEMORY[0x1E69A83D0], 256, v77);

        if (a7)
        {
          v80 = v79;
          *a7 = v79;
        }

        if (IMOSLoggingEnabled())
        {
          v81 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            v82 = *(*(&buf + 1) + 40);
            v83 = v100[5];
            *v126 = 138412546;
            v127 = v82;
            v128 = 2112;
            v129 = v83;
            _os_log_impl(&dword_1B7AD5000, v81, OS_LOG_TYPE_INFO, "File transfer with GUID %@ had unsupported UTI type %@", v126, 0x16u);
          }
        }

        goto LABEL_56;
      }

      v49 = v112[5];
    }

    v69 = v49;
    goto LABEL_57;
  }

  v33 = MEMORY[0x1E696ABC0];
  v130[0] = *MEMORY[0x1E696A578];
  v34 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v29, v30);
  v36 = objc_msgSend_localizedStringForKey_value_table_(v34, v35, @"File URL fetch operation was unsuccessful.", &stru_1F2FA9728, 0);
  v131[0] = v36;
  v130[1] = *MEMORY[0x1E696A588];
  v39 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v37, v38);
  v41 = objc_msgSend_localizedStringForKey_value_table_(v39, v40, @"Timed out while downloading file transfer.", &stru_1F2FA9728, 0);
  v131[1] = v41;
  v43 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v42, v131, v130, 2);
  v45 = objc_msgSend_errorWithDomain_code_userInfo_(v33, v44, *MEMORY[0x1E69A83D0], 257, v43);

  if (a7)
  {
    v46 = v45;
    *a7 = v45;
  }

  if (IMOSLoggingEnabled())
  {
    v47 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = *(*(&buf + 1) + 40);
      *v126 = 138412290;
      v127 = v48;
      _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_INFO, "Timed out while downloading file transfer with GUID %@", v126, 0xCu);
    }
  }

LABEL_56:
  v69 = 0;
LABEL_57:

  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v105, 8);

  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v117, 8);

  _Block_object_dispose(&buf, 8);
  v84 = *MEMORY[0x1E69E9840];

  return v69;
}

- (id)fileURLsForSearchableIndex:(id)a3 itemIdentifiers:(id)a4 typeIdentifier:(id)a5 options:(int64_t)a6 error:(id *)a7
{
  v201 = *MEMORY[0x1E69E9840];
  v125 = a3;
  v127 = a4;
  v126 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v127;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Spotlight requesting fileURL for item identifiers %@", &buf, 0xCu);
    }
  }

  if (objc_msgSend_count(v127, v9, v10))
  {
    v128 = v127;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v197 = 0x3032000000;
    v198 = sub_1B7AE1AD0;
    v199 = sub_1B7AE2570;
    v200 = objc_opt_new();
    v179 = 0;
    v180 = &v179;
    v181 = 0x3032000000;
    v182 = sub_1B7AE1AD0;
    v183 = sub_1B7AE2570;
    v184 = objc_opt_new();
    v173 = 0;
    v174 = &v173;
    v175 = 0x3032000000;
    v176 = sub_1B7AE1AD0;
    v177 = sub_1B7AE2570;
    v178 = objc_opt_new();
    v167 = 0;
    v168 = &v167;
    v169 = 0x3032000000;
    v170 = sub_1B7AE1AD0;
    v171 = sub_1B7AE2570;
    v172 = objc_opt_new();
    v161 = 0;
    v162 = &v161;
    v163 = 0x3032000000;
    v164 = sub_1B7AE1AD0;
    v165 = sub_1B7AE2570;
    v166 = objc_opt_new();
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v192 = 138412290;
        v193 = v128;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Starting download of file transfer with GUIDs %@", v192, 0xCu);
      }
    }

    v15 = dispatch_group_create();
    for (i = 0; i < objc_msgSend_count(v128, v13, v14); ++i)
    {
      dispatch_group_enter(v15);
    }

    v19 = objc_msgSend_delegate(self, v17, v18);
    v154[0] = MEMORY[0x1E69E9820];
    v154[1] = 3221225472;
    v154[2] = sub_1B7BADCA8;
    v154[3] = &unk_1E7CBBFE8;
    v157 = &v179;
    p_buf = &buf;
    v156 = &v167;
    v154[4] = self;
    v159 = &v173;
    v160 = &v161;
    group = v15;
    v155 = group;
    objc_msgSend_retrieveLocalFileURLForFileTransferWithGUIDs_options_completion_(v19, v20, v128, a6, v154);

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v192 = 0;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Beginning blocking index extension on file transfer download.", v192, 2u);
      }
    }

    v22 = dispatch_time(0, 180000000000);
    v23 = dispatch_group_wait(group, v22);
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *v192 = 0;
        _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Finished blocking index extension on file transfer download.", v192, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = @"YES";
        if (!v23)
        {
          v28 = @"NO";
        }

        *v192 = 138412546;
        v193 = v28;
        v194 = 2112;
        v195 = v128;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "Timed out: [%@] while downloading file transfer with GUIDs %@", v192, 0x16u);
      }
    }

    if (v23)
    {
      v29 = MEMORY[0x1E696ABC0];
      v190[0] = *MEMORY[0x1E696A578];
      v30 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v25, v26);
      v32 = objc_msgSend_localizedStringForKey_value_table_(v30, v31, @"File URL fetch operation was unsuccessful.", &stru_1F2FA9728, 0);
      v191[0] = v32;
      v190[1] = *MEMORY[0x1E696A588];
      v35 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v33, v34);
      v37 = objc_msgSend_localizedStringForKey_value_table_(v35, v36, @"Timed out while downloading file transfer.", &stru_1F2FA9728, 0);
      v191[1] = v37;
      v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v38, v191, v190, 2);
      v41 = objc_msgSend_errorWithDomain_code_userInfo_(v29, v40, *MEMORY[0x1E69A83D0], 257, v39);

      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v42 = v128;
      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v150, v189, 16);
      if (v45)
      {
        v46 = *v151;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v151 != v46)
            {
              objc_enumerationMutation(v42);
            }

            v48 = *(*(&v150 + 1) + 8 * j);
            if ((objc_msgSend_containsObject_(v162[5], v44, v48) & 1) == 0)
            {
              v49 = objc_msgSend_objectForKeyedSubscript_(v180[5], v44, v48);
              v50 = v49 == 0;

              if (v50)
              {
                if (IMOSLoggingEnabled())
                {
                  v52 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                  {
                    *v192 = 138412290;
                    v193 = v48;
                    _os_log_impl(&dword_1B7AD5000, v52, OS_LOG_TYPE_INFO, "Timed out while downloading file transfer with GUID %@", v192, 0xCu);
                  }
                }

                objc_msgSend_setObject_forKeyedSubscript_(v174[5], v51, v41, v48);
              }
            }
          }

          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v44, &v150, v189, 16);
        }

        while (v45);
      }

      if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *v192 = 138412290;
          v193 = v41;
          _os_log_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_INFO, "Timed out while downloading file transfers, error %@", v192, 0xCu);
        }
      }

      if (a7)
      {
        v54 = v41;
        *a7 = v41;
      }
    }

    v134 = objc_opt_new();
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v55 = v180[5];
    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v146, v188, 16);
    if (v58)
    {
      v59 = *v147;
      do
      {
        for (k = 0; k != v58; ++k)
        {
          if (*v147 != v59)
          {
            objc_enumerationMutation(v55);
          }

          v61 = *(*(&v146 + 1) + 8 * k);
          v62 = objc_msgSend_objectForKeyedSubscript_(*(*(&buf + 1) + 40), v57, v61);
          v64 = objc_msgSend_objectForKeyedSubscript_(v180[5], v63, v61);
          if (v64)
          {
            v66 = 1;
          }

          else
          {
            v66 = v62 == 0;
          }

          if (v66)
          {
          }

          else
          {
            isEqualToString = objc_msgSend_isEqualToString_(v61, v65, v62);
            if ((isEqualToString & 1) == 0)
            {
              if (IMOSLoggingEnabled())
              {
                v69 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                {
                  *v192 = 138412546;
                  v193 = v61;
                  v194 = 2112;
                  v195 = v62;
                  _os_log_impl(&dword_1B7AD5000, v69, OS_LOG_TYPE_INFO, "Requested download of file transfer with GUID %@ failed, but was able to derive a suggested retry GUID %@", v192, 0x16u);
                }
              }

              objc_msgSend_addObject_(v134, v68, v62);
            }
          }
        }

        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v57, &v146, v188, 16);
      }

      while (v58);
    }

    if (objc_msgSend_count(v134, v70, v71))
    {
      v74 = dispatch_group_create();
      for (m = 0; m < objc_msgSend_count(v134, v72, v73); ++m)
      {
        dispatch_group_enter(v74);
      }

      v78 = objc_msgSend_delegate(self, v76, v77);
      v142[0] = MEMORY[0x1E69E9820];
      v142[1] = 3221225472;
      v142[2] = sub_1B7BAE018;
      v142[3] = &unk_1E7CBC010;
      v144 = &v167;
      v145 = &v179;
      v79 = v74;
      v143 = v79;
      objc_msgSend_retrieveLocalFileURLForFileTransferWithGUIDs_options_completion_(v78, v80, v134, a6, v142);

      if (IMOSLoggingEnabled())
      {
        v81 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          *v192 = 0;
          _os_log_impl(&dword_1B7AD5000, v81, OS_LOG_TYPE_INFO, "Beginning blocking index extension on secondary file transfer download.", v192, 2u);
        }
      }

      v82 = dispatch_time(0, 180000000000);
      dispatch_group_wait(v79, v82);
      if (IMOSLoggingEnabled())
      {
        v83 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
        {
          *v192 = 0;
          _os_log_impl(&dword_1B7AD5000, v83, OS_LOG_TYPE_INFO, "Finished blocking index extension on secondary file transfer download.", v192, 2u);
        }
      }
    }

    if (NSClassFromString(&cfstr_Csfileurlbatch.isa))
    {
      v137 = objc_opt_new();
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      obja = v128;
      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v84, &v138, v187, 16);
      if (v86)
      {
        v87 = *v139;
        v129 = *MEMORY[0x1E69A83D0];
        v132 = *MEMORY[0x1E696A578];
        v130 = *MEMORY[0x1E696A588];
        do
        {
          for (n = 0; n != v86; ++n)
          {
            if (*v139 != v87)
            {
              objc_enumerationMutation(obja);
            }

            v89 = *(*(&v138 + 1) + 8 * n);
            v90 = objc_msgSend_objectForKeyedSubscript_(v180[5], v85, v89);

            if (v90)
            {
              v92 = objc_msgSend_objectForKeyedSubscript_(v168[5], v91, v89);
              IsSupportedByPhotos = IMUTITypeIsSupportedByPhotos();

              if ((IsSupportedByPhotos & 1) == 0)
              {
                v96 = MEMORY[0x1E696ABC0];
                v185[0] = v132;
                v97 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v94, v95);
                v99 = objc_msgSend_localizedStringForKey_value_table_(v97, v98, @"File URL fetch operation was unsuccessful.", &stru_1F2FA9728, 0);
                v186[0] = v99;
                v185[1] = v130;
                v100 = MEMORY[0x1E696AEC0];
                v102 = objc_msgSend_objectForKeyedSubscript_(v168[5], v101, v89);
                v104 = objc_msgSend_stringWithFormat_(v100, v103, @"File transfer had an unsupported UTI %@", v102);
                v186[1] = v104;
                v106 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v105, v186, v185, 2);
                v108 = objc_msgSend_errorWithDomain_code_userInfo_(v96, v107, v129, 256, v106);

                objc_msgSend_setObject_forKeyedSubscript_(v174[5], v109, v108, v89);
                if (IMOSLoggingEnabled())
                {
                  v110 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
                  {
                    v112 = objc_msgSend_objectForKeyedSubscript_(v168[5], v111, v89);
                    *v192 = 138412546;
                    v193 = v89;
                    v194 = 2112;
                    v195 = v112;
                    _os_log_impl(&dword_1B7AD5000, v110, OS_LOG_TYPE_INFO, "File transfer with GUID %@ had unsupported UTI type %@", v192, 0x16u);
                  }
                }
              }
            }

            v113 = objc_alloc(MEMORY[0x1E6964E18]);
            v115 = objc_msgSend_objectForKeyedSubscript_(v180[5], v114, v89);
            v117 = objc_msgSend_objectForKeyedSubscript_(v174[5], v116, v89);
            v119 = objc_msgSend_initWithFileURL_andError_(v113, v118, v115, v117);

            if (v119)
            {
              objc_msgSend_addObject_(v137, v120, v119);
            }
          }

          v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v85, &v138, v187, 16);
        }

        while (v86);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v121 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
        {
          *v192 = 0;
          _os_log_impl(&dword_1B7AD5000, v121, OS_LOG_TYPE_INFO, "class CSFileURLBatchResult not found!", v192, 2u);
        }
      }

      v137 = 0;
    }

    _Block_object_dispose(&v161, 8);
    _Block_object_dispose(&v167, 8);

    _Block_object_dispose(&v173, 8);
    _Block_object_dispose(&v179, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v137 = MEMORY[0x1E695E0F0];
  }

  v122 = *MEMORY[0x1E69E9840];

  return v137;
}

- (id)dataForSearchableIndex:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 error:(id *)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Spotlight requesting data for item %@ and type %@", &v23, 0x16u);
    }
  }

  v13 = v10;
  if (objc_msgSend_length(v13, v14, v15))
  {
    v17 = objc_msgSend_dataProviderForIdentifier_(IMDSpotlightDataProvider, v16, v11);
    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v20 = objc_msgSend_dataForGUID_error_(v17, v19, v13, a6);
      objc_autoreleasePoolPop(v18);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)searchableItemsDidUpdate:(id)a3 mask:(int64_t)a4
{
  v145 = *MEMORY[0x1E69E9840];
  v128 = a3;
  if (!objc_msgSend_count(v128, v5, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "searchableItemsDidUpdate called with no updated items, returning early.", buf, 2u);
      }
    }

    goto LABEL_85;
  }

  v9 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v7, v8);
  isPriorityMessagesEnabled = objc_msgSend_isPriorityMessagesEnabled(v9, v10, v11);

  if (!isPriorityMessagesEnabled)
  {
    if ((a4 & 1) == 0)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_85;
      }

      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v141 = a4;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "searchableItemsDidUpdate called with reason other than summaries (%ld), returning early.", buf, 0xCu);
      }

      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if ((a4 & 9) != 0)
  {
LABEL_13:
    v126 = objc_msgSend_messageSummarizationEnabled(MEMORY[0x1E69A8090], v13, v14);
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v141 = objc_msgSend_count(v128, v18, v19);
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Received searchableItemsDidUpdate callback with %llu items", buf, 0xCu);
      }
    }

    v131 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v129 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    obj = v128;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v136, v144, 16);
    if (!v23)
    {
LABEL_70:

      if (objc_msgSend_count(v129, v111, v112))
      {
        if (IMOSLoggingEnabled())
        {
          v117 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v117, OS_LOG_TYPE_INFO, "Setting chats with time sensitive messages", buf, 2u);
          }
        }

        v118 = objc_msgSend_delegate(self, v115, v116);
        objc_msgSend_updateChatsUsingMessageGUIDsWithPriority_(v118, v119, v129);
      }

      if (v126 && objc_msgSend_count(v131, v113, v114))
      {
        obja = objc_msgSend_delegate(self, v120, v121);
        objc_msgSend_updateChatsUsingMessageGUIDsAndSummaries_(obja, v122, v131);
      }

LABEL_84:

      goto LABEL_85;
    }

    v134 = a4 & v126;
    v25 = &selRef_isReindexing;
    v26 = *v137;
    v135 = (a4 >> 3) & 1;
    *&v24 = 138412546;
    v125 = v24;
LABEL_19:
    v27 = 0;
    v130 = v25[16];
    while (1)
    {
      if (*v137 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v136 + 1) + 8 * v27);
      v29 = objc_msgSend_uniqueIdentifier(v28, v21, v22, v125);
      v32 = objc_msgSend_attributeSet(v28, v30, v31);
      v35 = objc_msgSend_domainIdentifier(v32, v33, v34);
      isEqualToString = objc_msgSend_isEqualToString_(v35, v36, @"attachmentDomain");

      if (isEqualToString)
      {
        v40 = objc_msgSend_attributeSet(v28, v38, v39);
        v43 = objc_msgSend_ownerIdentifier(v40, v41, v42);

        v29 = v43;
      }

      if (!objc_msgSend_length(v29, v38, v39))
      {
        if (IMOSLoggingEnabled())
        {
          v123 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v141 = v28;
            _os_log_impl(&dword_1B7AD5000, v123, OS_LOG_TYPE_INFO, "uniqueIdentifier not set for item: %@", buf, 0xCu);
          }
        }

        goto LABEL_84;
      }

      v44 = objc_alloc(MEMORY[0x1E69A8148]);
      v46 = objc_msgSend_initWithEncodedMessagePartGUID_(v44, v45, v29);
      v49 = objc_msgSend_messageGUID(v46, v47, v48);

      if (v49)
      {
        v52 = objc_msgSend_messageGUID(v46, v50, v51);

        v29 = v52;
      }

      v53 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v50, v51);
      v56 = objc_msgSend_isPriorityMessagesEnabled(v53, v54, v55);

      if ((v135 & v56) == 1)
      {
        break;
      }

LABEL_40:
      if (v134)
      {
        v77 = objc_msgSend_attributeSet(v28, v57, v58);
        v80 = objc_msgSend_summarizationStatus(v77, v78, v79) == 1;

        if (v80)
        {
          v83 = objc_msgSend_attributeSet(v28, v81, v82);
          v86 = objc_msgSend_summarizationContentTopic(v83, v84, v85);

          v89 = objc_msgSend_attributeSet(v28, v87, v88);
          v92 = objc_msgSend_summarizationContentTopLine(v89, v90, v91);

          v95 = objc_msgSend_attributeSet(v28, v93, v94);
          v98 = objc_msgSend_summarizationContentSynopsis(v95, v96, v97);

          if (!v92)
          {
            if (v98)
            {
              v99 = v98;
              if (!IMOSLoggingEnabled())
              {
                goto LABEL_62;
              }

              v101 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v141 = v29;
                _os_log_impl(&dword_1B7AD5000, v101, OS_LOG_TYPE_INFO, "Using synopsis as summary for item with GUID %@.", buf, 0xCu);
              }
            }

            else
            {
              if (!v86)
              {
                v99 = IMLogHandleForCategory();
                if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v141 = v29;
                  _os_log_error_impl(&dword_1B7AD5000, v99, OS_LOG_TYPE_ERROR, "Unexpectedly received nil summary for item with identifier (%@) while summarization status was successful.", buf, 0xCu);
                }

                goto LABEL_63;
              }

              v99 = v86;
              if (!IMOSLoggingEnabled())
              {
                goto LABEL_62;
              }

              v101 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v141 = v29;
                _os_log_impl(&dword_1B7AD5000, v101, OS_LOG_TYPE_INFO, "Using topic as summary for item with GUID %@.", buf, 0xCu);
              }
            }

LABEL_61:

            goto LABEL_62;
          }

          v99 = v92;
          if (IMOSLoggingEnabled())
          {
            v101 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v141 = v29;
              _os_log_impl(&dword_1B7AD5000, v101, OS_LOG_TYPE_INFO, "Using topLine as summary for item with GUID %@.", buf, 0xCu);
            }

            goto LABEL_61;
          }

LABEL_62:
          objc_msgSend_setObject_forKey_(v131, v100, v99, v29);
LABEL_63:
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v102 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
            {
              v105 = objc_msgSend_attributeSet(v28, v103, v104);
              v108 = objc_msgSend_summarizationStatus(v105, v106, v107);
              *buf = v125;
              v141 = v29;
              v142 = 1024;
              v143 = v108;
              _os_log_impl(&dword_1B7AD5000, v102, OS_LOG_TYPE_INFO, "Item with identifier %@ has unsuccessful summarization status (%d). Will delete old summary.", buf, 0x12u);
            }
          }

          v86 = objc_alloc_init(MEMORY[0x1E696AAB0]);
          objc_msgSend_setObject_forKey_(v131, v109, v86, v29);
        }
      }

      if (v23 == ++v27)
      {
        v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v136, v144, 16);
        v23 = v110;
        v25 = &selRef_isReindexing;
        if (v110)
        {
          goto LABEL_19;
        }

        goto LABEL_70;
      }
    }

    v59 = objc_msgSend_attributeSet(v28, v57, v58);
    v60 = objc_opt_respondsToSelector();

    v63 = objc_msgSend_attributeSet(v28, v61, v62);
    v66 = v63;
    if (v60)
    {
      v67 = objc_msgSend_isTimeSensitive(v63, v64, v65);
      v70 = objc_msgSend_BOOLValue(v67, v68, v69);

      if (!v70)
      {
        goto LABEL_40;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_39;
      }

      v72 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v141 = v28;
        _os_log_impl(&dword_1B7AD5000, v72, OS_LOG_TYPE_INFO, "Time sensitive (isTimeSensitive) message set for item: %@", buf, 0xCu);
      }
    }

    else
    {
      v73 = objc_msgSend_isPriority(v63, v64, v65);
      v76 = objc_msgSend_BOOLValue(v73, v74, v75);

      if (!v76)
      {
        goto LABEL_40;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_39;
      }

      v72 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v141 = v28;
        _os_log_impl(&dword_1B7AD5000, v72, OS_LOG_TYPE_INFO, "Time sensitive (isPriority) message set for item: %@", buf, 0xCu);
      }
    }

LABEL_39:
    objc_msgSend_addObject_(v129, v71, v29);
    goto LABEL_40;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v141 = a4;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "searchableItemsDidUpdate called with reason other than summaries or time sensitivity (%ld), returning early.", buf, 0xCu);
    }

LABEL_7:
  }

LABEL_85:

  v124 = *MEMORY[0x1E69E9840];
}

- (IMDBaseSpotlightIndexControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end