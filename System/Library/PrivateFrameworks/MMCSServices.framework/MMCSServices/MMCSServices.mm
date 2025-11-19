uint64_t sub_20E3B07AC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  MMCSEngineCancelRequests();
  v3 = *(*(a1 + 32) + 32);

  return MEMORY[0x282184558](v3);
}

void sub_20E3B0B30(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x20E3B0AF4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_20E3B1064(void *a1, const char *a2, _DWORD *a3, void *a4, uint64_t a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  dispatch_assert_queue_V2(v10);
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v47 = 134219008;
      v48 = a1;
      v49 = 2048;
      v50 = a2;
      v51 = 2048;
      v52 = a3;
      v53 = 2048;
      v54 = a4;
      v55 = 2048;
      v56 = a5;
      _os_log_impl(&dword_20E3AF000, v14, OS_LOG_TYPE_INFO, "_MMCSGetFileDescriptorAndContentTypeFromItemCallback:   context: %p   item id: %qx   fd: %p   itemTypePtr: %p   errorPtr: %p", &v47, 0x34u);
    }
  }

  if (!a1)
  {
    result = IMOSLoggingEnabled();
    if (!result)
    {
      goto LABEL_40;
    }

    v41 = OSLogHandleForIMFoundationCategory();
    result = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_40;
    }

    LOWORD(v47) = 0;
    v42 = " no controller found, failing";
    goto LABEL_38;
  }

  v15 = objc_msgSend__registeredTransferForItemID_(a1, v11, a2, v12, v13);
  v20 = v15;
  if (!v15)
  {
    result = IMOSLoggingEnabled();
    if (!result)
    {
      goto LABEL_40;
    }

    v41 = OSLogHandleForIMFoundationCategory();
    result = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_40;
    }

    LOWORD(v47) = 0;
    v42 = "  Couldn't find registered transfer for get request";
    goto LABEL_38;
  }

  if (!a3)
  {
    result = IMOSLoggingEnabled();
    if (!result)
    {
      goto LABEL_40;
    }

    v41 = OSLogHandleForIMFoundationCategory();
    result = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_40;
    }

    LOWORD(v47) = 0;
    v42 = "  Empty file descriptor pointer passed in, failing";
    goto LABEL_38;
  }

  v21 = objc_msgSend_localPath(v15, v16, v17, v18, v19);
  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v47 = 138412290;
      v48 = v20;
      _os_log_impl(&dword_20E3AF000, v26, OS_LOG_TYPE_INFO, "   => found transfer: %@", &v47, 0xCu);
    }
  }

  *a3 = -1;
  if (!v21)
  {
    result = IMOSLoggingEnabled();
    if (!result)
    {
      goto LABEL_40;
    }

    v41 = OSLogHandleForIMFoundationCategory();
    result = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_40;
    }

    LOWORD(v47) = 0;
    v42 = "   => No local path found!";
    goto LABEL_38;
  }

  v27 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v22, v23, v24, v25);
  if ((objc_msgSend_fileExistsAtPath_(v27, v28, v21, v29, v30) & 1) == 0)
  {
    result = IMOSLoggingEnabled();
    if (!result)
    {
      goto LABEL_40;
    }

    v43 = OSLogHandleForIMFoundationCategory();
    result = os_log_type_enabled(v43, OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_40;
    }

    v47 = 138412290;
    v48 = v21;
    v42 = "   => Failing, file doesn't exist at path: %@";
    v44 = v43;
    v45 = 12;
LABEL_39:
    _os_log_impl(&dword_20E3AF000, v44, OS_LOG_TYPE_INFO, v42, &v47, v45);
    result = 0;
    goto LABEL_40;
  }

  v35 = objc_msgSend_fileSystemRepresentation(v21, v31, v32, v33, v34);
  if (!v35)
  {
    result = IMOSLoggingEnabled();
    if (!result)
    {
      goto LABEL_40;
    }

    v41 = OSLogHandleForIMFoundationCategory();
    result = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_40;
    }

    LOWORD(v47) = 0;
    v42 = "   => failed finding path";
    goto LABEL_38;
  }

  v36 = open(v35, 0);
  if (v36 == -1)
  {
    result = IMOSLoggingEnabled();
    if (!result)
    {
      goto LABEL_40;
    }

    v41 = OSLogHandleForIMFoundationCategory();
    result = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_40;
    }

    LOWORD(v47) = 0;
    v42 = "   => could not open file";
LABEL_38:
    v44 = v41;
    v45 = 2;
    goto LABEL_39;
  }

  *a3 = v36;
  objc_msgSend_setFd_(v20, v37, v36, v38, v39);
  if (a4)
  {
    *a4 = @"fxd";
  }

  result = 1;
LABEL_40:
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_20E3B1478(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  dispatch_assert_queue_V2(v12);
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v29 = 134219266;
      v30 = a1;
      v31 = 2048;
      v32 = a2;
      v33 = 2048;
      v34 = a3;
      v35 = 2112;
      v36 = sub_20E3B6E3C(a4, v13, v14, v15, v16);
      v37 = 2048;
      v38 = a6;
      v39 = 2112;
      v40 = a5;
      _os_log_impl(&dword_20E3AF000, v17, OS_LOG_TYPE_INFO, "_MMCSGetItemProgressCallback:   context: %p   item id: %qx   sig: %p   state: %@   progress: %f  error: %@", &v29, 0x3Eu);
    }
  }

  if (a1 && (v18 = objc_msgSend_controller(a1, v13, v14, v15, v16), (v22 = v18) != 0))
  {
    v23 = objc_msgSend__registeredTransferForItemID_(v18, v19, a2, v20, v21);
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v29 = 138412290;
        v30 = v23;
        _os_log_impl(&dword_20E3AF000, v25, OS_LOG_TYPE_INFO, "   => found transfer: %@", &v29, 0xCu);
      }
    }

    if (v23)
    {
      objc_msgSend__getItemUpdated_progress_state_error_(v22, v24, v23, a4, a5, a6);
      goto LABEL_18;
    }

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        v27 = "  couldn't find transfer for get progress update";
LABEL_17:
        _os_log_impl(&dword_20E3AF000, v26, OS_LOG_TYPE_INFO, v27, &v29, 2u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(v29) = 0;
      v27 = " no controller found, bailing";
      goto LABEL_17;
    }
  }

