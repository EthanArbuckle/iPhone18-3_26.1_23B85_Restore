uint64_t sub_24351CEEC()
{
  qword_27ED78300 = objc_alloc_init(CLSNotificationBannerDisplayManager);

  return MEMORY[0x2821F96F8]();
}

void sub_24351CFEC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_lastBannerTime(*(a1 + 32), a2, a3);
  if (!v4 || (v7 = v4, objc_msgSend_lastBannerTime(*(a1 + 32), v5, v6), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_timeIntervalSinceNow(v8, v9, v10), v12 = v11, v8, v7, v12 < -30.0))
  {
    v13 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
    objc_msgSend_setLastBannerTime_(*(a1 + 32), v14, v13);

    v15 = *(a1 + 40);
    v16 = *(a1 + 48);

    MEMORY[0x2821F9670](CLSNotificationBanner, sel_showBannerWithTitle_message_completionHandler_, v15);
  }
}

id sub_24351D11C(void *a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_connectedScenes(a1, a2, a3);
  objc_msgSend_objectsPassingTest_(v3, v4, &unk_28563EED8);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v28 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v25, v29, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_keyWindow(*(*(&v25 + 1) + 8 * i), v8, v9, v25);
        if (v13)
        {
          v22 = v13;
          v17 = v5;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v25, v29, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = objc_alloc(MEMORY[0x277D75DA0]);
  v17 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v15, v16);
  objc_msgSend_bounds(v17, v18, v19);
  v22 = objc_msgSend_initWithFrame_(v14, v20, v21);
LABEL_11:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t sub_24351D290(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_activationState(v2, v3, v4))
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t sub_24351D67C()
{
  qword_27ED78320 = dispatch_queue_create("com.apple.ClassKit.banner", 0);

  return MEMORY[0x2821F96F8]();
}

void sub_24351D7C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_bannerSemaphore(qword_27ED78318, a2, a3);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24351D878;
  block[3] = &unk_278DBEF40;
  v6 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_24351D984()
{
  v14[3] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277D74240]);
  objc_msgSend_setLineBreakMode_(v0, v1, 4);
  v3 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], v2, *MEMORY[0x277D76988]);
  v4 = *MEMORY[0x277D740A8];
  v14[0] = v3;
  v5 = *MEMORY[0x277D740C0];
  v13[0] = v4;
  v13[1] = v5;
  v8 = objc_msgSend_labelColor(MEMORY[0x277D75348], v6, v7);
  v13[2] = *MEMORY[0x277D74118];
  v14[1] = v8;
  v14[2] = v0;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v14, v13, 3);
  v11 = qword_27ED78330;
  qword_27ED78330 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

void sub_24351DAE8()
{
  v14[3] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277D74240]);
  objc_msgSend_setLineBreakMode_(v0, v1, 4);
  v3 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], v2, *MEMORY[0x277D76938]);
  v4 = *MEMORY[0x277D740A8];
  v14[0] = v3;
  v5 = *MEMORY[0x277D740C0];
  v13[0] = v4;
  v13[1] = v5;
  v8 = objc_msgSend_labelColor(MEMORY[0x277D75348], v6, v7);
  v13[2] = *MEMORY[0x277D74118];
  v14[1] = v8;
  v14[2] = v0;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v14, v13, 3);
  v11 = qword_27ED78340;
  qword_27ED78340 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24351DC4C()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();
  qword_27ED78350 = objc_msgSend_bundleForClass_(v0, v2, v1);

  return MEMORY[0x2821F96F8]();
}

void sub_24351EFAC(uint64_t a1, const char *a2)
{
  objc_msgSend_setBannerAnimating_(*(a1 + 32), a2, 0);
  objc_msgSend_duration(*(a1 + 40), v3, v4);
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24351F05C;
  block[3] = &unk_278DBEF40;
  block[4] = *(a1 + 32);
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

uint64_t sub_24351F05C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_bannerVisible(*(a1 + 32), a2, a3);
  if (result)
  {
    v6 = *(a1 + 32);

    return objc_msgSend_hideBannerQuickly_(v6, v5, 0);
  }

  return result;
}

void sub_24351F0AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_bannerView(*(a1 + 32), a2, a3);
  objc_msgSend_setAlpha_(v5, v3, v4, 1.0);
}

void sub_24351F2C4(uint64_t a1, const char *a2)
{
  objc_msgSend_setBannerAnimating_(*(a1 + 32), a2, 0);
  objc_msgSend_callCompletionHandler(*(a1 + 40), v3, v4);
  objc_msgSend_removeFromSuperview(*(a1 + 40), v5, v6);
  objc_msgSend_setBannerView_(*(a1 + 32), v7, 0);
  v8 = dispatch_time(0, 500000000);
  v9 = MEMORY[0x277D85CD0];

  dispatch_after(v8, v9, &unk_28563EF78);
}

