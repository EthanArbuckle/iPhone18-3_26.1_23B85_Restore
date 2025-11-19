void sub_1E0BC0E1C(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 40);
        v9 = [*(*(&v11 + 1) + 8 * v7) registeredActivities];
        [v8 addObjectsFromArray:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E0BC103C(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(*(a1 + 32) + 16);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) registeredActivities];
        [v3 addObjectsFromArray:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E0BC128C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 64) copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BC12E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = [*(a1 + 32) interfaceName];
  if ([*(a1 + 32) isMonitoringEventType:a2 interfaceName:v8])
  {
    v9 = CWFGetOSLog();
    if (v9)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      _os_log_send_and_compose_impl();
    }

    v12 = [*(a1 + 32) eventHandler];
    v13 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, *(a1 + 32), a2, a3, a4);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0BC14E8(int a1)
{
  if (a1 > 38)
  {
    if (a1 <= 67)
    {
      if (a1 > 54)
      {
        v1 = 42;
        v2 = 37;
        v5 = 15;
        if (a1 != 67)
        {
          v5 = 0;
        }

        if (a1 != 63)
        {
          v2 = v5;
        }

        v4 = a1 == 55;
        goto LABEL_16;
      }

      if (a1 == 39)
      {
        return 7;
      }

      v12 = a1 == 46;
      v13 = 17;
LABEL_42:
      if (v12)
      {
        return v13;
      }

      else
      {
        return 0;
      }
    }

    if (a1 > 79)
    {
      if (a1 != 80)
      {
        v12 = a1 == 191;
        v13 = 29;
        goto LABEL_42;
      }
    }

    else if ((a1 - 70) >= 2)
    {
      v12 = a1 == 68;
      v13 = 16;
      goto LABEL_42;
    }

    return 14;
  }

  if (a1 > 10)
  {
    if (a1 <= 14)
    {
      v1 = 4;
      v2 = 32;
      v3 = 33;
      if (a1 != 13)
      {
        v3 = 0;
      }

      if (a1 != 12)
      {
        v2 = v3;
      }

      v4 = a1 == 11;
LABEL_16:
      if (v4)
      {
        return v1;
      }

      else
      {
        return v2;
      }
    }

    if (a1 == 15)
    {
      return 5;
    }

    if (a1 != 17)
    {
      v12 = a1 == 20;
      v13 = 31;
      goto LABEL_42;
    }

    return 7;
  }

  v7 = 3;
  v8 = 6;
  v9 = 8;
  if (a1 != 8)
  {
    v9 = 0;
  }

  if (a1 != 4)
  {
    v8 = v9;
  }

  if (a1 != 3)
  {
    v7 = v8;
  }

  v10 = 1;
  v11 = 2;
  if (a1 != 2)
  {
    v11 = 0;
  }

  if (a1 != 1)
  {
    v10 = v11;
  }

  if (a1 <= 2)
  {
    return v10;
  }

  else
  {
    return v7;
  }
}

id CWFGetOSLog()
{
  if (qword_1ED7E38D8 != -1)
  {
    dispatch_once(&qword_1ED7E38D8, &unk_1F5B89A50);
  }

  v1 = qword_1ED7E38D0;

  return v1;
}

id sub_1E0BC16BC(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = sub_1E0BC1AB4(a1);
  if ((a1 - 1) > 0xA)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:*off_1E86E5760[a1 - 1]];
    if (v5)
    {
      v6 = a2 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            v13 = objc_autoreleasePoolPush();
            sub_1E0BC1D40([v12 integerValue], v5);
            objc_autoreleasePoolPop(v13);
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

id sub_1E0BC1840(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 7)
  {
    if ((a1 - 4) >= 4)
    {
      if ((a1 - 1) >= 3)
      {
        goto LABEL_13;
      }

      v2 = MEMORY[0x1E696B0D0];
      v3 = &unk_1F5BDAA38;
    }

    else
    {
      v2 = MEMORY[0x1E696B0D0];
      v3 = &unk_1F5BDA9A8;
    }

    goto LABEL_12;
  }

  if (a1 > 9)
  {
    if (a1 != 10)
    {
      if (a1 != 11)
      {
        goto LABEL_13;
      }

      v2 = MEMORY[0x1E696B0D0];
      v3 = &unk_1F5BE8468;
      goto LABEL_12;
    }

    v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5BE8408];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v10 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v11 = sel_performWiFiNetworkSharingAccessoryScanWithReply_;
  }

  else
  {
    if (a1 != 8)
    {
      v2 = MEMORY[0x1E696B0D0];
      v3 = &unk_1F5BE83A8;
LABEL_12:
      v1 = [v2 interfaceWithProtocol:v3];
      goto LABEL_13;
    }

    v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5BE8348];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    [v1 setClasses:v7 forSelector:sel_queryNearbyRecommendedNetworksAndReply_ argumentIndex:1 ofReply:1];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = sel_queryCloudNetworksAndReply_;
  }

  [v1 setClasses:v10 forSelector:v11 argumentIndex:1 ofReply:1];

LABEL_13:

  return v1;
}

__CFString *sub_1E0BC1A5C(uint64_t a1)
{
  if ((a1 - 1) > 0xA)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_1E86E5708[a1 - 1];
  }

  return v2;
}

id sub_1E0BC1AB4(uint64_t a1)
{
  v2 = 0;
  if (a1 > 5)
  {
    if (a1 <= 8)
    {
      if (a1 == 6)
      {
        v2 = &unk_1F5BB9A30;
      }

      else
      {
        if (a1 != 7)
        {
          goto LABEL_23;
        }

        v2 = &unk_1F5BB9A48;
      }

      goto LABEL_26;
    }

    v3 = &unk_1F5BB9A60;
    v4 = &unk_1F5BB9A78;
    v7 = &unk_1F5BB9A90;
    if (a1 != 11)
    {
      v7 = 0;
    }

    if (a1 != 10)
    {
      v4 = v7;
    }

    v6 = a1 == 9;
LABEL_17:
    if (v6)
    {
      v2 = v3;
    }

    else
    {
      v2 = v4;
    }

    goto LABEL_26;
  }

  if (a1 > 2)
  {
    v3 = &unk_1F5BB99E8;
    v4 = &unk_1F5BB9A00;
    v5 = &unk_1F5BB9A18;
    if (a1 != 5)
    {
      v5 = 0;
    }

    if (a1 != 4)
    {
      v4 = v5;
    }

    v6 = a1 == 3;
    goto LABEL_17;
  }

  if (a1 == 1)
  {
LABEL_23:
    v2 = sub_1E0BD61E8();
    goto LABEL_26;
  }

  if (a1 == 2)
  {
    v2 = [&unk_1F5BB99D0 arrayByAddingObjectsFromArray:&unk_1F5BB99E8];
  }

LABEL_26:

  return v2;
}

void sub_1E0BC1D40(uint64_t a1, void *a2)
{
  v73 = a2;
  if (a1 > 232)
  {
    if (a1 > 254)
    {
      if (a1 <= 259)
      {
        switch(a1)
        {
          case 255:
            v68 = MEMORY[0x1E695DFD8];
            v69 = objc_opt_class();
            v5 = [v68 setWithObjects:{v69, objc_opt_class(), 0}];
            v6 = sel_getCloudNetworksWithRequestParams_reply_;
            break;
          case 258:
            v66 = MEMORY[0x1E695DFD8];
            v67 = objc_opt_class();
            v5 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
            v6 = sel_queryKnownNetworksInSameLanAs_requestParams_reply_;
            break;
          case 259:
            v28 = MEMORY[0x1E695DFD8];
            v29 = objc_opt_class();
            v5 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
            v6 = sel_queryKnownNetworksWithNetworkSignature_requestParams_reply_;
            break;
          default:
            goto LABEL_65;
        }
      }

      else if (a1 > 280)
      {
        if (a1 == 281)
        {
          v64 = MEMORY[0x1E695DFD8];
          v65 = objc_opt_class();
          v5 = [v64 setWithObjects:{v65, objc_opt_class(), 0}];
          v6 = sel_wifiNetworkSharingNetworkListWithRequestParams_reply_;
        }

        else
        {
          if (a1 != 284)
          {
            goto LABEL_65;
          }

          v30 = MEMORY[0x1E695DFD8];
          v31 = objc_opt_class();
          v5 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
          v6 = sel_wifiNetworkSharingAskToShareNetworkListWithRequestParams_reply_;
        }
      }

      else if (a1 == 260)
      {
        v62 = MEMORY[0x1E695DFD8];
        v63 = objc_opt_class();
        v5 = [v62 setWithObjects:{v63, objc_opt_class(), 0}];
        v6 = sel_getNearbyRecommendedNetworksWithRequestParams_reply_;
      }

      else
      {
        if (a1 != 266)
        {
          goto LABEL_65;
        }

        v3 = MEMORY[0x1E695DFD8];
        v4 = objc_opt_class();
        v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
        v6 = sel_getRecommendedKnownNetworksWithRequestParams_reply_;
      }

      goto LABEL_62;
    }

    if (a1 > 245)
    {
      switch(a1)
      {
        case 246:
          v53 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
          v12 = sel_setAutoJoinDenyListForNetwork_reason_requestParams_reply_;
          break;
        case 247:
          v53 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
          v12 = sel_clearAutoJoinDenyListForNetwork_reason_requestParams_reply_;
          break;
        case 248:
          v24 = MEMORY[0x1E695DFA8];
          v25 = objc_opt_class();
          v26 = objc_opt_class();
          v27 = objc_opt_class();
          v5 = [v24 setWithObjects:{v25, v26, v27, objc_opt_class(), 0}];
          v6 = sel_queryKnownNetworkInfoForLocalNetworkPromptWithOptions_requestParams_reply_;
          goto LABEL_62;
        default:
          goto LABEL_65;
      }

      [v73 setClasses:v53 forSelector:v12 argumentIndex:0 ofReply:0];

      v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v13 = v73;
      v14 = v11;
      v15 = v12;
      v16 = 2;
LABEL_56:
      [v13 setClasses:v14 forSelector:v15 argumentIndex:v16 ofReply:0];

      v56 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      [v73 setClasses:v56 forSelector:v12 argumentIndex:0 ofReply:1];

      v57 = MEMORY[0x1E695DFD8];
      v58 = objc_opt_class();
      v59 = objc_opt_class();
      v60 = objc_opt_class();
      v61 = objc_opt_class();
      [v57 setWithObjects:{v58, v59, v60, v61, objc_opt_class(), 0}];
      v5 = LABEL_57:;
      v38 = v73;
      v39 = v5;
      v6 = v12;
LABEL_63:
      v40 = 1;
      goto LABEL_64;
    }

    switch(a1)
    {
      case 233:
        v54 = MEMORY[0x1E695DFD8];
        v55 = objc_opt_class();
        v5 = [v54 setWithObjects:{v55, objc_opt_class(), 0}];
        v6 = sel_queryHostAPStationListWithRequestParams_reply_;
        break;
      case 241:
        v51 = MEMORY[0x1E695DFD8];
        v52 = objc_opt_class();
        v5 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
        v6 = sel_queryBackgroundScanCacheWithRequestParams_reply_;
        break;
      case 245:
        v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
        v12 = sel_queryAutoJoinDenyListWithRequestParams_reply_;
        v13 = v73;
        v14 = v11;
        v15 = sel_queryAutoJoinDenyListWithRequestParams_reply_;
        v16 = 0;
        goto LABEL_56;
      default:
        goto LABEL_65;
    }

LABEL_62:
    v38 = v73;
    v39 = v5;
    goto LABEL_63;
  }

  if (a1 > 97)
  {
    if (a1 > 112)
    {
      switch(a1)
      {
        case 113:
          v49 = MEMORY[0x1E695DFD8];
          v50 = objc_opt_class();
          v5 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
          v6 = sel_querySystemActivitiesWithRequestParams_reply_;
          break;
        case 210:
          v41 = MEMORY[0x1E695DFD8];
          v42 = objc_opt_class();
          v5 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
          v6 = sel_queryHardwareSupportedChannelsWithRequestParams_reply_;
          break;
        case 216:
          v22 = MEMORY[0x1E695DFD8];
          v23 = objc_opt_class();
          v5 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
          v6 = sel_queryBeaconCacheWithRequestParams_reply_;
          break;
        default:
          goto LABEL_65;
      }
    }

    else
    {
      switch(a1)
      {
        case 'b':
          v45 = MEMORY[0x1E695DFD8];
          v46 = objc_opt_class();
          v5 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
          v6 = sel_queryEventIDsWithRequestParams_reply_;
          break;
        case 'c':
          v34 = MEMORY[0x1E695DFD8];
          v35 = objc_opt_class();
          v5 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
          v6 = sel_querySystemEventIDsWithRequestParams_reply_;
          break;
        case 'p':
          v9 = MEMORY[0x1E695DFD8];
          v10 = objc_opt_class();
          v5 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
          v6 = sel_queryActivitiesWithRequestParams_reply_;
          break;
        default:
          goto LABEL_65;
      }
    }

    goto LABEL_62;
  }

  if (a1 <= 64)
  {
    switch(a1)
    {
      case 15:
        v43 = MEMORY[0x1E695DFD8];
        v44 = objc_opt_class();
        v5 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
        v6 = sel_querySupportedChannelsWithCountryCode_requestParams_reply_;
        break;
      case 54:
        v32 = MEMORY[0x1E695DFD8];
        v33 = objc_opt_class();
        v5 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
        v6 = sel_queryKnownNetworkProfilesWithProperties_requestParams_reply_;
        break;
      case 64:
        v7 = MEMORY[0x1E695DFD8];
        v8 = objc_opt_class();
        v5 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
        v6 = sel_performScanWithParameters_requestParams_reply_;
        break;
      default:
        goto LABEL_65;
    }

    goto LABEL_62;
  }

  if (a1 == 65)
  {
    v47 = MEMORY[0x1E695DFD8];
    v48 = objc_opt_class();
    v5 = [v47 setWithObjects:{v48, objc_opt_class(), 0}];
    v6 = sel_performANQPWithParameters_requestParams_reply_;
    goto LABEL_62;
  }

  if (a1 != 68)
  {
    if (a1 != 69)
    {
      goto LABEL_65;
    }

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v12 = sel_performRangingWithPeerList_timeout_requestParams_reply_;
    [v73 setClasses:v19 forSelector:sel_performRangingWithPeerList_timeout_requestParams_reply_ argumentIndex:0 ofReply:0];

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    [v20 setWithObjects:{v21, objc_opt_class(), 0, v70, v71, v72}];
    goto LABEL_57;
  }

  v36 = MEMORY[0x1E695DFD8];
  v37 = objc_opt_class();
  v5 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
  v6 = sel_setRangeable_peerList_requestParams_reply_;
  v38 = v73;
  v39 = v5;
  v40 = 0;
LABEL_64:
  [v38 setClasses:v39 forSelector:v6 argumentIndex:1 ofReply:v40];

LABEL_65:
}