LABEL_18:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_20E3B1704(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v64 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  dispatch_assert_queue_V2(v11);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = "";
      *buf = 134219010;
      if (a4)
      {
        v13 = a4;
      }

      v55 = a1;
      v56 = 2048;
      v57 = a2;
      v58 = 2048;
      v59 = a3;
      v60 = 2080;
      v61 = v13;
      v62 = 2112;
      v63 = a5;
      _os_log_impl(&dword_20E3AF000, v12, OS_LOG_TYPE_INFO, "_MMCSGetItemDoneCallback:   context: %p   item id: %qx   sig: %p   path: %s  error: %@", buf, 0x34u);
    }
  }

  v48 = a1;
  v45 = a5;
  v46 = a4;
  if (a6)
  {
    CFRetain(a6);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(a6, v14, &v49, v53, 16);
    if (v15)
    {
      v16 = *v50;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v50 != v16)
          {
            objc_enumerationMutation(a6);
          }

          v18 = *(*(&v49 + 1) + 8 * i);
          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v23 = objc_msgSend_objectForKey_(a6, v19, v18, v21, v22);
              *buf = 138412546;
              v55 = v18;
              v56 = 2112;
              v57 = v23;
              _os_log_impl(&dword_20E3AF000, v20, OS_LOG_TYPE_INFO, "_MMCSGetItemDoneCallback with key: %@,  value: %@", buf, 0x16u);
            }
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(a6, v19, &v49, v53, 16);
      }

      while (v15);
    }

    CFRelease(a6);
    v28 = v48;
  }

  else
  {
    v28 = a1;
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_20E3AF000, v29, OS_LOG_TYPE_INFO, "Got back NULL results _MMCSGetItemDoneCallback", buf, 2u);
      }
    }
  }

  if (v28 && (v30 = objc_msgSend_controller(v28, v24, v25, v26, v27), (v34 = v30) != 0))
  {
    v35 = objc_msgSend__registeredTransferForItemID_(v30, v31, a2, v32, v33);
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v55 = v35;
        _os_log_impl(&dword_20E3AF000, v39, OS_LOG_TYPE_INFO, "   => found transfer: %@", buf, 0xCu);
      }
    }

    if (v35)
    {
      if (v46)
      {
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v46, v37, v38);
        objc_msgSend__getItemCompleted_path_error_(v34, v41, v35, v40, v45, v45);
      }

      else
      {
        objc_msgSend__getItemCompleted_path_error_(v34, v36, v35, 0, v45, v45);
      }

      goto LABEL_38;
    }

    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v43 = "  couldn't find transfer for get completion";
        goto LABEL_32;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v43 = " no controller found, bailing";
LABEL_32:
      _os_log_impl(&dword_20E3AF000, v42, OS_LOG_TYPE_INFO, v43, buf, 2u);
    }
  }

LABEL_38:
  v44 = *MEMORY[0x277D85DE8];
}

void sub_20E3B1B6C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  Value = a5;
  v41 = *MEMORY[0x277D85DE8];
  v12 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  dispatch_assert_queue_V2(v12);
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, *MEMORY[0x277D25640]);
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v29 = 134219266;
      v30 = a1;
      v31 = 2048;
      v32 = a2;
      v33 = 2048;
      v34 = a3;
      v35 = 2112;
      v36 = sub_20E3B6C4C(a4, v13, v14, v15, v16);
      v37 = 2048;
      v38 = a6;
      v39 = 2112;
      v40 = Value;
      _os_log_impl(&dword_20E3AF000, v17, OS_LOG_TYPE_INFO, "_MMCSPutItemProgressCallback:   context: %p   item id: %qx   sig: %p   state: %@   progress: %f  error: %@", &v29, 0x3Eu);
    }
  }

  if (a1 && (v18 = objc_msgSend_controller(a1, v13, v14, v15, v16), (v22 = v18) != 0))
  {
    v23 = objc_msgSend__registeredTransferForItemID_(v18, v19, a2, v20, v21);
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v29 = 138412290;
        v30 = v23;
        _os_log_impl(&dword_20E3AF000, v25, OS_LOG_TYPE_INFO, "   => found transfer: %@", &v29, 0xCu);
      }
    }

    if (v23)
    {
      objc_msgSend__putItemUpdated_progress_state_error_(v22, v24, v23, a4, Value, a6);
      goto LABEL_20;
    }

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        v27 = "  couldn't find transfer for put progress update";
LABEL_19:
        _os_log_impl(&dword_20E3AF000, v26, OS_LOG_TYPE_INFO, v27, &v29, 2u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(v29) = 0;
      v27 = " no controller found, bailing";
      goto LABEL_19;
    }
  }

