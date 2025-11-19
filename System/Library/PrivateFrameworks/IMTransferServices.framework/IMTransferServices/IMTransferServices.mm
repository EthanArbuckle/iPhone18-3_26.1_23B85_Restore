IMTransferServicesCompressionController *sub_254879D00()
{
  result = objc_alloc_init(IMTransferServicesCompressionController);
  qword_28141B760 = result;
  return result;
}

id -[IMTransferServicesCompressionController _blockForCopier:](IMTransferServicesCompressionController *self, SEL a2, id a3)
{
  if (!a3 || !objc_msgSend_identifier(a3, a2, a3, v3, v4, v5, v6, v7))
  {
    return 0;
  }

  blockMap = self->_blockMap;
  v18 = objc_msgSend_identifier(a3, v10, v11, v12, v13, v14, v15, v16);

  return MEMORY[0x2821F9670](blockMap, sel_objectForKey_, v18, v19, v20, v21, v22, v23);
}

void sub_25487A5D0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x25487A590);
    }

    JUMPOUT(0x25487A54CLL);
  }

  _Unwind_Resume(a1);
}

IMTransferServicesController *sub_25487A670()
{
  result = objc_alloc_init(IMTransferServicesController);
  qword_28141B768 = result;
  return result;
}

void sub_25487AD4C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x25487AC70);
  }

  _Block_object_dispose((v2 - 176), 8);
  _Unwind_Resume(exc_buf);
}

void sub_25487AE4C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_254879000, v2, OS_LOG_TYPE_INFO, "Transfer service disconnected", v4, 2u);
    }
  }

  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    xpc_connection_cancel(v3);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

int64_t sub_25487AF08(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x259C1CC00](a2);
  if (result == MEMORY[0x277D86468])
  {
    if (_IMWillLog())
    {
      v5 = MEMORY[0x259C1CBA0](a2);
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          pid = xpc_connection_get_pid(*(*(*(a1 + 40) + 8) + 40));
          v13[0] = 67109378;
          v13[1] = pid;
          v14 = 2080;
          v15 = v5;
          _os_log_impl(&dword_254879000, v6, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", v13, 0x12u);
        }
      }

      free(v5);
    }

    result = xpc_dictionary_get_int64(a2, "__message_type__");
    if (result == 1)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = IMGetXPCIntFromDictionary();
        v10 = IMGetXPCIntFromDictionary();
        v11 = IMGetXPCIntFromDictionary();
        result = (*(v8 + 16))(v8, v9, v10, v11);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25487B0A8(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C1CC00](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v51 = string;
        _os_log_impl(&dword_254879000, v15, OS_LOG_TYPE_INFO, "Error received in message reply handler: %s", buf, 0xCu);
      }
    }

    v17 = *(a1 + 112);
    if (v17 > 2)
    {
      if (*(a1 + 96))
      {
        objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v11, @"IMTransferServicesErrorDomain", -4, 0, v12, v13, v14);
        (*(*(a1 + 96) + 16))(*(a1 + 96), *(a1 + 40));
      }
    }

    else
    {
      v48 = v17 + 1;
      objc_msgSend__sendFilePath_topic_userInfo_transferID_sourceAppID_encryptFile_retries_progressBlock_completionBlock_(*(a1 + 32), v11, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 116), v48, *(a1 + 88), *(a1 + 96));
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v18 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v51 = v18;
        _os_log_impl(&dword_254879000, v19, OS_LOG_TYPE_INFO, "received reply: %s", buf, 0xCu);
      }
    }

    free(v18);
    v20 = IMGetXPCBoolFromDictionary();
    v21 = IMGetXPCIntFromDictionary();
    v22 = IMGetXPCStringFromDictionary();
    v23 = IMGetXPCStringFromDictionary();
    v24 = IMGetXPCDataFromDictionary();
    v25 = IMGetXPCDataFromDictionary();
    v26 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v27 = IMGetXPCStringFromDictionary();
    v28 = *(a1 + 96);
    if (v28)
    {
      (*(v28 + 16))(v28, *(a1 + 40), v20, v26, v27, v22, v24, v23, v25, v21);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v51 = v10;
        _os_log_impl(&dword_254879000, v9, OS_LOG_TYPE_INFO, "Error reply type in message reply handler: %s", buf, 0xCu);
      }
    }

    if (*(a1 + 96))
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v5, @"IMTransferServicesErrorDomain", -1, 0, v6, v7, v8);
      (*(*(a1 + 96) + 16))(*(a1 + 96), *(a1 + 40));
    }
  }

  if (*(a1 + 80))
  {
    v49 = 0;
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = *(a1 + 80);
        *buf = 138412290;
        v51 = v37;
        _os_log_impl(&dword_254879000, v36, OS_LOG_TYPE_INFO, "Removing the clone we created before: %@", buf, 0xCu);
      }
    }

    v38 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v29, v30, v31, v32, v33, v34, v35);
    if ((objc_msgSend_removeItemAtURL_error_(v38, v39, *(a1 + 80), &v49, v40, v41, v42, v43) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = *(a1 + 80);
          *buf = 138412546;
          v51 = v45;
          v52 = 2112;
          v53 = v49;
          _os_log_impl(&dword_254879000, v44, OS_LOG_TYPE_INFO, "Deletion of clone of %@ failed! error: %@", buf, 0x16u);
        }
      }
    }
  }

  v46 = *(*(*(a1 + 104) + 8) + 40);
  if (v46)
  {
    xpc_connection_cancel(v46);
    xpc_release(*(*(*(a1 + 104) + 8) + 40));
    *(*(*(a1 + 104) + 8) + 40) = 0;
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_25487B568(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25487B240);
  }

  _Unwind_Resume(a1);
}

