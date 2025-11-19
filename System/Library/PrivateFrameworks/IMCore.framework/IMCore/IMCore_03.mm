void sub_1A83582C4(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v22 = objc_msgSend_ID(*(a1 + 32), v20, v21);
      v27 = 138412290;
      v28 = v22;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Failed to fetch StatusKit subscription, it's likely we have not received an invitation from %@", &v27, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v4)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v3;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "StatusKit subscription fetched %@, checking if a retain is still necessary", &v27, 0xCu);
    }
  }

  v8 = objc_msgSend_observers(*(a1 + 40), v5, v6);
  v11 = objc_msgSend_ID(*(a1 + 32), v9, v10);
  v13 = objc_msgSend_objectForKey_(v8, v12, v11);

  v14 = IMOSLoggingEnabled();
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_20;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v25 = objc_msgSend_ID(*(a1 + 32), v23, v24);
      v27 = 138412290;
      v28 = v25;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "No valid observers for handle %@, not retaining transient subscription assertion", &v27, 0xCu);
    }

    goto LABEL_19;
  }

  if (v14)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = objc_msgSend_ID(*(a1 + 32), v16, v17);
      v27 = 138412290;
      v28 = v18;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "There are valid observers for handle %@, retaining assertion", &v27, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_20:

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1A8358554(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A835851CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A835886C(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_subscriptionIdentifier(v3, v4, v5);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Retaining transient subscription assertion on subscription: %@ for handle: %@", buf, 0x16u);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A83589E4;
  v12[3] = &unk_1E7813450;
  v13 = v6;
  v14 = *(a1 + 32);
  v9 = v6;
  objc_msgSend_retainTransientSubscriptionAssertionWithCompletion_(v3, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1A83589E4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1E70(a1);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Successfully retained transient subscription assertion for subscription: %@ and handle: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1A8358B10(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v22 = objc_msgSend_ID(*(a1 + 32), v20, v21);
      v27 = 138412290;
      v28 = v22;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Failed to fetch StatusKit subscription, it's likely we have not received an invitation from %@", &v27, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v4)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v3;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "StatusKit Subscription fetched %@, checking if a retain is still necessary", &v27, 0xCu);
    }
  }

  v8 = objc_msgSend_observers(*(a1 + 40), v5, v6);
  v11 = objc_msgSend_ID(*(a1 + 32), v9, v10);
  v13 = objc_msgSend_objectForKey_(v8, v12, v11);

  v14 = IMOSLoggingEnabled();
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_20;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v25 = objc_msgSend_ID(*(a1 + 32), v23, v24);
      v27 = 138412290;
      v28 = v25;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "No valid observers for handle %@, not retaining transient subscription assertion", &v27, 0xCu);
    }

    goto LABEL_19;
  }

  if (v14)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = objc_msgSend_ID(*(a1 + 32), v16, v17);
      v27 = 138412290;
      v28 = v18;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "There are valid observers for handle %@, retaining assertion", &v27, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_20:

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1A8358DA0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8358D68);
  }

  _Unwind_Resume(a1);
}

void sub_1A83590B8(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_subscriptionIdentifier(v3, v4, v5);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Releasing transient subscription assertion on subscription: %@ for handle: %@", buf, 0x16u);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A835922C;
  v12[3] = &unk_1E7813450;
  v13 = *(a1 + 32);
  v14 = v6;
  v9 = v6;
  objc_msgSend_releaseTransientSubscriptionAssertionWithCompletion_(v3, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1A835922C(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1EF0(a1);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Successfully released transient subscription assertion for subscription: %@ and handle: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1A8359358(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v21 = objc_msgSend_ID(*(a1 + 32), v19, v20);
      v27 = 138412290;
      v28 = v21;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Failed to fetch StatusKit subscription, it's likely we have not received an invitation from %@", &v27, 0xCu);
    }

    goto LABEL_10;
  }

  if (v4)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v3;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "StatusKit Subscription fetched %@, checking if a retain is still necessary", &v27, 0xCu);
    }
  }

  v8 = objc_msgSend_observers(*(a1 + 40), v5, v6);
  v11 = objc_msgSend_ID(*(a1 + 32), v9, v10);
  v13 = objc_msgSend_objectForKey_(v8, v12, v11);

  v14 = IMOSLoggingEnabled();
  if (v13)
  {
    if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v18 = objc_msgSend_ID(*(a1 + 32), v16, v17);
        v27 = 138412290;
        v28 = v18;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "There are valid observers for handle %@, not releasing transient subscription assertion", &v27, 0xCu);
      }

LABEL_10:
    }
  }

  else
  {
    if (v14)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = objc_msgSend_ID(*(a1 + 32), v23, v24);
        v27 = 138412290;
        v28 = v25;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "No valid observers for handle %@, releasing transient subscription assertion", &v27, 0xCu);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_20:

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1A83595E8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A835959CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A8359910(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_daemonController(*(a1 + 40), a2, a3);
  objc_msgSend_invokeWithTarget_(v3, v4, v5);
}

void IMSPIFetchMostRecentSpotlightIndexDeletionReasonWithCompletion(char a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_spotlightQueryProvider(MEMORY[0x1E69A5DD8], v4, v5);
  if (v6)
  {
    v7 = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A8359B34;
    aBlock[3] = &unk_1E7812258;
    v8 = v3;
    v16 = v8;
    v10 = _Block_copy(aBlock);
    if (a1)
    {
      objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v7, v9, v10);
    }

    else
    {
      objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v10);
    }
    v11 = ;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A8359B4C;
    v13[3] = &unk_1E78134C8;
    v14 = v8;
    objc_msgSend_fetchLastSpotlightIndexDeleteReasonWithCompletion_(v11, v12, v13);
  }

  else
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

uint64_t sub_1A8359B4C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_integerValue(a2, a2, a3);
  v6 = *(v4 + 16);

  return v6(v4, v5, a2 != 0);
}

void sub_1A835ABF8(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 32) + 8) + 40), v6, v5, @"filePath");
  v8 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v7, a2);
  objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 32) + 8) + 40), v9, v8, @"success");

  v10 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v10)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v5;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Successfully fetched high res image, filename is %@", &v15, 0xCu);
      }
    }
  }

  else
  {
    if (v10)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v5;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Error: failed to fetch high res image, filename is %@", &v15, 0xCu);
      }
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 32) + 8) + 40), v11, @"Failed to fetch high res image", @"error");
  }

  v14 = *MEMORY[0x1E69E9840];
}

void *sub_1A835BC74()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessageForGUID", @"IMDPersistence");
  off_1EB2EA3E8 = result;
  return result;
}

void *sub_1A835BCA4()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordBulkCopy", @"IMDPersistence");
  off_1EB2EA3F8 = result;
  return result;
}

id _IMBestAccountForIMMessageItemDictionary(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v16 = objc_msgSend_objectForKey_(v9, v13, @"accountID");
  v17 = 0x1E780D000uLL;
  if (!v16 || (objc_msgSend_sharedInstance(IMAccountController, v14, v15), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend_accountForUniqueID_(v18, v19, v16), v20 = objc_claimAutoreleasedReturnValue(), v18, !v20))
  {
    v21 = objc_msgSend_objectForKey_(v9, v14, @"service");
    v23 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v22, v21);
    v26 = objc_msgSend_service(v12, v24, v25);

    if (v26 == v23)
    {
      if (a5)
      {
        v32 = v12;
        *a5 = v12;
      }

      v20 = v12;
    }

    else
    {
      v29 = objc_msgSend_sharedInstance(IMAccountController, v27, v28);
      v20 = objc_msgSend_bestAccountForService_(v29, v30, v23);

      if (a5)
      {
        v31 = v20;
        *a5 = v20;
      }

      v17 = 0x1E780D000;
    }

    if (!v20)
    {
      v35 = objc_msgSend_account(v10, v33, v34);
      if (v35)
      {
        v20 = v35;
      }

      else
      {
        v38 = objc_msgSend_sharedInstance(*(v17 + 1960), v36, v37);
        v20 = objc_msgSend_accountForUniqueID_(v38, v39, v11);

        if (!v20)
        {
          v42 = objc_msgSend_sharedInstance(*(v17 + 1960), v40, v41);
          v20 = objc_msgSend_bestAccountForService_(v42, v43, 0);
        }
      }
    }
  }

  return v20;
}

void _IMCheckMessageForDDResults(void *a1)
{
  v17 = a1;
  v3 = objc_msgSend_sharedController(IMDaemonController, v1, v2);
  v6 = *MEMORY[0x1E69A6260] & objc_msgSend_capabilities(v3, v4, v5);

  if (v6 && (objc_msgSend_isTypingMessage(v17, v7, v8) & 1) == 0 && (objc_msgSend_wasDataDetected(v17, v9, v10) & 1) == 0 && objc_msgSend_messageID(v17, v11, v12))
  {
    v15 = objc_msgSend_sharedInstance(IMDDController, v13, v14);
    objc_msgSend_scanMessage_completionBlock_(v15, v16, v17, &unk_1F1B6F060);
  }
}

void sub_1A835CA00(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v27 = v4;
    v7 = objc_msgSend_sender(v4, v5, v6);
    v10 = objc_msgSend_account(v7, v8, v9);
    v13 = objc_msgSend_service(v10, v11, v12);
    v16 = objc_msgSend_supportsDatabaseStorage(v13, v14, v15);

    v4 = v27;
    if (v16)
    {
      v19 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
      v22 = objc_msgSend_remoteDaemon(v19, v20, v21);
      v25 = objc_msgSend__imMessageItem(v27, v23, v24);
      objc_msgSend_updateMessage_(v22, v26, v25);

      v4 = v27;
    }
  }
}

void _ConfigureContextForIMItem(void *a1, void *a2, uint64_t a3)
{
  v34 = a1;
  v7 = a2;
  if (v7)
  {
    v8 = objc_msgSend_type(v34, v5, v6);
    if (!v8)
    {
      v17 = objc_msgSend_flags(v34, v9, v10);
      v20 = objc_msgSend_senderInfo(v34, v18, v19);
      v14 = objc_msgSend_objectForKey_(v20, v21, *MEMORY[0x1E69A6310]);

      v26 = objc_msgSend_handle(v34, v22, v23);
      if ((v17 & 4) == 0)
      {
        v27 = objc_msgSend_imHandleWithID_alreadyCanonical_(v7, v24, v14, a3);
        v30 = objc_msgSend_loginIMHandle(v7, v28, v29);
LABEL_15:
        v32 = v30;
        objc_msgSend__updateContextWithSenderHandle_otherHandle_(v34, v31, v27, v30);
        goto LABEL_16;
      }

      v27 = objc_msgSend_loginIMHandle(v7, v24, v25);
      objc_msgSend_imHandleWithID_alreadyCanonical_(v7, v33, v26, a3);
      v30 = LABEL_14:;
      goto LABEL_15;
    }

    v11 = v8;
    v14 = objc_msgSend_sender(v34, v9, v10);
    if (v11 == 6)
    {
      objc_msgSend_handle(v34, v12, v13);
    }

    else
    {
      objc_msgSend_otherHandle(v34, v12, v13);
    }
    v15 = ;
    v26 = v15;
    if (v14)
    {
      v27 = objc_msgSend_imHandleWithID_alreadyCanonical_(v7, v16, v14, 1);
      if (v26)
      {
LABEL_10:
        objc_msgSend_imHandleWithID_alreadyCanonical_(v7, v16, v26, 1);
        goto LABEL_14;
      }
    }

    else
    {
      v27 = 0;
      if (v15)
      {
        goto LABEL_10;
      }
    }

    v32 = 0;
    objc_msgSend__updateContextWithSenderHandle_otherHandle_(v34, v16, v27, 0);
LABEL_16:
  }
}

void sub_1A835D4C4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (objc_msgSend_matchesIMHandle_(a2, a2, *(a1 + 32)))
  {
    v9 = objc_msgSend_typingHandles(*(a1 + 40), v7, v8);
    objc_msgSend_removeObjectAtIndex_(v9, v10, a3);

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t sub_1A835D7D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v8 = objc_msgSend_matchesIMHandle_(v13, v7, *(a1 + 32));
  if (v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (*(a1 + 32) != v13)
    {
      v10 = objc_msgSend_typingHandles(*(a1 + 40), v13, v9);
      objc_msgSend_replaceObjectAtIndex_withObject_(v10, v11, a3, *(a1 + 32));
    }

    *a4 = 1;
  }

  return MEMORY[0x1EEE66BB8](v8);
}

void sub_1A835DBA0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A835DA14);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1A835DC24(uint64_t *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v10 = objc_msgSend_handle(v13, v8, v9);
  v12 = objc_msgSend_matchesIMHandle_(v10, v11, a1[4]);

  if (v12)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[6] + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_1A835EAE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_remoteProxy(*(*(a1 + 32) + 16), a2, a3);
  objc_msgSend_requestOneTimeCodeStatus(v5, v3, v4);
}

id sub_1A835FAD4(void *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v37 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6);
  v9 = objc_msgSend_account(v4, v7, v8);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v36 = v4;
  v12 = objc_msgSend_participants(v4, v10, v11);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v38, v42, 16);
  if (v14)
  {
    v17 = v14;
    v18 = *v39;
    v19 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v21 = objc_msgSend_ID(*(*(&v38 + 1) + 8 * i), v15, v16);
        v23 = objc_msgSend_imHandleWithID_(v9, v22, v21);

        v26 = objc_msgSend_cnContactWithKeys_(v23, v24, v19);
        if (v26 && objc_msgSend_containsObject_(v3, v25, v26))
        {
          v29 = objc_msgSend_identifier(v26, v27, v28);
          objc_msgSend_setObject_forKeyedSubscript_(v37, v30, v23, v29);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v38, v42, 16);
    }

    while (v17);
  }

  v33 = objc_msgSend_copy(v37, v31, v32);
  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

id sub_1A835FD00(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_set(MEMORY[0x1E695DFA8], v2, v3);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v1;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v31, v35, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = objc_msgSend_sharedInstance(IMHandleRegistrar, v7, v8);
        v16 = objc_msgSend_identifier(v12, v14, v15);
        v18 = objc_msgSend_handlesForCNIdentifier_(v13, v17, v16);
        v21 = objc_msgSend_allObjects(v18, v19, v20);

        v23 = objc_msgSend___imArrayByApplyingBlock_(v21, v22, &unk_1F1B6F0C0);
        objc_msgSend_addObjectsFromArray_(v4, v24, v23);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v31, v35, 16);
    }

    while (v9);
  }

  v27 = objc_msgSend_copy(v4, v25, v26);
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

id sub_1A835FEBC(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v1;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v32, v36, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = objc_msgSend_sharedInstance(IMHandleRegistrar, v7, v8);
        v16 = objc_msgSend_identifier(v12, v14, v15);
        v18 = objc_msgSend_handlesForCNIdentifier_(v13, v17, v16);
        v21 = objc_msgSend_allObjects(v18, v19, v20);
        v24 = objc_msgSend_identifier(v12, v22, v23);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v25, v21, v24);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v32, v36, 16);
    }

    while (v9);
  }

  v28 = objc_msgSend_copy(v4, v26, v27);
  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

void sub_1A8360070(void *a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = MEMORY[0x1E69A80B0];
  v6 = a2;
  v9 = objc_msgSend_allObjects(a1, v7, v8);
  LOBYTE(v5) = objc_msgSend_refreshIDStatusForDestinations_service_listenerID_queue_completionBlock_(v5, v10, v9, v6, @"+[IMHandle bestHandlesForCNContacts:]", MEMORY[0x1E69E96A0], v11);

  if ((v5 & 1) == 0)
  {
    v11[2](v11, 0);
  }
}

void sub_1A8360128(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v8 = objc_msgSend_iMessageService(IMService, v6, v7);
  if (v4 == 1)
  {
    v9 = sub_1A83603EC(v5, v3, v8);

    if (objc_msgSend_count(v9, v10, v11))
    {
      v14 = objc_msgSend_anyObject(*(a1 + 40), v12, v13);
      v17 = objc_msgSend_identifier(v14, v15, v16);
      v19 = objc_msgSend_objectForKeyedSubscript_(v9, v18, v17);
      v22 = objc_msgSend_account(v19, v20, v21);

      v23 = IMHandleLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v36 = v9;
        v37 = 2112;
        v38 = v22;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 4: Found best iMessage handles for all recipients: %@ for account: %@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_11;
    }

LABEL_10:

    v27 = *(a1 + 48);
    v28 = *MEMORY[0x1E69A4808];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1A8360894;
    v30[3] = &unk_1E7813610;
    v34 = *(a1 + 64);
    v31 = *(a1 + 32);
    v32 = *(a1 + 40);
    v33 = *(a1 + 56);
    sub_1A8360070(v27, v28, v30);

    v9 = v31;
    goto LABEL_11;
  }

  v9 = sub_1A83605D0(v5, v3, v8);

  if (!objc_msgSend_count(v9, v24, v25))
  {
    goto LABEL_10;
  }

  v26 = IMHandleLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v9;
    _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 4: Found valid iMessage handles for all recipients: %@", buf, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
LABEL_11:

  v29 = *MEMORY[0x1E69E9840];
}

id sub_1A83603EC(void *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (objc_msgSend_isEnabled(v7, v8, v9))
  {
    v31 = v6;
    v32 = v5;
    v10 = sub_1A83605D0(v5, v6, v7);
    v13 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v11, v12);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = v10;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v33, v37, 16);
    if (v16)
    {
      v18 = v16;
      v19 = *v34;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          v22 = objc_msgSend_objectForKeyedSubscript_(v14, v17, v21, v31, v32, v33);
          if (!objc_msgSend_count(v22, v23, v24))
          {

            v28 = 0;
            goto LABEL_13;
          }

          v26 = objc_msgSend_bestIMHandleInArray_(IMHandle, v25, v22);
          objc_msgSend_setObject_forKeyedSubscript_(v13, v27, v26, v21);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v33, v37, 16);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v28 = v13;
LABEL_13:

    v6 = v31;
    v5 = v32;
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

id sub_1A83605D0(void *a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (objc_msgSend_isEnabled(v7, v8, v9))
  {
    v49 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v10, v11);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v43 = v5;
    obj = v5;
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v54, v59, 16);
    if (v45)
    {
      v44 = *v55;
      do
      {
        v14 = 0;
        do
        {
          if (*v55 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v47 = v14;
          v15 = *(*(&v54 + 1) + 8 * v14);
          v16 = objc_msgSend_objectForKeyedSubscript_(obj, v13, v15);
          v19 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18);
          v48 = v15;
          objc_msgSend_setObject_forKeyedSubscript_(v49, v20, v19, v15);

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v21 = v16;
          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v50, v58, 16);
          if (v23)
          {
            v26 = v23;
            v27 = *v51;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v51 != v27)
                {
                  objc_enumerationMutation(v21);
                }

                v29 = *(*(&v50 + 1) + 8 * i);
                v30 = objc_msgSend_service(v29, v24, v25);

                if (v30 == v7)
                {
                  v31 = objc_msgSend_ID(v29, v24, v25);
                  v32 = IMChatCanonicalIDSIDsForAddress();

                  v34 = objc_msgSend_objectForKeyedSubscript_(v6, v33, v32);
                  v37 = objc_msgSend_integerValue(v34, v35, v36);

                  if (v37 != 2)
                  {
                    v39 = objc_msgSend_objectForKeyedSubscript_(v49, v38, v48);
                    objc_msgSend_addObject_(v39, v40, v29);
                  }
                }
              }

              v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v50, v58, 16);
            }

            while (v26);
          }

          v14 = v47 + 1;
        }

        while (v47 + 1 != v45);
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v54, v59, 16);
      }

      while (v45);
    }

    v5 = v43;
  }

  else
  {
    v49 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v49;
}

void sub_1A8360894(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8 = objc_msgSend_smsService(IMService, v6, v7);
  if (v4 == 1)
  {
    v9 = sub_1A83603EC(v5, v3, v8);

    if (objc_msgSend_count(v9, v10, v11))
    {
      v14 = objc_msgSend_anyObject(*(a1 + 40), v12, v13);
      v17 = objc_msgSend_identifier(v14, v15, v16);
      v19 = objc_msgSend_objectForKeyedSubscript_(v9, v18, v17);
      v22 = objc_msgSend_account(v19, v20, v21);

      v23 = IMHandleLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412546;
        v30 = v9;
        v31 = 2112;
        v32 = v22;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 5: Found best SMS handles for all recipients: %@ for account: %@", &v29, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
LABEL_10:

      goto LABEL_14;
    }
  }

  else
  {
    v9 = sub_1A83605D0(v5, v3, v8);

    if (objc_msgSend_count(v9, v24, v25))
    {
      v26 = IMHandleLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = v9;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 5: Found valid SMS handles for all recipients: %@", &v29, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_10;
    }
  }

  v27 = IMHandleLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Failed to find handles for contacts", &v29, 2u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_14:

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A8360B14(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_account(a2, a2, a3);
  isOperational = objc_msgSend_isOperational(v3, v4, v5);

  return isOperational;
}

uint64_t sub_1A8360B50(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_lastFinishedMessageDate(a2, v5, v6);
  v10 = objc_msgSend_lastFinishedMessageDate(v4, v8, v9);

  v12 = objc_msgSend_compare_(v7, v11, v10);
  return v12;
}

uint64_t sub_1A8360BC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = objc_msgSend_sharedInstance(IMAccountController, v7, v8);
  v11 = objc_msgSend_accountForUniqueID_(v9, v10, v6);

  v14 = objc_msgSend_sharedInstance(IMAccountController, v12, v13);
  v16 = objc_msgSend_accountForUniqueID_(v14, v15, v5);

  v17 = *(a1 + 32);
  v20 = objc_msgSend_service(v11, v18, v19);
  v23 = objc_msgSend_name(v20, v21, v22);
  v25 = objc_msgSend_objectForKeyedSubscript_(v17, v24, v23);

  v26 = *(a1 + 32);
  v29 = objc_msgSend_service(v16, v27, v28);
  v32 = objc_msgSend_name(v29, v30, v31);
  v34 = objc_msgSend_objectForKeyedSubscript_(v26, v33, v32);

  if (!v25)
  {
    v25 = &unk_1F1BA1848;
  }

  if (!v34)
  {
    v34 = &unk_1F1BA1848;
  }

  v36 = objc_msgSend_compare_(v25, v35, v34);

  return v36;
}

id sub_1A8360D10(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_ID(a2, a2, a3);
  v4 = IMChatCanonicalIDSIDsForAddress();

  return v4;
}

void sub_1A8360D60(uint64_t a1, const char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  v5 = objc_msgSend_conversationManager(*(a1 + 32), a2, a3);
  objc_msgSend_addDelegate_queue_(v5, v6, *v4, MEMORY[0x1E69E96A0]);

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Posting TUConversations loaded notification for all active conversation we have", buf, 2u);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = objc_msgSend_conversationManager(*(a1 + 32), v7, v8, 0);
  v13 = objc_msgSend_activeConversations(v10, v11, v12);

  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v20, v25, 16);
  if (v16)
  {
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend__postMultiWayStateChangedNotification_(*(a1 + 32), v15, *(*(&v20 + 1) + 8 * v18++));
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v20, v25, 16);
    }

    while (v16);
  }

  v19 = *MEMORY[0x1E69E9840];
}

id sub_1A8361964()
{
  v0 = qword_1ED767708;
  if (!qword_1ED767708)
  {
    v1 = MEMORY[0x1E696AAE8];
    v2 = objc_opt_class();
    v4 = objc_msgSend_bundleForClass_(v1, v3, v2);
    v5 = qword_1ED767708;
    qword_1ED767708 = v4;

    v0 = qword_1ED767708;
  }

  return v0;
}

id IMCopyGUIDForChatOnAccount(void *a1, void *a2)
{
  v3 = a1;
  v6 = objc_msgSend_internalName(a2, v4, v5);
  v9 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v7, v8);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v9, v10, v11);

  if (isOneChatEnabled)
  {
    v15 = *MEMORY[0x1E69A7AC8];

    v6 = v15;
  }

  v16 = objc_msgSend_chatIdentifier(v3, v13, v14);
  objc_msgSend_chatStyle(v3, v17, v18);

  v19 = IMCopyGUIDForChat();

  return v19;
}