LABEL_20:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_20E3B1E14(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Value = a4;
  v43 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  dispatch_assert_queue_V2(v9);
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, *MEMORY[0x277D25640]);
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v35 = 134218754;
      v36 = a1;
      v37 = 2048;
      v38 = a2;
      v39 = 2048;
      v40 = a3;
      v41 = 2112;
      v42 = Value;
      _os_log_impl(&dword_20E3AF000, v14, OS_LOG_TYPE_INFO, "_MMCSPutItemDoneCallback:   context: %p   item id: %qx   sig: %p   error: %@", &v35, 0x2Au);
    }
  }

  if (!a1 || (v15 = objc_msgSend_controller(a1, v10, v11, v12, v13), (v19 = v15) == 0))
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_23;
    }

    v33 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    LOWORD(v35) = 0;
    v30 = " no controller found, bailing";
LABEL_21:
    v31 = v33;
    v32 = 2;
    goto LABEL_22;
  }

  v20 = objc_msgSend__registeredTransferForItemID_(v15, v16, a2, v17, v18);
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v35 = 138412290;
      v36 = v20;
      _os_log_impl(&dword_20E3AF000, v23, OS_LOG_TYPE_INFO, "   => found transfer: %@", &v35, 0xCu);
    }
  }

  if (!v20)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_23;
    }

    v33 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    LOWORD(v35) = 0;
    v30 = "  couldn't find transfer for put completion";
    goto LABEL_21;
  }

  objc_msgSend__putItemCompleted_error_(v19, v21, v20, Value, v22);
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v29 = objc_msgSend_localPath(v20, v25, v26, v27, v28);
      v35 = 138412546;
      v36 = v29;
      v37 = 2112;
      v38 = Value;
      v30 = "[=MMCS-Timing=] Put Item completed for path: %@  (error: %@)";
      v31 = v24;
      v32 = 22;
LABEL_22:
      _os_log_impl(&dword_20E3AF000, v31, OS_LOG_TYPE_INFO, v30, &v35, v32);
    }
  }

LABEL_23:
  v34 = *MEMORY[0x277D85DE8];
}

void sub_20E3B20F8(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  dispatch_assert_queue_V2(v7);
  if (a2)
  {
    CFRetain(a2);
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v60 = 134217984;
        *&v60[4] = a1;
        _os_log_impl(&dword_20E3AF000, v8, OS_LOG_TYPE_INFO, "MMCSRequestCompletedCallback with requestorContext: %p", v60, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_msgSend_objectForKey_(a2, v9, @"metricObject", v11, v12);
        *v60 = 138412290;
        *&v60[4] = v14;
        _os_log_impl(&dword_20E3AF000, v13, OS_LOG_TYPE_INFO, "MMCSRequestCompletedCallback with metric: %@", v60, 0xCu);
      }
    }

    v15 = objc_msgSend_stringByExpandingTildeInPath(@"/var/mobile/Library/SMS/prewarm.db", v9, v10, v11, v12);
    v16 = objc_alloc(MEMORY[0x277D18AD0]);
    v18 = objc_msgSend_initWithPath_storeName_dataProtectionClass_(v16, v17, v15, @"MMCSServices", 0);
    v21 = objc_msgSend_dataForKey_error_(v18, v19, @"MMCSContainerStateRefreshTime", 0, v20);
    v59 = 0.0;
    if (v21)
    {
      objc_msgSend_getBytes_length_(v21, v22, &v59, 8, v24);
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v25, v26, v27, v28);
      v30 = v29;
      v31 = v59;
      v35 = objc_msgSend_objectForKey_(a2, v32, *MEMORY[0x277D25670], v33, v34);
      if (v35)
      {
        if (v30 - v31 <= 86400.0)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_26;
          }

          v36 = OSLogHandleForIMFoundationCategory();
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            goto LABEL_26;
          }

          *v60 = 0;
          v37 = "ContainerState in MMCSRequestCompeletedCallBack,  but skip this time restore to avoid frequent update";
LABEL_25:
          _os_log_impl(&dword_20E3AF000, v36, OS_LOG_TYPE_INFO, v37, v60, 2u);
LABEL_26:

          if (a1)
          {
            objc_msgSend__removeFromController(a1, v54, v55, v56, v57);
          }

          CFRelease(a2);
          goto LABEL_29;
        }

LABEL_18:
        if (IMOSLoggingEnabled())
        {
          v40 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v44 = objc_msgSend_length(v35, v39, v41, v42, v43);
            *v60 = 134217984;
            *&v60[4] = v44;
            _os_log_impl(&dword_20E3AF000, v40, OS_LOG_TYPE_INFO, "Store or upate MMCSContainerState.  And MMCSContainserState length:%lu", v60, 0xCu);
          }
        }

        objc_msgSend_persistData_forKey_error_(v18, v39, v35, @"MMCSContainerState", 0);
        objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v45, v46, v47, v48);
        *v60 = v49;
        v52 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v50, v60, 8, v51);
        objc_msgSend_persistData_forKey_error_(v18, v53, v52, @"MMCSContainerStateRefreshTime", 0);
        goto LABEL_26;
      }
    }

    else
    {
      v35 = objc_msgSend_objectForKey_(a2, v22, *MEMORY[0x277D25670], v23, v24);
      if (v35)
      {
        goto LABEL_18;
      }
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_26;
    }

    v36 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    *v60 = 0;
    v37 = "No ContainerState in MMCSRequestCompeletedCallBack";
    goto LABEL_25;
  }

  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *v60 = 0;
      _os_log_impl(&dword_20E3AF000, v38, OS_LOG_TYPE_INFO, "_MMCSRequestCompletedCallback got back NULL results", v60, 2u);
    }
  }

LABEL_29:
  v58 = *MEMORY[0x277D85DE8];
}