void sub_25487BCBC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x25487BBD4);
  }

  _Block_object_dispose((v2 - 176), 8);
  _Unwind_Resume(exc_buf);
}

void sub_25487BD84(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_254879000, v2, OS_LOG_TYPE_INFO, "Transfer service disconnected", v4, 2u);
    }
  }

  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    xpc_connection_cancel(v3);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

int64_t sub_25487BE40(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x259C1CC00](a2);
  if (result == MEMORY[0x277D86468])
  {
    if (_IMWillLog())
    {
      v5 = MEMORY[0x259C1CBA0](a2);
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          pid = xpc_connection_get_pid(*(*(*(a1 + 40) + 8) + 40));
          v13[0] = 67109378;
          v13[1] = pid;
          v14 = 2080;
          v15 = v5;
          _os_log_impl(&dword_254879000, v6, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", v13, 0x12u);
        }
      }

      free(v5);
    }

    result = xpc_dictionary_get_int64(a2, "__message_type__");
    if (result == 1)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = IMGetXPCIntFromDictionary();
        v10 = IMGetXPCIntFromDictionary();
        v11 = IMGetXPCIntFromDictionary();
        result = (*(v8 + 16))(v8, v9, v10, v11);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25487BFE0(uint64_t a1, void *a2)
{
  v90 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C1CC00](a2);
  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 != MEMORY[0x277D86468])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
          *buf = 136315138;
          v85 = string;
          _os_log_impl(&dword_254879000, v9, OS_LOG_TYPE_INFO, "Error reply type in message reply handler: %s", buf, 0xCu);
        }
      }

      if (*(a1 + 112))
      {
        objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v5, @"IMTransferServicesErrorDomain", -1, 0, v6, v7, v8);
        v11 = *(a1 + 40);
        v12 = *(a1 + 56);
        (*(*(a1 + 112) + 16))();
      }

      goto LABEL_45;
    }

    v21 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v85 = v21;
        _os_log_impl(&dword_254879000, v22, OS_LOG_TYPE_INFO, "received reply: %s", buf, 0xCu);
      }
    }

    free(v21);
    v23 = IMGetXPCBoolFromDictionary();
    v24 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v83 = v24;
    v25 = IMGetXPCStringFromDictionary();
    v26 = IMGetXPCStringFromDictionary();
    v27 = IMGetXPCStringFromDictionary();
    v34 = -1;
    if (v27 && !v24)
    {
      objc_msgSend_cStringUsingEncoding_(v27, v28, 4, v29, v30, v31, v32, v33);
      v34 = sandbox_extension_consume();
      if (v34 == -1)
      {
        if (IMOSLoggingEnabled())
        {
          v37 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = *__error();
            *buf = 138412546;
            v85 = v25;
            v86 = 1024;
            LODWORD(v87) = v38;
            _os_log_impl(&dword_254879000, v37, OS_LOG_TYPE_INFO, "Failed to consume sandbox extension for result path %@: %{darwin.errno}d", buf, 0x12u);
          }
        }

        v24 = 0;
        v34 = -1;
      }

      else
      {
        v24 = 0;
      }
    }

    isEqualToString = objc_msgSend_isEqualToString_(v25, v28, *(a1 + 56), v29, v30, v31, v32, v33);
    if (v24)
    {
      v47 = 1;
    }

    else
    {
      v47 = isEqualToString;
    }

    if ((v47 & 1) == 0 && ((v23 ^ 1) & 1) == 0)
    {
      v48 = *(a1 + 56);
      if (objc_msgSend_pathExtension(v25, v40, v41, v42, v43, v44, v45, v46))
      {
        v56 = objc_msgSend_stringByDeletingPathExtension(*(a1 + 56), v49, v50, v51, v52, v53, v54, v55);
        v64 = objc_msgSend_pathExtension(v25, v57, v58, v59, v60, v61, v62, v63);
        v48 = objc_msgSend_stringByAppendingPathExtension_(v56, v65, v64, v66, v67, v68, v69, v70);
      }

      v71 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v49, v50, v51, v52, v53, v54, v55);
      objc_msgSend_copyItemAtPath_toPath_error_(v71, v72, v25, v48, &v83, v73, v74, v75);
      if (!v83)
      {
        goto LABEL_38;
      }

      if (IMOSLoggingEnabled())
      {
        v76 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          v77 = *(a1 + 56);
          *buf = 138412802;
          v85 = v25;
          v86 = 2112;
          v87 = v77;
          v88 = 2112;
          v89 = v83;
          _os_log_impl(&dword_254879000, v76, OS_LOG_TYPE_INFO, "Failed to copy item at path %@ to path %@: %@", buf, 0x20u);
        }
      }
    }

    v48 = v25;
