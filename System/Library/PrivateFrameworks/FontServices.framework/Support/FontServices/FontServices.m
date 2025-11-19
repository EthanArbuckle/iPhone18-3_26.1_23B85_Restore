id sub_10000106C()
{
  if (qword_10001D900 != -1)
  {
    sub_10000D020();
  }

  v1 = qword_10001D8F8;

  return v1;
}

id sub_10000112C()
{
  if (qword_10001D910 != -1)
  {
    sub_10000D034();
  }

  v1 = qword_10001D908;

  return v1;
}

void sub_1000012B0(id a1)
{
  qword_10001D878 = objc_opt_new();

  _objc_release_x1();
}

void sub_100001458(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FontServicesDaemonProtocol];
  v2 = qword_10001D888;
  qword_10001D888 = v1;

  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FontServicesClientProtocol];
  v4 = qword_10001D890;
  qword_10001D890 = v3;

  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v5, v6, v7, v8, v9, objc_opt_class(), 0];
  [qword_10001D888 setClasses:v10 forSelector:"checkin:reply:" argumentIndex:0 ofReply:1];
}

void sub_100001708(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    v7 = [v6 mutableCopy];
    if (!realpath_DARWIN_EXTSN([v5 UTF8String], __s1))
    {
      [v5 UTF8String];
LABEL_6:
      FSLog_Error();
LABEL_20:

      goto LABEL_21;
    }

    if (memcmp(__s1, "/private/var/mobile/Library/UserFonts/", 0x26uLL))
    {
      goto LABEL_6;
    }

    [v7 removeObjectForKey:@"disabled"];
    v16 = sub_10000BB70(v5, v8) != 0;
    if (*(a1 + 80) == 1)
    {
      if (*(a1 + 81))
      {
        goto LABEL_9;
      }

      if (!v16)
      {
        v12 = *(a1 + 48);
        v14 = *(a1 + 64);
        v11 = __s1;
        if (sandbox_check_by_audit_token())
        {
          if (!v16)
          {
            v13 = *(a1 + 48);
            v15 = *(a1 + 64);
            v9 = sandbox_extension_issue_file_to_process();
            if (v9)
            {
              v10 = [NSData dataWithBytesNoCopy:v9 length:strlen(v9) + 1 freeWhenDone:1, __s1];
              [v7 setObject:v10 forKey:@"data"];
            }

            else
            {
              v11 = __s1;
              FSLog_Error();
            }
          }
        }

        else if (*(a1 + 80))
        {
LABEL_9:
          if (*(a1 + 81) != 1)
          {
            goto LABEL_20;
          }
        }
      }
    }

    [*(a1 + 32) setObject:v7 forKey:{v5, v11}];
    goto LABEL_20;
  }

LABEL_21:
}

void sub_100002210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002228(uint64_t a1, void *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  if (!v11 || [v11 containsObject:v9])
  {
    v12 = [v10 objectForKey:@"disabled"];
    v13 = [v12 BOOLValue];

    if ((v13 & 1) == 0)
    {
      if (*(a1 + 56))
      {
        v14 = 1;
        goto LABEL_5;
      }

      if (*(a1 + 57) == 1)
      {
        v16 = *(a1 + 40);
        v17 = [v9 stringByDeletingLastPathComponent];
        v18 = [v17 lastPathComponent];
        LODWORD(v16) = [v16 isEqualToString:v18];

        if (v16)
        {
          v14 = 1;
          *a4 = 1;
          *(*(*(a1 + 48) + 8) + 24) = 1;
          goto LABEL_5;
        }
      }

      if (*(a1 + 58) == 1 && sub_10000BB04(v9))
      {
        v14 = 1;
        *a5 = 1;
        goto LABEL_5;
      }
    }
  }

  v14 = 0;
LABEL_5:

  return v14;
}

void sub_1000026EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002714(uint64_t a1)
{
  v2 = objc_opt_new();
  if (*(a1 + 88) & 1) != 0 || (*(a1 + 89))
  {
    v4 = *(a1 + 90);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v30 = 0;
    v7 = *(a1 + 72);
    v28 = *(a1 + 56);
    v29 = v7;
    v8 = [v5 fontInfoForAuditToken:&v28 withFontAccess:v4 enumuration:&v30 installation:? identifier:? andFileFilters:? foundFontDirectoryName:?];
    v3 = v30;
    [v2 addEntriesFromDictionary:v8];

    if (*(a1 + 88))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 90) == 1 && *(a1 + 40))
  {
    v9 = [*(a1 + 32) issuedFontFilePathsForIdentifier:?];
    v10 = *(a1 + 32);
    v11 = *(a1 + 88);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000029B8;
    v26[3] = &unk_100018700;
    v27 = v9;
    v12 = *(a1 + 72);
    v28 = *(a1 + 56);
    v29 = v12;
    v13 = v9;
    v14 = [v10 filterUserFontInfoForAuditToken:&v28 withEnumerationCapability:v11 withFilter:v26];
    [v2 addEntriesFromDictionary:v14];
  }

