int main(int argc, const char **argv, const char **envp)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "CategoriesService startup requested", v6, 2u);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];
  objc_opt_new();
  objc_autoreleasePoolPop(v3);
  dispatch_main();
}

void sub_100001284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000012A0(uint64_t a1)
{
  if ((+[CTUtilities isClassCLocked]& 1) == 0)
  {
    v8 = [*(a1 + 32) indexVersionId];
    if ([v8 length])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v3 = [WeakRetained currentIndexVersionID];
      v4 = [v3 isEqualToString:v8];

      if ((v4 & 1) == 0)
      {
        v5 = [v8 copy];
        v6 = objc_loadWeakRetained((a1 + 40));
        [v6 setCurrentIndexVersionID:v5];

        v7 = +[NSDistributedNotificationCenter defaultCenter];
        [v7 postNotificationName:CTCategoriesDidChangeNotification object:0 userInfo:0];
      }
    }
  }
}

void sub_100001760(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = qword_100010DC0;
  if (os_log_type_enabled(qword_100010DC0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v12 = v2 != 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "transaction = %d", buf, 8u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000018B8;
  v7[3] = &unk_10000C3E8;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9 = v2;
  v10 = v5;
  v6 = v2;
  [Categories_Service _lookupGenreIDAndCounterpartIdentifiersInPlist:v4 withCompletionHandler:v7];
}

void sub_1000018B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100010DC0;
  if (os_log_type_enabled(qword_100010DC0, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2080;
    v12 = "[Categories_Service genreIDsAndCounterpartIdentifiersForInstalledBundleIDs:replyHandler:]_block_invoke";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "<%@>::replyHandler %s = %@", &v9, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100001B80(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = qword_100010DC0;
  if (os_log_type_enabled(qword_100010DC0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v14 = v2 != 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "transaction = %d", buf, 8u);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001CF0;
  v9[3] = &unk_10000C3E8;
  v10 = v6;
  v7 = *(a1 + 56);
  v11 = v2;
  v12 = v7;
  v8 = v2;
  [Categories_Service _lookupAppStoreUsing:v4 platform:v5 clientApplication:v10 withCompletionHandler:v9];
}

void sub_100001CF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100010DC0;
  if (os_log_type_enabled(qword_100010DC0, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2080;
    v12 = "[Categories_Service lookupAppStoreForBundleIDs:platform:replyHandler:]_block_invoke";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "<%@>::replyHandler %s = %@", &v9, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100001E34(id a1)
{
  v3[0] = @"6000";
  v3[1] = @"6001";
  v4[0] = CTCategoryIdentifierProductivity;
  v4[1] = CTCategoryIdentifierReadingAndReference;
  v3[2] = @"6002";
  v3[3] = @"6003";
  v4[2] = CTCategoryIdentifierUtilities;
  v4[3] = CTCategoryIdentifierTravel;
  v3[4] = @"6004";
  v3[5] = @"6005";
  v4[4] = CTCategoryIdentifierEntertainment;
  v4[5] = CTCategoryIdentifierSocialNetworking;
  v3[6] = @"6006";
  v3[7] = @"6007";
  v4[6] = CTCategoryIdentifierReadingAndReference;
  v4[7] = CTCategoryIdentifierProductivity;
  v3[8] = @"6008";
  v3[9] = @"6009";
  v4[8] = CTCategoryIdentifierCreativity;
  v4[9] = CTCategoryIdentifierReadingAndReference;
  v3[10] = @"6010";
  v3[11] = @"6011";
  v4[10] = CTCategoryIdentifierTravel;
  v4[11] = CTCategoryIdentifierEntertainment;
  v3[12] = @"6012";
  v3[13] = @"6013";
  v4[12] = CTCategoryIdentifierOther;
  v4[13] = CTCategoryIdentifierHealthAndFitness;
  v3[14] = @"6014";
  v3[15] = @"6015";
  v4[14] = CTCategoryIdentifierGames;
  v4[15] = CTCategoryIdentifierProductivity;
  v3[16] = @"6016";
  v3[17] = @"6017";
  v4[16] = CTCategoryIdentifierEntertainment;
  v4[17] = CTCategoryIdentifierEducation;
  v3[18] = @"6018";
  v3[19] = @"6020";
  v4[18] = CTCategoryIdentifierReadingAndReference;
  v4[19] = CTCategoryIdentifierHealthAndFitness;
  v3[20] = @"6021";
  v3[21] = @"6022";
  v4[20] = CTCategoryIdentifierReadingAndReference;
  v4[21] = CTCategoryIdentifierReadingAndReference;
  v3[22] = @"6023";
  v3[23] = @"6024";
  v4[22] = CTCategoryIdentifierShoppingAndFood;
  v4[23] = CTCategoryIdentifierShoppingAndFood;
  v3[24] = @"6025";
  v3[25] = @"6026";
  v4[24] = CTCategoryIdentifierGames;
  v4[25] = CTCategoryIdentifierProductivity;
  v3[26] = @"6027";
  v4[26] = CTCategoryIdentifierCreativity;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:27];
  v2 = qword_100010DC8;
  qword_100010DC8 = v1;
}

void sub_1000020CC(id a1)
{
  v3[0] = @"12001";
  v3[1] = @"12002";
  v4[0] = CTCategoryIdentifierProductivity;
  v4[1] = CTCategoryIdentifierProductivity;
  v3[2] = @"12003";
  v3[3] = @"12004";
  v4[2] = CTCategoryIdentifierEducation;
  v4[3] = CTCategoryIdentifierEntertainment;
  v3[4] = @"12005";
  v3[5] = @"12006";
  v4[4] = CTCategoryIdentifierProductivity;
  v4[5] = CTCategoryIdentifierGames;
  v3[6] = @"12007";
  v3[7] = @"12008";
  v4[6] = CTCategoryIdentifierHealthAndFitness;
  v4[7] = CTCategoryIdentifierOther;
  v3[8] = @"12010";
  v3[9] = @"12011";
  v4[8] = CTCategoryIdentifierHealthAndFitness;
  v4[9] = CTCategoryIdentifierEntertainment;
  v3[10] = @"12012";
  v3[11] = @"12013";
  v4[10] = CTCategoryIdentifierReadingAndReference;
  v4[11] = CTCategoryIdentifierCreativity;
  v3[12] = @"12014";
  v3[13] = @"12015";
  v4[12] = CTCategoryIdentifierProductivity;
  v4[13] = CTCategoryIdentifierReadingAndReference;
  v3[14] = @"12016";
  v3[15] = @"12017";
  v4[14] = CTCategoryIdentifierSocialNetworking;
  v4[15] = CTCategoryIdentifierEntertainment;
  v3[16] = @"12018";
  v3[17] = @"12019";
  v4[16] = CTCategoryIdentifierTravel;
  v4[17] = CTCategoryIdentifierUtilities;
  v3[18] = @"12020";
  v3[19] = @"12021";
  v4[18] = CTCategoryIdentifierCreativity;
  v4[19] = CTCategoryIdentifierReadingAndReference;
  v3[20] = @"12022";
  v4[20] = CTCategoryIdentifierCreativity;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:21];
  v2 = qword_100010DD8;
  qword_100010DD8 = v1;
}

void sub_1000023CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000023E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v22 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v22];
  v5 = v22;
  *(*(*(a1 + 40) + 8) + 24) = v4 != 0;
  v6 = v4;
  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v21 = v5;
    v20 = [v6 iTunesMetadata];
    v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v20 genreIdentifier]);
    v13 = [v12 stringValue];

    v14 = [*(a1 + 48) _AppStoreIDToDHIDCategoriesMap];
    v11 = [v14 objectForKey:v13];

    v9 = [v7 counterpartIdentifiers];
    v8 = [CTCategory parentAppBundleIdentifierForAppRecord:v7];
    if (!v11)
    {
      v11 = CTCategoryIdentifierOther;
    }

    if (v8)
    {
      v25[0] = v8;
      v25[1] = v3;
      v15 = v25;
      v16 = 2;
    }

    else
    {
      v24 = v3;
      v15 = &v24;
      v16 = 1;
    }

    v17 = [NSArray arrayWithObjects:v15 count:v16];
    v23 = v11;
    v18 = [NSArray arrayWithObjects:&v23 count:1];
    v10 = [v18 arrayByAddingObjectsFromArray:v17];

    if (v9)
    {
      v19 = [v10 arrayByAddingObjectsFromArray:v9];

      v10 = v19;
    }

    v5 = v21;
    [*(a1 + 32) setObject:v10 forKey:v3];
  }
}

