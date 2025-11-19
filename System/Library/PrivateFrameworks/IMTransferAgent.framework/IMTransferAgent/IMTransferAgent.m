uint64_t sub_254851224()
{
  qword_28112D9C0 = objc_alloc_init(IMTransferAgentIDSInterface);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2548518C8(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 32) <= 0 && *(result + 40) == *(v1 + 36))
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v3 = 0;
        _os_log_impl(&dword_254850000, v2, OS_LOG_TYPE_INFO, "Idle exiting, we're done here", v3, 2u);
      }
    }

    exit(0);
  }

  return result;
}

void sub_254852018(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v36 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = @"NO";
      *buf = 138413570;
      *&buf[4] = v16;
      if (a2)
      {
        v25 = @"YES";
      }

      *&buf[12] = 2112;
      *&buf[14] = v25;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_254850000, v24, OS_LOG_TYPE_INFO, "Finished Uploading The Remote request file with SentPath: %@, Success: %@ Error: %@ OwnerID: %@ Signature: %@ RequestURLString: %@", buf, 0x3Eu);
    }
  }

  objc_msgSend__sendUploadResponse_topic_success_error_ownerID_signature_requestURLString_transferID_(*(a1 + 32), v23, v16, *(a1 + 40), a2, v21, v18, v19, v20, *(a1 + 48), *buf);

  v26 = *MEMORY[0x277D85DE8];
}

void sub_254852B68(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_254853DDC(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_domain(v1, v2, v3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x277D191A8]);

  if (isEqualToString)
  {
    v9 = objc_msgSend_code(v1, v7, v8) == -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_msgSend_domain(v1, v7, v8);
  v12 = objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x277CCA738]);

  if (v12)
  {
    v15 = objc_msgSend_code(v1, v13, v14);
    if ((v15 + 1019) <= 0x12)
    {
      v9 |= 0x56D03u >> (v15 - 5);
    }
  }

  return v9 & 1;
}

uint64_t sub_254853EE4()
{
  qword_28112D9C8 = objc_alloc_init(IMTransferAgentController);

  return MEMORY[0x2821F96F8]();
}

void sub_2548546C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x2548542C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_254854734(uint64_t a1, void *a2, double a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v11 = 134218242;
      v12 = a3;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Sent MMCS transfer progress updated to %0.02f  (%@)", &v11, 0x16u);
    }
  }

  if (*(a1 + 40))
  {
    objc_msgSend_protocolFileSize(v5, v6, v7);
    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_254854864(uint64_t a1, void *a2, unsigned int a3, int a4, int a5, void *a6)
{
  v99 = *MEMORY[0x277D85DE8];
  v79 = a2;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v76 = a3;
  v78 = v11;
  if ((a3 & 1) == 0)
  {
    shouldRetryUploadGivenMMCSError_retryAttemptCount = objc_msgSend__shouldRetryUploadGivenMMCSError_retryAttemptCount_(*(a1 + 32), v12, v11, *(a1 + 104));
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 40);
        v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v15, *(a1 + 104));
        v18 = v17;
        v19 = @"NO";
        *buf = 138413058;
        v88 = v16;
        v89 = 2112;
        if (shouldRetryUploadGivenMMCSError_retryAttemptCount)
        {
          v19 = @"YES";
        }

        v90 = v19;
        v91 = 2112;
        v92 = v17;
        v93 = 1024;
        LODWORD(v94) = 3;
        _os_log_impl(&dword_254850000, v14, OS_LOG_TYPE_INFO, "File transfer upload failed! %@  Should retry: %@   Retries: %@  Max Retries: %d", buf, 0x26u);
      }
    }

    if (shouldRetryUploadGivenMMCSError_retryAttemptCount)
    {
      v20 = ((*(a1 + 104) >> 1) * 5.0);
      v80[1] = MEMORY[0x277D85DD0];
      v80[2] = 3221225472;
      v80[3] = sub_254854E34;
      v80[4] = &unk_27978CBB0;
      v81 = WeakRetained;
      v77 = *(a1 + 32);
      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v23 = *(a1 + 40);
      *&v24 = v22;
      *(&v24 + 1) = v23;
      *&v25 = v77;
      *(&v25 + 1) = v21;
      v82 = v25;
      v83 = v24;
      v26 = *(a1 + 64);
      v86 = *(a1 + 104);
      v27 = *(a1 + 72);
      v28 = *(a1 + 80);
      v29 = *(a1 + 88);
      *&v30 = v28;
      *(&v30 + 1) = v29;
      *&v31 = v26;
      *(&v31 + 1) = v27;
      v84 = v31;
      v85 = v30;
      im_dispatch_after_primary_queue();

      v32 = v81;
LABEL_33:

      goto LABEL_34;
    }

    a4 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = @"NO";
      v37 = *(a1 + 40);
      *buf = 138413570;
      if (v76)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      v88 = v37;
      v89 = 2112;
      if (a4)
      {
        v39 = @"YES";
      }

      else
      {
        v39 = @"NO";
      }

      v90 = v79;
      if (a5)
      {
        v36 = @"YES";
      }

      v91 = 2112;
      v92 = v38;
      v93 = 2112;
      v94 = v39;
      v95 = 2112;
      v96 = v36;
      v97 = 2112;
      v98 = v78;
      _os_log_impl(&dword_254850000, v35, OS_LOG_TYPE_INFO, "transfer %@ completionBlock called with putFile %@ sucess %@ shouldRetry %@ shouldReauthorize %@ error %@", buf, 0x3Eu);
    }
  }

  if (*(a1 + 88))
  {
    v40 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v33, v34);
    v41 = *(a1 + 48);
    v80[0] = 0;
    v73 = objc_msgSend_attributesOfItemAtPath_error_(v40, v42, v41, v80);
    v74 = v80[0];

    if (v74 && IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = *(a1 + 48);
        *buf = 138412546;
        v88 = v45;
        v89 = 2112;
        v90 = v74;
        _os_log_impl(&dword_254850000, v44, OS_LOG_TYPE_INFO, "Transfer: Error reading attributes of file %@ (%@)", buf, 0x16u);
      }
    }

    v46 = *(a1 + 88);
    v72 = *(a1 + 48);
    v47 = objc_msgSend_objectForKeyedSubscript_(v73, v43, *MEMORY[0x277CCA1C0]);
    v50 = objc_msgSend_unsignedIntegerValue(v47, v48, v49);
    v53 = objc_msgSend_requestorID(v79, v51, v52);
    v56 = objc_msgSend_signature(v79, v54, v55);
    v59 = objc_msgSend_requestURL(v79, v57, v58);
    v62 = objc_msgSend_absoluteString(v59, v60, v61);
    v63 = MEMORY[0x277D25698];
    v66 = objc_msgSend_mmcsError(v79, v64, v65);
    v68 = objc_msgSend_failReasonStringForMMCSError_(v63, v67, v66);
    (*(v46 + 16))(v46, v76, v72, v50, v53, v56, v62, v78, v68);
  }

  if (v76 && IMTransferRequestIsForMessages(*(a1 + 56), *(a1 + 48)))
  {
    v32 = objc_msgSend_lastPathComponent(*(a1 + 48), v69, v70);
    IMGreenTeaAttachmentTransmitLoggingFormat();
    goto LABEL_33;
  }

LABEL_34:

  v71 = *MEMORY[0x277D85DE8];
}

uint64_t sub_254854E34(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_254850000, v3, OS_LOG_TYPE_INFO, "Needs to reauthorize, will retry using that: %@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 88);
  result = objc_msgSend__sendFilePath_topic_transferID_sourceAppID_retryAttemptCount_userInfo_progressBlock_completionBlock_(*(a1 + 40), v2, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 104) + 1, *(a1 + 80), v5, *(a1 + 96));
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254854F24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_254854F3C(uint64_t a1, int a2)
{
  v181 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_guid(*(a1 + 32), v6, v7);
      *buf = 138412290;
      v178 = v8;
      _os_log_impl(&dword_254850000, v5, OS_LOG_TYPE_INFO, "Registered transfer %@", buf, 0xCu);
    }
  }

  objc_msgSend_stopTimingForKey_(*(*(*(a1 + 120) + 8) + 40), v4, *(a1 + 40));
  if (a2)
  {
    v159 = objc_alloc_init(FTiMessageRequestMMCSUploadToken);
    if (objc_msgSend_length(*(a1 + 48), v10, v11))
    {
      objc_msgSend_setTopic_(v159, v12, *(a1 + 48));
    }

    v158 = objc_msgSend_signature(*(a1 + 32), v12, v13);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v178 = v158;
        _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Made signature: %@", buf, 0xCu);
      }
    }

    objc_msgSend_setSignature_(v159, v14, v158);
    v16 = MEMORY[0x277CCABB0];
    v19 = objc_msgSend_protocolFileSize(*(a1 + 32), v17, v18);
    v21 = objc_msgSend_numberWithUnsignedLongLong_(v16, v20, v19);
    objc_msgSend_setLength_(v159, v22, v21);

    if (*(a1 + 128) != 1)
    {
      objc_msgSend_setContentVersion_(v159, v23, 0);
LABEL_41:
      v108 = *(a1 + 64);
      if (v108)
      {
        v109 = objc_msgSend_valueForKey_(v108, v97, @"sP");
        objc_msgSend_setSenderID_(v159, v110, v109);

        v112 = objc_msgSend_valueForKey_(*(a1 + 64), v111, @"tP");
        objc_msgSend_setDestinationID_(v159, v113, v112);

        v115 = objc_msgSend_valueForKey_(*(a1 + 64), v114, @"sI");
        objc_msgSend_setAnonymousSenderID_(v159, v116, v115);

        v118 = objc_msgSend_valueForKey_(*(a1 + 64), v117, @"sT");
        objc_msgSend_setSessionToken_(v159, v119, v118);

        v121 = objc_msgSend_valueForKey_(*(a1 + 64), v120, @"t");
        objc_msgSend_setPushToken_(v159, v122, v121);
      }

      v123 = objc_msgSend_date(MEMORY[0x277CBEAA8], v97, v98);
      if (IMOSLoggingEnabled())
      {
        v124 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
        {
          v127 = objc_msgSend_guid(*(a1 + 32), v125, v126);
          *buf = 138412546;
          v178 = v127;
          v179 = 2112;
          v180 = v159;
          _os_log_impl(&dword_254850000, v124, OS_LOG_TYPE_INFO, "TransferID %@ Sending upload request: %@", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v128 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
        {
          v131 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v129, v130);
          v133 = objc_msgSend_linkQualityValueForInterfaceType_(v131, v132, 3);
          *buf = 67109120;
          LODWORD(v178) = v133;
          _os_log_impl(&dword_254850000, v128, OS_LOG_TYPE_INFO, "  Cell Link Quality: %d", buf, 8u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v134 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
        {
          v137 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v135, v136);
          v139 = objc_msgSend_linkQualityValueForInterfaceType_(v137, v138, 2);
          *buf = 67109120;
          LODWORD(v178) = v139;
          _os_log_impl(&dword_254850000, v134, OS_LOG_TYPE_INFO, "  WiFi Link Quality: %d", buf, 8u);
        }
      }

      v140 = _os_activity_create(&dword_254850000, "com.apple.messages.MMCSPreAuth", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
      objc_msgSend_startTimingForKey_(*(*(*(a1 + 120) + 8) + 40), v141, *(a1 + 72));
      v144 = objc_msgSend_sharedInstance(IMTransferAgentDeliveryController, v142, v143);
      v160[0] = MEMORY[0x277D85DD0];
      v160[1] = 3221225472;
      v160[2] = sub_254855C0C;
      v160[3] = &unk_27978CC28;
      v145 = *(a1 + 120);
      v161 = v140;
      v171 = v145;
      v162 = *(a1 + 72);
      v163 = *(a1 + 32);
      v164 = *(a1 + 80);
      v146 = *(a1 + 88);
      v147 = *(a1 + 56);
      v165 = v146;
      v166 = v147;
      v167 = *(a1 + 96);
      v168 = *(a1 + 104);
      v148 = *(a1 + 112);
      v172 = *(a1 + 128);
      v169 = v148;
      v170 = v123;
      v156 = v123;
      v157 = v140;
      objc_msgSend_sendFTMessage_completionBlock_(v144, v149, v159, v160);

      v67 = v161;
      goto LABEL_56;
    }

    v25 = objc_msgSend_getContentHeadersAsString(*(*(a1 + 56) + 8), v23, v24);
    v28 = objc_msgSend_authRequestData(*(a1 + 32), v26, v27);
    v29 = v28 == 0;

    if (v29)
    {
      if (IMOSLoggingEnabled())
      {
        v100 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
        {
          v103 = objc_msgSend_guid(*(a1 + 32), v101, v102);
          *buf = 138412290;
          v178 = v103;
          _os_log_impl(&dword_254850000, v100, OS_LOG_TYPE_INFO, "Tried to send Madrid AuthPut, but could not fetch content body for transfer: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v25)
      {
        objc_msgSend_setContentVersion_(v159, v30, 2);
        v33 = objc_msgSend_authRequestData(*(a1 + 32), v31, v32);
        objc_msgSend_setContentBody_(v159, v34, v33);

        objc_msgSend_setContentHeaders_(v159, v35, v25);
LABEL_40:

        goto LABEL_41;
      }

      if (IMOSLoggingEnabled())
      {
        v104 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
        {
          v107 = objc_msgSend_guid(*(a1 + 32), v105, v106);
          *buf = 138412290;
          v178 = v107;
          _os_log_impl(&dword_254850000, v104, OS_LOG_TYPE_INFO, "Tried to send Madrid AuthPut, but could not fetch content header for transfer: %@", buf, 0xCu);
        }
      }
    }

    objc_msgSend_setContentVersion_(v159, v99, 0);
    goto LABEL_40;
  }

  objc_msgSend_unregisterFiles_(*(*(a1 + 56) + 8), v9, *(a1 + 96));
  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = *(a1 + 32);
      *buf = 138412290;
      v178 = v39;
      _os_log_impl(&dword_254850000, v38, OS_LOG_TYPE_INFO, "Failed registering transfer: %@", buf, 0xCu);
    }
  }

  v159 = objc_msgSend_completionBlock(*(a1 + 32), v36, v37);
  if (v159)
  {
    (v159->super.super._topic)(v159, *(a1 + 32), 0, 0, 0, 0);
  }

  v175 = *MEMORY[0x277D1A0A0];
  v41 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v40, 44);
  v176 = v41;
  v155 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v42, &v176, &v175, 1);

  v45 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v43, v44);
  objc_msgSend_trackEvent_withDictionary_(v45, v46, *MEMORY[0x277D1A0B0], v155);

  v49 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v47, v48);
  v52 = objc_msgSend_wiFiActiveAndReachable(v49, v50, v51);

  if (v52)
  {
    v55 = 2;
  }

  else
  {
    v55 = 3;
  }

  v56 = MEMORY[0x277CCABB0];
  v57 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v53, v54);
  v59 = objc_msgSend_linkQualityValueForInterfaceType_(v57, v58, v55);
  v157 = objc_msgSend_numberWithInt_(v56, v60, v59);

  v61 = MEMORY[0x277CCABB0];
  v64 = objc_msgSend_protocolFileSize(*(a1 + 32), v62, v63);
  v156 = objc_msgSend_numberWithUnsignedLongLong_(v61, v65, v64);
  v67 = objc_msgSend_parseMMCSError_(MEMORY[0x277D25698], v66, 0);
  v173[0] = *MEMORY[0x277D1A2A0];
  v154 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v68, 0);
  v174[0] = v154;
  v173[1] = *MEMORY[0x277D1A318];
  v153 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v69, 0);
  v174[1] = v153;
  v173[2] = *MEMORY[0x277D1A378];
  v151 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v70, 1);
  v174[2] = v151;
  v72 = *MEMORY[0x277D1A300];
  v173[3] = *MEMORY[0x277D1A2C0];
  v173[4] = v72;
  v174[3] = &unk_28669F548;
  v174[4] = v157;
  v173[5] = *MEMORY[0x277D1A078];
  if (v52)
  {
    objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v71, 2, v151);
  }

  else
  {
    objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v71, 1, v151);
  }
  v73 = ;
  v174[5] = v73;
  v74 = *MEMORY[0x277D1A070];
  v174[6] = v156;
  v75 = *MEMORY[0x277D1A288];
  v173[6] = v74;
  v173[7] = v75;
  v77 = objc_msgSend_objectAtIndexedSubscript_(v67, v76, 0);
  v174[7] = v77;
  v173[8] = *MEMORY[0x277D1A280];
  v79 = objc_msgSend_objectAtIndexedSubscript_(v67, v78, 1);
  v174[8] = v79;
  v173[9] = *MEMORY[0x277D1A338];
  v81 = objc_msgSend_objectAtIndexedSubscript_(v67, v80, 2);
  v174[9] = v81;
  v173[10] = *MEMORY[0x277D1A330];
  v83 = objc_msgSend_objectAtIndexedSubscript_(v67, v82, 3);
  v174[10] = v83;
  v173[11] = *MEMORY[0x277D1A368];
  v85 = objc_msgSend_objectAtIndexedSubscript_(v67, v84, 4);
  v174[11] = v85;
  v173[12] = *MEMORY[0x277D1A360];
  v87 = objc_msgSend_objectAtIndexedSubscript_(v67, v86, 5);
  v174[12] = v87;
  v173[13] = *MEMORY[0x277D1A298];
  v89 = objc_msgSend_objectAtIndexedSubscript_(v67, v88, 6);
  v174[13] = v89;
  v173[14] = *MEMORY[0x277D1A290];
  v91 = objc_msgSend_objectAtIndexedSubscript_(v67, v90, 7);
  v174[14] = v91;
  v158 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v92, v174, v173, 15);

  v95 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v93, v94);
  objc_msgSend_trackEvent_withDictionary_(v95, v96, *MEMORY[0x277D1A0F8], v158);

LABEL_56:
  v150 = *MEMORY[0x277D85DE8];
}

void sub_254855B50(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25485570CLL);
  }

  _Unwind_Resume(a1);
}