LABEL_8:
  v15 = objc_opt_new();
  [v15 setObject:v2 forKey:@"fontsInfo"];
  if (*(a1 + 88) == 1)
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 72);
    v28 = *(a1 + 56);
    v29 = v17;
    v18 = [v16 sandboxExtensionForEnumeration:&v28];
    if (v18)
    {
      [v15 setObject:v18 forKey:@"extension"];
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 72);
    v28 = *(a1 + 56);
    v29 = v20;
    v21 = [v19 sandboxExtensionForFontAssets:&v28];

    if (v21)
    {
      v22 = @"extension.fontasset";
LABEL_16:
      [v15 setObject:v21 forKey:v22];
    }
  }

  else if (v3)
  {
    v23 = *(a1 + 32);
    v24 = *(a1 + 72);
    v28 = *(a1 + 56);
    v29 = v24;
    v25 = [v23 sandboxExtensionForProvider:&v28 withDirectoryName:v3];
    if (v25)
    {
      v21 = v25;
      v22 = @"extension.provider";
      goto LABEL_16;
    }
  }

  if ((*(a1 + 88) & 1) == 0 && (*(a1 + 90) & 1) == 0)
  {
    [v15 setObject:&__kCFBooleanTrue forKey:@"hide-profilefonts"];
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t sub_1000029B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if ([*(a1 + 32) containsObject:v7])
  {
    v8 = 1;
  }

  else if (sub_10000BB04(v7))
  {
    v8 = 1;
    *a5 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100002A28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100002A40(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (sub_10000BB04(v6))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 objectForKeyedSubscript:@"familyFaces"];
    v9 = [v8 allKeys];

    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v17 + 1) + 8 * v13) hasPrefix:@"PingFang "])
          {
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
            v16 = *(a1 + 32);
            FSLog_Debug();
            v14 = 1;
            goto LABEL_13;
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_13:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_100002D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100002D78(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v6 = [v9 objectForKey:@"familyName"];
  v7 = [v6 objectForKey:a1[4]];

  if (v7)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v7);
    v8 = [v9 objectForKey:@"disabled"];
    *(*(a1[6] + 8) + 24) = [v8 BOOLValue] ^ 1;

    *a4 = 1;
  }
}

void sub_100002F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100002F88(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v6 = [v10 objectForKey:@"familyName"];
  v7 = [v6 allValues];
  v8 = [v7 containsObject:a1[4]];

  if (v8)
  {
    *(*(a1[5] + 8) + 24) = 1;
    v9 = [v10 objectForKey:@"disabled"];
    *(*(a1[6] + 8) + 24) = [v9 BOOLValue] ^ 1;

    *a4 = 1;
  }
}

uint64_t sub_10000349C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = [a3 objectForKey:@"familyName"];
  v6 = [v5 allValues];
  v7 = [v6 containsObject:*(a1 + 32)];

  if (v7)
  {
    v8 = [*(a1 + 40) identifierFromFilePath:v10];
    if (v8)
    {
      [*(a1 + 48) addObject:v8];
    }
  }

  return _objc_release_x2();
}

void sub_1000036C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000036D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKey:@"familyName"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000037D0;
  v12[3] = &unk_1000187C8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v15 = v5;
  v11 = *(a1 + 48);
  v9 = v11;
  v16 = v11;
  v10 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];
}

void sub_1000037D0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  if ([*(a1 + 32) isEqualToString:a2])
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
    v8 = [*(a1 + 40) identifierFromFilePath:*(a1 + 48)];
    if (v8)
    {
      [*(a1 + 56) addObject:v8];
    }

    *a4 = 1;
  }
}

void sub_100003B1C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 objectForKeyedSubscript:@"providers"];
  v5 = [v4 allObjects];
  [v6 setObject:v5 forKeyedSubscript:@"providers"];

  [*(a1 + 32) addObject:v6];
}

void sub_100004D54(id a1)
{
  qword_10001D8A8 = dispatch_semaphore_create(1);

  _objc_release_x1();
}

void sub_100004D8C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) allKeys];
    [v2 warnAboutSuspendedFontProviders:v3];
  }

  sleep(1u);

  dispatch_async(&_dispatch_main_q, &stru_100018858);
}