void sub_24351F33C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_bannerSemaphore(qword_27ED78318, a2, a3);
  dispatch_semaphore_signal(v3);

  if (atomic_fetch_add_explicit(&dword_27ED78314, 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    objc_sync_enter(@"CLSNotificationBannerSyncObject");
    v4 = qword_27ED78318;
    qword_27ED78318 = 0;

    objc_sync_exit(@"CLSNotificationBannerSyncObject");
  }
}

void sub_24351F3C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  objc_msgSend_bounds(*(a1 + 40), a2, a3);
  objc_msgSend__hiddenBannerPosition_(v4, v5, v6, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_bannerYPositionConstraint(*(a1 + 32), v11, v12);
  objc_msgSend_setConstant_(v13, v14, v15, v10);

  v20 = objc_msgSend_view(*(a1 + 32), v16, v17);
  objc_msgSend_layoutIfNeeded(v20, v18, v19);
}

void sub_24351F66C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_bannerWidthConstraint(*(a1 + 32), a2, a3);

  if (v4)
  {
    objc_msgSend_bannerWidthForViewSize_(*(a1 + 32), v5, v6, *(a1 + 40), *(a1 + 48));
    v8 = v7;
    v11 = objc_msgSend_bannerWidthConstraint(*(a1 + 32), v9, v10);
    objc_msgSend_setConstant_(v11, v12, v13, v8);
  }

  v14 = objc_msgSend_bannerYPositionConstraint(*(a1 + 32), v5, v6);
  objc_msgSend_constant(v14, v15, v16);
  v18 = v17;

  v19 = *(a1 + 32);
  v22 = objc_msgSend_bannerView(v19, v20, v21);
  objc_msgSend_bounds(v22, v23, v24);
  objc_msgSend__hiddenBannerPosition_(v19, v25, v26, v27, v28);
  v30 = v29;

  if (v18 != v30)
  {
    v33 = *(a1 + 32);
    v34 = objc_msgSend_bannerView(v33, v31, v32);
    objc_msgSend_bounds(v34, v35, v36);
    objc_msgSend__visibleBannerCenterPosition_(v33, v37, v38, v39, v40);
    v42 = v41;
    v45 = objc_msgSend_bannerYPositionConstraint(*(a1 + 32), v43, v44);
    objc_msgSend_setConstant_(v45, v46, v47, v42);
  }

  v50 = objc_msgSend_view(*(a1 + 32), v31, v32);
  objc_msgSend_layoutIfNeeded(v50, v48, v49);
}

void sub_24351FEC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_currentDevice(MEMORY[0x277D75418], a2, a3);
  byte_27ED78310 = objc_msgSend_userInterfaceIdiom(v5, v3, v4) == 1;
}

uint64_t sub_243520188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a4);
  }

  return result;
}

void sub_2435203D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2435203F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_msgSend_previousKeyWindow(WeakRetained, v3, v4);

    if (v5)
    {
      v8 = objc_msgSend_previousKeyWindow(WeakRetained, v6, v7);
      objc_msgSend_makeKeyAndVisible(v8, v9, v10);

      objc_msgSend_setPreviousKeyWindow_(WeakRetained, v11, 0);
    }

    v12 = objc_msgSend_window(WeakRetained, v6, v7);
    objc_msgSend_setRootViewController_(v12, v13, 0);

    v16 = objc_msgSend_window(WeakRetained, v14, v15);
    objc_msgSend_removeFromSuperview(v16, v17, v18);

    objc_msgSend_setWindow_(WeakRetained, v19, 0);
  }
}

void sub_243520568(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], a2, a3);
  v7 = sub_24351D11C(v4, v5, v6);
  objc_msgSend_setPreviousKeyWindow_(*(a1 + 32), v8, v7);

  v9 = objc_alloc(MEMORY[0x277D75DA0]);
  v12 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v10, v11);
  objc_msgSend_bounds(v12, v13, v14);
  v29 = objc_msgSend_initWithFrame_(v9, v15, v16);

  objc_msgSend_setWindow_(*(a1 + 32), v17, v29);
  v18 = objc_opt_new();
  objc_msgSend_setRootViewController_(v29, v19, v18);

  objc_msgSend_setWindowLevel_(v29, v20, v21, *MEMORY[0x277D772B8] + -1.0);
  objc_msgSend_makeKeyAndVisible(v29, v22, v23);
  objc_msgSend_setModalPresentationStyle_(*(a1 + 32), v24, 0);
  v27 = objc_msgSend_rootViewController(v29, v25, v26);
  objc_msgSend_presentViewController_animated_completion_(v27, v28, *(a1 + 32), 1, *(a1 + 40));
}