void sub_1E0BC286C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1E0BC2974(unint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = 0;
  v26[1] = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (a1 > 8)
  {
    goto LABEL_41;
  }

  if (((1 << a1) & 0x182) != 0)
  {
    v5 = 0;
    if (a2 <= 32)
    {
      switch(a2)
      {
        case 9:
          v24 = 0x1F5B99FA0;
          v10 = MEMORY[0x1E695DEC8];
          v11 = &v24;
          break;
        case 22:
          v26[0] = 0x1F5B99F80;
          v10 = MEMORY[0x1E695DEC8];
          v11 = v26;
          break;
        case 23:
          v25 = 0x1F5B99FC0;
          v7 = MEMORY[0x1E695DEC8];
          v8 = &v25;
          goto LABEL_40;
        default:
          goto LABEL_41;
      }

LABEL_30:
      v5 = [v10 arrayWithObjects:v11 count:1];
      v14 = 0;
      goto LABEL_41;
    }

    v9 = a2 + 55;
    if ((a2 - 201) <= 0x3E)
    {
      if (((1 << v9) & 0x7E00000) != 0)
      {
LABEL_11:
        v21 = @"com.apple.private.corewifi.mac-addr";
        v10 = MEMORY[0x1E695DEC8];
        v11 = &v21;
        goto LABEL_30;
      }

      if (((1 << v9) & 0x6000000000000003) != 0)
      {
        v23 = 0x1F5B99FE0;
        v10 = MEMORY[0x1E695DEC8];
        v11 = &v23;
        goto LABEL_30;
      }

      if (a2 == 218)
      {
        v22 = 0x1F5B9A060;
        v7 = MEMORY[0x1E695DEC8];
        v8 = &v22;
        goto LABEL_40;
      }
    }

    if (a2 != 33 && a2 != 173)
    {
      goto LABEL_41;
    }

    goto LABEL_11;
  }

  if (((1 << a1) & 0xC) != 0)
  {
    v5 = 0;
    if (a2 <= 32)
    {
      switch(a2)
      {
        case 9:
          v19 = 0x1F5B99FA0;
          v7 = MEMORY[0x1E695DEC8];
          v8 = &v19;
          break;
        case 22:
          v20 = 0x1F5B99F80;
          v7 = MEMORY[0x1E695DEC8];
          v8 = &v20;
          break;
        case 23:
          v18 = 0x1F5B99FC0;
          v7 = MEMORY[0x1E695DEC8];
          v8 = &v18;
          break;
        default:
          goto LABEL_41;
      }

      goto LABEL_40;
    }

    v6 = a2 + 55;
    if ((a2 - 201) <= 0x3E)
    {
      if (((1 << v6) & 0x7E00000) != 0)
      {
LABEL_7:
        v15 = @"com.apple.private.corewifi.mac-addr";
        v7 = MEMORY[0x1E695DEC8];
        v8 = &v15;
LABEL_40:
        v5 = [v7 arrayWithObjects:v8 count:1];
        v14 = 1;
        goto LABEL_41;
      }

      if (((1 << v6) & 0x6000000000000003) != 0)
      {
        v17 = 0x1F5B99FE0;
        v7 = MEMORY[0x1E695DEC8];
        v8 = &v17;
        goto LABEL_40;
      }

      if (a2 == 218)
      {
        v16 = 0x1F5B9A060;
        v7 = MEMORY[0x1E695DEC8];
        v8 = &v16;
        goto LABEL_40;
      }
    }

    if (a2 == 33 || a2 == 173)
    {
      goto LABEL_7;
    }
  }

  else if (a1 == 5)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 0xE4)
    {
      v5 = sub_1E0BC8728(2, &v14);
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_41:
  if (a3)
  {
    *a3 = v14;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t sub_1E0BC2CD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2CE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2CF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2D04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2D14(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1E12EA400](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1E0BC2D40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2D50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2D60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2D70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2D80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2D90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2DA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2DB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2DC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2DD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2DE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2DF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E0BC2E00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1E0BC2E18(void *a1)
{
  v1 = a1;
  if ([v1 type] == 64)
  {
    v2 = [v1 info];
    v3 = [v2 objectForKeyedSubscript:@"ScanParams"];

    if ([v3 acceptableCacheAge] == -1 || objc_msgSend(v3, "scanType") == 3)
    {
      v4 = "(CACHE)";
    }

    else
    {
      v4 = "";
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = sub_1E0BC2FCC([v1 type]);
    v6 = [v7 stringWithFormat:@"%@%s-%ld", v8, v4, objc_msgSend(v1, "type")];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v3 = sub_1E0BC2FCC([v1 type]);
    v6 = [v5 stringWithFormat:@"%@-%ld", v3, objc_msgSend(v1, "type")];
  }

  return v6;
}

uint64_t sub_1E0BC2F68(uint64_t a1)
{
  if ((a1 - 70) < 0x19 || (a1 - 181) <= 0x3D && ((1 << (a1 + 75)) & 0x2D0C000000008C29) != 0)
  {
    return 1;
  }

  result = 0;
  v3 = a1 - 261;
  if (v3 <= 0x1B && ((1 << v3) & 0xB280241) != 0)
  {
    return 1;
  }

  return result;
}

__CFString *sub_1E0BC2FCC(uint64_t a1)
{
  v4 = @"NONE";
  switch(a1)
  {
    case 0:
      goto LABEL_849;
    case 1:
      v4 = @"GET INTF NAMES";

      break;
    case 2:
      v4 = @"GET VIRTUAL INTF NAMES";

      break;
    case 3:
      v4 = @"GET INTF NAME";

      break;
    case 4:
      v4 = @"GET INTF CAPS";

      break;
    case 5:
      v4 = @"GET POWER";

      break;
    case 6:
      v4 = @"SET POWER";

      break;
    case 7:
      v4 = @"GET SSID";

      break;
    case 8:
      v4 = @"GET SSID FOR VENDOR";

      break;
    case 9:
      v4 = @"GET BSSID";

      break;
    case 10:
      v4 = @"GET BSSID FOR VENDOR";

      break;
    case 11:
      v4 = @"GET AUTH TYPE";

      break;
    case 12:
      v4 = @"GET SECURITY";

      break;
    case 13:
      v4 = @"GET WEP SUBTYPE";

      break;
    case 14:
      v4 = @"GET WAPI SUBTYPE";

      break;
    case 15:
      v4 = @"GET SUPP CHANNELS";

      break;
    case 16:
      v4 = @"GET CHANNEL";

      break;
    case 17:
      v4 = @"SET CHANNEL";

      break;
    case 18:
      v4 = @"GET RSSI";

      break;
    case 19:
      v4 = @"GET NOISE";

      break;
    case 20:
      v4 = @"GET TX RATE";

      break;
    case 21:
      v4 = @"GET TX POWER";

      break;
    case 22:
      v4 = @"GET COUNTRY CODE";

      break;
    case 23:
      v4 = @"SET COMPANION COUNTRY CODE";

      break;
    case 24:
      v4 = @"GET DTIM INTERVAL";

      break;
    case 25:
      v4 = @"GET GUARD INTERVAL";

      break;
    case 26:
      v4 = @"GET MCS INDEX";

      break;
    case 27:
      v4 = @"GET NSS";

      break;
    case 28:
      v4 = @"GET SUPP PHY MODES";

      break;
    case 29:
      v4 = @"GET PHY MODE";

      break;
    case 30:
      v4 = @"GET OP MODE";

      break;
    case 31:
      v4 = @"GET VIRTUAL INTF ROLE";

      break;
    case 32:
      v4 = @"GET PARENT INTF NAME";

      break;
    case 33:
      v4 = @"GET MAC ADDR";

      break;
    case 34:
      v4 = @"GET RANGING CAPS";

      break;
    case 35:
      v4 = @"GET THERMAL INDEX";

      break;
    case 36:
      v4 = @"SET THERMAL INDEX";

      break;
    case 37:
      v4 = @"GET LINK DOWN STATUS";

      break;
    case 38:
      v4 = @"GET WOW ENABLED";

      break;
    case 39:
      v4 = @"GET AWDL SYNC ENABLED";

      break;
    case 40:
      v4 = @"GET AWDL PREFERRED CHANNELS";

      break;
    case 41:
      v4 = @"GET AWDL SYNC STATE";

      break;
    case 42:
      v4 = @"GET AWDL SYNC CHANNEL SEQ";

      break;
    case 43:
      v4 = @"GET AWDL SYNC PARAMS";

      break;
    case 44:
      v4 = @"GET AWDL STRATEGY";

      break;
    case 45:
      v4 = @"GET AWDL ELECTION PARAMS";

      break;
    case 46:
      v4 = @"GET AWDL ELECTION ID";

      break;
    case 47:
      v4 = @"GET AWDL ELECTION RSSI THRESH";

      break;
    case 48:
      v4 = @"GET AWDL PEER DATABASE";

      break;
    case 49:
      v4 = @"GET AWDL SOCIAL TIME SLOTS";

      break;
    case 50:
      v4 = @"GET AWDL MASTER CHANNEL";

      break;
    case 51:
      v4 = @"GET AWDL SECONDARY MASTER CHANNEL";

      break;
    case 52:
      v4 = @"GET AWDL OP MODE";

      break;
    case 53:
      v4 = @"GET AWDL STATS";

      break;
    case 54:
      v4 = @"GET KNOWN NETWORKS LIST";

      break;
    case 55:
      v4 = @"GET KNOWN NETWORK MATCHING NETWORK PROFILE";

      break;
    case 56:
      v4 = @"GET KNOWN NETWORK MATCHING SCAN RESULT";

      break;
    case 57:
      v4 = @"GET CURR SCAN RESULT";

      break;
    case 58:
      v4 = @"GET CURR KNOWN NETWORK";

      break;
    case 59:
      v4 = @"ADD KNOWN NETWORK";

      break;
    case 60:
      v4 = @"REMOVE KNOWN NETWORK";

      break;
    case 61:
      v4 = @"UPDATE KNOWN NETWORK";

      break;
    case 62:
      v4 = @"ASSOC";

      break;
    case 63:
      v4 = @"DISASSOC";

      break;
    case 64:
      v4 = @"SCAN";

      break;
    case 65:
      v4 = @"ANQP";

      break;
    case 66:
      v4 = @"START AWDL PEER ASSISTED DISC";

      break;
    case 67:
      v4 = @"STOP AWDL PEER ASSISTED DISC";

      break;
    case 68:
      v4 = @"SET RANGEABLE";

      break;
    case 69:
      v4 = @"RANGING";

      break;
    case 70:
      v4 = @"POWER CHANGED EVENT";

      break;
    case 71:
      v4 = @"SSID CHANGED EVENT";

      break;
    case 72:
      v4 = @"BSSID CHANGED EVENT";

      break;
    case 73:
      v4 = @"RSN HANDSHAKE DONE EVENT";

      break;
    case 74:
      v4 = @"COUNTRY CODE CHANGED EVENT";

      break;
    case 75:
      v4 = @"SCAN CACHE UPDATED EVENT";

      break;
    case 76:
      v4 = @"LINK CHANGED EVENT";

      break;
    case 77:
      v4 = @"LINK QUALITY EVENT";

      break;
    case 78:
      v4 = @"MODE CHANGED EVENT";

      break;
    case 79:
      v4 = @"WOW CHANGED EVENT";

      break;
    case 80:
      v4 = @"INTERFACE ADDED EVENT";

      break;
    case 81:
      v4 = @"INTERFACE REMOVED EVENT";

      break;
    case 82:
      v4 = @"AUTO-JOIN STATUS CHANGED EVENT";

      break;
    case 83:
      v4 = @"JOIN STATUS CHANGED EVENT";

      break;
    case 84:
      v4 = @"ROAM STATUS CHANGED EVENT";

      break;
    case 85:
      v4 = @"AWDL REAL TIME MODE STARTED EVENT";

      break;
    case 86:
      v4 = @"AWDL REAL TIME MODE ENDED EVENT";

      break;
    case 87:
      v4 = @"AWDL SYNC STATE CHANGED EVENT";

      break;
    case 88:
      v4 = @"NET SVCE CHANGED EVENT";

      break;
    case 89:
      v4 = @"IPv4 CHANGED EVENT";

      break;
    case 90:
      v4 = @"IPv6 CHANGED EVENT";

      break;
    case 91:
      v4 = @"DNS CHANGED EVENT";

      break;
    case 92:
      v4 = @"DHCP CHANGED EVENT";

      break;
    case 93:
      v4 = @"NET REACHABILITY CHANGED EVENT";

      break;
    case 94:
      v4 = @"EAP8021X CHANGED EVENT";

      break;
    case 95:
      v4 = @"(INTERNAL) WILL ASSOC EVENT";

      break;
    case 96:
      v4 = @"(INTERNAL) ASSOC DONE EVENT";

      break;
    case 97:
      v4 = @"(INTERNAL) AUTO JOIN STATE CHANGED EVENT";

      break;
    case 98:
      v4 = @"GET EVENT REGS";

      break;
    case 99:
      v4 = @"GET SYSTEM EVENT REGS";

      break;
    case 100:
      v4 = @"FOREGROUND APP ACTIVITY";

      break;
    case 101:
      v4 = @"BACKGROUND APP ACTIVITY";

      break;
    case 102:
      v4 = @"WIFI-BOUND ACTIVITY";

      break;
    case 103:
      v4 = @"ENABLE WOW ACTIVITY";

      break;
    case 104:
      v4 = @"QUIESCE WIFI ACTIVITY";

      break;
    case 105:
      v4 = @"DISABLE AUTO-JOIN ACTIVITY";

      break;
    case 106:
      v4 = @"DATAPATH IN USE ACTIVITY";

      break;
    case 107:
      v4 = @"HIGH BANDWIDTH DATAPATH IN USE ACTIVITY";

      break;
    case 108:
      v4 = @"LOW LATENCY DATAPATH IN USE ACTIVITY";

      break;
    case 109:
      v4 = @"2GHZ IN USE ACTIVITY";

      break;
    case 110:
      v4 = @"5GHZ IN USE ACTIVITY";

      break;
    case 111:
      v4 = @"DISABLE LINK RECOVERY ACTIVITY";

      break;
    case 112:
      v4 = @"GET ACTIVITY REGS";

      break;
    case 113:
      v4 = @"GET SYSTEM ACTIVITY REGS";

      break;
    case 114:
      v4 = @"GET IO80211 CONTROLLER INFO";

      break;
    case 115:
      v4 = @"GET IO80211 INTERFACE INFO";

      break;
    case 116:
      v4 = @"GET IPv4 ADDRS";

      break;
    case 117:
      v4 = @"GET IPv4 ROUTER";

      break;
    case 118:
      v4 = @"GET IPv6 ADDRS";

      break;
    case 119:
      v4 = @"GET IPv6 ROUTER";

      break;
    case 120:
      v4 = @"GET NET SVCE ID";

      break;
    case 121:
      v4 = @"GET NET SVCE NAME";

      break;
    case 122:
      v4 = @"GET NET SVCE ENABLED";

      break;
    case 123:
      v4 = @"GET DHCP START";

      break;
    case 124:
      v4 = @"GET DHCP EXPIRE";

      break;
    case 125:
      v4 = @"GET DNS SERVER ADDRS";

      break;
    case 126:
      v4 = @"GET GLOBAL IPv4 ADDRS";

      break;
    case 127:
      v4 = @"GET GLOBAL IPv4 ROUTER";

      break;
    case 128:
    case 133:
      v4 = @"GET GLOBAL IPv4 NET SVCE ID";

      break;
    case 129:
    case 134:
      v4 = @"GET GLOBAL IPv4 NET SVCE NAME";

      break;
    case 130:
    case 135:
      v4 = @"GET GLOBAL IPv4 INTF NAME";

      break;
    case 131:
      v4 = @"GET GLOBAL IPv6 ADDRS";

      break;
    case 132:
      v4 = @"GET GLOBAL IPv6 ROUTER";

      break;
    case 136:
      v4 = @"GET GLOBAL DNS SERVER ADDRS";

      break;
    case 137:
      v4 = @"GET NET REACHABILITY";

      break;
    case 138:
      v4 = @"GET 1X SUPP STATE";

      break;
    case 139:
      v4 = @"GET 1X CONTROL MODE";

      break;
    case 140:
      v4 = @"GET 1X CONTROL STATE";

      break;
    case 141:
      v4 = @"GET 1X CLIENT STATUS";

      break;
    case 142:
      v4 = @"GET ROAM STATUS";

      break;
    case 143:
      v4 = @"GET JOIN STATUS";

      break;
    case 144:
      v4 = @"GET AUTO JOIN STATUS";

      break;
    case 145:
      v4 = @"GET DEVICE UUID";

      break;
    case 146:
      v4 = @"GET AWDL SIDECAR DIAGNOSTICS";

      break;
    case 147:
      v4 = @"GET POWER STATE";

      break;
    case 148:
      v4 = @"GET CHAIN ACK";

      break;
    case 149:
      v4 = @"GET TX CHAIN POWER";

      break;
    case 150:
      v4 = @"GET DESENSE";

      break;
    case 151:
      v4 = @"GET DESENSE LEVEL";

      break;
    case 152:
      v4 = @"GET BT COEX CONFIG";

      break;
    case 153:
      v4 = @"GET BT COEX PROFILES 2GHZ";

      break;
    case 154:
      v4 = @"GET BT COEX PROFILES 5GHZ";

      break;
    case 155:
      v4 = @"GET BT COEX MODE";

      break;
    case 156:
      v4 = @"GET LEAKY AP STATS";

      break;
    case 157:
      v4 = @"GET AWDL EXT STATE MACHINE PARAMS";

      break;
    case 158:
      v4 = @"GET AWDL ELECTION METRIC";

      break;
    case 159:
      v4 = @"GET AWDL PRESENCE MODE";

      break;
    case 160:
      v4 = @"GET AWDL GUARD TIME";

      break;
    case 161:
      v4 = @"GET AWDL AVAIL WINDOW AP ALIGNMENT";

      break;
    case 162:
      v4 = @"GET AWDL CONT ELECTION ALGORITHM ENABLED";

      break;
    case 163:
      v4 = @"GET AWDL AF TX MODE";

      break;
    case 164:
      v4 = @"GET AWDL PEER TRAFFIC REG";

      break;
    case 165:
      v4 = @"GET AWDL ENCRYPTION TYPE";

      break;
    case 166:
      v4 = @"GET AWDL BTLE STATE PARAMS";

      break;
    case 167:
      v4 = @"GET LINK QUALITY METRIC";

      break;
    case 168:
      v4 = @"CANCEL";

      break;
    case 169:
      v4 = @"START MONITORING EVENT";

      break;
    case 170:
      v4 = @"STOP MONITORING EVENT";

      break;
    case 171:
      v4 = @"BEGIN ACTIVITY";

      break;
    case 172:
      v4 = @"END ACTIVITY";

      break;
    case 173:
      v4 = @"GET HW MAC ADDR";

      break;
    case 174:
      v4 = @"SET RANGING IDENTIFIER";

      break;
    case 175:
      v4 = @"GET LQM SUMMARY";

      break;
    case 176:
      v4 = @"GET POWER DEBUG INFO";

      break;
    case 177:
      v4 = @"AUTO-JOIN";

      break;
    case 178:
      v4 = @"GET CCA";

      break;
    case 179:
      v4 = @"GET USER AUTO JOIN STATE";

      break;
    case 180:
      v4 = @"SET USER AUTO JOIN STATE";

      break;
    case 181:
      v4 = @"USER AUTO JOIN STATE CHANGED EVENT";

      break;
    case 182:
      v4 = @"GET AUTO HOTSPOT MODE";

      break;
    case 183:
      v4 = @"SET AUTO HOTSPOT MODE";

      break;
    case 184:
      v4 = @"AUTO HOTSPOT MODE CHANGED EVENT";

      break;
    case 185:
      v4 = @"GET WIFI UI STATE FLAGS";

      break;
    case 186:
      v4 = @"WIFI UI STATE FLAGS CHANGED EVENT";

      break;
    case 187:
      v4 = @"GET RX RATE";

      break;
    case 188:
      v4 = @"SENSING";

      break;
    case 189:
      v4 = @"GET USER SETTINGS";

      break;
    case 190:
      v4 = @"SET USER SETTINGS";

      break;
    case 191:
      v4 = @"USER SETTING CHANGED EVENT";

      break;
    case 192:
      v4 = @"LINK DOWN DEBOUNCE FAILED EVENT";

      break;
    case 193:
      v4 = @"GET AUTO-JOIN METRIC";

      break;
    case 194:
      v4 = @"GET AUTO-JOIN STATS";

      break;
    case 195:
      v4 = @"RESET AUTO-JOIN STATS";

      break;
    case 196:
      v4 = @"KNOWN NETWORK PROFILE CHANGED EVENT";

      break;
    case 197:
      v4 = @"BAND SUPPORT FOR CURRENT COUNTRY";

      break;
    case 198:
      v4 = @"ADD KNOWN BSS";

      break;
    case 199:
      v4 = @"REMOVE KNOWN BSS";

      break;
    case 200:
      v4 = @"UPDATED KNOWN BSS";

      break;
    case 201:
      v4 = @"GET PASSWORD";

      break;
    case 202:
      v4 = @"SET PASSWORD";

      break;
    case 203:
      v4 = @"GET IPv4 SUBNET MASKS";

      break;
    case 204:
      v4 = @"GET IPv4 ARP RESOLVED HW ADDR";

      break;
    case 205:
      v4 = @"GET IPv4 ARP RESOLVED IP ADDR";

      break;
    case 206:
      v4 = @"GET DHCP SERVER ID";

      break;
    case 207:
      v4 = @"GET DHCPv6 SERVER ID";

      break;
    case 208:
      v4 = @"GET IPv4 NETWORK SIGNATURE";

      break;
    case 209:
      v4 = @"GET IPv6 NETWORK SIGNATURE";

      break;
    case 210:
      v4 = @"GET HW SUPP CHANNELS";

      break;
    case 211:
      v4 = @"GET MAX LINK SPEED";

      break;
    case 212:
      v4 = @"GET STATE";

      break;
    case 213:
      v4 = @"GET POWERSAVE";

      break;
    case 214:
      v4 = @"GET MAX NSS FOR AP";

      break;
    case 215:
      v4 = @"GET TX NSS";

      break;
    case 216:
      v4 = @"GET BEACON CACHE";

      break;
    case 217:
      v4 = @"GET BLOCKED BANDS";

      break;
    case 218:
      v4 = @"SET BLOCKED BANDS";

      break;
    case 219:
      v4 = @"UPDATE SOFT AP BAND";

      break;
    case 220:
      v4 = @"START HOSTAP MODE";

      break;
    case 221:
      v4 = @"STOP HOSTAP MODE";

      break;
    case 222:
      v4 = @"GET PRIVATE MAC ADDR";

      break;
    case 223:
      v4 = @"GET PRIVATE MAC MODE";

      break;
    case 224:
      v4 = @"SET PRIVATE MAC USER SETTING";

      break;
    case 225:
      v4 = @"GET PRIVATE MAC MODE SYSTEM SETTING";

      break;
    case 226:
      v4 = @"SET PRIVATE MAC SYSTEM SETTING";

      break;
    case 227:
      v4 = @"SET PRIVATE MAC USER JOIN FAILURE UI STATE";

      break;
    case 228:
      v4 = @"GET QUICK PROBE REQUIRED";

      break;
    case 229:
      v4 = @"REPORT QUICK PROBE RESULT";

      break;
    case 230:
      v4 = @"DISABLE PRIVATE MAC ADDR ROTATION ACTIVITY";

      break;
    case 231:
      v4 = @"HOSTAP STA DID ARRIVE EVENT";

      break;
    case 232:
      v4 = @"HOSTAP STA DID LEAVE EVENT";

      break;
    case 233:
      v4 = @"GET HOSTAP STA LIST";

      break;
    case 234:
      v4 = @"GET LQM CONFIG";

      break;
    case 235:
      v4 = @"SET LQM CONFIG";

      break;
    case 236:
      v4 = @"GET WIFI ASSIST OVERRIDE REASONS";

      break;
    case 237:
      v4 = @"WIFI ASSIST CONFIG CHANGED EVENT";

      break;
    case 238:
      v4 = @"NEARBY DEVICE DISCOVERY";

      break;
    case 239:
      v4 = @"NEARBY DEVICE DISCOVERY RESULT EVENT";

      break;
    case 240:
      v4 = @"NEARBY DEVICE DISCOVERY DONE EVENT";

      break;
    case 241:
      v4 = @"GET BG SCAN CACHE";

      break;
    case 242:
      v4 = @"BG SCAN CACHE NETWK AVAILABLE EVENT";

      break;
    case 243:
      v4 = @"GET BG SCAN CONFIG";

      break;
    case 244:
      v4 = @"SET BG SCAN CONFIG";

      break;
    case 248:
      v4 = @"GET KNOWN NETWORK INFO LOCAL NETWORK";

      break;
    case 249:
      v4 = @"GET NETWORK SIGNATURE";

      break;
    case 250:
      v4 = @"GET NETWK MANAGED BY MDM";

      break;
    case 251:
      v4 = @"GET DEVICE SUPERVISED";

      break;
    case 252:
      v4 = @"CHECKIN";

      break;
    case 253:
      v4 = @"SEND XPC EVENT";

      break;
    case 254:
      v4 = @"DUMP LOGS";

      break;
    case 255:
      v4 = @"GET CLOUD NETWORKS";

      break;
    case 256:
      v4 = @"GET NETWORK WARNING FLAGS";

      break;
    case 258:
      v4 = @"GET KNOWN NETWORKS IN SAME LAN";

      break;
    case 259:
      v4 = @"GET KNOWN NETWORKS WITH NETWORK SIGNATURE";

      break;
    case 260:
      v4 = @"GET NEARBY RECOMMENDED NETWORKS";

      break;
    case 261:
      v4 = @"NEARBY RECOMMENDED NETWORKS CHANGE EVENT";

      break;
    case 262:
      v4 = @"GET CAPTIVE PORTAL CREDS";

      break;
    case 263:
      v4 = @"SET CAPTIVE PORTAL CREDS";

      break;
    case 264:
      v4 = @"GET NOI HOME STATE";

      break;
    case 265:
      v4 = @"GET NOI WORK STATE";

      break;
    case 266:
      v4 = @"GET RECOMMENDED KNOWN NETWORKS";

      break;
    case 267:
      v4 = @"RECOMMENDED KNOWN NETWORKS CHANGE EVENT";

      break;
    case 268:
      v4 = @"GET BROKEN BACKHAUL STATE";

      break;
    case 269:
      v4 = @"GET BROKEN BACKHAUL STATE UPDATED AT";

      break;
    case 270:
      v4 = @"BROKEN BACKHAUL STATE CHANGED EVENT";

      break;
    case 271:
      v4 = @"CONFIRM BROKEN BACKHAUL PROBE";

      break;
    case 272:
      v4 = @"UPDATE MULTIPLE KNOWN NETWORKS";

      break;
    case 273:
      v4 = @"GET POWERTABLE INFO";

      break;
    case 274:
      v4 = @"DRIVER AVAILABILITY EVENT";

      break;
    case 275:
      v4 = @"SET UCMEXT PROFILE";

      break;
    case 276:
      v4 = @"ASK TO SHARE WIFI NETWORK SHARING NETWORK FROM APPEX";

      break;
    case 277:
      v4 = @"ASK TO SHARE WIFI NETWORK SHARING NETWORK FROM APP";

      break;
    case 278:
      v4 = @"GET WIFI NETWORK SHARING ASK STATUS";

      break;
    case 279:
      v4 = @"SET WIFI NETWORK SHARING ASK STATUS";

      break;
    case 280:
      v4 = @"WIFI NETWORK SHARING ASK STATUS CHANGED EVENT";

      break;
    case 281:
      v4 = @"GET WIFI NETWORK SHARING NETWORKS LIST";

      break;
    case 282:
      v4 = @"WIFI NETWORK SHARING NETWORKS LIST UPDATE EVENT";

      break;
    case 283:
      v4 = @"ACK WIFI NETWORK SHARING NETWORKS LIST UPDATE";

      break;
    case 284:
      v4 = @"GET WIFI NETWORK SHARING ASK TO SHARE NETWORKS LIST";

      break;
    case 285:
      v4 = @"WIFI NETWORK SHARING ASK TO SHARE NETWORKS LIST CHANGED EVENT";

      break;
    case 286:
      v4 = @"WIFI NETWORK SHARING PERFORM ACCESSORY SCAN EVENT";

      break;
    case 287:
      v4 = @"WIFI NETWORK SHARING GET AUTH LEVEL";

      break;
    case 288:
      v4 = @"WIFI NETWORK SHARING AUTH LEVEL CHANGED EVENT";

      break;
    case 289:
      v4 = @"REQUEST WIFI NETWORK SHARING AUTHORIZATION";

      break;
    default:
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
LABEL_849:

      break;
  }

  return v4;
}

void sub_1E0BC50B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *sub_1E0BC50F8(__CFString *a1)
{
  if (qword_1ED7E3838 != -1)
  {
    dispatch_once(&qword_1ED7E3838, &unk_1F5B89D10);
  }

  if (+[CWFInterface logRedactionDisabled])
  {
    v2 = a1;
  }

  else
  {
    v2 = @"<redacted>";
  }

  return v2;
}

uint64_t sub_1E0BC5208(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if ((a1 - 1) < 3)
  {
    if ((a2 == 22 || a2 == 9) && (([v9 isEqualToString:@"florence"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"nightingale") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"milod")))
    {
      v11 = 0;
      v12 = 1;
      goto LABEL_26;
    }

LABEL_25:
    v12 = 0;
    v11 = 0;
    goto LABEL_26;
  }

  if (a1 != 5)
  {
    goto LABEL_25;
  }

  if (a2 == 22 || a2 == 9)
  {
    v19 = 0x1F5B9A020;
    v13 = &v19;
  }

  else
  {
    if (a2 != 7)
    {
      goto LABEL_25;
    }

    if (os_variant_has_internal_content() && ([v10 containsObject:@"corewifi_api_force_non_internal=1"] & 1) == 0)
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138543874;
        v22 = v9;
        v23 = 2114;
        v24 = @"com.apple.corewlan-xpc";
        v25 = 2114;
        v26 = @"GET SSID";
        _os_log_send_and_compose_impl();
      }

      goto LABEL_25;
    }

    v20 = 0x1F5B9A020;
    v13 = &v20;
  }

  v13[1] = 0x1F5B9A040;
  v13[2] = 0x1F5B99DA0;
  v13[3] = 0x1F5B99DE0;
  v13[4] = 0x1F5B99E20;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v12 = 1;
  if (a5 && v11)
  {
    v11 = v11;
    *a5 = v11;
  }

LABEL_26:

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t sub_1E0BC5480(int a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v9 = a4;
  v10 = v9;
  v11 = a2 - 1;
  if ((a2 - 1) > 6 || ((0x47u >> v11) & 1) == 0)
  {
    v13 = 1;
    LOBYTE(v12) = 1;
    goto LABEL_12;
  }

  v12 = 7u >> v11;
  v13 = 1;
  if (a3 > 172)
  {
    if ((a3 - 222) >= 6 && a3 != 173)
    {
      if (a3 != 218 || ([v9 isEqualToString:@"profiled"] & 1) != 0)
      {
        goto LABEL_12;
      }

      v14 = @"wifiutil";
LABEL_9:
      if (![v10 isEqualToString:v14])
      {
        v13 = 0;
      }

      goto LABEL_12;
    }

LABEL_18:
    if ([v9 isEqualToString:@"wifivelocityd"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"wifid") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"Preferences") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"Setup") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"NanoSettings") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"TVSettings") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"WiFiPickerExtension") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"WiFi") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"wifianalyze") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"inboxupdaterd") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"wifiutil") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"BackgroundShortcutRunner") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"florence") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"nightingale") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"milod") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"lockdownd") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"lockdownd.watch") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"lockdownd.internal"))
    {
      goto LABEL_12;
    }

    v14 = @"lockdownd.watch.internal";
    goto LABEL_9;
  }

  if (a3 != 9)
  {
    if (a3 == 22)
    {
      if ([v9 isEqualToString:@"wifivelocityd"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"wifid") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"Preferences") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"Setup") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"NanoSettings") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"TVSettings") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"WiFiPickerExtension") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"MuseBuddyApp") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"locationd") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"WiFi") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"symptomsd") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"wifianalyze") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"inboxupdaterd") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"wifiutil") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"nearbyd") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"florence") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"nightingale") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"milod"))
      {
        goto LABEL_12;
      }

      v14 = @"coreautomationd";
      goto LABEL_9;
    }

    if (a3 != 33)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  if (([v9 isEqualToString:@"wifivelocityd"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"wifid") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"Preferences") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"Setup") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"NanoSettings") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"TVSettings") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"WiFiPickerExtension") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"aonsensed") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"locationd") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"WiFi") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"symptomsd") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"wifianalyze") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"inboxupdaterd") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"wifiutil") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"BackgroundShortcutRunner") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"florence") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"nightingale") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"milod") & 1) == 0)
  {
    v13 = [v10 isEqualToString:@"coreautomationd"];
    if ((v13 & 1) == 0)
    {
      if (a1)
      {
        v13 = [&unk_1F5BB99A0 containsObject:v10];
      }
    }
  }