void sub_100004E1C(uint64_t a1)
{
  v45 = 0;
  v46[0] = 0;
  v2 = [*(a1 + 32) unknownFontNamesAndEnabledFamilyNames:v46 andDisabledFamilyNames:&v45 fromRequests:*(a1 + 40)];
  v3 = v46[0];
  v4 = v45;
  v5 = [NSSet setWithArray:v3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 124);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100005154;
  v43[3] = &unk_100018700;
  v8 = v5;
  v44 = v8;
  v9 = *(a1 + 104);
  v42[0] = *(a1 + 88);
  v42[1] = v9;
  v10 = [v6 filterUserFontInfoForAuditToken:v42 withEnumerationCapability:v7 withFilter:v43];
  v11 = [v2 count];
  v12 = [v4 count];
  v13 = [v8 count];
  [*(a1 + 32) analyticsEventRequestFonts:*(a1 + 48) misses:v11 suggestions:v12 resolved:v13];
  if ([v2 count] || objc_msgSend(v4, "count"))
  {
    v30 = [*(a1 + 32) missingFontsDialogRequestsFromUnknownFontNames:v2];
    [*(a1 + 32) missingFontsDialogRequestsFromDisabledFamilyNames:v4];
    v14 = v31 = v13;
    v29 = *(a1 + 32);
    v15 = [v30 arrayByAddingObjectsFromArray:v14];
    v32 = v2;
    v16 = v4;
    v17 = v3;
    v18 = *(a1 + 120);
    v19 = v8;
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10000521C;
    v33[3] = &unk_1000188D0;
    v22 = v10;
    v23 = *(a1 + 32);
    v34 = v22;
    v35 = v23;
    v39 = *(a1 + 88);
    v40 = *(a1 + 104);
    v41 = *(a1 + 124);
    v37 = *(a1 + 72);
    v36 = *(a1 + 48);
    v38 = *(a1 + 80);
    v24 = v18;
    v3 = v17;
    v4 = v16;
    v2 = v32;
    v25 = v21;
    v8 = v19;
    [v29 showDialog:v15 forPID:v24 sceneID:v20 appID:v25 completionHandler:v33];

    v13 = v31;
    v26 = 1;
  }

  else
  {
    (*(*(a1 + 72) + 16))();
    v27 = *(a1 + 32);
    v28 = [v10 allKeys];
    [v27 recordIssuedFontPaths:v28 forIdentifier:*(a1 + 48)];

    (*(*(a1 + 80) + 16))();
    v26 = 0;
  }

  [*(a1 + 32) recordRequestFontsResultWihtMissed:v26 andResolved:v13 != 0];
}

id sub_100005154(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKey:@"disabled"];
  if ([v5 BOOLValue])
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v4 objectForKey:@"familyName"];
    v9 = [v8 allValues];
    v10 = [NSSet setWithArray:v9];
    v6 = [v7 intersectsSet:v10];
  }

  return v6;
}

void sub_10000521C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSMutableArray arrayWithCapacity:0];
  v5 = [*(a1 + 32) mutableCopy];
  if ([v3 count])
  {
    v24 = v4;
    v25 = a1;
    v6 = [NSMutableSet setWithCapacity:0];
    v7 = [NSMutableDictionary dictionaryWithCapacity:0];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v3;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v14 = [v13 objectForKey:@"uniqueID"];
          if (v14)
          {
            [v6 addObject:v14];
            v15 = [v13 objectForKey:@"installProvider"];
            if (v15)
            {
              [v7 setObject:v15 forKey:v14];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v10);
    }

    v4 = v24;
    a1 = v25;
    v16 = *(v25 + 40);
    v17 = *(v25 + 104);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10000553C;
    v28[3] = &unk_1000188A8;
    v29 = v6;
    v30 = v16;
    v31 = v7;
    v32 = v24;
    v18 = *(v25 + 88);
    v27[0] = *(v25 + 72);
    v27[1] = v18;
    v19 = v7;
    v20 = v6;
    v21 = [v16 filterUserFontInfoForAuditToken:v27 withEnumerationCapability:v17 withFilter:v28];
    [v5 addEntriesFromDictionary:v21];

    v3 = v26;
  }

  (*(*(a1 + 56) + 16))();
  if ([v4 count])
  {
    [FSUserFontManager enableOrDisablePersistentURLs:v4 enabled:1];
    [*(a1 + 40) invalidateUserFonts];
  }

  v22 = *(a1 + 40);
  v23 = [v5 allKeys];
  [v22 recordIssuedFontPaths:v23 forIdentifier:*(a1 + 48)];

  (*(*(a1 + 64) + 16))();
}

uint64_t sub_10000553C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKey:@"disabled"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = [v6 objectForKey:@"familyName"];
    v10 = [v9 allValues];

    v11 = *(a1 + 32);
    v12 = [NSSet setWithArray:v10];
    LODWORD(v11) = [v11 intersectsSet:v12];

    if (v11)
    {
      v13 = [*(a1 + 40) identifierFromFilePath:v5];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = v10;
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v25 = v10;
        v17 = *v27;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(a1 + 48) objectForKey:*(*(&v26 + 1) + 8 * i)];
            v20 = [v19 isEqualToString:v13];

            if (v20)
            {
              v22 = *(a1 + 56);
              v23 = [NSURL fileURLWithPath:v5 isDirectory:0];
              [v22 addObject:v23];

              v21 = 1;
              goto LABEL_15;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        v21 = 0;
LABEL_15:
        v10 = v25;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

id sub_100005AFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKey:@"familyName"];
  v5 = [v4 containsObject:*(a1 + 32)];

  return v5;
}