void sub_254855C0C(uint64_t a1, void *a2, void *a3, int a4, unsigned int a5)
{
  v190 = *MEMORY[0x277D85DE8];
  v169 = a2;
  v9 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  objc_msgSend_stopTimingForKey_(*(*(*(a1 + 112) + 8) + 40), v10, *(a1 + 40));
  v172 = v9;
  v13 = objc_msgSend_responseContentVersion(v172, v11, v12);
  if (objc_msgSend_contentVersion(v172, v14, v15) >= 1 && v13 >= 1)
  {
    v18 = MEMORY[0x277D25680];
    v19 = objc_msgSend_responseContentHeaders(v172, v16, v17);
    v21 = objc_msgSend_parseContentHeaderAsDictionary_treatValuesAsArrays_(v18, v20, v19, v13 == 1);

    v22 = *(a1 + 48);
    v24 = objc_msgSend_objectForKeyedSubscript_(v21, v23, @"x-apple-mmcs-proto-version");
    v27 = objc_msgSend_firstObject(v24, v25, v26);
    objc_msgSend_setProtocolVersion_(v22, v28, v27);

    v31 = objc_msgSend_protocolVersion(*(a1 + 48), v29, v30);
    LODWORD(v24) = v31 == 0;

    if (v24)
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v37 = objc_msgSend_responseContentHeaders(v172, v35, v36);
          v40 = objc_msgSend_guid(*(a1 + 48), v38, v39);
          *buf = 134218498;
          *&buf[4] = v13;
          *&buf[12] = 2112;
          *&buf[14] = v37;
          *&buf[22] = 2112;
          v188 = v40;
          _os_log_impl(&dword_254850000, v34, OS_LOG_TYPE_INFO, "Madrid responded with 'cV': %tu, but no protocol version was found in header: %@ (transfer: %@)", buf, 0x20u);
        }
      }

      a4 = 0;
      a5 = 17;
    }

    v41 = *(a1 + 48);
    v42 = objc_msgSend_responseContentBody(v172, v32, v33);
    objc_msgSend_setAuthResponseData_(v41, v43, v42);

    v46 = objc_msgSend_authResponseData(*(a1 + 48), v44, v45);
    LODWORD(v42) = v46 == 0;

    if (v42)
    {
      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v50 = objc_msgSend_responseContentBody(v172, v48, v49);
          v53 = objc_msgSend_guid(*(a1 + 48), v51, v52);
          *buf = 134218498;
          *&buf[4] = v13;
          *&buf[12] = 2112;
          *&buf[14] = v50;
          *&buf[22] = 2112;
          v188 = v53;
          _os_log_impl(&dword_254850000, v47, OS_LOG_TYPE_INFO, "Madrid responded with 'cV': %tu, but no auth data was found in header: %@ (transfer: %@)", buf, 0x20u);
        }
      }

      a4 = 0;
      a5 = 17;
    }
  }

  if (objc_msgSend_contentVersion(v172, v16, v17) != v13 && IMOSLoggingEnabled())
  {
    v55 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v58 = objc_msgSend_contentVersion(v172, v56, v57);
      v61 = objc_msgSend_guid(*(a1 + 48), v59, v60);
      *buf = 134218498;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v58;
      *&buf[22] = 2112;
      v188 = v61;
      _os_log_impl(&dword_254850000, v55, OS_LOG_TYPE_INFO, "Madrid responded with 'cV': %tu, but we requested a 'cV': %tu (transfer: %@)", buf, 0x20u);
    }
  }

  if (a4)
  {
    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v67 = objc_msgSend_guid(*(a1 + 48), v65, v66);
        *buf = 138412546;
        *&buf[4] = v67;
        *&buf[12] = 2112;
        *&buf[14] = v172;
        _os_log_impl(&dword_254850000, v64, OS_LOG_TYPE_INFO, "TransferID %@ Finished sending mmcs upload request: %@", buf, 0x16u);
      }
    }

    v171 = objc_msgSend_responseAuthToken(v172, v62, v63);
    v70 = objc_msgSend_responseRequestURL(v172, v68, v69);
    v173 = objc_msgSend_responseRequestorID(v172, v71, v72);
    if (IMOSLoggingEnabled())
    {
      v73 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v171;
        _os_log_impl(&dword_254850000, v73, OS_LOG_TYPE_INFO, "    Auth token: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v74 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v70;
        _os_log_impl(&dword_254850000, v74, OS_LOG_TYPE_INFO, "   Request URL: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v76 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v173;
        _os_log_impl(&dword_254850000, v76, OS_LOG_TYPE_INFO, "      Owner ID: %@", buf, 0xCu);
      }
    }

    if (v70)
    {
      v77 = objc_msgSend_rangeOfString_(v70, v75, @"://");
    }

    else
    {
      v77 = -1;
    }

    v78 = v70;
    if (v77 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v78 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v75, @"http://%@", v70);
    }

    v170 = v78;
    if (v78)
    {
      v79 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v75, @"%@/%@", v78, v173);

      v70 = v79;
    }

    v167 = a5;
    if (v70)
    {
      v80 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v75, v70);
    }

    else
    {
      v80 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v82 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        v85 = objc_msgSend_guid(*(a1 + 48), v83, v84);
        v86 = *(a1 + 56);
        *buf = 138413314;
        *&buf[4] = v85;
        *&buf[12] = 2112;
        *&buf[14] = v86;
        *&buf[22] = 2112;
        v188 = v173;
        *v189 = 2112;
        *&v189[2] = v80;
        *&v189[10] = 2112;
        *&v189[12] = v171;
        _os_log_impl(&dword_254850000, v82, OS_LOG_TYPE_INFO, "Request to send transfer: %@ %@   requestorID: %@  requestURL: %@  auth token: %@", buf, 0x34u);
      }
    }

    objc_msgSend_startTimingForKey_(*(*(*(a1 + 112) + 8) + 40), v81, *(a1 + 64));
    v165 = v70;
    v87 = _os_activity_create(&dword_254850000, "com.apple.messages.MMCSPutFile", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3010000000;
    *v189 = 0;
    *&v189[8] = 0;
    v188 = &unk_25486E79B;
    os_activity_scope_enter(v87, v189);
    v88 = *(a1 + 80);
    v89 = *(*(a1 + 72) + 8);
    v90 = *(a1 + 88);
    v91 = *(a1 + 96);
    v92 = *(a1 + 120);
    v174[0] = MEMORY[0x277D85DD0];
    v174[1] = 3221225472;
    v174[2] = sub_254856A7C;
    v174[3] = &unk_27978CC00;
    v93 = *(a1 + 48);
    v94 = *(a1 + 112);
    v175 = v93;
    v179 = v94;
    v176 = *(a1 + 64);
    v95 = *(a1 + 104);
    v181 = v167;
    v180 = buf;
    v96 = *(a1 + 72);
    v177 = v95;
    v178 = v96;
    LOBYTE(v161) = v92;
    objc_msgSend_putFiles_requestURL_requestorID_transferID_sourceAppID_authToken_preauthenticate_completionBlock_(v89, v97, v88, v80, v173, v90, v91, v171, v161, v174);

    v98 = v165;
    _Block_object_dispose(buf, 8);
  }

  else
  {
    objc_msgSend_unregisterFiles_(*(*(a1 + 72) + 8), v54, *(a1 + 80));
    if (IMOSLoggingEnabled())
    {
      v100 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v172;
        _os_log_impl(&dword_254850000, v100, OS_LOG_TYPE_INFO, "Failed sending mmcs upload request: %@", buf, 0xCu);
      }
    }

    v185 = *MEMORY[0x277D1A0A0];
    v101 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v99, 45);
    v186 = v101;
    v103 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v102, &v186, &v185, 1);

    v106 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v104, v105);
    objc_msgSend_trackEvent_withDictionary_(v106, v107, *MEMORY[0x277D1A0B0], v103);

    v110 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v108, v109);
    v113 = objc_msgSend_wiFiActiveAndReachable(v110, v111, v112);

    v114 = MEMORY[0x277CCABB0];
    v117 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v115, v116);
    v119 = v117;
    if (v113)
    {
      v120 = objc_msgSend_linkQualityValueForInterfaceType_(v117, v118, 2);
    }

    else
    {
      v120 = objc_msgSend_linkQualityValueForInterfaceType_(v117, v118, 3);
    }

    v170 = objc_msgSend_numberWithInt_(v114, v121, v120);

    v162 = v103;
    v122 = MEMORY[0x277CCABB0];
    v125 = objc_msgSend_protocolFileSize(*(a1 + 48), v123, v124);
    v98 = objc_msgSend_numberWithUnsignedLongLong_(v122, v126, v125);
    v173 = objc_msgSend_parseMMCSError_(MEMORY[0x277D25698], v127, 0);
    v183[0] = *MEMORY[0x277D1A2A0];
    v168 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v128, a5);
    v184[0] = v168;
    v183[1] = *MEMORY[0x277D1A318];
    v166 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v129, 0);
    v184[1] = v166;
    v183[2] = *MEMORY[0x277D1A378];
    v164 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v130, 2);
    v132 = *MEMORY[0x277D1A2C0];
    v184[2] = v164;
    v184[3] = &unk_28669F548;
    v133 = *MEMORY[0x277D1A300];
    v183[3] = v132;
    v183[4] = v133;
    v184[4] = v170;
    v183[5] = *MEMORY[0x277D1A078];
    if (v113)
    {
      objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v131, 2);
    }

    else
    {
      objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v131, 1);
    }
    v163 = ;
    v134 = *MEMORY[0x277D1A070];
    v184[5] = v163;
    v184[6] = v98;
    v135 = *MEMORY[0x277D1A288];
    v183[6] = v134;
    v183[7] = v135;
    v137 = objc_msgSend_objectAtIndexedSubscript_(v173, v136, 0);
    v184[7] = v137;
    v183[8] = *MEMORY[0x277D1A280];
    v139 = objc_msgSend_objectAtIndexedSubscript_(v173, v138, 1);
    v184[8] = v139;
    v183[9] = *MEMORY[0x277D1A338];
    v141 = objc_msgSend_objectAtIndexedSubscript_(v173, v140, 2);
    v184[9] = v141;
    v183[10] = *MEMORY[0x277D1A330];
    v143 = objc_msgSend_objectAtIndexedSubscript_(v173, v142, 3);
    v184[10] = v143;
    v183[11] = *MEMORY[0x277D1A368];
    v145 = objc_msgSend_objectAtIndexedSubscript_(v173, v144, 4);
    v184[11] = v145;
    v183[12] = *MEMORY[0x277D1A360];
    v147 = objc_msgSend_objectAtIndexedSubscript_(v173, v146, 5);
    v184[12] = v147;
    v183[13] = *MEMORY[0x277D1A298];
    v149 = objc_msgSend_objectAtIndexedSubscript_(v173, v148, 6);
    v184[13] = v149;
    v183[14] = *MEMORY[0x277D1A290];
    v151 = objc_msgSend_objectAtIndexedSubscript_(v173, v150, 7);
    v184[14] = v151;
    v171 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v152, v184, v183, 15);

    v155 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v153, v154);
    objc_msgSend_trackEvent_withDictionary_(v155, v156, *MEMORY[0x277D1A0F8], v171);

    v159 = objc_msgSend_completionBlock(*(a1 + 48), v157, v158);
    v80 = v159;
    if (v159)
    {
      (*(v159 + 16))(v159, *(a1 + 48), 0, 0, 0, 0);
    }
  }

  os_activity_scope_leave(&state);
  v160 = *MEMORY[0x277D85DE8];
}

void sub_254856A7C(uint64_t a1, void *a2, int a3, void *a4)
{
  v196 = *MEMORY[0x277D85DE8];
  v179 = COERCE_DOUBLE(a2);
  v180 = a4;
  objc_msgSend_setMMCSError_(*(a1 + 32), v7, v180);
  objc_msgSend_stopTimingForKey_(*(*(*(a1 + 64) + 8) + 40), v8, *(a1 + 40));
  v181 = a1;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = objc_msgSend_guid(*(v181 + 32), v10, v11);
      v13 = *(*(*(v181 + 64) + 8) + 40);
      *buf = 138412546;
      v191 = *&v12;
      v192 = 2112;
      v193 = v13;
      _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Upload timing for transfer ID %@ %@", buf, 0x16u);
    }

    a1 = v181;
  }

  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v18 = objc_msgSend_date(MEMORY[0x277CBEAA8], v16, v17);
  objc_msgSend_timeIntervalSinceDate_(v18, v19, *(v181 + 48));
  v21 = v20;

  if (a3)
  {
    v24 = 0.0;
    if (v21 > 0.0)
    {
      v24 = objc_msgSend_protocolFileSize(*(v181 + 32), v22, v23) / v21 * 0.0009765625;
    }

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v191 = v179;
        v192 = 2048;
        v193 = v21;
        v194 = 2048;
        v195 = v24;
        _os_log_impl(&dword_254850000, v26, OS_LOG_TYPE_INFO, "Finished upload request for files: %@  upload time was: %f  speed: %.0f kb/s", buf, 0x20u);
      }
    }

    v188 = *MEMORY[0x277D1A0A0];
    v27 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v25, 0);
    v189 = v27;
    v174 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, &v189, &v188, 1);

    v31 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v29, v30);
    objc_msgSend_trackEvent_withDictionary_(v31, v32, *MEMORY[0x277D1A0B0], v174);

    v178 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v33, v34, v21);
    v35 = MEMORY[0x277CCABB0];
    v38 = objc_msgSend_protocolFileSize(*(v181 + 32), v36, v37);
    v177 = objc_msgSend_numberWithUnsignedLongLong_(v35, v39, v38);
    v42 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v40, v41);
    v45 = objc_msgSend_wiFiActiveAndReachable(v42, v43, v44);

    if (v45)
    {
      v48 = 2;
    }

    else
    {
      v48 = 3;
    }

    v49 = MEMORY[0x277CCABB0];
    v50 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v46, v47);
    v52 = objc_msgSend_linkQualityValueForInterfaceType_(v50, v51, v48);
    v176 = objc_msgSend_numberWithInt_(v49, v53, v52);

    v54 = MEMORY[0x277CCABB0];
    v57 = objc_msgSend_code(v180, v55, v56);
    v59 = objc_msgSend_numberWithInteger_(v54, v58, v57);
    v61 = objc_msgSend_parseMMCSError_(MEMORY[0x277D25698], v60, v180);
    v186[0] = *MEMORY[0x277D1A2A0];
    v172 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v62, *(v181 + 80));
    v187[0] = v172;
    v186[1] = *MEMORY[0x277D1A318];
    v170 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v63, 0);
    v187[1] = v170;
    v186[2] = *MEMORY[0x277D1A378];
    v168 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v64, 0);
    v187[2] = v168;
    v66 = *MEMORY[0x277D1A380];
    v186[3] = *MEMORY[0x277D1A2C0];
    v186[4] = v66;
    v187[3] = v59;
    v187[4] = v178;
    v67 = *MEMORY[0x277D1A300];
    v187[5] = v176;
    v68 = *MEMORY[0x277D1A078];
    v186[5] = v67;
    v186[6] = v68;
    if (v45)
    {
      objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v65, 2);
    }

    else
    {
      objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v65, 1);
    }
    v166 = ;
    v187[6] = v166;
    v69 = *MEMORY[0x277D1A070];
    v187[7] = v177;
    v70 = *MEMORY[0x277D1A288];
    v186[7] = v69;
    v186[8] = v70;
    v164 = objc_msgSend_objectAtIndexedSubscript_(v61, v71, 0);
    v187[8] = v164;
    v186[9] = *MEMORY[0x277D1A280];
    v73 = objc_msgSend_objectAtIndexedSubscript_(v61, v72, 1);
    v187[9] = v73;
    v186[10] = *MEMORY[0x277D1A338];
    v75 = objc_msgSend_objectAtIndexedSubscript_(v61, v74, 2);
    v187[10] = v75;
    v186[11] = *MEMORY[0x277D1A330];
    v77 = objc_msgSend_objectAtIndexedSubscript_(v61, v76, 3);
    v187[11] = v77;
    v186[12] = *MEMORY[0x277D1A368];
    v79 = objc_msgSend_objectAtIndexedSubscript_(v61, v78, 4);
    v187[12] = v79;
    v186[13] = *MEMORY[0x277D1A360];
    v81 = objc_msgSend_objectAtIndexedSubscript_(v61, v80, 5);
    v187[13] = v81;
    v186[14] = *MEMORY[0x277D1A298];
    v83 = objc_msgSend_objectAtIndexedSubscript_(v61, v82, 6);
    v187[14] = v83;
    v186[15] = *MEMORY[0x277D1A290];
    v85 = objc_msgSend_objectAtIndexedSubscript_(v61, v84, 7);
    v187[15] = v85;
    v87 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v86, v187, v186, 16);

    v90 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v88, v89);
    objc_msgSend_trackEvent_withDictionary_(v90, v91, *MEMORY[0x277D1A0F8], v87);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v94 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v191 = *&v180;
        v192 = 2112;
        v193 = v179;
        v194 = 2048;
        v195 = v21;
        _os_log_impl(&dword_254850000, v94, OS_LOG_TYPE_INFO, "Failed upload request: %@   files: %@   upload time was: %f", buf, 0x20u);
      }
    }

    v184 = *MEMORY[0x277D1A0A0];
    v95 = MEMORY[0x277CCABB0];
    v96 = objc_msgSend_code(v180, v92, v93);
    v98 = objc_msgSend_numberWithLong_(v95, v97, v96);
    v185 = v98;
    v175 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v99, &v185, &v184, 1);

    v102 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v100, v101);
    objc_msgSend_trackEvent_withDictionary_(v102, v103, *MEMORY[0x277D1A0B0], v175);

    v106 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v104, v105);
    v109 = objc_msgSend_wiFiActiveAndReachable(v106, v107, v108);

    if (v109)
    {
      v112 = 2;
    }

    else
    {
      v112 = 3;
    }

    v113 = MEMORY[0x277CCABB0];
    v114 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v110, v111);
    v116 = objc_msgSend_linkQualityValueForInterfaceType_(v114, v115, v112);
    v178 = objc_msgSend_numberWithInt_(v113, v117, v116);

    v118 = MEMORY[0x277CCABB0];
    v121 = objc_msgSend_protocolFileSize(*(v181 + 32), v119, v120);
    v177 = objc_msgSend_numberWithUnsignedLongLong_(v118, v122, v121);
    v123 = MEMORY[0x277CCABB0];
    v126 = objc_msgSend_code(v180, v124, v125);
    v176 = objc_msgSend_numberWithInteger_(v123, v127, v126);
    v59 = objc_msgSend_parseMMCSError_(MEMORY[0x277D25698], v128, v180);
    v61 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v129, v130, v21);
    v182[0] = *MEMORY[0x277D1A2A0];
    v173 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v131, *(v181 + 80));
    v183[0] = v173;
    v182[1] = *MEMORY[0x277D1A318];
    v171 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v132, 0);
    v183[1] = v171;
    v182[2] = *MEMORY[0x277D1A378];
    v169 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v133, 0);
    v183[2] = v169;
    v135 = *MEMORY[0x277D1A380];
    v182[3] = *MEMORY[0x277D1A2C0];
    v182[4] = v135;
    v183[3] = v176;
    v183[4] = v61;
    v136 = *MEMORY[0x277D1A300];
    v183[5] = v178;
    v137 = *MEMORY[0x277D1A078];
    v182[5] = v136;
    v182[6] = v137;
    if (v109)
    {
      objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v134, 2);
    }

    else
    {
      objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v134, 1);
    }
    v167 = ;
    v183[6] = v167;
    v138 = *MEMORY[0x277D1A070];
    v183[7] = v177;
    v139 = *MEMORY[0x277D1A288];
    v182[7] = v138;
    v182[8] = v139;
    v165 = objc_msgSend_objectAtIndexedSubscript_(v59, v140, 0);
    v183[8] = v165;
    v182[9] = *MEMORY[0x277D1A280];
    v142 = objc_msgSend_objectAtIndexedSubscript_(v59, v141, 1);
    v183[9] = v142;
    v182[10] = *MEMORY[0x277D1A338];
    v144 = objc_msgSend_objectAtIndexedSubscript_(v59, v143, 2);
    v183[10] = v144;
    v182[11] = *MEMORY[0x277D1A330];
    v146 = objc_msgSend_objectAtIndexedSubscript_(v59, v145, 3);
    v183[11] = v146;
    v182[12] = *MEMORY[0x277D1A368];
    v148 = objc_msgSend_objectAtIndexedSubscript_(v59, v147, 4);
    v183[12] = v148;
    v182[13] = *MEMORY[0x277D1A360];
    v150 = objc_msgSend_objectAtIndexedSubscript_(v59, v149, 5);
    v183[13] = v150;
    v182[14] = *MEMORY[0x277D1A298];
    v152 = objc_msgSend_objectAtIndexedSubscript_(v59, v151, 6);
    v183[14] = v152;
    v182[15] = *MEMORY[0x277D1A290];
    v154 = objc_msgSend_objectAtIndexedSubscript_(v59, v153, 7);
    v183[15] = v154;
    v87 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v155, v183, v182, 16);

    v158 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v156, v157);
    objc_msgSend_trackEvent_withDictionary_(v158, v159, *MEMORY[0x277D1A0F8], v87);

    v90 = objc_msgSend_completionBlock(*(v181 + 32), v160, v161);
    os_activity_scope_leave((*(*(v181 + 72) + 8) + 32));
    if (v90)
    {
      v90[2](v90, *(v181 + 32), 0, 0, 0, 0);
    }
  }

  objc_msgSend_unregisterFiles_(*(*(v181 + 56) + 8), v162, *&v179);
  v163 = *MEMORY[0x277D85DE8];
}

void sub_254857D2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  im_assert_primary_queue();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_254857E6C;
  v13[3] = &unk_27978CC78;
  v15 = *(a1 + 80);
  v7 = v6;
  v14 = v7;
  v16 = *(a1 + 104);
  v10 = MEMORY[0x259C1C440](v13);
  if (!*(a1 + 32) || *(a1 + 96) >> 20)
  {
    objc_msgSend__sendFilePath_topic_transferID_sourceAppID_retryAttemptCount_userInfo_progressBlock_completionBlock_(*(a1 + 64), v8, v5, *(a1 + 40), *(a1 + 48), *(a1 + 56), 0, *(a1 + 72), *(a1 + 88), v10);
  }

  else
  {
    v11 = objc_msgSend_sharedInstance(IMTransferAgentIDSInterface, v8, v9);
    objc_msgSend_remoteUploadFileRequest_topic_transferID_sourceAppID_completionBlock_(v11, v12, v5, *(a1 + 40), *(a1 + 48), *(a1 + 56), v10);
  }
}

void sub_254857E6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v38 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  im_assert_primary_queue();
  v21 = *(a1 + 32);
  (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
  if (*(a1 + 48) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v15;
        _os_log_impl(&dword_254850000, v24, OS_LOG_TYPE_INFO, "Cleaning up encrypted attachment path: %@", buf, 0xCu);
      }
    }

    if (v15)
    {
      v25 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v22, v23);
      v27 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v26, v15);
      v33 = 0;
      v29 = objc_msgSend_removeItemAtURL_error_(v25, v28, v27, &v33);
      v30 = v33;

      if ((v29 & 1) == 0 && IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v35 = v15;
          v36 = 2112;
          v37 = v30;
          _os_log_impl(&dword_254850000, v31, OS_LOG_TYPE_INFO, "Error cleaning up encrypted attachment path: %@  error: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v30 = 0;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_2548580E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a5;
  v8 = a4;
  im_assert_primary_queue();
  v9 = *(a1 + 32);
  v12 = objc_msgSend_path(v8, v10, v11);

  (*(v9 + 16))(v9, v12, v7);
}

void sub_254858E5C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x254858A04);
  }

  _Block_object_dispose((v62 - 176), 8);
  objc_destroyWeak((v62 - 232));
  _Unwind_Resume(exc_buf);
}

void sub_254858F48(uint64_t a1, void *a2, double a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v11 = 134218242;
      v12 = a3;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Received MMCS transfer progress updated to %0.02f  (%@)", &v11, 0x16u);
    }
  }

  if (*(a1 + 40))
  {
    objc_msgSend_protocolFileSize(v5, v6, v7);
    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_254859078(uint64_t a1, void *a2, uint64_t a3, char a4, int a5, void *a6)
{
  v69 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v64) = qos_class_self();
      _os_log_impl(&dword_254850000, v13, OS_LOG_TYPE_INFO, "Handling MMCSGetFile completion at qos (%u)", buf, 8u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 128));
  if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v64 = WeakRetained;
        _os_log_impl(&dword_254850000, v17, OS_LOG_TYPE_INFO, "Receiving file transfer complete: %@", buf, 0xCu);
      }
    }

    v18 = objc_msgSend_localPath(WeakRetained, v15, v16);
    IMGreenTeaAttachmentReadLoggingFormat();
  }

  if (a4)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_254853DDC(v12);
  }

  if (*(*(*(a1 + 112) + 8) + 24) < 3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a5)
  {
    v20 &= *(a1 + 144);
  }

  if ((a3 & 1) == 0 && IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = @"NO";
      if (v20)
      {
        v22 = @"YES";
      }

      v23 = *(*(*(a1 + 112) + 8) + 24);
      *buf = 138412802;
      v64 = v22;
      v65 = 1024;
      v66 = v23;
      v67 = 1024;
      v68 = 3;
      _os_log_impl(&dword_254850000, v21, OS_LOG_TYPE_INFO, "File transfer downloads failed!  Should retry: %@   Retries: %d  Max Retries: %d", buf, 0x18u);
    }
  }

  if (v20)
  {
    v24 = ((++*(*(*(a1 + 112) + 8) + 24) / 2) * 5.0);
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v55 = v25;
    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    *&v29 = v27;
    *(&v29 + 1) = v28;
    v56 = v29;
    v30 = *(a1 + 64);
    v31 = *(a1 + 72);
    v32 = *(a1 + 80);
    v62 = *(a1 + 136);
    v33 = *(a1 + 88);
    *&v34 = v32;
    *(&v34 + 1) = v33;
    *&v35 = v30;
    *(&v35 + 1) = v31;
    v57 = v35;
    v58 = v34;
    v36 = *(a1 + 96);
    v37 = *(a1 + 104);
    v38 = *(a1 + 120);
    v59 = WeakRetained;
    v39 = v11;
    v40 = *(a1 + 112);
    v60 = v39;
    *&v41 = v36;
    *(&v41 + 1) = v37;
    v61 = v41;
    im_dispatch_after_primary_queue();

    v42 = v55;
LABEL_32:

    goto LABEL_33;
  }

  v43 = *(*(a1 + 120) + 8);
  v44 = *(v43 + 40);
  *(v43 + 40) = 0;

  v47 = *(a1 + 104);
  if (v47)
  {
    v48 = *(a1 + 32);
    v49 = *(a1 + 56);
    v50 = MEMORY[0x277D25698];
    v51 = objc_msgSend_mmcsError(v11, v45, v46);
    v53 = objc_msgSend_failReasonStringForMMCSError_(v50, v52, v51);
    (*(v47 + 16))(v47, v48, v49, a3, v12, v53);
  }

  if (a3)
  {
    v42 = objc_msgSend_localPath(WeakRetained, v45, v46);
    IMGreenTeaAttachmentReadLoggingFormat();
    goto LABEL_32;
  }

