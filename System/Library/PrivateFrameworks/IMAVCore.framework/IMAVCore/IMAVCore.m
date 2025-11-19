void sub_254744534()
{
  v0 = objc_alloc_init(IMAVHandler);
  v1 = qword_28134A448;
  qword_28134A448 = v0;

  v14 = objc_msgSend_sharedController(MEMORY[0x277D18D68], v2, v3, v4, v5);
  v10 = objc_msgSend_listener(v14, v6, v7, v8, v9);
  objc_msgSend_addHandler_(v10, v11, qword_28134A448, v12, v13);
}

void sub_254747D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_254747DC4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend__timings(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_stopTimingForKey_(v7, v8, @"incoming-network-check", v9, v10);

  v11 = sub_254761764();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    IMTimeOfDay();
    v13 = v12 - *(a1 + 56);
    *buf = 134217984;
    v78 = v13;
    _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Network check complete (Took %f seconds)", buf, 0xCu);
  }

  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v22 = objc_msgSend_state(*(a1 + 32), v18, v19, v20, v21);
    v23 = sub_254761764();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22 > 4)
    {
      if (v24)
      {
        v63 = *(a1 + 32);
        *buf = 138412290;
        v78 = v63;
        _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "*** not notifying for chat, already ended: %@", buf, 0xCu);
      }

      if (WeakRetained)
      {
        objc_msgSend_removeObject_(*(*(a1 + 40) + 16), v64, WeakRetained, v65, v66);
      }

      objc_msgSend_removeObject_(*(*(a1 + 40) + 8), v64, *(a1 + 32), v65, v66);
    }

    else
    {
      if (v24)
      {
        v25 = *(a1 + 32);
        *buf = 138412290;
        v78 = v25;
        _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "Notifying for chat: %@", buf, 0xCu);
      }

      objc_msgSend__notifyOfIncomingInvitationFor_notifyInvitationListeners_(*(a1 + 40), v26, *(a1 + 32), 1, v27);
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v28 = *(*(a1 + 40) + 8);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v72, v81, 16);
      if (v30)
      {
        v31 = v30;
        v32 = *v73;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v73 != v32)
            {
              objc_enumerationMutation(v28);
            }

            v34 = *(*(&v72 + 1) + 8 * i);
            v35 = sub_254761764();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = *(a1 + 32);
              *buf = 138412546;
              v78 = *&v34;
              v79 = 2112;
              v80 = v36;
              _os_log_impl(&dword_254743000, v35, OS_LOG_TYPE_DEFAULT, "Comparing thisChat %@ and chat %@", buf, 0x16u);
            }

            if (*(a1 + 32) != v34)
            {
              v38 = sub_254761764();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v78 = *&v34;
                _os_log_impl(&dword_254743000, v38, OS_LOG_TYPE_DEFAULT, "Declining other chat: %@", buf, 0xCu);
              }

              objc_msgSend_declineInvitationWithResponse_(v34, v39, 2, v40, v41);
            }
          }

          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v37, &v72, v81, 16);
        }

        while (v31);
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v42 = *(*(a1 + 40) + 16);
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v68, v76, 16);
      if (v44)
      {
        v49 = v44;
        v50 = *v69;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v69 != v50)
            {
              objc_enumerationMutation(v42);
            }

            v52 = *(*(&v68 + 1) + 8 * j);
            if (v52 != WeakRetained)
            {
              objc_msgSend_cancel(v52, v45, v46, v47, v48);
            }
          }

          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v68, v76, 16);
        }

        while (v49);
      }

      v53 = sub_254761764();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v53, OS_LOG_TYPE_DEFAULT, "Flushing queue", buf, 2u);
      }

      objc_msgSend_removeAllObjects(*(*(a1 + 40) + 16), v54, v55, v56, v57);
      objc_msgSend_removeAllObjects(*(*(a1 + 40) + 8), v58, v59, v60, v61);
    }
  }

  else
  {
    v62 = *(a1 + 32);
    if ((*(a1 + 64) & 2) != 0)
    {
      objc_msgSend_declineInvitationWithResponse_(v62, v14, 4, v15, v16);
    }

    else
    {
      objc_msgSend_declineInvitationWithResponse_(v62, v14, 5, v15, v16);
    }
  }

  v67 = *MEMORY[0x277D85DE8];
}

void sub_25475182C(uint64_t a1, void *a2)
{
  v17 = a2;
  v7 = objc_msgSend_remoteICEData(v17, v3, v4, v5, v6);
  if (v7)
  {
    v12 = v7;
    v13 = objc_msgSend_localICEData(v17, v8, v9, v10, v11);

    if (!v13)
    {
      objc_msgSend_addObject_(*(a1 + 32), v14, v17, v15, v16);
    }
  }
}

void sub_254751960(uint64_t a1, void *a2)
{
  v16 = a2;
  v7 = objc_msgSend_remoteICEData(v16, v3, v4, v5, v6);
  if (v7)
  {
  }

  else
  {
    v12 = objc_msgSend_localICEData(v16, v8, v9, v10, v11);

    if (v12)
    {
      objc_msgSend_addObject_(*(a1 + 32), v13, v16, v14, v15);
    }
  }
}

void sub_254752C98(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v22 = 138412290;
    v23 = v3;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "_hangupCallLaterIfReinitiateFailsForCallInfo is firing for call info %@", &v22, 0xCu);
  }

  if (objc_msgSend_state(*(a1 + 32), v4, v5, v6, v7) <= 2)
  {
    v8 = sub_254761764();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_msgSend_avChat(*(a1 + 40), v9, v10, v11, v12);
      v22 = 138412290;
      v23 = v13;
      _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Reinitiate call info still has not connected. Ending chat: %@", &v22, 0xCu);
    }

    v18 = objc_msgSend_avChat(*(a1 + 40), v14, v15, v16, v17);
    objc_msgSend__endChatWithReason_andError_(v18, v19, 7, 32001, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_254753F44()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_28134A3D0;
  qword_28134A3D0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2547543EC()
{
  v0 = objc_alloc_init(IMAVController);
  v1 = qword_28134A3D8;
  qword_28134A3D8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25475456C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_ensureHandlerSetup(IMAVHandler, a2, a3, a4, a5);
  v9 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v5, v6, v7, v8);
  objc_msgSend_setUsesPowerNotifications_(v9, v10, 1, v11, v12);

  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v13, v14, v15, v16);
  objc_msgSend_setWatchesScreenLightState_(v17, v18, 1, v19, v20);

  v21 = IMGetMainBundleIdentifier();
  isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v21, v22, @"com.apple.TelephonyUtilities", v23, v24);

  v26 = IMGetMainBundleIdentifier();
  v30 = objc_msgSend_isEqualToIgnoringCase_(v26, v27, @"com.apple.TelephonyUtilities", v28, v29);

  v35 = *MEMORY[0x277D19340];
  if (!isEqualToIgnoringCase)
  {
    v35 = 0;
  }

  v36 = v35 | *MEMORY[0x277D19330];
  if (v30)
  {
    v37 = *MEMORY[0x277D19348];
  }

  else
  {
    v37 = 0;
  }

  v40 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v31, v32, v33, v34);
  objc_msgSend_addListenerID_capabilities_(v40, v38, @"@com.apple.imavcore.imavcontroller", v36 | v37, v39);
}

void sub_254755EA8()
{
  v0 = MEMORY[0x259C189A0]("AVSystemController_UplinkMuteAttribute", @"Celestial");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_27F610668, v1);
}

void sub_2547568A8(void *a1, _DWORD *a2, int *a3, _BYTE *a4)
{
  v7 = a1;
  v90 = 0;
  v12 = objc_msgSend_domain(v7, v8, v9, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, off_27F610458, v14, v15);

  if (isEqualToString)
  {
    v21 = objc_msgSend_code(v7, v17, v18, v19, v20);
    sub_254756DB4(v21, &v90 + 4, &v90, v22, v23);
    if (HIDWORD(v90))
    {
      goto LABEL_77;
    }
  }

  v24 = objc_msgSend_domain(v7, v17, v18, v19, v20);
  v25 = *MEMORY[0x277D18F40];
  v29 = objc_msgSend_isEqualToString_(v24, v26, *MEMORY[0x277D18F40], v27, v28);

  if (!v29)
  {
    goto LABEL_27;
  }

  v34 = objc_msgSend_userInfo(v7, v30, v31, v32, v33);
  if (objc_msgSend_count(v34, v35, v36, v37, v38))
  {
    v42 = objc_msgSend_objectForKey_(v34, v39, @"internalCode", v40, v41);
    v47 = objc_msgSend_integerValue(v42, v43, v44, v45, v46);
    v48 = 0;
    if (v47 <= 5057)
    {
      v49 = 0;
      switch(v47)
      {
        case 5000:
        case 5006:
        case 5011:
        case 5012:
        case 5029:
        case 5032:
        case 5033:
          v48 = 24;
          goto LABEL_24;
        case 5001:
          v49 = 32000;
          v48 = 15;
          break;
        case 5002:
        case 5003:
        case 5004:
        case 5007:
        case 5008:
        case 5009:
        case 5013:
        case 5015:
        case 5016:
        case 5017:
        case 5031:
          v48 = 15;
          goto LABEL_24;
        case 5005:
        case 5030:
          v48 = 23;
          goto LABEL_24;
        case 5010:
        case 5014:
        case 5018:
        case 5019:
        case 5020:
        case 5021:
        case 5022:
        case 5023:
        case 5024:
        case 5025:
        case 5026:
        case 5027:
        case 5028:
          goto LABEL_25;
        default:
          v49 = 0;
          if (v47 == 5057)
          {
            v49 = 6900;
            v48 = 26;
          }

          break;
      }

      goto LABEL_25;
    }

    if (v47 > 5084)
    {
      if ((v47 - 5085) < 3)
      {
        v48 = 28;
LABEL_24:
        v49 = v47;
        goto LABEL_25;
      }

      v49 = 0;
      if (v47 == 10000)
      {
        v48 = 6600;
        goto LABEL_24;
      }

LABEL_25:
      v90 = __PAIR64__(v48, v49);

      goto LABEL_26;
    }

    if (v47 == 5058)
    {
      v48 = 25;
      goto LABEL_24;
    }

    if (v47 == 5063)
    {
      v49 = 7001;
    }

    else
    {
      v49 = 0;
      if (v47 != 5064)
      {
        goto LABEL_25;
      }

      v49 = 7002;
    }

    v48 = 28;
    goto LABEL_25;
  }

LABEL_26:

LABEL_27:
  if (HIDWORD(v90))
  {
    goto LABEL_77;
  }

  v50 = objc_msgSend_domain(v7, v30, v31, v32, v33);
  v54 = objc_msgSend_isEqualToString_(v50, v51, v25, v52, v53);

  if (!v54)
  {
    goto LABEL_77;
  }

  v59 = objc_msgSend_code(v7, v55, v56, v57, v58);
  v64 = -1;
  v65 = 6;
  switch(v59)
  {
    case 0:
      goto LABEL_46;
    case 1:
      v64 = 3000;
      goto LABEL_37;
    case 2:
      v64 = 3001;
LABEL_37:
      v65 = 16;
      goto LABEL_46;
    case 3:
      v64 = 3002;
      v65 = 18;
      goto LABEL_46;
    case 4:
      v64 = 3003;
      v65 = 17;
      goto LABEL_46;
    case 5:
      v64 = 3004;
      v65 = 19;
      goto LABEL_46;
    case 6:
      v64 = 3005;
      v65 = 20;
      goto LABEL_46;
    case 7:
      v64 = 8000;
      goto LABEL_46;
    case 8:
      v64 = 8005;
      goto LABEL_46;
    case 9:
      v64 = 8006;
LABEL_46:
      v90 = __PAIR64__(v65, v64);
      v67 = objc_msgSend_userInfo(v7, v60, v61, v62, v63);
      if (!objc_msgSend_count(v67, v68, v69, v70, v71))
      {
        goto LABEL_76;
      }

      v75 = objc_msgSend_objectForKey_(v67, v72, @"internalCode", v73, v74);
      v79 = objc_msgSend_objectForKey_(v67, v76, @"internalErrorDomain", v77, v78);
      v83 = v79;
      if (!v75)
      {
        goto LABEL_75;
      }

      if (!objc_msgSend_isEqualToString_(v79, v80, *MEMORY[0x277CCA738], v81, v82))
      {
        goto LABEL_74;
      }

      v88 = objc_msgSend_intValue(v75, v84, v85, v86, v87);
      if (v88 > -1010)
      {
        if (v88 > -1005)
        {
          if (v88 <= -1002)
          {
            if ((v88 + 1004) >= 2)
            {
              if (v88 != -1002)
              {
                goto LABEL_74;
              }

              goto LABEL_71;
            }

            goto LABEL_67;
          }

          if (v88 != -1000)
          {
            if (v88 != -1001)
            {
              goto LABEL_74;
            }

            v89 = 1002;
LABEL_72:
            LODWORD(v90) = v89;
            goto LABEL_75;
          }

LABEL_71:
          v89 = 6600;
          goto LABEL_72;
        }

        if (v88 == -1009)
        {
          goto LABEL_71;
        }

        if (v88 != -1006)
        {
          if (v88 != -1005)
          {
            goto LABEL_74;
          }

          v89 = 6500;
          goto LABEL_72;
        }

LABEL_67:
        v89 = 6700;
        goto LABEL_72;
      }

      if (v88 <= -1018)
      {
        if (v88 == -1020 || v88 == -1018)
        {
          goto LABEL_67;
        }
      }

      else if ((v88 + 1017) < 4 || v88 == -1011)
      {
        v89 = 6701;
        goto LABEL_72;
      }

LABEL_74:
      LODWORD(v90) = objc_msgSend_intValue(v75, v84, v85, v86, v87);
LABEL_75:

LABEL_76:
LABEL_77:
      v66 = v90;
      if (v90 == 7000)
      {
        v90 = 0x1800001B58;
        v66 = 7000;
      }

LABEL_79:
      if (a2)
      {
        *a2 = HIDWORD(v90);
      }

      if (a3)
      {
        *a3 = v66;
      }

      if (a4)
      {
        *a4 = isEqualToString;
      }

      return;
    case 10:
      v66 = 3006;
      goto LABEL_56;
    case 11:
      v66 = 3007;
      goto LABEL_56;
    case 12:
      v66 = 3008;
      goto LABEL_56;
    case 13:
      v66 = 3009;
      goto LABEL_56;
    case 14:
      v66 = 3010;
      goto LABEL_56;
    case 15:
      v66 = 3011;
      goto LABEL_56;
    default:
      v66 = 0;
LABEL_56:
      HIDWORD(v90) = 0;
      goto LABEL_79;
  }
}

void sub_254756DB4(uint64_t a1, char *a2, int *a3, uint64_t a4, uint64_t a5)
{
  v7 = a1 - 32000;
  if ((a1 - 32000) >= 0x18)
  {
    v8 = a1;
    v9 = 15;
  }

  else
  {
    v8 = v7 | 0x7D00;
    v9 = dword_254783280[v7];
  }

  v46 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], a2, a3, a4, a5);
  valid = objc_msgSend_validNetworkActive(v46, v10, v11, v12, v13);
  v19 = objc_msgSend_validNetworkEnabled(v46, v15, v16, v17, v18);
  v24 = objc_msgSend_validNetworkReachable(v46, v20, v21, v22, v23);
  if ((objc_msgSend_allowAnyNetwork(v46, v25, v26, v27, v28) & 1) != 0 || (objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v29, v30, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend_nonWifiFaceTimeAvailable(v33, v34, v35, v36, v37), v33, v38))
  {
    v39 = v19 & valid;
    v40 = 6600;
  }

  else
  {
    v39 = v19 & valid;
    v40 = 6000;
  }

  if (v24)
  {
    v41 = v8;
  }

  else
  {
    v41 = 6500;
  }

  if (v24)
  {
    v42 = v9;
  }

  else
  {
    v42 = 7;
  }

  v43 = v39 == 1;
  if (v39 == 1)
  {
    v44 = v41;
  }

  else
  {
    v44 = v40;
  }

  if (v43)
  {
    v45 = v42;
  }

  else
  {
    v45 = 7;
  }

  if (a2)
  {
    *a2 = v45;
  }

  if (a3)
  {
    *a3 = v44;
  }
}

void sub_254759A18(char a1)
{
  if (qword_27F610690 != -1)
  {
    sub_25477F8C8();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254759AF0;
  block[3] = &unk_279783438;
  v3 = a1;
  dispatch_async(qword_27F610688, block);
}

uint64_t sub_254759AB0()
{
  v0 = dispatch_queue_create("IMAVCoreSetEnableNetworkingFlagsQueue", 0);
  v1 = qword_27F610688;
  qword_27F610688 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_254759AF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (byte_27F610680 != v5)
  {
    byte_27F610680 = *(a1 + 32);
    v7 = off_27F610698;
    if (!off_27F610698)
    {
      v7 = MEMORY[0x259C189A0]("SBSSpringBoardServerPort", @"SpringBoardServices");
      off_27F610698 = v7;
    }

    v8 = off_27F6106A0;
    if (!off_27F6106A0)
    {
      v8 = MEMORY[0x259C189A0]("SBSetApplicationNetworkFlags", @"SpringBoardServices");
      off_27F6106A0 = v8;
      v7 = off_27F610698;
    }

    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = (v7)();
      (v8)(v10, v5, v5);
    }

    v11 = qword_27F6106A8;
    if (!qword_27F6106A8)
    {
      v11 = MEMORY[0x259C18990](@"UIApplication", @"UIKit");
      qword_27F6106A8 = v11;
    }

    v15 = objc_msgSend_sharedApplication(v11, a2, a3, a4, a5);
    objc_msgSend_setUsesBackgroundNetwork_(v15, v12, *(a1 + 32), v13, v14);
  }
}

uint64_t sub_254759C54()
{
  v0 = objc_alloc_init(IMAVTelephonyManager);
  v1 = qword_28134A3E0;
  qword_28134A3E0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *_NSStringDescriptionForIMAVResponse(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_279783458[a1];
  }
}

__CFString *_NSStringDescriptionForIMAVChatState(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_2797835B8[a1];
  }
}