uint64_t sub_100005B4C(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_100006618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  objc_destroyWeak((v39 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_100006698(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v12 = v6;
  v8 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  if ([v7 isEqualToString:v8])
  {
    v9 = [v12 objectForKeyedSubscript:*(a1 + 48)];
    v10 = [v9 BOOLValue];
    v11 = *(a1 + 64);

    if (v11 == v10)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
  }
}

void sub_10000675C(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [v4 elements];
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      v10 = SBSDisplayLayoutElementHomeScreenIdentifier;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v24 + 1) + 8 * i) identifier];
          v13 = [v12 isEqualToString:v10];

          if (v13)
          {
            v14 = [WeakRetained subscriptionSupportQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100006974;
            block[3] = &unk_100018A38;
            block[4] = WeakRetained;
            v15 = a1[4];
            v16 = a1[5];
            v17 = a1[6];
            v18 = a1[7];
            *&v19 = v17;
            *(&v19 + 1) = v18;
            *&v20 = v15;
            *(&v20 + 1) = v16;
            v22 = v20;
            v23 = v19;
            dispatch_async(v14, block);

            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

id sub_100006974(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = qword_10001D8B8;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [*(a1 + 32) subscriptionSupportQueue];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100006B40;
        v11[3] = &unk_100018A10;
        v9 = *(a1 + 40);
        v11[4] = *(a1 + 32);
        v11[5] = v7;
        v12 = v9;
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        v15 = *(a1 + 64);
        dispatch_async(v8, v11);

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  return [qword_10001D8B8 removeAllObjects];
}

void sub_100006B40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v3 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 56)];
  v4 = [v3 BOOLValue];
  v5 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 64)];
  v6 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 72)];
  [v2 warnAboutSuspendedFontProvider:v7 forExpiration:v4 date:v5 withURLSchem:v6 immediately:0];
}

void sub_100006CBC(uint64_t a1)
{
  v4 = +[FSUserFontManager resumeSuspendedFontFiles];
  if ([v4 count])
  {
    v2 = *(a1 + 32);
    v3 = [v4 allKeys];
    [v2 warnAboutSuspendedFontProviders:v3];
  }
}

void sub_100006DEC(id a1)
{
  qword_10001D8C0 = dispatch_queue_create("com.apple.fontservices.UpdatingUserFonts", 0);

  _objc_release_x1();
}

uint64_t sub_1000070BC(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.fontservicesd.subscriptionSupport", 0);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return _objc_release_x1();
}

uint64_t sub_1000071B4(uint64_t a1)
{
  v2 = +[FSUserFontManager knownFontProviders];
  v3 = [v2 count];

  v24 = 0;
  v25 = 0;
  [*(a1 + 32) extractRequestFontsMissed:&v25 andResolved:&v24];
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if (v3)
  {
    v4 = [FSUserFontManager fontProvidersSubscriptionSupportInfoAndFontFamiliesInstalled:&v23 andRemovedCount:&v22 andProfileFontsCount:&v21];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100002A28;
    v19 = sub_100002A38;
    v20 = 0;
    [v4 count];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100007528;
    v14[3] = &unk_100018AF8;
    v14[4] = *(a1 + 32);
    v14[5] = &v15;
    [v4 enumerateKeysAndObjectsUsingBlock:v14];
    if ([v16[5] count])
    {
      v26[0] = FBSOpenApplicationOptionKeyActivateSuspended;
      v26[1] = FBSOpenApplicationOptionKeyLaunchIntent;
      v27[0] = &__kCFBooleanTrue;
      v27[1] = &off_10001A330;
      v5 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
      v6 = [FBSOpenApplicationOptions optionsWithDictionary:v5];
      v7 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
      v8 = 1;
      do
      {
        v9 = v8;
        if (![v16[5] count])
        {
          break;
        }

        v10 = arc4random();
        v11 = (v10 % [v16[5] count]);
        v12 = [v16[5] objectAtIndex:v11];
        [v16[5] removeObjectAtIndex:v11];
        [v7 openApplication:v12 withOptions:v6 completion:0];

        v8 = 0;
      }

      while ((v9 & 1) != 0);
    }

    _Block_object_dispose(&v15, 8);
  }

  atomic_fetch_add_explicit(dword_10001D8D8, 0xFFFFFFFF, memory_order_relaxed);
  [*(a1 + 32) countFontAssets];
  return AnalyticsSendEventLazy();
}