LABEL_12:
  if (a5)
  {
    *a5 = v12 & 1;
  }

  return v13;
}

void sub_1E0BC5BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BC6244(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_1E0BC63E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BC6400(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isCancelled])
  {
    v1 = [WeakRetained response];

    if (v1)
    {
      v2 = [WeakRetained response];
      v3 = *MEMORY[0x1E696A798];
      v4 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x59uLL);
      v5 = CWFErrorWithDescription(v3, 89, v4);
      (v2)[2](v2, v5, 0);
    }
  }

  v6 = [WeakRetained forwardToCompletionBlock];

  if (v6)
  {
    v7 = [WeakRetained forwardToCompletionBlock];
    v7[2]();
  }
}

BOOL sub_1E0BC739C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_DEVICE_IE"];
  v2 = v1 != 0;

  return v2;
}

BOOL sub_1E0BC73D8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"11U_INTERWORKING_IE"];
  v2 = v1 != 0;

  return v2;
}

BOOL sub_1E0BC7414(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"FILS_DISC_INFO"];
  v2 = v1 != 0;

  return v2;
}

BOOL sub_1E0BC7450(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"RSN_IE"];
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_1E0BC748C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"RSN_IE"];
  v2 = [v1 objectForKeyedSubscript:@"IE_KEY_RSN_CAPS"];
  v3 = [v2 objectForKeyedSubscript:@"RSN_CAPABILITIES"];
  v4 = [v3 unsignedIntValue];

  return v4;
}

id sub_1E0BC7504(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"RSN_IE"];
  v2 = [v1 objectForKeyedSubscript:@"IE_KEY_RSN_AUTHSELS"];

  return v2;
}

uint64_t sub_1E0BC7560(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"RSN_IE"];
  v2 = [v1 objectForKeyedSubscript:@"IE_KEY_RSN_BCIPHER"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

uint64_t sub_1E0BC75C0(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"RSN_IE"];
  v2 = [v1 objectForKeyedSubscript:@"IE_KEY_RSN_MCIPHER"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

id sub_1E0BC7620(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"RSN_IE"];
  v2 = [v1 objectForKeyedSubscript:@"IE_KEY_RSN_UCIPHERS"];

  return v2;
}

id sub_1E0BC767C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"WPA_IE"];
  v2 = [v1 objectForKeyedSubscript:@"IE_KEY_WPA_AUTHSELS"];

  return v2;
}

BOOL sub_1E0BC76D8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"WPA_IE"];
  v2 = v1 != 0;

  return v2;
}

id sub_1E0BC7714(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"WPA_IE"];
  v2 = [v1 objectForKeyedSubscript:@"IE_KEY_WPA_UCIPHERS"];

  return v2;
}

uint64_t sub_1E0BC7770(void *a1)
{
  v1 = [a1 __WAPIPolicy];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedIntValue];
    if ((v3 & 4) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = (v3 >> 2) & 2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1E0BC77D4(void *a1)
{
  v37 = [a1 WAPISubtype];
  v2 = [a1 objectForKeyedSubscript:@"WEP"];
  v36 = [v2 BOOLValue];

  v3 = [a1 objectForKeyedSubscript:@"WPA_IE"];
  v4 = [v3 objectForKeyedSubscript:@"IE_KEY_WPA_AUTHSELS"];

  v34 = [v4 containsObject:&unk_1F5BBD390];
  v38 = v4;
  v35 = [v4 containsObject:&unk_1F5BBD3A8];
  v5 = [a1 objectForKeyedSubscript:@"RSN_IE"];
  v6 = [v5 objectForKeyedSubscript:@"IE_KEY_RSN_AUTHSELS"];

  v7 = [a1 objectForKeyedSubscript:@"RSN_IE"];
  v8 = [v7 objectForKeyedSubscript:@"IE_KEY_RSN_CAPS"];

  v33 = [v6 containsObject:&unk_1F5BBD390];
  v32 = [v6 containsObject:&unk_1F5BBD3C0];
  v31 = [v6 containsObject:&unk_1F5BBD3D8];
  v29 = [v6 containsObject:&unk_1F5BBD3A8];
  v28 = [v6 containsObject:&unk_1F5BBD3F0];
  v27 = [v6 containsObject:&unk_1F5BBD408];
  v9 = [v6 containsObject:&unk_1F5BBD420];
  v10 = [v6 containsObject:&unk_1F5BBD438];
  v11 = [v6 containsObject:&unk_1F5BBD450];
  v12 = [v6 containsObject:&unk_1F5BBD468];
  v30 = [v6 containsObject:&unk_1F5BBD480];
  v13 = [v6 containsObject:&unk_1F5BBD498];
  v14 = [v8 objectForKeyedSubscript:@"MFP_CAPABLE"];
  v26 = [v14 BOOLValue];

  v15 = [v8 objectForKeyedSubscript:@"MFP_REQUIRED"];
  v25 = [v15 BOOLValue];

  v16 = [v6 containsObject:&unk_1F5BBD4B0];
  v17 = [a1 objectForKeyedSubscript:@"SCAN_RESULT_OWE_MULTI_SSID"];
  v18 = [v17 BOOLValue];

  v19 = 2;
  if ((v37 - 1) >= 2)
  {
    v19 = v36;
  }

  if (v34)
  {
    v19 |= 4uLL;
  }

  if (((v33 | v32) | v31))
  {
    v19 |= 0x10uLL;
  }

  if (((v11 | v12) | (v9 | v10)))
  {
    v19 |= 0x40uLL;
  }

  if (v35)
  {
    v19 |= 8uLL;
  }

  if ((v29 & 1) != 0 || (v28 & 1) != 0 || (v20 = v19, v27))
  {
    v20 = v19 | 0x20;
    if (!(v29 & 1 | ((v26 & 1) == 0)))
    {
      v21 = v19 | 0xA0;
      if (v25)
      {
        v20 = v21;
      }
    }
  }

  if ((v30 | v13))
  {
    v22 = v20 | 0x80;
  }

  else
  {
    v22 = v20;
  }

  if (v16)
  {
    v22 = 256;
  }

  if (v18)
  {
    v22 = 768;
  }

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = 512;
  }

  return v23;
}