id _NSStringDescriptionForIMAVChatError(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Unknown Error %d", a4, a5, a1);
  if (v5 > 5999)
  {
    if (v5 <= 8004)
    {
      if (v5 > 6800)
      {
        if (v5 > 7999)
        {
          if (v5 <= 8001)
          {
            if (v5 == 8000)
            {
              v7 = @"Relay Invitation Failed";
            }

            else
            {
              v7 = @"Relay Not Found";
            }
          }

          else if (v5 == 8002)
          {
            v7 = @"Relay Connection Failed";
          }

          else if (v5 == 8003)
          {
            v7 = @"Relay Authorization Failed";
          }

          else
          {
            v7 = @"Relay Disconnected";
          }
        }

        else if (v5 <= 6999)
        {
          if (v5 == 6801)
          {
            v7 = @"Not Allowed";
          }

          else
          {
            if (v5 != 6900)
            {
              goto LABEL_172;
            }

            v7 = @"System needs update";
          }
        }

        else
        {
          switch(v5)
          {
            case 7000:
              v7 = @"Not Registered";
              break;
            case 7001:
              v7 = @"Region info needs update";
              break;
            case 7002:
              v7 = @"Region info not sufficient";
              break;
            default:
              goto LABEL_172;
          }
        }
      }

      else if (v5 > 6599)
      {
        if (v5 <= 6699)
        {
          if (v5 == 6600)
          {
            v7 = @"No Local Network";
          }

          else
          {
            if (v5 != 6601)
            {
              goto LABEL_172;
            }

            v7 = @"No Remote Network";
          }
        }

        else
        {
          switch(v5)
          {
            case 6700:
              v7 = @"Server Not Found";
              break;
            case 6701:
              v7 = @"Bad Server Response";
              break;
            case 6800:
              v7 = @"Feature Disabled";
              break;
            default:
              goto LABEL_172;
          }
        }
      }

      else if (v5 <= 6099)
      {
        if (v5 == 6000)
        {
          v7 = @"No Local Wifi";
        }

        else
        {
          if (v5 != 6001)
          {
            goto LABEL_172;
          }

          v7 = @"No Remote Wifi";
        }
      }

      else
      {
        switch(v5)
        {
          case 6100:
            v7 = @"Could not create AVConference";
            break;
          case 6400:
            v7 = @"Invalid remote ID";
            break;
          case 6500:
            v7 = @"Network Disconnected";
            break;
          default:
            goto LABEL_172;
        }
      }
    }

    else
    {
      switch(v5)
      {
        case 32000:
          v7 = @"Internal Error";
          goto LABEL_171;
        case 32001:
          v7 = @"No Remote Packets Error";
          goto LABEL_171;
        case 32002:
          v7 = @"Unable to Connect Error";
          goto LABEL_171;
        case 32003:
          v7 = @"Remote Participant Hangup Error";
          goto LABEL_171;
        case 32004:
          v7 = @"Invalid Call ID Error";
          goto LABEL_171;
        case 32005:
          v7 = @"Audio Unavailable Error";
          goto LABEL_171;
        case 32006:
          v7 = @"Uninitialized Client Error";
          goto LABEL_171;
        case 32007:
          v7 = @"Client Missing Required Methods Error";
          goto LABEL_171;
        case 32008:
          v7 = @"Remote Participant Busy Error";
          goto LABEL_171;
        case 32009:
          v7 = @"Remote Participant Cancelled Error";
          goto LABEL_171;
        case 32010:
          v7 = @"Remote Participant Response Invalid Error";
          goto LABEL_171;
        case 32011:
          v7 = @"Remote Participant Declined Invite Error";
          goto LABEL_171;
        case 32012:
          v7 = @"Method Currently Invalid Error";
          goto LABEL_171;
        case 32013:
          v7 = @"Network Configuration Error";
          goto LABEL_171;
        case 32014:
          v7 = @"Unsupported Remote Version Error";
          goto LABEL_171;
        case 32015:
          v7 = @"Out of Memory Error";
          goto LABEL_171;
        case 32016:
          v7 = @"Invalid Parameter Error";
          goto LABEL_171;
        case 32017:
          v7 = @"Video Unavailable Error";
          goto LABEL_171;
        case 32018:
          v7 = @"SRTP Encryption Setup Error";
          goto LABEL_171;
        case 32019:
          v7 = @"Network Relay Configuration Error";
          goto LABEL_171;
        case 32020:
          v7 = @"Bad Network Conditions Error";
          goto LABEL_171;
        case 32021:
          v7 = @"No Local Identity Error";
          goto LABEL_171;
        case 32022:
          v7 = @"Relay Channel Error";
          goto LABEL_171;
        default:
          if (v5 == 8005)
          {
            v7 = @"Relay Update Failed";
          }

          else
          {
            if (v5 != 8006)
            {
              goto LABEL_172;
            }

            v7 = @"Relay Cancel Failed";
          }

          break;
      }
    }

    goto LABEL_171;
  }

  if (v5 > 3009)
  {
    switch(v5)
    {
      case 5000:
        v7 = @"Unauthenticated";
        goto LABEL_171;
      case 5001:
      case 5035:
      case 5036:
      case 5037:
      case 5038:
      case 5039:
      case 5040:
      case 5041:
      case 5042:
      case 5043:
      case 5044:
      case 5045:
      case 5046:
      case 5047:
      case 5048:
      case 5049:
      case 5050:
      case 5051:
      case 5052:
      case 5053:
      case 5054:
      case 5055:
      case 5056:
      case 5057:
      case 5058:
      case 5065:
      case 5066:
      case 5067:
      case 5068:
      case 5069:
      case 5070:
      case 5071:
      case 5072:
      case 5073:
      case 5074:
      case 5075:
      case 5076:
      case 5077:
      case 5078:
      case 5079:
      case 5080:
      case 5081:
      case 5082:
      case 5083:
      case 5084:
        goto LABEL_172;
      case 5002:
        v7 = @"Version Mismatch";
        goto LABEL_171;
      case 5003:
        v7 = @"Bad Request";
        goto LABEL_171;
      case 5004:
        v7 = @"Server Too Busy";
        goto LABEL_171;
      case 5005:
        v7 = @"No Such Player ID";
        goto LABEL_171;
      case 5006:
        v7 = @"Bad Push Token";
        goto LABEL_171;
      case 5007:
        v7 = @"No Such Achievement";
        goto LABEL_171;
      case 5008:
        v7 = @"Missing Required Key";
        goto LABEL_171;
      case 5009:
        v7 = @"Missing Required Header";
        goto LABEL_171;
      case 5010:
        v7 = @"Unrecognized Game Descriptor Headers";
        goto LABEL_171;
      case 5011:
        v7 = @"Must Accept Terms of Service";
        goto LABEL_171;
      case 5012:
        v7 = @"Invalid Name or Password";
        goto LABEL_171;
      case 5013:
        v7 = @"Cancelled by User";
        goto LABEL_171;
      case 5014:
        v7 = @"No Such Friend Relationship";
        goto LABEL_171;
      case 5015:
        v7 = @"No Such Alias";
        goto LABEL_171;
      case 5016:
        v7 = @"Email Not in Network";
        goto LABEL_171;
      case 5017:
        v7 = @"Request Disallowed";
        goto LABEL_171;
      case 5018:
        v7 = @"No Such RID";
        goto LABEL_171;
      case 5019:
        v7 = @"No Such Game";
        goto LABEL_171;
      case 5020:
        v7 = @"DSError";
        goto LABEL_171;
      case 5021:
        v7 = @"Profile Exists";
        goto LABEL_171;
      case 5022:
        v7 = @"Alias Exists";
        goto LABEL_171;
      case 5023:
        v7 = @"Account Name Not Email Address";
        goto LABEL_171;
      case 5024:
        v7 = @"Alias Too Long";
        goto LABEL_171;
      case 5025:
        v7 = @"Alias Too Frequent Updates";
        goto LABEL_171;
      case 5026:
        v7 = @"Player Status Not Allowed";
        goto LABEL_171;
      case 5027:
        v7 = @"Player Status Too Long";
        goto LABEL_171;
      case 5028:
        v7 = @"No Such Bucket ID";
        goto LABEL_171;
      case 5029:
        v7 = @"Authenticated Not Authorized";
        goto LABEL_171;
      case 5030:
        v7 = @"No Push Token for ID";
        goto LABEL_171;
      case 5031:
        v7 = @"Push Payload Too Big";
        goto LABEL_171;
      case 5032:
        v7 = @"Bad Signature";
        goto LABEL_171;
      case 5033:
        v7 = @"New Signature Required";
        goto LABEL_171;
      case 5034:
        v7 = @"New Registration Required";
        goto LABEL_171;
      case 5059:
        v7 = @"Phone Number Too Short";
        goto LABEL_171;
      case 5060:
        v7 = @"Phone Number Too Long";
        goto LABEL_171;
      case 5061:
        v7 = @"Phone Number Bad Country Code";
        goto LABEL_171;
      case 5062:
        v7 = @"Phone Number Malformed";
        goto LABEL_171;
      case 5063:
        v7 = @"Bad Invitation Context";
        goto LABEL_171;
      case 5064:
        v7 = @"Unpromotable Phone Number";
        goto LABEL_171;
      case 5085:
        v7 = @"Bad Cert";
        goto LABEL_171;
      case 5086:
        v7 = @"Bad Nonce";
        goto LABEL_171;
      case 5087:
        v7 = @"Bad Nonce Timestamp";
        goto LABEL_171;
      default:
        if (v5 == 3010)
        {
          v7 = @"Provide Video Still Failed";
        }

        else
        {
          if (v5 != 3011)
          {
            goto LABEL_172;
          }

          v7 = @"Set AVManager Client URL Failed";
        }

        break;
    }

    goto LABEL_171;
  }

  if (v5 > 2999)
  {
    if (v5 > 3004)
    {
      if (v5 <= 3006)
      {
        if (v5 == 3005)
        {
          v7 = @"AVMessage Failed";
        }

        else
        {
          v7 = @"Request AVInfo Failed";
        }
      }

      else if (v5 == 3007)
      {
        v7 = @"Request Audio Reflector Failed";
      }

      else if (v5 == 3008)
      {
        v7 = @"Request Video Still Failed";
      }

      else
      {
        v7 = @"Provide AVInfo Failed";
      }
    }

    else if (v5 <= 3001)
    {
      if (v5 == 3000)
      {
        v7 = @"Invitation Failed";
      }

      else
      {
        v7 = @"Counter Proposal Failed";
      }
    }

    else if (v5 == 3002)
    {
      v7 = @"Cancel Failed";
    }

    else if (v5 == 3003)
    {
      v7 = @"Response Failed";
    }

    else
    {
      v7 = @"VCUpdate Failed";
    }

LABEL_171:

    v6 = v7;
    goto LABEL_172;
  }

  if (v5 <= 999)
  {
    if (v5 == -2)
    {
      v7 = @"Generic Error";
    }

    else if (v5 == -1)
    {
      v7 = @"Unknown Error";
    }

    else
    {
      if (v5)
      {
        goto LABEL_172;
      }

      v7 = @"No Error";
    }

    goto LABEL_171;
  }

  switch(v5)
  {
    case 1000:
      v7 = @"VCChannel Auth Failed";
      goto LABEL_171;
    case 1001:
      v7 = @"VCChannel Connection Failed";
      goto LABEL_171;
    case 1002:
      v7 = @"NetworkTimeout";
      goto LABEL_171;
    case 1003:
      v7 = @"Insufficient Bandwidth";
      goto LABEL_171;
    case 1004:
      v7 = @"Local Video Error";
      goto LABEL_171;
    case 1005:
      v7 = @"No Packets";
      goto LABEL_171;
    case 1006:
      v7 = @"Local Cert Not Trusted";
      goto LABEL_171;
    case 1007:
      v7 = @"Invalid Security";
      goto LABEL_171;
    case 1008:
      v7 = @"Timeout";
      goto LABEL_171;
    case 1009:
      v7 = @"Cancel During Connect";
      goto LABEL_171;
    case 1010:
      v7 = @"Invalid Remote Size";
      goto LABEL_171;
    case 1011:
      v7 = @"Invalid Local Size";
      goto LABEL_171;
    case 1012:
      v7 = @"Invalid IP Addr or Port";
      goto LABEL_171;
    case 1013:
      v7 = @"Invalid State";
      goto LABEL_171;
    case 1014:
      v7 = @"Expired Framework";
      goto LABEL_171;
    case 1015:
      v7 = @"Remote Party Declined";
      goto LABEL_171;
    case 1016:
      v7 = @"Remote Party is Busy";
      goto LABEL_171;
    case 1017:
      v7 = @"Caller Cancelled";
      goto LABEL_171;
    default:
      break;
  }

LABEL_172:

  return v6;
}

__CFString *_NSStringDescriptionForIMAVChatEndedReason(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >= 0x20)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Unknown Reason %d", a4, a5, a1);
  }

  else
  {
    v6 = off_2797834B8[a1];
  }

  return v6;
}

__CFString *_NSStringDescriptionForIMAVChatParticipantState(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_2797835B8[a1];
  }
}

__CFString *sub_25475A928(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v7 = objc_msgSend_count(a1, a2, a3, a4, a5);
  if (v7)
  {
    v8 = MEMORY[0x277CCA8D8];
    v9 = objc_opt_class();
    v13 = objc_msgSend_bundleForClass_(v8, v10, v9, v11, v12);
    v18 = v13;
    if (v7 == 2)
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @"%@ and %@", &stru_28668C2A0, @"IMAVCoreLocalizable");
      v27 = objc_msgSend___imFirstObject(a1, v23, v24, v25, v26);
      v31 = objc_msgSend_objectAtIndex_(a1, v28, 1, v29, v30);
      v19 = objc_msgSend_stringWithFormat_(v21, v32, v22, v33, v34, v27, v31);
    }

    else
    {
      if (v7 == 1)
      {
        v19 = objc_msgSend_lastObject(a1, v14, v15, v16, v17);
LABEL_15:

        goto LABEL_16;
      }

      if (v5 < 3 || (v35 = v7 - v5, v7 <= v5))
      {
        v36 = v7 - 1;
        v42 = MEMORY[0x277CCACA8];
        v38 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @", and %@", &stru_28668C2A0, @"IMAVCoreLocalizable");
        v47 = objc_msgSend_lastObject(a1, v43, v44, v45, v46);
        v22 = objc_msgSend_stringWithFormat_(v42, v48, v38, v49, v50, v47);
      }

      else
      {
        v36 = (v5 - 1);
        v37 = MEMORY[0x277CCACA8];
        v38 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @", and %d others", &stru_28668C2A0, @"IMAVCoreLocalizable");
        v22 = objc_msgSend_stringWithFormat_(v37, v39, v38, v40, v41, (v35 + 1));
      }

      v53 = objc_msgSend_subarrayWithRange_(a1, v51, 0, v36, v52);
      v55 = objc_msgSend_localizedStringForKey_value_table_(v18, v54, @", ", &stru_28668C2A0, @"IMAVCoreLocalizable");
      v27 = objc_msgSend_componentsJoinedByString_(v53, v56, v55, v57, v58);

      v19 = objc_msgSend_stringByAppendingString_(v27, v59, v22, v60, v61);
    }

    goto LABEL_15;
  }

  v20 = sub_254761764();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Can't join 0 items!", buf, 2u);
  }

  v19 = &stru_28668C2A0;
LABEL_16:

  return v19;
}

void sub_25475ABDC(void *a1)
{
  v86 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v2, v3, v4, v5);
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v84 = 138412290;
    v85 = v1;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "************ %@ *************", &v84, 0xCu);
  }

  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_allowAnyNetwork(v6, v9, v10, v11, v12))
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v84 = 138412290;
    v85 = v13;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Allow any network: %@", &v84, 0xCu);
  }

  v14 = sub_254761764();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v15, v16, v17, v18);
    if (objc_msgSend_supportsNonWiFiFaceTime(v19, v20, v21, v22, v23))
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v84 = 138412290;
    v85 = v24;
    _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "Supports non WiFi: %@", &v84, 0xCu);
  }

  v25 = sub_254761764();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v30 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB8], v26, v27, v28, v29);
    if (objc_msgSend_faceTimeNonWiFiEntitled(v30, v31, v32, v33, v34))
    {
      v35 = @"YES";
    }

    else
    {
      v35 = @"NO";
    }

    v84 = 138412290;
    v85 = v35;
    _os_log_impl(&dword_254743000, v25, OS_LOG_TYPE_DEFAULT, "Entitled non WiFi: %@", &v84, 0xCu);
  }

  v36 = sub_254761764();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v41 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v37, v38, v39, v40);
    if (objc_msgSend_nonWifiFaceTimeAvailable(v41, v42, v43, v44, v45))
    {
      v46 = @"YES";
    }

    else
    {
      v46 = @"NO";
    }

    v84 = 138412290;
    v85 = v46;
    _os_log_impl(&dword_254743000, v36, OS_LOG_TYPE_DEFAULT, "Allowed non WiFi: %@", &v84, 0xCu);
  }

  v47 = sub_254761764();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v52 = objc_msgSend_sharedInstance(MEMORY[0x277D07E00], v48, v49, v50, v51);
    if (objc_msgSend_cellularFaceTimeEnabled(v52, v53, v54, v55, v56))
    {
      v57 = @"YES";
    }

    else
    {
      v57 = @"NO";
    }

    v84 = 138412290;
    v85 = v57;
    _os_log_impl(&dword_254743000, v47, OS_LOG_TYPE_DEFAULT, "User enabled non WiFi: %@", &v84, 0xCu);
  }

  v58 = sub_254761764();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_validNetworkEnabled(v6, v59, v60, v61, v62))
    {
      v63 = @"YES";
    }

    else
    {
      v63 = @"NO";
    }

    v84 = 138412290;
    v85 = v63;
    _os_log_impl(&dword_254743000, v58, OS_LOG_TYPE_DEFAULT, "Is Network Enabled: %@", &v84, 0xCu);
  }

  v64 = sub_254761764();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_validNetworkActive(v6, v65, v66, v67, v68))
    {
      v69 = @"YES";
    }

    else
    {
      v69 = @"NO";
    }

    v84 = 138412290;
    v85 = v69;
    _os_log_impl(&dword_254743000, v64, OS_LOG_TYPE_DEFAULT, "Is Network Active: %@", &v84, 0xCu);
  }

  v70 = sub_254761764();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_validNetworkReachable(v6, v71, v72, v73, v74))
    {
      v75 = @"YES";
    }

    else
    {
      v75 = @"NO";
    }

    v84 = 138412290;
    v85 = v75;
    _os_log_impl(&dword_254743000, v70, OS_LOG_TYPE_DEFAULT, "Is Network Reachable: %@", &v84, 0xCu);
  }

  v76 = sub_254761764();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_willSearchForNetwork(v6, v77, v78, v79, v80))
    {
      v81 = @"YES";
    }

    else
    {
      v81 = @"NO";
    }

    v84 = 138412290;
    v85 = v81;
    _os_log_impl(&dword_254743000, v76, OS_LOG_TYPE_DEFAULT, "Will Search for Wifi: %@", &v84, 0xCu);
  }

  v82 = sub_254761764();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v84) = 0;
    _os_log_impl(&dword_254743000, v82, OS_LOG_TYPE_DEFAULT, "**********************************", &v84, 2u);
  }

  v83 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25475B094(int a1, int a2)
{
  v2 = a2 | a1;
  if (a1 && a2)
  {
    if ((a2 | a1))
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v4 = a1;
      do
      {
        a1 = v4 >> 1;
        a2 >>= 1;
        ++v3;
        v5 = a2 | (v4 >> 1);
        v4 >>= 1;
      }

      while ((v5 & 1) == 0);
    }

    do
    {
      v6 = a1;
      a1 >>= 1;
    }

    while ((v6 & 1) == 0);
    do
    {
      do
      {
        v7 = a2;
        a2 >>= 1;
      }

      while ((v7 & 1) == 0);
      v9 = v6 - v7;
      v8 = v6 - v7 < 0;
      if (v6 >= v7)
      {
        v6 = v7;
      }

      if (v8)
      {
        v10 = -v9;
      }

      else
      {
        v10 = v9;
      }

      a2 = v10 >> 1;
    }

    while (v10 > 1);
    return (v6 << v3);
  }

  return v2;
}

id sub_25475B108(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_copyStringGUID(MEMORY[0x277CCACA8], a2, a3, a4, a5);

  return v5;
}

id sub_25475B138()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v1, v2, v3, v4);
  v9 = objc_msgSend_initWithFormat_(v0, v6, @"ConferenceID:%@", v7, v8, v5);

  return v9;
}

__CFString *sub_25475B1AC(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_2797835E8[a1];
  }
}

uint64_t sub_25475B214()
{
  v0 = objc_alloc_init(IMAVCallManager);
  v1 = qword_28134A3E8;
  qword_28134A3E8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25475B528(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_sharedInstance(IMAVController, a2, a3, a4, a5);
  shouldRunConferences = objc_msgSend__shouldRunConferences(v7, v8, v9, v10, v11);

  if ((shouldRunConferences & 1) == 0)
  {
    v16 = *(a1 + 32);

    objc_msgSend__setAVCallState_(v16, v13, a3, v14, v15);
  }
}

void sub_25475B5A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_sharedInstance(IMAVController, a2, a3, a4, a5);
  shouldRunACConferences = objc_msgSend__shouldRunACConferences(v7, v8, v9, v10, v11);

  if ((shouldRunACConferences & 1) == 0)
  {
    v16 = *(a1 + 32);

    objc_msgSend__setACCallState_(v16, v13, a3, v14, v15);
  }
}

void *sub_25475CD78()
{
  result = MEMORY[0x259C189A0]("PLLogRegisteredEvent", @"PowerLog");
  off_28134A460 = result;
  return result;
}

void *sub_25475CDA8()
{
  result = MEMORY[0x259C189A0]("PLLogRegisteredEvent", @"PowerLog");
  off_28134A3C8 = result;
  return result;
}