id IMFormattedDisplayStringForIDWithCountryCodeInAddressBook(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (!objc_msgSend_length(v5, v7, v8))
  {
    goto LABEL_7;
  }

  v11 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v9, v10);
  v13 = objc_msgSend_fetchCNContactForHandleWithID_(v11, v12, v5);

  v15 = objc_msgSend_displayNameForContact_(MEMORY[0x1E69A7FD0], v14, v13);
  if (!objc_msgSend_length(v15, v16, v17))
  {

LABEL_7:
    v15 = IMFormattedDisplayStringForIDWithCountryCode();
    goto LABEL_8;
  }

  if (a3)
  {
    *a3 = 1;
  }

LABEL_8:

  return v15;
}

id IMFormattedDisplayStringForIDWithAccountInAddressBook(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  if (objc_msgSend_length(v5, v7, v8))
  {
    v11 = objc_msgSend_sharedInstance(IMAccountController, v9, v10);
    v13 = objc_msgSend_accountForUniqueID_(v11, v12, v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_msgSend_countryCode(v13, v9, v10);
  v15 = IMFormattedDisplayStringForIDWithCountryCodeInAddressBook(v6, v14, a3);

  return v15;
}

id IMUnformattedDisplayStringForIDWithCountryCodeInAddressBook(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (!objc_msgSend_length(v5, v7, v8))
  {
    goto LABEL_7;
  }

  v11 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v9, v10);
  v13 = objc_msgSend_fetchCNContactForHandleWithID_(v11, v12, v5);

  v15 = objc_msgSend_displayNameForContact_(MEMORY[0x1E69A7FD0], v14, v13);
  if (!objc_msgSend_length(v15, v16, v17))
  {

LABEL_7:
    v15 = IMUnformattedDisplayStringForIDWithCountryCode();
    goto LABEL_8;
  }

  if (a3)
  {
    *a3 = 1;
  }

LABEL_8:

  return v15;
}

id IMUnformattedDisplayStringForIDWithAccountInAddressBook(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  if (objc_msgSend_length(v5, v7, v8))
  {
    v11 = objc_msgSend_sharedInstance(IMAccountController, v9, v10);
    v13 = objc_msgSend_accountForUniqueID_(v11, v12, v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_msgSend_countryCode(v13, v9, v10);
  v15 = IMUnformattedDisplayStringForIDWithCountryCodeInAddressBook(v6, v14, a3);

  return v15;
}

void sub_1A8361E18(void *a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_IMCoreSetupTimingCollection(a1, a2, a3);
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = qword_1ED7677F0;
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "IMCore setup timing: %@", &v7, 0xCu);
      }
    }

    v5 = qword_1ED7677F0;
    qword_1ED7677F0 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

id IMCoreLocalizedString(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = sub_1A8361964();
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v4, v3, @"IMCoreLocalizable");

  return v7;
}

uint64_t IMIsEnrolledInContactKeyVerification(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedController(IMKeyTransparencyController, a2, a3);
  v6 = objc_msgSend_selfOptedIn(v3, v4, v5);

  return v6;
}

float IMSendProgressProgressForSatellite(void *a1, unint64_t *a2, unint64_t *a3, double *a4, double a5)
{
  v9 = a1;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1A83629C0;
  v23[3] = &unk_1E7813688;
  v23[4] = &v24;
  v23[5] = &v40;
  v23[6] = &v36;
  v23[7] = &v32;
  v23[8] = &v28;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v10, v23);
  v11 = v37[3] + v41[3];
  v12 = v29[3] + v33[3] + v11;
  if (v29[3] + v33[3])
  {
    v13 = v25[3];
    v14 = v13 / a5;
    if (v13 / a5 > 0.5)
    {
      if (v14 <= 1.0)
      {
        v20 = (v13 - a5 * 0.5) * 0.3 / (a5 * 0.5) + 0.5;
      }

      else
      {
        v15 = v13 - a5;
        if (v15 <= 30.0)
        {
          v21 = 0.8;
          v22 = 0.00333333333;
        }

        else if (v15 <= 60.0)
        {
          v15 = v15 + -30.0;
          v21 = 0.9;
          v22 = 0.00166666667;
        }

        else
        {
          if (v15 > 105.0)
          {
            v16 = 0.98;
            if (!a2)
            {
              goto LABEL_19;
            }

            goto LABEL_15;
          }

          v15 = v15 + -60.0;
          v21 = 0.95;
          v22 = 0.000666666667;
        }

        v20 = v21 + v15 * v22;
      }

      v16 = v20;
      if (!a2)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v16 = v14;
    if (!a2)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (v12 >= v11 + 1)
    {
      v17 = v11 + 1;
    }

    else
    {
      v17 = v12;
    }

    *a2 = v17;
    goto LABEL_19;
  }

  if (v12)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.0;
  }

  v12 = 0;
  if (a2)
  {
    goto LABEL_15;
  }

LABEL_19:
  if (a3)
  {
    *a3 = v12;
  }

  if (a4)
  {
    v18 = v25[3];
    if (v18 > 0.0)
    {
      *a4 = v18;
    }
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v16;
}

void sub_1A8362978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A83629C0(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v32;
    v10 = objc_msgSend_clientSendTime(v5, v6, v7);
    if (v10)
    {
      objc_msgSend_clientSendTime(v5, v8, v9);
    }

    else
    {
      objc_msgSend_time(v5, v8, v9);
    }
    v11 = ;

    objc_msgSend_timeIntervalSinceNow(v11, v12, v13);
    v17 = fabs(v16);
    v18 = *(*(a1 + 32) + 8);
    v19 = *(v18 + 24);
    if (v19 == 0.0)
    {
      *(v18 + 24) = v17;
      v18 = *(*(a1 + 32) + 8);
      v19 = *(v18 + 24);
    }

    if (v17 <= v19)
    {
      *(v18 + 24) = v17;
    }

    if (objc_msgSend_isSent(v5, v14, v15) && !objc_msgSend_isLocatingMessage(v5, v20, v21))
    {
      v24 = 40;
    }

    else if (objc_msgSend_errorCode(v5, v20, v21))
    {
      v24 = 48;
    }

    else
    {
      v25 = objc_msgSend_fileTransferGUIDs(v5, v22, v23);
      if (objc_msgSend_count(v25, v26, v27))
      {

        v24 = 56;
      }

      else
      {
        isLocatingMessage = objc_msgSend_isLocatingMessage(v5, v28, v29);

        v24 = 64;
        if (isLocatingMessage)
        {
          v24 = 56;
        }
      }
    }

    ++*(*(*(a1 + v24) + 8) + 24);
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A8362CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8362CF0(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_payloadData(v9, v4, v5);
    *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_length(v6, v7, v8);
  }
}

void sub_1A83631F0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x1A8363178);
    }

    JUMPOUT(0x1A8363164);
  }

  _Unwind_Resume(a1);
}

void sub_1A83643A4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x1A836432CLL);
    }

    JUMPOUT(0x1A8364318);
  }

  _Unwind_Resume(a1);
}

void sub_1A8365318(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83652E0);
  }

  _Unwind_Resume(a1);
}

void sub_1A8365870(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x1A8365800);
    }

    JUMPOUT(0x1A83657ECLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A83658F0()
{
  v0 = objc_opt_new();
  qword_1EB2E9FB8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8365AE0(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8365B94;
  block[3] = &unk_1E7810E88;
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1A8365B94(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 48);
  v3 = objc_msgSend__urlFromAddressList_(*(a1 + 32), a2, *(a1 + 40));
  (*(v2 + 16))(v2, v3);
}

void sub_1A8365BF8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 40);
  v3 = objc_msgSend__urlFromAddressList_(*(a1 + 32), a2, 0);
  (*(v2 + 16))(v2, v3);
}

void sub_1A8365F28(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84E20C4(v3, a1, v4);
  }

  if (objc_msgSend_count(v3, v5, v6))
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = v3;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v40, v44, 16);
    if (v11)
    {
      v13 = v11;
      v14 = *v41;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v41 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = objc_msgSend_objectForKey_(v9, v12, *(*(&v40 + 1) + 8 * i), v40);
          v17 = *(a1 + 40);
          v20 = objc_msgSend_ID(v16, v18, v19);
          objc_msgSend_addObject_(v17, v21, v20);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v40, v44, 16);
      }

      while (v13);
    }
  }

  else
  {
    v22 = objc_msgSend_contact(*(a1 + 32), v7, v8);
    v25 = objc_msgSend_phoneNumbers(v22, v23, v24);
    v28 = objc_msgSend_firstObject(v25, v26, v27);
    v31 = objc_msgSend_value(v28, v29, v30);
    v9 = objc_msgSend_stringValue(v31, v32, v33);

    v36 = *(a1 + 40);
    if (v9)
    {
      objc_msgSend_addObject_(*(a1 + 40), v34, v9);
    }

    else
    {
      v37 = objc_msgSend_appleID(*(a1 + 32), v34, v35);
      objc_msgSend_addObject_(v36, v38, v37);
    }
  }

  dispatch_group_leave(*(a1 + 48));
  v39 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A8366138(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84E2150(a1, v2);
  }

  v3 = *(a1 + 32);
  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_1A8366340()
{
  v0 = objc_alloc_init(IMIDStatusController);
  qword_1ED7678E8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A83664C8(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = objc_msgSend_allServices(IMServiceImpl, v3, v4);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v49, buf, 16);
  if (v9)
  {
    v10 = *v50;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        v13 = objc_msgSend_idsServiceNames(v12, v7, v8);
        v15 = objc_msgSend_containsObject_(v13, v14, v2);

        if (v15)
        {
          v44 = v12;

          goto LABEL_12;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v49, buf, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (objc_msgSend_isEqualToIgnoringCase_(v2, v16, *MEMORY[0x1E69A7AF0]) || objc_msgSend_isEqualToIgnoringCase_(v2, v17, @"Messenger") || objc_msgSend_isEqualToIgnoringCase_(v2, v17, @"Madrid"))
  {
    v44 = objc_msgSend_iMessageService(IMServiceImpl, v17, v18);
  }

  else if (objc_msgSend_isEqualToIgnoringCase_(v2, v17, *MEMORY[0x1E69A7AD0]) || objc_msgSend_isEqualToIgnoringCase_(v2, v42, @"Venice"))
  {
    v44 = objc_msgSend_facetimeService(IMServiceImpl, v42, v43);
  }

  else
  {
    v44 = 0;
  }

LABEL_12:

  v21 = objc_msgSend__stripFZIDPrefix(*(a1 + 40), v19, v20);
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      *buf = 138412546;
      v55 = v44;
      v56 = 2112;
      v57 = v25;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Found IMService %@ for service with name: %@", buf, 0x16u);
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v26 = objc_msgSend_sharedInstance(IMAccountController, v22, v23);
  v28 = objc_msgSend_activeAccountsForService_(v26, v27, v44);

  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v45, v53, 16);
  if (v30)
  {
    v31 = *v46;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v45 + 1) + 8 * j);
        if (IMOSLoggingEnabled())
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v55 = v33;
            _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "   Found account: %@", buf, 0xCu);
          }
        }

        v36 = objc_msgSend_existingIMHandleWithID_(v33, v34, v21);
        if (IMOSLoggingEnabled())
        {
          v38 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v39 = *(a1 + 40);
            *buf = 138412802;
            v55 = v39;
            v56 = 2112;
            v57 = v21;
            v58 = 2112;
            v59 = v36;
            _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "   URI: %@   ID: %@   Existing handle: %@", buf, 0x20u);
          }
        }

        if (v36)
        {
          objc_msgSend__setIDStatus_(v36, v37, *(a1 + 48));
        }
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v40, &v45, v53, 16);
    }

    while (v30);
  }

  v41 = *MEMORY[0x1E69E9840];
}

id sub_1A8366D24(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_idsServiceNames(a1, a2, a3);
  v6 = objc_msgSend_firstObject(v3, v4, v5);

  return v6;
}

uint64_t sub_1A8366D70()
{
  v0 = dispatch_semaphore_create(0);
  qword_1EB2EA408 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A836738C(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v9 = 138412546;
      v10 = v6;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Received query result for ID: %@  %d", &v9, 0x12u);
    }
  }

  result = objc_msgSend__processIDStatusResponseForURI_resultStatus_forService_(*(a1 + 40), v4, *(a1 + 32), a2, *(a1 + 48));
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1A8367B08(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DFA8];
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = objc_msgSend_setWithCapacity_(v4, v8, v7);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = objc_msgSend_handleWithFMFHandle_(IMFindMyHandle, v13, *(*(&v24 + 1) + 8 * i), v24);
        objc_msgSend_addObject_(v9, v18, v17);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v24, v28, 16);
    }

    while (v14);
  }

  v21 = objc_msgSend_copy(v9, v19, v20);
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

id sub_1A8367C68(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DFA8];
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = objc_msgSend_setWithCapacity_(v4, v8, v7);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = objc_msgSend_handleWithFMLHandle_(IMFindMyHandle, v13, *(*(&v24 + 1) + 8 * i), v24);
        objc_msgSend_addObject_(v9, v18, v17);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v24, v28, 16);
    }

    while (v14);
  }

  v21 = objc_msgSend_copy(v9, v19, v20);
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

id sub_1A8367DC8(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DFA8];
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = objc_msgSend_setWithCapacity_(v4, v8, v7);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v30, v34, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v19 = objc_msgSend_handle(v16, v17, v18, v30);

          if (v19)
          {
            v21 = objc_msgSend_handle(v16, v17, v20);
            v23 = objc_msgSend_handleWithFMLHandle_(IMFindMyHandle, v22, v21);

            objc_msgSend_addObject_(v9, v24, v23);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, &v30, v34, 16);
    }

    while (v13);
  }

  v27 = objc_msgSend_copy(v9, v25, v26);
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

id sub_1A8367F7C(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DFA8]);
  v5 = objc_msgSend_count(a1, v3, v4);
  v7 = objc_msgSend_initWithCapacity_(v2, v6, v5);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = a1;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v26, v30, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = objc_msgSend_fmfHandle(v14, v15, v16, v26);

          if (v17)
          {
            v19 = objc_msgSend_fmfHandle(v14, v15, v18);
            objc_msgSend_addObject_(v7, v20, v19);
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v26, v30, 16);
    }

    while (v11);
  }

  v23 = objc_msgSend_copy(v7, v21, v22);
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

id sub_1A8368114(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DFA8]);
  v5 = objc_msgSend_count(a1, v3, v4);
  v7 = objc_msgSend_initWithCapacity_(v2, v6, v5);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = a1;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v26, v30, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = objc_msgSend_fmlHandle(v14, v15, v16, v26);

          if (v17)
          {
            v19 = objc_msgSend_fmlHandle(v14, v15, v18);
            objc_msgSend_addObject_(v7, v20, v19);
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v26, v30, 16);
    }

    while (v11);
  }

  v23 = objc_msgSend_copy(v7, v21, v22);
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

IMMutableChatContext *sub_1A836B1CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(IMMutableChatContext);
  if (objc_msgSend_isFiltered(v3, v6, v7) == 2 && (objc_msgSend_allowsJunkConfiguration(v3, v8, v9) & 1) != 0)
  {
    objc_msgSend_setSpam_(v5, v10, 1);
  }

  else
  {
    v13 = sub_1A8383A6C(v3, v4);
    objc_msgSend_setSpam_(v5, v14, v13);
  }

  isMapKitBusinessChat = objc_msgSend_isMapKitBusinessChat(v3, v11, v12);
  if (objc_msgSend_isStewieChat(v3, v16, v17))
  {
    isMapKitBusinessChat = 2;
  }

  if (objc_msgSend_isStewieSharingChat(v3, v18, v19))
  {
    objc_msgSend_setServiceType_(v5, v20, 3);
  }

  else
  {
    objc_msgSend_setServiceType_(v5, v20, isMapKitBusinessChat);
  }

  isFiltered = objc_msgSend_isFiltered(v3, v21, v22);
  objc_msgSend_setFilterCategory_(v5, v24, isFiltered);
  hasKnownParticipantsCache = objc_msgSend_hasKnownParticipantsCache(v3, v25, v26);
  objc_msgSend_setSendersUnknown_(v5, v28, hasKnownParticipantsCache ^ 1u);
  v31 = objc_msgSend_repliedToChat(v3, v29, v30);
  objc_msgSend_setResponded_(v5, v32, v31);
  v35 = objc_msgSend_conversation(v3, v33, v34);
  v38 = objc_msgSend_UUID(v35, v36, v37);
  objc_msgSend_setActiveTelephonyConversationUUID_(v5, v39, v38);

  v42 = objc_msgSend_showingEditHistoryForChatItemGUIDs(v3, v40, v41);
  objc_msgSend_setShowingEditHistoryForChatItemGUIDs_(v5, v43, v42);

  isChatBot = objc_msgSend_isChatBot(v3, v44, v45);
  objc_msgSend_setIsChatBot_(v5, v47, isChatBot);
  isShowingTranslationText = objc_msgSend_isShowingTranslationText(v3, v48, v49);
  objc_msgSend_setShowTranslationAlternateText_(v5, v51, isShowingTranslationText);

  return v5;
}

uint64_t sub_1A836B364(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v12 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v10, v11);
  isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v12, v13, v14);

  if (isTranscriptSharingEnabled && objc_msgSend_isStewieSharingChat(v7, v16, v17))
  {
    v18 = v8;
    v19 = v9;
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
LABEL_19:
      v48 = 0;
LABEL_42:

      goto LABEL_43;
    }

    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = objc_msgSend_sender(v18, v20, v21);
        v25 = objc_msgSend_sender(v19, v23, v24);
        if (objc_msgSend_isEqualToString_(v22, v26, v25))
        {
          v29 = objc_msgSend_messageSummaryInfo(v18, v27, v28);

          v32 = MEMORY[0x1E69A7270];
          if (v29)
          {
            v33 = objc_msgSend_messageSummaryInfo(v18, v30, v31);
            v35 = objc_msgSend__numberForKey_(v33, v34, *v32);
            v94 = objc_msgSend_intValue(v35, v36, v37);
          }

          else
          {
            v94 = 0;
          }

          v83 = objc_msgSend_messageSummaryInfo(v19, v30, v31);

          if (v83)
          {
            v86 = objc_msgSend_messageSummaryInfo(v19, v84, v85);
            v88 = objc_msgSend__numberForKey_(v86, v87, *v32);
            v91 = objc_msgSend_intValue(v88, v89, v90);
          }

          else
          {
            v91 = 0;
          }

          v48 = v94 != v91;
        }

        else
        {
          v48 = 1;
        }

        goto LABEL_42;
      }

      goto LABEL_19;
    }

LABEL_35:
    v48 = 1;
    goto LABEL_42;
  }

  v38 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v16, v17);
  isMergeBusinessSenderIndiaEnabled = objc_msgSend_isMergeBusinessSenderIndiaEnabled(v38, v39, v40);

  if (isMergeBusinessSenderIndiaEnabled)
  {
    if (a4 == 45 && (objc_msgSend_isMergedBusinessThread(v7, v42, v43) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (a4 == 45)
  {
    goto LABEL_18;
  }

  if (objc_msgSend__hasMessageChatItem(v8, v42, v43) && !sub_1A836B760(v8) && (objc_msgSend_isFromMe(v8, v44, v45) & 1) == 0)
  {
    v18 = objc_msgSend_sender(v8, v46, v47);
    v19 = objc_msgSend_sender(v9, v49, v50);
    v53 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v51, v52);
    v56 = objc_msgSend_isMergeBusinessSenderIndiaEnabled(v53, v54, v55);

    if (v56 && objc_msgSend_isMergedBusinessThread(v7, v57, v58))
    {
      v60 = objc_msgSend_originalUnformattedID(v8, v57, v59);

      v63 = objc_msgSend_originalUnformattedID(v9, v61, v62);

      v18 = v60;
      v19 = v63;
    }

    if (v18 && !objc_msgSend_isEqualToString_(v18, v57, v19))
    {
      goto LABEL_35;
    }

    if (sub_1A836B760(v9))
    {
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = objc_msgSend_replyCountsByPart(v8, v64, v65);
      v69 = objc_msgSend_count(v66, v67, v68);

      if (v69)
      {
        goto LABEL_35;
      }
    }

    isReply = objc_msgSend_isReply(v8, v64, v65);
    if (isReply != objc_msgSend_isReply(v9, v71, v72))
    {
      goto LABEL_35;
    }

    if (objc_msgSend_isReply(v8, v73, v74) && objc_msgSend_isReply(v9, v75, v76))
    {
      v77 = objc_msgSend_threadIdentifier(v8, v75, v76);
      v80 = objc_msgSend_threadIdentifier(v9, v78, v79);
      isEqualToString = objc_msgSend_isEqualToString_(v77, v81, v80);

      v48 = isEqualToString ^ 1u;
      goto LABEL_42;
    }

    if (!objc_msgSend__hasMessageChatItem(v9, v75, v76) || sub_1A836C454(v8, v9))
    {
      goto LABEL_35;
    }

    v93 = sub_1A836C59C(v7, v8, v9);

    if (v93)
    {
      v48 = 1;
      goto LABEL_43;
    }
  }

LABEL_18:
  v48 = 0;
LABEL_43:

  return v48;
}

BOOL sub_1A836B760(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v5 = objc_msgSend_retractedPartIndexes(v2, v3, v4);
    if (objc_msgSend_count(v5, v6, v7))
    {
      v10 = objc_msgSend_body(v2, v8, v9);
      if (objc_msgSend___im_countMessageParts(v10, v11, v12))
      {
        v15 = 0;
      }

      else
      {
        v16 = objc_msgSend_subject(v2, v13, v14);
        v15 = objc_msgSend_length(v16, v17, v18) == 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_1A836BA64(uint64_t a1, void *a2)
{
  value = a2;
  v4 = objc_msgSend__replyCountChatItemForChatItem_parentItem_threadOriginatorMessageItem_(*(a1 + 32), v3, value, *(a1 + 40), *(a1 + 48));
  v5 = *(a1 + 56);
  if (value && v5)
  {
    CFArrayAppendValue(v5, value);
    v5 = *(a1 + 56);
  }

  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    CFArrayAppendValue(v5, v4);
  }
}

void sub_1A836C0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A836C0F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_integerValue(v9, v7, v8);
    *a5 = 1;
  }
}

BOOL sub_1A836C454(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (objc_msgSend_changeType(v3, v5, v6))
  {
    goto LABEL_12;
  }

  v7 = objc_msgSend__senderHandle(v3, v5, v6);
  v10 = objc_msgSend_ID(v7, v8, v9);

  v13 = objc_msgSend__otherHandle(v3, v11, v12);
  v16 = objc_msgSend_ID(v13, v14, v15);

  LOBYTE(v13) = objc_msgSend_isEqualToString_(v10, v17, v16);
  if (v13)
  {
    v18 = 0;
  }

  else
  {
LABEL_12:
    if (v4 && objc_msgSend__hasMessageChatItem(v3, v5, v6))
    {
      v21 = objc_msgSend_time(v3, v19, v20);
      v24 = objc_msgSend_time(v4, v22, v23);
      objc_msgSend_timeIntervalSinceDate_(v21, v25, v24);
      v18 = fabs(v26) >= 3600.0;
    }

    else
    {
      v18 = 1;
    }
  }

  return v18;
}

BOOL sub_1A836C59C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v10 = objc_msgSend__service(v6, v8, v9);
  v13 = objc_msgSend__service(v7, v11, v12);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_10;
  }

  v14 = v5;
  v15 = v6;
  v16 = v7;
  if ((sub_1A8391C34(v16) & 1) != 0 || sub_1A8391D08(v16)) && ((sub_1A8391C34(v15) & 1) != 0 || (sub_1A8391D08(v15)))
  {
    goto LABEL_9;
  }

  v19 = objc_msgSend_interworkingService(v14, v17, v18);
  if (!objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x1E69A7AE0]))
  {

LABEL_13:
    v26 = objc_msgSend_interworkingService(v14, v22, v23);
    if (objc_msgSend_isEqualToString_(v26, v27, *MEMORY[0x1E69A7AE0]))
    {
      v30 = objc_msgSend_interworkingService(v14, v28, v29);
      v33 = objc_msgSend_service(v15, v31, v32);
      v42 = v30;
      v34 = v30;
      v35 = v33;
      if (objc_msgSend_isEqualToString_(v34, v36, v33) && (objc_msgSend_isFromMe(v15, v37, v38) & 1) == 0 && objc_msgSend_isFromMe(v16, v39, v40))
      {
        v41 = sub_1A8391D08(v16);

        if (v41)
        {
          goto LABEL_10;
        }

LABEL_21:
        v24 = v10 != v13;
        goto LABEL_11;
      }
    }

    goto LABEL_21;
  }

  v21 = sub_1A8391D08(v15);

  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:

LABEL_10:
  v24 = 0;
LABEL_11:

  return v24;
}

BOOL sub_1A836C8D4(void *a1, void *a2)
{
  v114 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!objc_msgSend_cachedShouldShowReportSpam(v3, v5, v6))
  {
    v13 = v3;
    v14 = v4;
    v16 = objc_msgSend___imArrayByFilteringWithBlock_(v14, v15, &unk_1F1B6F240);
    if (!objc_msgSend_count(v16, v17, v18))
    {
      goto LABEL_38;
    }

    v21 = objc_msgSend_firstObject(v16, v19, v20);
    v24 = objc_msgSend_isFromMe(v21, v22, v23);

    if (v24 & 1) != 0 || (objc_msgSend_shouldBeAllowListed(v13, v25, v26) & 1) != 0 || objc_msgSend_isOscarChat(v13, v27, v28) && (objc_msgSend_allowsJunkConfiguration(v13, v29, v30))
    {
      goto LABEL_38;
    }

    if (objc_msgSend_isRecovered(v13, v29, v30))
    {
      goto LABEL_38;
    }

    v101 = v13;
    v33 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v31, v32);
    isModernFilteringEnabled = objc_msgSend_isModernFilteringEnabled(v33, v34, v35);

    v37 = v101;
    isFiltered = objc_msgSend_isFiltered(v101, v38, v39);
    if (isModernFilteringEnabled)
    {
      if (isFiltered == 2 && (objc_msgSend_allowsJunkConfiguration(v101, v41, v42) & 1) != 0)
      {
        goto LABEL_37;
      }
    }

    else if (isFiltered == 2 && (IMIsOscarEnabled(2, v41, v42) & 1) != 0)
    {
      goto LABEL_37;
    }

    if (objc_msgSend_isStewieChat(v101, v43, v44) & 1) != 0 || (objc_msgSend_isStewieSharingChat(v101, v45, v46))
    {
      goto LABEL_38;
    }

    if (objc_msgSend_isBusinessChat(v101, v47, v48))
    {
      if (objc_msgSend_containsActiveBIASession(v101, v49, v50) && (objc_msgSend_hasSentMessageToBusiness(v101, v51, v52) & 1) == 0)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_87;
        }

        v64 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          *v108 = 0;
          _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "Chat containsActiveBIASession, showing Report Junk", v108, 2u);
        }

        goto LABEL_31;
      }

      v37 = objc_msgSend_account(v101, v51, v52);
      v55 = objc_msgSend_service(v37, v53, v54);
      v60 = objc_msgSend_rcsService(IMService, v56, v57);
      if (v55 != v60 || (objc_msgSend_isChatBot(v101, v58, v59) & 1) == 0)
      {

LABEL_37:
        goto LABEL_38;
      }

      v63 = objc_msgSend_lastSentMessage(v101, v61, v62);

      if (!v63)
      {
        if (IMOSLoggingEnabled())
        {
          v64 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *v108 = 0;
            _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "Chat is RCS chatbot, showing Report Junk", v108, 2u);
          }

LABEL_31:
        }

LABEL_87:

        objc_msgSend_setCachedShouldShowReportSpam_(v13, v99, 2);
LABEL_39:
        if (IMOSLoggingEnabled())
        {
          v68 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            ShouldShowSpam = objc_msgSend_cachedShouldShowSpam(v13, v69, v70);
            *buf = 134218242;
            v111 = ShouldShowSpam;
            v112 = 2112;
            v113 = v13;
            _os_log_impl(&dword_1A823F000, v68, OS_LOG_TYPE_INFO, "Updated cachedShouldShowReportSpam to %ld for %@", buf, 0x16u);
          }
        }

        goto LABEL_43;
      }

LABEL_38:

      objc_msgSend_setCachedShouldShowReportSpam_(v13, v67, 1);
      goto LABEL_39;
    }

    if (objc_msgSend_isSMS(v101, v49, v50))
    {
      if (IMSMSReportSpamExtensionAvailable())
      {
        if ((sub_1A83837D8(v101) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (!sub_1A8392330(v101))
      {
        goto LABEL_38;
      }
    }

    v74 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v65, v66);
    isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v74, v75, v76);

    if (isIntroductionsEnabled && ((objc_msgSend_shouldShowIntroductionsButtons(v101, v78, v79) & 1) != 0 || objc_msgSend_isFilterUnknownSendersEnabled(MEMORY[0x1E69A82A0], v80, v81) && !objc_msgSend_isFiltered(v101, v78, v79)) || (objc_msgSend_hasKnownParticipants(v101, v78, v79) & 1) != 0)
    {
      goto LABEL_38;
    }

    if ((objc_msgSend_hasSurfRequest(v101, v82, v83) & 1) == 0)
    {
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = sub_1A83923AC;
      v106[3] = &unk_1E78129A8;
      v107 = v101;
      objc_msgSend_enumerateObjectsUsingBlock_(v16, v84, v106);
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = v16;
    v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v85, &v102, buf, 16);
    if (v86)
    {
      v87 = 0;
      v88 = *v103;
      while (2)
      {
        for (i = 0; i != v86; ++i)
        {
          if (*v103 != v88)
          {
            objc_enumerationMutation(obj);
          }

          v90 = *(*(&v102 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isFromMe(v90, v91, v92))
          {
            if (v87 > 1)
            {
              v93 = 1;
              goto LABEL_70;
            }

            ++v87;
          }
        }

        v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v91, &v102, buf, 16);
        if (v86)
        {
          continue;
        }

        break;
      }
    }

    v93 = 0;
LABEL_70:

    if (IMOSLoggingEnabled())
    {
      v96 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
      {
        v97 = @"NO";
        if (v93)
        {
          v97 = @"YES";
        }

        *v108 = 138412290;
        v109 = v97;
        _os_log_impl(&dword_1A823F000, v96, OS_LOG_TYPE_INFO, "Has more than 3 replies? : %@", v108, 0xCu);
      }
    }

    if (v93)
    {
      if (!objc_msgSend_hasSurfRequest(v101, v94, v95))
      {
        goto LABEL_38;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_87;
      }

      v98 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        *v108 = 0;
        _os_log_impl(&dword_1A823F000, v98, OS_LOG_TYPE_INFO, "Chat has surf request, showing Report Junk", v108, 2u);
      }
    }

    else
    {
      if (objc_msgSend_shouldBeAllowListed(v101, v94, v95))
      {
        goto LABEL_38;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_87;
      }

      v98 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        *v108 = 0;
        _os_log_impl(&dword_1A823F000, v98, OS_LOG_TYPE_INFO, "By default, showing Report Junk", v108, 2u);
      }
    }

    goto LABEL_87;
  }

  if (objc_msgSend_cachedShouldShowReportSpam(v3, v7, v8) != 2)
  {
LABEL_43:
    v12 = objc_msgSend_cachedShouldShowReportSpam(v3, v9, v10) == 2;
    goto LABEL_44;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Showing report spam, cached value", buf, 2u);
    }
  }

  v12 = 1;
LABEL_44:

  v72 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1A836CFD0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A836CFB4);
  }

  _Unwind_Resume(a1);
}

id sub_1A836DD28(void *a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_isReplyContextPreview(v3, v5, v6))
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend_guid(v3, v7, v8);
    v11 = IMAssociatedMessageDecodeGUID();
    v15 = objc_msgSend_objectsForKey_(v4, v12, v11);
    if (v15)
    {
      v56 = v11;
      v57 = v10;
      v58 = v4;
      v16 = objc_msgSend_index(v3, v13, v14);
      v19 = objc_msgSend_messagePartRange(v3, v17, v18);
      v21 = v20;
      v59 = v3;
      v23 = objc_msgSend_originalMessagePartRange(v3, v20, v22);
      v25 = v24;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v55 = v15;
      v26 = v15;
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v65, v69, 16);
      if (v28)
      {
        v31 = v28;
        v32 = v25;
        v33 = 0;
        v34 = *v66;
        v63 = v21;
        v64 = v19;
        if (v19)
        {
          v35 = 0;
        }

        else
        {
          v35 = v21 == 0x7FFFFFFFFFFFFFFFLL;
        }

        v36 = v35;
        v61 = v32;
        v62 = v23;
        if (v23)
        {
          v37 = 0;
        }

        else
        {
          v37 = v32 == 0x7FFFFFFFFFFFFFFFLL;
        }

        v38 = v37;
        v60 = v36 | v38;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v66 != v34)
            {
              objc_enumerationMutation(v26);
            }

            v40 = *(*(&v65 + 1) + 8 * i);
            v41 = objc_msgSend_associatedMessageGUID(v40, v29, v30, v55);
            v42 = IMAssociatedMessageDecodePartIndex();
            v45 = objc_msgSend_associatedMessageRange(v40, v43, v44);
            v47 = v42 != 0x7FFFFFFFFFFFFFFFLL && v42 == v16;
            if (v47 || v46 && (v45 == v64 ? (v48 = v46 == v63) : (v48 = 0), v48 || (v45 == v62 ? (v49 = v46 == v61) : (v49 = 0), !v49 ? (v50 = 0) : (v50 = 1), ((v50 | v60) & 1) != 0)))
            {
              if (!v33)
              {
                v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              objc_msgSend_addObject_(v33, v46, v40);
            }
          }

          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v65, v69, 16);
        }

        while (v31);
      }

      else
      {
        v33 = 0;
      }

      v9 = objc_msgSend_copy(v33, v51, v52);
      v4 = v58;
      v3 = v59;
      v11 = v56;
      v10 = v57;
      v15 = v55;
    }

    else
    {
      v9 = 0;
    }
  }

  v53 = *MEMORY[0x1E69E9840];

  return v9;
}

id sub_1A836DFBC(void *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E695DF70];
  v5 = objc_msgSend_count(v1, v3, v4);
  v7 = objc_msgSend_arrayWithCapacity_(v2, v6, v5);
  v8 = MEMORY[0x1E695DF70];
  v11 = objc_msgSend_count(v1, v9, v10);
  v49 = objc_msgSend_arrayWithCapacity_(v8, v12, v11);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v13 = v1;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v50, v54, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v51;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v51 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v50 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v22 = v19;
          v25 = objc_msgSend_tapback(v22, v23, v24);
          isRemoved = objc_msgSend_isRemoved(v25, v26, v27);

          if ((isRemoved & 1) == 0)
          {
            v31 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v29, v30);
            isEmojiTapbacksEnabled = objc_msgSend_isEmojiTapbacksEnabled(v31, v32, v33);

            if ((isEmojiTapbacksEnabled & 1) != 0 || (objc_msgSend_tapback(v22, v35, v36), v37 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend_associatedMessageType(v37, v38, v39), v37, (v40 - 3000) < 6) || (v40 - 2000) <= 5)
            {
              objc_msgSend_addObject_(v49, v35, v22);
            }
          }
        }

        else
        {
          objc_msgSend_addObject_(v7, v20, v19);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v21, &v50, v54, 16);
    }

    while (v16);
  }

  if (objc_msgSend_count(v49, v41, v42))
  {
    v43 = [IMAggregateAcknowledgmentChatItem alloc];
    v45 = objc_msgSend__initWithAcknowledgments_(v43, v44, v49);
    objc_msgSend_addObject_(v7, v46, v45);
  }

  v47 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t sub_1A8381554(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A8391B9C;
  v9[3] = &unk_1E78117B0;
  v5 = v4;
  v10 = v5;
  v11 = &v12;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v3, v6, 2, v9);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void sub_1A8381634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A838164C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1[4];
  v22 = v4;
  v8 = objc_msgSend_guid(v4, v6, v7);
  v10 = objc_msgSend_objectForKey_(v5, v9, v8);
  if (v10)
  {
  }

  else
  {
    v13 = *(a1[5] + 16);
    v14 = objc_msgSend_originalMessageGUID(v22, v11, v12);
    v15 = sub_1A8381554(v13, v14);

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = *(*(a1[6] + 8) + 40);
      v18 = v22;
      if (!v17)
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v20 = *(a1[6] + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        v18 = v22;
        v17 = *(*(a1[6] + 8) + 40);
      }

      objc_msgSend_addObject_(v17, v16, v18);
    }
  }
}

uint64_t sub_1A838174C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_messageID(a2, v5, v6);
  v10 = objc_msgSend_messageID(v4, v8, v9);

  if (v7 > v10)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_1A83817A4(uint64_t a1, void *a2, uint64_t a3)
{
  v161 = a2;
  v6 = objc_opt_class();
  v9 = v6;
  if (v6 == *(a1 + 352))
  {
    v15 = *(a1 + 64);
LABEL_63:
    *(*(v15 + 8) + 24) = a3;
    goto LABEL_64;
  }

  if (v6 == *(a1 + 360))
  {
LABEL_29:
    v15 = *(a1 + 72);
    goto LABEL_63;
  }

  if (v6 == *(a1 + 368))
  {
    v15 = *(a1 + 80);
    goto LABEL_63;
  }

  if (v6 != *(a1 + 376))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    if (objc_msgSend_hasKnownParticipantsCache(WeakRetained, v11, v12) && v9 == *(a1 + 384))
    {
      v19 = objc_msgSend_isFromMe(v161, v13, v14);

      if ((v19 & 1) == 0)
      {
        v20 = v161;
        v23 = objc_msgSend_sharedInstance(IMFileTransferCenter, v21, v22);
        v26 = objc_msgSend_transferGUID(v20, v24, v25);
        v28 = objc_msgSend_transferForGUID_(v23, v27, v26);

        v31 = objc_msgSend_type(v28, v29, v30);
        objc_msgSend_previewGenerationState(v28, v32, v33);
        v34 = objc_loadWeakRetained((*(a1 + 32) + 8));
        objc_msgSend_hasKnownParticipantsCache(v34, v35, v36);
        LODWORD(v26) = IMShouldAllowInteractionlessUsageOfUTITypeWithPreviewGenerationState();

        if (v26)
        {
          if (objc_msgSend_isPlayed(v20, v37, v38))
          {
            v39 = *(*(a1 + 200) + 8);
            v41 = *(v39 + 24);
            v40 = (v39 + 24);
            if (v41 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_140;
            }
          }

          else
          {
            v127 = *(*(a1 + 176) + 8);
            if (*(v127 + 24) == 0x7FFFFFFFFFFFFFFFLL)
            {
              *(v127 + 24) = a3 + 1;
            }

            ++*(*(*(a1 + 184) + 8) + 24);
            v128 = *(*(a1 + 192) + 8);
            v129 = *(v128 + 24);
            v40 = (v128 + 24);
            if (v129 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_140;
            }
          }

          *v40 = a3 + 1;
        }

LABEL_140:

LABEL_141:
        goto LABEL_64;
      }
    }

    else
    {
    }

    if (*(*(*(a1 + 208) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL && *(*(*(a1 + 216) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL && *(*(*(a1 + 224) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL && *(*(*(a1 + 232) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL && *(*(*(a1 + 240) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL && *(*(*(a1 + 248) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend_isSubclassOfClass_(v9, v7, *(a1 + 392)) || (objc_msgSend_isReplyContextPreview(v161, v7, v8) & 1) != 0 || (objc_msgSend_isEditedMessageHistory(v161, v7, v8) & 1) != 0)
    {
      if (v9 == *(a1 + 400))
      {
        v15 = *(a1 + 272);
        goto LABEL_63;
      }

      if (v9 == *(a1 + 408))
      {
        v15 = *(a1 + 280);
        goto LABEL_63;
      }

      if (v9 == *(a1 + 416))
      {
        v15 = *(a1 + 288);
        goto LABEL_63;
      }

      if (v9 == *(a1 + 424))
      {
        v15 = *(a1 + 296);
        goto LABEL_63;
      }

      if (v9 == *(a1 + 432))
      {
        v15 = *(a1 + 304);
        goto LABEL_63;
      }

      if (v9 == *(a1 + 440))
      {
        v15 = *(a1 + 312);
        goto LABEL_63;
      }

      if (v9 == *(a1 + 448))
      {
        v15 = *(a1 + 320);
        goto LABEL_63;
      }

      if (v9 == *(a1 + 456))
      {
        v15 = *(a1 + 328);
        goto LABEL_63;
      }

      if (v9 != *(a1 + 360))
      {
        if (v9 != *(a1 + 464))
        {
          goto LABEL_64;
        }

        v15 = *(a1 + 336);
        goto LABEL_63;
      }

      goto LABEL_29;
    }

    v20 = objc_msgSend__item(v161, v7, v8);
    if (!objc_msgSend_isFromMe(v20, v42, v43) || v20 == *(*(*(a1 + 160) + 8) + 40))
    {
      if ((objc_msgSend_isFromMe(v20, v44, v45) & 1) == 0 && (objc_msgSend_isAutoReply(v20, v54, v55) & 1) == 0)
      {
        *(*(*(a1 + 256) + 8) + 24) = 1;
      }

      goto LABEL_141;
    }

    v46 = *(a1 + 40);
    v47 = objc_msgSend_guid(v20, v44, v45);
    if (objc_msgSend_countForKey_(v46, v48, v47))
    {
      v49 = *(*(*(a1 + 232) + 8) + 24);

      if (v49 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v52 = a3 + 1;
        v53 = *(a1 + 232);
LABEL_46:
        *(*(v53 + 8) + 24) = v52;
        goto LABEL_137;
      }
    }

    else
    {
    }

    if (objc_msgSend_isPlayed(v20, v50, v51))
    {
      if (objc_msgSend_isExpirable(v20, v50, v51))
      {
        v130 = *(*(a1 + 224) + 8);
        if (*(v130 + 24) == 0x7FFFFFFFFFFFFFFFLL)
        {
          *(v130 + 24) = a3 + 1;
          goto LABEL_137;
        }
      }
    }

    if (objc_msgSend_isRead(v20, v50, v51))
    {
      isExpirable = objc_msgSend_isExpirable(v20, v50, v51);
      v132 = isExpirable;
      if (isExpirable)
      {
        v133 = objc_msgSend_service(v20, v50, v51);
        v3 = objc_msgSend_serviceWithName_(IMService, v134, v133);
        if ((objc_msgSend_supportsCapability_(v3, v135, *MEMORY[0x1E69A7998]) & 1) != 0 || (v138 = (a1 + 216), *(*(*(a1 + 216) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL))
        {

          goto LABEL_120;
        }

        objc_msgSend_service(v20, v136, v137, v133);
      }

      else
      {
        v138 = (a1 + 216);
        if (*(*(*(a1 + 216) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_120;
        }

        objc_msgSend_service(v20, v50, v51);
      }
      v139 = ;
      v141 = objc_msgSend_serviceWithName_(IMService, v140, v139);
      v143 = objc_msgSend_supportsCapability_(v141, v142, *MEMORY[0x1E69A7A08]);

      if (v132)
      {

        if (v143)
        {
          goto LABEL_126;
        }
      }

      else if (v143)
      {
LABEL_126:
        v52 = a3 + 1;
        v53 = *v138;
        goto LABEL_46;
      }
    }

LABEL_120:
    if (*(*(*(a1 + 208) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL || *(*(*(a1 + 240) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL || *(*(*(a1 + 248) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_137:
      v155 = *(a1 + 32);
      v28 = objc_msgSend_chat(v155, v50, v51);
      if (objc_msgSend__shouldAppendSentViaSatelliteForChat_message_(v155, v156, v28, v20))
      {
        v157 = *(*(*(a1 + 264) + 8) + 24);

        if (v157 == 0x7FFFFFFFFFFFFFFFLL)
        {
          *(*(*(a1 + 264) + 8) + 24) = a3 + 1;
        }

        goto LABEL_141;
      }

      goto LABEL_140;
    }

    v144 = objc_msgSend_time(v20, v50, v51);
    objc_msgSend_timeIntervalSinceNow(v144, v145, v146);
    v148 = v147;

    v153 = objc_msgSend_scheduleType(v20, v149, v150) == 2 && objc_msgSend_scheduleState(v20, v151, v152) == 2;
    if (objc_msgSend_didNotifyRecipient(v20, v151, v152))
    {
      v52 = a3 + 1;
LABEL_130:
      v53 = *(a1 + 248);
      goto LABEL_46;
    }

    v154 = fabs(v148);
    if (*(a1 + 480) == 1 && objc_msgSend_wasDeliveredQuietly(v20, v50, v51) && v154 <= 86400.0 && (*(*(*(a1 + 256) + 8) + 24) & 1) == 0)
    {
      v52 = a3 + 1;
    }

    else
    {
      if (!objc_msgSend_isDelivered(v20, v50, v51) || ((objc_msgSend_isPendingSatelliteSend(v20, v50, v51) | v153) & 1) != 0)
      {
        goto LABEL_137;
      }

      if (*(a1 + 480) != 1 || v154 > 86400.0 || (*(*(*(a1 + 256) + 8) + 24) & 1) != 0)
      {
        v52 = a3 + 1;
LABEL_146:
        v53 = *(a1 + 208);
        goto LABEL_46;
      }

      v158 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v159 = sub_1A83822B4(v20, v158, *(a1 + 48));

      v52 = a3 + 1;
      if (!v159)
      {
        goto LABEL_146;
      }

      if (v159 == 2)
      {
        goto LABEL_130;
      }
    }

    v53 = *(a1 + 240);
    goto LABEL_46;
  }

  switch(objc_msgSend_statusType(v161, v7, v8))
  {
    case 0:
      break;
    case 1:
    case 11:
    case 24:
    case 27:
    case 31:
      v18 = *(a1 + 112);
      goto LABEL_60;
    case 2:
      v18 = *(a1 + 120);
      goto LABEL_60;
    case 3:
      v18 = *(a1 + 128);
      goto LABEL_60;
    case 4:
    case 23:
    case 26:
      v18 = *(a1 + 104);
      goto LABEL_60;
    case 5:
      v18 = *(a1 + 96);
      goto LABEL_60;
    case 6:
      v18 = *(a1 + 88);
      goto LABEL_60;
    case 12:
      v18 = *(a1 + 136);
      goto LABEL_60;
    case 13:
      v18 = *(a1 + 144);
      goto LABEL_60;
    case 35:
      v18 = *(a1 + 152);
LABEL_60:
      *(*(v18 + 8) + 24) = a3;
      break;
    default:
      v124 = objc_msgSend__item(v161, v16, v17);
      v125 = *(*(a1 + 160) + 8);
      v126 = *(v125 + 40);
      *(v125 + 40) = v124;

      break;
  }

  if (objc_msgSend_expireStatusType(v161, v16, v17) == 1)
  {
    v15 = *(a1 + 168);
    goto LABEL_63;
  }

LABEL_64:
  if (v9 == *(a1 + 472))
  {
    v56 = objc_msgSend_playbackType(v161, v7, v8);
    v58 = v161;
    if (v56)
    {
      v59 = objc_msgSend_type(v161, v161, v57);
      v61 = objc_msgSend_objectForKey_(*(a1 + 56), v60, v59);

      if (!v61)
      {
        v63 = *(a1 + 56);
        v64 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v62, a3);
        objc_msgSend_setObject_forKey_(v63, v65, v64, v59);
      }

      v58 = v161;
    }

    objc_msgSend_setLastChatItemOfPluginType_(v58, v58, 0);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_setChatInScrutinyMode_(v161, v66, *(a1 + 481));
  }

  if (objc_msgSend_isSubclassOfClass_(v9, v66, *(a1 + 392)))
  {
    v69 = objc_msgSend__item(v161, v67, v68);
    v72 = objc_msgSend_chat(*(a1 + 32), v70, v71);
    v75 = objc_msgSend_account(v72, v73, v74);
    v78 = objc_msgSend_service(v75, v76, v77);
    if (!objc_msgSend_supportsCapability_(v78, v79, *MEMORY[0x1E69A7A20]))
    {

      goto LABEL_82;
    }

    v80 = *(*(*(a1 + 344) + 8) + 24);

    if (v80 != 1)
    {
      goto LABEL_82;
    }

    v83 = MEMORY[0x1E69A7F70];
    v84 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v87 = objc_msgSend_chatStyle(v84, v85, v86);
    isReportJunkServiceAllowedForMessageItem_junkChatStyle = objc_msgSend_isReportJunkServiceAllowedForMessageItem_junkChatStyle_(v83, v88, v69, v87);

    v90 = objc_loadWeakRetained((*(a1 + 32) + 8));
    if (objc_msgSend_cachedShouldShowReportSpam(v90, v91, v92) == 1 && isReportJunkServiceAllowedForMessageItem_junkChatStyle)
    {
    }

    else
    {
      v93 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v96 = (objc_msgSend_cachedShouldShowReportSpam(v93, v94, v95) != 2) | isReportJunkServiceAllowedForMessageItem_junkChatStyle;

      if (v96)
      {
LABEL_81:
        *(*(*(a1 + 344) + 8) + 24) = 0;
LABEL_82:
        v100 = objc_msgSend_chat(*(a1 + 32), v81, v82);
        v103 = objc_msgSend_account(v100, v101, v102);
        v106 = objc_msgSend_service(v103, v104, v105);
        if (objc_msgSend_supportsCapability_(v106, v107, *MEMORY[0x1E69A7A28]))
        {
          v108 = *(*(*(a1 + 344) + 8) + 24);

          if (v108 == 1)
          {
            v111 = objc_loadWeakRetained((*(a1 + 32) + 8));
            if (objc_msgSend_cachedShouldShowReportSpam(v111, v112, v113) == 1)
            {
            }

            else
            {
              v114 = objc_loadWeakRetained((*(a1 + 32) + 8));
              ShouldShowReportSpam = objc_msgSend_cachedShouldShowReportSpam(v114, v115, v116);

              if (ShouldShowReportSpam != 2)
              {
LABEL_89:
                *(*(*(a1 + 344) + 8) + 24) = 0;
                goto LABEL_90;
              }
            }

            v118 = objc_loadWeakRetained((*(a1 + 32) + 8));
            objc_msgSend_invalidateSpamIndicatorCachedValues(v118, v119, v120);

            goto LABEL_89;
          }
        }

        else
        {
        }

LABEL_90:
        if (objc_msgSend_isFromMe(v69, v109, v110))
        {
          v121 = objc_loadWeakRetained((*(a1 + 32) + 8));
          objc_msgSend_invalidateSpamIndicatorCachedValuesIfNeeded(v121, v122, v123);
        }

        goto LABEL_93;
      }
    }

    v97 = objc_loadWeakRetained((*(a1 + 32) + 8));
    objc_msgSend_invalidateSpamIndicatorCachedValues(v97, v98, v99);

    goto LABEL_81;
  }

LABEL_93:
}

uint64_t sub_1A83822B4(void *a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v10 = objc_msgSend_time(v5, v8, v9);
  v15 = objc_msgSend_availabilityStatusPublishedDate(v6, v11, v12);
  if (v15)
  {
    objc_msgSend_timeIntervalSince1970(v10, v13, v14);
    v17 = v16;
    objc_msgSend_timeIntervalSince1970(v15, v18, v19);
    if (v17 < v20)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v10;
          *&buf[12] = 2112;
          *&buf[14] = v15;
          _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Message from time %@ is older than status from time %@. Not inferring a delivery type, as we likely have out of date status data.", buf, 0x16u);
        }
      }

      v22 = 0;
      goto LABEL_32;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Status published date is not available (likely cache miss), assuming our status information is up to date", buf, 2u);
    }
  }

  v24 = v7;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_1A8259C30;
  v39[4] = sub_1A825AF44;
  v27 = objc_msgSend_date(MEMORY[0x1E695DF00], v25, v26);
  v40 = objc_msgSend_dateByAddingTimeInterval_(v27, v28, v29, -480.0);

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_1A8391E3C;
  v46 = &unk_1E7813CE8;
  v47 = v39;
  v48 = &v41;
  v49 = 0x407E000000000000;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v24, v30, 2, buf);
  if (*(v42 + 24) == 1)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_21;
    }

    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *v38 = 0;
      _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Inferring that we are in the urgent message grace period.", v38, 2u);
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_21;
    }

    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *v38 = 0;
      _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Inferring that we are NOT in the urgent message grace period.", v38, 2u);
    }
  }

LABEL_21:
  v32 = *(v42 + 24);
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(&v41, 8);
  v33 = IMOSLoggingEnabled();
  if (v32)
  {
    if (v33)
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "Recipient is unavailable, and we are in an active grace period, inferring sent message will notify recipient, pending receipt", buf, 2u);
      }
    }

    v22 = 2;
  }

  else
  {
    if (v33)
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "We are not in an active grace period, inferring this recent message will be delivered quietly, pending receipt", buf, 2u);
      }
    }

    v22 = 1;
  }

LABEL_32:

  v36 = *MEMORY[0x1E69E9840];
  return v22;
}

void sub_1A83827B4(uint64_t a1, const char *a2, void *a3)
{
  v4 = objc_msgSend_unsignedIntegerValue(a3, a2, a3);
  if (v4 < objc_msgSend_count(*(a1 + 32), v5, v6))
  {
    v8 = objc_msgSend_objectAtIndex_(*(a1 + 32), v7, v4);
    v9 = *(a1 + 40);
    v11 = v8;
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setLastChatItemOfPluginType_(v11, v10, 1);
    }
  }
}

id sub_1A8382848(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24));
  v6 = objc_msgSend__item(v3, v4, v5);

  v7 = [IMLoadMoreChatItem alloc];
  v9 = objc_msgSend__initWithItem_(v7, v8, v6);
  v11 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v10, v9);

  return v11;
}

id sub_1A83828E4(uint64_t a1)
{
  v2 = [IMBlackholeChatItem alloc];
  v4 = objc_msgSend__initWithItem_(v2, v3, 0);
  v6 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 32), v5, v4);

  return v6;
}