uint64_t sub_1E0BC7B70(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [a1 objectForKeyedSubscript:@"PHY_MODE"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntValue];
  }

  else
  {
    [a1 objectForKeyedSubscript:@"RATES"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = v30 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = *v28;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [*(*(&v27 + 1) + 8 * i) unsignedIntegerValue];
          if (v12 <= 0x36)
          {
            if (((1 << v12) & 0x41001001041240) != 0)
            {
              v9 = 1;
            }

            else if (((1 << v12) & 0x826) != 0)
            {
              v8 = 1;
            }
          }

          if (v8 & 1) != 0 && (v9)
          {
            v8 = 1;
            v9 = 1;
            goto LABEL_20;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

LABEL_20:

    v13 = [a1 objectForKeyedSubscript:@"HT_CAPS_IE"];

    v14 = [a1 objectForKeyedSubscript:@"VHT_CAPS_IE"];

    v15 = [a1 objectForKeyedSubscript:@"HE_CAP"];

    v16 = [a1 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
    v17 = [v16 unsignedIntValue];

    v18 = [a1 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
    v19 = [v18 unsignedIntValue];
    if (v9)
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20 & (v17 >> 3);
    v22 = v21 | 4;
    if ((v8 & 1) == 0)
    {
      v22 = v21;
    }

    if ((v19 & 8) == 0)
    {
      v22 = v21;
    }

    if (v9)
    {
      v22 |= 8u;
    }

    if ((v19 & 8) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    v24 = v23 | 0x10;
    if (!v13)
    {
      v24 = v23;
    }

    if (v14)
    {
      v24 |= 0x80u;
    }

    if (v15)
    {
      v4 = v24 | 0x100;
    }

    else
    {
      v4 = v24;
    }

    v3 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1E0BC7E28(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_IE_PRODUCT_ID"];
  v3 = [v2 intValue];

  return v3;
}

uint64_t sub_1E0BC7E88(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"APPLE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"APPLE_IE_UNCONFIGURED"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1E0BC7EE8(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"AP_MODE"];
  v2 = [v1 unsignedIntValue];

  return v2;
}

uint64_t sub_1E0BC7F28(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"MBO_OCE_IE"];
  v2 = [v1 objectForKeyedSubscript:@"ASSOC_DISALLOWED_REASON_CODE"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

BOOL sub_1E0BC7F88(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"IOS_IE"];
  v2 = v1 != 0;

  return v2;
}

id sub_1E0BC7FC4(void *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKeyedSubscript:@"RNR_IE"];
  [v1 objectForKeyedSubscript:@"NEIGHBOR_AP_INFO_LIST"];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v32 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  v29 = v1;
  v2 = 0;
  if (v32)
  {
    v31 = *v41;
    do
    {
      v3 = 0;
      do
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v3;
        v4 = *(*(&v40 + 1) + 8 * v3);
        v5 = [v4 objectForKeyedSubscript:@"CHANNEL"];
        v6 = [v4 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
        v7 = objc_alloc_init(CWFChannel);
        v34 = v5;
        -[CWFChannel setChannel:](v7, "setChannel:", [v5 unsignedCharValue]);
        v33 = v6;
        -[CWFChannel setFlags:](v7, "setFlags:", [v6 unsignedIntValue]);
        v8 = [v4 objectForKeyedSubscript:@"TBTT_INFO_SET"];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v37;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v37 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v36 + 1) + 8 * i);
              v14 = objc_alloc_init(CWFRNRBSS);
              [(CWFRNRBSS *)v14 setChannel:v7];
              v15 = [v13 objectForKeyedSubscript:@"SHORT_SSID"];
              -[CWFRNRBSS setShortSSID:](v14, "setShortSSID:", [v15 unsignedIntValue]);

              v16 = [v13 objectForKeyedSubscript:@"BSSID"];
              v17 = CWFCorrectEthernetAddressString(v16);
              [(CWFRNRBSS *)v14 setBSSID:v17];

              v18 = [v13 objectForKeyedSubscript:@"SAME_SSID"];
              -[CWFRNRBSS setSameSSID:](v14, "setSameSSID:", [v18 BOOLValue]);

              v19 = [v13 objectForKeyedSubscript:@"MULTIPLE_BSSID"];
              -[CWFRNRBSS setMultipleBSSID:](v14, "setMultipleBSSID:", [v19 BOOLValue]);

              v20 = [v13 objectForKeyedSubscript:@"TRANSMITTED_BSSID"];
              -[CWFRNRBSS setTransmittedBSSID:](v14, "setTransmittedBSSID:", [v20 BOOLValue]);

              v21 = [v13 objectForKeyedSubscript:@"MEMBER_OF_ESS_WITH_2GHZ_OR_5GHZ_COLOCATED_AP"];
              -[CWFRNRBSS setMultiband6GHz:](v14, "setMultiband6GHz:", [v21 BOOLValue]);

              v22 = [v13 objectForKeyedSubscript:@"UPR_ACTIVE"];
              -[CWFRNRBSS setUPRActive:](v14, "setUPRActive:", [v22 BOOLValue]);

              v23 = [v13 objectForKeyedSubscript:@"COLOCATED_AP"];
              -[CWFRNRBSS setColocatedAP:](v14, "setColocatedAP:", [v23 BOOLValue]);

              v24 = [v13 objectForKeyedSubscript:@"TBTT_OFFSET"];
              -[CWFRNRBSS setTBTTOffset:](v14, "setTBTTOffset:", [v24 unsignedCharValue]);

              v25 = [v13 objectForKeyedSubscript:@"20MHZ_PSD"];
              -[CWFRNRBSS setPrimary20MHzPSD:](v14, "setPrimary20MHzPSD:", [v25 unsignedCharValue]);

              if (!v2)
              {
                v2 = [MEMORY[0x1E695DF70] array];
              }

              [v2 addObject:v14];
            }

            v10 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v10);
        }

        v3 = v35 + 1;
      }

      while (v35 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v32);
  }

  v26 = [v2 copy];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

BOOL sub_1E0BC8440(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"HOTSPOT20_IE"];
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_1E0BC8594()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!qword_1ECE81B08)
  {
    qword_1ECE81B08 = _sl_dlopen();
  }

  result = qword_1ECE81B08;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1E0BC8664(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v6 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath_audittoken(v1, buffer, 0x1000u) < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:buffer encoding:4];
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id sub_1E0BC8728(uint64_t a1, char *a2)
{
  v4 = 0;
  v5 = 0;
  v22[3] = *MEMORY[0x1E69E9840];
  if (a1 <= 6)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        v22[0] = 0x1F5B99DA0;
        v22[1] = 0x1F5B9A000;
        v22[2] = 0x1F5B9A020;
        v6 = MEMORY[0x1E695DEC8];
        v7 = v22;
        v8 = 3;
      }

      else
      {
        if (a1 != 2)
        {
          goto LABEL_26;
        }

        v21[0] = 0x1F5B99DE0;
        v21[1] = 0x1F5B99DA0;
        v21[2] = 0x1F5B9A000;
        v21[3] = 0x1F5B9A020;
        v6 = MEMORY[0x1E695DEC8];
        v7 = v21;
        v8 = 4;
      }
    }

    else
    {
      switch(a1)
      {
        case 3:
          v20[0] = 0x1F5B99E20;
          v20[1] = 0x1F5B99DE0;
          v20[2] = 0x1F5B99DA0;
          v20[3] = 0x1F5B9A000;
          v20[4] = 0x1F5B9A020;
          v6 = MEMORY[0x1E695DEC8];
          v7 = v20;
          break;
        case 4:
          v19[0] = 0x1F5B99E60;
          v19[1] = 0x1F5B99DE0;
          v19[2] = 0x1F5B99DA0;
          v19[3] = 0x1F5B9A000;
          v19[4] = 0x1F5B9A020;
          v6 = MEMORY[0x1E695DEC8];
          v7 = v19;
          break;
        case 5:
          v18[0] = 0x1F5B99E60;
          v18[1] = 0x1F5B99DE0;
          v18[2] = 0x1F5B99DA0;
          v18[3] = 0x1F5B9A000;
          v18[4] = 0x1F5B9A020;
          v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];
          v4 = 0;
          if (!a2)
          {
            goto LABEL_28;
          }

LABEL_27:
          *a2 = v4;
          goto LABEL_28;
        default:
LABEL_26:
          if (!a2)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
      }

      v8 = 5;
    }

LABEL_25:
    v5 = [v6 arrayWithObjects:v7 count:v8];
    v4 = 1;
    goto LABEL_26;
  }

  if (a1 > 8)
  {
    switch(a1)
    {
      case 9:
        v15 = 0x1F5B99DA0;
        v9 = MEMORY[0x1E695DEC8];
        v4 = 1;
        v10 = &v15;
        break;
      case 10:
        v14 = 0x1F5B99DA0;
        v9 = MEMORY[0x1E695DEC8];
        v4 = 1;
        v10 = &v14;
        break;
      case 11:
        v13[0] = 0x1F5B99DA0;
        v13[1] = 0x1F5B9A100;
        v6 = MEMORY[0x1E695DEC8];
        v7 = v13;
        v8 = 2;
        goto LABEL_25;
      default:
        goto LABEL_26;
    }

    goto LABEL_32;
  }

  if (a1 != 7)
  {
    v16 = 0x1F5B9A080;
    v9 = MEMORY[0x1E695DEC8];
    v4 = 1;
    v10 = &v16;
LABEL_32:
    v5 = [v9 arrayWithObjects:v10 count:1];
    if (a2)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v17 = 0x1F5B9A000;
  v4 = 1;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  if (a2)
  {
    goto LABEL_27;
  }

LABEL_28:
  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

id sub_1E0BC8B28(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"PRIVATE_MAC_ADDRESS"];
  v2 = [v1 objectForKeyedSubscript:@"PRIVATE_MAC_ADDRESS_VALUE"];
  v3 = CWFEthernetAddressStringFromData(v2);

  return v3;
}

id CWFEthernetAddressStringFromData(void *a1)
{
  v1 = a1;
  if ([v1 length] == 6 && (v2 = objc_msgSend(v1, "bytes")) != 0)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *v2, v2[1], v2[2], v2[3], v2[4], v2[5]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1E0BC8C48(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [a1 objectForKeyedSubscript:@"ORIG_RNR_CHANNEL_LIST"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v17 = 0u;
  v1 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *v15;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:@"CHANNEL"];
        v8 = [v6 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
        v9 = objc_alloc_init(CWFChannel);
        -[CWFChannel setChannel:](v9, "setChannel:", [v7 unsignedCharValue]);
        -[CWFChannel setFlags:](v9, "setFlags:", [v8 unsignedIntValue]);
        if (!v3)
        {
          v3 = [MEMORY[0x1E695DF70] array];
        }

        [v3 addObject:v9];
      }

      v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v10 = [v3 copy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t sub_1E0BC8E1C(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [a1 informationElementData];
  if ([v3 length])
  {
    [v3 bytes];
    [v3 length];
    Apple80211ParseAppleSWAPIE();
  }

  v4 = [v2 objectForKeyedSubscript:@"APPLE_SWAP_IE"];
  v5 = [v4 objectForKeyedSubscript:@"SWAP_IE_FEATURE_INTERNET_CONNECTION_SHARING_ENABLED"];
  v6 = [v5 BOOLValue];

  return v6;
}

uint64_t sub_1E0BC8EE8(void *a1)
{
  v2 = [a1 SSID];
  if (v2)
  {
    Apple80211CalculateShortSSIDCopy();
    v4 = 0;
  }

  else
  {
    v3 = [a1 objectForKeyedSubscript:@"SHORT_SSID"];
    v4 = [v3 unsignedIntValue];
  }

  return v4;
}

uint64_t sub_1E0BC8FE0(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = [a3 BOOLValue];
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  return result;
}

__CFString *sub_1E0BC9038(unint64_t a1)
{
  if (a1 >= 0x2F)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5838[a1];
  }

  return v2;
}

uint64_t sub_1E0BC90A8(uint64_t a1)
{
  if ((a1 - 1) > 0x2E)
  {
    return 0;
  }

  else
  {
    return qword_1E0D81678[a1 - 1];
  }
}

uint64_t sub_1E0BC9220(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"BEACON_INT"];
  v2 = [v1 integerValue];

  return v2;
}

uint64_t sub_1E0BC926C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"NOISE"];
  v2 = [v1 integerValue];

  return v2;
}

uint64_t sub_1E0BC92AC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"CONNECTED_BSSID"];
  v2 = [v1 BOOLValue];

  return v2;
}

uint64_t sub_1E0BC92EC(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"RSSI"];
  v2 = [v1 integerValue];

  return v2;
}

id sub_1E0BC9338(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"80211D_IE"];
  v2 = [v1 objectForKeyedSubscript:@"IE_KEY_80211D_COUNTRY_CODE"];

  return v2;
}

id sub_1E0BC9394(void *a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [a1 objectForKeyedSubscript:@"CHANNEL"];
  v3 = [a1 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v9[0] = @"CHANNEL";
    v9[1] = @"CHANNEL_FLAGS";
    v10[0] = v2;
    v10[1] = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id sub_1E0BC947C(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"BSSID"];
  v2 = CWFCorrectEthernetAddressString(v1);

  return v2;
}

uint64_t sub_1E0BC94D0(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"TIMESTAMP"];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

id CWFCorrectEthernetAddressString(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 UTF8String]) != 0 && (v9 = 0, v8 = 0, sscanf(v3, "%x:%x:%x:%x:%x:%x", v10, &v10[1], &v10[2], &v10[3], &v10[4], &v10[5]) == 6))
  {
    for (i = 0; i != 6; ++i)
    {
      *(&v8 + i) = v10[i];
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", v8, BYTE1(v8), BYTE2(v8), HIBYTE(v8), v9, HIBYTE(v9)];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

__CFString *sub_1E0BC9FD8(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"?g";
  }

  else
  {
    return off_1E86E5EA0[a1];
  }
}

void sub_1E0BCA2B0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 state];
  v9 = [v8 taskState];

  v10 = [v7 previousState];
  v11 = [v10 taskState];

  v12 = MEMORY[0x1E699F9C8];
  if (MEMORY[0x1E699F9C8])
  {
    v13 = [v7 state];
    v14 = [v13 endowmentNamespaces];
    v15 = *v12;
    LODWORD(v12) = [v14 containsObject:*v12];

    v16 = [v7 previousState];
    v17 = [v16 endowmentNamespaces];
    v18 = [v17 containsObject:v15];
  }

  else
  {
    v18 = 0;
  }

  if ((v9 == 3) == (v11 != 3) || v12 != v18)
  {
    v19 = *(a1 + 32);
    v20 = *(v19 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0BCB3F4;
    block[3] = &unk_1E86E6060;
    block[4] = v19;
    v22 = v6;
    v23 = v7;
    dispatch_async(v20, block);
  }
}

void sub_1E0BCA4D0(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    v21 = v2;
    v3 = [MEMORY[0x1E695DFA8] set];
    v4 = [MEMORY[0x1E695DFA8] set];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    obj = *(*(a1 + 32) + 16);
    v24 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v24)
    {
      v23 = *v35;
      do
      {
        v5 = 0;
        do
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = v5;
          v6 = *(*(&v34 + 1) + 8 * v5);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v7 = [v6 XPCConnections];
          v8 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v31;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v31 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v30 + 1) + 8 * i);
                if (([v12 isLocal] & 1) == 0)
                {
                  if ([v12 needsProcessState])
                  {
                    v13 = MEMORY[0x1E696AD98];
                    v14 = [v12 XPCConnection];
                    v15 = [v13 numberWithInt:{objc_msgSend(v14, "processIdentifier")}];
                    [v3 addObject:v15];
                  }

                  if ([v12 needsContainingAppProcessState])
                  {
                    v16 = [v12 containingAppBundleID];
                    [v4 addObject:v16];
                  }
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v9);
          }

          v5 = v25 + 1;
        }

        while (v25 + 1 != v24);
        v24 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v24);
    }

    if (![*(*(a1 + 32) + 40) isEqualToSet:v3] || (objc_msgSend(*(*(a1 + 32) + 48), "isEqualToSet:", v4) & 1) == 0)
    {
      [*(*(a1 + 32) + 40) removeAllObjects];
      [*(*(a1 + 32) + 40) unionSet:v3];
      [*(*(a1 + 32) + 48) removeAllObjects];
      [*(*(a1 + 32) + 48) unionSet:v4];
      v17 = *(*(a1 + 32) + 32);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1E0BCAACC;
      v26[3] = &unk_1E86E7200;
      v27 = v3;
      v18 = v4;
      v19 = *(a1 + 32);
      v28 = v18;
      v29 = v19;
      [v17 updateConfiguration:v26];
    }

    v2 = v21;
  }

  objc_autoreleasePoolPop(v2);
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E0BCA924(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 16) copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BCAA70(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 72) copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BCAACC(uint64_t a1, void *a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69C7630] descriptor];
  [v4 setValues:1];
  if (MEMORY[0x1E699F9C8])
  {
    v35[0] = *MEMORY[0x1E699F9C8];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    [v4 setEndowmentNamespaces:v5];
  }

  v22 = v4;
  [v3 setStateDescriptor:v4];
  v6 = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = a1;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = MEMORY[0x1E69C7610];
        v13 = [MEMORY[0x1E69C75E0] identifierWithPid:{objc_msgSend(*(*(&v29 + 1) + 8 * i), "intValue")}];
        v14 = [v12 predicateMatchingIdentifier:v13];

        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = *(v23 + 40);
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:*(*(&v25 + 1) + 8 * j)];
        [v6 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  [v3 setPredicates:v6];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1E0BCA2B0;
  v24[3] = &unk_1E86E71D8;
  v24[4] = *(v23 + 48);
  [v3 setUpdateHandler:v24];

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E0BCAFF0(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 40);
        v9 = [*(*(&v11 + 1) + 8 * v7) registeredEventIDs];
        [v8 unionSet:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1E0BCB210(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(*(a1 + 32) + 16);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) registeredEventIDs];
        [v3 unionSet:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E0BCB36C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) invalidationHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) invalidationHandler];
    v4[2]();
  }

  [*(a1 + 32) setInvalidationHandler:0];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BCB3F4(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(*(a1 + 32) + 16);
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      v2 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v2;
        v3 = *(*(&v28 + 1) + 8 * v2);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v4 = [v3 XPCConnections];
        v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v25;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v25 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v24 + 1) + 8 * i);
              if ([v9 isLocal])
              {
                continue;
              }

              v10 = [*(a1 + 40) pid];
              v11 = [v9 XPCConnection];
              if (v10 != [v11 processIdentifier])
              {
                goto LABEL_15;
              }

              v12 = [v9 needsProcessState];

              if (v12)
              {
                v11 = [*(a1 + 48) state];
                [v9 setProcessState:v11];
LABEL_15:
              }

              v13 = [*(a1 + 40) bundle];
              v14 = [v13 identifier];
              v15 = [v9 containingAppBundleID];
              v16 = v15;
              if (v14 == v15)
              {
                v17 = [v9 needsContainingAppProcessState];

                if (!v17)
                {
                  continue;
                }

                v13 = [*(a1 + 48) state];
                [v9 setContainingAppProcessState:v13];
              }

              else
              {
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v6);
        }

        v2 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  objc_autoreleasePoolPop(context);
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E0BCB690()
{
  qword_1ED7E38D0 = os_log_create("com.apple.WiFiManager", "");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0BCB6D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 40) removeAllObjects];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BCBB88(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 16);
  v3[2] = sub_1E0BCBC0C;
  v3[3] = &unk_1E86E6420;
  v4 = v1;
  dispatch_async(v2, v3);
}