void sub_25475E518(void *a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v16 = objc_msgSend_copy(a4, v12, v13, v14, v15);
  if (!v11)
  {
    v11 = dispatch_get_global_queue(0, 0);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_254760730;
  v20[3] = &unk_279783710;
  v24 = a3;
  v25 = 0;
  v22 = v10;
  v23 = v16;
  v21 = v9;
  v17 = v10;
  v18 = v16;
  v19 = v9;
  dispatch_async(v11, v20);
}

void sub_25475E638(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = a4;
  v16 = objc_msgSend_conferenceID(v9, v12, v13, v14, v15);
  sub_25475E6D8(a2, a3, v11, v10, v16, *(a1 + 40));
}

void sub_25475E6D8(int a1, int a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v270 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v17 = objc_msgSend__avChatWithGUID_(IMAVChat, v14, a3, v15, v16);
  v21 = objc_msgSend_participantWithID_(v17, v18, v13, v19, v20);

  v22 = sub_254761764();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"NO";
    if (a1)
    {
      v23 = @"YES";
    }

    *buf = 138412290;
    v265 = v23;
    _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "Found WiFi: %@", buf, 0xCu);
  }

  v24 = sub_254761764();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = @"NO";
    if (a2)
    {
      v25 = @"YES";
    }

    *buf = 138412290;
    v265 = v25;
    _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "Found Network: %@", buf, 0xCu);
  }

  sub_25475ABDC(@"Done");
  if ((a2 & 1) == 0)
  {
    v249 = sub_254761764();
    if (os_log_type_enabled(v249, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v249, OS_LOG_TYPE_DEFAULT, "  => Failing, no valid network", buf, 2u);
    }

    v250 = sub_254761764();
    if (!os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    *buf = 0;
    v251 = "[WARN] Failed invite! network is not good";
    goto LABEL_53;
  }

  v30 = objc_msgSend__timings(v17, v26, v27, v28, v29);
  objc_msgSend_stopTimingForKey_(v30, v31, @"time-to-av-fetch-ice-data-start-gather", v32, v33);

  v34 = sub_254760E34(v17, v21, v12);
  v39 = objc_msgSend_mutableCopy(v34, v35, v36, v37, v38);

  if (!v39)
  {
    v252 = sub_254761764();
    if (os_log_type_enabled(v252, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v252, OS_LOG_TYPE_DEFAULT, "  => Failing, missing invitees info (Missing ICE Data)", buf, 2u);
    }

    v250 = sub_254761764();
    if (!os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    *buf = 0;
    v251 = "[WARN] Failed invite! Invitees info returned nil (Missing ICE Data)";
LABEL_53:
    _os_log_impl(&dword_254743000, v250, OS_LOG_TYPE_DEFAULT, v251, buf, 2u);
LABEL_54:

    sub_254760DA0(v17);
    goto LABEL_58;
  }

  v44 = objc_msgSend_inviteesInfo(v17, v40, v41, v42, v43);
  v49 = objc_msgSend_count(v44, v45, v46, v47, v48);

  if (v49)
  {
    v54 = objc_msgSend_inviteesInfo(v17, v50, v51, v52, v53);
    objc_msgSend_addEntriesFromDictionary_(v39, v55, v54, v56, v57);
  }

  v58 = objc_msgSend_imHandle(v21, v50, v51, v52, v53);
  v63 = objc_msgSend_callerProperties(v17, v59, v60, v61, v62);
  Mutable = objc_msgSend_mutableCopy(v63, v64, v65, v66, v67);

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v73 = MEMORY[0x277CCABB0];
  v74 = objc_msgSend_sessionID(v17, v69, v70, v71, v72);
  v78 = objc_msgSend_numberWithUnsignedInt_(v73, v75, v74, v76, v77);
  v79 = *MEMORY[0x277D19568];
  objc_msgSend_setObject_forKey_(v39, v80, v78, *MEMORY[0x277D19568], v81);

  v86 = objc_msgSend_plistData(v39, v82, v83, v84, v85);
  objc_msgSend_setObject_forKey_(Mutable, v87, v86, *MEMORY[0x277D194E0], v88);

  v89 = MEMORY[0x277CCABB0];
  isVideo = objc_msgSend_isVideo(v17, v90, v91, v92, v93);
  v98 = objc_msgSend_numberWithBool_(v89, v95, isVideo ^ 1u, v96, v97);
  objc_msgSend_setObject_forKey_(Mutable, v99, v98, *MEMORY[0x277D194C8], v100);

  v101 = MEMORY[0x277CCABB0];
  v106 = objc_msgSend_sessionID(v17, v102, v103, v104, v105);
  v110 = objc_msgSend_numberWithUnsignedInt_(v101, v107, v106, v108, v109);
  objc_msgSend_setObject_forKey_(Mutable, v111, v110, v79, v112);

  if (v11)
  {
    objc_msgSend_setObject_forKey_(Mutable, v113, v11, *MEMORY[0x277D19518], v116);
    v120 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v117, 1, v118, v119);
    objc_msgSend_setObject_forKey_(Mutable, v121, v120, *MEMORY[0x277D194D8], v122);
  }

  v123 = objc_msgSend__extraServerContext(v17, v113, v114, v115, v116);
  if (objc_msgSend_count(v123, v124, v125, v126, v127))
  {
    objc_msgSend_addEntriesFromDictionary_(Mutable, v128, v123, v130, v131);
  }

  if (objc_msgSend_isActive(v17, v128, v129, v130, v131))
  {
    v262 = v11;
    objc_msgSend_setState_(v12, v132, 1, v133, v134);
    v135 = sub_254761764();
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
    {
      v140 = objc_msgSend_ID(v58, v136, v137, v138, v139);
      *buf = 138412290;
      v265 = v140;
      _os_log_impl(&dword_254743000, v135, OS_LOG_TYPE_DEFAULT, "Sending VC invite for %@ to service", buf, 0xCu);
    }

    v141 = sub_254761764();
    v263 = v58;
    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      v146 = objc_msgSend_conferenceID(v17, v142, v143, v144, v145);
      v151 = objc_msgSend_account(v58, v147, v148, v149, v150);
      *buf = 138412802;
      v265 = v146;
      v266 = 2112;
      v267 = v151;
      v268 = 2112;
      v269 = v263;
      _os_log_impl(&dword_254743000, v141, OS_LOG_TYPE_DEFAULT, "Conference ID: %@     Account: %@    Handle: %@", buf, 0x20u);

      v58 = v263;
    }

    v152 = sub_254761764();
    if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
    {
      v157 = objc_msgSend_account(v58, v153, v154, v155, v156);
      v162 = objc_msgSend_loginStatusMessage(v157, v158, v159, v160, v161);
      *buf = 138412290;
      v265 = v162;
      _os_log_impl(&dword_254743000, v152, OS_LOG_TYPE_DEFAULT, "    Account login status: %@", buf, 0xCu);

      v58 = v263;
    }

    v163 = sub_254761764();
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
    {
      v168 = objc_msgSend_account(v58, v164, v165, v166, v167);
      if (objc_msgSend_isActive(v168, v169, v170, v171, v172))
      {
        v173 = @"YES";
      }

      else
      {
        v173 = @"NO";
      }

      *buf = 138412290;
      v265 = v173;
      _os_log_impl(&dword_254743000, v163, OS_LOG_TYPE_DEFAULT, "          Account active: %@", buf, 0xCu);
    }

    v174 = sub_254761764();
    if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
    {
      v179 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v175, v176, v177, v178);
      if (objc_msgSend_isConnected(v179, v180, v181, v182, v183))
      {
        v184 = @"YES";
      }

      else
      {
        v184 = @"NO";
      }

      *buf = 138412290;
      v265 = v184;
      _os_log_impl(&dword_254743000, v174, OS_LOG_TYPE_DEFAULT, "        Daemon Connected: %@", buf, 0xCu);
    }

    v185 = sub_254761764();
    if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v265 = Mutable;
      _os_log_impl(&dword_254743000, v185, OS_LOG_TYPE_DEFAULT, "              Properties: %@", buf, 0xCu);
    }

    v186 = sub_254761764();
    if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v265 = v39;
      _os_log_impl(&dword_254743000, v186, OS_LOG_TYPE_DEFAULT, "           Invitees Info: %@", buf, 0xCu);
    }

    v261 = v12;

    v191 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v187, v188, v189, v190);
    isConnected = objc_msgSend_isConnected(v191, v192, v193, v194, v195);

    if ((isConnected & 1) == 0)
    {
      v201 = sub_254761764();
      if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v201, OS_LOG_TYPE_DEFAULT, "[WARN] Daemon was disconnected, we're connecting here....", buf, 2u);
      }

      v206 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v202, v203, v204, v205);
      objc_msgSend_connectToDaemon(v206, v207, v208, v209, v210);
    }

    v211 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v197, v198, v199, v200, v123);
    v58 = v263;
    v216 = objc_msgSend_ID(v263, v212, v213, v214, v215);
    v221 = objc_msgSend_conferenceID(v17, v217, v218, v219, v220);
    v226 = objc_msgSend_account(v263, v222, v223, v224, v225);
    v231 = objc_msgSend_uniqueID(v226, v227, v228, v229, v230);
    objc_msgSend_requestVCWithPerson_properties_conference_account_(v211, v232, v216, Mutable, v221, v231);

    v237 = objc_msgSend__timings(v17, v233, v234, v235, v236);
    objc_msgSend_startTimingForKey_(v237, v238, @"invitation-delivery-time", v239, v240);

    v245 = objc_msgSend__timings(v17, v241, v242, v243, v244);
    objc_msgSend_startTimingForKey_(v245, v246, @"time-to-response", v247, v248);
    v12 = v261;
    v11 = v262;
    v123 = v260;
  }

  else
  {
    v245 = sub_254761764();
    if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
    {
      v257 = objc_msgSend_state(v17, v253, v254, v255, v256);
      v258 = _NSStringDescriptionForIMAVChatState(v257);
      *buf = 138412290;
      v265 = v258;
      _os_log_impl(&dword_254743000, v245, OS_LOG_TYPE_DEFAULT, "Chat state is %@, not sending invite to daemon", buf, 0xCu);
    }
  }

LABEL_58:
  v259 = *MEMORY[0x277D85DE8];
}

void sub_25475F7AC(int a1, int a2, int a3, int a4, uint64_t a5, void *a6, void *a7)
{
  v312 = *MEMORY[0x277D85DE8];
  v13 = a7;
  v14 = a6;
  v18 = objc_msgSend__avChatWithGUID_(IMAVChat, v15, a5, v16, v17);
  v22 = objc_msgSend_participantWithID_(v18, v19, v14, v20, v21);

  v23 = sub_254761764();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v307) = a1;
    _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "Send response processing complete for: %d", buf, 8u);
  }

  v24 = sub_254761764();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = @"NO";
    if (a2)
    {
      v25 = @"YES";
    }

    *buf = 138412290;
    v307 = v25;
    _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "  Needs Network: %@", buf, 0xCu);
  }

  v26 = sub_254761764();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = @"NO";
    if (a3)
    {
      v27 = @"YES";
    }

    *buf = 138412290;
    v307 = v27;
    _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "     Found WiFi: %@", buf, 0xCu);
  }

  v28 = sub_254761764();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = @"NO";
    if (a4)
    {
      v29 = @"YES";
    }

    *buf = 138412290;
    v307 = v29;
    _os_log_impl(&dword_254743000, v28, OS_LOG_TYPE_DEFAULT, "  Found Network: %@", buf, 0xCu);
  }

  if (v13 || (objc_msgSend__callInfosWaitingForAcceptAction(v22, v30, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend___imFirstObject(v34, v35, v36, v37, v38), v13 = objc_claimAutoreleasedReturnValue(), v34, v13))
  {
    if (a2)
    {
      goto LABEL_18;
    }

LABEL_33:
    v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
    goto LABEL_34;
  }

  v53 = sub_254761764();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v58 = objc_msgSend__participantsCallInfo(v22, v54, v55, v56, v57);
    *buf = 138412546;
    v307 = v22;
    v308 = 2112;
    v309 = v58;
    _os_log_impl(&dword_254743000, v53, OS_LOG_TYPE_DEFAULT, "[WARN] No Call info found for participant: %@  (All: %@)", buf, 0x16u);
  }

  v13 = 0;
  if (!a2)
  {
    goto LABEL_33;
  }

LABEL_18:
  sub_25475ABDC(@"Done");
  if ((a4 & 1) == 0)
  {
    v52 = sub_254761764();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v52, OS_LOG_TYPE_DEFAULT, "  => Failing, no valid network", buf, 2u);
    }

    v50 = sub_254761764();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v51 = "[WARN] Failed invite! network is not good";
    goto LABEL_28;
  }

  v39 = sub_254760E34(v18, v22, v13);
  v44 = objc_msgSend_mutableCopy(v39, v40, v41, v42, v43);

  if (v44)
  {
LABEL_34:
    if (!objc_msgSend_isActive(v18, v45, v46, v47, v48))
    {
      v264 = sub_254761764();
      if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
      {
        v269 = objc_msgSend_state(v18, v265, v266, v267, v268);
        v270 = _NSStringDescriptionForIMAVChatState(v269);
        *buf = 138412290;
        v307 = v270;
        _os_log_impl(&dword_254743000, v264, OS_LOG_TYPE_DEFAULT, "Chat state is %@, not sending response to daemon", buf, 0xCu);
      }

      goto LABEL_78;
    }

    v63 = objc_msgSend_imHandle(v22, v59, v60, v61, v62);
    v64 = v63;
    if (a1 == 1)
    {
      v271 = sub_254761764();
      if (os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
      {
        v276 = objc_msgSend_ID(v64, v272, v273, v274, v275);
        *buf = 138412290;
        v307 = v276;
        _os_log_impl(&dword_254743000, v271, OS_LOG_TYPE_DEFAULT, "Dealloc: Declining current chat with: %@", buf, 0xCu);
      }

      v263 = objc_msgSend_sharedInstance(IMAVController, v277, v278, v279, v280);
      v285 = objc_msgSend_callerProperties(v18, v281, v282, v283, v284);
      v290 = objc_msgSend_account(v64, v286, v287, v288, v289);
      v295 = objc_msgSend_conferenceID(v18, v291, v292, v293, v294);
      objc_msgSend_declineVCRequestWithBuddy_response_vcProps_forAccount_conferenceID_(v263, v296, v64, 1, v285, v290, v295);
    }

    else
    {
      if (a1)
      {
LABEL_77:

LABEL_78:
        goto LABEL_79;
      }

      v301 = v63;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2547611F4;
      block[3] = &unk_279783760;
      v65 = v22;
      v303 = v65;
      v66 = v13;
      v304 = v66;
      v67 = v18;
      v305 = v67;
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_msgSend_setState_(v66, v68, 1, v69, v70);
      v75 = objc_msgSend_callerProperties(v67, v71, v72, v73, v74);
      Mutable = objc_msgSend_mutableCopy(v75, v76, v77, v78, v79);

      v81 = MEMORY[0x277CCABB0];
      v300 = v67;
      v86 = objc_msgSend_sessionID(v67, v82, v83, v84, v85);
      v90 = objc_msgSend_numberWithUnsignedInt_(v81, v87, v86, v88, v89);
      v91 = *MEMORY[0x277D19568];
      objc_msgSend_setObject_forKey_(v44, v92, v90, *MEMORY[0x277D19568], v93);

      v98 = objc_msgSend_remoteICEData(v66, v94, v95, v96, v97);
      if (v98)
      {
        CFDictionarySetValue(v44, *MEMORY[0x277D19520], v98);
      }

      v103 = objc_msgSend_remoteNATType(v66, v99, v100, v101, v102);
      if (v103)
      {
        CFDictionarySetValue(v44, *MEMORY[0x277D19538], v103);
      }

      v108 = objc_msgSend_remoteNATIP(v66, v104, v105, v106, v107);
      if (v108)
      {
        CFDictionarySetValue(v44, *MEMORY[0x277D19530], v108);
      }

      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      objc_msgSend_removeObjectForKey_(Mutable, v109, *MEMORY[0x277D19548], v110, v111);
      v112 = MEMORY[0x277CCABB0];
      isVideo = objc_msgSend_isVideo(v300, v113, v114, v115, v116);
      v121 = objc_msgSend_numberWithBool_(v112, v118, isVideo ^ 1u, v119, v120);
      objc_msgSend_setObject_forKey_(Mutable, v122, v121, *MEMORY[0x277D194C8], v123);

      v124 = MEMORY[0x277CCABB0];
      v129 = objc_msgSend_sessionID(v300, v125, v126, v127, v128);
      v133 = objc_msgSend_numberWithUnsignedInt_(v124, v130, v129, v131, v132);
      objc_msgSend_setObject_forKey_(Mutable, v134, v133, v91, v135);

      v140 = objc_msgSend_plistData(v44, v136, v137, v138, v139);
      objc_msgSend_setObject_forKey_(Mutable, v141, v140, *MEMORY[0x277D19558], v142);

      v143 = MEMORY[0x277CCABB0];
      hasReinitiateCapability = objc_msgSend_hasReinitiateCapability(v65, v144, v145, v146, v147);
      v152 = objc_msgSend_numberWithInt_(v143, v149, hasReinitiateCapability, v150, v151);
      objc_msgSend_setObject_forKey_(Mutable, v153, v152, *MEMORY[0x277D194E8], v154);

      v159 = objc_msgSend__extraServerContext(v300, v155, v156, v157, v158);
      if (objc_msgSend_count(v159, v160, v161, v162, v163))
      {
        objc_msgSend_addEntriesFromDictionary_(Mutable, v164, v159, v165, v166);
      }

      v298 = v159;
      v167 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v164, 0, v165, v166);
      objc_msgSend_setObject_forKey_(Mutable, v168, v167, *MEMORY[0x277D19550], v169);

      v170 = sub_254761764();
      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
      {
        v175 = objc_msgSend_conferenceID(v300, v171, v172, v173, v174);
        v180 = objc_msgSend_account(v301, v176, v177, v178, v179);
        *buf = 138412802;
        v307 = v175;
        v308 = 2112;
        v309 = v180;
        v310 = 2112;
        v311 = v301;
        _os_log_impl(&dword_254743000, v170, OS_LOG_TYPE_DEFAULT, "Conference ID: %@     Account: %@    Handle: %@", buf, 0x20u);
      }

      v181 = sub_254761764();
      if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
      {
        v186 = objc_msgSend_account(v301, v182, v183, v184, v185);
        v191 = objc_msgSend_loginStatusMessage(v186, v187, v188, v189, v190);
        *buf = 138412290;
        v307 = v191;
        _os_log_impl(&dword_254743000, v181, OS_LOG_TYPE_DEFAULT, "        Account login status: %@", buf, 0xCu);
      }

      v192 = sub_254761764();
      if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
      {
        v197 = objc_msgSend_account(v301, v193, v194, v195, v196);
        if (objc_msgSend_isActive(v197, v198, v199, v200, v201))
        {
          v202 = @"YES";
        }

        else
        {
          v202 = @"NO";
        }

        *buf = 138412290;
        v307 = v202;
        _os_log_impl(&dword_254743000, v192, OS_LOG_TYPE_DEFAULT, "        Account active: %@", buf, 0xCu);
      }

      v203 = sub_254761764();
      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
      {
        v208 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v204, v205, v206, v207);
        if (objc_msgSend_isConnected(v208, v209, v210, v211, v212))
        {
          v213 = @"YES";
        }

        else
        {
          v213 = @"NO";
        }

        *buf = 138412290;
        v307 = v213;
        _os_log_impl(&dword_254743000, v203, OS_LOG_TYPE_DEFAULT, "        Daemon Connected: %@", buf, 0xCu);
      }

      v214 = sub_254761764();
      if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v307 = Mutable;
        _os_log_impl(&dword_254743000, v214, OS_LOG_TYPE_DEFAULT, "                Response: %@", buf, 0xCu);
      }

      v215 = sub_254761764();
      if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v307 = v44;
        _os_log_impl(&dword_254743000, v215, OS_LOG_TYPE_DEFAULT, "                Invitees: %@", buf, 0xCu);
      }

      v299 = v44;
      v216 = Mutable;

      v221 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v217, v218, v219, v220);
      isConnected = objc_msgSend_isConnected(v221, v222, v223, v224, v225);

      if ((isConnected & 1) == 0)
      {
        v231 = sub_254761764();
        if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_254743000, v231, OS_LOG_TYPE_DEFAULT, "[WARN] Daemon was disconnected, we're connecting here....", buf, 2u);
        }

        v236 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v232, v233, v234, v235);
        objc_msgSend_connectToDaemon(v236, v237, v238, v239, v240);
      }

      v241 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v227, v228, v229, v230);
      v64 = v301;
      v246 = objc_msgSend_ID(v301, v242, v243, v244, v245);
      v251 = objc_msgSend_conferenceID(v300, v247, v248, v249, v250);
      v256 = objc_msgSend_account(v301, v252, v253, v254, v255);
      v261 = objc_msgSend_uniqueID(v256, v257, v258, v259, v260);
      objc_msgSend_respondToVCInvitationWithPerson_properties_conference_account_(v241, v262, v246, v216, v251, v261);

      v263 = v303;
      v44 = v299;
    }

    goto LABEL_77;
  }

  v49 = sub_254761764();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v49, OS_LOG_TYPE_DEFAULT, "  => Failing, missing invitees info (Missing ICE Data)", buf, 2u);
  }

  v50 = sub_254761764();
  if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_29;
  }

  *buf = 0;
  v51 = "[WARN] Failed invite! Invitees info returned nil (Missing ICE Data)";
LABEL_28:
  _os_log_impl(&dword_254743000, v50, OS_LOG_TYPE_DEFAULT, v51, buf, 2u);
LABEL_29:

  sub_254760DA0(v18);
LABEL_79:

  v297 = *MEMORY[0x277D85DE8];
}

void sub_254760730(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__avChatWithGUID_(IMAVChat, a2, *(a1 + 32), a4, a5);
  sub_25475ABDC(@"Network");
  v11 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v7, v8, v9, v10);
  if (objc_msgSend_allowAnyNetwork(v11, v12, v13, v14, v15))
  {
    v16 = sub_254761764();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, "We're allowed to use any network, bypassing check", &buf, 2u);
    }

    v17 = *(a1 + 40);
    v18 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    sub_254759A18(1);
    v23 = 5;
    if (*(a1 + 56))
    {
      v23 = 1;
    }

    if (*(a1 + 57))
    {
      v24 = v23 | 2;
    }

    else
    {
      v24 = v23;
    }

    v25 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v19, v20, v21, v22);
    v30 = objc_msgSend_nonWifiFaceTimeAvailable(v25, v26, v27, v28, v29);

    if (v30)
    {
      v35 = 7.0;
    }

    else
    {
      v35 = 30.0;
    }

    if (v30)
    {
      v36 = v24;
    }

    else
    {
      v36 = v24 | 2;
    }

    if (v30)
    {
      v37 = 3;
    }

    else
    {
      v37 = 1;
    }

    v38 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v31, v32, v33, v34);
    isScreenLit = objc_msgSend_isScreenLit(v38, v39, v40, v41, v42);

    if (isScreenLit)
    {
      v44 = objc_alloc_init(MEMORY[0x277CBEAA8]);
      v49 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v45, v46, v47, v48);
      v54 = objc_msgSend_dateScreenLightLastChanged(v49, v50, v51, v52, v53);

      objc_msgSend_timeIntervalSinceDate_(v44, v55, v54, v56, v57);
      v59 = v58;
      v60 = sub_254761764();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v59;
        _os_log_impl(&dword_254743000, v60, OS_LOG_TYPE_DEFAULT, "Time since lights on: %f", &buf, 0xCu);
      }

      v61 = 0.0;
      if (v59 < v35)
      {
        v61 = v35 - v59;
      }

      if (v59 > 0.0)
      {
        v35 = v61;
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v93 = 0x2020000000;
    v94 = 0;
    IMTimeOfDay();
    v63 = v62;
    v68 = objc_msgSend__timings(v6, v64, v65, v66, v67);
    objc_msgSend_startTimingForKey_(v68, v69, @"network-check", v70, v71);

    v72 = sub_254761764();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *v88 = 134218240;
      v89 = 0x404E000000000000;
      v90 = 2048;
      v91 = v35;
      _os_log_impl(&dword_254743000, v72, OS_LOG_TYPE_DEFAULT, "Starting availability check with network timeout: %fs   wifi timeout: %fs", v88, 0x16u);
    }

    v73 = objc_alloc(MEMORY[0x277D19280]);
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = sub_254760B30;
    v82[3] = &unk_2797836E8;
    v74 = *(a1 + 32);
    v87 = v63;
    v83 = v74;
    p_buf = &buf;
    v85 = *(a1 + 48);
    v84 = *(a1 + 40);
    v76 = objc_msgSend_initWithFlags_options_timeout_wifiTimeout_completionBlock_(v73, v75, v37, v36, v82, 60.0, v35);
    objc_msgSend_start(v76, v77, v78, v79, v80);

    _Block_object_dispose(&buf, 8);
  }

  v81 = *MEMORY[0x277D85DE8];
}