uint64_t sub_1A8382960(void *a1)
{
  v1 = a1[5];
  v2 = *(*(a1[6] + 8) + 24);
  return MEMORY[0x1EEE66B58](a1[4], sel__newiMessageLiteSentItemWithStatusType_atIndex_chatItems_, 35);
}

id sub_1A8382994(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend__newDeliveredChatItemWithStatusType_atIndex_chatItems_(*(a1 + 32), a2, 1, *(*(*(a1 + 48) + 8) + 24), *(a1 + 40));

  return v2;
}

id sub_1A83829EC(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend__newDeliveredChatItemWithStatusType_atIndex_chatItems_(*(a1 + 32), a2, 2, *(*(*(a1 + 48) + 8) + 24), *(a1 + 40));

  return v2;
}

id sub_1A8382A44(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend__newDeliveredChatItemWithStatusType_atIndex_chatItems_(*(a1 + 32), a2, 3, *(*(*(a1 + 48) + 8) + 24), *(a1 + 40));

  return v2;
}

id sub_1A8382A84(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24));
  v6 = objc_msgSend__item(v3, v4, v5);

  v7 = v6;
  if (objc_msgSend_expireState(v7, v8, v9) == 1)
  {
    if ((objc_msgSend_isFromMe(v7, v10, v11) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v12 >= 3.0))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v16 = [IMMessageStatusChatItem alloc];
    v15 = objc_msgSend__initWithItem_expireStatusType_count_statusItemSequenceNumber_(v16, v17, v7, v13, 0, 0);
    v14 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v18, v15);
  }

  else
  {

    v14 = 0;
    v15 = v7;
  }

  return v14;
}

id sub_1A8382B90(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  v9 = objc_msgSend_timeRead(v6, v7, v8);
  v12 = objc_msgSend_time(v6, v10, v11);
  v14 = objc_msgSend_laterDate_(v9, v13, v12);

  v15 = v6;
  v20 = objc_msgSend_expireState(v15, v16, v17);
  if (v20 == 1)
  {
    if ((objc_msgSend_isFromMe(v15, v18, v19) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v21 >= 3.0))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = [IMMessageStatusChatItem alloc];
  v25 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v23, v24, v15, 4, v14, 0, v22, 0);
  v28 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v26, v25);
  if (v20 == 1)
  {
    objc_msgSend_replaceObjectAtIndex_withObject_(*(a1 + 32), v27, *(*(*(a1 + 48) + 8) + 24), v28);

    v28 = 0;
  }

  return v28;
}

id sub_1A8382D14(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24));
  v6 = objc_msgSend__item(v3, v4, v5);

  v7 = v6;
  if (objc_msgSend_expireState(v7, v8, v9) == 1)
  {
    if ((objc_msgSend_isFromMe(v7, v10, v11) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v12 >= 3.0))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v16 = [IMMessageStatusChatItem alloc];
    v15 = objc_msgSend__initWithItem_expireStatusType_count_statusItemSequenceNumber_(v16, v17, v7, v13, 0, 0);
    v14 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v18, v15);
  }

  else
  {

    v14 = 0;
    v15 = v7;
  }

  return v14;
}

id sub_1A8382E20(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  v9 = objc_msgSend_timePlayed(v6, v7, v8);
  v12 = objc_msgSend_time(v6, v10, v11);
  v14 = objc_msgSend_laterDate_(v9, v13, v12);

  v15 = v6;
  v20 = objc_msgSend_expireState(v15, v16, v17);
  if (v20 == 1)
  {
    if ((objc_msgSend_isFromMe(v15, v18, v19) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v21 >= 3.0))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = [IMMessageStatusChatItem alloc];
  v25 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v23, v24, v15, 5, v14, 0, v22, 0);
  v28 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v26, v25);
  if (v20 == 1)
  {
    objc_msgSend_replaceObjectAtIndex_withObject_(*(a1 + 32), v27, *(*(*(a1 + 48) + 8) + 24), v28);

    v28 = 0;
  }

  return v28;
}

id sub_1A8382FA4(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24));
  v6 = objc_msgSend__item(v3, v4, v5);

  v7 = v6;
  if (objc_msgSend_expireState(v7, v8, v9) == 1)
  {
    if ((objc_msgSend_isFromMe(v7, v10, v11) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v12 >= 3.0))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v16 = [IMMessageStatusChatItem alloc];
    v15 = objc_msgSend__initWithItem_expireStatusType_count_statusItemSequenceNumber_(v16, v17, v7, v13, 0, 0);
    v14 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v18, v15);
  }

  else
  {

    v14 = 0;
    v15 = v7;
  }

  return v14;
}

id sub_1A83830B0(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 56) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  v7 = *(a1 + 64);
  v8 = *(a1 + 40);
  v12 = objc_msgSend_guid(v6, v9, v10);
  if (v7 == 45)
  {
    v13 = objc_msgSend_peekObjectForKey_(v8, v11, v12);
    v16 = objc_msgSend_time(v13, v14, v15);

    v17 = 0;
  }

  else
  {
    v17 = objc_msgSend_countForKey_(v8, v11, v12);
    v16 = 0;
  }

  v18 = v6;
  v23 = objc_msgSend_expireState(v18, v19, v20);
  if (v23 == 1)
  {
    if ((objc_msgSend_isFromMe(v18, v21, v22) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v24 >= 3.0))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = [IMMessageStatusChatItem alloc];
  v28 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v26, v27, v18, 6, v16, v17, v25, 0);
  v31 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 48), v29, v28);
  if (v23 == 1)
  {
    objc_msgSend_replaceObjectAtIndex_withObject_(*(a1 + 32), v30, *(*(*(a1 + 56) + 8) + 24), v31);

    v31 = 0;
  }

  return v31;
}

id sub_1A8383254(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24));
  if (objc_msgSend_expireStatusType(v3, v4, v5) == 1)
  {
    v8 = objc_msgSend__item(v3, v6, v7);
    v9 = [IMMessageStatusChatItem alloc];
    v11 = objc_msgSend__initWithItem_expireStatusType_count_statusItemSequenceNumber_(v9, v10, v8, 1, *(*(*(a1 + 56) + 8) + 24), 0);
    v13 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v12, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_1A838331C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  v7 = [IMMessageStatusChatItem alloc];
  v9 = objc_msgSend__initWithItem_statusType_time_count_statusItemSequenceNumber_(v7, v8, v6, 12, 0, 0, 0);
  v11 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v10, v9);

  return v11;
}

id sub_1A83833CC(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24));
  if (objc_msgSend_statusType(v3, v4, v5) == 12)
  {
    v8 = objc_msgSend__item(v3, v6, v7);
    v9 = [IMMessageStatusChatItem alloc];
    v11 = objc_msgSend__initWithItem_statusType_time_count_statusItemSequenceNumber_(v9, v10, v8, 12, 0, 0, 0);
    v13 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v12, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_1A8383490(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  if (*(a1 + 64))
  {
    v7 = 12;
  }

  else
  {
    v7 = 0;
  }

  v8 = [IMMessageStatusChatItem alloc];
  v10 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v8, v9, v6, v7, 0, *(*(*(a1 + 56) + 8) + 24), 1, 0);
  v13 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v11, v10);
  if (*(a1 + 64) == 1)
  {
    objc_msgSend_replaceObjectAtIndex_withObject_(*(a1 + 32), v12, *(*(*(a1 + 48) + 8) + 24), v13);

    v13 = 0;
  }

  return v13;
}

id sub_1A8383588(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24));
  v6 = objc_msgSend__item(v3, v4, v5);

  v7 = v6;
  if (objc_msgSend_expireState(v7, v8, v9) == 1)
  {
    if ((objc_msgSend_isFromMe(v7, v10, v11) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v12 >= 3.0))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v16 = [IMMessageStatusChatItem alloc];
    v15 = objc_msgSend__initWithItem_expireStatusType_count_statusItemSequenceNumber_(v16, v17, v7, v13, 0, 0);
    v14 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v18, v15);
  }

  else
  {

    v14 = 0;
    v15 = v7;
  }

  return v14;
}

id sub_1A8383694(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  v7 = v6;
  v12 = objc_msgSend_expireState(v7, v8, v9);
  if (v12 == 1)
  {
    if ((objc_msgSend_isFromMe(v7, v10, v11) & 1) != 0 || (IMMessageItemTimeIntervalSinceStartedExpiring(), v13 >= 3.0))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [IMMessageStatusChatItem alloc];
  v17 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v15, v16, v7, 13, 0, 0, v14, 0);
  v20 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v18, v17);
  if (v12 == 1)
  {
    objc_msgSend_replaceObjectAtIndex_withObject_(*(a1 + 32), v19, *(*(*(a1 + 48) + 8) + 24), v20);

    v20 = 0;
  }

  return v20;
}

uint64_t sub_1A83837D8(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_account(v1, v2, v3);
  v7 = objc_msgSend_service(v4, v5, v6);
  v12 = objc_msgSend_smsService(IMService, v8, v9);
  if (v7 == v12)
  {
    v14 = objc_msgSend__items(v1, v10, v11);
    ShouldShowReportMessagesForItems = IMSSMSReportSpamShouldShowReportMessagesForItems();
  }

  else
  {
    ShouldShowReportMessagesForItems = 0;
  }

  return ShouldShowReportMessagesForItems;
}

id sub_1A8383878(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v9 = objc_msgSend_valueForChatProperty_(WeakRetained, v8, @"wasAutoDetectedForSpam");
  v12 = objc_msgSend_BOOLValue(v9, v10, v11);

  v13 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v16 = objc_msgSend_chatStyle(v13, v14, v15);

  v17 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v20 = objc_msgSend_messageCount(v17, v18, v19);

  v21 = objc_loadWeakRetained((*(a1 + 40) + 8));
  isBusinessChat = objc_msgSend_isBusinessChat(v21, v22, v23);

  v25 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v28 = objc_msgSend_unsubscribeText(v25, v26, v27);
  v31 = objc_msgSend_length(v28, v29, v30);

  if (objc_msgSend_isTextMessageExtensionEnabled(MEMORY[0x1E69A8198], v32, v33))
  {
    v34 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v36 = objc_msgSend_valueForChatProperty_(v34, v35, @"smsSpamExtensionName");
  }

  else
  {
    v36 = 0;
  }

  v37 = [IMReportSpamChatItem alloc];
  v43 = v31 != 0;
  canUnsubscribe_filterExtension = objc_msgSend__initWithItem_wasReportedAsSpam_isGroup_hasMultipleMessages_showReportSMSSpam_isBusinessChat_canUnsubscribe_filterExtension_(v37, v38, v6, v12, v16 != 45, v20 > 1, *(a1 + 56), isBusinessChat, v43, v36);
  v41 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v40, canUnsubscribe_filterExtension);

  return v41;
}

BOOL sub_1A8383A6C(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_cachedShouldShowSpam(v3, v5, v6))
  {
    goto LABEL_13;
  }

  v9 = v3;
  v11 = objc_msgSend___imArrayByFilteringWithBlock_(v4, v10, &unk_1F1B6F200);
  if (!objc_msgSend_count(v11, v12, v13) || !objc_msgSend_isFiltered(v9, v14, v15) || (objc_msgSend_isRecovered(v9, v16, v17) & 1) != 0 || (objc_msgSend_isBusinessChat(v9, v18, v19) & 1) != 0 || objc_msgSend_hasKnownParticipants(v9, v20, v21))
  {

LABEL_8:
    objc_msgSend_setCachedShouldShowSpam_(v9, v24, 1);
    goto LABEL_9;
  }

  isCategorized = objc_msgSend_isCategorized(v9, v22, v23);
  v33 = objc_msgSend_valueForChatProperty_(v9, v32, @"wasDetectedAsiMessageSpam");
  v36 = objc_msgSend_BOOLValue(v33, v34, v35);

  if (((isCategorized | v36) & 1) == 0)
  {
    goto LABEL_8;
  }

  objc_msgSend_setCachedShouldShowSpam_(v9, v24, 2);
LABEL_9:
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v37 = 134218242;
      ShouldShowSpam = objc_msgSend_cachedShouldShowSpam(v9, v26, v27);
      v39 = 2112;
      v40 = v9;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Updated cachedShouldShowSpam to %ld for %@", &v37, 0x16u);
    }
  }

LABEL_13:
  v28 = objc_msgSend_cachedShouldShowSpam(v3, v7, v8) == 2;

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

id sub_1A8383C5C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v10 = objc_msgSend_account(WeakRetained, v8, v9);
  v13 = objc_msgSend_service(v10, v11, v12);
  v15 = objc_msgSend_supportsCapability_(v13, v14, *MEMORY[0x1E69A7A48]);

  v16 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v19 = v16;
  if (v15)
  {
    v20 = objc_msgSend_valueForChatProperty_(v16, v17, @"smsSpamExtensionName");

    if (!v20)
    {
      goto LABEL_7;
    }

LABEL_6:
    v27 = [IMSMSSpamChatItem alloc];
    v29 = objc_msgSend__initWithItem_withExtensionName_(v27, v28, v6, v20);
    v31 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v30, v29);

    goto LABEL_8;
  }

  v21 = objc_msgSend_account(v16, v17, v18);
  v24 = objc_msgSend_service(v21, v22, v23);
  v26 = objc_msgSend_supportsCapability_(v24, v25, *MEMORY[0x1E69A78E8]);

  if (v26)
  {
    v20 = @"Apple";
    goto LABEL_6;
  }

LABEL_7:
  v31 = 0;
LABEL_8:

  return v31;
}

id sub_1A8383DE0(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  objc_msgSend_markAsHasBeenBlockContact(WeakRetained, v8, v9);

  v10 = [IMBlockContactChatItem alloc];
  v11 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v14 = objc_msgSend_chatStyle(v11, v12, v13);
  v16 = objc_msgSend__initWithItem_chatStyle_(v10, v15, v6, v14);

  v18 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v17, v16);

  return v18;
}

id sub_1A8383EBC(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  v9 = objc_msgSend__currentChatSubscriptionLabel(*(a1 + 40), v7, v8);
  v10 = [IMSimSwitchedChatItem alloc];
  v12 = objc_msgSend__initWithItem_senderHandle_(v10, v11, v6, v9);
  v14 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v13, v12);

  return v14;
}

id sub_1A8383F74(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  v7 = [IMSatelliteUnavailableForServiceChatItem alloc];
  v9 = objc_msgSend_serviceForChatItems_(*(a1 + 40), v8, *(a1 + 32));
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v13 = objc_msgSend_recipient(WeakRetained, v11, v12);
  v16 = objc_msgSend_ID(v13, v14, v15);
  v17 = objc_loadWeakRetained((*(a1 + 40) + 8));
  isGroupChat = objc_msgSend_isGroupChat(v17, v18, v19);
  v22 = objc_msgSend__initWithItem_service_recipientID_isGroupChat_(v7, v21, v6, v9, v16, isGroupChat);

  v24 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v23, v22);

  return v24;
}

id sub_1A8384098(uint64_t a1, const char *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  isGroupChat = objc_msgSend_isGroupChat(WeakRetained, v9, v10);

  if (isGroupChat)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v12 = objc_loadWeakRetained((*(a1 + 40) + 8));
    v15 = objc_msgSend_participants(v12, v13, v14, 0);

    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v43, v47, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v44;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(*(&v43 + 1) + 8 * i);
          if (!objc_msgSend_blockedStatus(v23, v18, v19))
          {
            v24 = objc_loadWeakRetained((*(a1 + 40) + 8));
            v26 = objc_msgSend_displayNameForChat_(v23, v25, v24);

            objc_msgSend_addObject_(v7, v27, v26);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v43, v47, 16);
      }

      while (v20);
    }
  }

  v28 = [IMBlockedConversationChatItem alloc];
  v29 = objc_loadWeakRetained((*(a1 + 40) + 8));
  canLeaveChat = objc_msgSend_canLeaveChat(v29, v30, v31);
  v33 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v36 = objc_msgSend_isGroupChat(v33, v34, v35);
  isGroupMessage = objc_msgSend__initWithItem_blockedRecipients_canLeaveChat_isGroupMessage_(v28, v37, v6, v7, canLeaveChat, v36);

  v40 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v39, isGroupMessage);

  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

id sub_1A83842E4(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 24) - 1);
  v6 = objc_msgSend__item(v3, v4, v5);

  v7 = [IMLoadMoreRecentChatItem alloc];
  v9 = objc_msgSend__initWithItem_(v7, v8, v6);
  v11 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v10, v9);

  return v11;
}