void sub_1E0BCBC0C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 72) removeObject:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BCBCB4(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(*(a1 + 32) + 56) allKeys];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = *(a1 + 32);
        v10 = *(v9 + 24);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = sub_1E0C330B0;
        v12[3] = &unk_1E86E6420;
        v12[4] = v9;
        v12[5] = v8;
        dispatch_async(v10, v12);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 56) removeAllObjects];
  [*(*(a1 + 32) + 88) removeAllObjects];
  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x1E69E9840];
}

__CFString *sub_1E0BCC05C(unint64_t a1)
{
  if (a1 >= 0x45)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5B00[a1];
  }

  return v2;
}

id CWFHumanReadableStringFromData(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v1 encoding:qword_1E0D818A0[v3]];
      v5 = v4;
      if (v2)
      {
        break;
      }

      v2 = 1;
      v3 = 1;
    }

    while (!v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1E0BCC248(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1ED7E38A0 != -1)
    {
      dispatch_once(&qword_1ED7E38A0, &unk_1F5B899F0);
    }

    v2 = [qword_1ED7E3898 stringFromDate:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1E0BCC51C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED7E3870;
  v7 = qword_1ED7E3870;
  if (!qword_1ED7E3870)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1E0C644A8;
    v3[3] = &unk_1E86E5600;
    v3[4] = &v4;
    sub_1E0C644A8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1E0BCC5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0BCC5FC()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!qword_1ED7E3878)
  {
    qword_1ED7E3878 = _sl_dlopen();
  }

  result = qword_1ED7E3878;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0BCC6CC()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!qword_1ED7E3888)
  {
    qword_1ED7E3888 = _sl_dlopen();
  }

  result = qword_1ED7E3888;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *sub_1E0BCCB90(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5D28[a1];
  }

  return v2;
}

void sub_1E0BCDDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BCDDEC(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 integerValue];
  if (v5 - 44 < 8 || v5 <= 0x3F && ((1 << v5) & 0xC000000000000010) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) += [v6 unsignedIntegerValue];
  }
}

uint64_t sub_1E0BCE0D8()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!qword_1ED7E3860)
  {
    qword_1ED7E3860 = _sl_dlopen();
  }

  result = qword_1ED7E3860;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E0BCE1A8()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!qword_1ED7E3868)
  {
    qword_1ED7E3868 = _sl_dlopen();
  }

  result = qword_1ED7E3868;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E0BCE288()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1ED7E3858;
  v8 = qword_1ED7E3858;
  if (!qword_1ED7E3858)
  {
    v1 = sub_1E0C30BBC();
    v6[3] = dlsym(v1, "kCNSCaptiveNetworkProperty");
    qword_1ED7E3858 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v2 = *v0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef getkCNSCaptiveNetworkProperty(void)"];
    [v3 handleFailureInFunction:v4 file:@"CWFNetworkProfile.m" lineNumber:38 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1E0BCE3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1E0BCEC64(void *a1, void *a2, unsigned int a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v7 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_21;
  }

  if (qword_1ED7E3928 != -1)
  {
    dispatch_once(&qword_1ED7E3928, &unk_1F5B89070);
  }

  v6 = qword_1ED7E3920;
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (a3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v4 JSONCompatibleKeyValueMap];
LABEL_21:
    v55 = v7;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = v5;
    v48 = v4;
    v8 = v4;
    v44 = v6;
    v9 = v6;
    v55 = [MEMORY[0x1E695DF70] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v57;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v57 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v56 + 1) + 8 * i);
          v16 = sub_1E0BCEC64(v15, v9, a3);
          if (!v16)
          {
            v17 = MEMORY[0x1E696AEC0];
            v18 = [MEMORY[0x1E696AFB0] UUID];
            v19 = [v18 UUIDString];
            v20 = [v19 substringToIndex:5];
            v21 = [v15 description];
            v16 = [v17 stringWithFormat:@"FAILED TO CONVERT [uuid=%@, desc=<%@>]", v20, v21];
          }

          [v55 addObject:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v12);
    }

    v5 = v46;
    v4 = v48;
    v6 = v44;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v7 = v4;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v4 base64EncodedStringWithOptions:0];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 stringFromDate:v4];
          }

          else
          {
            [v4 description];
          }
          v7 = ;
        }
      }

      goto LABEL_21;
    }

    v47 = v5;
    v49 = v4;
    v24 = v4;
    v45 = v6;
    v53 = v6;
    v55 = [MEMORY[0x1E695DF90] dictionary];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v52 = v24;
    obj = [v24 allKeys];
    v25 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v25)
    {
      v26 = v25;
      v51 = *v57;
      v27 = 0x1E696A000uLL;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v57 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v56 + 1) + 8 * j);
          v30 = *(v27 + 3776);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = v29;
          }

          else
          {
            v32 = *(v27 + 3776);
            v33 = [MEMORY[0x1E696AFB0] UUID];
            v34 = [v33 UUIDString];
            v35 = [v34 substringToIndex:5];
            v36 = [v29 description];
            v31 = [v32 stringWithFormat:@"FAILED TO CONVERT [uuid=%@, desc=<%@>]", v35, v36];

            v27 = 0x1E696A000uLL;
          }

          v37 = [v52 objectForKey:v29];
          v38 = sub_1E0BCEC64(v37, v53, a3);
          if (!v38)
          {
            v39 = *(v27 + 3776);
            v40 = [MEMORY[0x1E696AFB0] UUID];
            v41 = [v40 UUIDString];
            v42 = [v41 substringToIndex:5];
            v43 = [v37 description];
            v38 = [v39 stringWithFormat:@"FAILED TO CONVERT [uuid=%@, desc=<%@>]", v42, v43];

            v27 = 0x1E696A000;
          }

          [v55 setObject:v38 forKey:v31];
        }

        v26 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v26);
    }

    v6 = v45;
    v5 = v47;
    v4 = v49;
  }

LABEL_22:

  v22 = *MEMORY[0x1E69E9840];

  return v55;
}

id CWFHexadecimalStringFromData(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696AD60];
    v2 = a1;
    v3 = [v1 stringWithCapacity:{2 * objc_msgSend(v2, "length")}];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0BCFAF8;
    v7[3] = &unk_1E86E6230;
    v4 = v3;
    v8 = v4;
    [v2 enumerateByteRangesUsingBlock:v7];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 copy];

  return v5;
}

uint64_t sub_1E0BCFAF8(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v6 = result;
    do
    {
      v7 = *a2++;
      result = [*(v6 + 32) appendFormat:@"%02x", v7];
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1E0BCFCD4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v2 = CWFBootArgs();
  }

  if ([v2 containsObject:@"corewifi_redact_logs=0"])
  {
    v3 = 1;
  }

  else if ([v2 containsObject:@"corewifi_redact_logs=1"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1E0BD07C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BD30A0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = sub_1E0BCC05C([a2 integerValue]);
  [v4 setObject:v5 forKeyedSubscript:v6];
}

__CFString *sub_1E0BD331C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 31)
  {
    switch(a1)
    {
      case 32:
        v4 = @"wpa2-enterprise";

        return v4;
      case 40:
        v4 = @"wpa2-enterprise-mixed";

        return v4;
      case 512:
        v4 = @"open";

        return v4;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        if ((a2 - 1) >= 5)
        {
          v4 = @"wep";
        }

        else
        {
          v4 = off_1E86E5E10[a2 - 1];
        }

        return v4;
      case 2:
        v6 = @"wapi";
        if (a3 == 2)
        {
          v6 = @"wapi-cert";
        }

        if (a3 == 1)
        {
          v4 = @"wapi-psk";
        }

        else
        {
          v4 = v6;
        }

        return v4;
      case 8:
        v4 = @"wpa-enterprise";

        return v4;
    }
  }

  if ((a1 & 0x80) != 0)
  {
    v4 = @"wpa3-enterprise";

    return v4;
  }

  if (a1 <= 63)
  {
    switch(a1)
    {
      case 4:
        v4 = @"wpa-personal";

        return v4;
      case 16:
        v4 = @"wpa2-personal";

        return v4;
      case 20:
        v4 = @"wpa2-personal-mixed";

        return v4;
    }

LABEL_60:
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (0x%lX)", a1];

    return v4;
  }

  if (a1 > 255)
  {
    if (a1 == 256)
    {
      v4 = @"owe";

      return v4;
    }

    if (a1 == 768)
    {
      v4 = @"owe-transition";

      return v4;
    }

    goto LABEL_60;
  }

  if (a1 != 64)
  {
    if (a1 == 80)
    {
      v4 = @"wpa3-transition";

      return v4;
    }

    goto LABEL_60;
  }

  v4 = @"wpa3-sae";

  return v4;
}

void sub_1E0BD397C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BD3B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *sub_1E0BD3BE8(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E86E5FC0[a1 - 1];
  }
}

id sub_1E0BD3F78(unint64_t a1)
{
  if (a1 < 0x17 && ((0x6FFFFFu >> a1) & 1) != 0)
  {
    v3 = qword_1E86E59F8[a1];
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%ld", @"Unknown=", a1, v1];
  }

  return v3;
}

uint64_t CWFStrongestSecurityType(__int16 a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x80) != 0)
  {
    return 128;
  }

  if ((a1 & 0x20) != 0)
  {
    return 32;
  }

  if ((a1 & 8) != 0)
  {
    return 8;
  }

  if ((a1 & 2) != 0 && a2 == 2)
  {
    return 2;
  }

  if ((a1 & 1) != 0 && a3 == 5)
  {
    return 1;
  }

  v4 = 16;
  v5 = 4;
  if ((a1 & 4) == 0)
  {
    v5 = 2;
  }

  if ((a1 & 6) == 0)
  {
    v5 = 1;
  }

  v6 = a1 & 0x200;
  if ((a1 & 0x100) != 0)
  {
    v6 = 256;
  }

  if ((a1 & 7) == 0)
  {
    v5 = v6;
  }

  if ((a1 & 0x10) == 0)
  {
    v4 = v5;
  }

  if ((a1 & 0x40) != 0)
  {
    return 64;
  }

  else
  {
    return v4;
  }
}

void sub_1E0BD4468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BD46F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_1E0BD476C(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = read(*(a1 + 40), v29, 0x400uLL);
  if (v2 < 0)
  {
    v23 = CWFGetOSLog();
    if (v23)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = *__error();
      v26 = __error();
      strerror(*v26);
      goto LABEL_33;
    }

LABEL_34:
  }

  else
  {
    v3 = v2;
    if (v2)
    {
      v4 = 0;
      v5 = v29;
      while (1)
      {
        v6 = *&v29[v4];
        if (v4 + v6 > v3)
        {
          v20 = CWFGetOSLog();
          if (v20)
          {
            v21 = CWFGetOSLog();
          }

          else
          {
            v21 = MEMORY[0x1E69E9C10];
            v22 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
LABEL_33:
            _os_log_send_and_compose_impl();
          }

          goto LABEL_34;
        }

        if ((v6 - 24) < 0x18)
        {
          goto LABEL_28;
        }

        snprintf(__str, 0x10uLL, "%s%u", v5 + 32, *(v5 + 7));
        if ([*(a1 + 32) isMonitoringEvents])
        {
          break;
        }

LABEL_27:
        v4 += *&v29[v4];
        v5 = &v29[v4];
        if (v4 >= v3)
        {
          goto LABEL_28;
        }
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithCString:__str encoding:4];
      v8 = *(v5 + 5);
      if ((v8 - 9) < 5)
      {
        clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v9 = CWFGetOSLog();
        if (v9)
        {
          v10 = CWFGetOSLog();
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v12 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [CWFKernelEventMonitor descriptionForKernelEventCode:*(v5 + 5)];
          _os_log_send_and_compose_impl();
        }

        goto LABEL_24;
      }

      if (v8 == 1)
      {
        [*(a1 + 32) interfaceFlagsWithInterfaceName:v7];
        clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v11 = CWFGetOSLog();
        if (v11)
        {
          v10 = CWFGetOSLog();
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v14 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
LABEL_23:
          v16 = [CWFKernelEventMonitor descriptionForKernelEventCode:*(v5 + 5)];
          _os_log_send_and_compose_impl();
        }
      }

      else
      {
        clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v13 = CWFGetOSLog();
        if (v13)
        {
          v10 = CWFGetOSLog();
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v15 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_23;
        }
      }

LABEL_24:

      v17 = [*(a1 + 32) eventHandler];

      if (v17)
      {
        v18 = [*(a1 + 32) eventHandler];
        (v18)[2](v18, *(a1 + 32), v7, *(v5 + 5));
      }

      goto LABEL_27;
    }
  }

LABEL_28:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E0BD4E9C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 32);

  objc_autoreleasePoolPop(v2);
}