LABEL_33:

  v54 = *MEMORY[0x277D85DE8];
}

void sub_254859574(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 152);
  v3 = IMOSLoggingEnabled();
  if (v2 == 1)
  {
    if (v3)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        *buf = 138412290;
        v25 = v6;
        _os_log_impl(&dword_254850000, v5, OS_LOG_TYPE_INFO, "Needs to re-authorize, will retry using that: %@", buf, 0xCu);
      }
    }

    v7 = *(a1 + 144);
    objc_msgSend__receiveFileTransfer_topic_path_requestURLString_ownerID_signature_allowReauthorize_fileSize_sourceAppID_progressBlock_completionBlock_(*(a1 + 40), v4, *(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), 0, v7, *(a1 + 88), *(a1 + 112), *(a1 + 120));
  }

  else
  {
    if (v3)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(*(*(a1 + 128) + 8) + 40);
        *buf = 138412290;
        v25 = v9;
        _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Re-registering files: %@", buf, 0xCu);
      }
    }

    v10 = *(a1 + 40);
    v11 = *(v10 + 8);
    v12 = *(a1 + 128);
    v13 = *(*(v12 + 8) + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2548597B4;
    v18[3] = &unk_27978CD40;
    v22 = v12;
    v18[4] = v10;
    v19 = *(a1 + 96);
    v20 = *(a1 + 88);
    v14 = *(a1 + 104);
    v15 = *(a1 + 136);
    v21 = v14;
    v23 = v15;
    objc_msgSend_registerFilesForDownload_completionBlock_(v11, v16, v13, v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2548597B4(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_254850000, v4, OS_LOG_TYPE_INFO, "Getting transfers: %@", buf, 0xCu);
    }
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(*(*(a1 + 64) + 8) + 40);
  v8 = objc_msgSend_requestURL(*(a1 + 40), v2, v3);
  v11 = objc_msgSend_requestorID(*(a1 + 40), v9, v10);
  v12 = *(a1 + 48);
  v15 = objc_msgSend_authToken(*(a1 + 40), v13, v14);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_25485998C;
  v21[3] = &unk_27978CD18;
  v16 = *(a1 + 56);
  v17 = *(a1 + 72);
  v18 = *(a1 + 32);
  v22 = v16;
  v23 = v18;
  v24 = v17;
  objc_msgSend_getFiles_requestURL_requestorID_sourceAppID_authToken_completionBlock_(v6, v19, v7, v8, v11, v12, v15, v21);

  v20 = *MEMORY[0x277D85DE8];
}

void sub_25485998C(uint64_t a1, void *a2, int a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  objc_msgSend_setMMCSError_(*(a1 + 32), v9, v8);
  v10 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v10)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(*(*(a1 + 48) + 8) + 24);
        v16 = 138412546;
        v17 = v7;
        v18 = 1024;
        LODWORD(v19) = v13;
        _os_log_impl(&dword_254850000, v12, OS_LOG_TYPE_INFO, "Finished download request for files: %@     retry: %d", &v16, 0x12u);
      }

LABEL_9:
    }
  }

  else if (v10)
  {
    v12 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = *(*(*(a1 + 48) + 8) + 24);
      v16 = 138412802;
      v17 = v8;
      v18 = 2112;
      v19 = v7;
      v20 = 1024;
      v21 = v14;
      _os_log_impl(&dword_254850000, v12, OS_LOG_TYPE_INFO, "Failed download request: %@   files: %@   retry: %d", &v16, 0x1Cu);
    }

    goto LABEL_9;
  }

  objc_msgSend_unregisterFiles_(*(*(a1 + 40) + 8), v11, v7);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_254859B40(uint64_t a1, const char *a2)
{
  v2 = a2;
  v137 = *MEMORY[0x277D85DE8];
  objc_msgSend_stopTimingForKey_(*(*(*(a1 + 144) + 8) + 40), a2, *(a1 + 32));
  if (v2)
  {
    v5 = objc_alloc_init(FTiMessageRequestMMCSDownloadToken);
    if (objc_msgSend_length(*(a1 + 40), v6, v7))
    {
      objc_msgSend_setTopic_(v5, v8, *(a1 + 40));
    }

    objc_msgSend_setOwner_(v5, v8, *(a1 + 48));
    v10 = objc_msgSend_setSignature_(v5, v9, *(a1 + 56));
    v113 = v5;
    if (IMOptOutOfOptimizedMadridAttachmentDownloadPath(v10, v11))
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 64);
          *buf = 138412290;
          v132 = v16;
          _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Opting download with GUID %@ out of optimized AuthGet flow.", buf, 0xCu);
        }

        v5 = v113;
      }

      objc_msgSend_setContentVersion_(v5, v14, 0);
      goto LABEL_29;
    }

    v75 = objc_msgSend_getContentHeadersAsString(*(*(a1 + 72) + 8), v12, v13);
    if (v75)
    {
      objc_msgSend_setContentVersion_(v5, v74, 2);
      v76 = MEMORY[0x277CCACA8];
      v79 = objc_msgSend_scheme(*(a1 + 80), v77, v78);
      v82 = objc_msgSend_host(*(a1 + 80), v80, v81);
      v84 = objc_msgSend_stringWithFormat_(v76, v83, @"%@://%@", v79, v82);
      objc_msgSend_setAuthURLString_(v113, v85, v84);

      objc_msgSend_setContentHeaders_(v113, v86, v75);
      if (IMOSLoggingEnabled())
      {
        v87 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
        {
          v90 = objc_msgSend_contentHeaders(v113, v88, v89);
          v93 = objc_msgSend_messageBody(v113, v91, v92);
          v94 = *(a1 + 64);
          *buf = 138412802;
          v132 = v90;
          v133 = 2112;
          v134 = v93;
          v135 = 2112;
          v136 = v94;
          _os_log_impl(&dword_254850000, v87, OS_LOG_TYPE_INFO, "Sending Madrid AuthGet with content headers: %@ body:%@ for transfer: %@", buf, 0x20u);
        }

LABEL_27:
      }
    }

    else
    {
      objc_msgSend_setContentVersion_(v5, v74, 0);
      if (IMOSLoggingEnabled())
      {
        v87 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
        {
          v95 = *(a1 + 64);
          *buf = 138412290;
          v132 = v95;
          _os_log_impl(&dword_254850000, v87, OS_LOG_TYPE_INFO, "Tried to send Madrid AuthGet, but could not fetch content header for transfer: %@", buf, 0xCu);
        }

        goto LABEL_27;
      }
    }

LABEL_29:
    v96 = objc_msgSend_date(MEMORY[0x277CBEAA8], v17, v18);
    v97 = _os_activity_create(&dword_254850000, "com.apple.messages.MMCSPreAuth", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
    objc_msgSend_startTimingForKey_(*(*(*(a1 + 144) + 8) + 40), v98, *(a1 + 88));
    v101 = objc_msgSend_sharedInstance(IMTransferAgentDeliveryController, v99, v100);
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = sub_25485A448;
    v114[3] = &unk_27978CDE0;
    v102 = *(a1 + 144);
    v115 = v97;
    v126 = v102;
    v116 = *(a1 + 88);
    v117 = *(a1 + 64);
    v118 = *(a1 + 96);
    v119 = *(a1 + 104);
    v120 = *(a1 + 112);
    v103 = *(a1 + 120);
    v104 = *(a1 + 72);
    v121 = v103;
    v122 = v104;
    v123 = *(a1 + 128);
    v124 = *(a1 + 136);
    v125 = v96;
    v112 = v96;
    v69 = v97;
    objc_msgSend_sendFTMessage_completionBlock_(v101, v105, v113, v114);

    v44 = v115;
    goto LABEL_30;
  }

  objc_msgSend_unregisterFiles_(*(*(a1 + 72) + 8), v4, *(a1 + 128));
  v21 = objc_msgSend_completionBlock(*(a1 + 104), v19, v20);
  v113 = v21;
  if (v21)
  {
    (*(v21 + 16))(v21, *(a1 + 104), 0, 0, 0, 0);
  }

  v129 = *MEMORY[0x277D1A0A0];
  v23 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v22, 44);
  v130 = v23;
  v111 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, &v130, &v129, 1);

  v27 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v25, v26);
  objc_msgSend_trackEvent_withDictionary_(v27, v28, *MEMORY[0x277D1A0A8], v111);

  v31 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v29, v30);
  v34 = objc_msgSend_wiFiActiveAndReachable(v31, v32, v33);

  if (v34)
  {
    v37 = 2;
  }

  else
  {
    v37 = 3;
  }

  v38 = MEMORY[0x277CCABB0];
  v39 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v35, v36);
  v41 = objc_msgSend_linkQualityValueForInterfaceType_(v39, v40, v37);
  v112 = objc_msgSend_numberWithInt_(v38, v42, v41);

  v44 = objc_msgSend_parseMMCSError_(MEMORY[0x277D25698], v43, 0);
  v127[0] = *MEMORY[0x277D1A2A0];
  v110 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v45, 0);
  v128[0] = v110;
  v127[1] = *MEMORY[0x277D1A318];
  v109 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v46, 0);
  v128[1] = v109;
  v127[2] = *MEMORY[0x277D1A378];
  v108 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v47, 1);
  v128[2] = v108;
  v49 = *MEMORY[0x277D1A300];
  v127[3] = *MEMORY[0x277D1A2C0];
  v127[4] = v49;
  v128[3] = &unk_28669F548;
  v128[4] = v112;
  v127[5] = *MEMORY[0x277D1A078];
  if (v34)
  {
    objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v48, 2);
  }

  else
  {
    objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v48, 1);
  }
  v107 = ;
  v128[5] = v107;
  v50 = *MEMORY[0x277D1A070];
  v128[6] = &unk_28669F548;
  v51 = *MEMORY[0x277D1A288];
  v127[6] = v50;
  v127[7] = v51;
  v53 = objc_msgSend_objectAtIndexedSubscript_(v44, v52, 0);
  v128[7] = v53;
  v127[8] = *MEMORY[0x277D1A280];
  v55 = objc_msgSend_objectAtIndexedSubscript_(v44, v54, 1);
  v128[8] = v55;
  v127[9] = *MEMORY[0x277D1A338];
  v57 = objc_msgSend_objectAtIndexedSubscript_(v44, v56, 2);
  v128[9] = v57;
  v127[10] = *MEMORY[0x277D1A330];
  v59 = objc_msgSend_objectAtIndexedSubscript_(v44, v58, 3);
  v128[10] = v59;
  v127[11] = *MEMORY[0x277D1A368];
  v61 = objc_msgSend_objectAtIndexedSubscript_(v44, v60, 4);
  v128[11] = v61;
  v127[12] = *MEMORY[0x277D1A360];
  v63 = objc_msgSend_objectAtIndexedSubscript_(v44, v62, 5);
  v128[12] = v63;
  v127[13] = *MEMORY[0x277D1A298];
  v65 = objc_msgSend_objectAtIndexedSubscript_(v44, v64, 6);
  v128[13] = v65;
  v127[14] = *MEMORY[0x277D1A290];
  v67 = objc_msgSend_objectAtIndexedSubscript_(v44, v66, 7);
  v128[14] = v67;
  v69 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v68, v128, v127, 15);

  v72 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v70, v71);
  objc_msgSend_trackEvent_withDictionary_(v72, v73, *MEMORY[0x277D1A0F0], v69);

LABEL_30:
  v106 = *MEMORY[0x277D85DE8];
}

void sub_25485A414(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25485A230);
  }

  _Unwind_Resume(a1);
}

void sub_25485A448(uint64_t a1, void *a2, void *a3, int a4, unsigned int a5)
{
  v140 = *MEMORY[0x277D85DE8];
  v116 = a2;
  v9 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = qos_class_self();
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&dword_254850000, v11, OS_LOG_TYPE_INFO, "Handling download MMCS auth at qos (%u)", buf, 8u);
    }
  }

  objc_msgSend_stopTimingForKey_(*(*(*(a1 + 120) + 8) + 40), v10, *(a1 + 40));
  v13 = v9;
  v16 = objc_msgSend_responseContentVersion(v13, v14, v15);
  v121 = v13;
  v21 = objc_msgSend_contentVersion(v13, v17, v18);
  if (v21 != v16 && IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 48);
      *buf = 134218498;
      *&buf[4] = v16;
      *&buf[12] = 2048;
      *&buf[14] = v21;
      *&buf[22] = 2112;
      v138 = v23;
      _os_log_impl(&dword_254850000, v22, OS_LOG_TYPE_INFO, "Madrid responded with 'cV': %tu, but we requested a 'cV': %tu (transfer: %@)", buf, 0x20u);
    }
  }

  if (v16 <= 0)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v24 = objc_msgSend_responseContentBody(v121, v19, v20);
    v25 = v24 == 0;

    if (v25)
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = *(a1 + 48);
          *buf = 134218242;
          *&buf[4] = v16;
          *&buf[12] = 2112;
          *&buf[14] = v32;
          _os_log_impl(&dword_254850000, v31, OS_LOG_TYPE_INFO, "Madrid responded with 'cV': %tu, but no response body (transfer: %@)", buf, 0x16u);
        }
      }

      a5 = 17;
      goto LABEL_26;
    }

    if (!a4)
    {
LABEL_26:
      objc_msgSend_unregisterFiles_(*(*(a1 + 88) + 8), v19, *(a1 + 96));
      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v121;
          *&buf[12] = 1024;
          *&buf[14] = a5;
          _os_log_impl(&dword_254850000, v35, OS_LOG_TYPE_INFO, "Failed sending mmcs download request: %@, error %u", buf, 0x12u);
        }
      }

      v120 = objc_msgSend_completionBlock(*(a1 + 64), v33, v34);
      v135 = *MEMORY[0x277D1A0A0];
      v37 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v36, 46);
      v136 = v37;
      v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, &v136, &v135, 1);

      v42 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v40, v41);
      objc_msgSend_trackEvent_withDictionary_(v42, v43, *MEMORY[0x277D1A0A8], v39);

      if (a5)
      {
        v118 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v44, @"IMTransferAgentErrorDomain", a5, 0);
      }

      else
      {
        v118 = 0;
      }

      v46 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v44, v45);
      v49 = objc_msgSend_wiFiActiveAndReachable(v46, v47, v48);

      v50 = MEMORY[0x277CCABB0];
      v53 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v51, v52);
      v55 = v53;
      if (v49)
      {
        v56 = objc_msgSend_linkQualityValueForInterfaceType_(v53, v54, 2);
      }

      else
      {
        v56 = objc_msgSend_linkQualityValueForInterfaceType_(v53, v54, 3);
      }

      v117 = objc_msgSend_numberWithInt_(v50, v57, v56);

      v111 = v39;
      v59 = objc_msgSend_parseMMCSError_(MEMORY[0x277D25698], v58, 0);
      v133[0] = *MEMORY[0x277D1A2A0];
      v115 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v60, a5);
      v134[0] = v115;
      v133[1] = *MEMORY[0x277D1A318];
      v114 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v61, 0);
      v134[1] = v114;
      v133[2] = *MEMORY[0x277D1A378];
      v113 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v62, 3);
      v64 = *MEMORY[0x277D1A2C0];
      v134[2] = v113;
      v134[3] = &unk_28669F548;
      v65 = *MEMORY[0x277D1A300];
      v133[3] = v64;
      v133[4] = v65;
      v134[4] = v117;
      v133[5] = *MEMORY[0x277D1A078];
      if (v49)
      {
        objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v63, 2);
      }

      else
      {
        objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v63, 1);
      }
      v112 = ;
      v66 = *MEMORY[0x277D1A070];
      v134[5] = v112;
      v134[6] = &unk_28669F548;
      v67 = *MEMORY[0x277D1A288];
      v133[6] = v66;
      v133[7] = v67;
      v69 = objc_msgSend_objectAtIndexedSubscript_(v59, v68, 0);
      v134[7] = v69;
      v133[8] = *MEMORY[0x277D1A280];
      v71 = objc_msgSend_objectAtIndexedSubscript_(v59, v70, 1);
      v134[8] = v71;
      v133[9] = *MEMORY[0x277D1A338];
      v73 = objc_msgSend_objectAtIndexedSubscript_(v59, v72, 2);
      v134[9] = v73;
      v133[10] = *MEMORY[0x277D1A330];
      v75 = objc_msgSend_objectAtIndexedSubscript_(v59, v74, 3);
      v134[10] = v75;
      v133[11] = *MEMORY[0x277D1A368];
      v77 = objc_msgSend_objectAtIndexedSubscript_(v59, v76, 4);
      v134[11] = v77;
      v133[12] = *MEMORY[0x277D1A360];
      v79 = objc_msgSend_objectAtIndexedSubscript_(v59, v78, 5);
      v134[12] = v79;
      v133[13] = *MEMORY[0x277D1A298];
      v81 = objc_msgSend_objectAtIndexedSubscript_(v59, v80, 6);
      v134[13] = v81;
      v133[14] = *MEMORY[0x277D1A290];
      v83 = objc_msgSend_objectAtIndexedSubscript_(v59, v82, 7);
      v134[14] = v83;
      v119 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v84, v134, v133, 15);

      v87 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v85, v86);
      objc_msgSend_trackEvent_withDictionary_(v87, v88, *MEMORY[0x277D1A0F0], v119);

      if (v120)
      {
        (v120)[2](v120, *(a1 + 64), 0, 0, 0, v118);
      }

      goto LABEL_48;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v121;
      _os_log_impl(&dword_254850000, v28, OS_LOG_TYPE_INFO, "Finished sending mmcs download request: %@", buf, 0xCu);
    }
  }

  v120 = objc_msgSend_responseAuthToken(v121, v26, v27);
  v30 = *(a1 + 56);
  if (v30)
  {
    v119 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v29, v30);
  }

  else
  {
    v119 = 0;
  }

  v118 = objc_msgSend_responseRequestorID(v121, v29, v30);
  objc_msgSend_setRequestorID_(*(a1 + 64), v89, v118);
  objc_msgSend_setAuthToken_(*(a1 + 64), v90, v120);
  v91 = *(a1 + 64);
  v94 = objc_msgSend_responseContentBody(v121, v92, v93);
  objc_msgSend_setAuthResponseData_(v91, v95, v94);

  if (IMOSLoggingEnabled())
  {
    v97 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      v98 = *(a1 + 64);
      v99 = *(a1 + 72);
      *buf = 138413058;
      *&buf[4] = v98;
      *&buf[12] = 2112;
      *&buf[14] = v99;
      *&buf[22] = 2112;
      v138 = v120;
      LOWORD(v139.opaque[0]) = 2112;
      *(v139.opaque + 2) = v118;
      _os_log_impl(&dword_254850000, v97, OS_LOG_TYPE_INFO, "Request to receive transfer: %@  path: %@  auth token: %@  requestor ID: %@", buf, 0x2Au);
    }
  }

  objc_msgSend_startTimingForKey_(*(*(*(a1 + 120) + 8) + 40), v96, *(a1 + 80));
  v100 = _os_activity_create(&dword_254850000, "com.apple.messages.MMCSGetFile", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3010000000;
  v139.opaque[0] = 0;
  v139.opaque[1] = 0;
  v138 = &unk_25486E79B;
  v117 = v100;
  os_activity_scope_enter(v100, &v139);
  v101 = *(a1 + 96);
  v102 = *(*(a1 + 88) + 8);
  v105 = objc_msgSend_requestorID(*(a1 + 64), v103, v104);
  v106 = *(a1 + 104);
  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = sub_25485AF74;
  v122[3] = &unk_27978CDB8;
  v129 = *(a1 + 120);
  v123 = *(a1 + 80);
  v124 = *(a1 + 64);
  v125 = *(a1 + 48);
  v126 = *(a1 + 112);
  v107 = *(a1 + 72);
  v131 = a5;
  v130 = buf;
  v108 = *(a1 + 88);
  v127 = v107;
  v128 = v108;
  objc_msgSend_getFiles_requestURL_requestorID_sourceAppID_authToken_completionBlock_(v102, v109, v101, v119, v105, v106, v120, v122);

  _Block_object_dispose(buf, 8);
LABEL_48:

  os_activity_scope_leave(&state);
  v110 = *MEMORY[0x277D85DE8];
}