void sub_1A8384384(uint64_t a1, void *a2, uint64_t a3)
{
  v103 = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v90 = v5;
    v6 = sub_1A836DD28(v90, *(*(*(a1 + 48) + 8) + 40));
    if (v6)
    {
      v8 = v6;
      v87 = a3;
      v88 = a1;
      v89 = v5;
      v9 = sub_1A836DFBC(v6);

      v10 = v9;
      v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12);
      v16 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v14, v15);
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v17 = v10;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v97, v102, 16);
      v92 = v17;
      if (v19)
      {
        v22 = v19;
        v23 = *v98;
        v91 = *v98;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v98 != v23)
            {
              objc_enumerationMutation(v17);
            }

            v25 = *(*(&v97 + 1) + 8 * i);
            if (objc_msgSend_associatedMessageType(v25, v20, v21, v87) == 4000)
            {
              v28 = objc_msgSend_sender(v25, v26, v27);
              v31 = objc_msgSend_ID(v28, v29, v30);

              if (v31)
              {
                v33 = objc_msgSend_objectForKey_(v16, v32, v31);
                if (v33)
                {
                  v36 = v33;
                  v37 = v13;
                  v38 = v16;
                  v39 = objc_msgSend_time(v33, v34, v35);
                  v42 = objc_msgSend_time(v25, v40, v41);
                  v44 = objc_msgSend_compare_(v39, v43, v42);

                  if (v44 == -1)
                  {
                    v46 = v25;

                    v36 = v46;
                  }

                  v16 = v38;
                  v13 = v37;
                  v23 = v91;
                  v17 = v92;
                  objc_msgSend_setObject_forKey_(v16, v45, v36, v31);
                }

                else
                {
                  v36 = v25;
                  objc_msgSend_setObject_forKey_(v16, v47, v36, v31);
                }
              }

              else
              {
                objc_msgSend_addObject_(v13, v32, v25);
              }
            }

            else
            {
              objc_msgSend_addObject_(v13, v26, v25);
            }
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v97, v102, 16);
        }

        while (v22);
      }

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v50 = objc_msgSend_allValues(v16, v48, v49);
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v93, v101, 16);
      a1 = v88;
      if (v52)
      {
        v54 = v52;
        v55 = *v94;
        do
        {
          for (j = 0; j != v54; ++j)
          {
            if (*v94 != v55)
            {
              objc_enumerationMutation(v50);
            }

            objc_msgSend_addObject_(v13, v53, *(*(&v93 + 1) + 8 * j), v87);
          }

          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v93, v101, 16);
        }

        while (v54);
      }

      v5 = v89;
      a3 = v87;
    }

    else
    {
      v13 = 0;
    }

    v57 = v90;
    if ((objc_msgSend__updateAggregateAttachmentMessagePartAssociatedItems_map_(*(a1 + 32), v7, v90, *(*(*(a1 + 48) + 8) + 40), v87) & 1) != 0 || (v71 = *(a1 + 32), objc_msgSend_visibleAssociatedMessageChatItems(v90, v69, v70), v72 = objc_claimAutoreleasedReturnValue(), LODWORD(v71) = objc_msgSend__shouldReloadChatItemWithAssociatedChatItems_oldAssociatedChatItems_(v71, v73, v13, v72), v72, v71))
    {
      v74 = objc_msgSend_copy(v90, v69, v70);
      v77 = v74;
      if (v13)
      {
        objc_msgSend__setVisibleAssociatedMessageChatItems_(v74, v75, v13);
      }

      else
      {
        v79 = objc_msgSend_visibleAssociatedMessageChatItems(v90, v75, v76);
        v82 = objc_msgSend_count(v79, v80, v81);

        if (v82)
        {
          objc_msgSend__setVisibleAssociatedMessageChatItems_(v77, v78, 0);
        }
      }

      v83 = *(a1 + 40);
      v84 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 32), v78, v77);
      objc_msgSend_replaceObjectAtIndex_withObject_(v83, v85, a3, v84);

      v57 = v90;
    }

LABEL_42:
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = v5;
    v58 = *(*(*(a1 + 56) + 8) + 24);
    if (v58 != objc_msgSend__isActionableEclipsed(v57, v59, v60))
    {
      v63 = objc_msgSend_copy(v57, v61, v62);
      objc_msgSend__setActionableEclipsed_(v63, v64, *(*(*(a1 + 56) + 8) + 24));
      v65 = *(a1 + 40);
      v67 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 32), v66, v63);
      objc_msgSend_replaceObjectAtIndex_withObject_(v65, v68, a3, v67);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    goto LABEL_42;
  }

LABEL_43:

  v86 = *MEMORY[0x1E69E9840];
}

void sub_1A8384830(uint64_t a1, void *a2, uint64_t a3)
{
  v39 = a2;
  isContiguousWithChatItem = objc_msgSend_isContiguousWithChatItem_(*(*(*(a1 + 48) + 8) + 40), v5, v39);
  isAttachmentContiguousWithChatItem = objc_msgSend_isAttachmentContiguousWithChatItem_(*(*(*(a1 + 48) + 8) + 40), v7, v39);
  v11 = *(*(*(a1 + 56) + 8) + 24);
  if ((v11 - 1) >= 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = 3;
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v13 = v11 == 3;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2 * ((v11 - 1) < 2);
  }

  if (isContiguousWithChatItem)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v16 = *(*(*(a1 + 64) + 8) + 24);
  if ((v16 - 1) >= 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = 3;
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v18 = v16 == 3;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2 * ((v16 - 1) < 2);
  }

  if (isAttachmentContiguousWithChatItem)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  isContiguousLoaded = objc_msgSend__isContiguousLoaded(*(*(*(a1 + 48) + 8) + 40), v9, v10);
  v24 = *(*(*(a1 + 48) + 8) + 40);
  if (isContiguousLoaded)
  {
    if (objc_msgSend_contiguousType(v24, v21, v22) != v15 || objc_msgSend_attachmentContiguousType(*(*(*(a1 + 48) + 8) + 40), v25, v26) != v20)
    {
      v27 = objc_msgSend_copy(*(*(*(a1 + 48) + 8) + 40), v25, v26);
      objc_msgSend__setContiguousType_(v27, v28, v15);
      objc_msgSend__setAttachmentContiguousType_(v27, v29, v20);
      objc_msgSend__setContiguousLoaded_(v27, v30, 1);
      v31 = *(a1 + 32);
      v33 = objc_msgSend_chatItemForIMChatItem_(*(a1 + 40), v32, v27);
      objc_msgSend_replaceObjectAtIndex_withObject_(v31, v34, a3 - 1, v33);
    }
  }

  else
  {
    objc_msgSend__setContiguousType_(v24, v21, v15);
    objc_msgSend__setAttachmentContiguousType_(*(*(*(a1 + 48) + 8) + 40), v35, v20);
    objc_msgSend__setContiguousLoaded_(*(*(*(a1 + 48) + 8) + 40), v36, 1);
  }

  *(*(*(a1 + 56) + 8) + 24) = v15;
  *(*(*(a1 + 64) + 8) + 24) = v20;
  v37 = *(*(a1 + 48) + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = v39;
}

void sub_1A8385300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8385318(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  v7 = objc_msgSend__item(v16, v5, v6);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v11 = v16;
  if (isKindOfClass)
  {
    v12 = objc_msgSend__item(v16, v9, v10);
    if (objc_msgSend_isSuggestedActionResponse(v12, v13, v14))
    {
      objc_msgSend_addIndex_(*(*(*(a1 + 32) + 8) + 40), v15, a3);
    }

    v11 = v16;
  }
}

void sub_1A83854C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83854D8(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  v7 = objc_msgSend__item(v16, v5, v6);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v11 = v16;
  if (isKindOfClass)
  {
    v12 = objc_msgSend__item(v16, v9, v10);
    if (objc_msgSend_isRCSEncryptionTest(v12, v13, v14))
    {
      objc_msgSend_addIndex_(*(*(*(a1 + 32) + 8) + 40), v15, a3);
    }

    v11 = v16;
  }
}

void sub_1A8385850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8385890(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = objc_msgSend__item(v36, v36, v6);
    v10 = objc_msgSend_balloonBundleID(v7, v8, v9);
    isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x1E69A68E8]);

    if ((isEqualToString & 1) == 0)
    {
      v15 = *(*(*(a1 + 32) + 8) + 40);
      v16 = objc_msgSend_pluginSessionGUID(v7, v13, v14);
      LODWORD(v15) = objc_msgSend_containsObject_(v15, v17, v16);

      if (v15)
      {
        v20 = objc_msgSend_dataSource(v36, v18, v19);
        v21 = [IMTranscriptPluginBreadcrumbChatItem alloc];
        v24 = objc_msgSend_statusString(v20, v22, v23);
        v26 = objc_msgSend__initWithItem_datasource_statusText_optionFlags_(v21, v25, v7, v20, v24, 0);

        v27 = *(*(*(a1 + 40) + 8) + 40);
        v29 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v28, a3);
        objc_msgSend_setObject_forKey_(v27, v30, v26, v29);

LABEL_7:
        goto LABEL_8;
      }

      if (objc_msgSend_associatedMessageType(v7, v18, v19) == 2)
      {
        v33 = *(*(*(a1 + 32) + 8) + 40);
        v20 = objc_msgSend_pluginSessionGUID(v7, v31, v32);
        objc_msgSend_addObject_(v33, v34, v20);
        goto LABEL_7;
      }
    }

LABEL_8:
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A8385C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A8385C6C(void *a1, void *a2, uint64_t a3)
{
  v40 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend__item(v40, v5, v6);
    v8 = *(*(a1[5] + 8) + 40);
    v11 = objc_msgSend_pluginSessionGUID(v7, v9, v10);
    LODWORD(v8) = objc_msgSend_containsObject_(v8, v12, v11);

    if (v8)
    {
      objc_msgSend_addIndex_(*(*(a1[6] + 8) + 40), v13, a3);
    }

    else if (objc_msgSend_associatedMessageType(v7, v13, v14) == 2)
    {
      v17 = *(*(a1[5] + 8) + 40);
      v18 = objc_msgSend_pluginSessionGUID(v7, v15, v16);
      objc_msgSend_addObject_(v17, v19, v18);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v40;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  v24 = objc_msgSend_dataSource(*(*(a1[7] + 8) + 40), v22, v23);
  v27 = objc_msgSend_dataSource(v21, v25, v26);
  isEqual = objc_msgSend_isEqual_(v24, v28, v27);

  v31 = 0;
  v32 = *(a1[8] + 8);
  if (isEqual)
  {
    v31 = *(v32 + 24) + 1;
  }

  *(v32 + 24) = v31;
  if (*(*(a1[8] + 8) + 24) < 3uLL)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    v36 = objc_msgSend_account(WeakRetained, v34, v35);
    objc_msgSend_configureStatusTextWithAccount_(v21, v37, v36);
  }

  else
  {
    objc_msgSend_addIndex_(*(*(a1[6] + 8) + 40), v30, a3);
  }

  v38 = *(a1[7] + 8);
  v39 = *(v38 + 40);
  *(v38 + 40) = v21;
}

void sub_1A8385F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8385F80(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v14;
    if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_dataSource(v6, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), isShowingLatestMessageAsBreadcrumb = objc_msgSend_isShowingLatestMessageAsBreadcrumb(v9, v10, v11), v9, (isShowingLatestMessageAsBreadcrumb & 1) == 0))
    {
      objc_msgSend_addIndex_(*(*(*(a1 + 32) + 8) + 40), v7, a3);
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

uint64_t sub_1A83863DC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1A8386CF4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a1;
  v14 = objc_msgSend__item(a2, v11, v12);
  if (a3 < 1)
  {
    v15 = 0;
LABEL_7:
    v21 = [IMPhotoAttachmentStatusChatItem alloc];
    v19 = objc_msgSend__initWithItem_numberOfPhotos_numberOfVideos_numberOfSavedAssets_(v21, v22, v14, a4, a5, a6);
    objc_msgSend_insertObject_atIndex_(v24, v23, v19, a3);
    goto LABEL_8;
  }

  v15 = objc_msgSend_objectAtIndexedSubscript_(v24, v13, a3 - 1);
  if (!v15)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (objc_msgSend_wouldBeEqualIfInitializedWithItem_numberOfPhotos_numberOfVideos_numberOfSavedAssets_(v15, v16, v14, a4, a5, a6))
  {
    goto LABEL_9;
  }

  v17 = [IMPhotoAttachmentStatusChatItem alloc];
  v19 = objc_msgSend__initWithItem_numberOfPhotos_numberOfVideos_numberOfSavedAssets_(v17, v18, v14, a4, a5, a6);
  objc_msgSend_replaceObjectAtIndex_withObject_(v24, v20, a3 - 1, v19);
LABEL_8:

LABEL_9:
}

void sub_1A8386E3C(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v60[1] = *MEMORY[0x1E69E9840];
  v4 = a1;
  v7 = objc_msgSend__item(v4, v5, v6);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_msgSend_transferGUIDs(v4, v8, v9);
  }

  else
  {
    v11 = objc_msgSend_transferGUID(v4, v8, v9);
    v13 = v11;
    if (v11)
    {
      v60[0] = v11;
      v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v60, 1);
    }

    else
    {
      v10 = 0;
    }
  }

  v50 = v7;
  v54 = v4;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v14 = v10;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v55, v59, 16);
  if (v16)
  {
    v19 = v16;
    v20 = 0;
    v21 = 0;
    v22 = *v56;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v56 != v22)
        {
          objc_enumerationMutation(v14);
        }

        v24 = *(*(&v55 + 1) + 8 * i);
        v25 = objc_msgSend_sharedInstance(IMFileTransferCenter, v17, v18);
        v27 = objc_msgSend_transferForGUID_(v25, v26, v24);

        v30 = objc_msgSend_filename(v27, v28, v29);
        v31 = IMUTITypeForFilename();

        if (IMUTITypeIsPhoto())
        {
          ++v21;
        }

        else
        {
          v20 += IMUTITypeIsVideo();
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v55, v59, 16);
    }

    while (v19);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (v21 | v20)
  {
    v34 = v50;
    v35 = objc_msgSend_message(v50, v32, v33);
    v36 = v54;
    v38 = objc_msgSend_photosSyndicationIdentifiersForMessage_transcriptChatItem_(IMPhotoLibraryPersistenceManager, v37, v35, v54);

    v41 = objc_msgSend_sharedInstance(IMPhotoLibraryPersistenceManager, v39, v40);
    v43 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v42, v38);
    v45 = objc_msgSend_cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary_shouldFetchAndNotifyAsNeeded_didStartFetch_(v41, v44, v43, 1, 0);

    v47 = a3;
    v46 = a4;
    v48 = a2;
  }

  else
  {
    v45 = 0;
    v46 = a4;
    v36 = v54;
    v48 = a2;
    v47 = a3;
    v34 = v50;
  }

  *v48 = v21;
  *v47 = v20;
  *v46 = v45;

  v49 = *MEMORY[0x1E69E9840];
}

void sub_1A8387E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8387F18(uint64_t result, void *a2, uint64_t a3)
{
  if (*(result + 48) == 1)
  {
    v3 = result;
    result = objc_msgSend_commSafetySensitive(a2, a2, a3);
    if (result == 1)
    {
      v4 = 8;
      if (*(*(*(v3 + 32) + 8) + 24))
      {
        v4 = 9;
      }

      *(*(*(v3 + 40) + 8) + 24) = v4;
      *(*(*(v3 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_1A8388220(void *a1, void *a2, uint64_t a3)
{
  v22 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v22;
    if ((objc_msgSend_isEditedMessageHistory(v6, v7, v8) & 1) == 0)
    {
      v11 = objc_msgSend_guid(v6, v9, v10);
      WeakRetained = objc_loadWeakRetained((a1[4] + 8));
      isShowingEditHistoryForChatItemGUID = objc_msgSend_isShowingEditHistoryForChatItemGUID_(WeakRetained, v13, v11);

      if (isShowingEditHistoryForChatItemGUID != objc_msgSend_isShowingEditHistory(v6, v15, v16))
      {
        objc_msgSend_addIndex_(*(*(a1[5] + 8) + 40), v17, a3);
        IsShowingEditHistory = objc_msgSend_copyWithIsShowingEditHistory_(v6, v18, isShowingEditHistoryForChatItemGUID);
        objc_msgSend_addObject_(*(*(a1[6] + 8) + 40), v20, IsShowingEditHistory);
      }
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A83884FC(void *a1, void *a2, uint64_t a3)
{
  v16 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = v16;
      WeakRetained = objc_loadWeakRetained((a1[4] + 8));
      isShowingTranslationText = objc_msgSend_isShowingTranslationText(WeakRetained, v7, v8);

      if (isShowingTranslationText != objc_msgSend_showTranslationAlternateText(v5, v10, v11))
      {
        objc_msgSend_addIndex_(*(*(a1[5] + 8) + 40), v12, a3);
        v14 = objc_msgSend_copyWithShowTranslationAlternateText_(v5, v13, isShowingTranslationText);
        objc_msgSend_addObject_(*(*(a1[6] + 8) + 40), v15, v14);
      }
    }
  }
}

void sub_1A838894C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A83889A8(uint64_t a1, void *a2, uint64_t a3)
{
  v55 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v55;
    isEditedMessagePart = objc_msgSend_isEditedMessagePart(v6, v7, v8);
    isReplyContextPreview = objc_msgSend_isReplyContextPreview(v6, v10, v11);
    isEditedMessageHistory = objc_msgSend_isEditedMessageHistory(v6, v13, v14);
    if (objc_msgSend_scheduleType(v6, v16, v17) == 2)
    {
      isFailedRetractMessagePart = objc_msgSend_isFailedRetractMessagePart(v6, v18, v19);
    }

    else
    {
      isFailedRetractMessagePart = 0;
    }

    if (!(isReplyContextPreview & 1 | (((isEditedMessagePart | isFailedRetractMessagePart) & 1) == 0) | isEditedMessageHistory & 1))
    {
      v21 = a3 + 1;
      if (a3 + 1 >= objc_msgSend_count(*(a1 + 32), v18, v19))
      {
LABEL_14:
        v31 = 0;
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        while (1)
        {
          v23 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v22, v21);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v24 = v23;
          v27 = objc_msgSend_statusType(v24, v25, v26);
          if (v27 <= 0x28 && ((1 << v27) & 0x1F3FFC00816) != 0)
          {
            v31 = v27;

            goto LABEL_15;
          }

          if (++v21 >= objc_msgSend_count(*(a1 + 32), v29, v30))
          {
            goto LABEL_14;
          }
        }

        v31 = 0;
        v21 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:
      }

      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        isDeliveredStatusType = objc_msgSend_isDeliveredStatusType_(*(a1 + 40), v22, v31);
        StatusType = objc_msgSend_isReadStatusType_(*(a1 + 40), v33, v31);
        v36 = StatusType;
        if ((isDeliveredStatusType & 1) != 0 || StatusType)
        {
          v37 = v21 + 1;
          if (v21 + 1 < objc_msgSend_count(*(a1 + 32), v22, v35))
          {
            do
            {
              v38 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v22, v37);
              isDeliveredStatusItem = objc_msgSend_isDeliveredStatusItem_(*(a1 + 40), v39, v38);
              StatusItem = objc_msgSend_isReadStatusItem_(*(a1 + 40), v41, v38);
              if (isDeliveredStatusType)
              {
                if ((isDeliveredStatusItem | StatusItem))
                {
                  v43 = 0;
                }

                else
                {
                  v43 = v31;
                }

                if ((((isDeliveredStatusItem | StatusItem) | v36 ^ 1) & 1) == 0)
                {
LABEL_27:
                  if (StatusItem)
                  {
                    v31 = 0;
                  }

                  goto LABEL_29;
                }

                v31 = v43;
              }

              else if (v36)
              {
                goto LABEL_27;
              }

LABEL_29:

              ++v37;
            }

            while (v37 < objc_msgSend_count(*(a1 + 32), v44, v45));
          }
        }
      }

      v48 = objc_msgSend__editedStatusItemForEditedMessagePartChatItem_combiningStatusType_(*(a1 + 40), v22, v6, v31);
      if (v48)
      {
        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v49 = *(*(*(a1 + 64) + 8) + 40);
          v50 = objc_msgSend_count(v49, v46, v47);
          objc_msgSend_addIndex_(v49, v51, a3 + v50 + 1);
          v53 = 72;
        }

        else
        {
          objc_msgSend_addIndex_(*(*(*(a1 + 48) + 8) + 40), v46, v21);
          v53 = 56;
        }

        objc_msgSend_addObject_(*(*(*(a1 + v53) + 8) + 40), v52, v48);
      }
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A83890AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A83890EC(uint64_t a1, void *a2, unint64_t a3)
{
  v35 = a2;
  if (objc_msgSend_count(*(a1 + 32), v5, v6) - 1 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v7, a3 + 1);
  }

  ItemIndexExcludingWatchReplyOptions = objc_msgSend__lastItemIndexExcludingWatchReplyOptions_(*(a1 + 40), v7, *(a1 + 32));
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ItemIndexExcludingWatchReplyOptions == a3)
  {
    v12 = objc_msgSend__item(v35, v10, v11);
    v15 = objc_msgSend_isFromMe(v12, v13, v14);

    if (v15)
    {
      *(*(*(a1 + 48) + 8) + 24) = a3;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_msgSend_itemIsReplyContextPreview(v35, v16, v17) & 1) == 0 && (objc_msgSend_isEditedMessageHistory(v35, v18, v19) & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v22 = objc_msgSend_layoutGroupIdentifier(v8, v20, v21);
        v25 = objc_msgSend_layoutGroupIdentifier(v35, v23, v24);
        v26 = v22 == v25;
      }

      else
      {
        v26 = 0;
      }

      v28 = objc_msgSend__effectControlForChatItem_(*(a1 + 40), v20, v35);
      if (v28 && !v26)
      {
        objc_msgSend_addObject_(*(*(*(a1 + 56) + 8) + 40), v27, v28);
        v29 = *(a1 + 56);
        v30 = *(*(*(a1 + 64) + 8) + 40);
        v33 = objc_msgSend_count(*(*(v29 + 8) + 40), v31, v32);
        objc_msgSend_addIndex_(v30, v34, v33 + a3);
      }
    }
  }
}

uint64_t sub_1A8389398(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v22;
    v9 = objc_msgSend__item(v6, v7, v8);
    v12 = objc_msgSend_guid(v9, v10, v11);
    v14 = objc_msgSend_countForObject_(*(a1 + 32), v13, v12);
    objc_msgSend_addObject_(*(a1 + 32), v15, v12);
    if (objc_msgSend_statusItemSequenceNumber(v6, v16, v17) != v14)
    {
      v19 = objc_msgSend_copyWithStatusItemSequenceNumber_(v6, v18, v14);
      objc_msgSend_replaceObjectAtIndex_withObject_(*(a1 + 40), v20, a3, v19);
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A83895B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83895D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

uint64_t sub_1A83898D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v8 = *(a1 + 32);

    return objc_msgSend_addIndex_(v8, v7, a3);
  }

  return result;
}

void sub_1A8389B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8389BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v8 = *(a1 + 32);

    return objc_msgSend_addIndex_(v8, v7, a3);
  }

  return result;
}

void sub_1A8389C10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 64);
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v10 = objc_msgSend_guid(v7, v8, v9);
    if (objc_msgSend_isShowingEditHistoryForChatItemGUID_(*(a1 + 32), v11, v10))
    {
      v14 = objc_msgSend_messageItem(v7, v12, v13);
      v17 = objc_msgSend_index(v7, v15, v16);
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v20 = objc_msgSend__historyToDisplayForMessageItem_partIndex_(WeakRetained, v19, v14, v17);

      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = sub_1A8389DD4;
      v37 = &unk_1E7813B38;
      v38 = v14;
      v41 = v17;
      v39 = *(a1 + 32);
      v40 = v21;
      v22 = v21;
      v23 = v14;
      objc_msgSend_enumerateObjectsUsingBlock_(v20, v24, &v34);
      v25 = *(a1 + 40);
      v27 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v26, a3, v34, v35, v36, v37);
      objc_msgSend_addObject_(v25, v28, v27);

      v29 = *(a1 + 48);
      v32 = objc_msgSend_copy(v22, v30, v31);
      objc_msgSend_addObject_(v29, v33, v32);
    }
  }
}

void sub_1A8389DD4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [IMEditedTextMessagePartHistoricalContentChatItem alloc];
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  isShowingTranslationText = objc_msgSend_isShowingTranslationText(*(a1 + 40), v9, v10);
  v14 = objc_msgSend__initWithMessageItem_messagePartIndex_historicalContent_editIndex_messagePartRange_subject_showTranslationAlternateText_(v6, v11, v8, v7, v5, a3, 0, 0, 0, isShowingTranslationText);

  objc_msgSend_addObject_(*(a1 + 48), v12, v14);
}