void sub_20E3B28A4(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  dispatch_assert_queue_V2(v7);
  if (a2)
  {
    CFRetain(a2);
    v11 = objc_msgSend_objectForKeyedSubscript_(a2, v8, *MEMORY[0x277D255F0], v9, v10);
    v12 = *MEMORY[0x277D25640];
    v16 = objc_msgSend_objectForKeyedSubscript_(a2, v13, *MEMORY[0x277D25640], v14, v15);
    v20 = objc_msgSend_objectForKeyedSubscript_(a2, v17, *MEMORY[0x277D25598], v18, v19);
    Object = objc_msgSend_firstObject(v20, v21, v22, v23, v24);
    v29 = objc_msgSend_objectForKeyedSubscript_(Object, v26, v12, v27, v28);
    if (Object)
    {
      v33 = v29 == 0;
    }

    else
    {
      v33 = 0;
    }

    if (v33)
    {
      v46 = objc_msgSend_objectForKeyedSubscript_(Object, v30, *MEMORY[0x277D25480], v31, v32);
      v51 = objc_msgSend_unsignedIntegerValue(v46, v47, v48, v49, v50);
      v55 = objc_msgSend_objectForKeyedSubscript_(Object, v52, *MEMORY[0x277D25658], v53, v54);
      v60 = objc_msgSend_bytes(v55, v56, v57, v58, v59);
      v64 = v60;
      if (v60)
      {
        v65 = MEMORY[0x277CBEA90];
        v66 = MEMORY[0x20F32CC70](v60);
        v69 = objc_msgSend_dataWithBytes_length_(v65, v67, v64, v66, v68);
        v64 = MMCSSignatureCopyData();
      }

      else
      {
        v69 = 0;
      }

      objc_msgSend_setMMCSError_(a1, v61, v16, v62, v63);
      if (!v16)
      {
        objc_msgSend_setFileHash_(a1, v70, v69, v72, v73);
        objc_msgSend_setProtocolFileSize_(a1, v74, v51, v75, v76);
        objc_msgSend_setAuthRequestData_(a1, v77, v11, v78, v79);
        objc_msgSend_setSignature_(a1, v80, v64, v81, v82);
      }

      v83 = objc_msgSend_registrationBlock(a1, v70, v71, v72, v73);
      v88 = objc_msgSend_serialControllerQueue(MMCSController, v84, v85, v86, v87);
      dispatch_assert_queue_V2(v88);
      if (v83)
      {
        (*(v83 + 16))(v83, v16 == 0);
      }
    }

    else
    {
      if (v29)
      {
        v34 = v29;
      }

      else
      {
        v34 = v16;
      }

      if (!v34)
      {
        v34 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v30, *MEMORY[0x277D25460], 30, 0);
      }

      objc_msgSend_setMMCSError_(a1, v30, v34, v31, v32);
      v39 = objc_msgSend_registrationBlock(a1, v35, v36, v37, v38);
      v44 = objc_msgSend_serialControllerQueue(MMCSController, v40, v41, v42, v43);
      dispatch_assert_queue_V2(v44);
      if (v39)
      {
        (*(v39 + 16))(v39, 0);
      }
    }

    CFRelease(a2);
  }

  else if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *v89 = 0;
      _os_log_impl(&dword_20E3AF000, v45, OS_LOG_TYPE_INFO, "_registerMMCSPutFileCompletedCallback got back NULL results", v89, 2u);
    }
  }
}

void sub_20E3B3288(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    objc_msgSend__registerPowerAssertionIfNeeded(*(a1 + 32), a2, a3, a4, a5);
    objc_msgSend__schedulePowerAssertionTimer(*(a1 + 32), v6, v7, v8, v9);
  }

  v10 = *(a1 + 40);
  v11 = *(*(*(a1 + 56) + 8) + 24);
  v12 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  dispatch_assert_queue_V2(v12);
  if (v10)
  {
    v13 = *(v10 + 16);

    v13(v10, v11);
  }
}

void sub_20E3B3338(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v40 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  dispatch_assert_queue_V2(v7);
  Weak = objc_loadWeak((a1 + 56));
  v9 = objc_loadWeak((a1 + 64));
  *(*(*(a1 + 40) + 8) + 24) &= v5;
  v10 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v34 = 138412290;
        v35 = v9;
        _os_log_impl(&dword_20E3AF000, v11, OS_LOG_TYPE_INFO, "Registered mmcs put transfer: %@", &v34, 0xCu);
      }
    }
  }

  else
  {
    if (v10)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v34 = 138412802;
        v35 = objc_opt_class();
        v36 = 2112;
        v37 = v9;
        v38 = 2112;
        v39 = objc_msgSend_mmcsError(v9, v14, v15, v16, v17);
        _os_log_impl(&dword_20E3AF000, v12, OS_LOG_TYPE_INFO, "%@ - %@ Could not compute signature for asset. Ignoring.  Error: %@", &v34, 0x20u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_msgSend_mmcsError(v9, v18, v19, v20, v21);
        v34 = 138412546;
        v35 = v9;
        v36 = 2112;
        v37 = v23;
        _os_log_impl(&dword_20E3AF000, v22, OS_LOG_TYPE_INFO, "Failed to register mmcs transfer: %@ error: %@", &v34, 0x16u);
      }
    }

    v24 = objc_msgSend_transfers(Weak, v18, v19, v20, v21);
    v29 = objc_msgSend_guid(v9, v25, v26, v27, v28);
    objc_msgSend_removeObjectForKey_(v24, v30, v29, v31, v32);
  }

  dispatch_group_leave(*(*(*(a1 + 48) + 8) + 40));
  v33 = *MEMORY[0x277D85DE8];
}