void sub_100007528(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKey:@"url"];

  if (v7)
  {
    v8 = [v6 objectForKey:@"elapsed"];
    [v8 doubleValue];
    v10 = v9;

    v11 = [v6 objectForKey:@"expire"];
    [v11 doubleValue];
    v13 = v12;

    v14 = [v6 objectForKey:@"warn"];
    [v14 doubleValue];
    v16 = v15;

    if (v16 < 21.0)
    {
      NSLog(@"FontProvider subscription info %@(%d) should not be shorter than %d.  It's adjusted.", @"warn", v16, 21);
      v16 = 21.0;
    }

    v17 = v10 / 1440.0;
    if (v16 + 2.0 > v13)
    {
      NSLog(@"FontProvider subscription info %@(%d) should not be shorter than %d.  It's adjusted.", @"expire", v13, (v16 + 2.0));
      v13 = v16 + 2.0;
    }

    v18 = [v6 objectForKey:@"scheme"];
    v19 = [v6 objectForKey:@"lastAccessed"];
    v20 = [NSDate dateWithTimeInterval:v19 sinceDate:v13 * 60.0 * 1440.0];
    if (v17 >= v13)
    {
      NSLog(@"FontProvider %@ is expired.", v5);
      FSLog_Debug();
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100007920;
      v31[3] = &unk_100018AD0;
      v25 = v5;
      v32 = v25;
      [FSUserFontManager unregisterAndRemoveFontFilesForIdentifier:v25 completionHandler:v31, v5, *&v13, *&v17];
      [*(a1 + 32) warnAboutSuspendedFontProvider:v25 forExpiration:1 date:v20 withURLSchem:v18 immediately:0];
    }

    else if (v17 >= v16)
    {
      [FSUserFontManager suspendFontProvider:v5];
      v26 = +[NSUserDefaults standardUserDefaults];
      v27 = [v26 dictionaryForKey:@"warned"];
      v28 = [v27 objectForKey:v5];
      v29 = [v28 BOOLValue];

      if ((v29 & 1) == 0)
      {
        if (v13 <= v16 || v17 <= v16 + (v13 - v16) * 0.5)
        {
          v30 = [v6 objectForKey:@"url"];
          NSLog(@"FontProvider %@ hasn't run for %.1f %s (warn:%.1f)", v5, *&v17, "days", *&v16);
          [*(a1 + 32) recordSuspendedProvider:v5 url:v30 andScheme:v18 forDate:v20];
        }

        else
        {
          [*(a1 + 32) warnAboutSuspendedFontProvider:v5 forExpiration:0 date:v20 withURLSchem:v18 immediately:0];
        }
      }
    }

    else
    {
      [*(a1 + 32) resetWarnedForIdenntifier:v5];
    }
  }

  else
  {
    v21 = *(*(*(a1 + 40) + 8) + 40);
    if (!v21)
    {
      v22 = objc_opt_new();
      v23 = *(*(a1 + 40) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      v21 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v21 addObject:v5];
  }
}

uint64_t sub_100007920(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    return FSLog_Error();
  }

  return result;
}

id sub_100007968(void *a1)
{
  v15[0] = @"apps";
  v14 = [NSNumber numberWithUnsignedInteger:a1[4]];
  v16[0] = v14;
  v15[1] = @"apps_subscription";
  v13 = [NSNumber numberWithUnsignedInteger:a1[5]];
  v16[1] = v13;
  v15[2] = @"available";
  v2 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v16[2] = v2;
  v15[3] = @"installed";
  v3 = [NSNumber numberWithUnsignedInteger:a1[7]];
  v16[3] = v3;
  v15[4] = @"uninstalled";
  v4 = [NSNumber numberWithUnsignedInteger:a1[8]];
  v16[4] = v4;
  v15[5] = @"misses";
  v5 = [NSNumber numberWithUnsignedInteger:a1[9]];
  v16[5] = v5;
  v15[6] = @"resolved";
  v6 = [NSNumber numberWithUnsignedInteger:a1[10]];
  v16[6] = v6;
  v15[7] = @"warn_subscription";
  v7 = [NSNumber numberWithUnsignedInteger:a1[11]];
  v16[7] = v7;
  v15[8] = @"delete_subscription";
  v8 = [NSNumber numberWithUnsignedInteger:a1[12]];
  v16[8] = v8;
  v15[9] = @"profiles";
  v9 = [NSNumber numberWithUnsignedInteger:a1[13]];
  v16[9] = v9;
  v15[10] = @"mobile";
  v10 = [NSNumber numberWithUnsignedInteger:a1[14]];
  v16[10] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:11];

  return v11;
}

void sub_100007D3C(uint64_t a1)
{
  [*(a1 + 32) invalidateUserFonts];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"fontChanged" object:0 userInfo:*(a1 + 40)];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = FontProviderDidChangeDistributedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v4, 0, 0, 0);
}

uint64_t sub_100008004(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.fontservicesd.scheduledFontDeletion", 0);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return _objc_release_x1();
}

void sub_100008160(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"delete"];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = objc_opt_new();
  }

  LODWORD(v5) = *(a1 + 48);
  v6 = [NSDate dateWithTimeIntervalSinceNow:v5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ((sub_10000BAF8(v13, v9) & 1) != 0 || sub_10000BB04(v13))
        {
          [v4 setObject:v6 forKey:{v13, v14}];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [v2 setObject:v4 forKey:@"delete"];
  [v2 synchronize];
  CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication);
  [*(a1 + 40) setFontFilesDeletionTimer:*(a1 + 48)];
}

void sub_1000083C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  if (v3)
  {
    if (!*(a1 + 40))
    {

      dispatch_source_set_timer(v3, 0, 0xFFFFFFFFFFFFFFFFLL, 0xDF8475800uLL);
    }
  }

  else
  {
    v4 = [v2 scheduledFontDeletionQueue];
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4);

    v6 = *(a1 + 40);
    v7 = v6 >> 2;
    v8 = dispatch_time(0, 1000000000 * (v6 + (v6 >> 2)));
    dispatch_source_set_timer(v5, v8, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * v7);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100008530;
    v13[3] = &unk_100018880;
    v13[4] = *(a1 + 32);
    v9 = v5;
    v14 = v9;
    dispatch_source_set_event_handler(v9, v13);
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = v9;
    v12 = v9;

    dispatch_resume(v12);
  }
}

void sub_1000085C4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

id sub_100009140(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) mainHandlerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000921C;
  v8[3] = &unk_100018880;
  v9 = *(a1 + 40);
  v4 = v2;
  v10 = v4;
  dispatch_sync(v3, v8);

  v5 = v10;
  v6 = v4;

  return v4;
}