void sub_1A8389E88(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_unsignedIntegerValue(a2, a2, a3);
  v7 = objc_msgSend_objectAtIndex_(*(a1 + 32), v6, a3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A8389F48;
  v9[3] = &unk_1E7813B88;
  v10 = *(a1 + 40);
  v11 = v5;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v7, v8, 2, v9);
}

id sub_1A838A18C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = objc_msgSend_participantsWithState_(WeakRetained, v2, 16);
  v6 = objc_msgSend_firstObject(v3, v4, v5);

  v7 = [IMSatelliteAvailabilityChatItem alloc];
  v9 = objc_msgSend__initWithHandle_(v7, v8, v6);

  return v9;
}

void sub_1A838A64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A838A6C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = a3 + 1;
    if (v9 < objc_msgSend_count(*(a1 + 32), v7, v8))
    {
      v11 = objc_msgSend_objectAtIndex_(*(a1 + 32), v10, v9);
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();

      if (v12)
      {
        v19 = objc_msgSend_objectAtIndex_(*(a1 + 32), v13, v9);
        if (objc_msgSend_statusType(v19, v14, v15) == 37 || objc_msgSend_statusType(v19, v16, v17) == 38 || objc_msgSend_statusType(v19, v16, v18) == 40)
        {
          objc_msgSend_addIndex_(*(*(*(a1 + 40) + 8) + 40), v16, v9);
        }
      }
    }
  }
}

void sub_1A838A7EC(uint64_t a1, void *a2, uint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v53 = v6;
        v9 = objc_msgSend_balloonBundleID(v53, v7, v8);
        v10 = *MEMORY[0x1E69A6928];
        v11 = IMBalloonExtensionIDWithSuffix();
        isEqualToString = objc_msgSend_isEqualToString_(v9, v12, v11);

        if (isEqualToString)
        {
          v14 = objc_alloc_init(IMPollHelper);
          v16 = objc_msgSend_synchronousPollOptionCountFromChatItem_(v14, v15, v53);
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v55 = v16;
              _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Poll option count: %lu", buf, 0xCu);
            }
          }

          if (v16 >= 12)
          {
            if (IMOSLoggingEnabled())
            {
              v30 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Not showing add choice because we are at the maximum option count.", buf, 2u);
              }
            }
          }

          else
          {

            v21 = a3 + 1;
            if (a3 + 1 >= objc_msgSend_count(*(a1 + 32), v18, v19))
            {
LABEL_18:
              v26 = 0;
              v21 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              while (1)
              {
                v22 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v20, v21);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  break;
                }

                v23 = v22;
                v26 = objc_msgSend_statusType(v23, v24, v25);
                if (v26 <= 0x28 && ((1 << v26) & 0x1F3FFC00816) != 0)
                {

                  goto LABEL_25;
                }

                if (++v21 >= objc_msgSend_count(*(a1 + 32), v28, v29))
                {
                  goto LABEL_18;
                }
              }

              v26 = 0;
              v21 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_25:
            }

            if (v21 != 0x7FFFFFFFFFFFFFFFLL)
            {
              isDeliveredStatusType = objc_msgSend_isDeliveredStatusType_(*(a1 + 40), v20, v26);
              StatusType = objc_msgSend_isReadStatusType_(*(a1 + 40), v32, v26);
              if ((isDeliveredStatusType | StatusType))
              {
                v34 = v21 + 1;
                if (v21 + 1 < objc_msgSend_count(*(a1 + 32), v20, v33))
                {
                  do
                  {
                    v35 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v20, v34);
                    isDeliveredStatusItem = objc_msgSend_isDeliveredStatusItem_(*(a1 + 40), v36, v35);
                    StatusItem = objc_msgSend_isReadStatusItem_(*(a1 + 40), v38, v35);
                    if (isDeliveredStatusType)
                    {
                      if ((isDeliveredStatusItem | StatusItem))
                      {
                        v40 = 0;
                      }

                      else
                      {
                        v40 = v26;
                      }

                      if ((((isDeliveredStatusItem | StatusItem) | StatusType ^ 1) & 1) == 0)
                      {
LABEL_36:
                        if (StatusItem)
                        {
                          v26 = 0;
                        }

                        goto LABEL_38;
                      }

                      v26 = v40;
                    }

                    else if (StatusType)
                    {
                      goto LABEL_36;
                    }

LABEL_38:

                    ++v34;
                  }

                  while (v34 < objc_msgSend_count(*(a1 + 32), v41, v42));
                }
              }
            }

            v45 = objc_msgSend__addChoiceStatusItemForPollMessagePartChatItem_combiningStatusType_(*(a1 + 40), v20, v53, v26);
            if (v45)
            {
              if (v21 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v46 = *(*(*(a1 + 64) + 8) + 40);
                v47 = objc_msgSend_count(v46, v43, v44);
                objc_msgSend_addIndex_(v46, v48, a3 + v47 + 1);
                v50 = 72;
              }

              else
              {
                objc_msgSend_addIndex_(*(*(*(a1 + 48) + 8) + 40), v43, v21);
                v50 = 56;
              }

              objc_msgSend_addObject_(*(*(*(a1 + v50) + 8) + 40), v49, v45);
            }
          }
        }

        else
        {
        }
      }
    }
  }

  v51 = *MEMORY[0x1E69E9840];
}

id sub_1A838AE18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = objc_msgSend_participantsWithState_(WeakRetained, v2, 16);
  v6 = objc_msgSend_firstObject(v3, v4, v5);

  v7 = [IMSatelliteSuppressedNotificationChatItem alloc];
  v9 = objc_msgSend__initWithHandle_(v7, v8, v6);

  return v9;
}

uint64_t sub_1A838B02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v8 = *(a1 + 32);

    return objc_msgSend_addIndex_(v8, v7, a3);
  }

  return result;
}

void sub_1A838B538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A838B5D0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_type(v2, v3, v4) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend_isFromMe(v2, v5, v6) ^ 1;
  }

  return v7;
}

void sub_1A838B634(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_addIndex_(*(a1 + 32), v5, a3);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
    }
  }
}

void sub_1A838B990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A838B9AC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  v9 = v7;
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_1A838BA28(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  isRecipientAbleToDowngradeToSMS = objc_msgSend_isRecipientAbleToDowngradeToSMS(WeakRetained, v3, v4);

  v6 = objc_loadWeakRetained((a1[4] + 8));
  v8 = objc_msgSend_participantsWithState_(v6, v7, 16);
  v11 = objc_msgSend_firstObject(v8, v9, v10);

  v12 = [IMSMSFallbackStatusChatItem alloc];
  v15 = objc_msgSend__item(*(*(a1[6] + 8) + 40), v13, v14);
  canSMSReply = objc_msgSend__initWithItem_handle_previousServiceName_canSMSReply_(v12, v16, v15, v11, a1[5], isRecipientAbleToDowngradeToSMS);

  return canSMSReply;
}

void sub_1A838C0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A838C17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);

    return objc_msgSend_addIndex_(v8, v7, a3);
  }

  return result;
}

void sub_1A838C1E0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v39 = a2;
  v8 = objc_msgSend__item(v39, v6, v7);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v12 = v39;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = objc_msgSend__item(v39, v10, v11);
  if (!objc_msgSend_partCount(v13, v14, v15))
  {
    goto LABEL_10;
  }

  v17 = 0;
  while (1)
  {
    v18 = objc_msgSend_translationsForMessagePart_(v13, v16, v17);
    if (objc_msgSend_count(v18, v19, v20))
    {
      break;
    }

LABEL_7:

    if (++v17 >= objc_msgSend_partCount(v13, v34, v35))
    {
      goto LABEL_10;
    }
  }

  v23 = objc_msgSend_firstObject(v18, v21, v22);
  v24 = objc_alloc(MEMORY[0x1E69A8308]);
  v26 = objc_msgSend_initWithDictionaryRepresentation_(v24, v25, v23);
  v29 = objc_msgSend_sourceLanguage(v26, v27, v28);
  isEqualToString = objc_msgSend_isEqualToString_(v29, v30, *(a1 + 32));

  if ((isEqualToString & 1) == 0)
  {

    goto LABEL_7;
  }

  v36 = objc_msgSend__senderHandle(v13, v32, v33);
  v37 = *(*(a1 + 40) + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = v36;

  *a4 = 1;
LABEL_10:

  v12 = v39;
LABEL_11:
}

void sub_1A838C5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A838C618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);

    return objc_msgSend_addIndex_(v8, v7, a3);
  }

  return result;
}

void sub_1A838CAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A838CB1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 64);
  v14 = v5;
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = objc_msgSend_addIndex_(*(a1 + 32), v7, a3);
    goto LABEL_5;
  }

  v9 = *(a1 + 72);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_5;
  }

  v10 = a1 + 48;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v11 = *(a1 + 80);
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      isKindOfClass = objc_msgSend_statusType(v14, v12, v14);
      if (isKindOfClass <= 0x27)
      {
        if (((1 << isKindOfClass) & 0xD80007A) != 0)
        {
          v10 = a1 + 56;
        }

        else if (((1 << isKindOfClass) & 0x8380000004) == 0)
        {
          goto LABEL_5;
        }

        *(*(*v10 + 8) + 24) = 1;
      }
    }
  }

LABEL_5:

  return MEMORY[0x1EEE66BE0](isKindOfClass);
}

uint64_t sub_1A838CC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v8 = *(a1 + 32);

    return objc_msgSend_addIndex_(v8, v7, a3);
  }

  return result;
}

uint64_t sub_1A838CF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v8 = *(a1 + 32);

    return objc_msgSend_addIndex_(v8, v7, a3);
  }

  return result;
}

uint64_t sub_1A838D18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v8 = *(a1 + 32);

    return objc_msgSend_addIndex_(v8, v7, a3);
  }

  return result;
}

uint64_t sub_1A838D440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v8 = *(a1 + 32);

    return objc_msgSend_addIndex_(v8, v7, a3);
  }

  return result;
}

void sub_1A838D76C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = *(a1 + 32);

    objc_msgSend_addIndex_(v8, v7, a3);
  }
}

void sub_1A838DE8C(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  if (objc_msgSend_count(v5, v7, v8) - 1 <= a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v9, a3 + 1);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_addIndex_(*(*(*(a1 + 40) + 8) + 40), v11, a3);
    }
  }
}

void sub_1A838DF64(uint64_t a1, void *a2, unint64_t a3)
{
  v18 = a2;
  if (objc_msgSend_count(*(a1 + 32), v5, v6) - 1 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v7, a3 + 1);
  }

  v9 = objc_msgSend__attributionChatItemForChatItem_(*(a1 + 40), v7, v18);
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((objc_msgSend_isEqual_(v8, v10, v9) & 1) == 0)
      {
        objc_msgSend_replaceObjectAtIndex_withObject_(*(a1 + 32), v11, a3 + 1, v9);
      }
    }

    else
    {
      objc_msgSend_addObject_(*(*(*(a1 + 48) + 8) + 40), v10, v9);
      v12 = *(a1 + 48);
      v13 = *(*(*(a1 + 56) + 8) + 40);
      v16 = objc_msgSend_count(*(*(v12 + 8) + 40), v14, v15);
      objc_msgSend_addIndex_(v13, v17, v16 + a3);
    }
  }
}

uint64_t sub_1A838E07C(uint64_t a1, void *a2, unint64_t a3)
{
  v70 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v70;
    v69 = objc_msgSend_bundleID(v6, v7, v8);
    v11 = objc_msgSend__parentItem(v6, v9, v10);
    v14 = objc_msgSend_message(v11, v12, v13);
    v17 = objc_msgSend__imMessageItem(v14, v15, v16);
    CMMState = objc_msgSend_getCMMState(v17, v18, v19);

    v23 = objc_msgSend_attributionType(v6, v21, v22);
    v26 = objc_msgSend_attributionType(v6, v24, v25);
    isCommSafetySensitiveAttribution = objc_msgSend_isCommSafetySensitiveAttribution(v6, v27, v28);
    v34 = objc_msgSend_attributionType(v6, v30, v31);
    v37 = v23 == 6 || v26 == 7 || CMMState != 0;
    if (a3)
    {
      v68 = objc_msgSend_objectAtIndex_(*(a1 + 32), v32, a3 - 1);
    }

    else
    {
      v68 = 0;
    }

    v38 = v37 | isCommSafetySensitiveAttribution | (v34 == 10);
    if (objc_msgSend_count(*(a1 + 32), v32, v33) - 1 <= a3)
    {
      v40 = 0;
      if (v38)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v40 = objc_msgSend_objectAtIndex_(*(a1 + 32), v39, a3 + 1);
      if (v38)
      {
        goto LABEL_20;
      }
    }

    if ((objc_msgSend_containsObject_(*(*(*(a1 + 48) + 8) + 40), v39, v69) & 1) != 0 || (objc_msgSend_sharedInstance(IMBalloonPluginAttributionController, v39, v41), v42 = objc_claimAutoreleasedReturnValue(), shouldShowAttributionForBundleID = objc_msgSend_shouldShowAttributionForBundleID_(v42, v43, v69), v42, (shouldShowAttributionForBundleID & 1) == 0))
    {
      objc_msgSend_addIndex_(*(*(*(a1 + 56) + 8) + 40), v39, a3);
      v45 = v68;
      goto LABEL_50;
    }

LABEL_20:
    if (isCommSafetySensitiveAttribution)
    {
      v45 = v68;
      v46 = objc_msgSend__attributionChatItemForChatItem_(*(a1 + 40), v39, v68);
      if (!objc_msgSend_isCommSafetySensitiveAttribution(v46, v47, v48) || (v51 = objc_msgSend_attributionType(v46, v49, v50), v51 != objc_msgSend_attributionType(v6, v52, v53)))
      {
        objc_msgSend_addIndex_(*(*(*(a1 + 56) + 8) + 40), v49, a3);
      }
    }

    else
    {
      if (v23 != 6 && v26 != 7 && v34 != 10)
      {
        v45 = v68;
        if ((objc_msgSend_containsString_(v69, v39, *MEMORY[0x1E69A6A20]) & 1) == 0 && (objc_msgSend_containsString_(v69, v54, *MEMORY[0x1E69A6A08]) & 1) == 0 && v69)
        {
          objc_msgSend_addObject_(*(*(*(a1 + 48) + 8) + 40), v55, v69);
        }

        goto LABEL_50;
      }

      objc_opt_class();
      v45 = v68;
      if (objc_opt_isKindOfClass())
      {
        v56 = v68;
      }

      else
      {
        v56 = 0;
      }

      v46 = v56;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v57 = v40;
      }

      else
      {
        v57 = 0;
      }

      v58 = v57;
      if (objc_msgSend_requiresSiriAttribution(v46, v59, v60) && objc_msgSend_requiresSiriAttribution(v58, v61, v62) && (objc_msgSend_isContiguousWithChatItem_(v46, v61, v58) & 1) != 0 || objc_msgSend_requiresFaceTimeAttribution(v46, v61, v62) && objc_msgSend_requiresFaceTimeAttribution(v58, v61, v63) && (objc_msgSend_isContiguousWithChatItem_(v46, v61, v58) & 1) != 0 || objc_msgSend_requiresCriticalMessagingAPIAttribution(v46, v61, v63) && objc_msgSend_requiresFaceTimeAttribution(v58, v64, v65) && objc_msgSend_isContiguousWithChatItem_(v46, v66, v58))
      {
        objc_msgSend_addIndex_(*(*(*(a1 + 56) + 8) + 40), v61, a3);
      }
    }

LABEL_50:
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A838E414(uint64_t a1, void *a2, unint64_t a3)
{
  v11 = a2;
  if (a3)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, a3 - 1);
  }

  else
  {
    v7 = 0;
  }

  if (objc_msgSend_count(*(a1 + 32), v5, v6) - 1 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v8, a3 + 1);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      objc_msgSend_addIndex_(*(*(*(a1 + 40) + 8) + 40), v10, a3);
    }
  }
}

uint64_t sub_1A838E528(uint64_t a1, void *a2, uint64_t a3)
{
  v85 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v85;
    if (objc_msgSend_attributionType(v6, v7, v8) != 6)
    {
      if (objc_msgSend_attributionType(v6, v9, v10) == 10)
      {
        v12 = [IMMessageAttributionChatItem alloc];
        v15 = objc_msgSend__item(v6, v13, v14);
        v18 = objc_msgSend_attributionInfo(v6, v16, v17);
        v21 = objc_msgSend_attributionType(v6, v19, v20);
        v23 = objc_msgSend__initWithItem_attributionInfo_attributionType_showsLearnMoreLink_statusItemSequenceNumber_(v12, v22, v15, v18, v21, *(*(*(a1 + 40) + 8) + 24), 0);

        objc_msgSend_replaceObjectAtIndex_withObject_(*(a1 + 32), v24, a3, v23);
      }

      goto LABEL_22;
    }

    if (*(*(*(a1 + 40) + 8) + 24) != 1)
    {
LABEL_15:
      v45 = *(*(*(a1 + 40) + 8) + 24);
      if (v45 != objc_msgSend_showsLearnMoreLink(v6, v9, v10))
      {
        v46 = [IMMessageAttributionChatItem alloc];
        v49 = objc_msgSend__item(v6, v47, v48);
        v52 = objc_msgSend_attributionInfo(v6, v50, v51);
        v55 = objc_msgSend_attributionType(v6, v53, v54);
        v57 = objc_msgSend__initWithItem_attributionInfo_attributionType_showsLearnMoreLink_statusItemSequenceNumber_(v46, v56, v49, v52, v55, *(*(*(a1 + 40) + 8) + 24), 0);

        objc_msgSend_replaceObjectAtIndex_withObject_(*(a1 + 32), v58, a3, v57);
        v61 = objc_msgSend__item(v57, v59, v60);
        v64 = objc_msgSend_guid(v61, v62, v63);

        v67 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v65, v66);
        v69 = objc_msgSend_objectForKey_(v67, v68, @"SentWithSiriLearningLinkShownForMessageGUIDs");

        if ((objc_msgSend_containsObject_(v69, v70, v64) & 1) == 0)
        {
          v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v73 = v71;
          if (v69)
          {
            objc_msgSend_addObjectsFromArray_(v71, v72, v69);
          }

          objc_msgSend_addObject_(v73, v72, v64);
          v76 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v74, v75);
          v79 = objc_msgSend_copy(v73, v77, v78);
          objc_msgSend_setObject_forKey_(v76, v80, v79, @"SentWithSiriLearningLinkShownForMessageGUIDs");
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_22:

      goto LABEL_23;
    }

    v11 = v6;
    if (IMIsRunningInUnitTesting())
    {
LABEL_5:

      goto LABEL_15;
    }

    if (IMIsRunningInMobileSMS())
    {
      v27 = objc_msgSend__item(v11, v25, v26);
      v30 = objc_msgSend_guid(v27, v28, v29);

      v33 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v31, v32);
      v35 = objc_msgSend_objectForKey_(v33, v34, @"SentWithSiriLearningLinkShownForMessageGUIDs");

      v38 = objc_msgSend_lastObject(v35, v36, v37);
      isEqualToString = objc_msgSend_isEqualToString_(v38, v39, v30);

      if (isEqualToString)
      {

        goto LABEL_5;
      }

      if (objc_msgSend_count(v35, v41, v42) < 5)
      {
        v81 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v43, v44);
        v83 = objc_msgSend_integerForKey_(v81, v82, @"SentWithSiriLearningUIShownNumberOfTimes");

        if (v83 <= 1)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_15;
  }

LABEL_23:

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

uint64_t sub_1A838F810(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A838F8E0;
  v8[3] = &unk_1E7813C20;
  v8[4] = &v9;
  v8[5] = a3;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v4, v5, 2, v8);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1A838F8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A838F8E0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

id sub_1A838FD38(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_service(a1, a2, a3);
  v5 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v4, v3);

  return v5;
}

id sub_1A838FD94(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isFromMe(a1, a2, a3))
  {
    objc_msgSend__otherHandle(a1, v4, v5);
  }

  else
  {
    objc_msgSend__senderHandle(a1, v4, v5);
  }
  v6 = ;

  return v6;
}

id sub_1A838FDF0(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_wasDowngraded(a1, a2, a3))
  {
    v6 = objc_msgSend_originalServiceName(a1, v4, v5);
    v7 = v6;
    v8 = *MEMORY[0x1E69A7AF0];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v11 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v10, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1A838FE88(void *a1, const char *a2, uint64_t a3)
{
  if (qword_1EB2EA128 != -1)
  {
    sub_1A84E24AC();
  }

  if (byte_1EB2E4788 == 1)
  {
    return objc_msgSend_isEmote(a1, a2, a3) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A838FEEC(void *a1, uint64_t a2, void *a3)
{
  v137 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_serviceVariant(v4, v5, v6);
  v10 = objc_msgSend_areSendersUnknown(v4, v8, v9);
  v13 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v11, v12);
  if (!objc_msgSend_isInternalInstall(v13, v14, v15))
  {
LABEL_10:

    goto LABEL_11;
  }

  v16 = IMGetCachedDomainBoolForKey();

  if (!v16)
  {
    goto LABEL_11;
  }

  if (!objc_msgSend_isCorrupt(a1, v17, v18))
  {
    v22 = objc_msgSend_body(a1, v19, v20);
    v13 = objc_msgSend_string(v22, v23, v24);

    if (objc_msgSend_isEqualToString_(v13, v25, @"internal_poison_chatitem_hang"))
    {
      if (IMOSLoggingEnabled())
      {
        v131 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v131, OS_LOG_TYPE_INFO, "INTERNAL CHAT ITEM POISON PILL TEST DETECTED - Spinning", buf, 2u);
        }
      }

      while (1)
      {
        sleep(1u);
      }
    }

    if (objc_msgSend_isEqualToString_(v13, v26, @"internal_poison_chatitem_crash"))
    {
      if (IMOSLoggingEnabled())
      {
        v132 = OSLogHandleForIMFoundationCategory();
        sub_1A84E24C0(v132);
      }

      abort();
    }

    goto LABEL_10;
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "IMItem is corrupt already, not crashing", buf, 2u);
    }
  }