void sub_254760B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254760B30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend__avChatWithGUID_(IMAVChat, a2, *(a1 + 32), a4, a5);
  if (objc_msgSend_isActive(v7, v8, v9, v10, v11))
  {
    v16 = objc_msgSend__timings(v7, v12, v13, v14, v15);
    objc_msgSend_stopTimingForKey_(v16, v17, @"network-check", v18, v19);

    v20 = sub_254761764();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      IMTimeOfDay();
      v22 = v21 - *(a1 + 64);
      v38 = 134217984;
      v39 = v22;
      _os_log_impl(&dword_254743000, v20, OS_LOG_TYPE_DEFAULT, "      * Network check complete  (Took %f seconds)", &v38, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = a2;
    v23 = *(*(*(a1 + 56) + 8) + 24);
    v24 = sub_254761764();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      if (v23)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v38 = 138412290;
      v39 = *&v25;
      _os_log_impl(&dword_254743000, v24, OS_LOG_TYPE_DEFAULT, "     Found Usable Network: %@", &v38, 0xCu);
    }

    v26 = sub_254761764();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      if (v23)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v38 = 138412290;
      v39 = *&v27;
      _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "        Found Active WiFi: %@", &v38, 0xCu);
    }

    v28 = *(a1 + 40);
    v29 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v30 = sub_254761764();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v35 = objc_msgSend_state(v7, v31, v32, v33, v34);
      v36 = _NSStringDescriptionForIMAVChatState(v35);
      v38 = 138412290;
      v39 = *&v36;
      _os_log_impl(&dword_254743000, v30, OS_LOG_TYPE_DEFAULT, "Chat state is %@, not finishing operation", &v38, 0xCu);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_254760DA0(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254761184;
  block[3] = &unk_279783738;
  v4 = v1;
  v2 = v1;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

id sub_254760E34(void *a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v63 = 138412290;
    v64 = v6;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Getting network data for: %@", &v63, 0xCu);
  }

  if (v7)
  {
    v13 = objc_msgSend__timings(v5, v9, v10, v11, v12);
    objc_msgSend_startTimingForKey_(v13, v14, @"ice-data-query", v15, v16);

    v20 = objc_msgSend__generateCallInfo_(v6, v17, v7, v18, v19);
    v21 = sub_254761764();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = @"NO";
      if (v20)
      {
        v22 = @"YES";
      }

      v63 = 138412546;
      v64 = v7;
      v65 = 2112;
      v66 = v22;
      _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "   Got call info: %@  (Success: %@)", &v63, 0x16u);
    }

    v27 = objc_msgSend_localICEData(v7, v23, v24, v25, v26);
    v32 = objc_msgSend_localNATIP(v7, v28, v29, v30, v31);
    v37 = objc_msgSend_localNATType(v7, v33, v34, v35, v36);
    v42 = objc_msgSend_localSKEData(v7, v38, v39, v40, v41);
    v47 = objc_msgSend__timings(v5, v43, v44, v45, v46);
    objc_msgSend_stopTimingForKey_(v47, v48, @"ice-data-query", v49, v50);

    v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (objc_msgSend_length(v27, v52, v53, v54, v55))
    {
      objc_msgSend_setObject_forKey_(v51, v56, v27, *MEMORY[0x277D194F0], v57);
      if (v32)
      {
        objc_msgSend_setObject_forKey_(v51, v58, v32, *MEMORY[0x277D19508], v59);
      }

      if (v37)
      {
        objc_msgSend_setObject_forKey_(v51, v58, v37, *MEMORY[0x277D19510], v59);
      }

      if (v42)
      {
        objc_msgSend_setObject_forKey_(v51, v58, v42, *MEMORY[0x277D19560], v59);
      }
    }

    else
    {
      v60 = sub_254761764();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v63 = 138412290;
        v64 = v6;
        _os_log_impl(&dword_254743000, v60, OS_LOG_TYPE_DEFAULT, "[WARN] Could not gather ICE Data for participant: %@", &v63, 0xCu);
      }

      v51 = 0;
    }
  }

  else
  {
    v27 = sub_254761764();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v63 = 138412290;
      v64 = v6;
      _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "[WARN]  *** No CallInfo passed into network check for: %@", &v63, 0xCu);
    }

    v51 = 0;
  }

  v61 = *MEMORY[0x277D85DE8];

  return v51;
}

uint64_t sub_254761184(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], a2, a3, a4, a5);
  v11 = objc_msgSend_nonWifiFaceTimeAvailable(v6, v7, v8, v9, v10);

  v14 = *(a1 + 32);
  if (v11)
  {
    v15 = 6600;
  }

  else
  {
    v15 = 6000;
  }

  return objc_msgSend__endChatWithReason_andError_(v14, v12, 12, v15, v13);
}

void sub_2547611F4(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__callInfoWithState_(a1[4], a2, 3, a4, a5);
  v10 = v6;
  if (v6)
  {
    objc_msgSend_setIsBeingHandedOff_(v6, v7, 1, v8, v9);
    objc_msgSend_setIsReinitiate_(a1[5], v11, 1, v12, v13);
    v18 = objc_msgSend_sharedInstance(IMAVInterface, v14, v15, v16, v17);
    v19 = a1[6];
    v24 = objc_msgSend_callID(v10, v20, v21, v22, v23);
    objc_msgSend_endAVConferenceWithChat_callID_(v18, v25, v19, v24, v26);

    v27 = sub_254761764();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v57 = 138412290;
      v58 = v10;
      _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "Officially stopping the call we're handing off from %@", &v57, 0xCu);
    }

    v28 = a1[6];
    v33 = objc_msgSend_vcPartyID(a1[4], v29, v30, v31, v32);
    objc_msgSend_conferencePersonWithID_mediaDidStall_(v28, v34, v33, 1, v35);

    objc_msgSend__setIsAudioInterrupted_(a1[6], v36, 1, v37, v38);
    objc_msgSend__setIsVideoInterrupted_(a1[6], v39, 1, v40, v41);
  }

  else
  {
    v46 = sub_254761764();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v51 = a1[4];
      v52 = objc_msgSend__participantsCallInfo(v51, v47, v48, v49, v50);
      v57 = 138412546;
      v58 = v51;
      v59 = 2112;
      v60 = v52;
      _os_log_impl(&dword_254743000, v46, OS_LOG_TYPE_DEFAULT, "No connected call info found for participant: %@  (All: %@)", &v57, 0x16u);
    }
  }

  v53 = objc_msgSend_sharedInstance(IMAVInterface, v42, v43, v44, v45);
  objc_msgSend_avChat_prepareConnectionWithCallInfo_(v53, v54, a1[6], a1[5], v55);

  v56 = *MEMORY[0x277D85DE8];
}

id sub_254761764()
{
  if (qword_28134A5C8 != -1)
  {
    sub_25477F954();
  }

  v1 = qword_28134A5D0;

  return v1;
}

uint64_t sub_2547617A8()
{
  v0 = os_log_create("com.apple.imavcore", "Default");
  v1 = qword_28134A5D0;
  qword_28134A5D0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2547620E4(uint64_t a1, const char *a2)
{
  v6 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], a2, *(a1 + 32), sel__connectionTimeout_, 0, 0, *(*(a1 + 32) + 272));
  objc_msgSend__setConnectionTimeoutTimer_(*(a1 + 32), v3, v6, v4, v5);
}

void sub_25476247C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3, a4, a5);
  objc_msgSend__setInviteTimeoutTimerStart_(*(a1 + 32), v7, v6, v8, v9);

  v14 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], v10, *(a1 + 32), sel__invitationTimeout_, 0, 0, *(*(a1 + 32) + 280));
  objc_msgSend__setInviteTimeoutTimer_(*(a1 + 32), v11, v14, v12, v13);
}

void sub_2547628AC(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = 0x4008000000000000;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "Setting first frame timeout timer for %f seconds", &v9, 0xCu);
  }

  v4 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], v3, *(a1 + 32), sel__firstFrameTimeout_, 0, 0, 3.0);
  objc_msgSend__setFirstFrameTimeoutTimer_(*(a1 + 32), v5, v4, v6, v7);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_254764AAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend__callInfoWithState_(*(a1 + 32), a2, 2, a4, a5);
  if (v6 || (objc_msgSend__callInfoWithState_(*(a1 + 32), v7, 3, v8, v9), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v6;
    v14 = sub_254761764();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v14, OS_LOG_TYPE_DEFAULT, "Connection started, passing relay initiate along", buf, 2u);
    }

    v19 = objc_msgSend_sharedInstance(IMAVInterface, v15, v16, v17, v18);
    objc_msgSend_handleRelayInitate_fromParticipant_callInfo_(v19, v20, *(a1 + 40), *(a1 + 32), v13);

    v29 = objc_msgSend_state(*(a1 + 48), v21, v22, v23, v24);
    v30 = *(a1 + 48);
    if (v29 == 3)
    {
      objc_msgSend__clearInvitationTimeoutTimer(v30, v25, v26, v27, v28);
      objc_msgSend__setConnectionTimeoutTimer(*(a1 + 48), v31, v32, v33, v34);
    }

    else if (objc_msgSend_state(v30, v25, v26, v27, v28) == 4)
    {
      objc_msgSend__clearConnectionTimeoutTimer(*(a1 + 48), v35, v36, v37, v38);
      objc_msgSend__clearInvitationTimeoutTimer(*(a1 + 48), v39, v40, v41, v42);
    }
  }

  else
  {
    v43 = objc_msgSend__callInfoWithState_(*(a1 + 32), v10, 1, v11, v12);
    if (v43)
    {
      v13 = v43;
      objc_msgSend_setRelayInitiate_(v43, v44, *(a1 + 40), v45, v46);
    }

    else
    {
      v47 = sub_254761764();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *v48 = 0;
        _os_log_impl(&dword_254743000, v47, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping relay initiate, no call info found", v48, 2u);
      }

      v13 = 0;
    }
  }
}

void sub_254764E1C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__callInfoWithState_(*(a1 + 32), a2, 2, a4, a5);
  if (v6 || (objc_msgSend__callInfoWithState_(*(a1 + 32), v7, 3, v9, v10), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v6;
    v12 = objc_msgSend_state(*(a1 + 40), v7, v8, v9, v10);
    v13 = sub_254761764();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12 >= 3)
    {
      if (v14)
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, "Connection started, passing relay update along", &v29, 2u);
      }

      v19 = objc_msgSend_sharedInstance(IMAVInterface, v15, v16, v17, v18);
      objc_msgSend_handleRelayUpdate_fromParticipant_callInfo_(v19, v20, *(a1 + 48), *(a1 + 32), v11);

      goto LABEL_11;
    }

    if (!v14)
    {
LABEL_10:

      objc_msgSend_setRelayUpdate_(v11, v24, *(a1 + 48), v25, v26);
      goto LABEL_11;
    }

    v29 = 138412290;
    v30 = v11;
    v21 = "Connection has not yet started, but participant call info has: %@";
    v22 = v13;
    v23 = 12;
LABEL_9:
    _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, v21, &v29, v23);
    goto LABEL_10;
  }

  v11 = objc_msgSend__callInfoWithState_(*(a1 + 32), v7, 1, v9, v10);
  v13 = sub_254761764();
  v28 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (!v28)
    {
      goto LABEL_10;
    }

    LOWORD(v29) = 0;
    v21 = "Connection has not yet started, holding onto relay update";
    v22 = v13;
    v23 = 2;
    goto LABEL_9;
  }

  if (v28)
  {
    LOWORD(v29) = 0;
    _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping relay update, no call info found", &v29, 2u);
  }

  v11 = v13;
LABEL_11:

  v27 = *MEMORY[0x277D85DE8];
}

void sub_254765198(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend__callInfoWithState_(*(a1 + 32), a2, 2, a4, a5);
  if (v6 || (objc_msgSend__callInfoWithState_(*(a1 + 32), v7, 3, v9, v10), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v6;
    if (objc_msgSend_state(*(a1 + 40), v7, v8, v9, v10) < 3)
    {
      objc_msgSend_setRelayCancel_(v11, v12, *(a1 + 48), v13, v14);
      v22 = sub_254761764();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "Connection has not yet started, holding onto relay cancel", v28, 2u);
      }
    }

    else
    {
      v15 = sub_254761764();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "Connection started, passing relay cancel along", buf, 2u);
      }

      v20 = objc_msgSend_sharedInstance(IMAVInterface, v16, v17, v18, v19);
      objc_msgSend_handleRelayCancel_fromParticipant_callInfo_(v20, v21, *(a1 + 48), *(a1 + 32), v11);
    }
  }

  else
  {
    v23 = objc_msgSend__callInfoWithState_(*(a1 + 32), v7, 1, v9, v10);
    if (v23)
    {
      v11 = v23;
      objc_msgSend_setRelayCancel_(v23, v24, *(a1 + 48), v25, v26);
    }

    else
    {
      v11 = sub_254761764();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping relay cancel, no call info found", v27, 2u);
      }
    }
  }
}

uint64_t sub_254768DFC()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAC60]);
  v1 = qword_28134A468;
  qword_28134A468 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25476B5AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_applicationProxyForIdentifier_(MEMORY[0x277CC1E60], a2, @"com.apple.facetime", a4, a5);
  v10 = objc_msgSend_machOUUIDs(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_firstObject(v10, v11, v12, v13, v14);
  v16 = qword_27F6106F0;
  qword_27F6106F0 = v15;

  if (!qword_27F6106F0)
  {
    v17 = sub_254761764();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = @"com.apple.facetime";
      _os_log_impl(&dword_254743000, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not determine UUID for %@", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25476BCFC(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "Could not create AVConference for avChat %@", &v8, 0xCu);
  }

  result = objc_msgSend__endChatWithReason_andError_(*(a1 + 32), v4, 15, 6100, v5);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25476E930(void **a1)
{
  v187 = *MEMORY[0x277D85DE8];
  CFPreferencesAppSynchronize(@"com.apple.conference");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disablePeerCerts", @"com.apple.conference", 0);
  v3 = CFPreferencesGetAppBooleanValue(@"disableKeyExchange", @"com.apple.conference", 0) == 0;
  v4 = objc_alloc_init(qword_28134A478);
  objc_msgSend_setIsKeyExchangeEnabled_(v4, v5, v3, v6, v7);
  objc_msgSend_setIsAudioEnabled_(v4, v8, 1, v9, v10);
  isVideo = objc_msgSend_isVideo(a1[4], v11, v12, v13, v14);
  objc_msgSend_setIsVideoEnabled_(v4, v16, isVideo, v17, v18);
  v19 = CFPreferencesGetAppBooleanValue(@"forceRelay", @"com.apple.conference", 0) != 0;
  objc_msgSend_setIsRelayForced_(v4, v20, v19, v21, v22);
  v23 = CFPreferencesGetAppBooleanValue(@"disableRelay", @"com.apple.conference", 0) == 0;
  objc_msgSend_setIsRelayEnabled_(v4, v24, v23, v25, v26);
  v30 = objc_msgSend__deviceRoleForAVChat_(a1[5], v27, a1[4], v28, v29);
  objc_msgSend_setDeviceRole_(v4, v31, v30, v32, v33);
  if (IMGetAppBoolForKey())
  {
    objc_msgSend_setIsAudioPausedToStart_(v4, v34, 1, v35, v36);
  }

  if (IMGetAppBoolForKey())
  {
    objc_msgSend_setIsVideoPausedToStart_(v4, v37, 1, v39, v40);
  }

  if ((objc_msgSend_isVideo(a1[4], v37, v38, v39, v40) & 1) == 0)
  {
    objc_msgSend_setIsVideoPausedToStart_(v4, v41, 1, v43, v44);
    objc_msgSend_setIsVideoEnabled_(v4, v45, 0, v46, v47);
  }

  v48 = objc_msgSend_callID(a1[6], v41, v42, v43, v44);
  v49 = sub_254761764();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = a1[4];
    *buf = 138412546;
    v184 = v50;
    v185 = 1024;
    LODWORD(v186) = v48;
    _os_log_impl(&dword_254743000, v49, OS_LOG_TYPE_DEFAULT, "chat: %@  callID: %d", buf, 0x12u);
  }

  v51 = v48;

  v56 = objc_msgSend_peerCN(a1[6], v52, v53, v54, v55);
  if (objc_msgSend_isReinitiate(a1[6], v57, v58, v59, v60))
  {
    v65 = a1[7];
    v66 = objc_msgSend_localParticipant(a1[4], v61, v62, v63, v64);
    isVideoPaused = objc_msgSend_isVideoPaused(v66, v67, v68, v69, v70);
    v76 = objc_msgSend_callID(a1[6], v72, v73, v74, v75);
    objc_msgSend_setPauseVideo_callID_error_(v65, v77, isVideoPaused, v76, 0);
  }

  if (!AppBooleanValue)
  {
    v78 = sub_254761764();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v184 = v56;
      _os_log_impl(&dword_254743000, v78, OS_LOG_TYPE_DEFAULT, "Setting peer CN to: %@", buf, 0xCu);
    }

    v83 = objc_msgSend__timings(a1[4], v79, v80, v81, v82);
    objc_msgSend_startTimingForKey_(v83, v84, @"setting-peer-cn-time", v85, v86);

    objc_msgSend_setPeerCN_callID_(a1[7], v87, v56, v51, v88);
    v93 = objc_msgSend__timings(a1[4], v89, v90, v91, v92);
    objc_msgSend_stopTimingForKey_(v93, v94, @"setting-peer-cn-time", v95, v96);
  }

  v97 = objc_msgSend_peerProtocolVersion(a1[6], v61, v62, v63, v64);
  v102 = objc_msgSend_integerValue(v97, v98, v99, v100, v101);

  v103 = v102 > 1;
  objc_msgSend_setPeerProtocolVersion_forCallID_(a1[7], v104, v103, v51, v105);
  v106 = sub_254761764();
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v184) = v103;
    _os_log_impl(&dword_254743000, v106, OS_LOG_TYPE_DEFAULT, "Setting peer protocol version %d", buf, 8u);
  }

  v107 = sub_25476EFC4(a1[6]);
  v108 = sub_254761764();
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v184 = v51;
    v185 = 2112;
    v186 = v4;
    _os_log_impl(&dword_254743000, v108, OS_LOG_TYPE_DEFAULT, "Calling startConnectionWithCallID with callID %ld capabilities %@", buf, 0x16u);
  }

  v117 = objc_msgSend_relayInitiate(a1[6], v109, v110, v111, v112);
  if (v117)
  {
    v118 = objc_msgSend_relayInitiate(a1[6], v113, v114, v115, v116);
    v119 = sub_25476F128(v118);
  }

  else
  {
    v119 = 0;
  }

  v120 = sub_254761764();
  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
  {
    v125 = objc_msgSend_localParticipant(a1[4], v121, v122, v123, v124);
    v130 = objc_msgSend_vcPartyID(v125, v126, v127, v128, v129);
    v135 = objc_msgSend_vcPartyID(a1[8], v131, v132, v133, v134);
    *buf = 138412546;
    v184 = v130;
    v185 = 2112;
    v186 = v135;
    _os_log_impl(&dword_254743000, v120, OS_LOG_TYPE_DEFAULT, "Calling startConnection for: %@ <=> %@", buf, 0x16u);
  }

  v140 = objc_msgSend__timings(a1[4], v136, v137, v138, v139);
  objc_msgSend_startTimingForKey_(v140, v141, @"start-connection-time", v142, v143);

  v144 = a1[7];
  isCaller = objc_msgSend_isCaller(a1[4], v145, v146, v147, v148);
  v182 = 0;
  v151 = objc_msgSend_startConnectionWithCallID_usingInviteData_isCaller_relayResponseDict_didOriginateRelayRequest_capabilities_error_(v144, v150, v51, v107, isCaller, v119, 0, v4, &v182);
  v152 = v182;
  v157 = objc_msgSend__timings(a1[4], v153, v154, v155, v156);
  objc_msgSend_stopTimingForKey_(v157, v158, @"start-connection-time", v159, v160);

  objc_msgSend_setRelayInitiate_(a1[6], v161, 0, v162, v163);
  objc_msgSend_setState_(a1[6], v164, 2, v165, v166);
  objc_msgSend__setConnectionStarted_(a1[4], v167, 1, v168, v169);
  if ((v151 & 1) == 0)
  {
    v170 = sub_254761764();
    if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v184 = v152;
      _os_log_impl(&dword_254743000, v170, OS_LOG_TYPE_DEFAULT, "[WARN]         startConnectionWithParticipantID error: %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25476F870;
  block[3] = &unk_279783788;
  v181 = v151;
  v171 = a1[6];
  v172 = a1[5];
  v176 = v171;
  v177 = v172;
  v178 = a1[8];
  v179 = a1[4];
  v180 = v152;
  v173 = v152;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v174 = *MEMORY[0x277D85DE8];
}

id sub_25476EFC4(void *a1)
{
  v5 = a1;
  if (!qword_27F6106E0)
  {
    v6 = MEMORY[0x259C189A0]("AVConferenceInviteDataConnectionBlob", @"AVConference");
    if (v6)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&qword_27F6106E0, v7);
  }

  if (!qword_27F6106E8)
  {
    v8 = MEMORY[0x259C189A0]("AVConferenceInviteDataSKEBlob", @"AVConference");
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    objc_storeStrong(&qword_27F6106E8, v9);
  }

  v10 = objc_msgSend_remoteSKEData(v5, v1, v2, v3, v4);
  if (v10)
  {
  }

  else
  {
    Mutable = objc_msgSend_remoteICEData(v5, v11, v12, v13, v14);

    if (!Mutable)
    {
      goto LABEL_19;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v20 = objc_msgSend_remoteSKEData(v5, v16, v17, v18, v19);
  if (v20)
  {
    CFDictionarySetValue(Mutable, qword_27F6106E8, v20);
  }

  v25 = objc_msgSend_remoteICEData(v5, v21, v22, v23, v24);
  if (v25)
  {
    CFDictionarySetValue(Mutable, qword_27F6106E0, v25);
  }

LABEL_19:

  return Mutable;
}

id sub_25476F128(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = *MEMORY[0x277D18F90];
  v7 = objc_msgSend_objectForKey_(v1, v4, *MEMORY[0x277D18F90], v5, v6);

  if (v7)
  {
    v11 = objc_msgSend_objectForKey_(v1, v8, v3, v9, v10);
    objc_msgSend_setObject_forKey_(v2, v12, v11, qword_28134A520, v13);
  }

  v14 = *MEMORY[0x277D18FB0];
  v15 = objc_msgSend_objectForKey_(v1, v8, *MEMORY[0x277D18FB0], v9, v10);

  if (v15)
  {
    v19 = objc_msgSend_objectForKey_(v1, v16, v14, v17, v18);
    objc_msgSend_setObject_forKey_(v2, v20, v19, qword_28134A4B8, v21);
  }

  v22 = *MEMORY[0x277D18FA0];
  v23 = objc_msgSend_objectForKey_(v1, v16, *MEMORY[0x277D18FA0], v17, v18);

  if (v23)
  {
    v27 = objc_msgSend_objectForKey_(v1, v24, v22, v25, v26);
    objc_msgSend_setObject_forKey_(v2, v28, v27, qword_28134A4C8, v29);
  }

  v30 = *MEMORY[0x277D18FA8];
  v31 = objc_msgSend_objectForKey_(v1, v24, *MEMORY[0x277D18FA8], v25, v26);

  if (v31)
  {
    v35 = objc_msgSend_objectForKey_(v1, v32, v30, v33, v34);
    objc_msgSend_setObject_forKey_(v2, v36, v35, qword_28134A4C0, v37);
  }

  v38 = *MEMORY[0x277D18F58];
  v39 = objc_msgSend_objectForKey_(v1, v32, *MEMORY[0x277D18F58], v33, v34);

  if (v39)
  {
    v43 = objc_msgSend_objectForKey_(v1, v40, v38, v41, v42);
    objc_msgSend_setObject_forKey_(v2, v44, v43, qword_28134A500, v45);
  }

  v46 = *MEMORY[0x277D18F68];
  v47 = objc_msgSend_objectForKey_(v1, v40, *MEMORY[0x277D18F68], v41, v42);

  if (v47)
  {
    v51 = objc_msgSend_objectForKey_(v1, v48, v46, v49, v50);
    objc_msgSend_setObject_forKey_(v2, v52, v51, qword_28134A4F8, v53);
  }

  v54 = *MEMORY[0x277D18F50];
  v55 = objc_msgSend_objectForKey_(v1, v48, *MEMORY[0x277D18F50], v49, v50);

  if (v55)
  {
    v59 = objc_msgSend_objectForKey_(v1, v56, v54, v57, v58);
    objc_msgSend_setObject_forKey_(v2, v60, v59, qword_28134A510, v61);
  }

  v62 = *MEMORY[0x277D18F60];
  v63 = objc_msgSend_objectForKey_(v1, v56, *MEMORY[0x277D18F60], v57, v58);

  if (v63)
  {
    v67 = objc_msgSend_objectForKey_(v1, v64, v62, v65, v66);
    objc_msgSend_setObject_forKey_(v2, v68, v67, qword_28134A508, v69);
  }

  v70 = *MEMORY[0x277D18FE8];
  v71 = objc_msgSend_objectForKey_(v1, v64, *MEMORY[0x277D18FE8], v65, v66);

  if (v71)
  {
    v75 = objc_msgSend_objectForKey_(v1, v72, v70, v73, v74);
    objc_msgSend_setObject_forKey_(v2, v76, v75, qword_28134A480, v77);
  }

  v78 = *MEMORY[0x277D18F48];
  v79 = objc_msgSend_objectForKey_(v1, v72, *MEMORY[0x277D18F48], v73, v74);

  if (v79)
  {
    v83 = objc_msgSend_objectForKey_(v1, v80, v78, v81, v82);
    objc_msgSend_setObject_forKey_(v2, v84, v83, qword_28134A518, v85);
  }

  v86 = *MEMORY[0x277D18FE0];
  v87 = objc_msgSend_objectForKey_(v1, v80, *MEMORY[0x277D18FE0], v81, v82);

  if (v87)
  {
    v91 = objc_msgSend_objectForKey_(v1, v88, v86, v89, v90);
    objc_msgSend_setObject_forKey_(v2, v92, v91, qword_28134A488, v93);
  }

  v94 = *MEMORY[0x277D18FD8];
  v95 = objc_msgSend_objectForKey_(v1, v88, *MEMORY[0x277D18FD8], v89, v90);

  if (v95)
  {
    v99 = objc_msgSend_objectForKey_(v1, v96, v94, v97, v98);
    objc_msgSend_setObject_forKey_(v2, v100, v99, qword_28134A490, v101);
  }

  v102 = *MEMORY[0x277D18F70];
  v103 = objc_msgSend_objectForKey_(v1, v96, *MEMORY[0x277D18F70], v97, v98);

  if (v103)
  {
    v107 = objc_msgSend_objectForKey_(v1, v104, v102, v105, v106);
    objc_msgSend_setObject_forKey_(v2, v108, v107, qword_28134A4F0, v109);
  }

  v110 = *MEMORY[0x277D18F88];
  v111 = objc_msgSend_objectForKey_(v1, v104, *MEMORY[0x277D18F88], v105, v106);

  if (v111)
  {
    v115 = objc_msgSend_objectForKey_(v1, v112, v110, v113, v114);
    objc_msgSend_setObject_forKey_(v2, v116, v115, qword_28134A4D8, v117);
  }

  v118 = *MEMORY[0x277D18FB8];
  v119 = objc_msgSend_objectForKey_(v1, v112, *MEMORY[0x277D18FB8], v113, v114);

  if (v119)
  {
    v123 = objc_msgSend_objectForKey_(v1, v120, v118, v121, v122);
    objc_msgSend_setObject_forKey_(v2, v124, v123, qword_28134A4B0, v125);
  }

  v126 = *MEMORY[0x277D18FD0];
  v127 = objc_msgSend_objectForKey_(v1, v120, *MEMORY[0x277D18FD0], v121, v122);

  if (v127)
  {
    v131 = objc_msgSend_objectForKey_(v1, v128, v126, v129, v130);
    objc_msgSend_setObject_forKey_(v2, v132, v131, qword_28134A498, v133);
  }

  v134 = *MEMORY[0x277D18FC0];
  v135 = objc_msgSend_objectForKey_(v1, v128, *MEMORY[0x277D18FC0], v129, v130);

  if (v135)
  {
    v139 = objc_msgSend_objectForKey_(v1, v136, v134, v137, v138);
    objc_msgSend_setObject_forKey_(v2, v140, v139, qword_28134A4A8, v141);
  }

  v142 = *MEMORY[0x277D18FC8];
  v143 = objc_msgSend_objectForKey_(v1, v136, *MEMORY[0x277D18FC8], v137, v138);

  if (v143)
  {
    v147 = objc_msgSend_objectForKey_(v1, v144, v142, v145, v146);
    objc_msgSend_setObject_forKey_(v2, v148, v147, qword_28134A4A0, v149);
  }

  v150 = *MEMORY[0x277D18F78];
  v151 = objc_msgSend_objectForKey_(v1, v144, *MEMORY[0x277D18F78], v145, v146);

  if (v151)
  {
    v155 = objc_msgSend_objectForKey_(v1, v152, v150, v153, v154);
    objc_msgSend_setObject_forKey_(v2, v156, v155, qword_28134A4E8, v157);
  }

  v158 = *MEMORY[0x277D18F80];
  v159 = objc_msgSend_objectForKey_(v1, v152, *MEMORY[0x277D18F80], v153, v154);

  if (v159)
  {
    v163 = objc_msgSend_objectForKey_(v1, v160, v158, v161, v162);
    objc_msgSend_setObject_forKey_(v2, v164, v163, qword_28134A4E0, v165);
  }

  if (qword_28134A4D0)
  {
    v166 = *MEMORY[0x277D18F98];
    v167 = objc_msgSend_objectForKey_(v1, v160, *MEMORY[0x277D18F98], v161, v162);

    if (v167)
    {
      v171 = objc_msgSend_objectForKey_(v1, v168, v166, v169, v170);
      objc_msgSend_setObject_forKey_(v2, v172, v171, qword_28134A4D0, v173);
    }
  }

  return v2;
}

void sub_25476F870(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 72) == 1)
  {
    v10 = objc_msgSend_relayInitiate(*(a1 + 32), a2, a3, a4, a5);
    if (v10)
    {
      v11 = sub_254761764();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254743000, v11, OS_LOG_TYPE_DEFAULT, "Also passing along a pending relay initate", buf, 2u);
      }

      objc_msgSend_handleRelayInitate_fromParticipant_callInfo_(*(a1 + 40), v12, v10, *(a1 + 48), *(a1 + 32));
      objc_msgSend_setRelayInitiate_(*(a1 + 32), v13, 0, v14, v15);
    }

    v16 = objc_msgSend_relayUpdate(*(a1 + 32), v6, v7, v8, v9);

    if (v16)
    {
      v21 = sub_254761764();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "Also passing along a pending relay update", v35, 2u);
      }

      objc_msgSend_handleRelayUpdate_fromParticipant_callInfo_(*(a1 + 40), v22, v16, *(a1 + 48), *(a1 + 32));
      objc_msgSend_setRelayUpdate_(*(a1 + 32), v23, 0, v24, v25);
    }

    v26 = objc_msgSend_relayCancel(*(a1 + 32), v17, v18, v19, v20);

    if (v26)
    {
      v27 = sub_254761764();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&dword_254743000, v27, OS_LOG_TYPE_DEFAULT, "Also passing along a pending relay cancel", v34, 2u);
      }

      objc_msgSend_handleRelayCancel_fromParticipant_callInfo_(*(a1 + 40), v28, v26, *(a1 + 48), *(a1 + 32));
      objc_msgSend_setRelayCancel_(*(a1 + 32), v29, 0, v30, v31);
    }
  }

  else
  {
    v32 = *(a1 + 56);
    v33 = *(a1 + 64);

    objc_msgSend__handleAVError_(v32, a2, v33, a4, a5);
  }
}