void sub_20E3B3554(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x20E3B34F0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_20E3B3F3C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, a2, &v23, v27, 16);
  if (result)
  {
    v12 = result;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(a1);
        }

        v15 = *(*(&v23 + 1) + 8 * v14);
        objc_msgSend_setRequestorID_(v15, v9, a2, v10, v11);
        objc_msgSend_setRequestURL_(v15, v16, a3, v17, v18);
        objc_msgSend_setAuthToken_(v15, v19, a4, v20, v21);
        ++v14;
      }

      while (v12 != v14);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v9, &v23, v27, 16);
      v12 = result;
    }

    while (result);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_20E3B4058(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_count(a1, a2, a3, a4, a5);
  v15 = v10;
  v16 = 8 * v10;
  if (a2)
  {
    v17 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v17 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = malloc_type_malloc(v16, 0x10040436913F5uLL);
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v19 = malloc_type_malloc(v16, 0xC0040B8AA526DuLL);
LABEL_8:
  v68 = a4;
  v69 = a5;
  if (a3)
  {
    v20 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
  }

  else
  {
    v20 = 0;
  }

  if (v15 < 1 || !v17 || !v18 || !v19)
  {
    goto LABEL_51;
  }

  if (!objc_msgSend_count(a1, v11, v12, v13, v14))
  {
LABEL_24:
    if (a2)
    {
      *a2 = v17;
    }

    if (a3)
    {
      *a3 = v20;
    }

    if (v68)
    {
      *v68 = v18;
    }

    if (v69)
    {
      *v69 = v19;
    }

    return 1;
  }

  v24 = 0;
  while (1)
  {
    v25 = objc_msgSend_objectAtIndex_(a1, v21, v24, v22, v23, v68);
    if (!objc_msgSend_authToken(v25, v26, v27, v28, v29))
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_51;
      }

      v62 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        goto LABEL_51;
      }

      v73 = 0;
      v63 = " => No auth token supplied, failing";
      v64 = &v73;
LABEL_42:
      _os_log_impl(&dword_20E3AF000, v62, OS_LOG_TYPE_INFO, v63, v64, 2u);
      goto LABEL_51;
    }

    if (!objc_msgSend_signature(v25, v30, v31, v32, v33))
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_51;
      }

      v62 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        goto LABEL_51;
      }

      v72 = 0;
      v63 = " => Empty signature for transfer, failing";
      v64 = &v72;
      goto LABEL_42;
    }

    if (!objc_msgSend_itemID(v25, v34, v35, v36, v37))
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_51;
      }

      v62 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v63 = " => Item ID is 0, failing";
      v64 = buf;
      goto LABEL_42;
    }

    objc_msgSend_signature(v25, v38, v39, v40, v41);
    v42 = MMCSSignatureCreateWithData();
    if (!v42)
    {
      break;
    }

    v47 = v42;
    v17[v24] = objc_msgSend_itemID(v25, v43, v44, v45, v46);
    v18[v24] = v47;
    v52 = objc_msgSend_authToken(v25, v48, v49, v50, v51);
    v19[v24] = objc_msgSend_UTF8String(v52, v53, v54, v55, v56);
    if (v20)
    {
      v20[v24] = objc_msgSend_encryptionBehavior(v25, v57, v58, v59, v60) != 1;
    }

    if (++v24 >= objc_msgSend_count(a1, v57, v58, v59, v60))
    {
      goto LABEL_24;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v65 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      *v70 = 0;
      _os_log_impl(&dword_20E3AF000, v65, OS_LOG_TYPE_INFO, " => Could not generate signature, failing", v70, 2u);
    }
  }

  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      v67 = v18[i];
      if (v67)
      {
        free(v67);
      }
    }
  }

LABEL_51:
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (v68)
  {
    *v68 = 0;
  }

  if (v69)
  {
    *v69 = 0;
  }

  free(v17);
  free(v20);
  free(v18);
  free(v19);
  return 0;
}

void sub_20E3B4404(void *a1, const char *a2, void **a3, void ***a4, void **a5)
{
  LODWORD(v9) = objc_msgSend_count(a1, a2, a3, a4, a5);
  if (a2 && *a2)
  {
    free(*a2);
    *a2 = 0;
  }

  if (a3 && *a3)
  {
    free(*a3);
    *a3 = 0;
  }

  if (a4)
  {
    v10 = *a4;
    if (*a4)
    {
      v9 = v9;
      if (v9 >= 1)
      {
        do
        {
          if (*v10)
          {
            free(*v10);
          }

          ++v10;
          --v9;
        }

        while (v9);
        v10 = *a4;
      }

      free(v10);
      *a4 = 0;
    }
  }

  if (a5)
  {
    if (*a5)
    {
      free(*a5);
      *a5 = 0;
    }
  }
}

void sub_20E3B4C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_20E3B4C8C(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    result = MMCSEngineIsActive();
    v3 = result != 0;
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void sub_20E3B4DB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 40))
  {
    v5 = a2;
    v7 = objc_msgSend_replyQueue(*(a1 + 32), a2, a3, a4, a5);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_20E3B4E4C;
    v8[3] = &unk_277E1CBC8;
    v8[4] = *(a1 + 40);
    v9 = v5;
    dispatch_async(v7, v8);
  }
}

void sub_20E3B4F5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 40))
  {
    v5 = a2;
    v7 = objc_msgSend_replyQueue(*(a1 + 32), a2, a3, a4, a5);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_20E3B4FF4;
    v8[3] = &unk_277E1CBC8;
    v8[4] = *(a1 + 40);
    v9 = v5;
    dispatch_async(v7, v8);
  }
}

void sub_20E3B50FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20E3B5114(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_count(*(a1 + 32), a2, a3, a4, a5))
  {
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend__unregisterTransfers_(*(a1 + 40), v6, *(a1 + 32), v7, v8);
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_20E3AF000, v9, OS_LOG_TYPE_INFO, "Empty files array supplied to unregister, failing", v10, 2u);
    }
  }
}