LABEL_11:
  v133 = 0;
  isExtensibleMessageWithPluginPayload_chatContext = objc_msgSend_isExtensibleMessageWithPluginPayload_chatContext_(a1, v17, &v133, v4);
  v28 = v133;
  if (objc_msgSend_isLocatingMessage(a1, v29, v30))
  {
    v33 = [IMLocatingChatItem alloc];
    v35 = objc_msgSend__initWithItem_(v33, v34, a1);
LABEL_13:
    v36 = v35;
    goto LABEL_14;
  }

  v39 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v31, v32);
  if (objc_msgSend_isGroupTypingIndicatorsEnabled(v39, v40, v41) && objc_msgSend_isGroupTypingMessage(a1, v42, v43))
  {

    if (isExtensibleMessageWithPluginPayload_chatContext)
    {
LABEL_18:
      v46 = [IMGroupTypingChatItem alloc];
      v35 = objc_msgSend__initWithItem_(v46, v47, a1);
      goto LABEL_13;
    }

    objc_msgSend_isTypingMessage(a1, v44, v45);
LABEL_29:
    v61 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v50, v51);
    if (objc_msgSend_isGroupTypingIndicatorsEnabled(v61, v62, v63) && objc_msgSend_isTypingMessage(a1, v64, v65))
    {
      isGroupTypingMessage = objc_msgSend_isGroupTypingMessage(a1, v66, v67);

      if (isGroupTypingMessage)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    if (objc_msgSend_isTypingMessage(a1, v69, v70) && (objc_msgSend_isGroupTypingMessage(a1, v71, v72) & 1) == 0)
    {
      v80 = [IMTypingChatItem alloc];
      v35 = objc_msgSend__initWithItem_(v80, v81, a1);
      goto LABEL_13;
    }

    if (qword_1EB2EA128 != -1)
    {
      sub_1A84E2520();
    }

    if (byte_1EB2E4788 == 1)
    {
      v73 = objc_msgSend_message(a1, v71, v72);
      isEmote = objc_msgSend_isEmote(v73, v74, v75);

      if (isEmote)
      {
        v77 = [IMEmoteMessageChatItem alloc];
        v35 = objc_msgSend__initWithItem_(v77, v78, a1);
        goto LABEL_13;
      }
    }

    if (!isExtensibleMessageWithPluginPayload_chatContext || (objc_msgSend_hasDataDetectorResults(a1, v71, v72) & 1) != 0)
    {
      v35 = objc_msgSend__newMessagePartsForMessageItem_chatContext_(IMMessagePartChatItem, v71, a1, v4);
      goto LABEL_13;
    }

    v82 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v71, v79);
    v85 = objc_msgSend_pluginSessionGUID(v28, v83, v84);
    v88 = objc_msgSend_pluginBundleID(v28, v86, v87);
    v90 = objc_msgSend_existingDataSourceForMessageGUID_bundleID_(v82, v89, v85, v88);

    v93 = objc_msgSend_guidOfLastMessageInSession(v90, v91, v92);
    v96 = objc_msgSend_guid(a1, v94, v95);
    if (objc_msgSend_isEqualToString_(v96, v97, v93))
    {
      isShowingLatestMessageAsBreadcrumb = objc_msgSend_isShowingLatestMessageAsBreadcrumb(v90, v98, v99);

      if (isShowingLatestMessageAsBreadcrumb)
      {
        v103 = [IMTranscriptPluginTemporaryBreadcrumbChatItem alloc];
        v106 = objc_msgSend_breadcrumbText(a1, v104, v105);
        v109 = objc_msgSend_string(v106, v107, v108);
        v36 = objc_msgSend__initWithItem_datasource_statusText_optionFlags_(v103, v110, a1, v90, v109, 0);

        goto LABEL_63;
      }
    }

    else
    {
    }

    v111 = objc_msgSend_pluginBundleID(v28, v101, v102);
    v112 = *MEMORY[0x1E69A6A08];
    v113 = IMBalloonExtensionIDWithSuffix();
    isEqualToString = objc_msgSend_isEqualToString_(v111, v114, v113);

    if (isEqualToString)
    {
      HasKnownParticipants = objc_msgSend__newMessagePartsForMessageItem_chatContext_photosPluginPayload_(IMMessagePartChatItem, v116, a1, v4, v28);
    }

    else
    {
      if (!v28 || (objc_msgSend_pluginBundleID(v28, v116, v117), v119 = objc_claimAutoreleasedReturnValue(), v121 = objc_msgSend_isEqualToString_(v119, v120, *MEMORY[0x1E69A6A18]), v119, (v121 & 1) != 0))
      {
        if (objc_msgSend_isDeviceActionMessage(a1, v116, v117))
        {
          v123 = objc_msgSend__singleChatItemForDeviceActionMessage_context_pluginPayload_(IMMessagePartChatItem, v122, a1, v4, v28);
          v134 = v123;
          v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v124, &v134, 1);
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v125 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
            {
              v128 = objc_msgSend_pluginBundleID(v28, v126, v127);
              *buf = 138412290;
              v136 = v128;
              _os_log_impl(&dword_1A823F000, v125, OS_LOG_TYPE_INFO, "Failed to find plugin data source for identifier '%@'", buf, 0xCu);
            }
          }

          v36 = 0;
        }

        goto LABEL_63;
      }

      v129 = [IMTranscriptPluginChatItem alloc];
      HasKnownParticipants = objc_msgSend__initWithItem_initialPayload_index_messagePartRange_parentChatHasKnownParticipants_(v129, v130, a1, v28, 0, 0, 0x7FFFFFFFFFFFFFFFLL, (v10 ^ 1) & 1u | (v7 == 1));
    }

    v36 = HasKnownParticipants;
LABEL_63:

    goto LABEL_14;
  }

  if ((objc_msgSend_isTypingMessage(a1, v48, v49) & isExtensibleMessageWithPluginPayload_chatContext) != 1)
  {
    goto LABEL_29;
  }

  v52 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v50, v51);
  v54 = objc_msgSend_dataSourceForPluginPayload_(v52, v53, v28);

  if (v54)
  {
    v55 = [IMTypingPluginChatItem alloc];
    v36 = objc_msgSend__initWithItem_dataSource_(v55, v56, a1, v54);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v57 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        v60 = objc_msgSend_pluginBundleID(v28, v58, v59);
        *buf = 138412290;
        v136 = v60;
        _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_INFO, "Failed to find plugin data source for identifier '%@'", buf, 0xCu);
      }
    }

    v36 = 0;
  }

LABEL_14:
  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

id sub_1A839069C(void *a1, const char *a2, uint64_t a3)
{
  if (!objc_msgSend_isPendingSatelliteSend(a1, a2, a3))
  {
    goto LABEL_15;
  }

  v6 = objc_msgSend__senderHandle(a1, v4, v5);
  v9 = objc_msgSend_service(v6, v7, v8);
  v12 = objc_msgSend_iMessageService(IMService, v10, v11);

  if (v9 == v12)
  {
    v18 = objc_msgSend_iMessageLiteService(IMService, v4, v5);
  }

  else
  {
LABEL_15:
    if (!objc_msgSend_wasDowngraded(a1, v4, v5))
    {
      goto LABEL_9;
    }

    v17 = objc_msgSend_originalServiceName(a1, v13, v14);
    if (v17)
    {
      v18 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v15, v17);
    }

    else
    {
      v19 = objc_msgSend_service(a1, v15, v16);
      v18 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v20, v19);
    }

    if (!v18)
    {
LABEL_9:
      v21 = objc_msgSend__senderHandle(a1, v13, v14);
      v18 = objc_msgSend_service(v21, v22, v23);
    }
  }

  return v18;
}

uint64_t sub_1A83907D8(void *a1, uint64_t a2, IMPluginPayload **a3, void *a4)
{
  v6 = a4;
  v9 = objc_msgSend_balloonBundleID(a1, v7, v8);
  if (objc_msgSend_length(v9, v10, v11))
  {
    v14 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v12, v13);
    v16 = objc_msgSend_balloonPluginForBundleID_(v14, v15, v9);

    if (v16)
    {
      v17 = objc_msgSend_retractedPartIndexes(a1, v12, v13);
      if (objc_msgSend_count(v17, v18, v19))
      {
        v22 = objc_msgSend_payloadData(a1, v20, v21);
        v25 = objc_msgSend_length(v22, v23, v24);

        if (!v25)
        {
          v26 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
      }

      v39 = [IMPluginPayload alloc];
      v41 = objc_msgSend_initWithMessageItem_chatContext_(v39, v40, a1, v6);
      *a3 = v41;

LABEL_12:
      v26 = 1;
      goto LABEL_13;
    }
  }

  if (objc_msgSend_hasDataDetectorResults(a1, v12, v13))
  {
    v29 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v27, v28);
    v30 = *MEMORY[0x1E69A6A18];
    v32 = objc_msgSend_balloonPluginForBundleID_(v29, v31, *MEMORY[0x1E69A6A18]);

    if (v32)
    {
      v16 = objc_alloc_init(IMPluginPayload);
      v35 = objc_msgSend_guid(a1, v33, v34);
      objc_msgSend_setMessageGUID_(v16, v36, v35);

      objc_msgSend_setPluginBundleID_(v16, v37, v30);
      v38 = v16;
      *a3 = v16;
      goto LABEL_12;
    }
  }

  v26 = 0;
LABEL_14:

  return v26;
}

uint64_t sub_1A839097C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [IMParticipantChangeChatItem alloc];
  v8 = objc_msgSend__senderHandle(a1, v6, v7);
  v11 = objc_msgSend__otherHandle(a1, v9, v10);
  v13 = objc_msgSend__initWithItem_sender_otherHandle_context_(v5, v12, a1, v8, v11, v4);

  return v13;
}

uint64_t sub_1A8390A14(void *a1)
{
  v2 = [IMParticipantChangeChatItem alloc];
  v5 = objc_msgSend__senderHandle(a1, v3, v4);
  v8 = objc_msgSend__otherHandle(a1, v6, v7);
  v10 = objc_msgSend__initWithItem_sender_otherHandle_(v2, v9, a1, v5, v8);

  return v10;
}

uint64_t sub_1A8390A90(void *a1)
{
  v2 = [IMGroupTitleChangeChatItem alloc];
  v5 = objc_msgSend__senderHandle(a1, v3, v4);
  v7 = objc_msgSend__initWithItem_sender_(v2, v6, a1, v5);

  return v7;
}

uint64_t sub_1A8390AF4(uint64_t a1)
{
  v2 = [IMTranscriptSharingChatItem alloc];

  return objc_msgSend__initWithItem_(v2, v3, a1);
}

uint64_t sub_1A8390B34(void *a1)
{
  v2 = [IMLocationUpdateSentChatItem alloc];
  v5 = objc_msgSend_sender(a1, v3, v4);
  v7 = objc_msgSend__initWithItem_chatIdentifier_(v2, v6, a1, v5);

  return v7;
}

uint64_t sub_1A8390B98(void *a1)
{
  v2 = [IMGroupActionChatItem alloc];
  v5 = objc_msgSend__senderHandle(a1, v3, v4);
  v7 = objc_msgSend__initWithItem_sender_(v2, v6, a1, v5);

  return v7;
}

uint64_t sub_1A8390C84(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__otherHandle(a1, a2, a3);
  v7 = objc_msgSend__senderHandle(a1, v5, v6);
  if (objc_msgSend__hasMessageChatItem(a1, v8, v9) && (objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v10, v11), v12 = objc_claimAutoreleasedReturnValue(), isWaldoEnabled = objc_msgSend_isWaldoEnabled(v12, v13, v14), v12, (isWaldoEnabled & 1) == 0))
  {
    v19 = [IMLocationShareOfferChatItem alloc];
    if (v4)
    {
      v18 = objc_msgSend__initWithItem_sender_(v19, v20, a1, v4);
    }

    else
    {
      v18 = objc_msgSend__initWithItem_sender_(v19, v20, a1, v7);
    }
  }

  else
  {
    v16 = [IMLocationShareActionChatItem alloc];
    v18 = objc_msgSend__initWithItem_sender_otherHandle_(v16, v17, a1, v7, v4);
  }

  v21 = v18;

  return v21;
}

uint64_t sub_1A8390D4C(void *a1)
{
  v2 = [IMTUConversationChatItem alloc];
  v5 = objc_msgSend__senderHandle(a1, v3, v4);
  v7 = objc_msgSend__initWithItem_conversationInitiator_(v2, v6, a1, v5);

  return v7;
}

uint64_t sub_1A8390DB8(void *a1)
{
  v2 = [IMMessageActionChatItem alloc];
  v5 = objc_msgSend__senderHandle(a1, v3, v4);
  v8 = objc_msgSend__otherHandle(a1, v6, v7);
  v10 = objc_msgSend__initWithItem_sender_otherHandle_(v2, v9, a1, v5, v8);

  return v10;
}

uint64_t sub_1A8390E3C(void *a1, uint64_t a2, void *a3)
{
  v140 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_serviceVariant(v4, v5, v6);
  v10 = objc_msgSend_areSendersUnknown(v4, v8, v9);
  v13 = objc_msgSend_associatedMessageType(a1, v11, v12);
  if (v13 > 999)
  {
    switch(v13)
    {
      case 1000:
        v60 = objc_msgSend_fileTransferGUIDs(a1, v14, v15);
        v23 = objc_msgSend_firstObject(v60, v61, v62);

        v65 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v63, v64);
        isClingEnabled = objc_msgSend_isClingEnabled(v65, v66, v67);

        if (isClingEnabled && objc_msgSend_isEmojiSticker(a1, v69, v70) && (objc_msgSend_emojiSticker(a1, v71, v72), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v73 = [IMEmojiStickerChatItem alloc];
          v76 = objc_msgSend__senderHandle(a1, v74, v75);
          v34 = objc_msgSend__initWithItem_sender_transferGUID_emojiSticker_(v73, v77, a1, v76, v23, v26);
        }

        else
        {
          v117 = [IMAssociatedStickerChatItem alloc];
          v26 = objc_msgSend__senderHandle(a1, v118, v119);
          v34 = objc_msgSend__initWithItem_sender_transferGUID_(v117, v120, a1, v26, v23);
        }

        goto LABEL_23;
      case 4000:
        v78 = [IMCustomAcknowledgementChatItem alloc];
        v23 = objc_msgSend__senderHandle(a1, v79, v80);
        v34 = objc_msgSend__initWithItem_sender_(v78, v81, a1, v23);
        goto LABEL_24;
      case 1001:
        v16 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v14, v15);
        v19 = objc_msgSend_isClingEnabled(v16, v17, v18);

        if (v19)
        {
          v20 = [IMEmojiStickerChatItem alloc];
          v23 = objc_msgSend__senderHandle(a1, v21, v22);
          v26 = objc_msgSend_fileTransferGUIDs(a1, v24, v25);
          v29 = objc_msgSend_firstObject(v26, v27, v28);
          v32 = objc_msgSend_emojiSticker(a1, v30, v31);
          v34 = objc_msgSend__initWithItem_sender_transferGUID_emojiSticker_(v20, v33, a1, v23, v29, v32);

LABEL_23:
          goto LABEL_24;
        }

LABEL_25:
        v34 = 0;
        goto LABEL_42;
    }

LABEL_19:
    if ((v13 & 0xFFFFFFFFFFFFFFF8) != 0xBB8 && (v13 & 0xFFFFFFFFFFFFFFF8) != 0x7D0)
    {
      goto LABEL_25;
    }

    v110 = [IMMessageAcknowledgmentChatItem alloc];
    v23 = objc_msgSend__senderHandle(a1, v111, v112);
    v115 = objc_msgSend_tapback(a1, v113, v114);
    v34 = objc_msgSend__initWithItem_sender_tapback_(v110, v116, a1, v23, v115);

LABEL_24:
    goto LABEL_42;
  }

  if (v13 == 2)
  {
    v82 = [IMPluginPayload alloc];
    v84 = objc_msgSend_initWithMessageItem_(v82, v83, a1);
    v87 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v85, v86);
    v89 = objc_msgSend_dataSourceForPluginPayload_(v87, v88, v84);

    v92 = objc_msgSend_guidOfLastMessageInSession(v89, v90, v91);
    v95 = objc_msgSend_guid(a1, v93, v94);
    if (objc_msgSend_isEqualToString_(v95, v96, v92))
    {
      isShowingLatestMessageAsBreadcrumb = objc_msgSend_isShowingLatestMessageAsBreadcrumb(v89, v97, v98);

      if (isShowingLatestMessageAsBreadcrumb)
      {
        v102 = [IMTranscriptPluginBreadcrumbChatItem alloc];
        v105 = objc_msgSend_breadcrumbText(a1, v103, v104);
        v108 = objc_msgSend_string(v105, v106, v107);
        v34 = objc_msgSend__initWithItem_datasource_statusText_optionFlags_(v102, v109, a1, v89, v108, 0);

LABEL_41:
        goto LABEL_42;
      }
    }

    else
    {
    }

    if (v89)
    {
      v121 = v10 ^ 1;
      v122 = objc_msgSend_messageID(a1, v100, v101);
      if (v122 > objc_msgSend_messageIDOfLastMessageInSession(v89, v123, v124))
      {
        objc_msgSend_endShowingLastConsumedBreadcrumb(v89, v125, v126);
      }

      v127 = [IMTranscriptPluginChatItem alloc];
      if (v7 == 1)
      {
        HasKnownParticipants = objc_msgSend__initWithItem_initialPayload_index_messagePartRange_parentChatHasKnownParticipants_(v127, v128, a1, v84, 0, 0, 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      else
      {
        HasKnownParticipants = objc_msgSend__initWithItem_initialPayload_index_messagePartRange_parentChatHasKnownParticipants_(v127, v128, a1, v84, 0, 0, 0x7FFFFFFFFFFFFFFFLL, v121);
      }

      v34 = HasKnownParticipants;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v130 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
        {
          v133 = objc_msgSend_pluginBundleID(v84, v131, v132);
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v133;
          _os_log_impl(&dword_1A823F000, v130, OS_LOG_TYPE_INFO, "Failed to find plugin data source for identifier '%@'", &buf, 0xCu);
        }
      }

      v34 = 0;
    }

    goto LABEL_41;
  }

  if (v13 != 3)
  {
    goto LABEL_19;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v138 = 0x2020000000;
  v139 = 0;
  v35 = objc_msgSend_body(a1, v14, v15);
  v38 = objc_msgSend_body(a1, v36, v37);
  v41 = objc_msgSend_length(v38, v39, v40);
  v42 = *MEMORY[0x1E69A5F30];
  v136[0] = MEMORY[0x1E69E9820];
  v136[1] = 3221225472;
  v136[2] = sub_1A83914AC;
  v136[3] = &unk_1E7813780;
  v136[4] = &buf;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v35, v43, v42, 0, v41, 0, v136);

  if ((*(*(&buf + 1) + 24) & 4) != 0)
  {
    v34 = 0;
  }

  else
  {
    v44 = [IMPluginPayload alloc];
    v46 = objc_msgSend_initWithMessageItem_(v44, v45, a1);
    v49 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v47, v48);
    v51 = objc_msgSend_dataSourceForPluginPayload_(v49, v50, v46);

    v52 = [IMTranscriptPluginBreadcrumbChatItem alloc];
    v55 = objc_msgSend_body(a1, v53, v54);
    v58 = objc_msgSend_string(v55, v56, v57);
    v34 = objc_msgSend__initWithItem_datasource_statusText_optionFlags_(v52, v59, a1, v51, v58, *(*(&buf + 1) + 24));
  }

  _Block_object_dispose(&buf, 8);
LABEL_42:

  v134 = *MEMORY[0x1E69E9840];
  return v34;
}

void sub_1A8391464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8391410);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A83914AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_intValue(v9, v7, v8);
    *a5 = 1;
  }
}

void sub_1A8391B9C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = objc_msgSend_guid(a2, a2, a3);
  LODWORD(v7) = objc_msgSend_isEqualToString_(v7, v9, v8);

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

uint64_t sub_1A8391C14()
{
  result = IMShouldShowEmotes();
  byte_1EB2E4788 = result;
  return result;
}

uint64_t sub_1A8391C34(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if (objc_msgSend_wasInterworked(v2, v3, v4))
    {
      v7 = objc_msgSend_originalServiceName(v2, v5, v6);
      if (objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x1E69A7AD8]))
      {
        v11 = objc_msgSend_service(v2, v9, v10);
        isEqualToString = objc_msgSend_isEqualToString_(v11, v12, *MEMORY[0x1E69A7AE0]);
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_1A8391D08(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if (objc_msgSend_isDelivered(v2, v3, v4) & 1) != 0 || (objc_msgSend_wasDowngraded(v2, v5, v6))
    {
      isEqualToString = 0;
    }

    else
    {
      v10 = objc_msgSend_service(v2, v7, v8);
      isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x1E69A7AD8]);
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_1A8391DB0()
{
  result = IMBagDoubleValueWithDefault();
  qword_1EB2E56B0 = v1;
  return result;
}

uint64_t sub_1A8391DE4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_type(v2, v3, v4))
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() ^ 1;
  }

  return v5 & 1;
}

void sub_1A8391E3C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v9 = objc_msgSend__item(v6, v7, v8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v13 = objc_msgSend_time(v10, v11, v12);
    if (objc_msgSend_compare_(v13, v14, *(*(*(a1 + 32) + 8) + 40)) == -1)
    {
      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = *(*(*(a1 + 32) + 8) + 40);
          v43 = 138412546;
          v44 = v13;
          v45 = 2112;
          v46 = v34;
          _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "Message time %@ is outside urgent grace period start window %@", &v43, 0x16u);
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
      goto LABEL_28;
    }

    if (objc_msgSend_isFromMe(v10, v15, v16) && objc_msgSend_didNotifyRecipient(v10, v17, v18))
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LOWORD(v43) = 0;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Found a recent message that broke through recipients dnd within the grace period window. Grace period is active.", &v43, 2u);
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
      goto LABEL_28;
    }

    if (objc_msgSend_isFromMe(v10, v17, v18))
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v28 = objc_msgSend_guid(v10, v26, v27);
          v43 = 138412802;
          v44 = v28;
          v45 = 2048;
          v46 = objc_msgSend_isFromMe(v10, v29, v30);
          v47 = 2048;
          v48 = objc_msgSend_didNotifyRecipient(v10, v31, v32);
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Message %@ did not impact grace period. isFromMe: %ld, didNotify: %ld", &v43, 0x20u);
        }

LABEL_27:
      }
    }

    else
    {
      v35 = objc_msgSend_dateByAddingTimeInterval_(v13, v23, v24, -*(a1 + 48));
      v36 = *(*(a1 + 32) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = v35;

      objc_msgSend_timeIntervalSinceNow(*(*(*(a1 + 32) + 8) + 40), v38, v39);
      v41 = v40;
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v43 = 134217984;
          v44 = (v41 / 60.0);
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Found a received message in the chat within the grace period window, extending grace period to %ld minutes.", &v43, 0xCu);
        }

        goto LABEL_27;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v43 = 138412290;
      v44 = v22;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Item is not a message. Item class: %@", &v43, 0xCu);
    }
  }

LABEL_29:

  v42 = *MEMORY[0x1E69E9840];
}

BOOL sub_1A8392270(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = !objc_msgSend_type(v2, v3, v4) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || objc_msgSend_type(v2, v5, v6) == 6;

  return v7;
}

uint64_t sub_1A83922D8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_type(v2, v3, v4))
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1A8392330(void *a1)
{
  v1 = a1;
  if (IMShouldHandleInternalPhishingAttempts())
  {
    isReportJunkServiceAllowedForMessageItem_junkChatStyle = 1;
  }

  else
  {
    v5 = MEMORY[0x1E69A7F70];
    v6 = objc_msgSend_lastFinishedMessageItem(v1, v2, v3);
    v9 = objc_msgSend_chatStyle(v1, v7, v8);
    isReportJunkServiceAllowedForMessageItem_junkChatStyle = objc_msgSend_isReportJunkServiceAllowedForMessageItem_junkChatStyle_(v5, v10, v6, v9);
  }

  return isReportJunkServiceAllowedForMessageItem_junkChatStyle;
}

void sub_1A83923AC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  if (objc_msgSend_type(v13, v6, v7))
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_message(v13, v8, v9);
    if (objc_msgSend_hasSurfRequestNotFromMe_(*(a1 + 32), v11, v10))
    {
      objc_msgSend_setHasSurfRequest_(*(a1 + 32), v12, 1);
      *a4 = 1;
    }
  }
}

uint64_t sub_1A8392444(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_type(v2, v3, v4))
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1A839249C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(*result + 40);
  v5 = *(*a2 + 40);
  return result;
}

void sub_1A83924B4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t IMItemCompareSortIDs(void *a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!IMSharedHelperPinUnsentMessagesToBottom())
  {
    goto LABEL_15;
  }

  if (!objc_msgSend_messageID(v3, v5, v6) || !objc_msgSend_messageID(v4, v7, v8))
  {
LABEL_12:
    v18 = sub_1A8254B84(v3, v4);
LABEL_23:
    v11 = v18;
    goto LABEL_25;
  }

  if ((sub_1A8254760(v3, v4) & 1) == 0)
  {
    if ((objc_msgSend_unsentIsFromMeItem(v3, v9, v10) & 1) != 0 || objc_msgSend_unsentIsFromMeItem(v4, v12, v13))
    {
      if (objc_msgSend_unsentIsFromMeItem(v3, v12, v13) && !objc_msgSend_unsentIsFromMeItem(v4, v14, v15))
      {
        v11 = 1;
        goto LABEL_25;
      }

      if (objc_msgSend_unsentIsFromMeItem(v4, v14, v15) && !objc_msgSend_unsentIsFromMeItem(v3, v16, v17))
      {
        v11 = -1;
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (!objc_msgSend_sortID(v3, v12, v13) || !objc_msgSend_sortID(v4, v19, v20))
    {
      v18 = Testing_IMItemOrderMessageByDate_0(v3, v4);
      goto LABEL_23;
    }

LABEL_15:
    v21 = objc_msgSend_sortID(v3, v5, v6);
    if (v21 != objc_msgSend_sortID(v4, v22, v23))
    {
      v29 = objc_msgSend_sortID(v3, v24, v25) - 1;
      v32 = objc_msgSend_sortID(v4, v30, v31);
      v11 = (__PAIR128__(v29 > v32 - 1, v29) - (v32 - 1)) >> 64;
      goto LABEL_25;
    }

    if ((sub_1A8254760(v3, v4) & 1) == 0 && objc_msgSend_sortID(v3, v26, v27) && IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v35 = 138412546;
        v36 = v3;
        v37 = 2112;
        v38 = v4;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "We have items with the same sortID that have different guids item1 %@ item2 %@", &v35, 0x16u);
      }
    }

    v18 = sub_1A8254B84(v3, v4);
    goto LABEL_23;
  }

  v11 = 0;