void sub_1E0BD4EEC(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (a4 > 0xD)
  {
    goto LABEL_14;
  }

  if (((1 << a4) & 0x3002) != 0)
  {
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v11 = CWFGetOSLog();
    if (v11)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_27;
    }

LABEL_26:
    v19 = [CWFKernelEventMonitor descriptionForKernelEventCode:a4];
    _os_log_send_and_compose_impl();

    goto LABEL_27;
  }

  if (((1 << a4) & 0xC00) != 0)
  {
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v9 = CWFGetOSLog();
    if (v9)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a4 != 9)
  {
LABEL_14:
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v15 = CWFGetOSLog();
    if (v15)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v10 = [WeakRetained apple80211WithInterfaceName:v6];
  clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v12 = CWFGetOSLog();
  if (v12)
  {
    v13 = CWFGetOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [CWFKernelEventMonitor descriptionForKernelEventCode:9];
    _os_log_send_and_compose_impl();
  }

  if (v10)
  {
    [v8 __updateWiFiInterfacesWithReason:@"kevent" reply:0];
LABEL_27:
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E0BD5A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BD5A34(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_1E0BD5C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BD5C58(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_1E0BD5DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0BD5DD0(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = [a3 unsignedIntegerValue];
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  return result;
}

void sub_1E0BD5F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0BD5F1C(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = [a3 unsignedIntegerValue];
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  return result;
}

void sub_1E0BD6094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0BD60AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

uint64_t sub_1E0BD6118(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"not broken"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"detected"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"confirmed (quick probe)"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"confirmed"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"tcp friction (early)"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"tcp friction (strong)"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1E0BD61E8()
{
  v0 = [MEMORY[0x1E695DF70] array];
  for (i = 1; i != 290; ++i)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [v0 addObject:v2];
  }

  v3 = [v0 copy];

  return v3;
}

uint64_t sub_1E0BD630C(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_1E0D81610[a1 - 1];
  }
}

void sub_1E0BD6420(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 description];
    v9 = [v8 redactedForWiFi];
    v18 = 138543362;
    v19 = v9;
    LODWORD(v17) = 12;
    v16 = &v18;
    _os_log_send_and_compose_impl();
  }

  if ([WeakRetained associationState] == 1)
  {
    [WeakRetained __sendNeedsConnectivityRequestToNearbyDevice:v3 retryCount:0];
    goto LABEL_15;
  }

  if ([WeakRetained associationState] != 2)
  {
    goto LABEL_15;
  }

  v10 = [WeakRetained nearbySyncNetwork];
  if ([v10 isNearbySyncable])
  {
  }

  else
  {
    v11 = [WeakRetained nearbySyncNetwork];
    v12 = [v11 isNearbyRecommendable];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  [WeakRetained __sendAutoJoinAssistRequestToNearbyDevice:v3 retryCount:{0, v16, v17}];
LABEL_13:
  v13 = [WeakRetained nearbySyncNetwork];
  v14 = [v13 isNearbyBrokenBackhaulStateSyncable];

  if (v14)
  {
    [WeakRetained __sendBrokenBackhaulRestoreEventToNearbyDevice:v3];
  }

LABEL_15:

  v15 = *MEMORY[0x1E69E9840];
}

void *CWFFilteredScanResults(void *a1, void *a2)
{
  v185 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v4 minimumRSSI];
  v6 = [v4 maximumAge];
  v157 = [v4 minimumTimestamp];
  v148 = [v4 includeHiddenNetworks];
  v147 = [v4 BSSType];
  LOBYTE(a2) = [v4 sortByAutoJoinPreference];
  v7 = [v4 includeScanResults];
  v150 = [v4 includeProperties];
  v153 = a2;
  if (a2)
  {
    v161 = 0;
  }

  else
  {
    v161 = [v4 mergeScanResults];
  }

  v158 = [v4 includeBackgroundScanCacheResults];
  v8 = [v4 channels];

  v149 = v4;
  v154 = v5;
  v156 = v6;
  if (v8)
  {
    v9 = [v4 channels];
    if (v9)
    {
      v10 = v7;
      v11 = [MEMORY[0x1E695DF70] array];
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v168 objects:&v173 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v169;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v169 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = sub_1E0BD960C(*(*(&v168 + 1) + 8 * i));
            [v11 addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v168 objects:&v173 count:16];
        }

        while (v14);
      }

      v4 = v149;
      v7 = v10;
      v5 = v154;
      v6 = v156;
    }

    else
    {
      v11 = 0;
    }

    v155 = [v11 copy];
  }

  else
  {
    v155 = 0;
  }

  if (!v3)
  {
    v18 = 0;
    goto LABEL_215;
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if ([v3 count])
  {
    v19 = 0;
    v20 = v157;
    if (v6)
    {
      v21 = v157 == 0;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v162 = v22;
    v145 = v7;
    v146 = v3;
    v159 = v18;
    do
    {
      context = objc_autoreleasePoolPush();
      v23 = [v3 objectAtIndexedSubscript:v19];
      v164 = v19;
      if (((v153 | v158 ^ 1) & 1) == 0)
      {
        v24 = sub_1E0BF13D8();
        v25 = [v23 filteredScanResultWithProperties:v24];

        v23 = v25;
      }

      if (v162)
      {
        if ([v23 age] > v6)
        {
          v26 = CWFGetOSLog();
          if (v26)
          {
            v27 = CWFGetOSLog();
          }

          else
          {
            v27 = MEMORY[0x1E69E9C10];
            v58 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v173 = 138543362;
            v174 = v23;
            LODWORD(v144) = 12;
            v143 = &v173;
            goto LABEL_177;
          }

          goto LABEL_178;
        }
      }

      else if (v20 && [v23 timestamp] < v20)
      {
        v28 = CWFGetOSLog();
        if (v28)
        {
          v27 = CWFGetOSLog();
        }

        else
        {
          v27 = MEMORY[0x1E69E9C10];
          v73 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v173 = 138543362;
          v174 = v23;
          LODWORD(v144) = 12;
          v143 = &v173;
          goto LABEL_177;
        }

        goto LABEL_178;
      }

      if (v5 < 0 && [v23 RSSI] < v5)
      {
        v29 = CWFGetOSLog();
        if (v29)
        {
          v27 = CWFGetOSLog();
        }

        else
        {
          v27 = MEMORY[0x1E69E9C10];
          v76 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v173 = 138543362;
          v174 = v23;
          LODWORD(v144) = 12;
          v143 = &v173;
          goto LABEL_177;
        }

        goto LABEL_178;
      }

      v166 = v23;
      v30 = [v4 channels];

      if (v30)
      {
        v31 = [v23 channel];
        if (![v31 is6GHz])
        {

LABEL_45:
          if (([v4 scanFlags] & 8) == 0)
          {
            v33 = [v23 channel];
            v34 = sub_1E0BD960C(v33);
            v35 = [v155 containsObject:v34];

            if ((v35 & 1) == 0)
            {
              v74 = CWFGetOSLog();
              if (v74)
              {
                v27 = CWFGetOSLog();
              }

              else
              {
                v27 = MEMORY[0x1E69E9C10];
                v80 = MEMORY[0x1E69E9C10];
              }

              v23 = v166;

              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v173 = 138543362;
                v174 = v166;
                LODWORD(v144) = 12;
                v143 = &v173;
                goto LABEL_177;
              }

              goto LABEL_178;
            }
          }

          goto LABEL_47;
        }

        v32 = [v4 scanFlags];

        if ((v32 & 0x100) == 0)
        {
          goto LABEL_45;
        }
      }

LABEL_47:
      v23 = v166;
      if (([v4 scanFlags] & 0x200) == 0 && objc_msgSend(v166, "isFILSDiscoveryFrame"))
      {
        v36 = CWFGetOSLog();
        if (v36)
        {
          v27 = CWFGetOSLog();
        }

        else
        {
          v27 = MEMORY[0x1E69E9C10];
          v77 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v173 = 138543362;
          v174 = v166;
          LODWORD(v144) = 12;
          v143 = &v173;
          goto LABEL_177;
        }

        goto LABEL_178;
      }

      if ((v158 & 1) == 0)
      {
        if ([v166 isBackgroundScanResult])
        {
          v57 = CWFGetOSLog();
          if (v57)
          {
            v27 = CWFGetOSLog();
          }

          else
          {
            v27 = MEMORY[0x1E69E9C10];
            v79 = MEMORY[0x1E69E9C10];
          }

          v18 = v159;

          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v173 = 138543362;
            v174 = v166;
            LODWORD(v144) = 12;
            v143 = &v173;
            goto LABEL_177;
          }

          goto LABEL_178;
        }

        if ((v148 & 1) == 0)
        {
          v59 = [v166 SSID];
          v60 = [v59 length];

          if (!v60)
          {
            v87 = CWFGetOSLog();
            v18 = v159;
            if (v87)
            {
              v27 = CWFGetOSLog();
            }

            else
            {
              v27 = MEMORY[0x1E69E9C10];
              v101 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v173 = 138543362;
              v174 = v166;
              LODWORD(v144) = 12;
              v143 = &v173;
              goto LABEL_177;
            }

            goto LABEL_178;
          }
        }

        v61 = [v4 SSID];
        v18 = v159;
        if (v61)
        {
          v62 = v61;
          v63 = [v4 SSID];
          v64 = [v166 networkName];
          v65 = v64;
          if (v63 == v64)
          {

            v23 = v166;
          }

          else
          {
            v66 = v7;
            v67 = [v4 SSID];
            if (v67)
            {
              v68 = [v166 networkName];
              if (v68)
              {
                v69 = [v4 SSID];
                [v166 networkName];
                v71 = v70 = v4;
                v72 = ([v69 isEqual:v71] & 1) == 0 && (objc_msgSend(v70, "scanFlags") & 0x800) == 0;

                v4 = v149;
                v18 = v159;
              }

              else
              {
                v72 = ([v4 scanFlags] & 0x800) == 0;
              }

              v20 = v157;
            }

            else
            {
              v72 = ([v4 scanFlags] & 0x800) == 0;
            }

            v7 = v66;
            v6 = v156;
            v23 = v166;
            if (v72)
            {
              v102 = CWFGetOSLog();
              if (v102)
              {
                v27 = CWFGetOSLog();
              }

              else
              {
                v27 = MEMORY[0x1E69E9C10];
                v113 = MEMORY[0x1E69E9C10];
              }

              v5 = v154;

              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v173 = 138543362;
                v174 = v166;
                LODWORD(v144) = 12;
                v143 = &v173;
                goto LABEL_177;
              }

LABEL_178:

LABEL_179:
              v118 = v164;
              goto LABEL_180;
            }
          }
        }

        if ([v4 shortSSID])
        {
          v103 = [v4 shortSSID];
          if (v103 != [v23 shortSSID] && (objc_msgSend(v4, "scanFlags") & 0x800) == 0)
          {
            v104 = CWFGetOSLog();
            if (v104)
            {
              v27 = CWFGetOSLog();
            }

            else
            {
              v27 = MEMORY[0x1E69E9C10];
              v117 = MEMORY[0x1E69E9C10];
            }

            v5 = v154;

            if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              goto LABEL_178;
            }

            v173 = 138543362;
            v174 = v23;
            LODWORD(v144) = 12;
            v143 = &v173;
            goto LABEL_177;
          }
        }

        if (v147 == 2)
        {
          v5 = v154;
          if (([v23 isESS] & 1) == 0)
          {
            goto LABEL_159;
          }
        }

        else
        {
          v5 = v154;
          if (v147 == 1 && ([v23 isIBSS] & 1) == 0)
          {
LABEL_159:
            v111 = CWFGetOSLog();
            if (v111)
            {
              v27 = CWFGetOSLog();
            }

            else
            {
              v27 = MEMORY[0x1E69E9C10];
              v112 = MEMORY[0x1E69E9C10];
            }

            v18 = v159;

            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v173 = 138543362;
              v174 = v23;
              LODWORD(v144) = 12;
              v143 = &v173;
              goto LABEL_177;
            }

            goto LABEL_178;
          }
        }

        v105 = [v4 matchNetworkNamePrefix];
        if (v105)
        {
          v106 = v105;
          v107 = [v23 networkName];
          v108 = [v4 matchNetworkNamePrefix];
          v109 = [v107 hasPrefix:v108];

          v23 = v166;
          if ((v109 & 1) == 0)
          {
            v110 = CWFGetOSLog();
            if (v110)
            {
              v27 = CWFGetOSLog();
            }

            else
            {
              v27 = MEMORY[0x1E69E9C10];
              v116 = MEMORY[0x1E69E9C10];
            }

            v18 = v159;

            if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              goto LABEL_178;
            }

            v173 = 138543362;
            v174 = v166;
            LODWORD(v144) = 12;
            v143 = &v173;
LABEL_177:
            _os_log_send_and_compose_impl();
            goto LABEL_178;
          }
        }
      }

      if (v7 && ([v7 containsObject:v23] & 1) == 0)
      {
        v75 = CWFGetOSLog();
        v18 = v159;
        if (v75)
        {
          v27 = CWFGetOSLog();
        }

        else
        {
          v27 = MEMORY[0x1E69E9C10];
          v81 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v173 = 138543362;
          v174 = v23;
          LODWORD(v144) = 12;
          v143 = &v173;
          goto LABEL_177;
        }

        goto LABEL_178;
      }

      v37 = [v4 filterPredicate];
      v18 = v159;
      if (v37)
      {
        v38 = v37;
        v39 = [v4 filterPredicate];
        v40 = [v39 evaluateWithObject:v166];

        if ((v40 & 1) == 0)
        {
          v78 = CWFGetOSLog();
          if (v78)
          {
            v27 = CWFGetOSLog();
          }

          else
          {
            v27 = MEMORY[0x1E69E9C10];
            v88 = MEMORY[0x1E69E9C10];
          }

          v23 = v166;

          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v173 = 138543362;
            v174 = v166;
            LODWORD(v144) = 12;
            v143 = &v173;
            goto LABEL_177;
          }

          goto LABEL_178;
        }
      }

      if (![v159 count])
      {
        v23 = v166;
        goto LABEL_208;
      }

      v41 = 0;
      v23 = v166;
      while (1)
      {
        v42 = objc_autoreleasePoolPush();
        v43 = [v18 objectAtIndexedSubscript:v41];
        v44 = [v23 BSSID];
        if (v44)
        {
          v45 = v44;
          v46 = [v43 BSSID];
          if (!v46)
          {
            goto LABEL_68;
          }

          v47 = v46;
          v160 = v42;
          v48 = [v23 BSSID];
          v163 = v43;
          v49 = [v43 BSSID];
          if (![v48 isEqual:v49])
          {
            goto LABEL_67;
          }

          v23 = v166;
          v50 = [v166 SSID];
          v51 = [v163 SSID];
          v52 = v51;
          if (v50 == v51)
          {

            v6 = v156;
            v20 = v157;
            v42 = v160;
            v43 = v163;
LABEL_127:
            v90 = [v23 timestamp];
            if (v90 > [v43 timestamp])
            {
              v91 = sub_1E0C08314(v23, v43);

              v92 = CWFGetOSLog();
              if (v92)
              {
                v93 = CWFGetOSLog();
              }

              else
              {
                v93 = MEMORY[0x1E69E9C10];
                v121 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
              {
                v173 = 136446978;
                v174 = "CWFFilteredScanResults";
                v175 = 2082;
                v176 = "CWFUtilPrivate.m";
                v177 = 1024;
                v178 = 1235;
                v179 = 2114;
                v43 = v163;
                v180 = v163;
                LODWORD(v144) = 38;
                v143 = &v173;
                goto LABEL_205;
              }

              goto LABEL_192;
            }

            v114 = sub_1E0C08314(v43, v23);

            [v18 replaceObjectAtIndex:v41 withObject:v114];
            v115 = CWFGetOSLog();
            v3 = v146;
            if (v115)
            {
              v86 = CWFGetOSLog();
            }

            else
            {
              v86 = MEMORY[0x1E69E9C10];
              v122 = MEMORY[0x1E69E9C10];
            }

            v7 = v145;

            if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
            {
              v173 = 136446978;
              v174 = "CWFFilteredScanResults";
              v175 = 2082;
              v176 = "CWFUtilPrivate.m";
              v177 = 1024;
              v178 = 1242;
              v179 = 2114;
              v180 = v23;
              LODWORD(v144) = 38;
              v143 = &v173;
              _os_log_send_and_compose_impl();
            }

LABEL_201:

            objc_autoreleasePoolPop(v160);
            v4 = v149;
            goto LABEL_179;
          }

          v53 = [v166 SSID];
          if (!v53 || ([v163 SSID], (v54 = objc_claimAutoreleasedReturnValue()) == 0))
          {

            v6 = v156;
            v20 = v157;
            v18 = v159;
LABEL_67:

            v23 = v166;
            v42 = v160;
            v43 = v163;
LABEL_68:

            goto LABEL_69;
          }

          v151 = v54;
          v55 = [v166 SSID];
          v56 = [v163 SSID];
          v152 = [v55 isEqual:v56];

          v5 = v154;
          v23 = v166;

          v6 = v156;
          v20 = v157;
          v18 = v159;
          v42 = v160;
          v43 = v163;
          if (v152)
          {
            goto LABEL_127;
          }
        }

LABEL_69:
        if (v161 && sub_1E0BF12E8(v23, v43))
        {
          break;
        }

        objc_autoreleasePoolPop(v42);
        if (++v41 >= [v18 count])
        {
          goto LABEL_207;
        }
      }

      v82 = [v23 channel];
      v3 = v146;
      v163 = v43;
      if ([v82 is6GHz])
      {
        v83 = [v43 channel];
        v84 = [v83 is6GHz];

        v43 = v163;
        if ((v84 & 1) == 0)
        {
          v85 = CWFGetOSLog();
          if (v85)
          {
            v86 = CWFGetOSLog();
          }

          else
          {
            v86 = MEMORY[0x1E69E9C10];
            v123 = MEMORY[0x1E69E9C10];
          }

          v160 = v42;

          v23 = v166;
          if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
          {
            v173 = 136446978;
            v174 = "CWFFilteredScanResults";
            v175 = 2082;
            v176 = "CWFUtilPrivate.m";
            v177 = 1024;
            v178 = 1257;
            v179 = 2114;
            v180 = v166;
            LODWORD(v144) = 38;
            v143 = &v173;
LABEL_199:
            _os_log_send_and_compose_impl();
          }

          goto LABEL_200;
        }
      }

      else
      {
      }

      v89 = [v166 channel];
      if ([v89 is6GHz])
      {

        goto LABEL_134;
      }

      v94 = [v43 channel];
      v95 = [v94 is6GHz];

      v43 = v163;
      if (!v95)
      {
LABEL_134:
        v97 = [v43 RSSI];
        v98 = [v166 RSSI];
        v99 = CWFGetOSLog();
        v100 = v99;
        if (v97 < v98)
        {
          if (v99)
          {
            v93 = CWFGetOSLog();
          }

          else
          {
            v93 = MEMORY[0x1E69E9C10];
            v119 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
          {
            v173 = 136446978;
            v174 = "CWFFilteredScanResults";
            v175 = 2082;
            v176 = "CWFUtilPrivate.m";
            v177 = 1024;
            v178 = 1278;
            v179 = 2114;
            v180 = v163;
            LODWORD(v144) = 38;
            v143 = &v173;
            _os_log_send_and_compose_impl();
            v91 = v166;
            v43 = v163;
            goto LABEL_206;
          }

          v91 = v166;
LABEL_192:
          v43 = v163;
          goto LABEL_206;
        }

        if (v99)
        {
          v86 = CWFGetOSLog();
        }

        else
        {
          v86 = MEMORY[0x1E69E9C10];
          v120 = MEMORY[0x1E69E9C10];
        }

        v23 = v166;
        v43 = v163;
        v160 = v42;

        if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
        {
          v173 = 136446978;
          v174 = "CWFFilteredScanResults";
          v175 = 2082;
          v176 = "CWFUtilPrivate.m";
          v177 = 1024;
          v178 = 1273;
          v179 = 2114;
          v180 = v166;
          LODWORD(v144) = 38;
          v143 = &v173;
          goto LABEL_199;
        }

LABEL_200:
        v114 = v43;
        v7 = v145;
        goto LABEL_201;
      }

      v96 = CWFGetOSLog();
      if (v96)
      {
        v93 = CWFGetOSLog();
      }

      else
      {
        v93 = MEMORY[0x1E69E9C10];
        v124 = MEMORY[0x1E69E9C10];
      }

      v91 = v166;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        v173 = 136446978;
        v174 = "CWFFilteredScanResults";
        v175 = 2082;
        v176 = "CWFUtilPrivate.m";
        v177 = 1024;
        v178 = 1264;
        v179 = 2114;
        v180 = v163;
        LODWORD(v144) = 38;
        v143 = &v173;
LABEL_205:
        _os_log_send_and_compose_impl();
      }

LABEL_206:

      [v18 removeObjectAtIndex:v41];
      objc_autoreleasePoolPop(v42);
      v23 = v91;
LABEL_207:
      v7 = v145;
      v3 = v146;
      v4 = v149;
LABEL_208:
      if ([v23 isPasspoint] && objc_msgSend(v4, "maximumANQPAgeForPasspointScanResults"))
      {
        v125 = objc_alloc_init(CWFANQPParameters);
        -[CWFANQPParameters setMaximumAge:](v125, "setMaximumAge:", [v4 maximumANQPAgeForPasspointScanResults]);
        v172 = v23;
        v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v172 count:1];
        CWFFilteredANQPResults(v126, v125);
        v127 = v3;
        v128 = v20;
        v129 = v5;
        v130 = v6;
        v131 = v7;
        v133 = v132 = v23;
        v167 = [v133 firstObject];

        v7 = v131;
        v6 = v130;
        v5 = v129;
        v20 = v128;
        v3 = v127;

        v23 = v167;
        v18 = v159;
      }

      if ((v153 & 1) == 0)
      {
        v134 = [v23 filteredScanResultWithProperties:v150];

        v23 = v134;
      }

      v118 = v164;
      [v18 addObject:v23];
LABEL_180:

      objc_autoreleasePoolPop(context);
      v19 = v118 + 1;
    }

    while (v19 < [v3 count]);
  }

LABEL_215:
  if (![v18 count] && objc_msgSend(v3, "count"))
  {
    v135 = CWFGetOSLog();
    if (v135)
    {
      v136 = CWFGetOSLog();
    }

    else
    {
      v136 = MEMORY[0x1E69E9C10];
      v137 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
    {
      v138 = [v18 count];
      v139 = [v3 count];
      v173 = 136447490;
      v174 = "CWFFilteredScanResults";
      v175 = 2082;
      v176 = "CWFUtilPrivate.m";
      v177 = 1024;
      v178 = 1315;
      v179 = 2080;
      v180 = "CWFFilteredScanResults";
      v181 = 2048;
      v182 = v138;
      v183 = 2048;
      v184 = v139;
      _os_log_send_and_compose_impl();
    }
  }

  v140 = v18;

  v141 = *MEMORY[0x1E69E9840];
  return v18;
}