dispatch_queue_t sub_20E3B5214()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.MMCSController", v0);
  qword_28112D6F0 = result;
  return result;
}

void sub_20E3B5284()
{
  v45 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_20E3AF000, v4, OS_LOG_TYPE_INFO, "MMCS prewarm is called", buf, 2u);
    }
  }

  v5 = objc_msgSend_stringByExpandingTildeInPath(@"/var/mobile/Library/SMS/prewarm.db", v0, v1, v2, v3);
  v6 = objc_alloc(MEMORY[0x277D18AD0]);
  v8 = objc_msgSend_initWithPath_storeName_dataProtectionClass_(v6, v7, v5, @"MMCSServices", 0);
  v11 = objc_msgSend_dataForKey_error_(v8, v9, @"MMCSContainerState", 0, v10);
  v16 = objc_msgSend_date(MEMORY[0x277CBEAA8], v12, v13, v14, v15);
  objc_msgSend_timeIntervalSinceReferenceDate(v16, v17, v18, v19, v20);
  if (!v11 || (byte_28112D708 & 1) != 0 || v21 - *&qword_28112D700 <= 30.0)
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_20E3AF000, v39, OS_LOG_TYPE_INFO, "There is no ContainerState from prewarm database or prewarm happened just now,  and skip prewarm", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v27 = objc_msgSend_length(v11, v22, v24, v25, v26);
        *buf = 134217984;
        v44 = v27;
        _os_log_impl(&dword_20E3AF000, v23, OS_LOG_TYPE_INFO, "Read from prewarm database about ContainerState and length is: %lu.  Preform MMCS   prewarm", buf, 0xCu);
      }
    }

    v41 = *MEMORY[0x277D25670];
    v42 = v11;
    v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, &v42, &v41, 1);
    v33 = objc_msgSend_date(MEMORY[0x277CBEAA8], v29, v30, v31, v32);
    objc_msgSend_timeIntervalSinceReferenceDate(v33, v34, v35, v36, v37);
    qword_28112D700 = v38;
    byte_28112D708 = 1;
    MEMORY[0x20F32CCB0](0, v28, sub_20E3B5508);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_20E3B5508(int a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = objc_msgSend_serialControllerQueue(MMCSController, cf, a3, a4, a5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_20E3B7E8C;
  block[3] = &unk_277E1CE10;
  block[4] = cf;
  dispatch_async(v6, block);
}

void sub_20E3B569C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 40))
  {
    v6 = a3;
    v9 = objc_msgSend_replyQueue(*(a1 + 32), a2, a3, a4, a5);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_20E3B5748;
    v11[3] = &unk_277E1CCB0;
    v10 = *(a1 + 40);
    v11[5] = a4;
    v11[6] = v10;
    v12 = v6;
    v11[4] = a2;
    dispatch_async(v9, v11);
  }
}

uint64_t sub_20E3B5764(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_count(*(a1 + 32), a2, a3, a4, a5))
  {
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_20E3B588C;
    v12[3] = &unk_277E1CD00;
    v12[4] = v7;
    v8 = *(a1 + 56);
    v13 = *(a1 + 40);
    v14 = v8;
    v15 = *(a1 + 72);
    return objc_msgSend__registerTransfers_preauthenticate_completionBlock_(v13, v6, v7, 0, v12);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_20E3AF000, v10, OS_LOG_TYPE_INFO, "Empty files array supplied to get, failing", buf, 2u);
      }
    }

    v11 = *(a1 + 32);
    return (*(*(a1 + 80) + 16))();
  }
}

uint64_t sub_20E3B588C(uint64_t a1, const char *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = *(a1 + 32);
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v22, v27, 16);
    if (v5)
    {
      v7 = *v23;
      *&v6 = 138412290;
      v21 = v6;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = v21;
              *&buf[4] = v9;
              _os_log_impl(&dword_20E3AF000, v11, OS_LOG_TYPE_INFO, "[=MMCS-Timing=]  Starting get file for: %@", buf, 0xCu);
            }
          }
        }

        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v10, &v22, v27, 16);
      }

      while (v5);
    }

    *buf = 0;
    if (objc_msgSend__getTransfers_requestURL_requestorID_sourceAppID_token_error_(*(a1 + 40), v4, *(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), buf, v21))
    {
      result = objc_msgSend__setScheduledTransfers_block_(*(a1 + 40), v12, *(a1 + 32), *(a1 + 80), v13);
    }

    else
    {
      v19 = *(a1 + 32);
      result = (*(*(a1 + 80) + 16))();
    }

    v20 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = *(a1 + 80);
    v16 = *(a1 + 32);
    v17 = *(*(a1 + 80) + 16);
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  return result;
}

void sub_20E3B5BD0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 40))
  {
    v6 = a3;
    v9 = objc_msgSend_replyQueue(*(a1 + 32), a2, a3, a4, a5);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_20E3B5C7C;
    v11[3] = &unk_277E1CCB0;
    v10 = *(a1 + 40);
    v11[5] = a4;
    v11[6] = v10;
    v12 = v6;
    v11[4] = a2;
    dispatch_async(v9, v11);
  }
}

uint64_t sub_20E3B5C98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_count(*(a1 + 32), a2, a3, a4, a5))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 96);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_20E3B5DCC;
    v12[3] = &unk_277E1CD50;
    v16 = *(a1 + 88);
    v12[4] = v7;
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v15 = *(a1 + 72);
    return objc_msgSend__registerTransfers_preauthenticate_completionBlock_(v13, v6, v7, v8, v12);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_20E3AF000, v10, OS_LOG_TYPE_INFO, "Empty files array supplied to put, failing", buf, 2u);
      }
    }

    v11 = *(a1 + 32);
    return (*(*(a1 + 88) + 16))();
  }
}