void sub_10000921C(uint64_t a1)
{
  v2 = +[FSUserFontManager userFontsInfo];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000092D4;
  v3[3] = &unk_100018B90;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_1000092D4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (sub_10000BB04(v8))
  {
    v6 = [v8 stringByDeletingLastPathComponent];
    v7 = [v6 lastPathComponent];

    if ([*(a1 + 32) containsObject:v7])
    {
      [*(a1 + 40) setObject:v5 forKey:v8];
    }
  }
}

intptr_t sub_100009380(void *a1)
{
  v2 = (*(a1[5] + 16))();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

void sub_100009490(uint64_t a1)
{
  if (qword_10001D8E8)
  {
    v2 = [qword_10001D8E8 objectForKeyedSubscript:*(a1 + 32)];
    if (v2)
    {
      v3 = v2;
      v4 = os_variant_has_internal_content() ? 1200.0 : 86400.0;
      [v3 timeIntervalSinceNow];
      v6 = -v5;

      if (v4 > v6)
      {
        return;
      }
    }
  }

  else
  {
    v7 = objc_opt_new();
    v8 = qword_10001D8E8;
    qword_10001D8E8 = v7;
  }

  if (!qword_10001D8F0)
  {
    v9 = objc_opt_new();
    v10 = qword_10001D8F0;
    qword_10001D8F0 = v9;
  }

  v18 = *(a1 + 32);
  FSLog_Debug();
  [qword_10001D8F0 addObject:{*(a1 + 32), v18}];
  v11 = *(a1 + 40);
  if (!v11[5])
  {
    v12 = [v11 assetHandlerQueue];
    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);

    v14 = dispatch_time(0, 600000000000);
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0x45D964B800uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100009674;
    handler[3] = &unk_100018688;
    handler[4] = *(a1 + 40);
    dispatch_source_set_event_handler(v13, handler);
    v15 = *(a1 + 40);
    v16 = *(v15 + 40);
    *(v15 + 40) = v13;
    v17 = v13;

    dispatch_resume(v17);
  }
}

void sub_100009674(uint64_t a1)
{
  v2 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.Font8"];
  [v2 returnTypes:1];
  if (![v2 queryMetaDataSync])
  {
    v15 = a1;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [v2 results];
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = [v8 assetId];
          if ([qword_10001D8F0 containsObject:v9])
          {
            v10 = [v8 getLocalUrl];
            v11 = +[NSDate now];
            [qword_10001D8E8 setObject:v11 forKeyedSubscript:v9];

            v14 = v9;
            FSLog_Debug();
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    a1 = v15;
  }

  [qword_10001D8F0 removeAllObjects];
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_1000099A0(uint64_t a1)
{
  +[FSUserFontManager knownFontProviders];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v1 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v38;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v38 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v37 + 1) + 8 * i);
        v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];
        if (!v6)
        {
          FSLog_Debug();
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_100009DC4;
          v36[3] = &unk_100018AD0;
          v36[4] = v5;
          [FSUserFontManager unregisterAndRemoveFontFilesForIdentifier:v5 completionHandler:v36, v5];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v2);
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v42[0] = @"issues";
  v42[1] = @"suspended";
  v42[2] = @"warned";
  v9 = [NSArray arrayWithObjects:v42 count:3];
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v7 dictionaryForKey:*(*(&v32 + 1) + 8 * j)];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 allKeys];
          [v8 addObjectsFromArray:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v11);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = [v8 allObjects];
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * k);
        v23 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v22 allowPlaceholder:0 error:0];
        if (!v23)
        {
          FSLog_Debug();
          v24 = [*(a1 + 32) mainHandlerQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100009E0C;
          block[3] = &unk_100018880;
          block[4] = *(a1 + 32);
          block[5] = v22;
          dispatch_async(v24, block);
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v41 count:16];
    }

    while (v19);
  }
}

uint64_t sub_100009DC4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    return FSLog_Error();
  }

  return result;
}

void sub_100009F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009F28(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"/var/mobile/%@", @"Library/UserFonts/UserFonts.plist"];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 fileExistsAtPath:v2];

    if (v4)
    {
      v5 = [NSURL fileURLWithPath:v2 isDirectory:0];
      v6 = [NSInputStream inputStreamWithURL:v5];

      [v6 open];
      v11 = 0;
      v7 = [NSPropertyListSerialization propertyListWithStream:v6 options:1 format:0 error:&v11];
      v8 = v11;
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v7;

      [v6 close];
      if (v8)
      {
        FSLog_Error();
      }
    }
  }
}