uint64_t sub_100002A98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002AB0(void *a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = qword_100010DC0;
  if (os_log_type_enabled(qword_100010DC0, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    *buf = 138478083;
    v53 = v11;
    v54 = 2112;
    v55 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_lookupAppStoreUsing:%{private}@ == %@", buf, 0x16u);
  }

  v12 = [v7 allValues];
  v13 = [v12 count];

  if (v13)
  {
    v42 = v9;
    v43 = a4;
    v46 = a1;
    v44 = v8;
    v45 = v7;
    v14 = [v7 allValues];
    v15 = [v14 firstObject];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v47 objects:v58 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v48;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v48 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v47 + 1) + 8 * i);
          v22 = [v21 genreIDs];
          if ([v22 count])
          {
            v23 = +[Categories_Service _AppStoreIDToDHIDCategoriesMap];
            v24 = [v22 firstObject];
            v25 = [v23 objectForKey:v24];

            if (!v25)
            {
              v26 = +[Categories_Service _macAppStoreIDToDHIDCategoriesMap];
              v27 = [v22 firstObject];
              v25 = [v26 objectForKey:v27];
            }

            v28 = qword_100010DC0;
            if (os_log_type_enabled(qword_100010DC0, OS_LOG_TYPE_INFO))
            {
              v29 = v28;
              v30 = [v21 bundleID];
              v31 = [v22 firstObject];
              *buf = 138478339;
              v53 = v30;
              v54 = 2112;
              v55 = v31;
              v56 = 2112;
              v57 = v25;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "itunes.apple.com AppStore category: %{private}@ = %@ -> %@", buf, 0x20u);
            }

            if (v25)
            {
              v32 = v46[5];
              v51[0] = v25;
              v33 = [v21 bundleID];
              v51[1] = v33;
              v34 = [NSArray arrayWithObjects:v51 count:2];
              v35 = [v21 bundleID];
              [v32 setObject:v34 forKey:v35];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v47 objects:v58 count:16];
      }

      while (v18);
    }

    v8 = v44;
    v7 = v45;
    a1 = v46;
    a4 = v43;
    v9 = v42;
  }

  objc_autoreleasePoolPop(v9);
  if (a4)
  {
    v36 = [v8 objectForKey:@"CTStorePlatformiOS"];
    v37 = *(a1[7] + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;

    v39 = qword_100010DC0;
    if (os_log_type_enabled(qword_100010DC0, OS_LOG_TYPE_INFO))
    {
      v40 = *(*(a1[7] + 8) + 40);
      *buf = 138412290;
      v53 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Done _lookupAppStoreUsing: error = %@", buf, 0xCu);
    }

    if (!*(*(a1[7] + 8) + 40))
    {
      v41 = a1[5];
    }

    (*(a1[6] + 16))();
  }
}