LABEL_38:
    if (v34 != -1)
    {
      if (sandbox_extension_release())
      {
        if (IMOSLoggingEnabled())
        {
          v78 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
          {
            v79 = *__error();
            *buf = 138412546;
            v85 = v48;
            v86 = 1024;
            LODWORD(v87) = v79;
            _os_log_impl(&dword_254879000, v78, OS_LOG_TYPE_INFO, "Failed to release sandbox extension for result path %@: %{darwin.errno}d", buf, 0x12u);
          }
        }
      }
    }

    v80 = *(a1 + 112);
    if (v80)
    {
      (*(v80 + 16))(v80, *(a1 + 40), v48, v23, v83, v26);
    }

    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
      *buf = 136315138;
      v85 = v18;
      _os_log_impl(&dword_254879000, v17, OS_LOG_TYPE_INFO, "Error received in message reply handler: %s", buf, 0xCu);
    }
  }

  v19 = *(a1 + 136);
  if (v19 > 2)
  {
    if (*(a1 + 112))
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v13, @"IMTransferServicesErrorDomain", -4, 0, v14, v15, v16);
      v35 = *(a1 + 40);
      v36 = *(a1 + 56);
      (*(*(a1 + 112) + 16))();
    }
  }

  else
  {
    v20 = *(a1 + 104);
    objc_msgSend__receiveFileTransfer_topic_path_requestURLString_ownerID_sourceAppID_signature_decryptionKey_retries_fileSize_progressBlock_completionBlock_(*(a1 + 32), v13, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), v19 + 1, *(a1 + 128), v20, *(a1 + 112));
  }

LABEL_45:
  v81 = *(*(*(a1 + 120) + 8) + 40);
  if (v81)
  {
    xpc_connection_cancel(v81);
    xpc_release(*(*(*(a1 + 120) + 8) + 40));
    *(*(*(a1 + 120) + 8) + 40) = 0;
  }

  v82 = *MEMORY[0x277D85DE8];
}