id sub_10000A108(void *a1)
{
  v2 = a1[5];
  v9[0] = a1[4];
  v8[0] = @"name";
  v8[1] = @"misses";
  v3 = [NSNumber numberWithUnsignedInteger:v2];
  v9[1] = v3;
  v8[2] = @"suggestions";
  v4 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v9[2] = v4;
  v8[3] = @"resolved";
  v5 = [NSNumber numberWithUnsignedInteger:a1[7]];
  v9[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

void sub_10000A9F4(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  v2 = *(*(a1 + 32) + 24);
  v3 = +[NSXPCConnection currentConnection];
  v4 = v3;
  if (v3)
  {
    [v3 auditToken];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v5 = [v2 filterUserFontInfoForAuditToken:&v13 withEnumerationCapability:1 withFilter:&stru_100018C70];

  v6 = objc_opt_new();
  [v6 setObject:v5 forKey:@"fontsInfo"];
  v7 = *(*(a1 + 32) + 24);
  v8 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v8;
  v9 = [v7 sandboxExtensionForEnumeration:&v13];
  if (v9)
  {
    [v6 setObject:v9 forKey:@"extension"];
  }

  v10 = *(*(a1 + 32) + 24);
  v11 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v11;
  v12 = [v10 sandboxExtensionForFontAssets:&v13];

  if (v12)
  {
    [v6 setObject:v12 forKey:@"extension.fontasset"];
  }

  (*(*(a1 + 40) + 16))();
}

BOOL sub_10000AB48(id a1, NSString *a2, NSDictionary *a3, BOOL *a4, BOOL *a5)
{
  v5 = [(NSDictionary *)a3 objectForKey:@"disabled", a4, a5];
  v6 = [v5 BOOLValue];

  return v6 ^ 1;
}

void sub_10000B294(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

void sub_10000B658(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_10000B684(uint64_t a1)
{
  NSLog(@"FSWebKit checkinForWebKitProcess connection invalidationHandler.");
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) webcontentProcessConnections];
    [v3 removeObject:v4];

    WeakRetained = v4;
  }
}

void sub_10000B74C(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v2 = +[NSXPCConnection currentConnection];
  v3 = v2;
  if (v2)
  {
    [v2 auditToken];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v4 = [*(a1 + 32) server];
  v5 = *(a1 + 96);
  v6 = *(a1 + 97);
  v7 = *(a1 + 98);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B88C;
  v12[3] = &unk_100018D68;
  v8 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v11[0] = v15;
  v11[1] = v16;
  v9 = *(a1 + 80);
  v10[0] = *(a1 + 64);
  v10[1] = v9;
  [v4 setupUserInstalledFontsFor:v11 withCapabilitiesFor:v10 hasEnumeration:v5 hasFontAccess:v6 isFontProvider:v7 processIdentifier:v8 options:0 compat:0 reply:v12];
}

void sub_10000B88C(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B91C;
  v4[3] = &unk_100018AA8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 userInstalledFontsInfo:a2 reply:v4];
}

void sub_10000B9E4(id a1)
{
  v4 = [NSURL fileURLWithPath:@"/var/mobile/Library/UserFonts/FontFiles/"];
  v1 = [v4 path];
  v2 = [v1 stringByAppendingString:@"/"];
  v3 = qword_10001D8F8;
  qword_10001D8F8 = v2;
}

void sub_10000BA68(id a1)
{
  v4 = [NSURL fileURLWithPath:@"/var/mobile/Library/UserFonts/FontAssets/"];
  v1 = [v4 path];
  v2 = [v1 stringByAppendingString:@"/"];
  v3 = qword_10001D908;
  qword_10001D908 = v2;
}

id sub_10000BB04(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"/private/"])
  {
    v2 = [v1 substringFromIndex:8];

    v1 = v2;
  }

  v3 = [v1 hasPrefix:@"/var/mobile/Library/UserFonts/FontAssets/"];

  return v3;
}

void sub_10000BC3C(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (string)
  {
    v5 = string;
    if (!strcmp(string, "com.apple.LaunchServices.applicationUnregistered"))
    {
      v6 = xpc_dictionary_get_value(v3, "UserInfo");
      v7 = v6;
      if (v6 && xpc_get_type(v6) == &_xpc_type_dictionary)
      {
        v17 = _CFXPCCreateCFObjectFromXPCObject();
        v8 = [v17 objectForKey:@"bundleIDs"];
        v9 = dispatch_semaphore_create(0);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        obj = v8;
        v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v22 + 1) + 8 * i);
              v20[0] = _NSConcreteStackBlock;
              v20[1] = 3221225472;
              v20[2] = sub_10000BF00;
              v20[3] = &unk_100018E38;
              v20[4] = v14;
              v15 = v9;
              v21 = v15;
              [FSUserFontManager unregisterAndRemoveFontFilesForIdentifier:v14 completionHandler:v20];
              dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
              v16 = [*(a1 + 32) mainHandlerQueue];
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_10000BF60;
              block[3] = &unk_100018880;
              block[4] = *(a1 + 32);
              block[5] = v14;
              dispatch_async(v16, block);
            }

            v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v11);
        }

        [*(a1 + 32) synchronizeFontProviders];
      }
    }

    else if (!strcmp(v5, "FontServicesDaemonCheckSubscriptionNotification"))
    {
      [*(a1 + 32) subscriptionSupportTimerHandler];
    }
  }
}

intptr_t sub_10000BF00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    FSLog_Debug();
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_10000BFB0(id a1)
{
  qword_10001D920 = dispatch_queue_create("com.apple.fontservicesd.assetHandler", 0);

  _objc_release_x1();
}