void sub_100002EF0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v7 allKeys];
  v9 = [NSSet setWithArray:v8];
  [v5 minusSet:v9];

  v10 = [*(*(*(a1 + 48) + 8) + 40) count];
  v11 = *(*(a1 + 40) + 16);
  if (v10)
  {
    v11();

    v12 = [*(*(*(a1 + 48) + 8) + 40) allObjects];
    v13 = [v12 componentsJoinedByString:{@", "}];

    v14 = *(a1 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000030A0;
    v17[3] = &unk_10000C538;
    v16 = *(a1 + 40);
    v15 = v16;
    v20 = v16;
    v18 = *(a1 + 32);
    v19 = v13;
    v7 = v13;
    [v14 lookupAppWithBundleIDs:v7 deviceFamily:1 completionHandler:v17];

    v6 = v20;
  }

  else
  {
    v11();
  }
}

void sub_1000030A0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v7 allKeys];
  v9 = [NSSet setWithArray:v8];
  [v5 minusSet:v9];

  v10 = [*(*(*(a1 + 56) + 8) + 40) count];
  v11 = *(*(a1 + 48) + 16);
  if (v10)
  {
    v11();

    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000031F0;
    v14[3] = &unk_10000C510;
    v15 = *(a1 + 48);
    [v12 lookupAppWithBundleIDs:v13 deviceFamily:8 completionHandler:v14];
    v7 = v15;
  }

  else
  {
    v11();
  }
}

void sub_1000039F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100003AFC(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138477827;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Corrupt result record: %{private}@", buf, 0xCu);
}

void sub_100003B48(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138477827;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Successfully resolved search result: %{private}@", buf, 0xCu);
}