id sub_1E0BD960C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 channel];
    v4 = [v2 band];

    a1 = [CWFChannel channelWithNumber:v3 band:v4 width:0];
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1E0BDA0C8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1E0BDA1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E0D6CF3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E0BDA2B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E0D6CF3C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E0BDA36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E0D6CF3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E0BDA428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E0D6CF3C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t WINetworkSharingAskToShareState.hashValue.getter(unsigned __int8 a1)
{
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](a1);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BDB014()
{
  v1 = *v0;
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](v1);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BDB05C()
{
  v1 = *v0;
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](v1);
  return sub_1E0D6D2EC();
}

unint64_t sub_1E0BDB0A4()
{
  result = qword_1ECE803A0;
  if (!qword_1ECE803A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE803A0);
  }

  return result;
}

unint64_t sub_1E0BDB0FC()
{
  result = qword_1ECE803A8;
  if (!qword_1ECE803A8)
  {
    sub_1E0BDB160(&qword_1ECE803B0, &qword_1E0D7EEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE803A8);
  }

  return result;
}

uint64_t sub_1E0BDB160(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WINetworkSharingAskToShareState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WINetworkSharingAskToShareState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t WINetworkSharingController.AuthorizationState.hashValue.getter(unsigned __int8 a1)
{
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](a1);
  return sub_1E0D6D2EC();
}

unint64_t sub_1E0BDB3D4()
{
  result = qword_1ECE803B8;
  if (!qword_1ECE803B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE803B8);
  }

  return result;
}

unint64_t sub_1E0BDB42C()
{
  result = qword_1ECE803C0;
  if (!qword_1ECE803C0)
  {
    sub_1E0BDB160(&qword_1ECE803C8, &qword_1E0D7EFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE803C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WINetworkSharingController.AuthorizationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WINetworkSharingController.AuthorizationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t WINetworkSharingError.errorDescription.getter(uint64_t a1)
{
  v1 = sub_1E0BDB654(a1);
  v2 = CWFWiFiNetworkSharingErrorDescription(v1);
  v3 = sub_1E0D6CF9C();

  return v3;
}

uint64_t sub_1E0BDB674(uint64_t a1)
{
  v2 = sub_1E0BDCF00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDB6B0(uint64_t a1)
{
  v2 = sub_1E0BDCF00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E0BDB6EC(char a1)
{
  result = 0x726F727265;
  switch(a1)
  {
    case 1:
      result = 0x74756F656D6974;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0x6550746F4E707061;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x52796E614D6F6F74;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E0BDB8B4(uint64_t a1)
{
  v2 = sub_1E0BDCF54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDB8F0(uint64_t a1)
{
  v2 = sub_1E0BDCF54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDB92C(uint64_t a1)
{
  v2 = sub_1E0BDCEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDB968(uint64_t a1)
{
  v2 = sub_1E0BDCEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDB9A4(uint64_t a1)
{
  v2 = sub_1E0BDCFA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDB9E0(uint64_t a1)
{
  v2 = sub_1E0BDCFA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDBA1C(uint64_t a1)
{
  v2 = sub_1E0BDCFFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDBA58(uint64_t a1)
{
  v2 = sub_1E0BDCFFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDBA94(uint64_t a1)
{
  v2 = sub_1E0BDD050();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDBAD0(uint64_t a1)
{
  v2 = sub_1E0BDD050();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDBB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0BDD334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0BDBB48(uint64_t a1)
{
  v2 = sub_1E0BDCD08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDBB84(uint64_t a1)
{
  v2 = sub_1E0BDCD08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDBBC0(uint64_t a1)
{
  v2 = sub_1E0BDD0F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDBBFC(uint64_t a1)
{
  v2 = sub_1E0BDD0F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDBC38(uint64_t a1)
{
  v2 = sub_1E0BDD1A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDBC74(uint64_t a1)
{
  v2 = sub_1E0BDD1A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDBCB0(uint64_t a1)
{
  v2 = sub_1E0BDCDB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDBCEC(uint64_t a1)
{
  v2 = sub_1E0BDCDB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDBD28(uint64_t a1)
{
  v2 = sub_1E0BDCE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDBD64(uint64_t a1)
{
  v2 = sub_1E0BDCE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDBDA0(uint64_t a1)
{
  v2 = sub_1E0BDCD5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDBDDC(uint64_t a1)
{
  v2 = sub_1E0BDCD5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDBE18(uint64_t a1)
{
  v2 = sub_1E0BDD14C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDBE54(uint64_t a1)
{
  v2 = sub_1E0BDD14C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDBE90(uint64_t a1)
{
  v2 = sub_1E0BDCE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDBECC(uint64_t a1)
{
  v2 = sub_1E0BDCE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDBF08(uint64_t a1)
{
  v2 = sub_1E0BDD0A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDBF44(uint64_t a1)
{
  v2 = sub_1E0BDD0A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WINetworkSharingError.encode(to:)(void *a1, uint64_t a2)
{
  v101 = a2;
  v3 = sub_1E0BDCC7C(&qword_1ECE803D0, &qword_1E0D7F030);
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v96 = &v61 - v5;
  v6 = sub_1E0BDCC7C(&qword_1ECE803D8, &qword_1E0D7F038);
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v93 = &v61 - v8;
  v9 = sub_1E0BDCC7C(&qword_1ECE803E0, &qword_1E0D7F040);
  v91 = *(v9 - 8);
  v92 = v9;
  v10 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v90 = &v61 - v11;
  v12 = sub_1E0BDCC7C(&qword_1ECE803E8, &qword_1E0D7F048);
  v88 = *(v12 - 8);
  v89 = v12;
  v13 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v87 = &v61 - v14;
  v15 = sub_1E0BDCC7C(&qword_1ECE803F0, &qword_1E0D7F050);
  v85 = *(v15 - 8);
  v86 = v15;
  v16 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v84 = &v61 - v17;
  v83 = sub_1E0BDCC7C(&qword_1ECE803F8, &qword_1E0D7F058);
  v82 = *(v83 - 8);
  v18 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v81 = &v61 - v19;
  v80 = sub_1E0BDCC7C(&qword_1ECE80400, &qword_1E0D7F060);
  v79 = *(v80 - 8);
  v20 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v78 = &v61 - v21;
  v77 = sub_1E0BDCC7C(&qword_1ECE80408, &qword_1E0D7F068);
  v76 = *(v77 - 8);
  v22 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v75 = &v61 - v23;
  v74 = sub_1E0BDCC7C(&qword_1ECE80410, &qword_1E0D7F070);
  v73 = *(v74 - 8);
  v24 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v72 = &v61 - v25;
  v71 = sub_1E0BDCC7C(&qword_1ECE80418, &qword_1E0D7F078);
  v70 = *(v71 - 8);
  v26 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v69 = &v61 - v27;
  v68 = sub_1E0BDCC7C(&qword_1ECE80420, &qword_1E0D7F080);
  v67 = *(v68 - 8);
  v28 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v66 = &v61 - v29;
  v65 = sub_1E0BDCC7C(&qword_1ECE80428, &qword_1E0D7F088);
  v64 = *(v65 - 8);
  v30 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v63 = &v61 - v31;
  v32 = sub_1E0BDCC7C(&qword_1ECE80430, &qword_1E0D7F090);
  v62 = *(v32 - 8);
  v33 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v35 = &v61 - v34;
  v36 = sub_1E0BDCC7C(&qword_1ECE80438, &qword_1E0D7F098);
  v61 = *(v36 - 8);
  v37 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v39 = &v61 - v38;
  v100 = sub_1E0BDCC7C(&qword_1ECE80440, &qword_1E0D7F0A0);
  v40 = *(v100 - 8);
  v41 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v43 = &v61 - v42;
  v44 = a1[4];
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BDCD08();
  v99 = v43;
  sub_1E0D6D30C();
  v45 = (v40 + 8);
  switch(v101)
  {
    case 1:
      v103 = 1;
      sub_1E0BDD14C();
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      (*(v62 + 8))(v35, v32);
      return (*v45)(v46, v47);
    case 2:
      v104 = 2;
      sub_1E0BDD0F8();
      v52 = v63;
      v53 = v99;
      v54 = v100;
      sub_1E0D6D1DC();
      (*(v64 + 8))(v52, v65);
      return (*v45)(v53, v54);
    case 3:
      v105 = 3;
      sub_1E0BDD0A4();
      v56 = v66;
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      (*(v67 + 8))(v56, v68);
      return (*v45)(v46, v47);
    case 4:
      v106 = 4;
      sub_1E0BDD050();
      v51 = v69;
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      (*(v70 + 8))(v51, v71);
      return (*v45)(v46, v47);
    case 5:
      v107 = 5;
      sub_1E0BDCFFC();
      v58 = v72;
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      (*(v73 + 8))(v58, v74);
      return (*v45)(v46, v47);
    case 6:
      v108 = 6;
      sub_1E0BDCFA8();
      v59 = v75;
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      (*(v76 + 8))(v59, v77);
      return (*v45)(v46, v47);
    case 7:
      v109 = 7;
      sub_1E0BDCF54();
      v57 = v78;
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      (*(v79 + 8))(v57, v80);
      return (*v45)(v46, v47);
    case 8:
      v110 = 8;
      sub_1E0BDCF00();
      v60 = v81;
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      (*(v82 + 8))(v60, v83);
      return (*v45)(v46, v47);
    case 9:
      v111 = 9;
      sub_1E0BDCEAC();
      v48 = v84;
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      v50 = v85;
      v49 = v86;
      goto LABEL_15;
    case 10:
      v112 = 10;
      sub_1E0BDCE58();
      v48 = v87;
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      v50 = v88;
      v49 = v89;
      goto LABEL_15;
    case 11:
      v113 = 11;
      sub_1E0BDCE04();
      v48 = v90;
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      v50 = v91;
      v49 = v92;
      goto LABEL_15;
    case 12:
      v114 = 12;
      sub_1E0BDCDB0();
      v48 = v93;
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      v50 = v94;
      v49 = v95;
      goto LABEL_15;
    case 13:
      v115 = 13;
      sub_1E0BDCD5C();
      v48 = v96;
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      v50 = v97;
      v49 = v98;
LABEL_15:
      (*(v50 + 8))(v48, v49);
      break;
    default:
      v102 = 0;
      sub_1E0BDD1A0();
      v46 = v99;
      v47 = v100;
      sub_1E0D6D1DC();
      (*(v61 + 8))(v39, v36);
      break;
  }

  return (*v45)(v46, v47);
}

uint64_t sub_1E0BDCC7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_1E0BDCCC4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E0BDCD08()
{
  result = qword_1ECE80448;
  if (!qword_1ECE80448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80448);
  }

  return result;
}

unint64_t sub_1E0BDCD5C()
{
  result = qword_1ECE80450;
  if (!qword_1ECE80450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80450);
  }

  return result;
}

unint64_t sub_1E0BDCDB0()
{
  result = qword_1ECE80458;
  if (!qword_1ECE80458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80458);
  }

  return result;
}

unint64_t sub_1E0BDCE04()
{
  result = qword_1ECE80460;
  if (!qword_1ECE80460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80460);
  }

  return result;
}

unint64_t sub_1E0BDCE58()
{
  result = qword_1ECE80468;
  if (!qword_1ECE80468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80468);
  }

  return result;
}

unint64_t sub_1E0BDCEAC()
{
  result = qword_1ECE80470;
  if (!qword_1ECE80470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80470);
  }

  return result;
}

unint64_t sub_1E0BDCF00()
{
  result = qword_1ECE80478;
  if (!qword_1ECE80478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80478);
  }

  return result;
}

unint64_t sub_1E0BDCF54()
{
  result = qword_1ECE80480;
  if (!qword_1ECE80480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80480);
  }

  return result;
}

unint64_t sub_1E0BDCFA8()
{
  result = qword_1ECE80488;
  if (!qword_1ECE80488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80488);
  }

  return result;
}

unint64_t sub_1E0BDCFFC()
{
  result = qword_1ECE80490;
  if (!qword_1ECE80490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80490);
  }

  return result;
}

unint64_t sub_1E0BDD050()
{
  result = qword_1ECE80498;
  if (!qword_1ECE80498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80498);
  }

  return result;
}

unint64_t sub_1E0BDD0A4()
{
  result = qword_1ECE804A0;
  if (!qword_1ECE804A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE804A0);
  }

  return result;
}

unint64_t sub_1E0BDD0F8()
{
  result = qword_1ECE804A8;
  if (!qword_1ECE804A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE804A8);
  }

  return result;
}

unint64_t sub_1E0BDD14C()
{
  result = qword_1ECE804B0;
  if (!qword_1ECE804B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE804B0);
  }

  return result;
}

unint64_t sub_1E0BDD1A0()
{
  result = qword_1ECE804B8;
  if (!qword_1ECE804B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE804B8);
  }

  return result;
}

uint64_t WINetworkSharingError.hashValue.getter(unsigned __int8 a1)
{
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](a1);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BDD27C()
{
  v1 = sub_1E0BDB654(*v0);
  v2 = CWFWiFiNetworkSharingErrorDescription(v1);
  v3 = sub_1E0D6CF9C();

  return v3;
}

uint64_t sub_1E0BDD2EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E0BDD78C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E0BDD334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E0D84220 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001E0D84240 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6550746F4E707061 && a2 == 0xEF64657474696D72 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E0D84260 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E0D84280 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E0D842A0 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E0D842C0 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E0D842E0 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E0D84300 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x52796E614D6F6F74 && a2 == 0xEF73747365757165 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E0D84320 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001E0D84340 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1E0D6D24C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1E0BDD78C(uint64_t *a1)
{
  v2 = sub_1E0BDCC7C(&qword_1ECE805C8, &qword_1E0D7FDF8);
  v98 = *(v2 - 8);
  v99 = v2;
  v3 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v108 = &v71 - v4;
  v97 = sub_1E0BDCC7C(&qword_1ECE805D0, &qword_1E0D7FE00);
  v96 = *(v97 - 8);
  v5 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v107 = &v71 - v6;
  v95 = sub_1E0BDCC7C(&qword_1ECE805D8, &qword_1E0D7FE08);
  v94 = *(v95 - 8);
  v7 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v106 = &v71 - v8;
  v93 = sub_1E0BDCC7C(&qword_1ECE805E0, &qword_1E0D7FE10);
  v92 = *(v93 - 8);
  v9 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v105 = &v71 - v10;
  v91 = sub_1E0BDCC7C(&qword_1ECE805E8, &qword_1E0D7FE18);
  v90 = *(v91 - 8);
  v11 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v104 = &v71 - v12;
  v89 = sub_1E0BDCC7C(&qword_1ECE805F0, &qword_1E0D7FE20);
  v88 = *(v89 - 8);
  v13 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v103 = &v71 - v14;
  v87 = sub_1E0BDCC7C(&qword_1ECE805F8, &qword_1E0D7FE28);
  v86 = *(v87 - 8);
  v15 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v102 = &v71 - v16;
  v84 = sub_1E0BDCC7C(&qword_1ECE80600, &qword_1E0D7FE30);
  v85 = *(v84 - 8);
  v17 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v111 = &v71 - v18;
  v82 = sub_1E0BDCC7C(&qword_1ECE80608, &qword_1E0D7FE38);
  v83 = *(v82 - 8);
  v19 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v110 = &v71 - v20;
  v76 = sub_1E0BDCC7C(&qword_1ECE80610, &qword_1E0D7FE40);
  v81 = *(v76 - 8);
  v21 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v101 = &v71 - v22;
  v80 = sub_1E0BDCC7C(&qword_1ECE80618, &qword_1E0D7FE48);
  v79 = *(v80 - 8);
  v23 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v100 = &v71 - v24;
  v78 = sub_1E0BDCC7C(&qword_1ECE80620, &qword_1E0D7FE50);
  v77 = *(v78 - 8);
  v25 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v109 = &v71 - v26;
  v75 = sub_1E0BDCC7C(&qword_1ECE80628, &qword_1E0D7FE58);
  v74 = *(v75 - 8);
  v27 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v29 = &v71 - v28;
  v30 = sub_1E0BDCC7C(&qword_1ECE80630, &qword_1E0D7FE60);
  v73 = *(v30 - 8);
  v31 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v33 = &v71 - v32;
  v34 = sub_1E0BDCC7C(&qword_1ECE80638, &qword_1E0D7FE68);
  v35 = *(v34 - 8);
  v36 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v38 = &v71 - v37;
  v40 = a1[3];
  v39 = a1[4];
  v113 = a1;
  sub_1E0BDCCC4(a1, v40);
  sub_1E0BDCD08();
  v41 = v112;
  sub_1E0D6D2FC();
  if (v41)
  {
    goto LABEL_6;
  }

  v72 = v33;
  v71 = v30;
  v112 = v29;
  v42 = v109;
  v43 = v110;
  v44 = v111;
  v45 = v35;
  v46 = sub_1E0D6D1CC();
  v47 = (2 * *(v46 + 16)) | 1;
  v114 = v46;
  v115 = v46 + 32;
  v116 = 0;
  v117 = v47;
  v48 = sub_1E0BDF558();
  if (v116 != v117 >> 1)
  {
LABEL_5:
    v53 = sub_1E0D6D12C();
    v35 = swift_allocError();
    v55 = v54;
    v56 = *(sub_1E0BDCC7C(&qword_1ECE80640, &unk_1E0D7FE70) + 48);
    *v55 = &type metadata for WINetworkSharingError;
    sub_1E0D6D16C();
    sub_1E0D6D11C();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8], v53);
    swift_willThrow();
    (*(v45 + 8))(v38, v34);
    swift_unknownObjectRelease();
LABEL_6:
    sub_1E0BDF4E4(v113);
    return v35;
  }

  v35 = v48;
  v49 = v34;
  v34 = 0;
  v50 = v45;
  switch(v48)
  {
    case 0:
      v118 = 0;
      sub_1E0BDD1A0();
      v51 = v72;
      v52 = v49;
      sub_1E0D6D15C();
      (*(v73 + 8))(v51, v71);
      goto LABEL_21;
    case 1:
      v118 = 1;
      sub_1E0BDD14C();
      v66 = v112;
      v52 = v49;
      sub_1E0D6D15C();
      (*(v74 + 8))(v66, v75);
      goto LABEL_21;
    case 2:
      v118 = 2;
      sub_1E0BDD0F8();
      v63 = v42;
      v59 = v49;
      sub_1E0D6D15C();
      (*(v77 + 8))(v63, v78);
      goto LABEL_23;
    case 3:
      v118 = 3;
      sub_1E0BDD0A4();
      v64 = v100;
      v59 = v49;
      sub_1E0D6D15C();
      (*(v79 + 8))(v64, v80);
      goto LABEL_23;
    case 4:
      v118 = 4;
      sub_1E0BDD050();
      v60 = v101;
      v52 = v49;
      sub_1E0D6D15C();
      (*(v81 + 8))(v60, v76);
      goto LABEL_21;
    case 5:
      v118 = 5;
      sub_1E0BDCFFC();
      v59 = v49;
      sub_1E0D6D15C();
      (*(v83 + 8))(v43, v82);
      goto LABEL_23;
    case 6:
      v118 = 6;
      sub_1E0BDCFA8();
      v68 = v44;
      v52 = v49;
      sub_1E0D6D15C();
      (*(v85 + 8))(v68, v84);
LABEL_21:
      (*(v50 + 8))(v38, v52);
      goto LABEL_24;
    case 7:
      v118 = 7;
      sub_1E0BDCF54();
      v65 = v102;
      v59 = v49;
      sub_1E0D6D15C();
      (*(v86 + 8))(v65, v87);
      goto LABEL_23;
    case 8:
      v118 = 8;
      sub_1E0BDCF00();
      v70 = v103;
      v59 = v49;
      sub_1E0D6D15C();
      (*(v88 + 8))(v70, v89);
      goto LABEL_23;
    case 9:
      v118 = 9;
      sub_1E0BDCEAC();
      v62 = v104;
      v59 = v49;
      sub_1E0D6D15C();
      (*(v90 + 8))(v62, v91);
      goto LABEL_23;
    case 10:
      v118 = 10;
      sub_1E0BDCE58();
      v69 = v105;
      v59 = v49;
      sub_1E0D6D15C();
      (*(v92 + 8))(v69, v93);
      goto LABEL_23;
    case 11:
      v118 = 11;
      sub_1E0BDCE04();
      v58 = v106;
      v59 = v49;
      sub_1E0D6D15C();
      (*(v94 + 8))(v58, v95);
      goto LABEL_23;
    case 12:
      v118 = 12;
      sub_1E0BDCDB0();
      v61 = v107;
      v59 = v49;
      sub_1E0D6D15C();
      (*(v96 + 8))(v61, v97);
      goto LABEL_23;
    case 13:
      v118 = 13;
      sub_1E0BDCD5C();
      v67 = v108;
      v59 = v49;
      sub_1E0D6D15C();
      (*(v98 + 8))(v67, v99);
LABEL_23:
      (*(v45 + 8))(v38, v59);
LABEL_24:
      swift_unknownObjectRelease();
      sub_1E0BDF4E4(v113);
      break;
    default:
      goto LABEL_5;
  }

  return v35;
}

unint64_t sub_1E0BDE750()
{
  result = qword_1ECE804C0;
  if (!qword_1ECE804C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE804C0);
  }

  return result;
}

unint64_t sub_1E0BDE7A8()
{
  result = qword_1ECE804C8;
  if (!qword_1ECE804C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE804C8);
  }

  return result;
}

uint64_t sub_1E0BDE80C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E0BDE89C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E0BDEA40()
{
  result = qword_1ECE804D0;
  if (!qword_1ECE804D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE804D0);
  }

  return result;
}

unint64_t sub_1E0BDEA98()
{
  result = qword_1ECE804D8;
  if (!qword_1ECE804D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE804D8);
  }

  return result;
}

unint64_t sub_1E0BDEAF0()
{
  result = qword_1ECE804E0;
  if (!qword_1ECE804E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE804E0);
  }

  return result;
}

unint64_t sub_1E0BDEB48()
{
  result = qword_1ECE804E8;
  if (!qword_1ECE804E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE804E8);
  }

  return result;
}

unint64_t sub_1E0BDEBA0()
{
  result = qword_1ECE804F0;
  if (!qword_1ECE804F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE804F0);
  }

  return result;
}

unint64_t sub_1E0BDEBF8()
{
  result = qword_1ECE804F8;
  if (!qword_1ECE804F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE804F8);
  }

  return result;
}

unint64_t sub_1E0BDEC50()
{
  result = qword_1ECE80500;
  if (!qword_1ECE80500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80500);
  }

  return result;
}

unint64_t sub_1E0BDECA8()
{
  result = qword_1ECE80508;
  if (!qword_1ECE80508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80508);
  }

  return result;
}

unint64_t sub_1E0BDED00()
{
  result = qword_1ECE80510;
  if (!qword_1ECE80510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80510);
  }

  return result;
}

unint64_t sub_1E0BDED58()
{
  result = qword_1ECE80518;
  if (!qword_1ECE80518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80518);
  }

  return result;
}

unint64_t sub_1E0BDEDB0()
{
  result = qword_1ECE80520;
  if (!qword_1ECE80520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80520);
  }

  return result;
}

unint64_t sub_1E0BDEE08()
{
  result = qword_1ECE80528;
  if (!qword_1ECE80528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80528);
  }

  return result;
}

unint64_t sub_1E0BDEE60()
{
  result = qword_1ECE80530;
  if (!qword_1ECE80530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80530);
  }

  return result;
}

unint64_t sub_1E0BDEEB8()
{
  result = qword_1ECE80538;
  if (!qword_1ECE80538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80538);
  }

  return result;
}

unint64_t sub_1E0BDEF10()
{
  result = qword_1ECE80540;
  if (!qword_1ECE80540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80540);
  }

  return result;
}

unint64_t sub_1E0BDEF68()
{
  result = qword_1ECE80548;
  if (!qword_1ECE80548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80548);
  }

  return result;
}