uint64_t sub_20E3B5DCC(uint64_t a1, const char *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = *(a1 + 32);
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v20, v25, 16);
    if (v5)
    {
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v8;
              _os_log_impl(&dword_20E3AF000, v10, OS_LOG_TYPE_INFO, "[=MMCS-Timing=]  Starting put file for: %@", buf, 0xCu);
            }
          }
        }

        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v9, &v20, v25, 16);
      }

      while (v5);
    }

    *buf = 0;
    if (objc_msgSend__putTransfers_requestURL_requestorID_transferID_sourceAppID_token_error_(*(a1 + 40), v4, *(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), buf))
    {
      result = objc_msgSend__setScheduledTransfers_block_(*(a1 + 40), v11, *(a1 + 32), *(a1 + 88), v12);
    }

    else
    {
      v18 = *(a1 + 32);
      result = (*(*(a1 + 88) + 16))();
    }

    v19 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v14 = *(a1 + 88);
    v15 = *(a1 + 32);
    v16 = *(*(a1 + 88) + 16);
    v17 = *MEMORY[0x277D85DE8];

    return v16();
  }

  return result;
}

uint64_t sub_20E3B6394(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v36 = v7;
      _os_log_impl(&dword_20E3AF000, v6, OS_LOG_TYPE_INFO, "Request cancel transferID %@", buf, 0xCu);
    }
  }

  objc_msgSend_lock(*(*(a1 + 40) + 112), v2, v3, v4, v5);
  v11 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 40) + 104), v8, *(a1 + 32), v9, v10);
  v16 = objc_msgSend_copy(v11, v12, v13, v14, v15);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v30, v34, 16);
  if (v21)
  {
    v22 = *v31;
    do
    {
      v23 = 0;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend__cancelRequest_(*(a1 + 40), v18, *(*(&v30 + 1) + 8 * v23++), v19, v20);
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v30, v34, 16);
    }

    while (v21);
  }

  result = objc_msgSend_unlock(*(*(a1 + 40) + 112), v24, v25, v26, v27);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_20E3B6920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_20E3B6938(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6 = *(a1 + 32);
  if (qword_28112D718 != -1)
  {
    sub_20E3B8A30();
  }

  v7 = objc_msgSend__MMCSICloudRequestHeadersCopy_(v6, v2, qword_28112D710, v3, v4);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v28, v32, 16);
  if (v9)
  {
    v14 = v9;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = MEMORY[0x277CCACA8];
        v19 = objc_msgSend_objectForKey_(v7, v10, v17, v12, v13);
        v23 = objc_msgSend_stringWithFormat_(v18, v20, @"%@:%@\n", v21, v22, v17, v19);
        objc_msgSend_appendString_(v5, v24, v23, v25, v26);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v28, v32, 16);
    }

    while (v14);
  }

  if (objc_msgSend_length(v5, v10, v11, v12, v13))
  {
    *(*(*(a1 + 40) + 8) + 40) = v5;
  }

  else
  {
  }

  v27 = *MEMORY[0x277D85DE8];
}

__CFString *sub_20E3B6C4C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >= 8)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Unknown (%d)", a4, a5, a1);
  }

  else
  {
    return off_277E1CE30[a1];
  }
}

__CFString *sub_20E3B6E3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >= 6)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Unknown (%d)", a4, a5, a1);
  }

  else
  {
    return off_277E1CE70[a1];
  }
}

void sub_20E3B72CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  if (!v6)
  {
    if (_IMWillLog())
    {
      v7 = MEMORY[0x277CBEA90];
      v8 = MEMORY[0x277CBEBC0];
      v9 = objc_msgSend_localPath(*(a1 + 40), a2, a3, a4, a5);
      v13 = objc_msgSend_fileURLWithPath_(v8, v10, v9, v11, v12);
      v15 = objc_msgSend_dataWithContentsOfURL_options_error_(v7, v14, v13, 1, 0);
      v20 = objc_msgSend_SHA1HexString(v15, v16, v17, v18, v19);
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = objc_msgSend_localPath(*(a1 + 40), v21, v22, v23, v24);
          v48 = 138412546;
          v49 = v26;
          v50 = 2112;
          v51 = v20;
          _os_log_impl(&dword_20E3AF000, v25, OS_LOG_TYPE_INFO, "Put file at path: %@  with hash: %@", &v48, 0x16u);
        }
      }

      goto LABEL_14;
    }

    v6 = *(a1 + 32);
  }

  v27 = objc_msgSend_domain(v6, a2, a3, a4, a5);
  isEqualToString = objc_msgSend_isEqualToString_(v27, v28, *MEMORY[0x277D25460], v29, v30);
  v32 = *(a1 + 32);
  if (!isEqualToString)
  {
    v33 = objc_msgSend_domain(v32, v21, v22, v23, v24);
    if (!objc_msgSend_isEqualToString_(v33, v34, @"apple.mme", v35, v36))
    {
LABEL_14:
      v42 = 0;
      v43 = 0;
      goto LABEL_15;
    }

    v32 = *(a1 + 32);
  }

  objc_msgSend_code(v32, v21, v22, v23, v24);
  v41 = objc_msgSend_code(*(a1 + 32), v37, v38, v39, v40);
  if (v41 >= 0x20)
  {
    v42 = 0;
  }

  else
  {
    v42 = 0x8080E000 >> v41;
  }

  v43 = 1;