void sub_25487C7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25487C7C4(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_254879000, v2, OS_LOG_TYPE_INFO, "Transfer service disconnected", v4, 2u);
    }
  }

  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    xpc_connection_cancel(v3);
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_25487CB60(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    xpc_connection_cancel(v2);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_25487CEC4(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    xpc_connection_cancel(v2);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_25487CF14(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x259C1CC00](a2) == MEMORY[0x277D86468] && _IMWillLog())
  {
    v4 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        pid = xpc_connection_get_pid(*(*(*(a1 + 32) + 8) + 40));
        v8[0] = 67109378;
        v8[1] = pid;
        v9 = 2080;
        v10 = v4;
        _os_log_impl(&dword_254879000, v5, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", v8, 0x12u);
      }
    }

    free(v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25487D560(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    xpc_connection_cancel(v2);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_25487D5B0(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x259C1CC00](a2) == MEMORY[0x277D86468] && _IMWillLog())
  {
    v4 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        pid = xpc_connection_get_pid(*(*(*(a1 + 32) + 8) + 40));
        v8[0] = 67109378;
        v8[1] = pid;
        v9 = 2080;
        v10 = v4;
        _os_log_impl(&dword_254879000, v5, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", v8, 0x12u);
      }
    }

    free(v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25487D6DC(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C1CC00](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v26 = 136315138;
        v27 = string;
        _os_log_impl(&dword_254879000, v15, OS_LOG_TYPE_INFO, "Transfer_Nickname - Error received in message reply handler: %s", &v26, 0xCu);
      }
    }

    v17 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v11, @"IMTransferServicesErrorDomain", -4, 0, v12, v13, v14);
    v18 = *(a1 + 32);
    if (v18)
    {
      (*(v18 + 16))(v18, 0, v17);
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v19 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v26 = 136315138;
        v27 = v19;
        _os_log_impl(&dword_254879000, v20, OS_LOG_TYPE_INFO, "received reply: %s", &v26, 0xCu);
      }
    }

    free(v19);
    MEMORY[0x259C1C9C0](@"IMNickname", @"IMSharedUtilities");
    objc_opt_class();
    v21 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
    v22 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v23 = *(a1 + 32);
    if (v23)
    {
      (*(v23 + 16))(v23, v21, v22);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v26 = 136315138;
        v27 = v10;
        _os_log_impl(&dword_254879000, v9, OS_LOG_TYPE_INFO, "Transfer_Nickname - Error reply type in message reply handler: %s", &v26, 0xCu);
      }
    }

    if (*(a1 + 32))
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v5, @"IMTransferServicesErrorDomain", -1, 0, v6, v7, v8);
      (*(*(a1 + 32) + 16))();
    }
  }

  v24 = *(*(*(a1 + 40) + 8) + 40);
  if (v24)
  {
    xpc_connection_cancel(v24);
    xpc_release(*(*(*(a1 + 40) + 8) + 40));
    *(*(*(a1 + 40) + 8) + 40) = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_25487D9B8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25487D850);
  }

  _Unwind_Resume(a1);
}