void sub_25485AF74(uint64_t a1, void *a2, int a3, void *a4)
{
  v204[1] = *MEMORY[0x277D85DE8];
  v186 = a2;
  v7 = a4;
  objc_msgSend_stopTimingForKey_(*(*(*(a1 + 80) + 8) + 40), v8, *(a1 + 32));
  v187 = v7;
  objc_msgSend_setMMCSError_(*(a1 + 40), v9, v7);
  v188 = a1;
  if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 48);
        v14 = *(*(*(a1 + 80) + 8) + 40);
        *buf = 138412546;
        v198 = v13;
        v199 = 2112;
        v200 = v14;
        _os_log_impl(&dword_254850000, v12, OS_LOG_TYPE_INFO, "Download timing for transfer ID%@ %@", buf, 0x16u);
      }
    }

    v15 = *(*(a1 + 80) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;

    v203 = *MEMORY[0x277D1A0A0];
    v18 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v17, 0);
    v204[0] = v18;
    v181 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v204, &v203, 1);

    v22 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v20, v21);
    objc_msgSend_trackEvent_withDictionary_(v22, v23, *MEMORY[0x277D1A0A8], v181);

    v26 = objc_msgSend_date(MEMORY[0x277CBEAA8], v24, v25);
    objc_msgSend_timeIntervalSinceDate_(v26, v27, *(a1 + 56));
    v29 = v28;

    v32 = 0.0;
    if (v29 > 0.0)
    {
      v32 = objc_msgSend_protocolFileSize(*(a1 + 40), v30, v31) / v29 * 0.0009765625;
    }

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v198 = v186;
        _os_log_impl(&dword_254850000, v33, OS_LOG_TYPE_INFO, "Built download succeeded for files: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v198 = v186;
        v199 = 2048;
        v200 = v29;
        v201 = 2048;
        v202 = v32;
        _os_log_impl(&dword_254850000, v36, OS_LOG_TYPE_INFO, "Finished download request for files: %@  download time was: %f  speed: %.0f kb/s", buf, 0x20u);
      }
    }

    v37 = objc_msgSend_defaultHFSFileManager(MEMORY[0x277D19250], v34, v35);
    v38 = *(a1 + 64);
    v190 = 0;
    v185 = objc_msgSend_attributesOfItemAtPath_error_(v37, v39, v38, &v190);
    v183 = v190;

    v184 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v40, v41, v29);
    v44 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v42, v43);
    v47 = objc_msgSend_wiFiActiveAndReachable(v44, v45, v46);

    if (v47)
    {
      v50 = 2;
    }

    else
    {
      v50 = 3;
    }

    v51 = MEMORY[0x277CCABB0];
    v52 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v48, v49);
    v54 = objc_msgSend_linkQualityValueForInterfaceType_(v52, v53, v50);
    v189 = objc_msgSend_numberWithInt_(v51, v55, v54);

    v56 = MEMORY[0x277CCABB0];
    v59 = objc_msgSend_fileSize(v185, v57, v58);
    v61 = objc_msgSend_numberWithUnsignedLongLong_(v56, v60, v59);
    v62 = MEMORY[0x277CCABB0];
    v65 = objc_msgSend_code(v187, v63, v64);
    v171 = objc_msgSend_numberWithInteger_(v62, v66, v65);
    v68 = objc_msgSend_parseMMCSError_(MEMORY[0x277D25698], v67, v187);
    v195[0] = *MEMORY[0x277D1A2A0];
    v179 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v69, *(v188 + 96));
    v196[0] = v179;
    v195[1] = *MEMORY[0x277D1A318];
    v177 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v70, 0);
    v196[1] = v177;
    v195[2] = *MEMORY[0x277D1A378];
    v175 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v71, 0);
    v196[2] = v175;
    v73 = *MEMORY[0x277D1A090];
    v195[3] = *MEMORY[0x277D1A2C0];
    v195[4] = v73;
    v196[3] = v171;
    v196[4] = v184;
    v74 = *MEMORY[0x277D1A300];
    v196[5] = v189;
    v75 = *MEMORY[0x277D1A078];
    v195[5] = v74;
    v195[6] = v75;
    if (v47)
    {
      objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v72, 2);
    }

    else
    {
      objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v72, 1);
    }
    v173 = ;
    v196[6] = v173;
    v76 = *MEMORY[0x277D1A070];
    v196[7] = v61;
    v77 = *MEMORY[0x277D1A288];
    v195[7] = v76;
    v195[8] = v77;
    v172 = objc_msgSend_objectAtIndexedSubscript_(v68, v78, 0);
    v196[8] = v172;
    v195[9] = *MEMORY[0x277D1A280];
    v80 = objc_msgSend_objectAtIndexedSubscript_(v68, v79, 1);
    v196[9] = v80;
    v195[10] = *MEMORY[0x277D1A338];
    v82 = objc_msgSend_objectAtIndexedSubscript_(v68, v81, 2);
    v196[10] = v82;
    v195[11] = *MEMORY[0x277D1A330];
    v84 = objc_msgSend_objectAtIndexedSubscript_(v68, v83, 3);
    v196[11] = v84;
    v195[12] = *MEMORY[0x277D1A368];
    v86 = objc_msgSend_objectAtIndexedSubscript_(v68, v85, 4);
    v196[12] = v86;
    v195[13] = *MEMORY[0x277D1A360];
    v88 = objc_msgSend_objectAtIndexedSubscript_(v68, v87, 5);
    v196[13] = v88;
    v195[14] = *MEMORY[0x277D1A298];
    v90 = objc_msgSend_objectAtIndexedSubscript_(v68, v89, 6);
    v196[14] = v90;
    v195[15] = *MEMORY[0x277D1A290];
    v92 = objc_msgSend_objectAtIndexedSubscript_(v68, v91, 7);
    v196[15] = v92;
    v94 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v93, v196, v195, 16);

    v97 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v95, v96);
    objc_msgSend_trackEvent_withDictionary_(v97, v98, *MEMORY[0x277D1A0F0], v94);
  }

  else
  {
    v99 = objc_msgSend_date(MEMORY[0x277CBEAA8], v10, v11);
    objc_msgSend_timeIntervalSinceDate_(v99, v100, *(a1 + 56));
    v102 = v101;

    if (IMOSLoggingEnabled())
    {
      v105 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v198 = v186;
        v199 = 2112;
        v200 = *&v187;
        v201 = 2048;
        v202 = v102;
        _os_log_impl(&dword_254850000, v105, OS_LOG_TYPE_INFO, "Failed downloading files: %@  error: %@  time was: %f", buf, 0x20u);
      }
    }

    v193 = *MEMORY[0x277D1A0A0];
    v106 = MEMORY[0x277CCABB0];
    v107 = objc_msgSend_code(v187, v103, v104);
    v109 = objc_msgSend_numberWithLong_(v106, v108, v107);
    v194 = v109;
    v182 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v110, &v194, &v193, 1);

    v113 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v111, v112);
    objc_msgSend_trackEvent_withDictionary_(v113, v114, *MEMORY[0x277D1A0A8], v182);

    v185 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v115, v116, v102);
    v119 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v117, v118);
    v122 = objc_msgSend_wiFiActiveAndReachable(v119, v120, v121);

    if (v122)
    {
      v125 = 2;
    }

    else
    {
      v125 = 3;
    }

    v126 = MEMORY[0x277CCABB0];
    v127 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v123, v124);
    v129 = objc_msgSend_linkQualityValueForInterfaceType_(v127, v128, v125);
    v183 = objc_msgSend_numberWithInt_(v126, v130, v129);

    v131 = MEMORY[0x277CCABB0];
    v134 = objc_msgSend_code(v187, v132, v133);
    v184 = objc_msgSend_numberWithInteger_(v131, v135, v134);
    v189 = objc_msgSend_parseMMCSError_(MEMORY[0x277D25698], v136, v187);
    v191[0] = *MEMORY[0x277D1A2A0];
    v180 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v137, *(v188 + 96));
    v192[0] = v180;
    v191[1] = *MEMORY[0x277D1A318];
    v178 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v138, 0);
    v192[1] = v178;
    v191[2] = *MEMORY[0x277D1A378];
    v176 = objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v139, 0);
    v192[2] = v176;
    v141 = *MEMORY[0x277D1A090];
    v191[3] = *MEMORY[0x277D1A2C0];
    v191[4] = v141;
    v192[3] = v184;
    v192[4] = v185;
    v142 = *MEMORY[0x277D1A300];
    v192[5] = v183;
    v143 = *MEMORY[0x277D1A078];
    v191[5] = v142;
    v191[6] = v143;
    if (v122)
    {
      objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v140, 2);
    }

    else
    {
      objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v140, 1);
    }
    v174 = ;
    v192[6] = v174;
    v144 = *MEMORY[0x277D1A070];
    v192[7] = &unk_28669F548;
    v145 = *MEMORY[0x277D1A288];
    v191[7] = v144;
    v191[8] = v145;
    v147 = objc_msgSend_objectAtIndexedSubscript_(v189, v146, 0);
    v192[8] = v147;
    v191[9] = *MEMORY[0x277D1A280];
    v149 = objc_msgSend_objectAtIndexedSubscript_(v189, v148, 1);
    v192[9] = v149;
    v191[10] = *MEMORY[0x277D1A338];
    v151 = objc_msgSend_objectAtIndexedSubscript_(v189, v150, 2);
    v192[10] = v151;
    v191[11] = *MEMORY[0x277D1A330];
    v153 = objc_msgSend_objectAtIndexedSubscript_(v189, v152, 3);
    v192[11] = v153;
    v191[12] = *MEMORY[0x277D1A368];
    v155 = objc_msgSend_objectAtIndexedSubscript_(v189, v154, 4);
    v192[12] = v155;
    v191[13] = *MEMORY[0x277D1A360];
    v157 = objc_msgSend_objectAtIndexedSubscript_(v189, v156, 5);
    v192[13] = v157;
    v191[14] = *MEMORY[0x277D1A298];
    v159 = objc_msgSend_objectAtIndexedSubscript_(v189, v158, 6);
    v192[14] = v159;
    v191[15] = *MEMORY[0x277D1A290];
    v161 = objc_msgSend_objectAtIndexedSubscript_(v189, v160, 7);
    v192[15] = v161;
    v94 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v162, v192, v191, 16);

    v165 = objc_msgSend_sharedInstance(MEMORY[0x277D1AAA8], v163, v164);
    objc_msgSend_trackEvent_withDictionary_(v165, v166, *MEMORY[0x277D1A0F0], v94);

    v61 = objc_msgSend_completionBlock(*(v188 + 40), v167, v168);
    os_activity_scope_leave((*(*(v188 + 88) + 8) + 32));
    if (v61)
    {
      (v61)[2](v61, *(v188 + 40), 0, 0, 0, v187);
    }
  }

  objc_msgSend_unregisterFiles_(*(*(v188 + 72) + 8), v169, v186);
  v170 = *MEMORY[0x277D85DE8];
}

void sub_25485C060(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a5;
  v13 = a6;
  v14 = a3;
  im_assert_primary_queue();
  if (a4)
  {
    v16 = *(a1 + 32);
    v17 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v15, v14);

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_25485C1BC;
    v20[3] = &unk_27978CE30;
    v18 = *(a1 + 40);
    v23 = *(a1 + 48);
    v21 = v11;
    v22 = v13;
    objc_msgSend_ensureSafeAttachment_topic_withCompletionBlock_(v16, v19, v17, v18, v20);

    v14 = v23;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_25485C1BC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16[0] = 67109120;
      v16[1] = qos_class_self();
      _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Handling ensureSafeAttachment at qos (%u)", v16, 8u);
    }
  }

  im_assert_primary_queue();
  v10 = a1[6];
  v11 = a1[4];
  v14 = objc_msgSend_path(v7, v12, v13);
  (*(v10 + 16))(v10, v11, v14, a2, v8, a1[5]);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_25485C30C(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v31 = qos_class_self();
      _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Handling download completion at qos (%u)", buf, 8u);
    }
  }

  im_assert_primary_queue();
  if (a4 && objc_msgSend_length(*(a1 + 32), v16, v17))
  {
    v20 = objc_msgSend_sharedInstance(IMTransferEncryptionController, v18, v19);
    v22 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v21, v12);
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_25485C538;
    v27[3] = &unk_27978CE80;
    v29 = *(a1 + 56);
    v28 = *(a1 + 48);
    objc_msgSend_decryptURL_key_outputFileName_completionBlock_(v20, v25, v22, v23, v24, v27);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_25485C538(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v25) = qos_class_self();
      _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Handling download decryption at qos (%u)", buf, 8u);
    }
  }

  im_assert_primary_queue();
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = objc_msgSend_path(v8, v12, v13);
  (*(v10 + 16))(v10, v11, v14, a3, 0, 0);

  if (v8)
  {
    v17 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v15, v16);
    v23 = 0;
    v19 = objc_msgSend_removeItemAtURL_error_(v17, v18, v7, &v23);
    v20 = v23;

    if ((v19 & 1) == 0 && IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v25 = v7;
        v26 = 2112;
        v27 = v20;
        _os_log_impl(&dword_254850000, v21, OS_LOG_TYPE_INFO, "Error cleaning up encrypted attachment path: %@  error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_25485C94C(uint64_t a1, char a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  im_assert_primary_queue();
  if (a2)
  {
    if (objc_msgSend_isEqual_(*(a1 + 32), v9, v7))
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1 + 32);
          *buf = 138412290;
          v30 = v14;
          _os_log_impl(&dword_254850000, v13, OS_LOG_TYPE_INFO, "Generating safe render succeeded, but still using the original path since we cannot transcode the entire asset: %@", buf, 0xCu);
        }
      }

      v15 = 0;
      goto LABEL_17;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      *buf = 138412546;
      v30 = v17;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_254850000, v16, OS_LOG_TYPE_INFO, "Error generating safe render for transfer: %@ error: %@", buf, 0x16u);
    }
  }

  v18 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v10, v11);
  v19 = *(a1 + 32);
  v28 = 0;
  v21 = objc_msgSend_removeItemAtURL_error_(v18, v20, v19, &v28);
  v15 = v28;

  if ((v21 & 1) == 0 && IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 32);
      *buf = 138412546;
      v30 = v23;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_254850000, v22, OS_LOG_TYPE_INFO, "Error removing transfer: %@ error: %@", buf, 0x16u);
    }
  }

LABEL_17:
  if (v7)
  {
    v24 = v8 == 0;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v25, OS_LOG_TYPE_INFO, "Decontamination succeeded", buf, 2u);
      }
    }

    v26 = 0;
  }

  else
  {
    v26 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v12, *MEMORY[0x277D19E58], 28, 0);
  }

  (*(*(a1 + 40) + 16))();

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25485CD34()
{
  qword_28112D9D0 = objc_alloc_init(IMTransferAgentDeliveryController);

  return MEMORY[0x2821F96F8]();
}

void sub_25485D004(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  *&v27[5] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v9;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      *v27 = v12;
      _os_log_impl(&dword_254850000, v13, OS_LOG_TYPE_INFO, "    Delivered FTMessage: %@", &v26, 0xCu);
    }
  }

  v14 = _FZErrorTypeFromResponseCodeAndError();
  v15 = v14;
  if (v10)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14 == 0;
  }

  v17 = v16;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v26 = 67109376;
      v27[0] = a4;
      LOWORD(v27[1]) = 1024;
      *(&v27[1] + 2) = v15;
      _os_log_impl(&dword_254850000, v18, OS_LOG_TYPE_INFO, "    Result code: %d, errorType = %d", &v26, 0xEu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      *v27 = v11;
      _os_log_impl(&dword_254850000, v19, OS_LOG_TYPE_INFO, "    Result dictionary: %@", &v26, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      *v27 = v10;
      _os_log_impl(&dword_254850000, v20, OS_LOG_TYPE_INFO, "    Error: %@", &v26, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = @"NO";
      if (v17)
      {
        v22 = @"YES";
      }

      v26 = 138412290;
      *v27 = v22;
      _os_log_impl(&dword_254850000, v21, OS_LOG_TYPE_INFO, "  Success: %@", &v26, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_254850000, v23, OS_LOG_TYPE_INFO, "Sending callback for FTMessage send", &v26, 2u);
    }
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    (*(v24 + 16))(v24, *(a1 + 32), v12, v17, v15);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25485D424()
{
  qword_28112D9D8 = objc_alloc_init(IMTransferAgentNicknameController);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_25485D6FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25485D714(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
  v7 = objc_alloc(MEMORY[0x277CBC5D0]);
  v9 = objc_msgSend_initWithRecordName_(v7, v8, *(a1 + 32));
  v10 = objc_alloc(MEMORY[0x277CBC5D0]);
  v12 = objc_msgSend_stringByAppendingString_(*(a1 + 32), v11, @"-wp");
  v14 = objc_msgSend_initWithRecordName_(v10, v13, v12);

  objc_msgSend_addObject_(v6, v15, v9);
  v16 = *(a1 + 40) || *(a1 + 48) || *(a1 + 56) || *(a1 + 64) != 0;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 112);
      *buf = 67109890;
      v60 = v16;
      v61 = 1024;
      v62 = v19;
      v63 = 1024;
      v64 = 1;
      v65 = 2112;
      v66 = v14;
      _os_log_impl(&dword_254850000, v18, OS_LOG_TYPE_INFO, "Have some wallpaper tag: %i, knownSender: %i, shouldFetchWallpaperRecord: %i, wallpaperRecordID: %@", buf, 0x1Eu);
    }
  }

  if (v16 && *(a1 + 112) == 1)
  {
    objc_msgSend_addObject_(v6, v17, v14);
  }

  v20 = objc_alloc(MEMORY[0x277CBC3E0]);
  v22 = objc_msgSend_initWithRecordIDs_(v20, v21, v6);
  v25 = objc_msgSend_allKeys(MEMORY[0x277D1AAD0], v23, v24);
  objc_msgSend_setDesiredKeys_(v22, v26, v25);

  v27 = (a1 + 72);
  v30 = objc_msgSend__nickNameFetchConfiguration(*(a1 + 72), v28, v29);
  objc_msgSend_setConfiguration_(v22, v31, v30);

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_25485DAA8;
  v45[3] = &unk_27978CF48;
  v46 = *(a1 + 80);
  v47 = v9;
  v48 = v14;
  v49 = *(a1 + 88);
  v32 = *(a1 + 96);
  v33 = *(a1 + 72);
  v55 = v32;
  v50 = v33;
  v51 = *(a1 + 48);
  v52 = *(a1 + 56);
  v53 = *(a1 + 40);
  v34 = *(a1 + 64);
  v58 = *(a1 + 112);
  v35 = *(a1 + 104);
  v56 = v3;
  v57 = v35;
  v54 = v34;
  v36 = v3;
  v37 = v14;
  v38 = v9;
  objc_msgSend_setFetchRecordsCompletionBlock_(v22, v39, v45);
  v42 = objc_msgSend__nickNamePublicDB(*v27, v40, v41);
  objc_msgSend_addOperation_(v42, v43, v22);

  v44 = *MEMORY[0x277D85DE8];
}

void sub_25485DAA8(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v6;
      _os_log_impl(&dword_254850000, v7, OS_LOG_TYPE_INFO, "Public Nickname retrieval completed with error %@", buf, 0xCu);
    }
  }

  if (v6 && IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_userInfo(v6, v9, v10);
      *buf = 138412290;
      v40 = v11;
      _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Public nickname retrieval errors %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25485DDAC;
  block[3] = &unk_27978CF20;
  v30 = v6;
  v31 = v5;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v36 = *(a1 + 104);
  *&v16 = v15;
  *(&v16 + 1) = *(a1 + 64);
  *&v17 = v13;
  *(&v17 + 1) = v14;
  v32 = v17;
  v33 = v16;
  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  v20 = *(a1 + 88);
  v21 = *(a1 + 96);
  *&v22 = v20;
  *(&v22 + 1) = v21;
  *&v23 = v18;
  *(&v23 + 1) = v19;
  v34 = v23;
  v35 = v22;
  v38 = *(a1 + 128);
  v28 = *(a1 + 112);
  v24 = v28;
  v37 = v28;
  v25 = v5;
  v26 = v6;
  dispatch_async(v12, block);

  v27 = *MEMORY[0x277D85DE8];
}

void sub_25485DDAC(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v6 = objc_msgSend_objectForKey_(*(a1 + 40), 0, *(a1 + 48));
    v8 = objc_msgSend_objectForKey_(*(a1 + 40), v7, *(a1 + 56));
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v6;
        _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Public Nickname record found %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v8;
        _os_log_impl(&dword_254850000, v11, OS_LOG_TYPE_INFO, "Public Wallpaper record found %@", buf, 0xCu);
      }
    }

    v12 = *(a1 + 64);
    v31 = 0;
    v13 = objc_msgSend_preKeyWithDataRepresentation_error_(MEMORY[0x277D1AB00], v10, v12, &v31);
    v15 = v31;
    if (v13)
    {
      v16 = *(a1 + 80);
      v17 = *(a1 + 88);
      v18 = *(a1 + 96);
      v19 = *(a1 + 104);
      v20 = *(a1 + 136);
      v30 = v15;
      v21 = objc_msgSend_nicknameFromPublicRecord_wallpaperRecord_preKey_wallpaperDataTag_wallpaperLowResDataTag_wallpaperMetadataTag_avatarRecipeDataTag_knownSender_shouldDecodeImageFields_error_(MEMORY[0x277D1AAD0], v14, v6, v8, v13, v16, v17, v18, v19, v20, &v30);
      v22 = v30;

      if (v21)
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v33 = v21;
            _os_log_impl(&dword_254850000, v24, OS_LOG_TYPE_INFO, "Transfer agent sending back nickname: %@", buf, 0xCu);
          }
        }

        (*(*(a1 + 112) + 16))();
      }

      else
      {
        v26 = *(a1 + 112);
        v27 = objc_msgSend__errorWrappingError_(*(a1 + 72), v23, v22);
        (*(v26 + 16))(v26, 0, v27);
      }

      v15 = v22;
    }

    else
    {
      v25 = *(a1 + 112);
      v21 = objc_msgSend__errorWrappingError_(*(a1 + 72), v14, v15);
      (*(v25 + 16))(v25, 0, v21);
    }

    goto LABEL_25;
  }

  objc_storeStrong((*(*(a1 + 128) + 8) + 40), v2);
  if ((*(*(a1 + 120) + 16))())
  {
LABEL_25:
    v28 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *(a1 + 112);
  v29 = objc_msgSend__errorWrappingError_(*(a1 + 72), v3, *(*(*(a1 + 128) + 8) + 40));
  (*(v4 + 16))(v4, 0);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_25485E2BC(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v7, @"creatorUserRecordID == %@", v5);
  v9 = objc_alloc(MEMORY[0x277CBC578]);
  v11 = objc_msgSend_initWithRecordType_predicate_(v9, v10, @"imsgNicknamePublicv2", v8);
  v14 = objc_msgSend_defaultRecordZone(MEMORY[0x277CBC5E8], v12, v13);
  v17 = objc_msgSend_zoneID(v14, v15, v16);

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&dword_254850000, v20, OS_LOG_TYPE_INFO, "Querying for all record ids created by userRecordID %@", buf, 0xCu);
    }
  }

  v21 = objc_msgSend__nickNamePublicDB(*(a1 + 32), v18, v19);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_25485E4C4;
  v25[3] = &unk_27978CFC0;
  v26 = v17;
  v27 = *(a1 + 40);
  v22 = v17;
  objc_msgSend_performQuery_inZoneWithID_completionHandler_(v21, v23, v11, v22, v25);

  v24 = *MEMORY[0x277D85DE8];
}