void sub_25476FD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_25476FD7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25476FD94(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v192 = *MEMORY[0x277D85DE8];
  v180 = 0;
  v181 = &v180;
  v182 = 0x3032000000;
  v183 = sub_25476FD7C;
  v184 = sub_25476FD8C;
  v185 = 0;
  v6 = objc_msgSend_localParticipant(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend__timings(*(a1 + 32), v7, v8, v9, v10);
  objc_msgSend_startTimingForKey_(v11, v12, @"initialize-new-call-time", v13, v14);

  v18 = objc_msgSend__deviceRoleForAVChat_(*(a1 + 40), v15, *(a1 + 32), v16, v17);
  v22 = objc_msgSend_initializeNewCallWithDeviceRole_(*(a1 + 48), v19, v18, v20, v21);
  objc_msgSend_setCallID_(*(a1 + 56), v23, v22, v24, v25);
  v30 = objc_msgSend__timings(*(a1 + 32), v26, v27, v28, v29);
  objc_msgSend_stopTimingForKey_(v30, v31, @"initialize-new-call-time", v32, v33);

  v34 = sub_254761764();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v187 = v22;
    v188 = 1024;
    LODWORD(v189) = v18;
    _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, "Created call ID %ld with device role %d", buf, 0x12u);
  }

  v35 = sub_254761764();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v40 = *(a1 + 32);
    v41 = *(a1 + 64);
    v42 = objc_msgSend__bustedCallID(v40, v36, v37, v38, v39);
    *buf = 138412802;
    v187 = v40;
    v188 = 2112;
    v189 = v41;
    v190 = 1024;
    v191 = v42;
    _os_log_impl(&dword_254743000, v35, OS_LOG_TYPE_DEFAULT, "chat: %@  handle: %@ callID: %d", buf, 0x1Cu);
  }

  v43 = sub_254761764();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v48 = objc_msgSend_vcPartyID(v6, v44, v45, v46, v47);
    *buf = 138412290;
    v187 = v48;
    _os_log_impl(&dword_254743000, v43, OS_LOG_TYPE_DEFAULT, "Getting connection data for: %@", buf, 0xCu);
  }

  v49 = sub_254761764();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v54 = *(a1 + 32);
    v55 = *(a1 + 64);
    v56 = objc_msgSend__bustedCallID(v54, v50, v51, v52, v53);
    *buf = 138412802;
    v187 = v54;
    v188 = 2112;
    v189 = v55;
    v190 = 1024;
    v191 = v56;
    _os_log_impl(&dword_254743000, v49, OS_LOG_TYPE_DEFAULT, "chat: %@  handle: %@ callID: %d", buf, 0x1Cu);
  }

  sub_25475ABDC(@"AVConference Configuration");
  v61 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], v57, v58, v59, v60);
  v66 = objc_msgSend_nonWifiFaceTimeAvailable(v61, v62, v63, v64, v65);

  if (v66)
  {
    objc_msgSend_setRequiresWifi_(*(a1 + 48), v67, 0, v68, v69);
  }

  v70 = sub_254761764();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    v71 = @"YES";
    if (v66)
    {
      v71 = @"NO";
    }

    *buf = 138412290;
    v187 = v71;
    _os_log_impl(&dword_254743000, v70, OS_LOG_TYPE_DEFAULT, "setRequiresWiFi: %@ after checking network availability", buf, 0xCu);
  }

  v76 = objc_msgSend__timings(*(a1 + 32), v72, v73, v74, v75);
  objc_msgSend_stopTimingForKey_(v76, v77, @"time-to-connection-data-gathering", v78, v79);

  v84 = objc_msgSend__timings(*(a1 + 32), v80, v81, v82, v83);
  objc_msgSend_startTimingForKey_(v84, v85, @"connection-data-time", v86, v87);

  v88 = dispatch_semaphore_create(0);
  v93 = objc_msgSend_peerCN(*(a1 + 56), v89, v90, v91, v92);

  if (v93)
  {
    v98 = *(a1 + 48);
    v99 = objc_msgSend_peerCN(*(a1 + 56), v94, v95, v96, v97);
    v104 = objc_msgSend_callID(*(a1 + 56), v100, v101, v102, v103);
    objc_msgSend_setPeerCN_callID_(v98, v105, v99, v104, v106);
  }

  v107 = sub_254761764();
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254743000, v107, OS_LOG_TYPE_DEFAULT, "Calling inviteDictionaryForCallID", buf, 2u);
  }

  v174[0] = MEMORY[0x277D85DD0];
  v174[1] = 3221225472;
  v174[2] = sub_254770584;
  v174[3] = &unk_2797837D8;
  v108 = *(a1 + 56);
  v109 = *(a1 + 80);
  v177 = *(a1 + 72);
  v178 = &v180;
  v179 = v109;
  v175 = v108;
  v110 = v88;
  v176 = v110;
  v111 = MEMORY[0x259C18E10](v174);
  v112 = sub_25476EFC4(*(a1 + 56));
  v113 = *(a1 + 48);
  v114 = dispatch_get_global_queue(2, 0);
  objc_msgSend_inviteDictionaryForCallID_remoteInviteDictionary_nonCellularCandidateTimeout_block_queue_(v113, v115, v22, v112, v111, v114, 0.0);

  v116 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v110, v116))
  {
    v121 = sub_254761764();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v187 = 0x4024000000000000;
      _os_log_impl(&dword_254743000, v121, OS_LOG_TYPE_DEFAULT, "*** Timed out gathering connection data **** (%f seconds)", buf, 0xCu);
    }
  }

  v122 = objc_msgSend__timings(*(a1 + 32), v117, v118, v119, v120);
  objc_msgSend_stopTimingForKey_(v122, v123, @"connection-data-time", v124, v125);

  v126 = sub_254761764();
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
  {
    v131 = objc_msgSend__timings(*(a1 + 32), v127, v128, v129, v130);
    objc_msgSend_totalTimeForKey_(v131, v132, @"connection-data-time", v133, v134);
    *buf = 134217984;
    v187 = v135;
    _os_log_impl(&dword_254743000, v126, OS_LOG_TYPE_DEFAULT, "Connection data gathering took %f", buf, 0xCu);
  }

  if (!objc_msgSend_length(*(*(*(a1 + 72) + 8) + 40), v136, v137, v138, v139))
  {
    v143 = sub_254761764();
    if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v143, OS_LOG_TYPE_DEFAULT, "*** Empty connection data ***", buf, 2u);
    }

    v144 = *(*(a1 + 72) + 8);
    v145 = *(v144 + 40);
    *(v144 + 40) = 0;
  }

  v146 = v181[5];
  if (v146)
  {
    objc_msgSend__handleAVError_(*(a1 + 32), v140, v146, v141, v142);
  }

  if (objc_msgSend_state(*(a1 + 32), v140, v146, v141, v142) == 5)
  {
    objc_msgSend_endConferenceForAVChat_(*(a1 + 40), v147, *(a1 + 32), v148, v149);
    v150 = *(*(a1 + 72) + 8);
    v151 = *(v150 + 40);
    *(v150 + 40) = 0;
  }

  v152 = *(*(*(a1 + 72) + 8) + 40);
  if (v152)
  {
    objc_msgSend_setLocalICEData_(*(a1 + 56), v147, v152, v148, v149);
    v153 = *(a1 + 56);
    v157 = objc_msgSend_getNatIPFromICEData_(*(a1 + 40), v154, *(*(*(a1 + 72) + 8) + 40), v155, v156);
    objc_msgSend_setLocalNATIP_(v153, v158, v157, v159, v160);

    v161 = *(a1 + 56);
    v165 = objc_msgSend_natTypeForAVChat_(*(a1 + 40), v162, *(a1 + 32), v163, v164);
    objc_msgSend_setLocalNATType_(v161, v166, v165, v167, v168);

    v172 = *(*(*(a1 + 80) + 8) + 40);
    if (v172)
    {
      objc_msgSend_setLocalSKEData_(*(a1 + 56), v169, v172, v170, v171);
    }
  }

  _Block_object_dispose(&v180, 8);
  v173 = *MEMORY[0x277D85DE8];
}

void sub_254770518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254770584(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = sub_254761764();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 138412546;
    v42 = v5;
    v43 = 2112;
    v44 = v6;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "   AV Response: %@   Error: %@", &v41, 0x16u);
  }

  if (!qword_27F6106E0)
  {
    v11 = MEMORY[0x259C189A0]("AVConferenceInviteDataConnectionBlob", @"AVConference");
    if (v11)
    {
      v12 = *v11;
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&qword_27F6106E0, v12);
  }

  if (qword_27F6106E8 || ((v13 = MEMORY[0x259C189A0]("AVConferenceInviteDataSKEBlob", @"AVConference")) == 0 ? (v14 = 0) : (v14 = *v13), objc_storeStrong(&qword_27F6106E8, v14), qword_27F6106E8))
  {
    v15 = objc_msgSend_objectForKey_(v5, v8, qword_27F6106E0, v9, v10);
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 1;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15);
  if ((v16 & 1) == 0)
  {
  }

  v17 = sub_254761764();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(*(*(a1 + 48) + 8) + 40);
    v41 = 134217984;
    v42 = v18;
    _os_log_impl(&dword_254743000, v17, OS_LOG_TYPE_DEFAULT, "Got connection data: %p", &v41, 0xCu);
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v22 = sub_254761764();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*(*(a1 + 56) + 8) + 40);
      v41 = 138412290;
      v42 = v23;
      _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Connection data error: %@", &v41, 0xCu);
    }
  }

  v24 = qword_27F6106E8;
  if (qword_27F6106E8)
  {
    v25 = objc_msgSend_objectForKey_(v5, v19, qword_27F6106E8, v20, v21);
  }

  else
  {
    v25 = 0;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v25);
  if (v24)
  {
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v30 = objc_msgSend_remoteSKEData(*(a1 + 32), v26, v27, v28, v29);
    if (v30)
    {
    }

    else
    {
      v36 = objc_msgSend_remoteICEData(*(a1 + 32), v31, v32, v33, v34);

      if (v36)
      {
        goto LABEL_35;
      }
    }

    v35 = sub_254761764();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&dword_254743000, v35, OS_LOG_TYPE_DEFAULT, "[WARN] skeData was nil", &v41, 2u);
    }
  }

LABEL_35:
  v37 = *(*(a1 + 56) + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = v6;
  v39 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
  v40 = *MEMORY[0x277D85DE8];
}