LABEL_15:
  v44 = *(a1 + 32);
  if (!v44)
  {
    objc_msgSend_setProgress_(*(a1 + 40), v21, v22, v23, v24, 1.0);
  }

  v45 = objc_msgSend_completionBlock(*(a1 + 40), v21, v22, v23, v24);
  if (v45)
  {
    (*(v45 + 16))(v45, *(a1 + 40), v44 == 0, v43, v42 & 1, *(a1 + 32));
  }

  else if (IMOSLoggingEnabled())
  {
    v46 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      LOWORD(v48) = 0;
      _os_log_impl(&dword_20E3AF000, v46, OS_LOG_TYPE_INFO, "No callback for put completion, just passing through", &v48, 2u);
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_20E3B7798(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    if (!v17)
    {
      JUMPOUT(0x20E3B7748);
    }

    JUMPOUT(0x20E3B76E8);
  }

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(exc_buf);
}

void sub_20E3B780C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v86 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_completionBlock(*(a1 + 32), a2, a3, a4, a5);
  v11 = *(*(*(a1 + 48) + 8) + 40);
  if (!v11)
  {
    objc_msgSend_setProgress_(*(a1 + 32), v6, v7, v8, v9, 1.0);
    if (objc_msgSend_localPath(*(a1 + 32), v34, v35, v36, v37))
    {
      v42 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v38, v39, v40, v41);
      v43 = *(a1 + 40);
      v48 = objc_msgSend_localPath(*(a1 + 32), v44, v45, v46, v47);
      objc_msgSend_moveItemAtPath_toPath_error_(v42, v49, v43, v48, 0);
      v32 = 0;
      v33 = 0;
      v31 = 1;
      goto LABEL_15;
    }

    *(*(*(a1 + 48) + 8) + 40) = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v38, *MEMORY[0x277D191B8], 10, 0);
    if (IMOSLoggingEnabled())
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v55 = objc_msgSend_guid(*(a1 + 32), v51, v52, v53, v54);
        v82 = 138412290;
        v83 = v55;
        _os_log_impl(&dword_20E3AF000, v50, OS_LOG_TYPE_INFO, "MMCS: We finished the _getItemCompleted successfully, but we dont have a file transfer local path for transfer guid %@", &v82, 0xCu);
      }
    }

    goto LABEL_14;
  }

  v12 = objc_msgSend_domain(v11, v6, v7, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, *MEMORY[0x277D25460], v14, v15);
  v21 = *(*(*(a1 + 48) + 8) + 40);
  if (!isEqualToString)
  {
    v22 = objc_msgSend_domain(v21, v16, v17, v18, v19);
    if (objc_msgSend_isEqualToString_(v22, v23, @"apple.mme", v24, v25))
    {
      v21 = *(*(*(a1 + 48) + 8) + 40);
      goto LABEL_5;
    }

LABEL_14:
    v31 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_15;
  }

LABEL_5:
  objc_msgSend_code(v21, v16, v17, v18, v19);
  v30 = objc_msgSend_code(*(*(*(a1 + 48) + 8) + 40), v26, v27, v28, v29);
  v31 = 0;
  if (v30 >= 0x20)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0x8080E000 >> v30;
  }

  v33 = 1;
LABEL_15:
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if (_IMWillLog())
    {
      v60 = MEMORY[0x277CBEA90];
      v61 = MEMORY[0x277CBEBC0];
      v62 = objc_msgSend_localPath(*(a1 + 32), v56, v57, v58, v59);
      v66 = objc_msgSend_fileURLWithPath_(v61, v63, v62, v64, v65);
      v68 = objc_msgSend_dataWithContentsOfURL_options_error_(v60, v67, v66, 1, 0);
      v73 = objc_msgSend_SHA1HexString(v68, v69, v70, v71, v72);
      if (IMOSLoggingEnabled())
      {
        v74 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          v79 = objc_msgSend_localPath(*(a1 + 32), v75, v76, v77, v78);
          v82 = 138412546;
          v83 = v79;
          v84 = 2112;
          v85 = v73;
          _os_log_impl(&dword_20E3AF000, v74, OS_LOG_TYPE_INFO, "Got file at path: %@  with hash: %@", &v82, 0x16u);
        }
      }
    }
  }

  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 32), v31, v33, v32 & 1, *(*(*(a1 + 48) + 8) + 40));
  }

  else if (IMOSLoggingEnabled())
  {
    v80 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
    {
      LOWORD(v82) = 0;
      _os_log_impl(&dword_20E3AF000, v80, OS_LOG_TYPE_INFO, "No callback for get completion, just passing through", &v82, 2u);
    }
  }

  v81 = *MEMORY[0x277D85DE8];
}

void sub_20E3B7E8C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  byte_28112D708 = 0;
  v6 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3, a4, a5);
  objc_msgSend_timeIntervalSinceReferenceDate(v6, v7, v8, v9, v10);
  v12 = v11;
  v13 = *&qword_28112D700;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v24 = 138412546;
      v25 = objc_msgSend_date(MEMORY[0x277CBEAA8], v14, v18, v15, v16);
      v26 = 2048;
      v27 = v12 - v13;
      _os_log_impl(&dword_20E3AF000, v17, OS_LOG_TYPE_INFO, "MMCS prewarm comppletecallback at %@ and preward duration: %f", &v24, 0x16u);
    }
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = objc_msgSend_objectForKeyedSubscript_(v19, v14, *MEMORY[0x277D25640], v15, v16);
    if (v20)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v24 = 138412290;
          v25 = v20;
          _os_log_impl(&dword_20E3AF000, v21, OS_LOG_TYPE_INFO, "MMCS prewarm comppletecallback with error: %@", &v24, 0xCu);
        }
      }
    }

    CFRelease(*(a1 + 32));
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_20E3AF000, v22, OS_LOG_TYPE_INFO, "mmcsWarmCompleteCallback got back NULL results", &v24, 2u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}