void sub_25485E4C4(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v10 = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_254850000, v7, OS_LOG_TYPE_INFO, "Got back records in zone %@ created by current user %@ error %@", &v10, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

void sub_25485EBF8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25485E848);
  }

  _Unwind_Resume(a1);
}

void sub_25485EC18(uint64_t a1, unsigned int a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v28 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v24 = v22;
  v25 = *(a1 + 40);
  if (v25)
  {
    if (v22)
    {
      v26 = objc_msgSend__errorWrappingError_(*(a1 + 32), v23, v22);
      (*(v25 + 16))(v25, a2, v28, v16, v17, v18, v19, v20, v21, v26);
    }

    else
    {
      (*(v25 + 16))(v25, a2, v28, v16, v17, v18, v19, v20, v21, 0);
    }
  }
}

void sub_25485ED70(uint64_t a1, int a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v43 = a3;
  objc_msgSend_stopTimingForKey_(*(a1 + 32), v5, @"Nickname Upload");
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_totalTimeForKey_(*(a1 + 32), v7, @"Nickname Upload");
      *buf = 134217984;
      v46 = v8;
      _os_log_impl(&dword_254850000, v6, OS_LOG_TYPE_INFO, "Nickname uploaded in time: %f", buf, 0xCu);
    }
  }

  v9 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v9)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v12, OS_LOG_TYPE_INFO, "Encrypted Nickname stored in Public Database", buf, 2u);
      }
    }

    v13 = *(a1 + 40);
    v14 = objc_msgSend_recordID(*(a1 + 48), v10, v11);
    v44 = 0;
    updated = objc_msgSend_updateNicknameWithRecordID_error_(v13, v15, v14, &v44);
    v17 = v44;

    v20 = *(a1 + 96);
    if (updated)
    {
      v42 = *(a1 + 40);
      v21 = objc_msgSend_recordID(*(a1 + 48), v18, v19);
      v24 = objc_msgSend_recordName(v21, v22, v23);
      v27 = objc_msgSend_dataRepresentation(*(a1 + 56), v25, v26);
      v30 = objc_msgSend_dataRepresentation(*(a1 + 64), v28, v29);
      v33 = objc_msgSend_dataRepresentation(*(a1 + 72), v31, v32);
      v36 = objc_msgSend_dataRepresentation(*(a1 + 80), v34, v35);
      v39 = objc_msgSend_dataRepresentation(*(a1 + 88), v37, v38);
      (*(v20 + 16))(v20, 1, v42, v24, v27, v30, v33, v36, v39, 0);
    }

    else
    {
      (*(v20 + 16))(v20, 0, 0, 0, 0, 0, 0, 0, 0, v17);
    }
  }

  else
  {
    if (v9)
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v40, OS_LOG_TYPE_INFO, "Unable to store in Public Database, aborting fan out to other devices", buf, 2u);
      }
    }

    (*(*(a1 + 96) + 16))(*(a1 + 96), 0);
  }

  v41 = *MEMORY[0x277D85DE8];
}

void sub_25485F1FC(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v5 && objc_msgSend_count(v5, v6, v7))
  {
    v10 = objc_msgSend_arrayByApplyingSelector_(v5, v9, sel_recordID);
    v13 = objc_msgSend_mutableCopy(v10, v11, v12);

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v8;
        _os_log_impl(&dword_254850000, v14, OS_LOG_TYPE_INFO, "Going to delete recordIDs %@, with error", buf, 0xCu);
      }
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_25485F3C0;
    v21[3] = &unk_27978D060;
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v23 = v17;
    v21[4] = v18;
    v22 = v8;
    objc_msgSend__updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecords_deletingRecordIDs_queue_withCompletionBlock_(v15, v19, 0, v13, v16, v21);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_25485F3C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 48);
  if (v7)
  {
    v9 = v5;
    if (v5)
    {
      v8 = objc_msgSend__errorWrappingError_(*(a1 + 32), v6, *(a1 + 40));
      (*(v7 + 16))(v7, a2, v8);
    }

    else
    {
      (*(v7 + 16))(v7, a2, 0);
    }

    v5 = v9;
  }
}

void sub_25485F67C(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_msgSend_stopTimingForKey_(*(a1 + 32), v6, @"Nickname Delete");
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_totalTimeForKey_(*(a1 + 32), v9, @"Nickname Delete");
      v13 = 134217984;
      v14 = v10;
      _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Deleted nickname record in time: %f", &v13, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    objc_msgSend__updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecords_deletingRecordIDs_queue_withCompletionBlock_(*(a1 + 48), v7, *(a1 + 56), 0, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v11 = *(a1 + 72);
    if (v11)
    {
      (*(v11 + 16))(v11, a2, v5);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_25485FA94(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138412546;
      v36 = v7;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_254850000, v6, OS_LOG_TYPE_INFO, "Going to delete nicknames from public db %@ and save nickname to public db %@", buf, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = objc_msgSend_array(MEMORY[0x277CBEA60], v4, v5);
  }

  v11 = v10;
  v12 = objc_alloc(MEMORY[0x277CBC4A0]);
  if (*(a1 + 40))
  {
    v14 = objc_msgSend_initWithRecordsToSave_recordIDsToDelete_(v12, v13, *(a1 + 40), v11);
  }

  else
  {
    v14 = objc_msgSend_initWithRecordsToSave_recordIDsToDelete_(v12, v13, MEMORY[0x277CBEBF8], v11);
  }

  v17 = v14;
  v18 = objc_msgSend__nickNameSaveConfiguration(*(a1 + 48), v15, v16);
  objc_msgSend_setConfiguration_(v17, v19, v18);

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_25485FCB8;
  v29[3] = &unk_27978D150;
  v30 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v31 = *(a1 + 48);
  v32 = v20;
  v33 = v3;
  v34 = v21;
  v22 = v3;
  objc_msgSend_setModifyRecordsCompletionBlock_(v17, v23, v29);
  v26 = objc_msgSend__nickNamePublicDB(*(a1 + 48), v24, v25);
  objc_msgSend_addOperation_(v26, v27, v17);

  v28 = *MEMORY[0x277D85DE8];
}

void sub_25485FCB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_254850000, v10, OS_LOG_TYPE_INFO, "Public Nickname with recordID Publish completed with error %@", &buf, 0xCu);
    }
  }

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v25 = 0x2020000000;
    v26 = 0;
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_25485FF50;
    v16[3] = &unk_27978D128;
    p_buf = &buf;
    v19 = *(a1 + 56);
    v17 = *(a1 + 32);
    v20 = *(a1 + 48);
    v18 = v9;
    objc_msgSend__handleSaveNicknameError_queue_withCompletionBlock_(v11, v13, v18, v12, v16);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v14 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_25485FF38;
    block[3] = &unk_27978D0D8;
    v23 = *(a1 + 48);
    dispatch_async(v14, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_25485FF50(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = IMOSLoggingEnabled();
  if (!a2)
  {
    if (v4)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 40);
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_254850000, v10, OS_LOG_TYPE_INFO, "We should not retry the ck operation on this error %@", buf, 0xCu);
      }
    }

    v6 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2548601E0;
    v13[3] = &unk_27978D100;
    v7 = &v15;
    v15 = *(a1 + 56);
    v8 = &v14;
    v14 = *(a1 + 40);
    v9 = v13;
    goto LABEL_13;
  }

  if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = @"YES";
      _os_log_impl(&dword_254850000, v5, OS_LOG_TYPE_INFO, "We should retry the ck operation %@", buf, 0xCu);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 48) + 16))();
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v6 = *(a1 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2548601C8;
    v16[3] = &unk_27978D100;
    v7 = &v18;
    v18 = *(a1 + 56);
    v8 = &v17;
    v17 = *(a1 + 40);
    v9 = v16;
LABEL_13:
    dispatch_async(v6, v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2548604B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2548604E0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 24));
}

void sub_254860764(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_25486084C;
  v8[3] = &unk_27978D1C8;
  v11 = *(a1 + 64);
  v7 = *(a1 + 32);
  v2 = *(&v7 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v9 = v7;
  v10 = v5;
  v6 = MEMORY[0x259C1C440](v8);
  (*(*(a1 + 56) + 16))();
}

BOOL sub_25486084C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 64);
  if (v2 > 2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_254850000, v3, OS_LOG_TYPE_INFO, "Failed CloudKit operation. Too many retries.", v5, 2u);
      }
    }
  }

  else
  {
    objc_msgSend_cloudKitOperationWithRetryCount_queue_withError_operation_(*(a1 + 32), a2, v2 + 1, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  return v2 < 3;
}

uint64_t sub_254861104()
{
  qword_28112D9E0 = objc_alloc_init(IMTransferEncryptionController);

  return MEMORY[0x2821F96F8]();
}

id sub_2548613D8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v10 = objc_msgSend_objectForKey_(v7, v9, v8);
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = objc_msgSend_fileURL(v10, v12, v13);
      if (v15)
      {
        v11 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x277CBEA90], v14, v15, 0, a5);

        goto LABEL_16;
      }

      if (!a5)
      {
        goto LABEL_11;
      }

      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"Missing fileURL for CKAsset {key: %@, value: %@}", v8, v10);
      v17 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA068];
      v34[0] = v16;
      v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v34, &v33, 1);
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v20, *MEMORY[0x277D1A398], -1000, v19);
    }

    if (a5)
    {
      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"Unexpected type for {key: %@, value: %@}", v8, v10);
      v22 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA068];
      v32 = v21;
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, &v32, &v31, 1);
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v22, v25, *MEMORY[0x277D1A398], -1000, v24);
    }

LABEL_11:
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = v8;
        _os_log_impl(&dword_254850000, v26, OS_LOG_TYPE_INFO, "IMNickname CKRecord contains object for key '%@' but of unexpected type", buf, 0xCu);
      }
    }
  }

  v11 = 0;
LABEL_16:

  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

id sub_2548616A0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, __int16 a10, uint64_t a11)
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254850000, v23, OS_LOG_TYPE_INFO, "Decrypting nickname record", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v29 = 0;
      _os_log_impl(&dword_254850000, v25, OS_LOG_TYPE_INFO, "Handing Nickname data to BlastDoor to defuse", v29, 2u);
    }
  }

  v26 = objc_msgSend__blastdoorNicknameFromPublicRecord_wallpaperRecord_preKey_wallpaperDataTag_wallpaperLowResDataTag_wallpaperMetadataTag_avatarRecipeDataTag_knownSender_shouldDecodeImageFields_error_(a1, v24, v16, v17, v18, v19, v20, v21, v22, a10, a11);

  return v26;
}

id sub_254861888(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, unsigned __int8 a10, char a11, void *a12)
{
  v141[1] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v114 = a4;
  v115 = a5;
  value = a6;
  v117 = a7;
  v118 = a8;
  v19 = a9;
  v21 = v19;
  if (a12)
  {
    v108 = v19;
    v112 = objc_msgSend_dataFromCKRecord_forKey_error_(a1, v20, v18, @"n", a12);
    v22 = v114;
    v113 = objc_msgSend_dataFromCKRecord_forKey_error_(a1, v23, v18, @"am", a12);
    v110 = objc_msgSend_dataFromCKRecord_forKey_error_(a1, v24, v18, @"ad", a12);
    *&v111[8] = objc_msgSend_dataFromCKRecord_forKey_error_(a1, v25, v114, @"wd", a12);
    *v111 = objc_msgSend_dataFromCKRecord_forKey_error_(a1, v26, v114, @"lrwd", a12);
    *&v111[16] = objc_msgSend_dataFromCKRecord_forKey_error_(a1, v27, v114, @"wm", a12);
    v30 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v28, v29);
    isSwiftUIAvatarRenderingEnabled = objc_msgSend_isSwiftUIAvatarRenderingEnabled(v30, v31, v32);

    if (isSwiftUIAvatarRenderingEnabled)
    {
      v107 = objc_msgSend_dataFromCKRecord_forKey_error_(a1, v34, v114, @"ard", a12);
    }

    else
    {
      v107 = 0;
    }

    if (!v112)
    {
      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_254850000, v42, OS_LOG_TYPE_INFO, "CKRecord is missing required nickname data", &buf, 2u);
        }
      }

      v36 = 0;
      goto LABEL_101;
    }

    v140 = @"n";
    v141[0] = v112;
    v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, v141, &v140, 1);
    v109 = objc_msgSend_mutableCopy(v37, v38, v39);

    if (v113 && v110)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v109, v40, v110, @"ad");
      objc_msgSend_setObject_forKeyedSubscript_(v109, v41, v113, @"am");
    }

    else if (v113 | v110)
    {
      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_254850000, v43, OS_LOG_TYPE_INFO, "CKRecord contains incomplete avatar data", &buf, 2u);
        }

        goto LABEL_98;
      }

LABEL_99:
      v36 = 0;
LABEL_100:

LABEL_101:
      v21 = v108;
      goto LABEL_102;
    }

    if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = *&v111[8];
        _os_log_impl(&dword_254850000, v44, OS_LOG_TYPE_INFO, "Wallpaper | encryptedWallpaperData: %@", &buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = *&v111[16];
        _os_log_impl(&dword_254850000, v45, OS_LOG_TYPE_INFO, "Wallpaper | encryptedWallpaperMetadata: %@", &buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v46 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = *v111;
        _os_log_impl(&dword_254850000, v46, OS_LOG_TYPE_INFO, "Wallpaper | encryptedLowResWallpaperData: %@", &buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v107;
        _os_log_impl(&dword_254850000, v49, OS_LOG_TYPE_INFO, "Wallpaper | encryptedAvatarRecipeData: %@", &buf, 0xCu);
      }
    }

    v51 = (a11 & ~objc_msgSend_deviceIsLockedDown(MEMORY[0x277D1A9A0], v47, v48) & a10);
    if (v51 == 1 && *&v111[16] && *v111 != 0)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v109, v50, *&v111[16], @"wm");
      if (*v111)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v109, v50, *v111, @"lrwd");
      }

      if (*&v111[8])
      {
        objc_msgSend_setObject_forKeyedSubscript_(v109, v50, *&v111[8], @"wd");
      }

      goto LABEL_50;
    }

    if (!v51)
    {
LABEL_55:
      if (a10)
      {
        v105 = 0;
      }

      else
      {
        v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v56 = objc_msgSend_recordID(v18, v54, v55);
        v59 = objc_msgSend_recordName(v56, v57, v58);

        if (v59)
        {
          CFDictionarySetValue(v53, @"recordId", v59);
        }

        v62 = objc_msgSend_recordID(v114, v60, v61);
        v65 = objc_msgSend_recordName(v62, v63, v64);

        if (v65)
        {
          CFDictionarySetValue(v53, @"wallpaperRecordId", v65);
        }

        v68 = objc_msgSend_dataRepresentation(v115, v66, v67);
        if (v68)
        {
          CFDictionarySetValue(v53, @"preKey", v68);
        }

        if (value)
        {
          CFDictionarySetValue(v53, @"wallpaperDataTag", value);
        }

        if (v118)
        {
          CFDictionarySetValue(v53, @"wallpaperMetadataTag", v118);
        }

        if (v117)
        {
          CFDictionarySetValue(v53, @"wallpaperLowResDataTag", v117);
        }

        v105 = v53;
        if (v108)
        {
          CFDictionarySetValue(v53, @"avatarRecipeDataTag", v108);
        }
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v136 = 0x3032000000;
      v137 = sub_254862518;
      v138 = sub_254862528;
      v139 = 0;
      v127 = 0;
      v128 = &v127;
      v129 = 0x3032000000;
      v130 = sub_254862518;
      v131 = sub_254862528;
      v132 = 0;
      v69 = dispatch_semaphore_create(0);
      v106 = objc_msgSend_contextWithKnownSender_(MEMORY[0x277D1AB80], v70, a10);
      v104 = MEMORY[0x277D1A8B0];
      v73 = objc_msgSend_recordID(v18, v71, v72);
      v76 = objc_msgSend_recordName(v73, v74, v75);
      v79 = objc_msgSend_dataRepresentation(v115, v77, v78);
      v80 = v51 == 0;
      if (v51)
      {
        v81 = v108;
      }

      else
      {
        v81 = 0;
      }

      if (v51)
      {
        v82 = v118;
      }

      else
      {
        v82 = 0;
      }

      if (v51)
      {
        v83 = v117;
      }

      else
      {
        v83 = 0;
      }

      if (v80)
      {
        v84 = 0;
      }

      else
      {
        v84 = value;
      }

      v120[0] = MEMORY[0x277D85DD0];
      v120[1] = 3221225472;
      v120[2] = sub_254862530;
      v120[3] = &unk_27978D2A8;
      p_buf = &buf;
      v85 = v69;
      v121 = v85;
      v126 = a1;
      v122 = v18;
      v125 = &v127;
      v86 = v105;
      v123 = v86;
      v103 = v81;
      v22 = v114;
      objc_msgSend_generateNickname_senderContext_forRecordID_wallpaperDataTag_wallpaperLowResDataTag_wallpaperMetadataTag_avatarRecipeDataTag_withKey_processImageFields_completionBlock_(v104, v87, v109, v106, v76, v84, v83, v82, v103, v79, a11, v120);

      v88 = dispatch_time(0, 10000000000);
      if (dispatch_semaphore_wait(v85, v88))
      {
        if (IMOSLoggingEnabled())
        {
          v91 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
          {
            *v119 = 0;
            _os_log_impl(&dword_254850000, v91, OS_LOG_TYPE_INFO, "Timed out while waiting for Nickname BlastDoor and/or content analysis.", v119, 2u);
          }
        }

        v92 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v90, *MEMORY[0x277D1A398], -3000, 0);
        v93 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v92;
      }

      v36 = v128[5];
      if (v36)
      {
        v94 = v36;
      }

      else
      {
        v95 = *(*(&buf + 1) + 40);
        if (!v95)
        {
          v96 = MEMORY[0x277CCA9B8];
          v133 = *MEMORY[0x277CCA068];
          v134 = @"Neither error nor result from blastdoor completion handler";
          v97 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v89, &v134, &v133, 1);
          v99 = objc_msgSend_errorWithDomain_code_userInfo_(v96, v98, *MEMORY[0x277D1A398], -1000, v97);
          v100 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = v99;

          v95 = *(*(&buf + 1) + 40);
        }

        *a12 = v95;
      }

      _Block_object_dispose(&v127, 8);
      _Block_object_dispose(&buf, 8);

      goto LABEL_100;
    }

    if (*&v111[8] == 0 && !*v111)
    {
LABEL_50:
      if (v107)
      {
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      if (v52 == 1)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v109, v50, v107, @"ard");
      }

      goto LABEL_55;
    }

    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_254850000, v43, OS_LOG_TYPE_INFO, "CKRecord contains incomplete wallpaper data for nickname", &buf, 2u);
      }

LABEL_98:

      goto LABEL_99;
    }

    goto LABEL_99;
  }

  v22 = v114;
  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_254850000, v35, OS_LOG_TYPE_INFO, "No error pointer provided, please fix", &buf, 2u);
    }
  }

  v36 = 0;
LABEL_102:

  v101 = *MEMORY[0x277D85DE8];

  return v36;
}