unint64_t sub_1E0BDEFC0()
{
  result = qword_1ECE80550;
  if (!qword_1ECE80550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80550);
  }

  return result;
}

unint64_t sub_1E0BDF018()
{
  result = qword_1ECE80558;
  if (!qword_1ECE80558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80558);
  }

  return result;
}

unint64_t sub_1E0BDF070()
{
  result = qword_1ECE80560;
  if (!qword_1ECE80560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80560);
  }

  return result;
}

unint64_t sub_1E0BDF0C8()
{
  result = qword_1ECE80568;
  if (!qword_1ECE80568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80568);
  }

  return result;
}

unint64_t sub_1E0BDF120()
{
  result = qword_1ECE80570;
  if (!qword_1ECE80570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80570);
  }

  return result;
}

unint64_t sub_1E0BDF178()
{
  result = qword_1ECE80578;
  if (!qword_1ECE80578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80578);
  }

  return result;
}

unint64_t sub_1E0BDF1D0()
{
  result = qword_1ECE80580;
  if (!qword_1ECE80580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80580);
  }

  return result;
}

unint64_t sub_1E0BDF228()
{
  result = qword_1ECE80588;
  if (!qword_1ECE80588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80588);
  }

  return result;
}

unint64_t sub_1E0BDF280()
{
  result = qword_1ECE80590;
  if (!qword_1ECE80590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80590);
  }

  return result;
}

unint64_t sub_1E0BDF2D8()
{
  result = qword_1ECE80598;
  if (!qword_1ECE80598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80598);
  }

  return result;
}

unint64_t sub_1E0BDF330()
{
  result = qword_1ECE805A0;
  if (!qword_1ECE805A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE805A0);
  }

  return result;
}

unint64_t sub_1E0BDF388()
{
  result = qword_1ECE805A8;
  if (!qword_1ECE805A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE805A8);
  }

  return result;
}

unint64_t sub_1E0BDF3E0()
{
  result = qword_1ECE805B0;
  if (!qword_1ECE805B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE805B0);
  }

  return result;
}

unint64_t sub_1E0BDF438()
{
  result = qword_1ECE805B8;
  if (!qword_1ECE805B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE805B8);
  }

  return result;
}

unint64_t sub_1E0BDF490()
{
  result = qword_1ECE805C0;
  if (!qword_1ECE805C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE805C0);
  }

  return result;
}

uint64_t sub_1E0BDF4E4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1E0BDF558()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 14;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E0BDF5B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t WINetworkSharingProvider.Network.lastModified.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WINetworkSharingProvider.Network(0) + 20);
  v4 = sub_1E0D6CF3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2idAE2IDVvg_0()
{
  v1 = v0 + *(type metadata accessor for WINetworkSharingProvider.Network(0) + 24);
  v2 = *v1;
  sub_1E0BDF5B0(*v1, *(v1 + 8));
  return v2;
}

uint64_t WINetworkSharingProvider.Network.securityPolicy.getter()
{
  v1 = *(v0 + *(type metadata accessor for WINetworkSharingProvider.Network(0) + 32));
}

uint64_t WINetworkSharingProvider.Network.credentials.getter()
{
  v1 = (v0 + *(type metadata accessor for WINetworkSharingProvider.Network(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WINetworkSharingProvider.Network.captivePortalLogin.getter()
{
  v1 = *(v0 + *(type metadata accessor for WINetworkSharingProvider.Network(0) + 40));
}

uint64_t WINetworkSharingProvider.Network.description.getter()
{
  v1 = v0;
  sub_1E0D6D0FC();
  MEMORY[0x1E12E8FE0](0x203A64697373, 0xE600000000000000);
  v2 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v3 = WISSID.description.getter(*(v1 + v2[6]), *(v1 + v2[6] + 8));
  MEMORY[0x1E12E8FE0](v3);

  MEMORY[0x1E12E8FE0](0xD000000000000012, 0x80000001E0D84390);
  v4 = *(v0 + v2[8]);
  sub_1E0BE4630();
  v5 = sub_1E0D6D0AC();
  MEMORY[0x1E12E8FE0](v5);

  MEMORY[0x1E12E8FE0](0xD000000000000013, 0x80000001E0D843B0);
  if (*(v1 + v2[7]))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v1 + v2[7]))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E12E8FE0](v6, v7);

  MEMORY[0x1E12E8FE0](0x6E6564657263202CLL, 0xEF203A736C616974);
  if (*(v1 + v2[9] + 8))
  {
    v8 = 0x64726F7773736170;
  }

  else
  {
    v8 = 1701736302;
  }

  if (*(v1 + v2[9] + 8))
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x1E12E8FE0](v8, v9);

  MEMORY[0x1E12E8FE0](0xD000000000000016, 0x80000001E0D843D0);
  v15 = *(v1 + v2[10]);

  sub_1E0BDCC7C(&qword_1ECE80650, &qword_1E0D7FE80);
  v10 = sub_1E0D6CFFC();
  MEMORY[0x1E12E8FE0](v10);

  MEMORY[0x1E12E8FE0](0x537473726966202CLL, 0xEF203A6465726168);
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80658, MEMORY[0x1E6969530]);
  v11 = sub_1E0D6D23C();
  MEMORY[0x1E12E8FE0](v11);

  MEMORY[0x1E12E8FE0](0xD000000000000010, 0x80000001E0D843F0);
  v12 = v1 + v2[5];
  v13 = sub_1E0D6D23C();
  MEMORY[0x1E12E8FE0](v13);

  return 0;
}

uint64_t sub_1E0BDFA90()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 6385783;
  v4 = 845246583;
  if (v1 != 4)
  {
    v4 = 862023799;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6649711;
  if (v1 != 1)
  {
    v5 = 7366007;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E0BDFB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E0BE5E9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0BDFB44(uint64_t a1)
{
  v2 = sub_1E0BE4684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDFB80(uint64_t a1)
{
  v2 = sub_1E0BE4684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDFBBC(uint64_t a1)
{
  v2 = sub_1E0BE487C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDFBF8(uint64_t a1)
{
  v2 = sub_1E0BE487C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDFC34(uint64_t a1)
{
  v2 = sub_1E0BE4828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDFC70(uint64_t a1)
{
  v2 = sub_1E0BE4828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDFCAC(uint64_t a1)
{
  v2 = sub_1E0BE47D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDFCE8(uint64_t a1)
{
  v2 = sub_1E0BE47D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDFD24(uint64_t a1)
{
  v2 = sub_1E0BE472C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDFD60(uint64_t a1)
{
  v2 = sub_1E0BE472C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDFD9C(uint64_t a1)
{
  v2 = sub_1E0BE46D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDFDD8(uint64_t a1)
{
  v2 = sub_1E0BE46D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BDFE14(uint64_t a1)
{
  v2 = sub_1E0BE4780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BDFE50(uint64_t a1)
{
  v2 = sub_1E0BE4780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WINetworkSharingProvider.Network.SecurityPolicy.encode(to:)(void *a1, int a2)
{
  v52 = a2;
  v3 = sub_1E0BDCC7C(&qword_1ECE80660, &qword_1E0D7FE88);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v36 - v5;
  v6 = sub_1E0BDCC7C(&qword_1ECE80668, &qword_1E0D7FE90);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v36 - v8;
  v9 = sub_1E0BDCC7C(&qword_1ECE80670, &qword_1E0D7FE98);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = sub_1E0BDCC7C(&qword_1ECE80678, &qword_1E0D7FEA0);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = sub_1E0BDCC7C(&qword_1ECE80680, &qword_1E0D7FEA8);
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v20 = sub_1E0BDCC7C(&qword_1ECE80688, &qword_1E0D7FEB0);
  v37 = *(v20 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v36 - v22;
  v51 = sub_1E0BDCC7C(&qword_1ECE80690, &qword_1E0D7FEB8);
  v24 = *(v51 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v27 = &v36 - v26;
  v28 = a1[4];
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE4684();
  sub_1E0D6D30C();
  v29 = (v24 + 8);
  if (v52 > 2u)
  {
    if (v52 == 3)
    {
      v56 = 3;
      sub_1E0BE4780();
      v32 = v42;
      v33 = v51;
      sub_1E0D6D1DC();
      v35 = v43;
      v34 = v44;
    }

    else if (v52 == 4)
    {
      v57 = 4;
      sub_1E0BE472C();
      v32 = v45;
      v33 = v51;
      sub_1E0D6D1DC();
      v35 = v46;
      v34 = v47;
    }

    else
    {
      v58 = 5;
      sub_1E0BE46D8();
      v32 = v48;
      v33 = v51;
      sub_1E0D6D1DC();
      v35 = v49;
      v34 = v50;
    }

    (*(v35 + 8))(v32, v34);
  }

  else if (v52)
  {
    if (v52 == 1)
    {
      v54 = 1;
      sub_1E0BE4828();
      v30 = v51;
      sub_1E0D6D1DC();
      (*(v38 + 8))(v19, v39);
      return (*v29)(v27, v30);
    }

    v55 = 2;
    sub_1E0BE47D4();
    v33 = v51;
    sub_1E0D6D1DC();
    (*(v40 + 8))(v15, v41);
  }

  else
  {
    v53 = 0;
    sub_1E0BE487C();
    v33 = v51;
    sub_1E0D6D1DC();
    (*(v37 + 8))(v23, v20);
  }

  return (*v29)(v27, v33);
}

uint64_t WINetworkSharingProvider.Network.SecurityPolicy.hashValue.getter(unsigned __int8 a1)
{
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](a1);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE0524@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E0BE6098(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t WINetworkSharingProvider.Network.Credentials.description.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0x64726F7773736170;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1E0BE05C4()
{
  if (*v0)
  {
    result = 0x64726F7773736170;
  }

  else
  {
    result = 1701736302;
  }

  *v0;
  return result;
}

uint64_t sub_1E0BE05F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E0D6D24C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E0D6D24C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E0BE06E0(uint64_t a1)
{
  v2 = sub_1E0BE689C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BE071C(uint64_t a1)
{
  v2 = sub_1E0BE689C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BE0758(uint64_t a1)
{
  v2 = sub_1E0BE6944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BE0794(uint64_t a1)
{
  v2 = sub_1E0BE6944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BE07E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E0D6D24C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E0BE0864(uint64_t a1)
{
  v2 = sub_1E0BE68F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BE08A0(uint64_t a1)
{
  v2 = sub_1E0BE68F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static WINetworkSharingProvider.Network.Credentials.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1E0D6D24C();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t WINetworkSharingProvider.Network.Credentials.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = a2;
  v4 = sub_1E0BDCC7C(&qword_1ECE806D0, &qword_1E0D7FEC0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = sub_1E0BDCC7C(&qword_1ECE806D8, &qword_1E0D7FEC8);
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = sub_1E0BDCC7C(&qword_1ECE806E0, &qword_1E0D7FED0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v17 = a1[4];
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE689C();
  v18 = v24;
  sub_1E0D6D30C();
  if (v18)
  {
    v26 = 1;
    sub_1E0BE68F0();
    sub_1E0D6D1DC();
    sub_1E0D6D1FC();
    (*(v22 + 8))(v7, v4);
  }

  else
  {
    v25 = 0;
    sub_1E0BE6944();
    sub_1E0D6D1DC();
    (*(v20 + 8))(v11, v21);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t WINetworkSharingProvider.Network.Credentials.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return MEMORY[0x1E12E9280](0);
  }

  MEMORY[0x1E12E9280](1);

  return sub_1E0D6D00C();
}

uint64_t WINetworkSharingProvider.Network.Credentials.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1E0D6D2AC();
  if (a2)
  {
    MEMORY[0x1E12E9280](1);
    sub_1E0D6D00C();
  }

  else
  {
    MEMORY[0x1E12E9280](0);
  }

  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE0D00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E0BE6998(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1E0BE0D48()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E0D6D2AC();
  if (v2)
  {
    MEMORY[0x1E12E9280](1);
    sub_1E0D6D00C();
  }

  else
  {
    MEMORY[0x1E12E9280](0);
  }

  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE0DB8()
{
  if (!v0[1])
  {
    return MEMORY[0x1E12E9280](0);
  }

  v1 = *v0;
  MEMORY[0x1E12E9280](1);

  return sub_1E0D6D00C();
}

uint64_t sub_1E0BE0E30()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E0D6D2AC();
  if (v2)
  {
    MEMORY[0x1E12E9280](1);
    sub_1E0D6D00C();
  }

  else
  {
    MEMORY[0x1E12E9280](0);
  }

  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE0E9C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1E0D6D24C();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_1E0BE0EE0()
{
  if (*(v0 + 8))
  {
    return 0x64726F7773736170;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1E0BE0F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001E0D844D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E0D6D24C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E0BE0FE4(uint64_t a1)
{
  v2 = sub_1E0BE6E60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BE1020(uint64_t a1)
{
  v2 = sub_1E0BE6E60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BE1060(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1E0BE48D0(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1E0D6D24C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}