void sub_254770A54(uint64_t a1)
{
  v170 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412802;
    v163 = v4;
    v164 = 1024;
    *v165 = v3;
    *&v165[4] = 2112;
    *&v165[6] = v5;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "conference: %@  didStartSession: %d  withUserInfo: %@", buf, 0x1Cu);
  }

  if (qword_28134A578)
  {
    v9 = objc_msgSend_objectForKey_(*(a1 + 40), v6, qword_28134A578, v7, v8);
    v14 = objc_msgSend_integerValue(v9, v10, v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  if (qword_28134A570)
  {
    v15 = objc_msgSend_objectForKey_(*(a1 + 40), v6, qword_28134A570, v7, v8);
    v20 = objc_msgSend_integerValue(v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = 0;
  }

  if (qword_28134A568)
  {
    v21 = objc_msgSend_objectForKey_(*(a1 + 40), v6, qword_28134A568, v7, v8);
  }

  else
  {
    v21 = 0;
  }

  if (qword_28134A560)
  {
    v22 = objc_msgSend_objectForKey_(*(a1 + 40), v6, qword_28134A560, v7, v8);
    v27 = objc_msgSend_integerValue(v22, v23, v24, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  if (qword_28134A558)
  {
    v28 = objc_msgSend_objectForKey_(*(a1 + 40), v6, qword_28134A558, v7, v8);
    v33 = objc_msgSend_integerValue(v28, v29, v30, v31, v32);
  }

  else
  {
    v33 = 0;
  }

  v34 = sub_254761764();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    v163 = v14;
    v164 = 2112;
    *v165 = v21;
    *&v165[8] = 1024;
    *&v165[10] = v20;
    v166 = 1024;
    v167 = v27;
    v168 = 1024;
    v169 = v33;
    _os_log_impl(&dword_254743000, v34, OS_LOG_TYPE_DEFAULT, "User info callID: %ld error: %@ type: %d local: %d  remote: %d", buf, 0x28u);
  }

  v36 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 48), v35, *(a1 + 32), v14, @"didStartSession");
  v40 = objc_msgSend_participantWithAVConferenceCallID_(v36, v37, v14, v38, v39);
  v44 = objc_msgSend__callInfoForCallID_(v40, v41, v14, v42, v43);
  objc_msgSend_setWaitingToConnect_(v40, v45, 0, v46, v47);
  if (*(a1 + 56) == 1)
  {
    v161 = v20;
    objc_msgSend__setConnectionType_(v36, v48, v20, v49, v50);
    v51 = MEMORY[0x277CCABB0];
    v56 = objc_msgSend_natType(*(a1 + 32), v52, v53, v54, v55);
    v60 = objc_msgSend_numberWithUnsignedInt_(v51, v57, v56, v58, v59);
    objc_msgSend__setNatType_(v36, v61, v60, v62, v63);

    if (v33)
    {
      v67 = 1;
      objc_msgSend__setRemoteNetworkConnectionType_(v36, v64, 1, v65, v66);
    }

    else
    {
      v67 = 2;
      objc_msgSend__setRemoteNetworkConnectionType_(v36, v64, 2, v65, v66);
    }

    if (v27)
    {
      v71 = 1;
      objc_msgSend__setLocalNetworkConnectionType_(v36, v68, 1, v69, v70);
    }

    else
    {
      v71 = 2;
      objc_msgSend__setLocalNetworkConnectionType_(v36, v68, 2, v69, v70);
    }

    if (objc_msgSend_isReinitiate(v44, v72, v73, v74, v75))
    {
      objc_msgSend__setIsAudioInterrupted_(v36, v76, 0, v78, v79);
      objc_msgSend__setIsVideoInterrupted_(v36, v80, 0, v81, v82);
      objc_msgSend_conference_withCallID_remoteMediaStalled_(*(a1 + 48), v83, *(a1 + 32), v14, 0);
      objc_msgSend_conference_videoQualityNotificationForCallID_isDegraded_isRemote_(*(a1 + 48), v84, *(a1 + 32), v14, 0, 1);
    }

    v85 = objc_msgSend_isSendingVideoExpected(*(a1 + 48), v76, v77, v78, v79);

    if (v85)
    {
      v160 = v21;
      v86 = sub_254761764();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v91 = objc_msgSend_isSendingVideoExpected(*(a1 + 48), v87, v88, v89, v90);
        v96 = objc_msgSend_BOOLValue(v91, v92, v93, v94, v95);
        *buf = 67109120;
        LODWORD(v163) = v96;
        _os_log_impl(&dword_254743000, v86, OS_LOG_TYPE_DEFAULT, "Session started and has sendingVideoExpected value %d, updating AVConference's pauseVideo", buf, 8u);
      }

      v97 = *(a1 + 48);
      v98 = *(a1 + 32);
      v103 = objc_msgSend_isSendingVideoExpected(v97, v99, v100, v101, v102);
      v108 = objc_msgSend_BOOLValue(v103, v104, v105, v106, v107);
      objc_msgSend_conference_callID_setPauseVideo_(v97, v109, v98, v14, v108 ^ 1u);

      objc_msgSend_setSendingVideoExpected_(*(a1 + 48), v110, 0, v111, v112);
      v21 = v160;
    }

    v113 = sub_254761764();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v163 = v44;
      _os_log_impl(&dword_254743000, v113, OS_LOG_TYPE_DEFAULT, "Telling the call info %@ that we are connected", buf, 0xCu);
    }

    objc_msgSend_setState_(v44, v114, 3, v115, v116);
    objc_msgSend_setLocalConnectionType_(v44, v117, v71, v118, v119);
    objc_msgSend_setRemoteConnectionType_(v44, v120, v67, v121, v122);
    objc_msgSend__cleanupOrphanedCallInfos(v40, v123, v124, v125, v126);
    if (MarcoShouldLog())
    {
      v131 = sub_25475B1AC(v161);
      MarcoLogCallInfo();

      v132 = MEMORY[0x277CCABB0];
      v137 = objc_msgSend_natType(*(a1 + 32), v133, v134, v135, v136);
      v141 = objc_msgSend_numberWithUnsignedInt_(v132, v138, v137, v139, v140);
      v146 = objc_msgSend_stringValue(v141, v142, v143, v144, v145);
      MarcoLogCallInfo();

      MarcoLogCallInfo();
      MarcoLogCallInfo();
    }

    if ((objc_msgSend_isVideo(v36, v127, v128, v129, v130, v160) & 1) == 0)
    {
      v151 = objc_msgSend_dateConnected(v36, v147, v148, v149, v150);

      if (!v151)
      {
        objc_msgSend__setDateConnected(v36, v147, v152, v153, v150);
        objc_msgSend__submitCallConnectedLogging(v36, v154, v155, v156, v157);
      }
    }
  }

  else
  {
    objc_msgSend_setState_(v44, v48, 4, v49, v50);
    if (v21)
    {
      objc_msgSend__handleAVError_(v36, v147, v21, v158, v150);
    }
  }

  objc_msgSend_conferenceAVConferenceCallID_didConnect_(v36, v147, v14, *(a1 + 56), v150);

  v159 = *MEMORY[0x277D85DE8];
}

void sub_2547711D8(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v34 = 138413058;
    v35 = v4;
    v36 = 1024;
    v37 = v3;
    v38 = 2112;
    v39 = v5;
    v40 = 2112;
    v41 = v6;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "conference: %@  didStopWithCallID: %d   error: %@   callMetadata: %@", &v34, 0x26u);
  }

  v8 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 56), v7, *(a1 + 32), *(a1 + 64), @"didStopWithCallID");
  v12 = objc_msgSend_participantWithAVConferenceCallID_(v8, v9, *(a1 + 64), v10, v11);
  v16 = objc_msgSend__callInfoForCallID_(v12, v13, *(a1 + 64), v14, v15);
  isBeingHandedOff = objc_msgSend_isBeingHandedOff(v16, v17, v18, v19, v20);
  v24 = *(a1 + 48);
  v23 = *(a1 + 56);
  if (isBeingHandedOff)
  {
    objc_msgSend_updateAVChat_withCallMetadata_isFinalUpdate_(v23, v21, v8, v24, 0);
    v25 = sub_254761764();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 64);
      v34 = 67109120;
      LODWORD(v35) = v26;
      _os_log_impl(&dword_254743000, v25, OS_LOG_TYPE_DEFAULT, "call is being handed off, only cleaning this call ID: %d", &v34, 8u);
    }

    objc_msgSend_endAVConferenceWithChat_callID_(*(a1 + 56), v27, v8, *(a1 + 64), v28);
  }

  else
  {
    objc_msgSend_updateAVChat_withCallMetadata_isFinalUpdate_(v23, v21, v8, v24, 1);
    v29 = sub_254761764();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 64);
      v34 = 67109120;
      LODWORD(v35) = v30;
      _os_log_impl(&dword_254743000, v29, OS_LOG_TYPE_DEFAULT, "tearing down normally for call ID: %d", &v34, 8u);
    }

    objc_msgSend_conferenceDidStopWithCallID_error_(v8, v31, *(a1 + 64), *(a1 + 40), v32);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void sub_2547714D0(uint64_t a1, const char *a2)
{
  v11 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 32), a2, *(a1 + 40), 0, @"updateInputFrequencyLevel");
  v7 = objc_msgSend_localParticipant(v11, v3, v4, v5, v6);
  objc_msgSend_setInFrequencyLevel_(v7, v8, *(a1 + 48), v9, v10);
}

void sub_254771620(uint64_t a1, const char *a2)
{
  v11 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 32), a2, *(a1 + 40), 0, @"updateOutputFrequencyLevel");
  v7 = objc_msgSend_localParticipant(v11, v3, v4, v5, v6);
  objc_msgSend_setOutFrequencyLevel_(v7, v8, *(a1 + 48), v9, v10);
}

void sub_2547717D0(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v36 = 138412546;
    v37 = v3;
    v38 = 1024;
    v39 = v4;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "vc: %@  receivedFirstRemoteFrameForCallID: %d", &v36, 0x12u);
  }

  v6 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 40), v5, *(a1 + 32), *(a1 + 48), @"receivedFirstRemoteFrameForCallID");
  objc_msgSend__noteFirstFrame(v6, v7, v8, v9, v10);
  objc_msgSend__clearFirstFrameTimeoutTimer(v6, v11, v12, v13, v14);
  v19 = objc_msgSend_remoteParticipants(v6, v15, v16, v17, v18);
  v24 = objc_msgSend_count(v19, v20, v21, v22, v23);

  if (v24)
  {
    v29 = objc_msgSend_remoteParticipants(v6, v25, v26, v27, v28);
    v34 = objc_msgSend___imFirstObject(v29, v30, v31, v32, v33);
  }

  else
  {
    v34 = 0;
  }

  sub_254771920(@"__kIMAVChatParticipantReceivedFirstFrameNotification", v34, 0);

  v35 = *MEMORY[0x277D85DE8];
}

void sub_254771920(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = sub_254761764();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Posting notification name: %@  object: %@  userInfo: %@", &v16, 0x20u);
  }

  v13 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v9, v10, v11, v12);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v13, v14, v5, v6, v7);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_254771B68(uint64_t a1)
{
  theDict = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = *(a1 + 96);
  if (v6 & 1) == 0 && ((*(a1 + 97) & 1) != 0 || (*(a1 + 98) & 1) != 0 || (*(a1 + 99) & 1) != 0 || (*(a1 + 100)))
  {
    goto LABEL_10;
  }

  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v2, *(a1 + 88), v4, v5);
  if (v7)
  {
    CFDictionarySetValue(theDict, @"__kIMAVChatCameraTypeKey", v7);
  }

  if (v6)
  {
LABEL_10:
    if (*(a1 + 100) != 1)
    {
      goto LABEL_16;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = objc_msgSend_valueWithRect_(MEMORY[0x277CCAE60], v2, v3, v4, v5, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (v9)
  {
    CFDictionarySetValue(theDict, @"__kIMAVChatCameraContentRectKey", v9);
  }

  if (v8)
  {
    v10 = 1;
    goto LABEL_18;
  }

LABEL_16:
  if (*(a1 + 97) != 1)
  {
    goto LABEL_22;
  }

  v10 = 0;
LABEL_18:
  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v2, *(a1 + 92), v4, v5);
  if (v11)
  {
    CFDictionarySetValue(theDict, @"__kIMAVChatCameraOrientationKey", v11);
  }

  if (v10)
  {
    v12 = 1;
    goto LABEL_24;
  }

LABEL_22:
  if (*(a1 + 98) != 1)
  {
    goto LABEL_27;
  }

  v12 = 0;
LABEL_24:
  v13 = objc_msgSend_valueWithSize_(MEMORY[0x277CCAE60], v2, v3, v4, v5, *(a1 + 72), *(a1 + 80));
  if (v13)
  {
    CFDictionarySetValue(theDict, @"__kIMAVChatCameraAspectRatioKey", v13);
  }

  if ((v12 & 1) == 0)
  {
LABEL_27:
    if (*(a1 + 99) != 1)
    {
      goto LABEL_29;
    }
  }

  CFDictionarySetValue(theDict, @"__kIMAVChatCameraWillChangeKey", &unk_286692BC0);
LABEL_29:
  sub_254771920(@"__kIMAVChatParticipantMediaPropertiesChangedNotification", *(a1 + 32), theDict);
}

void sub_254771E60(uint64_t a1)
{
  theDict = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = *(a1 + 61);
  if (*(a1 + 60))
  {
    if ((*(a1 + 61) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if (*(a1 + 61))
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  if (*(a1 + 62) & 1) != 0 || (*(a1 + 63))
  {
    goto LABEL_12;
  }

  v7 = 1;
LABEL_6:
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v2, *(a1 + 56), v4, v5);
  if (v8)
  {
    CFDictionarySetValue(theDict, @"__kIMAVChatCameraOrientationKey", v8);
  }

  if ((v7 & 1) == 0)
  {
LABEL_12:
    if (*(a1 + 62) != 1)
    {
      goto LABEL_16;
    }
  }

  v9 = objc_msgSend_valueWithSize_(MEMORY[0x277CCAE60], v2, v3, v4, v5, *(a1 + 40), *(a1 + 48));
  if (v9)
  {
    CFDictionarySetValue(theDict, @"__kIMAVChatCameraAspectRatioKey", v9);
  }

LABEL_16:
  sub_254771920(@"__kIMAVChatParticipantScreenPropertiesChangedNotification", *(a1 + 32), theDict);
}

void sub_25477206C(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    *buf = 138412546;
    v56 = v3;
    v57 = 1024;
    v58 = v4;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "vc: %@  callID: %d", buf, 0x12u);
  }

  sub_254772244(*(a1 + 40));
  v6 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 48), v5, *(a1 + 32), *(a1 + 56), @"remoteScreenAttributesChanged");
  v11 = objc_msgSend_remoteParticipants(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_lastObject(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_camera(*(a1 + 40), v17, v18, v19, v20);
  v26 = objc_msgSend_orientation(*(a1 + 40), v22, v23, v24, v25);
  objc_msgSend_ratio(*(a1 + 40), v27, v28, v29, v30);
  v32 = v31;
  v34 = v33;
  objc_msgSend_localAspectRatioForCameraOrientation_cameraType_(v16, v35, v26, v21, v36);
  v43 = v34 != v42 || v32 != v41;
  v44 = objc_msgSend__screenOrientation(v16, v37, v38, v39, v40);
  v48 = v44;
  if (v43 || v44 != v26)
  {
    objc_msgSend__setScreenOrientation_(v16, v45, v26, v46, v47);
    if (v26 > 1)
    {
      objc_msgSend__setRemotePIPLandscapeOrientation_(v16, v49, v50, v51, v52, v32, v34);
    }

    else
    {
      objc_msgSend__setRemotePIPPortraitOrientation_(v16, v49, v50, v51, v52, v32, v34);
    }

    objc_msgSend__postParticipantScreenAttributesChangeNotification_cameraChanged_orientationChanged_aspectChanged_cameraWillSwitch_camera_orentation_aspect_(IMAVConferenceInterface, v53, v16, 0, v48 != v26, v43, 0, v21, v32, v34, v26);
  }

  v54 = *MEMORY[0x277D85DE8];
}

void sub_254772244(void *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v6 = objc_msgSend_camera(v1, v2, v3, v4, v5);
  v11 = objc_msgSend_orientation(v1, v7, v8, v9, v10);
  objc_msgSend_ratio(v1, v12, v13, v14, v15);
  v17 = v16;
  v19 = v18;
  v24 = objc_msgSend_cameraSwitching(v1, v20, v21, v22, v23);
  objc_msgSend_contentsRect(v1, v25, v26, v27, v28);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = sub_254761764();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v47 = 138412290;
    v48 = v1;
    _os_log_impl(&dword_254743000, v37, OS_LOG_TYPE_DEFAULT, "    Attributes: %@", &v47, 0xCu);
  }

  v38 = sub_254761764();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v47 = 67109120;
    LODWORD(v48) = v6;
    _os_log_impl(&dword_254743000, v38, OS_LOG_TYPE_DEFAULT, "          Camera: %d", &v47, 8u);
  }

  v39 = sub_254761764();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v47 = 67109120;
    LODWORD(v48) = v11;
    _os_log_impl(&dword_254743000, v39, OS_LOG_TYPE_DEFAULT, "     Orientation: %d", &v47, 8u);
  }

  v40 = sub_254761764();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v50.width = v17;
    v50.height = v19;
    v41 = NSStringFromSize(v50);
    v47 = 138412290;
    v48 = v41;
    _os_log_impl(&dword_254743000, v40, OS_LOG_TYPE_DEFAULT, "          Aspect: %@", &v47, 0xCu);
  }

  v42 = sub_254761764();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v51.origin.x = v30;
    v51.origin.y = v32;
    v51.size.width = v34;
    v51.size.height = v36;
    v43 = NSStringFromRect(v51);
    v47 = 138412290;
    v48 = v43;
    _os_log_impl(&dword_254743000, v42, OS_LOG_TYPE_DEFAULT, "    Content Rect: %@", &v47, 0xCu);
  }

  v44 = sub_254761764();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = @"NO";
    if (v24)
    {
      v45 = @"YES";
    }

    v47 = 138412290;
    v48 = v45;
    _os_log_impl(&dword_254743000, v44, OS_LOG_TYPE_DEFAULT, "   Camera switch: %@", &v47, 0xCu);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_254772620(uint64_t a1)
{
  v131 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    *buf = 138412546;
    v128 = v3;
    v129 = 1024;
    v130 = v4;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "vc: %@  callID: %d", buf, 0x12u);
  }

  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 56);
    *buf = 67109120;
    LODWORD(v128) = v6;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Informed about video attributes change for call ID: %d", buf, 8u);
  }

  v124 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 40), v7, *(a1 + 32), *(a1 + 56), @"remoteVideoAttributesChanged");
  v12 = objc_msgSend_remoteParticipants(v124, v8, v9, v10, v11);
  v17 = objc_msgSend_lastObject(v12, v13, v14, v15, v16);

  v22 = objc_msgSend_camera(*(a1 + 48), v18, v19, v20, v21);
  v27 = objc_msgSend_orientation(*(a1 + 48), v23, v24, v25, v26);
  objc_msgSend_ratio(*(a1 + 48), v28, v29, v30, v31);
  v33 = v32;
  v35 = v34;
  v126 = objc_msgSend_cameraSwitching(*(a1 + 48), v36, v37, v38, v39);
  objc_msgSend_contentsRect(*(a1 + 48), v40, v41, v42, v43);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_254772244(*(a1 + 48));
  v56 = objc_msgSend_cameraType(v17, v52, v53, v54, v55);
  v61 = objc_msgSend_cameraOrientation(v17, v57, v58, v59, v60);
  objc_msgSend_aspectRatioForCameraOrientation_cameraType_(v17, v62, v27, v22, v63);
  v68 = v35 != v67 || v33 != v66;
  v125 = v68;
  objc_msgSend_contentRectForCameraOrientation_cameraType_(v17, v64, v27, v22, v65);
  v75 = 1;
  if (v49 != v76 || v51 != v74 || (v47 != v73 ? (v75 = 1) : (v75 = v45 != v72), v22 == v56 ? (v77 = v27 == v61) : (v77 = 0), v77 ? (v78 = v17 == 0) : (v78 = 1), !v78 ? (v79 = 0) : (v79 = 1), ((v79 | v126 | v125) & 1) != 0 || v75))
  {
    objc_msgSend__setCameraOrientation_(v17, v69, v27, v70, v71);
    objc_msgSend__setCameraType_(v17, v80, v22, v81, v82);
    if (v27 > 1)
    {
      objc_msgSend__setRemoteLandscapeOrientation_(v17, v83, v84, v85, v86, v33, v35);
      objc_msgSend__setRemoteLandscapeContentRect_(v17, v95, v96, v97, v98, v45, v47, v49, v51);
    }

    else
    {
      objc_msgSend__setRemotePortraitOrientation_(v17, v83, v84, v85, v86, v33, v35);
      objc_msgSend__setRemotePortraitContentRect_(v17, v87, v88, v89, v90, v45, v47, v49, v51);
    }

    if (v126)
    {
      sub_254771920(@"__kIMAVChatParticipantCameraWillChangeNotification", v17, 0);
    }

    if (v27 != v61)
    {
      v99 = MEMORY[0x277CBEAC0];
      v100 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v91, v27, v93, v94);
      v104 = objc_msgSend_dictionaryWithObjectsAndKeys_(v99, v101, v100, v102, v103, @"__kIMAVChatCameraOrientationKey", 0);
      sub_254771920(@"__kIMAVChatParticipantCameraOrientationChangedNotification", v17, v104);
    }

    if (v22 != v56)
    {
      v105 = MEMORY[0x277CBEAC0];
      v106 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v91, v22, v93, v94);
      v110 = objc_msgSend_dictionaryWithObjectsAndKeys_(v105, v107, v106, v108, v109, @"__kIMAVChatCameraTypeKey", 0);
      sub_254771920(@"__kIMAVChatParticipantCameraDidChangeNotification", v17, v110);
    }

    if (v75)
    {
      v111 = MEMORY[0x277CBEAC0];
      v112 = objc_msgSend_valueWithRect_(MEMORY[0x277CCAE60], v91, v92, v93, v94, v45, v47, v49, v51);
      v116 = objc_msgSend_dictionaryWithObjectsAndKeys_(v111, v113, v112, v114, v115, @"__kIMAVChatCameraContentRectKey", 0);
      sub_254771920(@"__kIMAVChatParticipantContentRectChangedNotification", v17, v116);
    }

    if (v27 != v61 || v125)
    {
      v117 = MEMORY[0x277CBEAC0];
      v118 = objc_msgSend_valueWithSize_(MEMORY[0x277CCAE60], v91, v92, v93, v94, v33, v35);
      v122 = objc_msgSend_dictionaryWithObjectsAndKeys_(v117, v119, v118, v120, v121, @"__kIMAVChatCameraAspectRatioKey", 0);
      sub_254771920(@"__kIMAVChatParticipantAspectRatioChangedNotification", v17, v122);
    }

    objc_msgSend__postParticipantMediaChangeNotification_cameraChanged_orientationChanged_aspectChanged_contentRectChanged_cameraWillSwitch_camera_orentation_aspect_contentRect_(IMAVConferenceInterface, v91, v17, v22 != v56, v27 != v61, v125, v75, v126, v33, v35, v45, v47, v49, v51, __PAIR64__(v27, v22));
  }

  v123 = *MEMORY[0x277D85DE8];
}

void sub_254772C14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedInstance(IMAVController, a2, a3, a4, a5);
  if (objc_msgSend__shouldRunConferences(v6, v7, v8, v9, v10))
  {

LABEL_4:
    v21 = sub_254761764();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 56);
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v67 = 138412802;
      v68 = v23;
      v69 = 1024;
      v70 = v22;
      v71 = 2112;
      v72 = v24;
      _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "vc: %@  callID: %d parameters: %@", &v67, 0x1Cu);
    }

    v25 = sub_254772F44(*(a1 + 40));
    v27 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 48), v26, *(a1 + 32), *(a1 + 56), @"inititiateRelayRequest");
    v31 = objc_msgSend_participantWithAVConferenceCallID_(v27, v28, *(a1 + 56), v29, v30);
    v35 = objc_msgSend_objectForKey_(v25, v32, *MEMORY[0x277D18F98], v33, v34);
    objc_msgSend__setRelayRemotePrimaryIdentifier_(v27, v36, v35, v37, v38);
    v39 = sub_254761764();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_msgSend_vcPartyID(v31, v40, v41, v42, v43);
      v67 = 138412290;
      v68 = v44;
      _os_log_impl(&dword_254743000, v39, OS_LOG_TYPE_DEFAULT, "Instructed to initiate relay request to: %@", &v67, 0xCu);
    }

    v48 = objc_msgSend_natTypeForAVChat_(*(a1 + 48), v45, v27, v46, v47);
    if (v48)
    {
      CFDictionarySetValue(v25, *MEMORY[0x277D18FB0], v48);
    }

    v53 = objc_msgSend_properties(v31, v49, v50, v51, v52);
    v57 = objc_msgSend_objectForKey_(v53, v54, *MEMORY[0x277D19510], v55, v56);

    if (v57)
    {
      CFDictionarySetValue(v25, *MEMORY[0x277D18F68], v57);
    }

    v58 = sub_254761764();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v67 = 138412290;
      v68 = v25;
      _os_log_impl(&dword_254743000, v58, OS_LOG_TYPE_DEFAULT, "Built new relay parameters: %@", &v67, 0xCu);
    }

    v63 = objc_msgSend_vcPartyID(v31, v59, v60, v61, v62);
    objc_msgSend_conferencePersonWithID_sendRelayRequest_(v27, v64, v63, v25, v65);

    goto LABEL_15;
  }

  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  shouldRunACConferences = objc_msgSend__shouldRunACConferences(v15, v16, v17, v18, v19);

  if (shouldRunACConferences)
  {
    goto LABEL_4;
  }

  v25 = sub_254761764();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v67) = 0;
    _os_log_impl(&dword_254743000, v25, OS_LOG_TYPE_DEFAULT, "Returning because we are not the VC host", &v67, 2u);
  }