void sub_2548623D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x254862318);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254862518(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_254862530(uint64_t a1, void *a2, void *a3)
{
  v511 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v447 = a3;
  v448 = v5;
  if (v5)
  {
    group = dispatch_group_create();
    v8 = objc_msgSend_sharedManager(MEMORY[0x277D1A958], v6, v7);
    v443 = objc_msgSend_enablementGroup(v8, v9, v10);

    v13 = objc_msgSend_sharedManager(MEMORY[0x277D1A958], v11, v12);
    v441 = objc_msgSend_checksForSensitivityOnNicknameReceive(v13, v14, v15);

    v18 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v16, v17);
    isAllowU18SnapAssetsEnabled = objc_msgSend_isAllowU18SnapAssetsEnabled(v18, v19, v20);

    v440 = (v443 == 1) & ~isAllowU18SnapAssetsEnabled;
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = v443;
        *&buf[12] = 1024;
        *&buf[14] = (v443 == 1) & ~isAllowU18SnapAssetsEnabled;
        _os_log_impl(&dword_254850000, v22, OS_LOG_TYPE_INFO, "About to construct the nickname with contentSafetyEnablementGroup: %ld, deleting sensitive assets: %d", buf, 0x12u);
      }
    }

    MEMORY[0x259C1C010](@"BlastDoorNickname", @"BlastDoor");
    isKindOfClass = objc_opt_isKindOfClass();
    v24 = v448;
    if ((isKindOfClass & 1) == 0)
    {
      v24 = 0;
    }

    v25 = v24;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v508 = sub_254862518;
    v509 = sub_254862528;
    v510 = 0;
    v28 = objc_msgSend_avatar(v25, v26, v27);
    v29 = v28 == 0;

    if (!v29)
    {
      v32 = objc_msgSend_avatar(v25, v30, v31);
      v35 = objc_msgSend_image(v32, v33, v34);
      objc_msgSend_cgImage(v35, v36, v37);
      v38 = IMCreatePNGImageDataFromCGImageRef();

      v493 = 0;
      v494 = &v493;
      v495 = 0x3032000000;
      v496 = sub_254862518;
      v497 = sub_254862528;
      v39 = *(a1 + 72);
      v42 = objc_msgSend_recordID(*(a1 + 40), v40, v41);
      v45 = objc_msgSend_recordName(v42, v43, v44);
      v46 = *(*(a1 + 56) + 8);
      obj = *(v46 + 40);
      v48 = objc_msgSend__assetTargetURLForRecordName_fieldName_error_(v39, v47, v45, @"ad", &obj);
      objc_storeStrong((v46 + 40), obj);
      v498 = v48;

      v49 = v494[5];
      v50 = *(*(a1 + 56) + 8);
      v491 = *(v50 + 40);
      v52 = objc_msgSend_writeToURL_options_error_(v38, v51, v49, 1, &v491);
      objc_storeStrong((v50 + 40), v491);
      if (v52)
      {
        if (v441)
        {
          dispatch_group_enter(group);
          v55 = objc_msgSend_sharedManager(MEMORY[0x277D1A950], v53, v54);
          v56 = v494[5];
          v483[0] = MEMORY[0x277D85DD0];
          v483[1] = 3221225472;
          v483[2] = sub_254863B20;
          v483[3] = &unk_27978D230;
          v490 = v440;
          v57 = *(a1 + 72);
          v58 = *(a1 + 56);
          v486 = &v493;
          v487 = v58;
          v489 = v57;
          v488 = buf;
          v484 = v25;
          v485 = group;
          objc_msgSend_isSensitiveContent_contentAttachmentType_withChatID_completionHandler_(v55, v59, v56, 0, 0, v483);
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v60 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              LODWORD(v501) = 134217984;
              *(&v501 + 4) = v443;
              _os_log_impl(&dword_254850000, v60, OS_LOG_TYPE_INFO, "Avatar image safety check was skipped, comm safety check group setting: %ld. Creating IMNicknameAvatarImage.", &v501, 0xCu);
            }
          }

          v61 = objc_alloc(MEMORY[0x277D1AAE0]);
          v64 = objc_msgSend_avatar(v25, v62, v63);
          v67 = objc_msgSend_imageName(v64, v65, v66);
          v70 = objc_msgSend_path(v494[5], v68, v69);
          IsSensitive = objc_msgSend_initWithImageName_imageFilePath_contentIsSensitive_(v61, v71, v67, v70, 0);
          v73 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = IsSensitive;
        }
      }

      else
      {
        dispatch_semaphore_signal(*(a1 + 32));
      }

      _Block_object_dispose(&v493, 8);

      if ((v52 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_40;
    }

    v76 = objc_msgSend_pronouns(v25, v74, v75);
    if (!v76)
    {
      goto LABEL_40;
    }

    v77 = *(a1 + 72);
    v78 = objc_msgSend_pronouns(v25, v74, v75);
    LODWORD(v77) = objc_msgSend__isObjectBlastDoorMorphology_(v77, v79, v78);

    if (v77)
    {
      v444 = objc_msgSend_pronouns(v25, v74, v75);
      v442 = objc_opt_new();
      v82 = objc_msgSend_grammaticalGender(v444, v80, v81);
      if (v82 <= 2)
      {
        objc_msgSend_setGender_(v442, v83, v82 + 1);
      }

      v85 = objc_msgSend_number(v444, v83, v84);
      if (v85 <= 5)
      {
        objc_msgSend_setNumber_(v442, v86, qword_2548694A8[v85]);
      }

      v88 = objc_msgSend_customPronouns(v444, v86, v87);
      if (objc_msgSend_count(v88, v89, v90) && objc_msgSend__NSMorphologyCustomPronounClass(*(a1 + 72), v91, v92))
      {
        v481 = 0u;
        v482 = 0u;
        v479 = 0u;
        v480 = 0u;
        v438 = v88;
        v93 = v88;
        v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, &v479, v506, 16);
        if (v96)
        {
          v97 = *v480;
          while (2)
          {
            for (i = 0; i != v96; ++i)
            {
              if (*v480 != v97)
              {
                objc_enumerationMutation(v93);
              }

              v99 = *(*(&v479 + 1) + 8 * i);
              if (objc_msgSend__isObjectBlastDoorCustomPronounPair_(*(a1 + 72), v95, v99))
              {
                v100 = v99;
                v101 = *(a1 + 72);
                v104 = objc_msgSend_language(v100, v102, v103);
                v106 = objc_msgSend__languageStringForEnumCase_(v101, v105, v104);
                isEqual = objc_msgSend_isEqual_(v106, v107, @"en");

                if (isEqual)
                {
                  v380 = objc_alloc_init(objc_msgSend__NSMorphologyCustomPronounClass(*(a1 + 72), v109, v110));
                  v383 = objc_msgSend_pronoun(v100, v381, v382);
                  v386 = objc_msgSend_subjectForm(v383, v384, v385);
                  objc_msgSend_setSubjectForm_(v380, v387, v386);

                  v390 = objc_msgSend_pronoun(v100, v388, v389);
                  v393 = objc_msgSend_objectForm(v390, v391, v392);
                  objc_msgSend_setObjectForm_(v380, v394, v393);

                  v397 = objc_msgSend_pronoun(v100, v395, v396);
                  v400 = objc_msgSend_possessiveForm(v397, v398, v399);
                  objc_msgSend_setPossessiveForm_(v380, v401, v400);

                  v404 = objc_msgSend_pronoun(v100, v402, v403);
                  v407 = objc_msgSend_possessiveAdjectiveForm(v404, v405, v406);
                  objc_msgSend_setPossessiveAdjectiveForm_(v380, v408, v407);

                  v411 = objc_msgSend_pronoun(v100, v409, v410);
                  v414 = objc_msgSend_reflexiveForm(v411, v412, v413);
                  objc_msgSend_setReflexiveForm_(v380, v415, v414);

                  objc_msgSend_setEnglishCustomPronoun_(v442, v416, v380);
                  goto LABEL_80;
                }
              }
            }

            v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v95, &v479, v506, 16);
            if (v96)
            {
              continue;
            }

            break;
          }
        }

LABEL_80:

        v88 = v438;
      }
    }

    else
    {
LABEL_40:
      v442 = 0;
    }

    v493 = 0;
    v494 = &v493;
    v495 = 0x3032000000;
    v496 = sub_254862518;
    v497 = sub_254862528;
    v498 = 0;
    v111 = objc_msgSend_wallpaper(v25, v74, v75);
    v112 = v111 == 0;

    if (!v112)
    {
      v115 = objc_msgSend_wallpaper(v25, v113, v114);
      v445 = objc_msgSend_posterArchive(v115, v116, v117);

      v120 = objc_msgSend_wallpaper(v25, v118, v119);
      v123 = objc_msgSend_lowResImage(v120, v121, v122);
      v126 = objc_msgSend_image(v123, v124, v125);
      objc_msgSend_cgImage(v126, v127, v128);
      v439 = IMCreatePNGImageDataFromCGImageRef();

      *&v501 = 0;
      *(&v501 + 1) = &v501;
      v502 = 0x3032000000;
      v503 = sub_254862518;
      v504 = sub_254862528;
      v129 = *(a1 + 72);
      v132 = objc_msgSend_recordID(*(a1 + 40), v130, v131);
      v135 = objc_msgSend_recordName(v132, v133, v134);
      v136 = *(*(a1 + 56) + 8);
      v478 = *(v136 + 40);
      v138 = objc_msgSend__assetTargetURLForRecordName_fieldName_error_(v129, v137, v135, @"wd", &v478);
      objc_storeStrong((v136 + 40), v478);
      v505 = v138;

      v472 = 0;
      v473 = &v472;
      v474 = 0x3032000000;
      v475 = sub_254862518;
      v476 = sub_254862528;
      v139 = *(a1 + 72);
      v142 = objc_msgSend_recordID(*(a1 + 40), v140, v141);
      v145 = objc_msgSend_recordName(v142, v143, v144);
      v146 = *(*(a1 + 56) + 8);
      v471 = *(v146 + 40);
      v148 = objc_msgSend__assetTargetURLForRecordName_fieldName_error_(v139, v147, v145, @"lrwd", &v471);
      objc_storeStrong((v146 + 40), v471);
      v477 = v148;

      if (v445)
      {
        v150 = *(*(&v501 + 1) + 40);
        v151 = *(*(a1 + 56) + 8);
        v470 = *(v151 + 40);
        v152 = objc_msgSend_writeToURL_options_error_(v445, v149, v150, 1, &v470);
        objc_storeStrong((v151 + 40), v470);
        if ((v152 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      if (v439)
      {
        v153 = v473[5];
        v154 = *(*(a1 + 56) + 8);
        v469 = *(v154 + 40);
        v155 = objc_msgSend_writeToURL_options_error_(v439, v149, v153, 1, &v469);
        objc_storeStrong((v154 + 40), v469);
        if (!v155)
        {
LABEL_52:
          dispatch_semaphore_signal(*(a1 + 32));
          _Block_object_dispose(&v472, 8);

          _Block_object_dispose(&v501, 8);
          v215 = v439;
LABEL_76:

          _Block_object_dispose(&v493, 8);
LABEL_77:
          _Block_object_dispose(buf, 8);

          goto LABEL_78;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v158 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
        {
          *v499 = 67109376;
          *v500 = v445 != 0;
          *&v500[4] = 1024;
          *&v500[6] = v439 != 0;
          _os_log_impl(&dword_254850000, v158, OS_LOG_TYPE_INFO, "Completed wallpaper has wallpaperData: %i lowResData: %i", v499, 0xEu);
        }
      }

      v159 = objc_msgSend_wallpaper(v25, v156, v157);
      v162 = objc_msgSend_metadata(v159, v160, v161);
      v165 = objc_msgSend_backgroundColor(v162, v163, v164);

      if (v165)
      {
        v424 = objc_alloc(MEMORY[0x277D1ACE8]);
        v435 = objc_msgSend_wallpaper(v25, v166, v167);
        v432 = objc_msgSend_metadata(v435, v168, v169);
        v429 = objc_msgSend_backgroundColor(v432, v170, v171);
        objc_msgSend_red(v429, v172, v173);
        v175 = v174;
        v426 = objc_msgSend_wallpaper(v25, v176, v177);
        v180 = objc_msgSend_metadata(v426, v178, v179);
        v183 = objc_msgSend_backgroundColor(v180, v181, v182);
        objc_msgSend_green(v183, v184, v185);
        v187 = v186;
        v190 = objc_msgSend_wallpaper(v25, v188, v189);
        v193 = objc_msgSend_metadata(v190, v191, v192);
        v196 = objc_msgSend_backgroundColor(v193, v194, v195);
        objc_msgSend_blue(v196, v197, v198);
        v200 = v199;
        v203 = objc_msgSend_wallpaper(v25, v201, v202);
        v206 = objc_msgSend_metadata(v203, v204, v205);
        v209 = objc_msgSend_backgroundColor(v206, v207, v208);
        objc_msgSend_alpha(v209, v210, v211);
        v425 = objc_msgSend_initWithRed_green_blue_alpha_(v424, v212, v213, v175, v187, v200, v214);
      }

      else
      {
        v425 = 0;
      }

      v422 = objc_alloc(MEMORY[0x277D1ACE8]);
      v436 = objc_msgSend_wallpaper(v25, v216, v217);
      v433 = objc_msgSend_metadata(v436, v218, v219);
      v430 = objc_msgSend_fontColor(v433, v220, v221);
      objc_msgSend_red(v430, v222, v223);
      v225 = v224;
      v427 = objc_msgSend_wallpaper(v25, v226, v227);
      v230 = objc_msgSend_metadata(v427, v228, v229);
      v233 = objc_msgSend_fontColor(v230, v231, v232);
      objc_msgSend_green(v233, v234, v235);
      v237 = v236;
      v240 = objc_msgSend_wallpaper(v25, v238, v239);
      v243 = objc_msgSend_metadata(v240, v241, v242);
      v246 = objc_msgSend_fontColor(v243, v244, v245);
      objc_msgSend_blue(v246, v247, v248);
      v250 = v249;
      v253 = objc_msgSend_wallpaper(v25, v251, v252);
      v256 = objc_msgSend_metadata(v253, v254, v255);
      v259 = objc_msgSend_fontColor(v256, v257, v258);
      objc_msgSend_alpha(v259, v260, v261);
      v420 = objc_msgSend_initWithRed_green_blue_alpha_(v422, v262, v263, v225, v237, v250, v264);

      v417 = objc_alloc(MEMORY[0x277D1ACE0]);
      v437 = objc_msgSend_wallpaper(v25, v265, v266);
      v434 = objc_msgSend_metadata(v437, v267, v268);
      v419 = objc_msgSend_fontName(v434, v269, v270);
      v431 = objc_msgSend_wallpaper(v25, v271, v272);
      v428 = objc_msgSend_metadata(v431, v273, v274);
      objc_msgSend_fontSize(v428, v275, v276);
      v278 = v277;
      v423 = objc_msgSend_wallpaper(v25, v279, v280);
      v421 = objc_msgSend_metadata(v423, v281, v282);
      objc_msgSend_fontWeight(v421, v283, v284);
      v286 = v285;
      v289 = objc_msgSend_dictionaryRepresentation(v420, v287, v288);
      v292 = objc_msgSend_wallpaper(v25, v290, v291);
      v295 = objc_msgSend_metadata(v292, v293, v294);
      isVertical = objc_msgSend_isVertical(v295, v296, v297);
      v299 = MEMORY[0x277D1ACE0];
      v302 = objc_msgSend_wallpaper(v25, v300, v301);
      v305 = objc_msgSend_metadata(v302, v303, v304);
      v308 = objc_msgSend_type(v305, v306, v307);
      v310 = objc_msgSend_wallpaperExtensionIdentifierFromType_(v299, v309, v308);
      v313 = objc_msgSend_dictionaryRepresentation(v425, v311, v312);
      isVertical_type_backgroundColor = objc_msgSend_initWithFontName_fontSize_fontWeight_fontColor_isVertical_type_backgroundColor_(v417, v314, v419, v289, isVertical, v310, v313, v278, v286);

      if (v441)
      {
        v316 = *(*(&v501 + 1) + 40);
        if (v316)
        {
          v317 = objc_msgSend_posterImageURLForPosterConfigurationAtURL_(MEMORY[0x277D1A960], v315, v316);
        }

        else
        {
          v317 = v473[5];
        }

        v322 = v317;
        if (v317)
        {
          dispatch_group_enter(group);
          v343 = objc_msgSend_sharedManager(MEMORY[0x277D1A950], v341, v342);
          v459[0] = MEMORY[0x277D85DD0];
          v459[1] = 3221225472;
          v459[2] = sub_254863D28;
          v459[3] = &unk_27978D258;
          v468 = v440;
          v344 = *(a1 + 72);
          v345 = *(a1 + 56);
          v463 = &v501;
          v464 = v345;
          v465 = &v472;
          v466 = &v493;
          v467 = v344;
          v460 = v25;
          v461 = isVertical_type_backgroundColor;
          v462 = group;
          objc_msgSend_isSensitiveContent_contentAttachmentType_withChatID_completionHandler_(v343, v346, v322, 0, 0, v459);

          v325 = v460;
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v347 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v347, OS_LOG_TYPE_INFO))
            {
              *v499 = 0;
              _os_log_impl(&dword_254850000, v347, OS_LOG_TYPE_INFO, "Skipped wallpaper safety check because we couldn't find a wallpaper image URL.", v499, 2u);
            }
          }

          v348 = objc_alloc(MEMORY[0x277D1ACD8]);
          v325 = objc_msgSend_wallpaper(v25, v349, v350);
          v353 = objc_msgSend_highResFileName(v325, v351, v352);
          v356 = objc_msgSend_path(*(*(&v501 + 1) + 40), v354, v355);
          v359 = objc_msgSend_wallpaper(v25, v357, v358);
          v362 = objc_msgSend_lowResFileName(v359, v360, v361);
          v365 = objc_msgSend_path(v473[5], v363, v364);
          v367 = objc_msgSend_initWithFileName_filePath_lowResFileName_lowResFilePath_metadata_contentIsSensitive_(v348, v366, v353, v356, v362, v365, isVertical_type_backgroundColor, 0);
          v368 = v494[5];
          v494[5] = v367;
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v318 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v318, OS_LOG_TYPE_INFO))
          {
            *v499 = 134217984;
            *v500 = v443;
            _os_log_impl(&dword_254850000, v318, OS_LOG_TYPE_INFO, "Wallpaper safety check was skipped, comm safety check group setting: %ld. Creating IMWallpaper.", v499, 0xCu);
          }
        }

        v319 = objc_alloc(MEMORY[0x277D1ACD8]);
        v322 = objc_msgSend_wallpaper(v25, v320, v321);
        v325 = objc_msgSend_highResFileName(v322, v323, v324);
        v328 = objc_msgSend_path(*(*(&v501 + 1) + 40), v326, v327);
        v331 = objc_msgSend_wallpaper(v25, v329, v330);
        v334 = objc_msgSend_lowResFileName(v331, v332, v333);
        v337 = objc_msgSend_path(v473[5], v335, v336);
        v339 = objc_msgSend_initWithFileName_filePath_lowResFileName_lowResFilePath_metadata_contentIsSensitive_(v319, v338, v325, v328, v334, v337, isVertical_type_backgroundColor, 0);
        v340 = v494[5];
        v494[5] = v339;
      }

      _Block_object_dispose(&v472, 8);
      _Block_object_dispose(&v501, 8);
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_avatarRecipe(v25, v369, v370), v371 = objc_claimAutoreleasedReturnValue(), v372 = v371 == 0, v371, v372))
    {
      v378 = 0;
    }

    else
    {
      v373 = objc_alloc(MEMORY[0x277D1AAE8]);
      v376 = objc_msgSend_avatarRecipe(v25, v374, v375);
      v378 = objc_msgSend_initWithData_(v373, v377, v376);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_254863FB4;
    block[3] = &unk_27978D280;
    v456 = *(a1 + 64);
    v450 = v25;
    v457 = buf;
    v458 = &v493;
    v451 = v442;
    v452 = v378;
    v453 = *(a1 + 40);
    v454 = *(a1 + 48);
    v455 = *(a1 + 32);
    v445 = v378;
    dispatch_group_notify(group, MEMORY[0x277D85CD0], block);

    v215 = v450;
    goto LABEL_76;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  dispatch_semaphore_signal(*(a1 + 32));
LABEL_78:

  v379 = *MEMORY[0x277D85DE8];
}

void sub_254863B20(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_localizedDescription(v5, v8, v9);
      v11 = v10;
      v12 = @"No error";
      if (v10)
      {
        v12 = v10;
      }

      *buf = 67109378;
      v35 = a2;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&dword_254850000, v7, OS_LOG_TYPE_INFO, "Avatar image was checked for sensitive content. Is sensitive: %d, error: %@", buf, 0x12u);
    }
  }

  if (a2 && *(a1 + 80) == 1)
  {
    v13 = *(a1 + 72);
    v14 = *(*(*(a1 + 48) + 8) + 40);
    v15 = *(*(a1 + 56) + 8);
    obj = *(v15 + 40);
    objc_msgSend__removeFile_error_(v13, v6, v14, &obj);
    objc_storeStrong((v15 + 40), obj);
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;
  }

  v18 = objc_alloc(MEMORY[0x277D1AAE0]);
  v21 = objc_msgSend_avatar(*(a1 + 32), v19, v20);
  v24 = objc_msgSend_imageName(v21, v22, v23);
  v27 = objc_msgSend_path(*(*(*(a1 + 48) + 8) + 40), v25, v26);
  IsSensitive = objc_msgSend_initWithImageName_imageFilePath_contentIsSensitive_(v18, v28, v24, v27, a2);
  v30 = *(*(a1 + 64) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = IsSensitive;

  dispatch_group_leave(*(a1 + 40));
  v32 = *MEMORY[0x277D85DE8];
}