void sub_10000C12C(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (string)
  {
    v4 = string;
    if (!strcmp(string, "com.apple.MobileAsset.Font8.ma.cached-metadata-updated"))
    {
      v5 = [*(a1 + 32) assetHandlerQueue];
      v6 = v5;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000C278;
      block[3] = &unk_100018688;
      block[4] = *(a1 + 32);
      v7 = block;
      goto LABEL_7;
    }

    if (!strcmp(v4, "com.apple.MobileAsset.CoreTextAssets.ma.new-asset-installed") || !strcmp(v4, "com.apple.MobileAsset.CoreTextAssets.ma.cached-metadata-updated"))
    {
      v5 = [*(a1 + 32) assetHandlerQueue];
      v6 = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000C51C;
      v8[3] = &unk_100018688;
      v8[4] = *(a1 + 32);
      v7 = v8;
LABEL_7:
      dispatch_async(v5, v7);
    }
  }
}

void sub_10000C278(uint64_t a1)
{
  v2 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.Font8"];
  [v2 returnTypes:6];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C334;
  v4[3] = &unk_100018ED0;
  v5 = v2;
  v3 = v2;
  [v3 queryMetaData:v4];
  [*(a1 + 32) removeDeprecatedFontAsset];
}

void sub_10000C334(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = [*(a1 + 32) results];
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          if ([v7 state] == 3)
          {
            v8 = [v7 assetId];
            v10[0] = _NSConcreteStackBlock;
            v10[1] = 3221225472;
            v10[2] = sub_10000C4C0;
            v10[3] = &unk_100018EA8;
            v11 = v8;
            v9 = v8;
            [v7 purgeWithError:v10];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }
  }
}

uint64_t sub_10000C4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return FSLog_Error();
  }

  else
  {
    return FSLog_Debug();
  }
}

void sub_10000C51C(uint64_t a1)
{
  v2 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.CoreTextAssets"];
  [v2 addKeyValuePair:kFSFontAssetCompatibilityVersionKey with:@"1"];
  [v2 addKeyValuePair:@"type" with:@"FontAccess"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C5F8;
  v5[3] = &unk_100018EF8;
  v3 = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  [v4 queryMetaData:v5];
}

void sub_10000C5F8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = [NSMutableArray arrayWithCapacity:0];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [*(a1 + 32) results];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * v8) attributes];
          v10 = [v9 objectForKey:@"FontAccess"];

          if (v10)
          {
            [v3 addObject:v10];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [*(a1 + 40) setFontEnumerationProhibitedInfo:v3];
  }
}

void sub_10000C760(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity))
  {
    v3 = dispatch_get_global_queue(-2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C800;
    block[3] = &unk_100018688;
    block[4] = *(a1 + 32);
    dispatch_async(v3, block);
  }
}

void sub_10000C800(uint64_t a1)
{
  if ([*(a1 + 32) isUserFontInstalled])
  {
    v1 = objc_alloc_init(MADownloadOptions);
    [v1 setDiscretionary:1];
    [MAAsset startCatalogDownload:@"com.apple.MobileAsset.CoreTextAssets" options:v1 then:&stru_100018F18];
  }
}

id sub_10000C8B8(uint64_t a1, xpc_activity_t activity)
{
  result = xpc_activity_get_state(activity);
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 subscriptionSupportTimerHandler];
  }

  return result;
}

void sub_10000C970(id a1, BOOL a2)
{
  v2 = sub_10000BAEC();
  v4 = v2;
  v3 = FSEventStreamCreate(kCFAllocatorDefault, sub_10000CA3C, 0, [NSArray arrayWithObjects:&v4 count:1], 0xFFFFFFFFFFFFFFFFLL, 3.0, 0x11u);

  FSEventStreamSetDispatchQueue(v3, qword_10001D928);
  FSEventStreamStart(v3);
}

id sub_10000CA3C()
{
  FSLog_Debug();

  return [FSUserFontManager synchronizeFontAssets:&stru_100019060];
}

void sub_10000CBD8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = [*(a1 + 32) results];
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      v14 = v16;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          v9 = [v8 attributes];
          v10 = [v9 objectForKeyedSubscript:@"MaxFontCompatibilityVersion"];
          v11 = [v10 unsignedIntValue];

          if (v11)
          {
            if (v11 < *(a1 + 40))
            {
              v12 = [v8 assetId];
              v15[0] = _NSConcreteStackBlock;
              v15[1] = 3221225472;
              v16[0] = sub_10000CDAC;
              v16[1] = &unk_100018EA8;
              v17 = v12;
              v13 = v12;
              [v8 purgeWithError:v15];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v5);
    }
  }
}

uint64_t sub_10000CDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return FSLog_Error();
  }

  else
  {
    return FSLog_Debug();
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[FontServicesDaemon sharedDaemon];
  v2 = objc_autoreleasePoolPush();
  [v1 setupForXPCService];
  [v1 setupForScheduledFontDeletion];
  [v1 setupForDistributedNotifications];
  [v1 setupForAssetNotifications];
  [v1 setupForMonitoringFontAssets];
  [v1 setupForProfileFonts];
  [v1 setup];
  objc_autoreleasePoolPop(v2);
  [v1 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}