LABEL_25:

  v33 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t _IMItemsControllerInsertionIndexForItem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = objc_msgSend_indexOfObject_inSortedRange_options_usingComparator_(v3, v8, v4, 0, v7, 1536, &unk_1F1B6F280);

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1A8392784(uint64_t a1, void *a2, void *a3)
{
  v3 = sub_1A8254134(a2, a3, 0, 0);
  if (v3 == -1)
  {
    return -1;
  }

  else
  {
    return v3 == 1;
  }
}

uint64_t _IMItemsControllerIndexOfExistingItem(void *a1, void *a2, char a3)
{
  v5 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = a1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A83928CC;
  v11[3] = &unk_1E7813D10;
  v14 = a3;
  v7 = v5;
  v12 = v7;
  v13 = &v15;
  objc_msgSend_enumerateObjectsUsingBlock_(v6, v8, v11);
  if (v16[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = -1;
  }

  else
  {
    v9 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  return v9;
}

void sub_1A83928B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83928CC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = v7;
  if (*(a1 + 48) != 1)
  {
    if (!sub_1A82547D8(v8, v7))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (sub_1A8254760(v8, v7))
  {
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

LABEL_6:
}

void _IMItemsControllerHandleItem(void *a1, void *a2, void *a3, char a4, int a5, int a6, char a7)
{
  v65 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a3;
  v15 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v13, v14);
  isGroupTypingIndicatorsEnabled = objc_msgSend_isGroupTypingIndicatorsEnabled(v15, v16, v17);

  if (isGroupTypingIndicatorsEnabled)
  {
    v21 = a5 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v22 = objc_msgSend_typingTrackingController(v11, v19, v20);
    objc_msgSend_updateWithIncomingItem_(v22, v23, v12);
  }

  if (objc_msgSend_isMessageAcknowledgment(v12, v19, v20))
  {
    v24 = v11;
    v25 = v12;
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v25;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Insert associated item %@", &buf, 0xCu);
      }
    }

    v29 = objc_msgSend_guid(v25, v26, v27);
    v32 = objc_msgSend_associatedMessageGUID(v25, v30, v31);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v59 = sub_1A8393A68;
    v60 = &unk_1E7813D80;
    v61 = v32;
    v62 = v25;
    v63 = v29;
    v64 = a2;
    v33 = v32;
    v34 = v25;
    v35 = v29;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(a2, v36, 2, &buf);
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_associatedMessageType(v12, v37, v38) == 4000)
  {
    v39 = v11;
    v40 = v12;
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v40;
        _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "Insert associated item %@", &buf, 0xCu);
      }
    }

    v44 = objc_msgSend_guid(v40, v41, v42);
    v47 = objc_msgSend_associatedMessageGUID(v40, v45, v46);
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v59 = sub_1A8393C38;
    v60 = &unk_1E7813D80;
    v61 = v47;
    v62 = v40;
    v63 = v44;
    v64 = a2;
    v48 = v47;
    v49 = v40;
    v50 = v44;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(a2, v51, 2, &buf);
  }

  v52 = _IMItemsControllerIndexOfExistingItem(a2, v12, a4);
  if (sub_1A8392DC4(a2, v52, v12, a7))
  {
    if (v52 == -1 || !a6)
    {
      if (v52 == -1)
      {
        v52 = _IMItemsControllerInsertionIndexForItem(a2, v12);
        v53 = 0;
      }

      else
      {
        v53 = CFArrayGetValueAtIndex(a2, v52);
        CFArrayRemoveValueAtIndex(a2, v52);
        v52 = _IMItemsControllerInsertionIndexForItem(a2, v12);
      }
    }

    else
    {
      v53 = CFArrayGetValueAtIndex(a2, v52);
      CFArrayRemoveValueAtIndex(a2, v52);
    }

    CFArrayInsertValueAtIndex(a2, v52, v12);
    objc_msgSend__didReplaceItem_oldItem_idx_(v11, v54, a2, v53, v52);
  }

  v55 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A8392DC4(const __CFArray *a1, CFIndex a2, void *a3, char a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a2 == -1 || (v8 = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    if (CFArrayGetCount(a1) < 1)
    {
      v12 = 0;
    }

    else
    {
      v9 = CFArrayGetValueAtIndex(a1, 0);
      v12 = v9;
      if (v9 && objc_msgSend_messageID(v9, v10, v11) && (objc_msgSend_unsentIsFromMeItem(v12, v13, v14) & 1) == 0 && IMItemCompareSortIDs(v7, v12) < 0 && (a4 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v55 = 138412546;
            v56 = v12;
            v57 = 2112;
            v58 = v7;
            _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "We are not insert an item we want to firstItem: %@ item: %@", &v55, 0x16u);
          }
        }

        v8 = 0;
        goto LABEL_36;
      }
    }

    v8 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_44;
  }

  v16 = v7;
  if ((!objc_msgSend_isTypingOrCancelTypingMessage(v16, v17, v18) || (objc_msgSend_isFromMe(v16, v19, v20) & 1) == 0) && (objc_msgSend_isSystemMessage(v16, v19, v20) & 1) == 0 && (objc_msgSend_isSuggestedActionResponse(v16, v21, v22) & 1) == 0 && !objc_msgSend_isRCSEncryptionTest(v16, v23, v24))
  {
    v40 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v25, v26);
    if (objc_msgSend_isGroupTypingIndicatorsEnabled(v40, v41, v42))
    {
      isGroupTypingMessage = objc_msgSend_isGroupTypingMessage(v8, v43, v44);
    }

    else
    {
      isGroupTypingMessage = 0;
    }

    if (objc_msgSend_isTypingOrCancelTypingMessage(v16, v46, v47))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && !(isGroupTypingMessage & 1 | ((objc_msgSend_isFinished(v8, v48, v49) & 1) == 0)))
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_35;
        }

        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v54 = objc_msgSend_guid(v16, v52, v53);
          v55 = 138412290;
          v56 = v54;
          _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Rejecting a late typing indicator with GUID: %@", &v55, 0xCu);
        }

        goto LABEL_34;
      }
    }

LABEL_44:
    v39 = 1;
    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      if (objc_msgSend_isTypingOrCancelTypingMessage(v16, v28, v29))
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      v33 = objc_msgSend_isFromMe(v16, v30, v31);
      isSystemMessage = objc_msgSend_isSystemMessage(v16, v34, v35);
      if (v33)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v55 = 138412802;
      if (isSystemMessage)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      v56 = v32;
      v57 = 2112;
      v58 = v37;
      v59 = 2112;
      v60 = v38;
      _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "We are not insert an item we want to isTypingOrCancelTypingMessage %@ isFromMed %@ isSystemMessage %@", &v55, 0x20u);
    }

LABEL_34:
  }

LABEL_35:

LABEL_36:
  v39 = 0;
LABEL_45:

  v50 = *MEMORY[0x1E69E9840];
  return v39;
}

void sub_1A8393154(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A839301CLL);
  }

  _Unwind_Resume(a1);
}

double _IMTypingMessageTimeout()
{
  v0 = IMGetCachedDomainIntForKey();
  result = v0;
  if (!v0)
  {
    return 90.0;
  }

  return result;
}

void sub_1A839343C(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend_isCancelTypingMessage(*(a1 + 32), a2, a3) & 1) != 0 || objc_msgSend_expireState(*(a1 + 32), v4, v5) == 2)
  {
    goto LABEL_3;
  }

  if (!objc_msgSend_isIncomingTypingMessage(*(a1 + 32), v6, v7))
  {
    goto LABEL_13;
  }

  v12 = objc_msgSend_date(MEMORY[0x1E695DF00], v10, v11);
  objc_msgSend_timeIntervalSinceReferenceDate(v12, v13, v14);
  v16 = v15;
  v19 = objc_msgSend_time(*(a1 + 32), v17, v18);
  objc_msgSend_timeIntervalSinceReferenceDate(v19, v20, v21);
  v23 = v16 - v22;
  v24 = IMGetCachedDomainIntForKey();
  v25 = v24 ? v24 : 90.0;

  if (v23 >= v25)
  {
LABEL_3:
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);

    CFArrayRemoveValueAtIndex(v8, v9);
  }

  else
  {
LABEL_13:
    if (!*(a1 + 40) && (objc_msgSend_isFromMe(*(a1 + 32), v10, v11) & 1) == 0 && (objc_msgSend_isTypingOrCancelTypingMessage(*(a1 + 32), v26, v27) & 1) == 0)
    {
      v28 = _IMItemsControllerGetTypingMessage(*(a1 + 48));
      if (v28)
      {
        v29 = *(a1 + 48);
        value = v28;
        v33.length = CFArrayGetCount(v29);
        v33.location = 0;
        LastIndexOfValue = CFArrayGetLastIndexOfValue(v29, v33, value);
        CFArrayRemoveValueAtIndex(*(a1 + 48), LastIndexOfValue);
        v28 = value;
      }
    }
  }
}

uint64_t sub_1A83935F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a3 & 0x1000800001) == 1)
  {
    return (a4 ^ 1) & (a3 >> 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A839361C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a3 & 0x1000800001) == 1)
  {
    return (a4 ^ 1) & (a3 >> 3);
  }

  else
  {
    return (a3 & 0x1000800000) == 0;
  }
}

uint64_t sub_1A839364C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a3 & 0x1000800005) == 1)
  {
    return (a4 ^ 1) & (a3 >> 3);
  }

  else
  {
    return (a3 & 0x1000800004) == 0;
  }
}

uint64_t sub_1A839367C(void *a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E69A8138];
  v4 = objc_msgSend_flags(a1, a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel_isIncomingTypingMessage_, v4);
}

uint64_t sub_1A83936BC(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69A8138];
  v5 = objc_msgSend_flags(a1, a2, a3);
  objc_msgSend_hasEditedParts(a1, v6, v7);

  return MEMORY[0x1EEE66B58](v4, sel_isCancelTypingMessage_isEditedMessage_, v5);
}

uint64_t sub_1A8393718(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69A8138];
  v5 = objc_msgSend_flags(a1, a2, a3);
  objc_msgSend_hasEditedParts(a1, v6, v7);

  return MEMORY[0x1EEE66B58](v4, sel_isTypingOrCancelTypingMessage_isEditedMessage_, v5);
}

id sub_1A8393774(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_associatedMessageType(a1, a2, a3) == 3 || objc_msgSend_associatedMessageType(a1, v4, v5) == 2)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = &off_1F1BE6BC0;
  return objc_msgSendSuper2(&v7, sel_isIncomingTypingMessage);
}

id sub_1A83937DC(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_associatedMessageType(a1, a2, a3) == 3 || objc_msgSend_associatedMessageType(a1, v4, v5) == 2)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = &off_1F1BE6BC0;
  return objc_msgSendSuper2(&v7, sel_isCancelTypingMessage);
}

id sub_1A8393844(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_associatedMessageType(a1, a2, a3) == 3 || objc_msgSend_associatedMessageType(a1, v4, v5) == 2)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = &off_1F1BE6BC0;
  return objc_msgSendSuper2(&v7, sel_isTypingOrCancelTypingMessage);
}

id sub_1A83938AC(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_associatedMessageType(a1, a2, a3) == 3 || objc_msgSend_associatedMessageType(a1, v4, v5) == 2)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = &off_1F1BE6BC0;
  return objc_msgSendSuper2(&v7, sel_isIncomingTypingOrCancelTypingMessage);
}

void sub_1A8393A68(uint64_t a1, void *a2, CFIndex a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  isMessageAcknowledgment = objc_msgSend_isMessageAcknowledgment(v5, v6, v7);
  v11 = objc_msgSend_associatedMessageGUID(v5, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v12, *(a1 + 32));

  if (objc_msgSend_isFromMe(*(a1 + 40), v14, v15) && (objc_msgSend_isFromMe(v5, v16, v17) & 1) != 0)
  {
    v18 = 1;
  }

  else
  {
    v19 = objc_msgSend_sender(*(a1 + 40), v16, v17);
    v22 = objc_msgSend_sender(v5, v20, v21);
    v18 = objc_msgSend_isEqualToString_(v19, v23, v22);
  }

  if ((isMessageAcknowledgment & isEqualToString) == 1 && v18)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v31 = 134217984;
        v32 = a3;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "_IMItemsControllerInsertMessageAcknowledgment removed stray ack item at idx %lu", &v31, 0xCu);
      }
    }

    CFArrayRemoveValueAtIndex(*(a1 + 56), a3);
  }

  else if (objc_msgSend_isTypingOrCancelTypingMessage(v5, v16, v17))
  {
    v27 = objc_msgSend_guid(v5, v25, v26);
    v29 = objc_msgSend_isEqualToString_(v27, v28, *(a1 + 48));

    if (v29)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 56), a3);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1A8393C38(uint64_t a1, void *a2, CFIndex a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8 = (objc_opt_respondsToSelector() & 1) == 0 || objc_msgSend_associatedMessageType(v5, v6, v7) != 4000;
  v9 = objc_msgSend_associatedMessageGUID(v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *(a1 + 32));

  if (objc_msgSend_isFromMe(*(a1 + 40), v12, v13) && (objc_msgSend_isFromMe(v5, v14, v15) & 1) != 0)
  {
    v16 = 0;
  }

  else
  {
    v17 = objc_msgSend_sender(*(a1 + 40), v14, v15);
    v20 = objc_msgSend_sender(v5, v18, v19);
    v22 = objc_msgSend_isEqualToString_(v17, v21, v20);

    v16 = v22 ^ 1;
  }

  if (v8 || (isEqualToString & 1) == 0 || (v16 & 1) != 0)
  {
    if (objc_msgSend_isTypingOrCancelTypingMessage(v5, v14, v15))
    {
      v26 = objc_msgSend_guid(v5, v24, v25);
      v28 = objc_msgSend_isEqualToString_(v26, v27, *(a1 + 48));

      if (v28)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 56), a3);
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
        v30 = 134217984;
        v31 = a3;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "_IMItemsControllerCleanupForCustomAcknowledgmentItem removed stray custom acknowledgement item at idx %lu", &v30, 0xCu);
      }
    }

    CFArrayRemoveValueAtIndex(*(a1 + 56), a3);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1A8393F54()
{
  v0 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v7 = objc_msgSend_aa_primaryAppleAccount(v0, v1, v2);

  v5 = objc_msgSend_aa_personID(v7, v3, v4);
  v6 = qword_1EB2EA420;
  qword_1EB2EA420 = v5;
}

void sub_1A8394380(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v15 = objc_opt_new();
  v6 = objc_opt_new();
  v9 = objc_msgSend_source(v15, v7, v8);
  objc_msgSend_sendEvent_(v9, v10, v5);

  v13 = objc_msgSend_source(v6, v11, v12);
  objc_msgSend_sendEvent_(v13, v14, v4);
}

id sub_1A8394BB0()
{
  if (qword_1EB2EA440 != -1)
  {
    sub_1A84E255C();
  }

  v1 = qword_1EB2EA438;

  return v1;
}

uint64_t sub_1A8394C38()
{
  v0 = objc_alloc_init(IMCoreAccountsMonitor);
  qword_1EB2EA430 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8394D98(uint64_t a1, const char *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 16))
  {
    v4 = sub_1A8394BB0();
    v7 = objc_msgSend_aa_primaryAppleAccount(v4, v5, v6);
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = v7;

    v10 = *(*(a1 + 32) + 16);
    v11 = IMLogHandleForCategory();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = *(*(a1 + 32) + 16);
        v23 = 138412290;
        v24 = v13;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Cache primary apple account: %@", &v23, 0xCu);
      }
    }

    else
    {
      if (v12)
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "No primary apple account", &v23, 2u);
      }

      v16 = objc_msgSend_null(MEMORY[0x1E695DFB0], v14, v15);
      v17 = *(a1 + 32);
      v11 = *(v17 + 16);
      *(v17 + 16) = v16;
    }
  }

  v18 = *(*(a1 + 32) + 16);
  v19 = objc_msgSend_null(MEMORY[0x1E695DFB0], a2, a3);
  if (objc_msgSend_isEqual_(v18, v20, v19))
  {
    v21 = 0;
  }

  else
  {
    v21 = *(*(a1 + 32) + 16);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v21);

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1A8394FFC(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_DEFAULT, "ACDAccountStoreDidChangeNotification - Clearing cached primary apple account", v5, 2u);
    }

    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }
}

uint64_t sub_1A83950D4()
{
  v0 = objc_alloc_init(MEMORY[0x1E6959A48]);
  qword_1EB2EA438 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A8395250()
{
  v0 = os_log_create("com.apple.Messages", "IMRuntimeTest");
  qword_1ED767768 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8395378(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = objc_msgSend_sharedController(IMDaemonController, a2, a3);
  v6 = objc_msgSend_listener(v11, v4, v5);
  v9 = objc_msgSend_syncStats(*(a1 + 32), v7, v8);
  objc_msgSend_didFetchSyncStateStats_(v6, v10, v9);
}

void sub_1A83955AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_sharedController(IMDaemonController, a2, a3);
  v6 = objc_msgSend_listener(v8, v4, v5);
  objc_msgSend_didAttemptToSetEnabledTo_result_(v6, v7, *(a1 + 32), 1);
}

void sub_1A8395B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8395B48(uint64_t a1, const char *a2, uint64_t a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_cachedRecipientName(*(a1 + 32), a2, a3);
  v5 = (a1 + 40);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v6, *(a1 + 40));

  if (isEqualToString)
  {
    v10 = objc_msgSend_cachedRecipientDigest(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_copy(v10, v11, v12);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = a1 + 48;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v17 = objc_msgSend_deviceSalt(*(a1 + 32), v8, v9);

    if (v17)
    {
      v20 = *(a1 + 40);
      v21 = objc_msgSend_deviceSalt(*(a1 + 32), v18, v19);
      if (v21)
      {
        memset(&c, 0, sizeof(c));
        CC_SHA1_Init(&c);
        CStringPtr = CFStringGetCStringPtr(v20, 0x8000100u);
        if (CStringPtr)
        {
          v23 = CStringPtr;
          v24 = strlen(CStringPtr);
          CC_SHA1_Update(&c, v23, v24);
        }

        else
        {
          Length = CFStringGetLength(v20);
          if (Length >= 1)
          {
            v35 = Length;
            v36 = 0;
            do
            {
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              *buffer = 0u;
              v52 = 0u;
              usedBufLen = 0;
              v84.location = v36;
              v84.length = v35;
              Bytes = CFStringGetBytes(v20, v84, 0x8000100u, 0, 0, buffer, 512, &usedBufLen);
              CC_SHA1_Update(&c, buffer, usedBufLen);
              v36 += Bytes;
              v38 = v35 <= Bytes;
              v35 -= Bytes;
            }

            while (!v38);
          }
        }

        BytePtr = CFDataGetBytePtr(v21);
        v40 = CFDataGetLength(v21);
        CC_SHA1_Update(&c, BytePtr, v40);
        memset(buffer, 0, sizeof(buffer));
        LODWORD(v52) = 0;
        CC_SHA1_Final(buffer, &c);
        Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 40);
        for (i = 0; i != 20; ++i)
        {
          CFStringAppendFormat(Mutable, 0, @"%x", buffer[i]);
        }
      }

      else
      {
        Mutable = 0;
      }

      v42 = *(*v16 + 8);
      v43 = *(v42 + 40);
      *(v42 + 40) = Mutable;

      v45 = *v5;
      if (!*v5 || !*(*(*v16 + 8) + 40))
      {
        v46 = IMLogHandleForCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E2680(a1 + 48, (a1 + 40), v46);
        }

        v45 = *v5;
      }

      objc_msgSend_setCachedRecipientName_(*(a1 + 32), v44, v45);
      objc_msgSend_setCachedRecipientDigest_(*(a1 + 32), v47, *(*(*(a1 + 48) + 8) + 40));
    }

    else
    {
      v25 = IMLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2718(v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

void sub_1A8396204(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = a1 + 40;
  v2 = *(a1 + 40);
  v3 = *(v4 + 8);
  v5 = IMSingleObjectArray();
  (*(v3 + 16))(v3, v1, v5);
}

uint64_t IMRegisterForPreferredAccountChangeNotifications()
{
  if (qword_1EB2EA108 != -1)
  {
    sub_1A84E2750();
  }

  return 1;
}

void sub_1A839721C()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A823F000, v0, OS_LOG_TYPE_INFO, "Registering for preferred account changes", v10, 2u);
    }
  }

  IMRegisterForPreferredAccountChangeNotificationsInternal();
  v3 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v1, v2);
  v4 = *MEMORY[0x1E69A6028];
  v7 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v5, v6);
  v9 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v3, v8, v4, 0, v7, &unk_1F1B6F3C0);
}

void sub_1A8397318(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  objc_msgSend___mainThreadPostNotificationName_object_(v4, v3, @"__kIMPreferredAccountForServiceChangedNotification", 0);
}

id IMOperationalAccountForService(void *a1)
{
  v1 = IMPreferredAccountForService(a1);
  if (objc_msgSend__isUsableForSending(v1, v2, v3))
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id IMPreferredAccountForService(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = a1;
  IMRegisterForPreferredAccountChangeNotificationsInternal();
  v2 = IMPreferredAccountMap();
  v5 = objc_msgSend_internalName(v1, v3, v4);
  v7 = objc_msgSend_objectForKey_(v2, v6, v5);

  if (!objc_msgSend_count(v7, v8, v9))
  {
LABEL_5:
    v23 = objc_msgSend_sharedInstance(IMAccountController, v10, v11);
    v25 = objc_msgSend__bestOperationalAccountForSendingForService_(v23, v24, v1);

    if (v25)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v31 = objc_msgSend_uniqueID(v25, v29, v30);
          v40 = 138412546;
          v41 = v1;
          v42 = 2112;
          v43 = v31;
          _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, " Returning default best operational sending account for service: %@    account: %@", &v40, 0x16u);
        }

LABEL_13:
      }
    }

    else
    {
      v32 = objc_msgSend_sharedInstance(IMAccountController, v26, v27);
      v25 = objc_msgSend_bestAccountForService_(v32, v33, v1);

      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v36 = objc_msgSend_uniqueID(v25, v34, v35);
          v40 = 138412546;
          v41 = v1;
          v42 = 2112;
          v43 = v36;
          _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, " Returning default best account for service: %@    account: %@", &v40, 0x16u);
        }

        goto LABEL_13;
      }
    }

    v12 = v25;
    v17 = v12;
    goto LABEL_15;
  }

  v12 = objc_msgSend_objectForKey_(v7, v10, @"guid");
  v15 = objc_msgSend_sharedInstance(IMAccountController, v13, v14);
  v17 = objc_msgSend_accountForUniqueID_(v15, v16, v12);

  if (!objc_msgSend__isUsableForSending(v17, v18, v19) || (objc_msgSend_service(v17, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), v22, v22 != v1))
  {

    goto LABEL_5;
  }

  if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = 138412546;
      v41 = v1;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_INFO, " Returning preferred sendable account for service: %@    account: %@", &v40, 0x16u);
    }
  }

LABEL_15:

  v37 = *MEMORY[0x1E69E9840];

  return v17;
}