void sub_25487DF20(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    xpc_connection_cancel(v2);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_25487DF70(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x259C1CC00](a2) == MEMORY[0x277D86468] && _IMWillLog())
  {
    v4 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        pid = xpc_connection_get_pid(*(*(*(a1 + 32) + 8) + 40));
        v8[0] = 67109378;
        v8[1] = pid;
        v9 = 2080;
        v10 = v4;
        _os_log_impl(&dword_254879000, v5, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", v8, 0x12u);
      }
    }

    free(v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25487E09C(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C1CC00](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v35 = string;
        _os_log_impl(&dword_254879000, v16, OS_LOG_TYPE_INFO, "Transfer_Nickname - Error received in message reply handler: %s", buf, 0xCu);
      }
    }

    v18 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v12, @"IMTransferServicesErrorDomain", -4, 0, v13, v14, v15);
    v19 = *(a1 + 32);
    if (v19)
    {
      (*(v19 + 16))(v19, 0, 0, 0, 0, 0, 0, 0, 0, v18);
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v20 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v35 = v20;
        _os_log_impl(&dword_254879000, v21, OS_LOG_TYPE_INFO, "received reply: %s", buf, 0xCu);
      }
    }

    free(v20);
    v22 = IMGetXPCBoolFromDictionary();
    v23 = IMGetXPCStringFromDictionary();
    v24 = IMGetXPCDataFromDictionary();
    v25 = IMGetXPCDataFromDictionary();
    v26 = IMGetXPCDataFromDictionary();
    v27 = IMGetXPCDataFromDictionary();
    v28 = IMGetXPCDataFromDictionary();
    v29 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    MEMORY[0x259C1C9C0](@"IMNickname", @"IMSharedUtilities");
    v30 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
    v31 = *(a1 + 32);
    if (v31)
    {
      (*(v31 + 16))(v31, v22, v30, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        *buf = 136315138;
        v35 = v10;
        _os_log_impl(&dword_254879000, v9, OS_LOG_TYPE_INFO, "IMTransfer_Nickname - Error reply type in message reply handler: %s", buf, 0xCu);
      }
    }

    if (*(a1 + 32))
    {
      v11 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v5, @"IMTransferServicesErrorDomain", -1, 0, v6, v7, v8);
      (*(*(a1 + 32) + 16))(*(a1 + 32), 0, 0, 0, 0, 0, 0, 0, 0, v11);
    }
  }

  v32 = *(*(*(a1 + 40) + 8) + 40);
  if (v32)
  {
    xpc_connection_cancel(v32);
    xpc_release(*(*(*(a1 + 40) + 8) + 40));
    *(*(*(a1 + 40) + 8) + 40) = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_25487E468(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25487E238);
  }

  _Unwind_Resume(a1);
}

void sub_25487E824(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    xpc_connection_cancel(v2);
    xpc_release(*(*(*(a1 + 32) + 8) + 40));
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_25487E874(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x259C1CC00](a2) == MEMORY[0x277D86468] && _IMWillLog())
  {
    v4 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        pid = xpc_connection_get_pid(*(*(*(a1 + 32) + 8) + 40));
        v8[0] = 67109378;
        v8[1] = pid;
        v9 = 2080;
        v10 = v4;
        _os_log_impl(&dword_254879000, v5, OS_LOG_TYPE_INFO, "received message from peer(%d): %s", v8, 0x12u);
      }
    }

    free(v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_25487E9A0(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C1CC00](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v26 = 136315138;
        v27 = string;
        _os_log_impl(&dword_254879000, v15, OS_LOG_TYPE_INFO, "Transfer_Nickname - Error received in message reply handler: %s", &v26, 0xCu);
      }
    }

    v17 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v11, @"IMTransferServicesErrorDomain", -4, 0, v12, v13, v14);
    v18 = *(a1 + 32);
    if (v18)
    {
      (*(v18 + 16))(v18, 0, v17);
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v19 = MEMORY[0x259C1CBA0](a2);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v26 = 136315138;
        v27 = v19;
        _os_log_impl(&dword_254879000, v20, OS_LOG_TYPE_INFO, "received reply: %s", &v26, 0xCu);
      }
    }

    free(v19);
    v21 = IMGetXPCBoolFromDictionary();
    v22 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
    v23 = *(a1 + 32);
    if (v23)
    {
      (*(v23 + 16))(v23, v21, v22);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v26 = 136315138;
        v27 = v10;
        _os_log_impl(&dword_254879000, v9, OS_LOG_TYPE_INFO, "Transfer_Nickname - Error reply type in message reply handler: %s", &v26, 0xCu);
      }
    }

    if (*(a1 + 32))
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v5, @"IMTransferServicesErrorDomain", -1, 0, v6, v7, v8);
      (*(*(a1 + 32) + 16))();
    }
  }

  v24 = *(*(*(a1 + 40) + 8) + 40);
  if (v24)
  {
    xpc_connection_cancel(v24);
    xpc_release(*(*(*(a1 + 40) + 8) + 40));
    *(*(*(a1 + 40) + 8) + 40) = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_25487EC60(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25487EB14);
  }

  _Unwind_Resume(a1);
}