void sub_254863D28(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v46 = a2;
      v47 = 2112;
      v48 = v5;
      _os_log_impl(&dword_254850000, v7, OS_LOG_TYPE_INFO, "Wallpaper image was checked for sensitive content. Is sensitive: %d, error: %@", buf, 0x12u);
    }
  }

  if (a2 && *(a1 + 96) == 1)
  {
    v8 = *(a1 + 88);
    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = *(*(a1 + 64) + 8);
    obj = *(v10 + 40);
    objc_msgSend__removeFile_error_(v8, v6, v9, &obj);
    objc_storeStrong((v10 + 40), obj);
    v11 = *(a1 + 88);
    v12 = *(*(*(a1 + 72) + 8) + 40);
    v13 = *(*(a1 + 64) + 8);
    v43 = *(v13 + 40);
    objc_msgSend__removeFile_error_(v11, v14, v12, &v43);
    objc_storeStrong((v13 + 40), v43);
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;

    v17 = *(*(a1 + 72) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;
  }

  v19 = objc_alloc(MEMORY[0x277D1ACD8]);
  v22 = objc_msgSend_wallpaper(*(a1 + 32), v20, v21);
  v25 = objc_msgSend_highResFileName(v22, v23, v24);
  v28 = objc_msgSend_path(*(*(*(a1 + 56) + 8) + 40), v26, v27);
  v31 = objc_msgSend_wallpaper(*(a1 + 32), v29, v30);
  v34 = objc_msgSend_lowResFileName(v31, v32, v33);
  v37 = objc_msgSend_path(*(*(*(a1 + 72) + 8) + 40), v35, v36);
  IsSensitive = objc_msgSend_initWithFileName_filePath_lowResFileName_lowResFilePath_metadata_contentIsSensitive_(v19, v38, v25, v28, v34, v37, *(a1 + 40), a2);
  v40 = *(*(a1 + 80) + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = IsSensitive;

  dispatch_group_leave(*(a1 + 48));
  v42 = *MEMORY[0x277D85DE8];
}

intptr_t sub_254863FB4(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D1AAD0]);
  v5 = objc_msgSend_firstName(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_lastName(*(a1 + 32), v6, v7);
  Name_lastName_avatar_pronouns_wallpaper_avatarRecipe = objc_msgSend_initWithFirstName_lastName_avatar_pronouns_wallpaper_avatarRecipe_(v2, v9, v5, v8, *(*(*(a1 + 88) + 8) + 40), *(a1 + 40), *(*(*(a1 + 96) + 8) + 40), *(a1 + 48));
  v11 = *(*(a1 + 80) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = Name_lastName_avatar_pronouns_wallpaper_avatarRecipe;

  v13 = *(*(*(a1 + 80) + 8) + 40);
  v16 = objc_msgSend_recordID(*(a1 + 56), v14, v15);
  v19 = objc_msgSend_recordName(v16, v17, v18);
  objc_msgSend_setRecordID_(v13, v20, v19);

  objc_msgSend_setPreBlastDoorPayloadData_(*(*(*(a1 + 80) + 8) + 40), v21, *(a1 + 64));
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = objc_msgSend_avatar(*(*(*(a1 + 80) + 8) + 40), v23, v24);
      hasImage = objc_msgSend_hasImage(v25, v26, v27);
      v31 = objc_msgSend_wallpaper(*(*(*(a1 + 80) + 8) + 40), v29, v30);
      v34 = objc_msgSend_wallpaperExists(v31, v32, v33);
      v37 = objc_msgSend_wallpaper(*(*(*(a1 + 80) + 8) + 40), v35, v36);
      v40 = objc_msgSend_lowResWallpaperExists(v37, v38, v39);
      v43 = objc_msgSend_avatarRecipe(*(*(*(a1 + 80) + 8) + 40), v41, v42);
      v44 = *(*(*(a1 + 80) + 8) + 40);
      v47[0] = 67110146;
      v47[1] = hasImage;
      v48 = 1024;
      v49 = v34;
      v50 = 1024;
      v51 = v40;
      v52 = 1024;
      v53 = v43 != 0;
      v54 = 2112;
      v55 = v44;
      _os_log_impl(&dword_254850000, v22, OS_LOG_TYPE_INFO, "Completed nickname parsing (hasImage: %i, hasWallpaper: %i, hasLowResWallpaper: %i, hasAvatarRecipe: %i) from public record: %@", v47, 0x24u);
    }
  }

  result = dispatch_semaphore_signal(*(a1 + 72));
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_25486423C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void **a8)
{
  v192[1] = *MEMORY[0x277D85DE8];
  v175 = a3;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v186 = a1;
      v187 = 2112;
      v188 = v175;
      _os_log_impl(&dword_254850000, v13, OS_LOG_TYPE_INFO, "Creating record from nickname {nickname: %@, preKey: %@}", buf, 0x16u);
    }
  }

  v14 = objc_msgSend_publicDictionaryRepresentationWithoutAvatar(a1, v11, v12);
  v15 = JWEncodeDictionary();

  if (v15)
  {
    v17 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v16, v15, @"n", 0);
    v20 = objc_msgSend_avatar(a1, v18, v19);
    v23 = objc_msgSend_publicDictionaryMetadataRepresentation(v20, v21, v22);
    v173 = JWEncodeDictionary();

    v26 = objc_msgSend_avatar(a1, v24, v25);
    v172 = objc_msgSend_imageData(v26, v27, v28);

    if (v172)
    {
      v29 = v173 == 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = !v29;
    v31 = IMOSLoggingEnabled();
    if (v30)
    {
      if (v31)
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254850000, v33, OS_LOG_TYPE_INFO, "Nickname has avatar data", buf, 2u);
        }
      }

      objc_msgSend_setObject_forKey_(v17, v32, v173, @"am");
      objc_msgSend_setObject_forKey_(v17, v34, v172, @"ad");
    }

    else if (v31)
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v186 = a1;
        _os_log_impl(&dword_254850000, v40, OS_LOG_TYPE_INFO, "Nickname doesn't have avatar data {nickname: %@}", buf, 0xCu);
      }
    }

    v176 = 0;
    v174 = objc_msgSend_encryptAndTagPlainFields_withPreKey_returningRecordTag_error_(MEMORY[0x277D1AAF0], v32, v17, v175, &v176, a8);
    v41 = v176;
    v171 = v41;
    if (v174 && v41)
    {
      v170 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v42, v43);
      v46 = objc_msgSend_wallpaper(a1, v44, v45);
      v49 = objc_msgSend_wallpaperExists(v46, v47, v48);

      if (v49)
      {
        v52 = objc_alloc(MEMORY[0x277D1AAF8]);
        v55 = objc_msgSend_wallpaper(a1, v53, v54);
        v58 = objc_msgSend_wallpaperData(v55, v56, v57);
        v60 = objc_msgSend_initWithFieldName_plainData_(v52, v59, @"wd", v58);

        v62 = objc_msgSend_encryptAndTagPlainField_withPreKey_returningFieldTag_error_(MEMORY[0x277D1AAF0], v61, v60, v175, a4, a8);
        v65 = objc_msgSend_fieldName(v62, v63, v64);
        v183 = v65;
        v67 = objc_msgSend_dataRepresentationWithError_(v62, v66, a8);
        v184 = v67;
        v69 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v68, &v184, &v183, 1);
        objc_msgSend_addEntriesFromDictionary_(v170, v70, v69);
      }

      v71 = objc_msgSend_wallpaper(a1, v50, v51);
      v74 = objc_msgSend_lowResWallpaperExists(v71, v72, v73);

      if (v74)
      {
        v77 = objc_alloc(MEMORY[0x277D1AAF8]);
        v80 = objc_msgSend_wallpaper(a1, v78, v79);
        v83 = objc_msgSend_lowResWallpaperData(v80, v81, v82);
        v85 = objc_msgSend_initWithFieldName_plainData_(v77, v84, @"lrwd", v83);

        v87 = objc_msgSend_encryptAndTagPlainField_withPreKey_returningFieldTag_error_(MEMORY[0x277D1AAF0], v86, v85, v175, a5, a8);
        v90 = objc_msgSend_fieldName(v87, v88, v89);
        v181 = v90;
        v92 = objc_msgSend_dataRepresentationWithError_(v87, v91, a8);
        v182 = v92;
        v94 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v93, &v182, &v181, 1);
        objc_msgSend_addEntriesFromDictionary_(v170, v95, v94);
      }

      v96 = objc_msgSend_wallpaper(a1, v75, v76);
      v99 = objc_msgSend_metadata(v96, v97, v98);

      if (v99)
      {
        v102 = objc_msgSend_wallpaper(a1, v100, v101);
        v105 = objc_msgSend_publicDictionaryRepresentation(v102, v103, v104);
        v106 = JWEncodeDictionary();

        v107 = objc_alloc(MEMORY[0x277D1AAF8]);
        v109 = objc_msgSend_initWithFieldName_plainData_(v107, v108, @"wm", v106);
        v111 = objc_msgSend_encryptAndTagPlainField_withPreKey_returningFieldTag_error_(MEMORY[0x277D1AAF0], v110, v109, v175, a6, a8);
        v114 = objc_msgSend_fieldName(v111, v112, v113);
        v179 = v114;
        v116 = objc_msgSend_dataRepresentationWithError_(v111, v115, a8);
        v180 = v116;
        v118 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v117, &v180, &v179, 1);
        objc_msgSend_addEntriesFromDictionary_(v170, v119, v118);
      }

      v120 = objc_msgSend_avatarRecipe(a1, v100, v101);

      if (v120)
      {
        v122 = objc_alloc(MEMORY[0x277D1AAF8]);
        v125 = objc_msgSend_avatarRecipe(a1, v123, v124);
        v128 = objc_msgSend_recipeData(v125, v126, v127);
        v130 = objc_msgSend_initWithFieldName_plainData_(v122, v129, @"ard", v128);

        v132 = objc_msgSend_encryptAndTagPlainField_withPreKey_returningFieldTag_error_(MEMORY[0x277D1AAF0], v131, v130, v175, a7, a8);
        v135 = objc_msgSend_fieldName(v132, v133, v134);
        v177 = v135;
        v137 = objc_msgSend_dataRepresentationWithError_(v132, v136, a8);
        v178 = v137;
        v139 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v138, &v178, &v177, 1);
        objc_msgSend_addEntriesFromDictionary_(v170, v140, v139);
      }

      v141 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v121, @"ad", 0);
      v144 = objc_msgSend_stringRepresentation(v171, v142, v143);
      v146 = objc_msgSend__CKRecordFromDictionary_recordName_assetFieldNames_error_(a1, v145, v174, v144, v141, a8);

      if (v146)
      {
        v149 = objc_msgSend_recordID(v146, v147, v148);
        v152 = objc_msgSend_recordName(v149, v150, v151);
        v154 = objc_msgSend_stringByAppendingString_(v152, v153, @"-wp");

        v156 = objc_msgSend__wallpaperRecordFromDictionary_owningRecord_recordName_error_(a1, v155, v170, v146, v154, a8);
        v39 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v157, v158);
        objc_msgSend_setObject_forKeyedSubscript_(v39, v159, v146, @"profileRecord");
        objc_msgSend_setObject_forKeyedSubscript_(v39, v160, v156, @"wallpaperRecord");
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v163 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
          {
            if (a8)
            {
              v164 = *a8;
            }

            else
            {
              v164 = 0;
            }

            *buf = 138412802;
            v186 = v164;
            v187 = 2112;
            v188 = v174;
            v189 = 2112;
            v190 = a1;
            _os_log_impl(&dword_254850000, v163, OS_LOG_TYPE_INFO, "Failed to create record from cipherFields {error: %@, cipherFields: %@, nickname: %@}", buf, 0x20u);
          }
        }

        v39 = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v161 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v161, OS_LOG_TYPE_INFO))
        {
          if (a8)
          {
            v162 = *a8;
          }

          else
          {
            v162 = 0;
          }

          *buf = 138412802;
          v186 = v162;
          v187 = 2112;
          v188 = a1;
          v189 = 2112;
          v190 = v175;
          _os_log_impl(&dword_254850000, v161, OS_LOG_TYPE_INFO, "Failed to encrypt nickname {error: %@, nickname: %@, preKey: %@}", buf, 0x20u);
        }
      }

      v39 = 0;
    }

    goto LABEL_58;
  }

  if (IMOSLoggingEnabled())
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v186 = a1;
      _os_log_impl(&dword_254850000, v36, OS_LOG_TYPE_INFO, "Failed to create nicknameData -- Failed to create nickname public record {nickname: %@}", buf, 0xCu);
    }
  }

  if (a8)
  {
    v37 = MEMORY[0x277CCA9B8];
    v191 = *MEMORY[0x277CCA068];
    v192[0] = @"Missing nickname";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v192, &v191, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(v37, v38, *MEMORY[0x277D1A398], -1000, v17);
    *a8 = v39 = 0;
LABEL_58:

    goto LABEL_59;
  }

  v39 = 0;
LABEL_59:

  v165 = *MEMORY[0x277D85DE8];

  return v39;
}

uint64_t sub_254864CB8(void *a1, uint64_t a2, void *a3, void **a4)
{
  v108 = *MEMORY[0x277D85DE8];
  v101 = a3;
  v8 = objc_msgSend_avatar(a1, v6, v7);
  v11 = objc_msgSend_imageFilePath(v8, v9, v10);

  if (v11)
  {
    v14 = MEMORY[0x277D1AAD0];
    v15 = objc_msgSend_recordName(v101, v12, v13);
    v17 = objc_msgSend__assetTargetURLForRecordName_fieldName_error_(v14, v16, v15, @"ad", a4);

    if (!v17)
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          if (a4)
          {
            v42 = *a4;
          }

          else
          {
            v42 = 0;
          }

          *buf = 138412546;
          v103 = v42;
          v104 = 2112;
          v105 = v101;
          _os_log_impl(&dword_254850000, v41, OS_LOG_TYPE_INFO, "Failed to get target url for avatar image while updating nickname {error: %@, recordID: %@}", buf, 0x16u);
        }
      }

      goto LABEL_45;
    }

    v20 = objc_msgSend_avatar(a1, v18, v19);
    v23 = objc_msgSend_imageName(v20, v21, v22);
    v26 = objc_msgSend_imageFilePath(v20, v24, v25);
    v28 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v27, v26);
    v32 = objc_msgSend__moveFile_newURL_error_(a1, v29, v28, v17, a4);
    if (v32)
    {
      v33 = objc_msgSend_path(v17, v30, v31);
      v34 = objc_alloc(MEMORY[0x277D1AAE0]);
      IsSensitive = objc_msgSend_contentIsSensitive(v20, v35, v36);
      v39 = objc_msgSend_initWithImageName_imageFilePath_contentIsSensitive_(v34, v38, v23, v33, IsSensitive);
      objc_msgSend_setAvatar_(a1, v40, v39);
    }

    else if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v103 = v28;
        v104 = 2112;
        v105 = v17;
        v106 = 2112;
        v107 = v101;
        _os_log_impl(&dword_254850000, v43, OS_LOG_TYPE_INFO, "Failed to move image from %@ to %@ for recordID: %@", buf, 0x20u);
      }
    }

    if (!v32)
    {
LABEL_45:
      v96 = 0;
      goto LABEL_46;
    }
  }

  v44 = objc_msgSend_wallpaper(a1, v12, v13);

  if (v44)
  {
    v47 = MEMORY[0x277D1AAD0];
    v48 = objc_msgSend_recordName(v101, v45, v46);
    v50 = objc_msgSend__assetTargetURLForRecordName_fieldName_error_(v47, v49, v48, @"wd", a4);

    v51 = MEMORY[0x277D1AAD0];
    v54 = objc_msgSend_recordName(v101, v52, v53);
    v56 = objc_msgSend__assetTargetURLForRecordName_fieldName_error_(v51, v55, v54, @"lrwd", a4);

    if (!v50 || !v56)
    {
      if (IMOSLoggingEnabled())
      {
        v74 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          if (a4)
          {
            v75 = *a4;
          }

          else
          {
            v75 = 0;
          }

          *buf = 138412546;
          v103 = v75;
          v104 = 2112;
          v105 = v101;
          _os_log_impl(&dword_254850000, v74, OS_LOG_TYPE_INFO, "Failed to get target url for wallpaper while updating nickname {error: %@, recordID: %@}", buf, 0x16u);
        }
      }

      goto LABEL_45;
    }

    v59 = objc_msgSend_wallpaper(a1, v57, v58);
    v100 = objc_msgSend_fileName(v59, v60, v61);
    v64 = objc_msgSend_filePath(v59, v62, v63);
    v99 = objc_msgSend_lowResFileName(v59, v65, v66);
    v70 = objc_msgSend_lowResFilePath(v59, v67, v68);
    if (v64)
    {
      v71 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v69, v64);
      if ((objc_msgSend__moveFile_newURL_error_(a1, v72, v71, v50, a4) & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v73 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v103 = v71;
            v104 = 2112;
            v105 = v50;
            v106 = 2112;
            v107 = v101;
            _os_log_impl(&dword_254850000, v73, OS_LOG_TYPE_INFO, "Failed to move wallpaper from %@ to %@ for recordID: %@", buf, 0x20u);
          }

LABEL_33:

          goto LABEL_34;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v71 = v50;
      v50 = 0;
    }

    if (v70)
    {
      v71 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v76, v70);
      if ((objc_msgSend__moveFile_newURL_error_(a1, v77, v71, v56, a4) & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v73 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v103 = v71;
            v104 = 2112;
            v105 = v56;
            v106 = 2112;
            v107 = v101;
            _os_log_impl(&dword_254850000, v73, OS_LOG_TYPE_INFO, "Failed to move low res wallpaper from %@ to %@ for recordID: %@", buf, 0x20u);
          }

          goto LABEL_33;
        }

LABEL_34:

        goto LABEL_45;
      }
    }

    else
    {
      v71 = v56;
      v56 = 0;
    }

    v80 = objc_msgSend_path(v50, v78, v79);
    v83 = objc_msgSend_path(v56, v81, v82);
    v84 = objc_alloc(MEMORY[0x277D1ACD8]);
    v87 = objc_msgSend_metadata(v59, v85, v86);
    v90 = objc_msgSend_contentIsSensitive(v59, v88, v89);
    v92 = objc_msgSend_initWithFileName_filePath_lowResFileName_lowResFilePath_metadata_contentIsSensitive_(v84, v91, v100, v80, v99, v83, v87, v90);
    objc_msgSend_setWallpaper_(a1, v93, v92);
  }

  v94 = objc_msgSend_recordName(v101, v45, v46);
  objc_msgSend_setRecordID_(a1, v95, v94);

  v96 = 1;
LABEL_46:

  v97 = *MEMORY[0x277D85DE8];
  return v96;
}

uint64_t sub_2548653AC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v12 = objc_msgSend_path(v8, v10, v11);
  v14 = objc_msgSend_fileExistsAtPath_(v9, v13, v12);

  if (v14)
  {
    v17 = objc_msgSend_path(v8, v15, v16);
    objc_msgSend_removeItemAtPath_error_(v9, v18, v17, a5);
  }

  v19 = objc_msgSend_moveItemAtURL_toURL_error_(v9, v15, v7, v8, a5);
  if ((v19 & 1) == 0 && IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *a5;
      v24 = 138412802;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_254850000, v20, OS_LOG_TYPE_INFO, "Failed to move item %@ to %@ with error %@", &v24, 0x20u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_25486553C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v9 = objc_msgSend_path(v5, v7, v8);
  v11 = objc_msgSend_fileExistsAtPath_(v6, v10, v9);

  if (v11)
  {
    v14 = objc_msgSend_path(v5, v12, v13);
    v16 = objc_msgSend_removeItemAtPath_error_(v6, v15, v14, a4);

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = *a4;
        v22 = 138412802;
        v23 = v5;
        v24 = 1024;
        v25 = v16;
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&dword_254850000, v17, OS_LOG_TYPE_INFO, "Attempted to remove item at path: %@, did succeed: %d, error: %@", &v22, 0x1Cu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v22 = 138412290;
        v23 = v5;
        _os_log_impl(&dword_254850000, v19, OS_LOG_TYPE_INFO, "File %@ does not exist, can't remove.", &v22, 0xCu);
      }
    }

    v16 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

id sub_254865724(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void **a6)
{
  v81 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v68 = a5;
  v11 = objc_alloc(MEMORY[0x277CBC5A0]);
  v13 = objc_msgSend_initWithRecordType_(v11, v12, @"imsgNicknamePublicv2");
  v14 = objc_alloc(MEMORY[0x277CBC5D0]);
  v66 = v10;
  v65 = objc_msgSend_initWithRecordName_(v14, v15, v10);
  objc_msgSend_setRecordID_(v13, v16, v65);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = v9;
  obj = objc_msgSend_allKeys(v9, v17, v18);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v70, v80, 16);
  if (v21)
  {
    v22 = *v71;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v71 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v70 + 1) + 8 * i);
        v25 = objc_msgSend_objectForKey_(v69, v20, v24);
        if (objc_msgSend_containsObject_(v68, v26, v24))
        {
          v28 = objc_opt_class();
          v30 = objc_msgSend__assetTargetURLForRecordName_fieldName_error_(v28, v29, v66, v24, a6);
          v31 = IMOSLoggingEnabled();
          if (!v30)
          {
            if (v31)
            {
              v54 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                if (a6)
                {
                  v55 = *a6;
                }

                else
                {
                  v55 = 0;
                }

                *buf = 138412802;
                v75 = v55;
                v76 = 2112;
                v77 = v66;
                v78 = 2112;
                v79 = v24;
                _os_log_impl(&dword_254850000, v54, OS_LOG_TYPE_INFO, "Failed to create target URL for nickname asset {error: %@, recordName: %@, fieldName: %@}", buf, 0x20u);
              }
            }

            goto LABEL_44;
          }

          if (v31)
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v75 = v30;
              _os_log_impl(&dword_254850000, v33, OS_LOG_TYPE_INFO, "Writing nickname asset {targetURL: %@}", buf, 0xCu);
            }
          }

          if (objc_msgSend_isEqualToString_(v24, v32, @"ad"))
          {
            v34 = objc_alloc(MEMORY[0x277D1AAE0]);
            v37 = objc_msgSend_path(v30, v35, v36);
            IsSensitive_error = objc_msgSend_initWithImageName_imageData_imageFilePath_contentIsSensitive_error_(v34, v38, 0, v25, v37, 0, a6);

            if (!IsSensitive_error || *a6)
            {
              if (IMOSLoggingEnabled())
              {
                v56 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
                {
                  if (a6)
                  {
                    v59 = *a6;
                  }

                  else
                  {
                    v59 = 0;
                  }

                  v60 = objc_msgSend_length(v25, v57, v58);
                  *buf = 138412802;
                  v75 = v59;
                  v76 = 2112;
                  v77 = v30;
                  v78 = 2048;
                  v79 = v60;
                  _os_log_impl(&dword_254850000, v56, OS_LOG_TYPE_INFO, "Failed to write nickname asset {error: %@, targetURL: %@, data.length: %ld}", buf, 0x20u);
                }
              }

LABEL_44:
              if (IMOSLoggingEnabled())
              {
                v61 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                {
                  if (a6)
                  {
                    v62 = *a6;
                  }

                  else
                  {
                    v62 = 0;
                  }

                  *buf = 138412546;
                  v75 = v62;
                  v76 = 2112;
                  v77 = v69;
                  _os_log_impl(&dword_254850000, v61, OS_LOG_TYPE_INFO, "Failed to create record from dictionary {error: %@, dictionary: %@}", buf, 0x16u);
                }
              }

              v53 = 0;
              goto LABEL_52;
            }
          }

          if (IMOSLoggingEnabled())
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v75 = v30;
              _os_log_impl(&dword_254850000, v40, OS_LOG_TYPE_INFO, "Writing nickname asset {targetURL: %@}", buf, 0xCu);
            }
          }

          v41 = objc_alloc(MEMORY[0x277CBC190]);
          v43 = objc_msgSend_initWithFileURL_(v41, v42, v30);
          objc_msgSend_setItemTypeHint_(v43, v44, @"fxd");
          objc_msgSend_setObject_forKey_(v13, v45, v43, v24);
        }

        else
        {
          objc_msgSend_setObject_forKey_(v13, v27, v25, v24);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v70, v80, 16);
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v46 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v49 = objc_msgSend_allKeys(v13, v47, v48);
      v52 = objc_msgSend_allKeys(v69, v50, v51);
      *buf = 138412802;
      v75 = v49;
      v76 = 2112;
      v77 = v52;
      v78 = 2112;
      v79 = v68;
      _os_log_impl(&dword_254850000, v46, OS_LOG_TYPE_INFO, "Created record from dictionary {record.allKeys: %@, dictionary.allKeys: %@, assetFieldNames: %@}", buf, 0x20u);
    }
  }

  v53 = v13;