void sub_100003B94(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138477827;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not resolve app from search result record: %{private}@", buf, 0xCu);
}

void sub_1000040B0(id a1)
{
  qword_100010DE8 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000452C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [*(a1 + 32) mutableCopy];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100004744;
  v28[3] = &unk_10000C5C0;
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v29 = v5;
  v30 = v9;
  v11 = v8;
  v31 = v11;
  v12 = v7;
  v32 = v12;
  v13 = v5;
  [v10 enumerateKeysAndObjectsUsingBlock:v28];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100004900;
  v24[3] = &unk_10000C5E8;
  v14 = *(a1 + 48);
  v25 = v12;
  v26 = v14;
  v15 = v11;
  v27 = v15;
  v16 = v12;
  [v13 enumerateKeysAndObjectsUsingBlock:v24];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100004AA0;
  v21[3] = &unk_10000C610;
  v17 = *(a1 + 48);
  v22 = v15;
  v23 = v17;
  v18 = v15;
  [v6 enumerateKeysAndObjectsUsingBlock:v21];
  v19 = *(a1 + 56);
  v20 = [v16 copy];
  (*(v19 + 16))(v19, v20, v6);
}

void sub_100004744(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = *(a1 + 40);
          v15 = [objc_opt_class() resultByBundleID];
          v16 = [v13 bundleID];
          [v15 setObject:v13 forKey:v16];

          v17 = *(a1 + 48);
          v18 = [v13 bundleID];
          [v17 removeObject:v18];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v19 = [v8 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v19 = [v6 copy];
  }

  v20 = v19;
  [*(a1 + 56) setObject:v19 forKeyedSubscript:v5];
}

void sub_100004900(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v7)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = *(a1 + 40);
          v15 = [objc_opt_class() resultByBundleID];
          v16 = [v13 bundleID];
          [v15 setObject:v13 forKey:v16];

          v17 = *(a1 + 48);
          v18 = [v13 bundleID];
          [v17 removeObject:v18];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
  }
}

void sub_100004AA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 userInfo];
  v7 = [v6 objectForKeyedSubscript:CTErrorKeyHTTPResponse];

  if ([v7 statusCode] == 502 || objc_msgSend(v7, "statusCode") == 503)
  {
    v18 = v7;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "iTunes server is overloaded. Caching empty results for: %{public}@", buf, 0xCu);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          v15 = [[CTAppStoreSearchResult alloc] initWithBundleID:v14 platform:v5];
          v16 = *(a1 + 40);
          v17 = [objc_opt_class() resultByBundleID];
          [v17 setObject:v15 forKey:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v7 = v18;
  }
}

void sub_100005258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 256), 8);
  _Block_object_dispose((v39 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000052D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000052E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v20 = 138477827;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "STORELOOKUP END: %{private}@", &v20, 0xCu);
  }

  v11 = v8;
  if ([v11 statusCode] == 200)
  {
    v12 = *(*(a1 + 56) + 8);
    v13 = v7;
    v14 = *(v12 + 40);
    *(v12 + 40) = v13;
LABEL_8:

    goto LABEL_9;
  }

  v15 = *(*(*(*(a1 + 64) + 8) + 40) + 8);
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_100005744(a1, v15);
  if (!v9)
  {
LABEL_7:
    v14 = objc_opt_new();
    [v14 setObject:v11 forKey:CTErrorKeyHTTPResponse];
    [v14 setObject:v7 forKey:CTErrorKeyHTTPResponseData];
    v16 = [NSError alloc];
    v17 = [v16 initWithDomain:CTErrorDomain code:-2001 userInfo:v14];
    v18 = *(*(a1 + 72) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    goto LABEL_8;
  }

LABEL_9:
  if (!--*(*(*(a1 + 80) + 8) + 24))
  {
    [*(a1 + 40) handleSearchResultsWithTaskData:*(*(*(a1 + 56) + 8) + 40) platform:*(*(*(a1 + 88) + 8) + 40) error:*(*(*(a1 + 72) + 8) + 40) completionHandler:*(a1 + 48)];
  }
}

void sub_100005744(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138477827;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "STORELOOKUP LOOKUP FAILED: %{private}@", &v3, 0xCu);
}

void sub_1000057E8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_lookupAppStoreUsing: NETWORK UNREACHABLE : %@", &v2, 0xCu);
}