LABEL_15:

  v66 = *MEMORY[0x277D85DE8];
}

id sub_254772F44(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_msgSend_objectForKey_(v1, v3, qword_28134A520, v4, v5);

  if (v6)
  {
    v10 = objc_msgSend_objectForKey_(v1, v7, qword_28134A520, v8, v9);
    objc_msgSend_setObject_forKey_(v2, v11, v10, *MEMORY[0x277D18F90], v12);
  }

  v13 = objc_msgSend_objectForKey_(v1, v7, qword_28134A4B8, v8, v9);

  if (v13)
  {
    v17 = objc_msgSend_objectForKey_(v1, v14, qword_28134A4B8, v15, v16);
    objc_msgSend_setObject_forKey_(v2, v18, v17, *MEMORY[0x277D18FB0], v19);
  }

  v20 = objc_msgSend_objectForKey_(v1, v14, qword_28134A4C8, v15, v16);

  if (v20)
  {
    v24 = objc_msgSend_objectForKey_(v1, v21, qword_28134A4C8, v22, v23);
    objc_msgSend_setObject_forKey_(v2, v25, v24, *MEMORY[0x277D18FA0], v26);
  }

  v27 = objc_msgSend_objectForKey_(v1, v21, qword_28134A4C0, v22, v23);

  if (v27)
  {
    v31 = objc_msgSend_objectForKey_(v1, v28, qword_28134A4C0, v29, v30);
    objc_msgSend_setObject_forKey_(v2, v32, v31, *MEMORY[0x277D18FA8], v33);
  }

  v34 = objc_msgSend_objectForKey_(v1, v28, qword_28134A500, v29, v30);

  if (v34)
  {
    v38 = objc_msgSend_objectForKey_(v1, v35, qword_28134A500, v36, v37);
    objc_msgSend_setObject_forKey_(v2, v39, v38, *MEMORY[0x277D18F58], v40);
  }

  v41 = objc_msgSend_objectForKey_(v1, v35, qword_28134A4F8, v36, v37);

  if (v41)
  {
    v45 = objc_msgSend_objectForKey_(v1, v42, qword_28134A4F8, v43, v44);
    objc_msgSend_setObject_forKey_(v2, v46, v45, *MEMORY[0x277D18F68], v47);
  }

  v48 = objc_msgSend_objectForKey_(v1, v42, qword_28134A510, v43, v44);

  if (v48)
  {
    v52 = objc_msgSend_objectForKey_(v1, v49, qword_28134A510, v50, v51);
    objc_msgSend_setObject_forKey_(v2, v53, v52, *MEMORY[0x277D18F50], v54);
  }

  v55 = objc_msgSend_objectForKey_(v1, v49, qword_28134A508, v50, v51);

  if (v55)
  {
    v59 = objc_msgSend_objectForKey_(v1, v56, qword_28134A508, v57, v58);
    objc_msgSend_setObject_forKey_(v2, v60, v59, *MEMORY[0x277D18F60], v61);
  }

  v62 = objc_msgSend_objectForKey_(v1, v56, qword_28134A480, v57, v58);

  if (v62)
  {
    v66 = objc_msgSend_objectForKey_(v1, v63, qword_28134A480, v64, v65);
    objc_msgSend_setObject_forKey_(v2, v67, v66, *MEMORY[0x277D18FE8], v68);
  }

  v69 = objc_msgSend_objectForKey_(v1, v63, qword_28134A518, v64, v65);

  if (v69)
  {
    v73 = objc_msgSend_objectForKey_(v1, v70, qword_28134A518, v71, v72);
    objc_msgSend_setObject_forKey_(v2, v74, v73, *MEMORY[0x277D18F48], v75);
  }

  v76 = objc_msgSend_objectForKey_(v1, v70, qword_28134A488, v71, v72);

  if (v76)
  {
    v80 = objc_msgSend_objectForKey_(v1, v77, qword_28134A488, v78, v79);
    objc_msgSend_setObject_forKey_(v2, v81, v80, *MEMORY[0x277D18FE0], v82);
  }

  v83 = objc_msgSend_objectForKey_(v1, v77, qword_28134A490, v78, v79);

  if (v83)
  {
    v87 = objc_msgSend_objectForKey_(v1, v84, qword_28134A490, v85, v86);
    objc_msgSend_setObject_forKey_(v2, v88, v87, *MEMORY[0x277D18FD8], v89);
  }

  v90 = objc_msgSend_objectForKey_(v1, v84, qword_28134A4F0, v85, v86);

  if (v90)
  {
    v94 = objc_msgSend_objectForKey_(v1, v91, qword_28134A4F0, v92, v93);
    objc_msgSend_setObject_forKey_(v2, v95, v94, *MEMORY[0x277D18F70], v96);
  }

  v97 = objc_msgSend_objectForKey_(v1, v91, qword_28134A4D8, v92, v93);

  if (v97)
  {
    v101 = objc_msgSend_objectForKey_(v1, v98, qword_28134A4D8, v99, v100);
    objc_msgSend_setObject_forKey_(v2, v102, v101, *MEMORY[0x277D18F88], v103);
  }

  v104 = objc_msgSend_objectForKey_(v1, v98, qword_28134A4B0, v99, v100);

  if (v104)
  {
    v108 = objc_msgSend_objectForKey_(v1, v105, qword_28134A4B0, v106, v107);
    objc_msgSend_setObject_forKey_(v2, v109, v108, *MEMORY[0x277D18FB8], v110);
  }

  v111 = objc_msgSend_objectForKey_(v1, v105, qword_28134A498, v106, v107);

  if (v111)
  {
    v115 = objc_msgSend_objectForKey_(v1, v112, qword_28134A498, v113, v114);
    objc_msgSend_setObject_forKey_(v2, v116, v115, *MEMORY[0x277D18FD0], v117);
  }

  v118 = objc_msgSend_objectForKey_(v1, v112, qword_28134A4A8, v113, v114);

  if (v118)
  {
    v122 = objc_msgSend_objectForKey_(v1, v119, qword_28134A4A8, v120, v121);
    objc_msgSend_setObject_forKey_(v2, v123, v122, *MEMORY[0x277D18FC0], v124);
  }

  v125 = objc_msgSend_objectForKey_(v1, v119, qword_28134A4A0, v120, v121);

  if (v125)
  {
    v129 = objc_msgSend_objectForKey_(v1, v126, qword_28134A4A0, v127, v128);
    objc_msgSend_setObject_forKey_(v2, v130, v129, *MEMORY[0x277D18FC8], v131);
  }

  v132 = objc_msgSend_objectForKey_(v1, v126, qword_28134A4E8, v127, v128);

  if (v132)
  {
    v136 = objc_msgSend_objectForKey_(v1, v133, qword_28134A4E8, v134, v135);
    objc_msgSend_setObject_forKey_(v2, v137, v136, *MEMORY[0x277D18F78], v138);
  }

  v139 = objc_msgSend_objectForKey_(v1, v133, qword_28134A4E0, v134, v135);

  if (v139)
  {
    v143 = objc_msgSend_objectForKey_(v1, v140, qword_28134A4E0, v141, v142);
    objc_msgSend_setObject_forKey_(v2, v144, v143, *MEMORY[0x277D18F80], v145);
  }

  if (qword_28134A4D0)
  {
    v146 = objc_msgSend_objectForKey_(v1, v140, qword_28134A4D0, v141, v142);

    if (v146)
    {
      v150 = objc_msgSend_objectForKey_(v1, v147, qword_28134A4D0, v148, v149);
      objc_msgSend_setObject_forKey_(v2, v151, v150, *MEMORY[0x277D18F98], v152);
    }
  }

  return v2;
}

void sub_254773714(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedInstance(IMAVController, a2, a3, a4, a5);
  if (objc_msgSend__shouldRunConferences(v6, v7, v8, v9, v10))
  {

LABEL_4:
    v21 = sub_254761764();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 56);
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v46 = 138412802;
      v47 = v23;
      v48 = 1024;
      v49 = v22;
      v50 = 2112;
      v51 = v24;
      _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "vc: %@  callID: %d parameters: %@", &v46, 0x1Cu);
    }

    v26 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 48), v25, *(a1 + 32), *(a1 + 56), @"sendRelayUpdate");
    v30 = objc_msgSend_participantWithAVConferenceCallID_(v26, v27, *(a1 + 56), v28, v29);
    v31 = sub_254761764();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_msgSend_vcPartyID(v30, v32, v33, v34, v35);
      v46 = 138412290;
      v47 = v36;
      _os_log_impl(&dword_254743000, v31, OS_LOG_TYPE_DEFAULT, "Instructed to send relay update to: %@", &v46, 0xCu);
    }

    v41 = objc_msgSend_vcPartyID(v30, v37, v38, v39, v40);
    v42 = sub_254772F44(*(a1 + 40));
    objc_msgSend_conferencePersonWithID_sendRelayUpdate_(v26, v43, v41, v42, v44);

    goto LABEL_9;
  }

  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  shouldRunACConferences = objc_msgSend__shouldRunACConferences(v15, v16, v17, v18, v19);

  if (shouldRunACConferences)
  {
    goto LABEL_4;
  }

  v26 = sub_254761764();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v46) = 0;
    _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "Returning because we are not the VC host", &v46, 2u);
  }

LABEL_9:

  v45 = *MEMORY[0x277D85DE8];
}

void sub_254773A2C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedInstance(IMAVController, a2, a3, a4, a5);
  if (objc_msgSend__shouldRunConferences(v6, v7, v8, v9, v10))
  {

LABEL_4:
    v21 = sub_254761764();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 56);
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v46 = 138412802;
      v47 = v23;
      v48 = 1024;
      v49 = v22;
      v50 = 2112;
      v51 = v24;
      _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "vc: %@  callID: %d parameters: %@", &v46, 0x1Cu);
    }

    v26 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 48), v25, *(a1 + 32), *(a1 + 56), @"cancelRelayReqest");
    v30 = objc_msgSend_participantWithAVConferenceCallID_(v26, v27, *(a1 + 56), v28, v29);
    v31 = sub_254761764();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_msgSend_vcPartyID(v30, v32, v33, v34, v35);
      v46 = 138412290;
      v47 = v36;
      _os_log_impl(&dword_254743000, v31, OS_LOG_TYPE_DEFAULT, "Instructed to send relay cancel to: %@", &v46, 0xCu);
    }

    v41 = objc_msgSend_vcPartyID(v30, v37, v38, v39, v40);
    v42 = sub_254772F44(*(a1 + 40));
    objc_msgSend_conferencePersonWithID_sendRelayCancel_(v26, v43, v41, v42, v44);

    goto LABEL_9;
  }

  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  shouldRunACConferences = objc_msgSend__shouldRunACConferences(v15, v16, v17, v18, v19);

  if (shouldRunACConferences)
  {
    goto LABEL_4;
  }

  v26 = sub_254761764();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v46) = 0;
    _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "Returning because we are not the VC host", &v46, 2u);
  }

LABEL_9:

  v45 = *MEMORY[0x277D85DE8];
}

void sub_254773D2C(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v14 = 138412802;
    v15 = v3;
    v16 = 1024;
    v17 = v4;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "vc: %@  call ID: %d   isNetworkBad: %d", &v14, 0x18u);
  }

  v7 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 40), v6, *(a1 + 32), *(a1 + 48), @"networkHint");
  v12 = v7;
  if (*(a1 + 56) == 1)
  {
    objc_msgSend__submitCallInterruptionBeganLogging(v7, v8, v9, v10, v11);
  }

  else
  {
    objc_msgSend__submitCallInterruptionEndedLogging(v7, v8, v9, v10, v11);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_254773F00(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 57);
    *buf = 138413058;
    v38 = v3;
    v39 = 1024;
    v40 = v4;
    v41 = 1024;
    v42 = v5;
    v43 = 1024;
    v44 = v6;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "vc: %@  call ID: %d   isDegraded: %d   isRemote: %d", buf, 0x1Eu);
  }

  v8 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 40), v7, *(a1 + 32), *(a1 + 48), @"videoQualityChanged");
  v13 = v8;
  if (*(a1 + 57) == 1)
  {
    v14 = objc_msgSend_remoteParticipants(v8, v9, v10, v11, v12);
    v19 = objc_msgSend_lastObject(v14, v15, v16, v17, v18);
  }

  else
  {
    v19 = objc_msgSend_localParticipant(v8, v9, v10, v11, v12);
  }

  v24 = objc_msgSend_vcPartyID(v19, v20, v21, v22, v23);
  objc_msgSend_conferencePersonWithID_didDegrade_(v13, v25, v24, *(a1 + 56), v26);

  v27 = MEMORY[0x277CBEAC0];
  v31 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v28, *(a1 + 56), v29, v30);
  v35 = objc_msgSend_dictionaryWithObjectsAndKeys_(v27, v32, v31, v33, v34, @"__kIMAVChatVideoDegradedKey", 0);
  sub_254771920(@"__kIMAVChatParticipantVideoQualityChangedNotification", v19, v35);

  v36 = *MEMORY[0x277D85DE8];
}

void sub_254774198(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    *buf = 138412802;
    v43 = v3;
    v44 = 1024;
    v45 = v4;
    v46 = 1024;
    v47 = v5;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "vc: %@  call ID: %d   remoteMediaStalled: %d", buf, 0x18u);
  }

  v7 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 40), v6, *(a1 + 32), *(a1 + 48), @"remoteMediaStalled");
  v12 = objc_msgSend_remoteParticipants(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_lastObject(v12, v13, v14, v15, v16);

  v22 = objc_msgSend_vcPartyID(v17, v18, v19, v20, v21);
  objc_msgSend_conferencePersonWithID_mediaDidStall_(v7, v23, v22, *(a1 + 56), v24);

  v25 = *(a1 + 56);
  objc_msgSend__setIsAudioInterrupted_(v7, v26, v25, v27, v28);
  objc_msgSend__setIsVideoInterrupted_(v7, v29, v25, v30, v31);
  v32 = MEMORY[0x277CBEAC0];
  v36 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v33, *(a1 + 56), v34, v35);
  v40 = objc_msgSend_dictionaryWithObjectsAndKeys_(v32, v37, v36, v38, v39, @"__kIMAVChatMediaStalledKey", 0);
  sub_254771920(@"__kIMAVChatParticipantMediaStalledChangedNotification", v17, v40);

  v41 = *MEMORY[0x277D85DE8];
}

void sub_254774490(uint64_t a1, const char *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), @"reinitializeCallForCallID");
  v7 = objc_msgSend_participantWithAVConferenceCallID_(v3, v4, *(a1 + 48), v5, v6);
  v11 = v7;
  if (v3)
  {
    v12 = v7 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = sub_254761764();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v16 = 138412802;
      v17 = v3;
      v18 = 2112;
      v19 = v11;
      v20 = 1024;
      v21 = v14;
      _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Unknown chat (%@) or participant(%@) for callID %d", &v16, 0x1Cu);
    }
  }

  objc_msgSend_reinitializeCallForCallID_(v11, v8, *(a1 + 48), v9, v10);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_254774724(uint64_t a1, const char *a2)
{
  v5 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), @"didPauseAudio");
  objc_msgSend_conferenceDidPauseAudioWithCallID_didPauseAudio_(v5, v3, *(a1 + 48), *(a1 + 56), v4);
}

void sub_254774964(uint64_t a1, const char *a2)
{
  v23 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), @"remoteAudioPaused");
  v6 = objc_msgSend_participantWithAVConferenceCallID_(v23, v3, *(a1 + 48), v4, v5);
  v11 = objc_msgSend_vcPartyID(v6, v7, v8, v9, v10);
  objc_msgSend_conferencePersonWithID_didMute_(v23, v12, v11, *(a1 + 56), v13);

  v14 = MEMORY[0x277CBEAC0];
  v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v15, *(a1 + 56), v16, v17);
  v22 = objc_msgSend_dictionaryWithObjectsAndKeys_(v14, v19, v18, v20, v21, @"__kIMAVChatMuteStateKey", 0);
  sub_254771920(@"__kIMAVChatParticipantMuteChangedNotification", v6, v22);
}

void sub_254774C3C(uint64_t a1, const char *a2)
{
  v29 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), @"remoteVideoPaused");
  v7 = objc_msgSend_remoteParticipants(v29, v3, v4, v5, v6);
  v12 = objc_msgSend_lastObject(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_vcPartyID(v12, v13, v14, v15, v16);
  objc_msgSend_conferencePersonWithID_didPause_(v29, v18, v17, *(a1 + 56), v19);

  v20 = MEMORY[0x277CBEAC0];
  v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v21, *(a1 + 56), v22, v23);
  v28 = objc_msgSend_dictionaryWithObjectsAndKeys_(v20, v25, v24, v26, v27, @"__kIMAVChatPauseStateKey", 0);
  sub_254771920(@"__kIMAVChatParticipantPauseChangedNotification", v12, v28);
}

void sub_254774F14(uint64_t a1, const char *a2)
{
  v20 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 56), @"localIPChange");
  v7 = objc_msgSend_remoteParticipants(v20, v3, v4, v5, v6);
  v12 = objc_msgSend_lastObject(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_vcPartyID(v12, v13, v14, v15, v16);
  objc_msgSend_conferencePersonWithID_localIPDidChange_(v20, v18, v17, *(a1 + 48), v19);
}

void sub_254775104(uint64_t a1, const char *a2)
{
  v15 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), @"didChangeLocalVariablesForCallID");
  objc_msgSend__clearCache(v15, v2, v3, v4, v5);
  v10 = objc_msgSend_sharedInstance(IMAVCallManager, v6, v7, v8, v9);
  objc_msgSend__sendProxyUpdate(v10, v11, v12, v13, v14);
}

void sub_254775234(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "vc: %@", &v12, 0xCu);
  }

  v5 = objc_msgSend__avChatForConference_callID_errorString_(*(a1 + 40), v4, *(a1 + 32), 0, @"serverDiedForConference");
  v6 = sub_254761764();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_254743000, v6, OS_LOG_TYPE_DEFAULT, "Informed about server crash for: %@  (Chat: %@)", &v12, 0x16u);
  }

  objc_msgSend_endChatWithReason_(v5, v8, 30, v9, v10);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_254775B90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_callID(*(a1 + 40), a2, a3, a4, a5);
  v14 = sub_25476F128(*(a1 + 48));
  isLocalParticipant = objc_msgSend_isLocalParticipant(*(a1 + 56), v8, v9, v10, v11);
  objc_msgSend_processRelayRequestResponse_responseDict_didOriginateRequest_(v6, v13, v7, v14, isLocalParticipant);
}

void sub_254775F18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_callID(*(a1 + 40), a2, a3, a4, a5);
  v14 = sub_25476F128(*(a1 + 48));
  isLocalParticipant = objc_msgSend_isLocalParticipant(*(a1 + 56), v8, v9, v10, v11);
  objc_msgSend_processRelayUpdate_updateDict_didOriginateRequest_(v6, v13, v7, v14, isLocalParticipant);
}

void sub_2547762A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_callID(*(a1 + 40), a2, a3, a4, a5);
  v14 = sub_25476F128(*(a1 + 48));
  isLocalParticipant = objc_msgSend_isLocalParticipant(*(a1 + 56), v8, v9, v10, v11);
  objc_msgSend_processCancelRelayRequest_cancelDict_didOriginateRequest_(v6, v13, v7, v14, isLocalParticipant);
}

void sub_254776598(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v14 = objc_msgSend_avChat(*(a1 + 48), a2, a3, a4, a5);
  v11 = objc_msgSend__bustedCallID(v14, v7, v8, v9, v10);
  objc_msgSend_processRemoteIPChange_callID_(v5, v12, v6, v11, v13);
}