LABEL_52:

  v63 = *MEMORY[0x277D85DE8];

  return v53;
}

id sub_254865D84(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t *a6)
{
  v69 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc(MEMORY[0x277CBC5A0]);
  v14 = objc_msgSend_initWithRecordType_(v12, v13, @"poster");
  v15 = objc_alloc(MEMORY[0x277CBC5D0]);
  v17 = objc_msgSend_initWithRecordName_(v15, v16, v11);
  objc_msgSend_setRecordID_(v14, v18, v17);

  v19 = objc_alloc(MEMORY[0x277CBC620]);
  v63 = v10;
  v64 = objc_msgSend_initWithRecord_action_(v19, v20, v10, 1);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v21, v64, @"pr");
  v23 = objc_msgSend_objectForKeyedSubscript_(v9, v22, @"wd");
  v25 = objc_msgSend_objectForKeyedSubscript_(v9, v24, @"lrwd");
  v66 = objc_msgSend_objectForKeyedSubscript_(v9, v26, @"wm");
  v65 = objc_msgSend__assetTargetURLForRecordName_fieldName_error_(MEMORY[0x277D1AAD0], v27, v11, @"wm", a6);
  v29 = objc_msgSend__assetTargetURLForRecordName_fieldName_error_(MEMORY[0x277D1AAD0], v28, v11, @"lrwd", a6);
  objc_msgSend_setObject_forKey_(v14, v30, v66, @"wm");
  if (v25 | v23)
  {
    v33 = objc_alloc(MEMORY[0x277D1ACD8]);
    v36 = objc_msgSend_path(v65, v34, v35);
    v39 = objc_msgSend_path(v29, v37, v38);
    IsSensitive_error = objc_msgSend_initWithFileName_filePath_data_lowResFileName_lowResFilePath_lowResData_metadata_contentIsSensitive_error_(v33, v40, &stru_28669E560, v36, v23, &stru_28669E560, v39, v25, 0, 0, a6);

    if ((!IsSensitive_error || *a6) && IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        if (a6)
        {
          v43 = *a6;
        }

        else
        {
          v43 = 0;
        }

        *buf = 138412290;
        v68 = v43;
        _os_log_impl(&dword_254850000, v42, OS_LOG_TYPE_INFO, "Failed to write low res wallpaper asset {error: %@}", buf, 0xCu);
      }
    }

    if (v25)
    {
      v44 = objc_alloc(MEMORY[0x277CBC190]);
      v46 = objc_msgSend_initWithFileURL_(v44, v45, v29);
      objc_msgSend_setItemTypeHint_(v46, v47, @"fxd");
      objc_msgSend_setObject_forKey_(v14, v48, v46, @"lrwd");
    }

    if (v23)
    {
      v49 = objc_alloc(MEMORY[0x277CBC190]);
      v51 = objc_msgSend_initWithFileURL_(v49, v50, v65);
      objc_msgSend_setItemTypeHint_(v51, v52, @"fxd");
      objc_msgSend_setObject_forKey_(v14, v53, v51, @"wd");
    }
  }

  v54 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], v31, v32);
  isSwiftUIAvatarRenderingEnabled = objc_msgSend_isSwiftUIAvatarRenderingEnabled(v54, v55, v56);

  if (isSwiftUIAvatarRenderingEnabled)
  {
    v60 = objc_msgSend_objectForKeyedSubscript_(v9, v58, @"ard");
    if (v60)
    {
      objc_msgSend_setObject_forKey_(v14, v59, v60, @"ard");
    }
  }

  v61 = *MEMORY[0x277D85DE8];

  return v14;
}

id sub_254866158(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEBC0];
  v12 = objc_msgSend_stringByExpandingTildeInPath(*MEMORY[0x277D1A390], v10, v11);
  v14 = objc_msgSend_fileURLWithPath_(v9, v13, v12);

  v17 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v15, v16);
  v20 = objc_msgSend_path(v14, v18, v19);
  v22 = objc_msgSend_fileExistsAtPath_(v17, v21, v20);

  if (v22 & 1) != 0 || (objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v23, v24), v25 = objc_claimAutoreleasedReturnValue(), DirectoryAtURL_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v25, v26, v14, 1, 0, a5), v25, (DirectoryAtURL_withIntermediateDirectories_attributes_error))
  {
    v28 = objc_msgSend_stringByAppendingFormat_(v7, v23, @"-%@", v8);
    v30 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v28, v29, @"/", @"_");

    v32 = objc_msgSend_URLByAppendingPathComponent_(v14, v31, v30);

    v14 = v32;
    v33 = v14;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        if (a5)
        {
          v35 = *a5;
        }

        else
        {
          v35 = 0;
        }

        *buf = 138412546;
        v39 = v35;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_254850000, v34, OS_LOG_TYPE_INFO, "Failed to create nickname assets directory {error: %@, url: %@}", buf, 0x16u);
      }
    }

    v33 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v33;
}

uint64_t sub_2548663A0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_respondsToSelector() & v4;

  return v5 & 1;
}

uint64_t sub_25486640C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_opt_respondsToSelector();
  v5 = objc_opt_respondsToSelector();

  return v4 & v5 & 1;
}

id sub_25486646C()
{
  if (qword_27F611CC0 != -1)
  {
    sub_2548680F0();
  }

  v1 = qword_27F611CB8;

  return v1;
}

uint64_t sub_2548664B0()
{
  result = MEMORY[0x259C1C010](@"NSMorphologyCustomPronoun", @"Foundation");
  qword_27F611CB8 = result;
  return result;
}

__CFString *sub_2548664E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return @"en";
  }

  else
  {
    return 0;
  }
}

id sub_2548664F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], a2, a3);
  isSwiftUIAvatarRenderingEnabled = objc_msgSend_isSwiftUIAvatarRenderingEnabled(v3, v4, v5);

  if (isSwiftUIAvatarRenderingEnabled)
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v12, 6, v11[0], v11[1], v11[2], v11[3], v11[4], @"n", @"am", @"ad", @"wm", @"lrwd", @"ard");
  }

  else
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v11, 5, @"n", @"am", @"ad", @"wm", @"lrwd", v12[0], v12[1], v12[2], v12[3], v12[4], v12[5]);
  }
  v8 = ;
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id sub_254866604(uint64_t a1, const char *a2, uint64_t a3)
{
  v12[7] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], a2, a3);
  isSwiftUIAvatarRenderingEnabled = objc_msgSend_isSwiftUIAvatarRenderingEnabled(v3, v4, v5);

  if (isSwiftUIAvatarRenderingEnabled)
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v12, 7, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], @"n", @"am", @"ad", @"wm", @"lrwd", @"wd", @"ard");
  }

  else
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v11, 6, @"n", @"am", @"ad", @"wm", @"lrwd", @"wd", v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6]);
  }
  v8 = ;
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id sub_254866728(uint64_t a1, const char *a2, uint64_t a3)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_sharedFeatureFlags(MEMORY[0x277D1A9B8], a2, a3);
  isSwiftUIAvatarRenderingEnabled = objc_msgSend_isSwiftUIAvatarRenderingEnabled(v3, v4, v5);

  if (isSwiftUIAvatarRenderingEnabled)
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v12, 4, v11[0], v11[1], v11[2], @"n", @"am", @"ad", @"ard");
  }

  else
  {
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v11, 3, @"n", @"am", @"ad", v12[0], v12[1], v12[2], v12[3]);
  }
  v8 = ;
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_25486682C(int a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v84 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v75 = a4;
  v13 = a5;
  v14 = a6;
  v17 = v14;
  if (!v12 && (a1 & 1) == 0)
  {
    if (v14)
    {
      (*(v14 + 2))(v14, v11, 0, 0, 301);
    }

    goto LABEL_141;
  }

  if (a1)
  {
    v74 = objc_alloc_init(MEMORY[0x277CBEB28]);
  }

  else
  {
    v74 = 0;
  }

  v18 = objc_msgSend_path(v11, v15, v16);
  v73 = objc_msgSend_pathExtension(v18, v19, v20);

  v23 = v75;
  v24 = v23;
  if (!v23)
  {
    v25 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v21, v22);
    v28 = objc_msgSend_path(v11, v26, v27);
    v24 = objc_msgSend__randomSimilarFilePathAsPath_(v25, v29, v28);
  }

  v30 = objc_alloc(MEMORY[0x277CBEBC0]);
  v72 = v24;
  isDirectory = objc_msgSend_initFileURLWithPath_isDirectory_(v30, v31, v24, 0);
  v33 = isDirectory;
  if (v11)
  {
    v34 = CFReadStreamCreateWithFile(0, v11);
    if (v33)
    {
      goto LABEL_12;
    }

LABEL_15:
    v35 = 0;
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v34 = 0;
  if (!isDirectory)
  {
    goto LABEL_15;
  }

LABEL_12:
  v35 = CFWriteStreamCreateWithFile(0, v33);
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (IMOSLoggingEnabled())
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v12;
      _os_log_impl(&dword_254850000, v36, OS_LOG_TYPE_INFO, "       inputKey: %@", buf, 0xCu);
    }
  }

LABEL_20:
  if (v23 && IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v23;
      _os_log_impl(&dword_254850000, v37, OS_LOG_TYPE_INFO, " outputFileName: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v11;
      _os_log_impl(&dword_254850000, v38, OS_LOG_TYPE_INFO, "       inputURL: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v73;
      _os_log_impl(&dword_254850000, v39, OS_LOG_TYPE_INFO, "  pathExtension: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v33;
      _os_log_impl(&dword_254850000, v40, OS_LOG_TYPE_INFO, "      outputURL: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v34;
      _os_log_impl(&dword_254850000, v41, OS_LOG_TYPE_INFO, "     readStream: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v35;
      _os_log_impl(&dword_254850000, v42, OS_LOG_TYPE_INFO, "    writeStream: %@", buf, 0xCu);
    }
  }

  if (!v34)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_70;
    }

    v52 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v11;
      _os_log_impl(&dword_254850000, v52, OS_LOG_TYPE_INFO, "Could not create read stream for input file: %@", buf, 0xCu);
    }

    goto LABEL_69;
  }

  v43 = CFReadStreamOpen(v34) == 0;
  v44 = IMOSLoggingEnabled();
  if (v43)
  {
    if (!v44)
    {
      goto LABEL_70;
    }

    v52 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v11;
      _os_log_impl(&dword_254850000, v52, OS_LOG_TYPE_INFO, "Could not open read stream for input file: %@", buf, 0xCu);
    }

LABEL_69:

LABEL_70:
    if (v35)
    {
      v53 = 0;
      v51 = 0;
      runLoopMode = *MEMORY[0x277CBF048];
      goto LABEL_106;
    }

    goto LABEL_108;
  }

  if (v44)
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v34;
      _os_log_impl(&dword_254850000, v45, OS_LOG_TYPE_INFO, "Successfully opened read stream: %@", buf, 0xCu);
    }
  }

  Main = CFRunLoopGetMain();
  runLoopMode = *MEMORY[0x277CBF048];
  CFReadStreamScheduleWithRunLoop(v34, Main, *MEMORY[0x277CBF048]);
  if (v35)
  {
    v47 = CFWriteStreamOpen(v35) == 0;
    v48 = IMOSLoggingEnabled();
    if (v47)
    {
      if (v48)
      {
        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          domain = v33;
          _os_log_impl(&dword_254850000, v54, OS_LOG_TYPE_INFO, "Could not open write stream for output file: %@", buf, 0xCu);
        }
      }

      v53 = 0;
      v51 = 0;
LABEL_106:
      CFWriteStreamSetClient(v35, 0, 0, 0);
      CFWriteStreamClose(v35);
      v61 = CFRunLoopGetMain();
      CFWriteStreamUnscheduleFromRunLoop(v35, v61, runLoopMode);
      if (!v34)
      {
        goto LABEL_114;
      }

      goto LABEL_113;
    }

    if (v48)
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        domain = v35;
        _os_log_impl(&dword_254850000, v49, OS_LOG_TYPE_INFO, "Successfully opened write stream: %@", buf, 0xCu);
      }
    }

    v50 = CFRunLoopGetMain();
    CFWriteStreamScheduleWithRunLoop(v35, v50, runLoopMode);
    if (a1)
    {
      if (qword_28112D9A0 != -1)
      {
        sub_254868188();
      }

      if (off_28112D9B0)
      {
        LODWORD(v51) = off_28112D9B0(v34, v35, v74);
      }

      else
      {
        LODWORD(v51) = 1;
      }

      if (IMOSLoggingEnabled())
      {
        v55 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          domain = v51;
          _os_log_impl(&dword_254850000, v55, OS_LOG_TYPE_INFO, "SecProtectStream result: %ld", buf, 0xCu);
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_95;
      }

      v56 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        domain = v74;
        _os_log_impl(&dword_254850000, v56, OS_LOG_TYPE_INFO, "       outputKey: %@", buf, 0xCu);
      }
    }

    else
    {
      if (qword_28112D9A8 != -1)
      {
        sub_254868160();
      }

      if (off_28112D9B8)
      {
        LODWORD(v51) = off_28112D9B8(v34, v35, v12);
      }

      else
      {
        LODWORD(v51) = 1;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_95;
      }

      v56 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        domain = v51;
        _os_log_impl(&dword_254850000, v56, OS_LOG_TYPE_INFO, "SecExposeStream result: %ld", buf, 0xCu);
      }
    }

LABEL_95:
    if (v51)
    {
      Error = CFReadStreamGetError(v34);
      v58 = CFWriteStreamGetError(v35);
      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          domain = Error.domain;
          v78 = 2048;
          v79 = Error.error;
          _os_log_impl(&dword_254850000, v59, OS_LOG_TYPE_INFO, "  read error: [%ld:%ld]", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          domain = v58.domain;
          v78 = 2048;
          v79 = v58.error;
          _os_log_impl(&dword_254850000, v60, OS_LOG_TYPE_INFO, " write error: [%ld:%ld]", buf, 0x16u);
        }
      }

      v53 = 0;
      v51 = v51;
    }

    else
    {
      v51 = 0;
      v53 = 1;
    }

    goto LABEL_106;
  }

LABEL_108:
  if (IMOSLoggingEnabled())
  {
    v62 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v33;
      _os_log_impl(&dword_254850000, v62, OS_LOG_TYPE_INFO, "Could not create write stream for output file: %@", buf, 0xCu);
    }
  }

  v53 = 0;
  v51 = 0;
  if (!v34)
  {
    goto LABEL_114;
  }

LABEL_113:
  CFReadStreamSetClient(v34, 0, 0, 0);
  CFReadStreamClose(v34);
  v63 = CFRunLoopGetMain();
  CFReadStreamUnscheduleFromRunLoop(v34, v63, *MEMORY[0x277CBF048]);
LABEL_114:
  im_dispatch_after();
  if (v53)
  {
    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = @"decrypting";
        *buf = 138412802;
        if (a1)
        {
          v65 = @"encrypting";
        }

        domain = v65;
        v78 = 2112;
        v79 = v11;
        v80 = 2112;
        v81 = v33;
        _os_log_impl(&dword_254850000, v64, OS_LOG_TYPE_INFO, "Succeeded %@ input URL: %@    output URL: %@", buf, 0x20u);
      }
    }
  }

  else
  {

    if (IMOSLoggingEnabled())
    {
      v66 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v67 = @"decrypting";
        *buf = 138413058;
        if (a1)
        {
          v67 = @"encrypting";
        }

        domain = v67;
        v78 = 2112;
        v79 = v11;
        v80 = 2112;
        v81 = 0;
        v82 = 2048;
        v83 = v51;
        _os_log_impl(&dword_254850000, v66, OS_LOG_TYPE_INFO, "** Failed %@ input URL: %@    output URL: %@     result: %ld", buf, 0x2Au);
      }
    }

    v74 = 0;
    v33 = 0;
  }

  if (v13 && a1)
  {
    if (v53)
    {
      v68 = 0;
    }

    else
    {
      v68 = 300;
    }

    v13[2](v13, v11, v53, v33, v74, v68);
  }

  else if (v17 && (a1 & 1) == 0)
  {
    if (v53)
    {
      v69 = 0;
    }

    else
    {
      v69 = 301;
    }

    (v17)[2](v17, v11, v53, v33, v69);
  }

LABEL_141:
  v70 = *MEMORY[0x277D85DE8];
}

void *sub_254867654()
{
  result = MEMORY[0x259C1C020]("SecProtectStream", @"MessageProtection");
  off_28112D9B0 = result;
  return result;
}

void *sub_254867684()
{
  result = MEMORY[0x259C1C020]("SecExposeStream", @"MessageProtection");
  off_28112D9B8 = result;
  return result;
}

void sub_2548676B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t IMOptOutOfOptimizedMadridAttachmentDownloadPath(uint64_t a1, const char *a2)
{
  v2 = 1;
  v3 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x277D18A10], a2, 1);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"should-disallow-authget");
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);

  if ((v8 & 1) == 0)
  {
    v11 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], v9, v10);
    if (objc_msgSend_isInternalInstall(v11, v12, v13))
    {
      v14 = IMGetCachedDomainBoolForKey();

      if (v14)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return v2;
}

uint64_t IMSetOptOutOfOptimizedMadridAttachmentDownloadPath()
{
  IMSetDomainBoolForKey();

  return IMSetDomainBoolForKey();
}

uint64_t IMOptOutOfOptimizedMadridAttachmentUploadPath(uint64_t a1, const char *a2)
{
  v2 = 1;
  v3 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x277D18A10], a2, 1);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"should-disallow-authput");
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);

  if ((v8 & 1) == 0)
  {
    v11 = objc_msgSend_sharedInstance(MEMORY[0x277D19268], v9, v10);
    if (objc_msgSend_isInternalInstall(v11, v12, v13))
    {
      v14 = IMGetCachedDomainBoolForKey();

      if (v14)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return v2;
}

uint64_t IMSetOptOutOfOptimizedMadridAttachmentUploadPath()
{
  IMSetDomainBoolForKey();

  return IMSetDomainBoolForKey();
}

uint64_t IMTransferRequestIsForMessages(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  isEqualToString = objc_msgSend_isEqualToString_(v3, v5, @"com.apple.madrid");
  v7 = IMSafeTemporaryDirectory();
  v10 = objc_msgSend_path(v7, v8, v9);
  hasPrefix = objc_msgSend_hasPrefix_(v4, v11, v10);

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      if (isEqualToString)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      if (hasPrefix)
      {
        v14 = @"YES";
      }

      v18 = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_254850000, v13, OS_LOG_TYPE_INFO, "checking if transfer request is for Messages, topicIsMadrid: %@, receivePathPrefixIsMessages: %@", &v18, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return isEqualToString & hasPrefix;
}

void sub_254867AAC()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_254852B54();
  sub_254852B68(&dword_254850000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_254867B30()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_254852B54();
  sub_254852B68(&dword_254850000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_254867BB4()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_254852B54();
  sub_254852B68(&dword_254850000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_254867C38()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_254852B54();
  sub_254852B68(&dword_254850000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_254867CBC()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_254852B54();
  sub_254852B68(&dword_254850000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_254867D40()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_254852B54();
  sub_254852B68(&dword_254850000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_254867DC4()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_254852B54();
  sub_254852B68(&dword_254850000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_254867E48()
{
  v7 = *MEMORY[0x277D85DE8];
  sub_254852B54();
  sub_254852B68(&dword_254850000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_254867ECC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 138412546;
  v2 = @"mO";
  v3 = 2080;
  v4 = "dictionary";
  _os_log_error_impl(&dword_254850000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_254867F68()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 138412546;
  v2 = @"mS";
  v3 = 2080;
  v4 = "dictionary";
  _os_log_error_impl(&dword_254850000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_254868004()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 138412546;
  v2 = @"mL";
  v3 = 2080;
  v4 = "dictionary";
  _os_log_error_impl(&dword_254850000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v1, 0x16u);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_254868104(void *a1)
{

  objc_end_catch();
}

CFStreamError CFReadStreamGetError(CFReadStreamRef stream)
{
  v1 = MEMORY[0x28210F9B8](stream);
  result.error = v2;
  result.domain = v1;
  return result;
}

CFStreamError CFWriteStreamGetError(CFWriteStreamRef stream)
{
  v1 = MEMORY[0x282110188](stream);
  result.error = v2;
  result.domain = v1;
  return result;
}