void sub_2547767D0(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  qword_28134A478 = MEMORY[0x259C18990](@"VCCapabilities", @"AVConference");
  v2 = objc_alloc_init(qword_28134A478);
  v6 = objc_msgSend__deviceRoleForAVChat_(*(a1 + 32), v3, *(a1 + 40), v4, v5);
  objc_msgSend_setDeviceRole_(v2, v7, v6, v8, v9);
  v10 = sub_254761764();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    v21 = 138412546;
    v22 = v11;
    v23 = 2112;
    v24 = v2;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Updating capabilities for conference %@ to %@", &v21, 0x16u);
  }

  v12 = *(a1 + 48);
  v17 = objc_msgSend__bustedCallID(*(a1 + 40), v13, v14, v15, v16);
  objc_msgSend_updateCapabilities_forCallID_(v12, v18, v2, v17, v19);

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2547770D8(uint64_t a1)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = objc_msgSend_callMetadataForCallID_(*(a1 + 40), v2, *(a1 + 56), v3, v4);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547771A8;
  block[3] = &unk_2797839B8;
  v6 = *(a1 + 48);
  v11 = *(a1 + 64);
  v9 = v6;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_2547771A8(uint64_t a1)
{
  v183 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412802;
    v178 = v4;
    v179 = 1024;
    v180 = v3;
    v181 = 2112;
    v182 = v5;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "Updating chat %@ with call metadata (isFinalUpdate: %d): %@", buf, 0x1Cu);
  }

  if (*(a1 + 40))
  {
    if (!qword_27F6106B0)
    {
      v9 = MEMORY[0x259C189A0]("AVConferenceFrontCaptureTime", @"AVConference");
      if (v9)
      {
        v10 = *v9;
      }

      else
      {
        v10 = 0;
      }

      objc_storeStrong(&qword_27F6106B0, v10);
    }

    if (!qword_27F6106B8)
    {
      v11 = MEMORY[0x259C189A0]("AVConferenceBackCaptureTime", @"AVConference");
      if (v11)
      {
        v12 = *v11;
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(&qword_27F6106B8, v12);
    }

    if (!qword_27F6106C0)
    {
      v13 = MEMORY[0x259C189A0]("AVConferenceSessionBitRate", @"AVConference");
      if (v13)
      {
        v14 = *v13;
      }

      else
      {
        v14 = 0;
      }

      objc_storeStrong(&qword_27F6106C0, v14);
    }

    if (!qword_27F6106C8)
    {
      v15 = MEMORY[0x259C189A0]("AVConferenceSessionSentBytes", @"AVConference");
      if (v15)
      {
        v16 = *v15;
      }

      else
      {
        v16 = 0;
      }

      objc_storeStrong(&qword_27F6106C8, v16);
    }

    if (!qword_27F6106D0)
    {
      v17 = MEMORY[0x259C189A0]("AVConferenceSessionReceivedBytes", @"AVConference");
      if (v17)
      {
        v18 = *v17;
      }

      else
      {
        v18 = 0;
      }

      objc_storeStrong(&qword_27F6106D0, v18);
    }

    if (!qword_27F6106D8)
    {
      v19 = MEMORY[0x259C189A0]("AVConferenceSessionConnectionType", @"AVConference");
      if (v19)
      {
        v20 = *v19;
      }

      else
      {
        v20 = 0;
      }

      objc_storeStrong(&qword_27F6106D8, v20);
    }

    v21 = objc_msgSend_objectForKey_(*(a1 + 40), v6, qword_27F6106B0, v7, v8);
    v25 = objc_msgSend_objectForKey_(*(a1 + 40), v22, qword_27F6106B8, v23, v24);
    v29 = objc_msgSend_objectForKey_(*(a1 + 40), v26, qword_27F6106C0, v27, v28);
    v33 = objc_msgSend_objectForKey_(*(a1 + 40), v30, qword_27F6106C8, v31, v32);
    v176 = objc_msgSend_objectForKey_(*(a1 + 40), v34, qword_27F6106D0, v35, v36);
    v37 = *(a1 + 32);
    v38 = MEMORY[0x277CCABB0];
    v43 = objc_msgSend__frontCameraCaptureTime(v37, v39, v40, v41, v42);
    v48 = objc_msgSend_integerValue(v43, v44, v45, v46, v47);
    v53 = objc_msgSend_integerValue(v21, v49, v50, v51, v52);
    v57 = objc_msgSend_numberWithInteger_(v38, v54, v53 + v48, v55, v56);
    objc_msgSend__setFrontCameraCaptureTime_(v37, v58, v57, v59, v60);

    v61 = *(a1 + 32);
    v62 = MEMORY[0x277CCABB0];
    v67 = objc_msgSend__backCameraCaptureTime(v61, v63, v64, v65, v66);
    v72 = objc_msgSend_integerValue(v67, v68, v69, v70, v71);
    v77 = objc_msgSend_integerValue(v25, v73, v74, v75, v76);
    v81 = objc_msgSend_numberWithInteger_(v62, v78, v77 + v72, v79, v80);
    objc_msgSend__setBackCameraCaptureTime_(v61, v82, v81, v83, v84);

    objc_msgSend_setDataRate_(*(a1 + 32), v85, v29, v86, v87);
    v88 = *(a1 + 32);
    v89 = MEMORY[0x277CCABB0];
    v94 = objc_msgSend_dataUploaded(v88, v90, v91, v92, v93);
    v99 = objc_msgSend_integerValue(v94, v95, v96, v97, v98);
    v104 = objc_msgSend_integerValue(v33, v100, v101, v102, v103);
    v108 = objc_msgSend_numberWithInteger_(v89, v105, v104 + v99, v106, v107);
    objc_msgSend_setDataUploaded_(v88, v109, v108, v110, v111);

    v112 = *(a1 + 32);
    v113 = MEMORY[0x277CCABB0];
    v118 = objc_msgSend_dataDownloaded(v112, v114, v115, v116, v117);
    v123 = objc_msgSend_integerValue(v118, v119, v120, v121, v122);
    v128 = objc_msgSend_integerValue(v176, v124, v125, v126, v127);
    v132 = objc_msgSend_numberWithInteger_(v113, v129, v128 + v123, v130, v131);
    objc_msgSend_setDataDownloaded_(v112, v133, v132, v134, v135);

    if (qword_27F6106D8)
    {
      v139 = *(a1 + 32);
      v140 = objc_msgSend_objectForKey_(*(a1 + 40), v136, qword_27F6106D8, v137, v138);
      v145 = objc_msgSend_intValue(v140, v141, v142, v143, v144);
      objc_msgSend__setConnectionType_(v139, v146, v145, v147, v148);
    }

    if (qword_28134A560)
    {
      v149 = objc_msgSend_objectForKey_(*(a1 + 40), v136, qword_28134A560, v137, v138);
      v154 = v149;
      if (v149)
      {
        v155 = *(a1 + 32);
        if (objc_msgSend_integerValue(v149, v150, v151, v152, v153))
        {
          objc_msgSend__setLocalNetworkConnectionType_(v155, v156, 1, v157, v158);
        }

        else
        {
          objc_msgSend__setLocalNetworkConnectionType_(v155, v156, 2, v157, v158);
        }
      }
    }

    v159 = qword_28134A558;
    if (qword_28134A558)
    {
      v160 = objc_msgSend_objectForKey_(*(a1 + 40), v136, qword_28134A558, v137, v138);
      v165 = v160;
      if (v160)
      {
        v166 = *(a1 + 32);
        if (objc_msgSend_integerValue(v160, v161, v162, v163, v164))
        {
          objc_msgSend__setRemoteNetworkConnectionType_(v166, v167, 1, v168, v169);
        }

        else
        {
          objc_msgSend__setRemoteNetworkConnectionType_(v166, v167, 2, v168, v169);
        }
      }
    }

    if (*(a1 + 48) == 1)
    {
      objc_msgSend_setMetadataFinalized(*(a1 + 32), v136, v159, v137, v138);
    }

    v170 = objc_msgSend_sharedInstance(IMAVCallManager, v136, v159, v137, v138);
    objc_msgSend__sendProxyUpdate(v170, v171, v172, v173, v174);
  }

  v175 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2547779F8()
{
  v0 = objc_alloc_init(IMAVLocalPreviewClient);
  v1 = qword_28134A3F0;
  qword_28134A3F0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_25477A8C8()
{
  v0 = objc_alloc_init(IMAVDaemonController);
  v1 = qword_28134A3F8;
  qword_28134A3F8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_25477AC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_25477AC98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_isValid(*(*(a1 + 32) + 16), a2, a3, a4, a5);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_25477ADB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_25477ADD0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_isValid(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_25477B164(uint64_t a1)
{
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up LOCAL object", v12, 2u);
  }

  objc_msgSend_setTarget_(*(*(a1 + 32) + 16), v3, 0, v4, v5);
  objc_msgSend_invalidate(*(*(a1 + 32) + 16), v6, v7, v8, v9);
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = 0;
}

void sub_25477B270(uint64_t a1)
{
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up REMOTE object", v9, 2u);
  }

  objc_msgSend_invalidate(*(*(a1 + 32) + 8), v3, v4, v5, v6);
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = 0;
}

uint64_t sub_25477B464(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_count(*(*(a1 + 32) + 40), a2, a3, a4, a5);
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

uint64_t sub_25477B5F8(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 40))
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = sub_254761764();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Adding listener with ID: %@", &v12, 0xCu);
  }

  result = objc_msgSend_addObject_(*(*(a1 + 32) + 40), v7, *(a1 + 40), v8, v9);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25477B7A0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_containsObject_(*(a1[4] + 40), a2, a1[5], a4, a5);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_25477B944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25477B964(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_containsObject_(*(a1[4] + 40), a2, a1[5], a4, a5);
  v7 = sub_254761764();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = a1[5];
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Removing listener with ID: %@", &v16, 0xCu);
    }

    objc_msgSend_removeObject_(*(a1[4] + 40), v10, a1[5], v11, v12);
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    if (v8)
    {
      v13 = a1[5];
      v14 = *(a1[4] + 40);
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring we don't have a listener with ID: %@   (%@)", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_25477BDD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  v5 = *(a1 + 48);
  _IMGetAVAgentRemoteObject();
}

void sub_25477BE7C(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_msgSend__remoteObjectCleanup(*(a1 + 32), v7, v8, v9, v10);
  v11 = *(a1 + 32);
  v12 = *(v11 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25477C1A8;
  block[3] = &unk_2797832F0;
  block[4] = v11;
  v13 = v5;
  v48 = v13;
  dispatch_sync(v12, block);
  v14 = *(a1 + 32);
  v15 = *(v14 + 80);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_25477C1B4;
  v46[3] = &unk_279783738;
  v46[4] = v14;
  dispatch_sync(v15, v46);
  objc_msgSend__localObjectCleanup(*(a1 + 32), v16, v17, v18, v19);
  v20 = *(a1 + 32);
  v21 = *(v20 + 80);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_25477C21C;
  v44[3] = &unk_2797832F0;
  v44[4] = v20;
  v22 = v13;
  v45 = v22;
  dispatch_sync(v21, v44);
  if (objc_msgSend_remoteObjectExists(*(a1 + 32), v23, v24, v25, v26))
  {
    v27 = *(a1 + 32);
    v28 = *(v27 + 64);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_25477C2BC;
    v43[3] = &unk_279783738;
    v43[4] = v27;
    dispatch_sync(v28, v43);
    v29 = *(a1 + 32);
    v30 = *(v29 + 80);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_25477C3A0;
    v42[3] = &unk_279783738;
    v42[4] = v29;
    dispatch_sync(v30, v42);
    objc_msgSend_setupComplete_info_(*(*(a1 + 32) + 24), v31, 1, v6, v32);
  }

  else
  {
    v33 = sub_254761764();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(*(a1 + 32) + 32);
      *buf = 138412290;
      v50 = v34;
      _os_log_impl(&dword_254743000, v33, OS_LOG_TYPE_DEFAULT, "  Failed to build remote object for listener: %@", buf, 0xCu);
    }

    v35 = sub_254761764();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v35, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to launch and connect to daemon", buf, 2u);
    }

    objc_msgSend__localObjectCleanup(*(a1 + 32), v36, v37, v38, v39);
  }

  v40 = *(a1 + 40);
  if (v40)
  {
    (*(v40 + 16))();
  }

  v41 = *MEMORY[0x277D85DE8];
}

void sub_25477C1B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3, a4, a5);
  objc_msgSend_removeObserver_name_object_(v7, v6, *(a1 + 32), *MEMORY[0x277D19148], *(*(a1 + 32) + 16));
}

void sub_25477C21C(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D19260]);
  v3 = *(*(a1 + 32) + 24);
  v17 = objc_msgSend_connection(*(a1 + 40), v4, v5, v6, v7);
  v12 = objc_msgSend__daemonListenerProtocol(*(a1 + 32), v8, v9, v10, v11);
  v14 = objc_msgSend_initWithTarget_connection_protocol_(v2, v13, v3, v17, v12);
  v15 = *(a1 + 32);
  v16 = *(v15 + 16);
  *(v15 + 16) = v14;
}

void sub_25477C2BC(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "  Built object: %@", &v11, 0xCu);
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5, v6, v7);
  objc_msgSend_addObserver_selector_name_object_(v8, v9, *(a1 + 32), sel_remoteObjectDiedNotification_, *MEMORY[0x277D19190], *(*(a1 + 32) + 8));

  v10 = *MEMORY[0x277D85DE8];
}

void sub_25477C3A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a3, a4, a5);
  objc_msgSend_addObserver_selector_name_object_(v7, v6, *(a1 + 32), sel_localObjectDiedNotification_, *MEMORY[0x277D19148], *(*(a1 + 32) + 16));
}

void sub_25477C410(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], a2, a3, a4, a5);
  objc_msgSend___im_performBlock_afterDelay_modes_(v7, v5, &unk_28668BA00, *MEMORY[0x277D191A0], v6, 0.0);
}

void sub_25477C75C(uint64_t a1)
{
  *(*(a1 + 32) + 97) = 0;
  dispatch_resume(*(*(a1 + 32) + 72));
  if (objc_msgSend_remoteObjectExists(*(a1 + 32), v2, v3, v4, v5))
  {
    v12 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v6, v7, v8, v9);
    objc_msgSend___mainThreadPostNotificationName_object_(v12, v10, @"__kIMAVDaemonDidConnectNotification", 0, v11);
  }
}

uint64_t sub_25477CB30(uint64_t a1)
{
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, " ...auto reconnecting", v8, 2u);
  }

  return objc_msgSend__listenerSetUpdated(*(a1 + 32), v3, v4, v5, v6);
}

void sub_25477CE94(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = sub_254761764();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = objc_msgSend_selector(v7, v3, v4, v5, v6);
    v9 = NSStringFromSelector(v8);
    v10 = *(*(a1 + 40) + 8);
    v12 = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "Not connected to the avDaemon, not forwarding invocation: (invocation %@,  selector  %@,  remoteObject %@)", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_25477CF78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isLocalObjectValidOnQueue = objc_msgSend___isLocalObjectValidOnQueue_(*(a1 + 32), a2, *(*(a1 + 32) + 80), a4, a5);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25477D01C;
  block[3] = &unk_2797839B8;
  v12 = isLocalObjectValidOnQueue;
  block[4] = v8;
  v11 = v7;
  dispatch_sync(v9, block);
}

void sub_25477D01C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v6 = objc_msgSend_listener(*(a1 + 32), a2, a3, a4, a5);
    isSetupComplete = objc_msgSend_isSetupComplete(v6, v7, v8, v9, v10);

    if (isSetupComplete)
    {
      if (objc_msgSend___isRemoteObjectValidOnQueue_(*(a1 + 32), v12, 0, v13, v14))
      {
        v15 = sub_254761764();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 40);
          v21 = objc_msgSend_selector(v20, v16, v17, v18, v19);
          v22 = NSStringFromSelector(v21);
          v23 = *(*(a1 + 32) + 8);
          v35 = 138412802;
          v36 = v20;
          v37 = 2112;
          v38 = v22;
          v39 = 2112;
          v40 = v23;
          _os_log_impl(&dword_254743000, v15, OS_LOG_TYPE_DEFAULT, "Forwarding invocation to avDaemon: (invocation %@,  selector  %@,  remoteObject %@)", &v35, 0x20u);
        }

        v28 = objc_msgSend_defaultBroadcaster(MEMORY[0x277D192A0], v24, v25, v26, v27);
        v30 = objc_msgSend_broadcastProxyForTarget_messageContext_protocol_(v28, v29, *(*(a1 + 32) + 8), 0, &unk_28669DFF8);

        if (v30)
        {
          objc_msgSend_invokeWithTarget_(*(a1 + 40), v31, v30, v32, v33);
        }
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25477D6C8(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 7)
  {
    v2 = sub_254761764();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "[WARN] AVConferenceConnType unknown/unhandled type: %d", v5, 8u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_25477D778(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 7 && (a1 - 128) >= 7)
  {
    v4 = sub_254761764();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_254743000, v4, OS_LOG_TYPE_DEFAULT, "[WARN] AVConferenceNATType unknown/unhandled type: %d", v5, 8u);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_25477D838(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 0x20)
  {
    v2 = sub_254761764();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(&dword_254743000, v2, OS_LOG_TYPE_DEFAULT, "[WARN] IMAVChatEndedReason unknown/unhandled reason: %d", v5, 8u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_25477D8E8(int a1)
{
  if (a1 == -2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == -1);
  }
}

uint64_t sub_25477D900(int a1)
{
  if ((a1 - 1000) >= 0x12)
  {
    return 0;
  }

  else
  {
    return (a1 - 999);
  }
}

uint64_t sub_25477D914(int a1)
{
  if ((a1 - 32000) >= 0x18)
  {
    return 0;
  }

  else
  {
    return (a1 - 31999);
  }
}

uint64_t sub_25477D930(int a1)
{
  if ((a1 - 3000) >= 0xC)
  {
    return 0;
  }

  else
  {
    return (a1 - 2999);
  }
}

uint64_t sub_25477D944(int a1)
{
  if (a1 > 6600)
  {
    if (a1 == 6900)
    {
      v6 = 10;
    }

    else
    {
      v6 = 0;
    }

    if (a1 == 6801)
    {
      v7 = 9;
    }

    else
    {
      v7 = v6;
    }

    if (a1 == 6800)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    if (a1 == 6701)
    {
      v9 = 7;
    }

    else
    {
      v9 = 0;
    }

    if (a1 == 6700)
    {
      v10 = 6;
    }

    else
    {
      v10 = v9;
    }

    if (a1 == 6601)
    {
      v11 = 5;
    }

    else
    {
      v11 = v10;
    }

    if (a1 <= 6799)
    {
      return v11;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (a1 == 6600)
    {
      v1 = 4;
    }

    else
    {
      v1 = 0;
    }

    if (a1 == 6500)
    {
      v1 = 3;
    }

    if (a1 == 6400)
    {
      v1 = 11;
    }

    if (a1 == 6100)
    {
      v2 = 12;
    }

    else
    {
      v2 = 0;
    }

    if (a1 == 6001)
    {
      v3 = 2;
    }

    else
    {
      v3 = v2;
    }

    if (a1 == 6000)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    if (a1 <= 6399)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25477DA2C(int a1)
{
  if ((a1 - 7000) >= 3)
  {
    return 0;
  }

  else
  {
    return (a1 - 6999);
  }
}

uint64_t sub_25477DA48(int a1)
{
  if ((a1 - 8000) >= 7)
  {
    return 0;
  }

  else
  {
    return (a1 - 7999);
  }
}

uint64_t sub_25477DA64(int a1)
{
  if ((a1 - 5000) > 0x57)
  {
    return 0;
  }

  else
  {
    return dword_254783318[a1 - 5000];
  }
}

uint64_t sub_25477DA8C(unint64_t a1)
{
  v1 = a1;
  v6 = *MEMORY[0x277D85DE8];
  if (a1 >= 4)
  {
    v3 = sub_254761764();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = v1;
      _os_log_impl(&dword_254743000, v3, OS_LOG_TYPE_DEFAULT, "[WARN] IMAVInterfaceNetworkCheckResult unknown/unhandled result: %d", v5, 8u);
    }

    result = 0;
  }

  else
  {
    result = (a1 + 1);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25477EA74()
{
  v0 = MEMORY[0x259C189A0]("GKSErrorDetailedError", @"AVConference");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_27F610718, v1);
}

void sub_25477EAC4()
{
  v0 = MEMORY[0x259C189A0]("GKSErrorReturnCode", @"AVConference");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_27F610728, v1);
}

void sub_25477F3B0()
{
  v0 = MEMORY[0x259C189A0]("GKSErrorDetailedError", @"AVConference");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_27F610738, v1);
}

void sub_25477F400()
{
  v0 = MEMORY[0x259C189A0]("GKSErrorReturnCode", @"AVConference");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_27F610748, v1);
}

uint64_t sub_25477F518(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) != 32001)
  {
    v41 = sub_254761764();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v52) = 0;
      _os_log_impl(&dword_254743000, v41, OS_LOG_TYPE_DEFAULT, " => Will not run network check", &v52, 2u);
    }

    goto LABEL_17;
  }

  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D07DF0], a2, a3, a4, a5);
  v10 = objc_msgSend_objectForKey_(v6, v7, @"gk-p2p-post-connectivity-check", v8, v9);

  v15 = objc_msgSend_intValue(v10, v11, v12, v13, v14);
  v16 = sub_254761764();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v52 = 138412290;
    v53 = v10;
    _os_log_impl(&dword_254743000, v16, OS_LOG_TYPE_DEFAULT, "Bag value key for connectivity check: %@", &v52, 0xCu);
  }

  v17 = sub_254761764();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    if (v15 > 0)
    {
      v18 = @"YES";
    }

    v52 = 138412290;
    v53 = v18;
    _os_log_impl(&dword_254743000, v17, OS_LOG_TYPE_DEFAULT, " => Will run check: %@", &v52, 0xCu);
  }

  if (v15 < 1)
  {
LABEL_17:
    objc_msgSend__setNetworkCheckResult_(*(a1 + 32), v19, -1, v20, v21);
    goto LABEL_18;
  }

  v22 = sub_254761764();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v52) = 0;
    _os_log_impl(&dword_254743000, v22, OS_LOG_TYPE_DEFAULT, "Running network connectivity check", &v52, 2u);
  }

  v27 = objc_msgSend__localNetworkConnectionType(*(a1 + 32), v23, v24, v25, v26) == 2;
  v32 = objc_msgSend_sharedInstance(IMAVInterface, v28, v29, v30, v31);
  v35 = objc_msgSend__checkNetworkForChat_requiresWifi_(v32, v33, *(a1 + 32), v27, v34);

  v36 = sub_254761764();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v52 = 67109120;
    LODWORD(v53) = v35;
    _os_log_impl(&dword_254743000, v36, OS_LOG_TYPE_DEFAULT, " => Done with result: %d", &v52, 8u);
  }

LABEL_18:
  v42 = objc_msgSend_sharedInstance(IMAVInterface, v37, v38, v39, v40);
  objc_msgSend__runPingTestForChat_(v42, v43, *(a1 + 32), v44, v45);

  objc_msgSend___sendEndCallMetricToAWDWithReason_andError_(*(a1 + 32), v46, *(a1 + 44), *(a1 + 40), v47);
  result = objc_msgSend___sendEndCallMetricToViceroyWithReason_andError_(*(a1 + 32), v48, *(a1 + 44), *(a1 + 40), v49);
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25477F7EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a1, a2, @"IMAVChatParticipant.m", 68, @"Invalid parameter not satisfying: %@", @"(imHandle != nil) && (inviter != nil) && (chat != nil)");
}