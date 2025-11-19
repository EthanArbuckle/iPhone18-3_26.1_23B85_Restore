void sub_10006B0E8(uint64_t a1)
{
  v2 = +[BDSBookWidgetInfoMO fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"%K == %@", @"cloudAssetType", *(a1 + 32)];
  [v2 setPredicate:v3];

  v15 = @"assetID";
  v4 = [NSArray arrayWithObjects:&v15 count:1];
  [v2 setPropertiesToFetch:v4];

  v5 = [*(a1 + 40) context];
  v14 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v14];
  v7 = v14;

  if (v6)
  {
    v8 = [v6 valueForKey:@"assetID"];
    v9 = [NSSet setWithArray:v8];

    v10 = objc_retainBlock(*(a1 + 48));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v9);
    }
  }

  else
  {
    v12 = sub_10000DE28();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2EAC((a1 + 32));
    }

    v13 = objc_retainBlock(*(a1 + 48));
    v9 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0);
    }
  }
}

void sub_10006B430(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000DE28();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C2F18();
  }

  [*(a1 + 32) setBookWidgetInfoOnly:v3 completion:*(a1 + 40)];
}

void sub_10006B650(uint64_t a1)
{
  v1 = [*(a1 + 32) valueForKey:@"assetID"];
  v2 = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", v1];
  v3 = [[NSFetchRequest alloc] initWithEntityName:@"BCReadingNowDetail"];
  v45 = v2;
  [v3 setPredicate:v2];
  v68 = @"assetID";
  v4 = [NSArray arrayWithObjects:&v68 count:1];
  [v3 setPropertiesToFetch:v4];

  v61 = 0;
  v44 = v3;
  v5 = [v3 execute:&v61];
  v47 = v61;
  v6 = sub_10000DE28();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C2F8C();
  }

  v7 = +[NSMutableDictionary dictionary];
  if ([v5 count])
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v58;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v58 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v57 + 1) + 8 * i);
          v14 = [v13 assetID];
          [v7 setObject:v13 forKeyedSubscript:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v10);
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_16;
    }

    v8 = sub_10000DE28();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3000();
    }
  }

LABEL_16:
  v43 = v5;
  v46 = v1;
  v15 = [*(a1 + 40) ubiquityManager];
  v16 = [v15 isEnabled];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = *(a1 + 32);
  v17 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v54;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v54 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v53 + 1) + 8 * j);
        v22 = [v21 cloudAssetType];
        v23 = [v22 isEqualToString:@"SideloadedUbiquity"];

        if (v16 & 1 | ((v23 & 1) == 0))
        {
          v24 = [v21 insertMatchingManagedObjectIntoContext:*(a1 + 48)];
          v25 = [v21 assetID];
          v26 = [v7 objectForKeyedSubscript:v25];
          [v24 setReadingNowDetail:v26];

          v27 = [v24 readingNowDetail];

          v28 = sub_10000DE28();
          v29 = v28;
          if (v27)
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v48 = [v24 assetID];
              v49 = [v7 objectForKeyedSubscript:v25];
              v30 = [v49 identifier];
              *buf = 138412546;
              v63 = v48;
              v64 = 2112;
              v65 = v30;
              v31 = v30;
              _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "BDSBookWidgetInfoMO %@ linked to %@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v32 = [v24 assetID];
            *buf = 138412290;
            v63 = v32;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "BDSBookWidgetInfoMO %@ has NO readingNowDetail", buf, 0xCu);
          }
        }

        else
        {
          v24 = sub_10000DE28();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v63 = v21;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Ignoring donated info since Ubiquity is turned off: %@", buf, 0xCu);
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v18);
  }

  v33 = *(a1 + 48);
  v52 = v47;
  v34 = [v33 save:&v52];
  v35 = v52;

  if (v34)
  {

    v36 = sub_10000DE28();
    v38 = v45;
    v37 = v46;
    v39 = v44;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [*(a1 + 32) count];
      *buf = 134217984;
      v63 = v40;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Creation/Update of %lu WidgetInfos succeeded.", buf, 0xCu);
    }

    v35 = 0;
  }

  else
  {
    v36 = sub_10000DE28();
    v38 = v45;
    v37 = v46;
    v39 = v44;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3068();
    }
  }

  v41 = objc_retainBlock(*(a1 + 56));
  v42 = v41;
  if (v41)
  {
    (*(v41 + 2))(v41, v35);
  }
}

uint64_t sub_10006C248(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006C260(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(*(*(a1 + 56) + 8) + 40) addEntriesFromDictionary:a2];
  }

  else
  {
    v6 = sub_10000DE28();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C30D0(a1, v5, v6);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10006C2EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(*(*(a1 + 48) + 8) + 40) addEntriesFromDictionary:a2];
  }

  else
  {
    v6 = sub_10000DE28();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C31A4(a1);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10006C378(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v19 = @"StoreAudiobook";
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [v7 assetID];
        if (v8)
        {
          v9 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v8];
          v10 = v9;
          if (v9)
          {
            v11 = [v9 name];
            [v7 setTitle:v11];

            v12 = [v10 artworkURL];
            [v7 setCoverURL:v12];

            [v7 setIsExplicit:{objc_msgSend(v10, "isExplicit")}];
            if ([v10 isBook])
            {
              v13 = [v10 pageProgressionDirection];
              if (v13)
              {
                v14 = [v10 pageProgressionDirection];
                [v7 setPageProgressionDirection:v14];
              }

              else
              {
                [v7 setPageProgressionDirection:@"ltr"];
              }
            }

            v15 = [v7 cloudAssetType];

            if (!v15)
            {
              if ([v10 isBook])
              {
                v16 = @"StoreEbook";
              }

              else
              {
                v16 = v19;
              }

              [v7 setCloudAssetType:v16];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = objc_retainBlock(*(a1 + 40));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, *(a1 + 32));
  }
}

void sub_10006C6E8(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"BDSBookWidgetInfoMO"];
  v3 = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = *(a1 + 40);
  v25 = 0;
  v19 = v2;
  v5 = [v4 executeFetchRequest:v2 error:&v25];
  v18 = v25;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = sub_10000DE28();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing BDSBookWidgetInfoMO: %@", buf, 0xCu);
        }

        [*(a1 + 40) deleteObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v8);
  }

  v13 = *(a1 + 40);
  v20 = 0;
  [v13 save:&v20];
  v14 = v20;
  if (v14)
  {
    v15 = sub_10000DE28();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3210((a1 + 32));
    }
  }

  v16 = objc_retainBlock(*(a1 + 48));
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, v14);
  }
}

void sub_10006CA44(id *a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [a1[4] allAssetIDs];
  v5 = [NSSet setWithArray:v4];

  [v3 minusSet:v5];
  if ([v3 count])
  {
    v6 = a1[5];
    v7 = [v3 allObjects];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = nullsub_12;
    v23[3] = &unk_10023F6F8;
    v24 = a1[6];
    [v6 removeBookWidgetInfosForAssetIDs:v7 completion:v23];
  }

  if ([v5 count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
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

          v14 = [a1[4] ubiquityMetadataForAssetID:*(*(&v19 + 1) + 8 * v13)];
          v15 = [a1[5] _bookWidgetInfoFromUbiquityMetadata:v14];
          [v8 addObject:v15];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v11);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = nullsub_13;
    v17[3] = &unk_10023F6F8;
    v16 = a1[5];
    v18 = a1[6];
    [v16 setBookWidgetInfoOnly:v8 completion:v17];
  }
}

const __CFString *sub_10006E070(void *a1)
{
  v1 = a1;
  if ([@"pdf" caseInsensitiveCompare:v1])
  {
    if ([@"epub" caseInsensitiveCompare:v1] && objc_msgSend(@"ibooks", "caseInsensitiveCompare:", v1))
    {
      if ([@"m4a" caseInsensitiveCompare:v1] && objc_msgSend(@"m4b", "caseInsensitiveCompare:", v1) && objc_msgSend(@"m4p", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aa", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aax", "caseInsensitiveCompare:", v1) && objc_msgSend(@"mp3", "caseInsensitiveCompare:", v1) && objc_msgSend(@"mp4", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aac", "caseInsensitiveCompare:", v1) && objc_msgSend(@"adts", "caseInsensitiveCompare:", v1) && objc_msgSend(@"ac3", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aif", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aiff", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aifc", "caseInsensitiveCompare:", v1) && objc_msgSend(@"caf", "caseInsensitiveCompare:", v1) && objc_msgSend(@"snd", "caseInsensitiveCompare:", v1) && objc_msgSend(@"au", "caseInsensitiveCompare:", v1) && objc_msgSend(@"sd2", "caseInsensitiveCompare:", v1) && objc_msgSend(@"wav", "caseInsensitiveCompare:", v1))
      {
        v2 = @"LibraryContentAssetTypeUnknown";
      }

      else
      {
        v2 = @"AssetTypeAudiobook";
      }
    }

    else
    {
      v2 = @"AssetTypeEbook";
    }
  }

  else
  {
    v2 = @"AssetTypePDF";
  }

  return v2;
}

void sub_10006E980(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_10006EAF4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_10006F350(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

uint64_t sub_10006FA44(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___BCAnnotationRange__length;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___BCAnnotationRange__length;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    while (1)
    {
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___BCAnnotationRange__location;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___BCAnnotationRange__location;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10007142C(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_30;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(BCProtoAnnotation);
          [a1 addAnnotation:v16];
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !sub_100072DD0(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 24;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
LABEL_30:
          v16 = *&a1[v15];
          *&a1[v15] = v14;
LABEL_31:

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100072DD0(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v93[0]) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v93[0] & 0x7F) << v6;
      if ((v93[0] & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v93[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v90 = [a2 data];
          [v90 getBytes:v93 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v93[0];
        v88 = 8;
        goto LABEL_171;
      case 2u:
        v19 = PBReaderReadString();
        v20 = 72;
        goto LABEL_120;
      case 3u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 204) |= 0x200u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v93[0] & 0x7F) << v36;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_139;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_139:
        v81 = 200;
        goto LABEL_152;
      case 4u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 204) |= 0x400u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v93[0] & 0x7F) << v53;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_145;
          }
        }

        v42 = (v55 != 0) & ~[a2 hasError];
LABEL_145:
        v81 = 201;
        goto LABEL_152;
      case 5u:
        v19 = PBReaderReadString();
        v20 = 96;
        goto LABEL_120;
      case 6u:
        v93[0] = 0;
        v45 = [a2 position] + 8;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
        {
          v89 = [a2 data];
          [v89 getBytes:v93 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v93[0];
        v88 = 24;
        goto LABEL_171;
      case 7u:
        v19 = PBReaderReadString();
        v20 = 104;
        goto LABEL_120;
      case 8u:
        v19 = PBReaderReadString();
        v20 = 160;
        goto LABEL_120;
      case 9u:
        v19 = PBReaderReadString();
        v20 = 168;
        goto LABEL_120;
      case 0xAu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 204) |= 0x80u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v93[0] & 0x7F) << v59;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_149;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v61;
        }

LABEL_149:
        v80 = 184;
        goto LABEL_157;
      case 0xBu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 204) |= 0x100u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v93[0] & 0x7F) << v28;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_137;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_137:
        v80 = 188;
        goto LABEL_157;
      case 0xCu:
        v19 = PBReaderReadString();
        v20 = 192;
        goto LABEL_120;
      case 0xDu:
        v19 = PBReaderReadString();
        v20 = 112;
        goto LABEL_120;
      case 0xEu:
        v19 = PBReaderReadString();
        v20 = 40;
        goto LABEL_120;
      case 0xFu:
        v19 = PBReaderReadString();
        v20 = 48;
        goto LABEL_120;
      case 0x10u:
        v19 = PBReaderReadString();
        v20 = 56;
        goto LABEL_120;
      case 0x11u:
        v19 = PBReaderReadString();
        v20 = 64;
        goto LABEL_120;
      case 0x12u:
        *(a1 + 204) |= 2u;
        v93[0] = 0;
        v65 = [a2 position] + 8;
        if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 8, v66 <= objc_msgSend(a2, "length")))
        {
          v91 = [a2 data];
          [v91 getBytes:v93 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v93[0];
        v88 = 32;
        goto LABEL_171;
      case 0x13u:
        v16 = objc_alloc_init(BCAnnotationRange);
        objc_storeStrong((a1 + 176), v16);
        v93[0] = 0;
        v93[1] = 0;
        if (PBReaderPlaceMark() && sub_10006FA44(v16, a2))
        {
          PBReaderRecallMark();

LABEL_172:
          v4 = a2;
          continue;
        }

        return 0;
      case 0x14u:
        *(a1 + 204) |= 0x40u;
        LODWORD(v93[0]) = 0;
        v34 = [a2 position] + 4;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 4, v35 <= objc_msgSend(a2, "length")))
        {
          v85 = [a2 data];
          [v85 getBytes:v93 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v83 = v93[0];
        v84 = 156;
        goto LABEL_162;
      case 0x15u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 204) |= 0x800u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v93[0] & 0x7F) << v67;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_151;
          }
        }

        v42 = (v69 != 0) & ~[a2 hasError];
LABEL_151:
        v81 = 202;
LABEL_152:
        *(a1 + v81) = v42;
        goto LABEL_172;
      case 0x16u:
        *(a1 + 204) |= 0x20u;
        LODWORD(v93[0]) = 0;
        v17 = [a2 position] + 4;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:v93 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v83 = v93[0];
        v84 = 152;
LABEL_162:
        *(a1 + v84) = v83;
        goto LABEL_172;
      case 0x17u:
        v19 = PBReaderReadString();
        v20 = 80;
        goto LABEL_120;
      case 0x18u:
        v19 = PBReaderReadString();
        v20 = 88;
        goto LABEL_120;
      case 0x1Au:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 204) |= 4u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v93[0] & 0x7F) << v47;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_143;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v49;
        }

LABEL_143:
        v80 = 120;
        goto LABEL_157;
      case 0x1Bu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 204) |= 8u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v93[0] & 0x7F) << v21;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_133;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_133:
        v80 = 124;
        goto LABEL_157;
      case 0x1Cu:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 204) |= 0x10u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v93[0] & 0x7F) << v74;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_156;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v76;
        }

LABEL_156:
        v80 = 128;
LABEL_157:
        *(a1 + v80) = v27;
        goto LABEL_172;
      case 0x1Du:
        v19 = PBReaderReadString();
        v20 = 136;
        goto LABEL_120;
      case 0x1Eu:
        v19 = PBReaderReadData();
        v20 = 144;
LABEL_120:
        v73 = *(a1 + v20);
        *(a1 + v20) = v19;

        goto LABEL_172;
      case 0x1Fu:
        *(a1 + 204) |= 1u;
        v93[0] = 0;
        v43 = [a2 position] + 8;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
        {
          v86 = [a2 data];
          [v86 getBytes:v93 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v93[0];
        v88 = 16;
LABEL_171:
        *(a1 + v88) = v87;
        goto LABEL_172;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_172;
    }
  }
}

void sub_100075F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100075F78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchLatestCompletion:&stru_100241C50];
}

void sub_100075FC0(id a1)
{
  v1 = sub_10000DC90();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C37A0();
  }
}

void sub_100076004(id a1)
{
  v1 = sub_10000DC90();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C37D4();
  }
}

void sub_1000761A0(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"BCCloudSyncVersions"];
  [v2 setReturnsObjectsAsFaults:0];
  [v2 setFetchLimit:1];
  v3 = [NSPredicate predicateWithFormat:@"dataType == %@", @"NBAssetDetailSyncVersions"];
  [v2 setPredicate:v3];

  v4 = *(a1 + 32);
  v28 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v28];
  v6 = v28;
  if (v6)
  {
    v7 = sub_10000DC90();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3808(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = [v5 firstObject];
  if (!v14)
  {
    v14 = [NSEntityDescription insertNewObjectForEntityForName:@"BCCloudSyncVersions" inManagedObjectContext:*(a1 + 32)];
    v15 = [@"NBAssetDetailSyncVersions" copy];
    [v14 setDataType:v15];
  }

  (*(*(a1 + 40) + 16))();
  if ([*(a1 + 32) hasChanges])
  {
    v16 = *(a1 + 32);
    v27 = v6;
    [v16 save:&v27];
    v17 = v27;

    if (v17)
    {
      v18 = sub_10000DC90();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1001C3808(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }
  }

  else
  {
    v17 = v6;
  }

  v25 = objc_retainBlock(*(a1 + 48));
  v26 = v25;
  if (v25)
  {
    (*(v25 + 2))(v25);
  }
}

void sub_100076510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10007652C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchLatestDidFinish];

  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

void sub_100076688(uint64_t a1)
{
  v2 = sub_10000DC90();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BDSNBController fetchLatest", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && ([WeakRetained fetching] & 1) == 0)
  {
    [v4 setFetching:1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000767E4;
    v7[3] = &unk_100241D10;
    objc_copyWeak(&v9, (a1 + 40));
    v8 = *(a1 + 32);
    [v4 _fetchCloudSyncVersions:v7 completion:&stru_100241D30];

    objc_destroyWeak(&v9);
  }

  else
  {
    v5 = objc_retainBlock(*(a1 + 32));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5);
    }
  }
}

void sub_1000767E4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [v3 mutableCopy];
    v7 = [v5 fetchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100076918;
    block[3] = &unk_100240228;
    objc_copyWeak(&v14, (a1 + 40));
    v12 = v6;
    v13 = *(a1 + 32);
    v8 = v6;
    dispatch_async(v7, block);

    objc_destroyWeak(&v14);
  }

  else
  {
    v9 = objc_retainBlock(*(a1 + 32));
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }
}

void sub_100076918(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _fq_fetchSince:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v3 = objc_retainBlock(*(a1 + 40));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }
  }
}

void sub_100076BD8(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = sub_10000DC90();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3874(a1, v6, v8);
    }
  }

  else if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C3970(a1, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001C3900(a1, v8, v9, v10, v11, v12, v13, v14);
  }
}

void sub_100077288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000772AC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, char a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained fetchQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000773F0;
  v18[3] = &unk_100241D80;
  objc_copyWeak(&v23, (a1 + 40));
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v24 = a6;
  v22 = *(a1 + 32);
  v15 = v12;
  v16 = v11;
  v17 = v10;
  dispatch_async(v14, v18);

  objc_destroyWeak(&v23);
}

void sub_1000773F0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    v15 = a1;
    v2 = sub_10000DC90();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C3A84(a1, v2);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = a1[4];
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v4)
    {
      v5 = *v23;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v23 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v22 + 1) + 8 * i);
          objc_opt_class();
          v8 = BUDynamicCast();
          if ([v8 isAudiobook])
          {
            v9 = [v8 assetID];
            if (BUIsStoreBookAssetID())
            {
              [WeakRetained _updateBookmarkTimeFromAssetDetail:v8];
            }

            else
            {
              v11 = sub_10000DC90();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v27 = v9;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BDSNBController skipping non-store audiobook assetID: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v9 = sub_10000DC90();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = [v8 assetID];
              *buf = 138412290;
              v27 = v10;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BDSNBController skipping assetDetail without datePlaybackTimeUpdated for assetID: %@", buf, 0xCu);
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v4);
    }

    v12 = v15[6];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100077730;
    v17[3] = &unk_100241470;
    objc_copyWeak(&v20, v15 + 8);
    v21 = *(v15 + 72);
    v18 = v15[6];
    v19 = v15[7];
    [WeakRetained _archiveCloudSyncVersions:v12 completion:v17];

    objc_destroyWeak(&v20);
  }

  else
  {
    v13 = objc_retainBlock(a1[7]);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

void sub_100077730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained fetchQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100077844;
    v7[3] = &unk_100241470;
    objc_copyWeak(&v10, (a1 + 48));
    v11 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    dispatch_async(v4, v7);

    objc_destroyWeak(&v10);
  }

  else
  {
    v5 = objc_retainBlock(*(a1 + 40));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5);
    }
  }
}

void sub_100077844(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 56);
    v4 = sub_10000DC90();
    v5 = v4;
    if (v3 == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BDSNBController fetching again while updating assetDetails.", v8, 2u);
      }

      [WeakRetained _fq_fetchSince:*(a1 + 32) completion:*(a1 + 40)];
      goto LABEL_12;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C3B38();
    }

    [WeakRetained setFetching:0];
  }

  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
  }

LABEL_12:
}

uint64_t sub_1000779D0()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_100274AB0;
  v5 = qword_100274AB0;
  if (!qword_100274AB0)
  {
    v6 = *off_100241DC8;
    v7 = *off_100241DD8;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_100274AB0 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_100077AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100077AFC(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100274AB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100077B94()
{
  v0 = sub_1000779D0();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id sub_100077BF0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100274AB8;
  v7 = qword_100274AB8;
  if (!qword_100274AB8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100077CD0;
    v3[3] = &unk_100240630;
    v3[4] = &v4;
    sub_100077CD0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100077CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100077CD0(uint64_t a1)
{
  sub_100077B94();
  result = objc_getClass("NMSMediaPinningManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100274AB8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1001C3B6C();
    return +[(BDSNMSMediaPinningManager *)v3];
  }

  return result;
}

void sub_100077FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100078020(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dieIfUnacknowledgediCloudLogoutOcccurred];
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"BDSTCCAccessChangedNotification" object:0];
}

void sub_1000785E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, id a26, id a27)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a27);
  _Unwind_Resume(a1);
}

void sub_10007867C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = sub_1000023E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained(a1 + 5);
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ for %{public}@ was closed.", &v7, 0x16u);
  }

  v5 = objc_loadWeakRetained(a1 + 6);
  v6 = [v5 clientConnectionManager];
  [v6 removeClient:WeakRetained reason:@"invalidated"];
}

void sub_100078784(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = sub_1000023E8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained(a1 + 5);
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ for %{public}@ was interrupted.", &v7, 0x16u);
  }

  v5 = objc_loadWeakRetained(a1 + 6);
  v6 = [v5 clientConnectionManager];
  [v6 removeClient:WeakRetained reason:@"interrupted"];
}

void sub_10007888C(uint64_t a1)
{
  v2 = sub_1000023E8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Instantiating BDSService.", v7, 2u);
  }

  v3 = [BDSService alloc];
  v4 = [*(a1 + 32) clientConnectionManager];
  v5 = [(BDSService *)v3 initWithClientConnectionService:v4];
  v6 = qword_100274AC0;
  qword_100274AC0 = v5;
}

void sub_100078AAC(uint64_t a1)
{
  v2 = sub_1000023E8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Deleted local copies of cloud data in response to logout.", v5, 2u);
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }
}

void sub_100078C1C(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100078CAC;
  v1[3] = &unk_100240D90;
  v2 = *(a1 + 32);
  [BCCloudCollectionsManager deleteCloudDataWithCompletion:v1];
}

void sub_100078CAC(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100078D3C;
  v1[3] = &unk_100240D90;
  v2 = *(a1 + 32);
  [_TtC14bookdatastored25CloudSecureManagerService deleteCloudDataWithCompletion:v1];
}

void sub_100078D3C(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100078DCC;
  v1[3] = &unk_100240D90;
  v2 = *(a1 + 32);
  [BCCloudKitController deleteCloudDataWithCompletion:v1];
}

void sub_100078DCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_1000023E8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Completed deleting cloud data", v9, 2u);
  }

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, a2, v5);
  }
}

void sub_10007A098(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] zoneDataManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007A180;
  v9[3] = &unk_100241E98;
  *&v4 = a1[5];
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 dissociateCloudDataFromSyncWithCompletion:v9];
}

void sub_10007A180(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_10000DC08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v17 = v7;
    v18 = 1024;
    v19 = a2;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 4. dissociateCloudDataFromSyncWithCompletion %{BOOL}d error%@", buf, 0x1Cu);
  }

  if (a2)
  {
    v8 = [*(a1 + 40) tokenController];
    v9 = *(a1 + 48);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10007A348;
    v13[3] = &unk_100241E70;
    v14 = *(a1 + 32);
    v15 = *(a1 + 56);
    [v8 updateSaltVersionIdentifier:v9 completion:v13];

    v10 = v14;
  }

  else
  {
    v11 = sub_10000DC08();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3C78(a1, v5, v11);
    }

    v12 = objc_retainBlock(*(a1 + 56));
    v10 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

void sub_10007A348(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_10000DC08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138412802;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 5a. updateSaltVersionIdentifier  %{BOOL}d error%@", &v10, 0x1Cu);
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, a2);
  }
}

void sub_10007A448(id *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_10000DC08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    *buf = 138412802;
    v30 = v7;
    v31 = 1024;
    v32 = a2;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 2. needsUpdate: %{BOOL}d error%@", buf, 0x1Cu);
  }

  if (v5)
  {
    if ([v5 code] == 1003)
    {
      v8 = [a1[5] zoneDataManager];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10007A798;
      v25[3] = &unk_100241EC0;
      v9 = a1[4];
      v10 = a1[7];
      *&v11 = v9;
      *(&v11 + 1) = a1[5];
      v24 = v11;
      *&v12 = a1[6];
      *(&v12 + 1) = v10;
      v26 = v24;
      v27 = v12;
      v28 = a1[8];
      [v8 hasSaltChangedWithCompletion:v25];

      goto LABEL_24;
    }

    v16 = [v5 code];
    v17 = sub_10000DC08();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16 == 1006)
    {
      if (v18)
      {
        v19 = a1[4];
        *buf = 138412290;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 6b - saltIdentifierError ", buf, 0xCu);
      }

LABEL_14:
      (*(a1[7] + 2))();
      goto LABEL_24;
    }

    if (v18)
    {
      v21 = a1[4];
      *buf = 138412290;
      v30 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - do nothing", buf, 0xCu);
    }
  }

  else
  {
    v13 = sub_10000DC08();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v14)
      {
        v15 = a1[4];
        *buf = 138412290;
        v30 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 3a.Need update. Calling dissociate", buf, 0xCu);
      }

      goto LABEL_14;
    }

    if (v14)
    {
      v20 = a1[4];
      *buf = 138412290;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 3b. No update needed. Calling completion.", buf, 0xCu);
    }
  }

  v22 = objc_retainBlock(a1[8]);
  v23 = v22;
  if (v22)
  {
    (*(v22 + 2))(v22, 1);
  }

LABEL_24:
}

void sub_10007A798(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v18 = v7;
    v19 = 1024;
    v20 = a2;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[BDSSaltVersionIdentifierManager] hasSaltChangedWithCompletion. %@ %{BOOL}d, ERROR:%@", buf, 0x1Cu);
  }

  if (v5 || !a2)
  {
    if (v5 || (a2 & 1) != 0)
    {
      v10 = sub_10000DC08();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138412802;
        v18 = v11;
        v19 = 1024;
        v20 = a2;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #hasSaltChangedWithCompletion - %@ - skip update %{BOOL}d error%@", buf, 0x1Cu);
      }

      v12 = objc_retainBlock(*(a1 + 64));
      v13 = v12;
      if (v12)
      {
        (*(v12 + 2))(v12, 1);
      }
    }

    else
    {
      v8 = [*(a1 + 40) tokenController];
      v9 = *(a1 + 48);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10007A9C0;
      v14[3] = &unk_100241E70;
      v15 = *(a1 + 32);
      v16 = *(a1 + 64);
      [v8 updateSaltVersionIdentifier:v9 completion:v14];
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10007A9C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_10000DC08();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138412802;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #hasSaltChangedWithCompletion - %@ - only update saltversionidentifier %{BOOL}d error%@", &v10, 0x1Cu);
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, a2);
  }
}

void sub_10007ACA4(id a1)
{
  qword_100274AD0 = [[BCCloudCollectionsManager alloc] initService];

  _objc_release_x1();
}

void sub_10007B42C(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C3D24(a1, v2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10007B480(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C3DA0(a1, v2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10007B4D4(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C3E1C(v2);
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }
}

void sub_10007B708(id a1, BOOL a2)
{
  if (!a2)
  {
    v2 = sub_100002660();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3E60(v2);
    }
  }
}

void sub_10007BED8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = sub_100002660();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3EA4(a1, v7, v8);
    }
  }

  v9 = objc_retainBlock(*(a1 + 40));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

void sub_10007C018(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10007C750(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_10007C8C8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_10007D2B4(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10007D8C4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = sub_100002660();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3F74(a1, v7, v8);
    }
  }

  v9 = objc_retainBlock(*(a1 + 40));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

void sub_10007DA04(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10007E13C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_10007E2B4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_10007EC74(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10007EE70(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = a4;
  v8 = a2;
  objc_opt_class();
  v9 = BUDynamicCast();

  v10 = objc_retainBlock(*(a1 + 32));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v9, v12, v7);
  }
}

void sub_10007F098(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = [v6 sortOrder];
  v8 = objc_retainBlock(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v7, v10);
  }
}

void sub_10007F3C4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  if (a2)
  {
    [NSSet setWithArray:a2];
  }

  else
  {
    +[NSSet set];
  }
  v9 = ;
  (*(v6 + 16))(v6);
}

void sub_100081E9C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = +[BCCloudCollectionsManager sharedManager];
    v4 = [v3 collectionMemberManager];

    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100081FF8;
    v16[3] = &unk_100241FC0;
    v17 = v6;
    v18 = *(a1 + 32);
    v19 = v4;
    v20 = *(a1 + 48);
    v7 = v4;
    [v5 _nextSortOrderForCollectionMemberManager:v7 collectionID:v17 completion:v16];
  }

  else
  {
    v8 = sub_10000DD18();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C44F8(a1, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = objc_retainBlock(*(a1 + 48));
    v7 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0);
    }
  }
}

void sub_100081FF8(uint64_t a1, uint64_t a2)
{
  v4 = [BCCollectionMember collectionMemberIDWithCollectionID:*(a1 + 32) assetID:*(a1 + 40)];
  v5 = [[BCMutableCollectionMember alloc] initWithCollectionMemberID:v4];
  [(BCMutableCollectionMember *)v5 setSortOrder:a2];
  [(BCMutableCloudData *)v5 setDeletedFlag:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000820E0;
  v7[3] = &unk_1002417E8;
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v6 setCollectionMember:v5 completion:v7];
}

void sub_1000820E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = sub_10000DD18();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C4568();
    }
  }

  v8 = objc_retainBlock(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, a2);
  }
}

void sub_100082260(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_10000DD18();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C45D0();
    }
  }

  if (v5)
  {
    v8 = [v5 deletedFlag] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_retainBlock(*(a1 + 32));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v8);
  }
}

void sub_100082544(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = +[BCCloudAssetManager sharedManager];
    v4 = [v3 assetDetailManager];

    v5 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100082688;
    v10[3] = &unk_100242038;
    v6 = v5;
    v14 = *(a1 + 56);
    v11 = v6;
    v12 = v4;
    v13 = *(a1 + 48);
    v7 = v4;
    [v7 assetDetailsForAssetIDs:v6 completion:v10];
  }

  else
  {
    v8 = sub_10000DD18();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C4638(a1, v8);
    }

    v9 = objc_retainBlock(*(a1 + 48));
    v7 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

void sub_100082688(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 bu_arrayByRemovingNSNulls];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v11 assetID];
        [v4 setObject:v11 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = *(a1 + 32);
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * j);
        v19 = [v4 objectForKeyedSubscript:v18];
        if (!v19)
        {
          v19 = [[BCMutableAssetDetail alloc] initWithAssetID:v18];
          v20 = +[NSDate date];
          [(BCMutableAssetDetail *)v19 setDateFinished:v20];

          [v4 setObject:v19 forKeyedSubscript:v18];
        }

        if (*(a1 + 56) == 1)
        {
          [(BCMutableAssetDetail *)v19 setIsFinished:1];
          [(BCMutableAssetDetail *)v19 setNotFinished:0];
          v21 = [(BCMutableAssetDetail *)v19 dateFinished];

          if (!v21)
          {
            v22 = [(BCMutableAssetDetail *)v19 lastOpenDate];
            if (v22)
            {
              [(BCMutableAssetDetail *)v19 setDateFinished:v22];
            }

            else
            {
              v23 = +[NSDate date];
              [(BCMutableAssetDetail *)v19 setDateFinished:v23];
            }
          }
        }

        else
        {
          [(BCMutableAssetDetail *)v19 setIsFinished:0];
          [(BCMutableAssetDetail *)v19 setNotFinished:1];
          [(BCMutableAssetDetail *)v19 setDateFinished:0];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v15);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000829E4;
  v25[3] = &unk_1002417E8;
  v24 = *(a1 + 40);
  v26 = *(a1 + 48);
  [v24 setAssetDetails:v4 completion:v25];
}

void sub_1000829E4(uint64_t a1, uint64_t a2)
{
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, a2);
    v3 = v4;
  }
}

void sub_100082B20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10000DD18();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001C46D0();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100082C94(uint64_t a1, uint64_t a2)
{
  +[NSTimeZone resetSystemTimeZone];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"BDSNotificationForwarderSignificantTimeChangeNotification" object:a2 userInfo:0];
}

uint64_t sub_100082D48()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088824(v3, qword_10026EB78);
  sub_100083274(v0, qword_10026EB78);
  v6 = [objc_opt_self() books];
  v7 = [v6 containerURL];

  sub_1001C4AD8();
  sub_1001C4A98();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100082EA4()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088824(v3, qword_10026EB98);
  sub_100083274(v0, qword_10026EB98);
  if (qword_10026EB70 != -1)
  {
    swift_once();
  }

  v6 = sub_100083274(v0, qword_10026EB78);
  (*(v1 + 16))(v5, v6, v0);
  sub_1001C4AA8();
  return (*(v1 + 8))(v5, v0);
}

uint64_t CRDTModelSyncMapper.__allocating_init()()
{
  v0 = swift_allocObject();
  CRDTModelSyncMapper.init()();
  return v0;
}

uint64_t CRDTModelSyncMapper.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultManager];
  if (qword_10026EB90 != -1)
  {
    swift_once();
  }

  v3 = sub_1001C4B28();
  sub_100083274(v3, qword_10026EB98);
  sub_1001C4A88(v4);
  v6 = v5;
  v18 = 0;
  v7 = [v2 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v18];

  if (v7)
  {
    v8 = v18;
  }

  else
  {
    v9 = v18;
    sub_1001C4A28();

    swift_willThrow();
    sub_1001C6598();
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1001F0660;
    v11 = sub_1001C4A58();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    v14 = sub_100084570();
    *(v10 + 64) = v14;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    swift_getErrorValue();
    v15 = sub_1001C6D98();
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v14;
    *(v10 + 72) = v15;
    *(v10 + 80) = v16;
    sub_1001C5118();
  }

  return v1;
}

uint64_t sub_100083274(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000832AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1001C6068();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a1 + 8))(ObjectType, a1);
  sub_1001C6058();
  v10 = sub_1001C6028();
  v12 = v11;

  (*(v5 + 8))(v8, v4);
  if (v12 >> 60 == 15)
  {
LABEL_13:
    sub_1001C6598();
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
    v18 = sub_1001C4B28();
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }

  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v10 + 16) == *(v10 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v13)
  {
    if (v10 == v10 >> 32)
    {
LABEL_12:
      sub_1000887BC(v10, v12);
      goto LABEL_13;
    }
  }

  else if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  isa = sub_1001C4B98().super.isa;
  v15 = [(objc_class *)isa bu_md5];

  sub_1001C6018();
  if (qword_10026EB90 != -1)
  {
    swift_once();
  }

  v16 = sub_1001C4B28();
  sub_100083274(v16, qword_10026EB98);
  sub_1001C4AA8();
  sub_1000887BC(v10, v12);

  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

id sub_1000835F4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v5 = a3;

  v6 = a4(v5);

  return v6;
}

uint64_t sub_10008366C()
{
  v0 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v55 = &v52 - v2;
  v3 = sub_1001C4988();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  __chkstk_darwin(v3);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v53 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v52 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v52 - v18;
  __chkstk_darwin(v17);
  v21 = &v52 - v20;
  v22 = objc_opt_self();
  v23 = [v22 books];
  v24 = [v23 containerURL];

  sub_1001C4AD8();
  v61 = v21;
  sub_1001C4AA8();
  v54 = v7;
  v25 = *(v7 + 8);
  v56 = v7 + 8;
  v25(v19, v6);
  v26 = [v22 books];
  v27 = [v26 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();
  v25(v13, v6);
  *&v63 = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  *&v63 = sub_1001C6098();
  *(&v63 + 1) = v28;

  v66._countAndFlagsBits = 0x2E747865746E6F43;
  v66._object = 0xEA00000000006264;
  sub_1001C6138(v66);

  v62 = v16;
  sub_1001C4AA8();

  v58 = v25;
  v25(v19, v6);
  sub_1001C6578();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001F0670;
  v30 = sub_1001C4A58();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  v33 = sub_100084570();
  *(v29 + 64) = v33;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  sub_1001C5118();

  v34 = v57;
  sub_1001C4978();
  sub_1001C4968();
  v35 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v36);
  v38 = v37;
  *&v63 = 0;
  LODWORD(v32) = [v35 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v63];

  if (v32)
  {
    v39 = v63;
    sub_1001C4A78();
    sub_1001C5E38();
    v40 = v54;
    (*(v54 + 16))(v53, v62, v6);
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    (*(v40 + 56))(v55, 1, 1, v6);
    v50 = sub_1001C5E28();
    (*(v59 + 8))(v34, v60);
    v51 = v62;
  }

  else
  {
    v41 = v63;
    sub_1001C4A28();

    swift_willThrow();
    sub_1001C6598();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1001F0660;
    v43 = v62;
    v44 = sub_1001C4A58();
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = v33;
    *(v42 + 32) = v44;
    *(v42 + 40) = v45;
    swift_getErrorValue();
    v46 = sub_1001C6D98();
    *(v42 + 96) = &type metadata for String;
    *(v42 + 104) = v33;
    *(v42 + 72) = v46;
    *(v42 + 80) = v47;
    sub_1001C5118();

    sub_1001C5E38();
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    v50 = sub_1001C5E18();

    sub_10008875C(&v63, &unk_10026EF20, &unk_1001F1FB0);
    (*(v59 + 8))(v34, v60);
    v51 = v43;
  }

  v48 = v58;
  v58(v51, v6);
  v48(v61, v6);
  return v50;
}

uint64_t variable initialization expression of ReadingHistoryServiceManager._readingHistoryServiceAccessQueue()
{
  v0 = sub_1001C6638();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_1001C5688();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1001C6668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  sub_1001C5668();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t variable initialization expression of ReadingHistoryServiceManager.outstandingTransactionCountAccessQueue()
{
  v0 = sub_1001C6638();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_1001C5688();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1001C6668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  sub_1001C5668();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  return sub_1001C66A8();
}

double variable initialization expression of ReadingHistoryDataStore.updateCollector@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of ReadingHistoryDataStore.queue()
{
  v0 = sub_1001C6638();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_1001C5688();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1001C6668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  sub_1001C5668();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t sub_100084528(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100084570()
{
  result = qword_10026ECB0;
  if (!qword_10026ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026ECB0);
  }

  return result;
}

uint64_t variable initialization expression of CRDTModelSyncManager.logger()
{
  sub_1001C69C8(16);

  type metadata accessor for CRDTModelSyncManager();
  v2._countAndFlagsBits = sub_1000BCAD0();
  sub_1001C6138(v2);

  return sub_1001C5138();
}

uint64_t variable initialization expression of CRDTModelSyncManager.modelQueue()
{
  v0 = sub_1001C6668();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C6638();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1001C5688();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  sub_1001C6628();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return sub_1001C66A8();
}

id variable initialization expression of ReadingHistoryService.historyDefaults()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

uint64_t variable initialization expression of ReadingHistoryService.accessQueue()
{
  v0 = sub_1001C6638();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_1001C5688();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1001C6668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  sub_1001C5668();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t variable initialization expression of ReadingHistoryService.modelReadyQueue()
{
  v0 = sub_1001C6638();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_1001C5688();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1001C6668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  sub_1001C5668();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t variable initialization expression of ReadingHistoryService.readingHistoryUpdatePendingSaveAccessLock()
{
  sub_100084528(&qword_100270A70, &unk_1001F06A0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of CRDTModelCloudSyncController._localSyncManagerAccessQueue()
{
  v0 = sub_1001C6638();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_1001C5688();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1001C6668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  sub_1001C5668();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t variable initialization expression of CRDTModelCloudSyncController.localModelSyncVersionTransactionQueue()
{
  v0 = sub_1001C6638();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_1001C5688();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1001C6668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  sub_1001C5668();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t variable initialization expression of CRDTModelCloudSyncController.waitForlocalModelSyncVersion@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRDTModelSyncVersion();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of BDSSyncEnginePipeline.workQueue()
{
  v11 = sub_1001C6668();
  v0 = *(v11 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v11);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C6638();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_1001C5688();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v10[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v10[0] = "SyncVersionTransaction";
  v8 = *(static BDSSyncEngine.shared + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  sub_1001C5668();
  v12 = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  return sub_1001C66A8();
}

uint64_t variable initialization expression of BDSSyncEnginePipeline.stateQueue()
{
  v0 = sub_1001C6668();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C5688();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1001C6638();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C6628();
  sub_1001C5668();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_1001C66A8();
}

void *variable initialization expression of BDSSyncEnginePipeline.currentModifyBatchResponse()
{
  type metadata accessor for _BDSSyncEngineModifyBatchResponse();
  result = swift_allocObject();
  result[2] = &_swiftEmptyArrayStorage;
  result[3] = &_swiftEmptyArrayStorage;
  result[4] = &_swiftEmptyArrayStorage;
  result[5] = &_swiftEmptyArrayStorage;
  result[6] = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t variable initialization expression of ModelState.revisionInfo@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRDTModelRevisionInfo();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of CRDTModelLocalFileManager.modelQueue()
{
  v0 = sub_1001C6668();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C6638();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1001C5688();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  sub_1001C6628();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return sub_1001C66A8();
}

uint64_t variable initialization expression of CRDTModelLocalFileManager.ioQueue()
{
  v10 = sub_1001C6668();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C6638();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_1001C5688();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5668();
  v11 = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  return sub_1001C66A8();
}

void *variable initialization expression of CRDTModelLocalFileManager.observableTransaction()
{
  v0 = [objc_allocWithZone(BDSOSTransactionProvider) init];
  v1 = type metadata accessor for ObservableTransaction();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();

  return sub_1000879B0(0xD000000000000035, 0x80000001001FDE40, v0, v4);
}

uint64_t variable initialization expression of CRDTModelLocalFileManager.logger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001C69C8(21);

  v8._countAndFlagsBits = (*(a4 + 8))(a1, a4);
  sub_1001C6138(v8);

  return sub_1001C5138();
}

unint64_t variable initialization expression of CloudSecureUserDataMigrator.persistentStoreOptions()
{
  sub_100084528(&qword_10026ECE0, &unk_1001F5960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0680;
  *(inited + 32) = sub_1001C6018();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1001C6018();
  *(inited + 64) = v2;
  *(inited + 72) = 1;
  *(inited + 80) = sub_1001C6018();
  *(inited + 88) = v3;
  *(inited + 96) = 1;
  v4 = sub_100119680(inited);
  swift_setDeallocating();
  sub_100084528(&qword_10026ECE8, &unk_1001F06B0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_1000860E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of ObservableContainer.accessQueue()
{
  v10 = sub_1001C6668();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C6638();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_1001C5688();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5668();
  v11 = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  return sub_1001C66A8();
}

uint64_t variable initialization expression of ObservableContainer.callQueue()
{
  v0 = sub_1001C6668();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C6638();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1001C5688();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  sub_1001C6628();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return sub_1001C66A8();
}

uint64_t variable initialization expression of ObservableContainer.observations()
{
  type metadata accessor for ObservableContainer.Event();
  swift_getFunctionTypeMetadata1();

  return sub_1001C5EC8();
}

uint64_t variable initialization expression of ObservableTransaction.observableTransactionQueue()
{
  v0 = sub_1001C6638();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_1001C5688();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1001C6668();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  sub_1001C5668();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t variable initialization expression of CRDTModelFileSyncManager.modelQueue()
{
  v0 = sub_1001C6668();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C6638();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1001C5688();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  sub_1001C6628();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return sub_1001C66A8();
}

uint64_t variable initialization expression of CRDTModelFileSyncManager.logger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001C69C8(20);

  v8._countAndFlagsBits = (*(a4 + 8))(a1, a4);
  sub_1001C6138(v8);

  return sub_1001C5138();
}

uint64_t sub_100086BB4(uint64_t *a1, uint64_t *a2)
{
  v2 = sub_100084528(a1, a2);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1001C5188();
}

uint64_t variable initialization expression of BDSSyncEngine.queue()
{
  v10 = sub_1001C6668();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C6638();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_1001C5688();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5668();
  v11 = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  return sub_1001C66A8();
}

id variable initialization expression of BDSSyncEngine.saltObservers()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

id variable initialization expression of BDSSyncEngine.zoneLock()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

uint64_t sub_100086FF0(uint64_t *a1, uint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  sub_100084528(a1, a2);
  sub_1000885F4(a3, a1, a2);
  sub_1000885F4(a4, a1, a2);

  return sub_1001C5B58();
}

uint64_t variable initialization expression of ReadingHistoryModel.streakRecords()
{
  sub_1001C4CA8();
  sub_10008863C(&unk_10026F440, &type metadata accessor for Date);

  return sub_1001C5B58();
}

uint64_t sub_100087158(uint64_t a1)
{
  v2 = sub_10008863C(&qword_10026EFE8, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000871C4(uint64_t a1)
{
  v2 = sub_10008863C(&qword_10026EFE8, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100087234(uint64_t a1)
{
  v2 = sub_10008863C(&qword_10026EFE0, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000872A8()
{
  v1 = *v0;
  sub_1001C6018();
  v2 = sub_1001C61C8();

  return v2;
}

uint64_t sub_1000872E4()
{
  v1 = *v0;
  sub_1001C6018();
  sub_1001C60E8();
}

Swift::Int sub_100087338()
{
  v1 = *v0;
  sub_1001C6018();
  sub_1001C6DF8();
  sub_1001C60E8();
  v2 = sub_1001C6E28();

  return v2;
}

uint64_t sub_1000873AC(uint64_t a1, id *a2)
{
  result = sub_1001C5FF8();
  *a2 = 0;
  return result;
}

uint64_t sub_100087424(uint64_t a1, id *a2)
{
  v3 = sub_1001C6008();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000874A4@<X0>(void *a1@<X8>)
{
  sub_1001C6018();
  v2 = sub_1001C5FE8();

  *a1 = v2;
  return result;
}

uint64_t sub_1000874F8()
{
  sub_10008863C(&qword_10026EFE0, type metadata accessor for CKError);

  return sub_1001C4A08();
}

uint64_t sub_100087564(uint64_t a1)
{
  v2 = sub_10008863C(&qword_10026EFE0, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000875D0(void *a1, uint64_t a2)
{
  v4 = sub_10008863C(&qword_10026EFE0, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100087684(uint64_t a1, uint64_t a2)
{
  v4 = sub_10008863C(&qword_10026EFE0, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100087700()
{
  v2 = *v0;
  sub_1001C6DF8();
  sub_1001C5F98();
  return sub_1001C6E28();
}

uint64_t sub_100087760(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1001C6018();
  v6 = v5;
  if (v4 == sub_1001C6018() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();
  }

  return v9 & 1;
}

uint64_t sub_1000877FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008863C(&qword_10026EFE0, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100087880@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1001C5FE8();

  *a2 = v5;
  return result;
}

uint64_t sub_1000878C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1001C6018();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000878F4(uint64_t a1)
{
  v2 = sub_10008863C(&qword_10026F020, type metadata accessor for FileAttributeKey);
  v3 = sub_10008863C(&qword_10026F028, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_1000879B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a2;
  v19 = a3;
  v17 = a1;
  v5 = sub_1001C6638();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_1001C5688();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1001C6668();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[4] = 0;
  v16[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  sub_1001C5668();
  v20 = &_swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  a4[5] = sub_1001C66A8();
  sub_1001C5138();
  v14 = v18;
  a4[2] = v17;
  a4[3] = v14;
  a4[6] = v19;
  return a4;
}

char *_s14bookdatastored19CRDTModelSyncMapperC9cloudData4fromSo014BCMutableCloudF0CSgSo8CKRecordC_tF_0(void *a1)
{
  v2 = sub_1001C4CA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (__chkstk_darwin)();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C4B28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = sub_1001C6768();
  if (!v15)
  {
    goto LABEL_10;
  }

  v40 = v15;
  sub_100084528(&qword_10026EF90, &qword_1001F0778);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v16 = v39;
  v37 = v38;
  if (!sub_1001C6768())
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = [v17 fileURL];
    if (v18)
    {
      v36 = v16;
      v19 = v18;
      sub_1001C4AD8();

      (*(v8 + 32))(v14, v12, v7);
      v21 = sub_1001C4B48();
      v35 = v22;
      v23 = [objc_allocWithZone(type metadata accessor for CRDTModelSync()) init];
      [v23 setSystemFields:a1];
      v24 = [a1 modificationDate];
      if (v24)
      {
        v25 = v24;
        sub_1001C4C78();

        v26.super.isa = sub_1001C4C38().super.isa;
        (*(v3 + 8))(v6, v2);
      }

      else
      {
        v26.super.isa = 0;
      }

      [v23 setModificationDate:v26.super.isa];

      swift_unknownObjectRelease();
      (*(v8 + 8))(v14, v7);
      v27 = &v23[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
      v28 = *&v23[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type + 8];
      v29 = v36;
      *v27 = v37;
      *(v27 + 1) = v29;

      v30 = &v23[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
      v31 = *&v23[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
      v32 = *&v23[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
      v33 = v35;
      *v30 = v21;
      v30[1] = v33;
      sub_1000887BC(v31, v32);

      return v23;
    }

    swift_unknownObjectRelease();
LABEL_9:

    goto LABEL_10;
  }

  swift_unknownObjectRelease();
LABEL_10:
  sub_1001C6598();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  return 0;
}

id _s14bookdatastored19CRDTModelSyncMapperC6record4fromSo8CKRecordCSgSo18BCMutableCloudDataC_tF_0(void *a1)
{
  v2 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v31 - v4;
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 systemFields];
  if (v11)
  {
    swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12 && a1)
    {
      v13 = v12;
      ObjectType = swift_getObjectType();
      v15 = a1;
      v16 = [v15 identifier];
      if (v16)
      {
        v17 = v16;
        [objc_msgSend(v11 "encryptedValuesByKey")];

        swift_unknownObjectRelease();
      }

      v18 = (*(v13 + 8))(ObjectType, v13);
      v31[12] = &type metadata for String;
      v31[13] = &protocol witness table for String;
      v31[9] = v18;
      v31[10] = v19;
      sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
      sub_1001C66D8();
      type metadata accessor for CRDTModelSyncMapper();
      sub_1000832AC(v13, v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_10008875C(v5, &unk_10026EF10, &unk_1001F1FA0);
      }

      else
      {
        (*(v7 + 32))(v10, v5, v6);
        v21 = (*(v13 + 16))(ObjectType, v13);
        if (v22 >> 60 == 15)
        {
          (*(v7 + 8))(v10, v6);
        }

        else
        {
          v23 = v21;
          v24 = v22;
          sub_1001C4BB8();
          v25 = objc_allocWithZone(CKAsset);
          sub_1001C4A88(v26);
          v28 = v27;
          v29 = [v25 initWithFileURL:v27];

          v30 = v29;
          sub_1001C6778();
          sub_1000887BC(v23, v24);

          (*(v7 + 8))(v10, v6);
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v11;
}

uint64_t sub_1000885AC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000885F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008863C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000886B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000886D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100088714(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10008875C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100084528(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000887BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000887D0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000887D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *sub_100088824(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_1000888D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100088BF8()
{
  result = qword_10026F010;
  if (!qword_10026F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F010);
  }

  return result;
}

uint64_t sub_100088CB4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(_s21PriceDropNotificationVMa() - 8);
  v2[9] = v3;
  v4 = *(v3 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100088D94, 0, 0);
}

uint64_t sub_100088D94()
{
  v1 = *(v0 + 56);
  *(v0 + 112) = *(*(v0 + 64) + 32);
  sub_100089978();
  *(v0 + 120) = v2;
  *(v0 + 204) = v3;
  v4 = *(v1 + 16);
  *(v0 + 128) = v4;
  if (v4)
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);
    sub_1000D3834(0, v4, 0);
    v7 = v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v5 + 72);
    do
    {
      v9 = *(v0 + 104);
      sub_10008E644(v7, v9);
      v10 = *v9;
      sub_10008E6A8(v9);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_1000D3834((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
      v7 += v8;
      --v4;
    }

    while (v4);
  }

  *(v0 + 136) = _swiftEmptyArrayStorage;
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_100088F1C;
  v14 = *(v0 + 64);

  return sub_10008A1E8(_swiftEmptyArrayStorage);
}

uint64_t sub_100088F1C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[19] = v4;
  *v4 = v3;
  v4[1] = sub_100089074;
  v5 = v1[17];
  v6 = v1[8];

  return sub_10008A978(v5);
}

uint64_t sub_100089074()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_10008918C, 0, 0);
}

uint64_t sub_10008918C()
{
  v37 = v0;
  *(v0 + 32) = *(v0 + 56);
  sub_100084528(&qword_10026F268, &qword_1001F0C80);
  sub_1000885F4(&qword_10026F270, &qword_10026F268, &qword_1001F0C80);
  if (sub_1001C6458())
  {
    if (*(v0 + 204))
    {
      v1 = *(v0 + 56);
    }

    else
    {
      if (*(v0 + 128))
      {
        v2 = 0;
        v3 = *(v0 + 72);
        v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v5 = *(v3 + 72);
        v6 = *(v0 + 56) + v4;
        v1 = _swiftEmptyArrayStorage;
        do
        {
          v7 = *(v0 + 120);
          v8 = *(v0 + 96);
          sub_10008E644(v6, v8);
          v9 = *(v0 + 96);
          if (v7 >= *v8)
          {
            sub_10008E6A8(v9);
          }

          else
          {
            sub_10008E758(v9, *(v0 + 88));
            v36[0] = v1;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000D3854(0, v1[2] + 1, 1);
              v1 = v36[0];
            }

            v11 = v1[2];
            v10 = v1[3];
            if (v11 >= v10 >> 1)
            {
              sub_1000D3854(v10 > 1, v11 + 1, 1);
              v1 = v36[0];
            }

            v12 = *(v0 + 88);
            v1[2] = v11 + 1;
            sub_10008E758(v12, v1 + v4 + v11 * v5);
          }

          ++v2;
          v6 += v5;
        }

        while (v2 != *(v0 + 128));
      }

      else
      {
        v1 = _swiftEmptyArrayStorage;
      }

      if (!v1[2])
      {

        if (qword_10026EBB8 != -1)
        {
          swift_once();
        }

        v22 = sub_1001C5148();
        sub_100083274(v22, qword_100281898);
        v23 = sub_1001C5128();
        v24 = sub_1001C65B8();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = *(v0 + 120);
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v36[0] = v27;
          *v26 = 136446210;
          *(v0 + 48) = v25;
          sub_10008E704();
          v28 = sub_1001C61D8();
          v30 = sub_1001874E8(v28, v29, v36);

          *(v26 + 4) = v30;
          _os_log_impl(&_mh_execute_header, v23, v24, "[UserNotifier] Found matching last-notification ID: %{public}s", v26, 0xCu);
          sub_10008E7BC(v27);
        }

        goto LABEL_26;
      }
    }

    v36[0] = v1;

    sub_10008D5BC(v36);

    v13 = v36[0];
    *(v0 + 160) = v36[0];
    v14 = v13[2];
    *(v0 + 168) = v14;
    if (v14)
    {
      v16 = *(v0 + 72);
      v15 = *(v0 + 80);
      v17 = *(v16 + 80);
      *(v0 + 200) = v17;
      *(v0 + 176) = *(v16 + 72);
      *(v0 + 184) = 0;
      sub_10008E644(v13 + ((v17 + 32) & ~v17), v15);
      v18 = swift_task_alloc();
      *(v0 + 192) = v18;
      *v18 = v0;
      v18[1] = sub_1000895FC;
      v19 = *(v0 + 80);
      v20 = *(v0 + 64);

      return sub_10008B108(v19);
    }
  }

LABEL_26:
  v32 = *(v0 + 96);
  v31 = *(v0 + 104);
  v34 = *(v0 + 80);
  v33 = *(v0 + 88);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1000895FC(char a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 205) = a1;

  return _swift_task_switch(sub_1000896FC, 0, 0);
}

uint64_t sub_1000896FC()
{
  if (*(v0 + 205) == 1)
  {
    v1 = *(v0 + 112);
    *(v0 + 40) = **(v0 + 80);
    sub_10008E704();
    *(v0 + 16) = sub_1001C61D8();
    *(v0 + 24) = v2;
    v3 = sub_1001C6D48();
    v4 = sub_1001C5FE8();
    [v1 setObject:v3 forKey:v4];

    swift_unknownObjectRelease();
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 184) + 1;
  sub_10008E6A8(*(v0 + 80));
  if (v6 == v5)
  {
    v7 = *(v0 + 160);

    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 176);
    v15 = *(v0 + 184) + 1;
    *(v0 + 184) = v15;
    sub_10008E644(*(v0 + 160) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + v14 * v15, *(v0 + 80));
    v16 = swift_task_alloc();
    *(v0 + 192) = v16;
    *v16 = v0;
    v16[1] = sub_1000895FC;
    v17 = *(v0 + 80);
    v18 = *(v0 + 64);

    return sub_10008B108(v17);
  }
}

uint64_t sub_1000898E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100089948()
{
  result = sub_1001C6018();
  qword_10026F1B0 = result;
  *algn_10026F1B8 = v1;
  return result;
}

void sub_100089978()
{
  v1 = sub_1001C5FE8();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = sub_1001C6018();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    v7 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v5) & 0xF;
    }

    else
    {
      v8 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      if ((v5 & 0x1000000000000000) != 0)
      {

        sub_1000D7F60(v3, v5, 36);
        swift_bridgeObjectRelease_n();
        return;
      }

      if ((v5 & 0x2000000000000000) != 0)
      {
        v40[0] = v3;
        v40[1] = v5 & 0xFFFFFFFFFFFFFFLL;
        if (v3 == 43)
        {
          if (v6)
          {
            if (--v6)
            {
              v26 = 0;
              v27 = v40 + 1;
              while (1)
              {
                v28 = *v27;
                v29 = v28 - 48;
                if ((v28 - 48) >= 0xA)
                {
                  if ((v28 - 65) < 0x1A)
                  {
                    v29 = v28 - 55;
                  }

                  else
                  {
                    if ((v28 - 97) > 0x19)
                    {
                      goto LABEL_88;
                    }

                    v29 = v28 - 87;
                  }
                }

                v30 = 36 * v26;
                if ((v26 * 36) >> 64 != (36 * v26) >> 63)
                {
                  break;
                }

                v26 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  break;
                }

                ++v27;
                if (!--v6)
                {
                  goto LABEL_89;
                }
              }
            }

            goto LABEL_88;
          }

          goto LABEL_97;
        }

        if (v3 != 45)
        {
          if (v6)
          {
            v35 = 0;
            v36 = v40;
            while (1)
            {
              v37 = *v36;
              v38 = v37 - 48;
              if ((v37 - 48) >= 0xA)
              {
                if ((v37 - 65) < 0x1A)
                {
                  v38 = v37 - 55;
                }

                else
                {
                  if ((v37 - 97) > 0x19)
                  {
                    goto LABEL_88;
                  }

                  v38 = v37 - 87;
                }
              }

              v39 = 36 * v35;
              if ((v35 * 36) >> 64 != (36 * v35) >> 63)
              {
                break;
              }

              v35 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v36;
              if (!--v6)
              {
                goto LABEL_89;
              }
            }
          }

          goto LABEL_88;
        }

        if (v6)
        {
          if (--v6)
          {
            v16 = 0;
            v17 = v40 + 1;
            while (1)
            {
              v18 = *v17;
              v19 = v18 - 48;
              if ((v18 - 48) >= 0xA)
              {
                if ((v18 - 65) < 0x1A)
                {
                  v19 = v18 - 55;
                }

                else
                {
                  if ((v18 - 97) > 0x19)
                  {
                    goto LABEL_88;
                  }

                  v19 = v18 - 87;
                }
              }

              v20 = 36 * v16;
              if ((v16 * 36) >> 64 != (36 * v16) >> 63)
              {
                break;
              }

              v16 = v20 - v19;
              if (__OFSUB__(v20, v19))
              {
                break;
              }

              ++v17;
              if (!--v6)
              {
                goto LABEL_89;
              }
            }
          }

          goto LABEL_88;
        }
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v9 = sub_1001C6A38();
        }

        v10 = *v9;
        if (v10 == 43)
        {
          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              if (v9)
              {
                v21 = 0;
                v22 = v9 + 1;
                while (1)
                {
                  v23 = *v22;
                  v24 = v23 - 48;
                  if ((v23 - 48) >= 0xA)
                  {
                    if ((v23 - 65) < 0x1A)
                    {
                      v24 = v23 - 55;
                    }

                    else
                    {
                      if ((v23 - 97) > 0x19)
                      {
                        goto LABEL_88;
                      }

                      v24 = v23 - 87;
                    }
                  }

                  v25 = 36 * v21;
                  if ((v21 * 36) >> 64 != (36 * v21) >> 63)
                  {
                    goto LABEL_88;
                  }

                  v21 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    goto LABEL_88;
                  }

                  ++v22;
                  if (!--v6)
                  {
                    goto LABEL_89;
                  }
                }
              }

              goto LABEL_76;
            }

            goto LABEL_88;
          }

          goto LABEL_96;
        }

        if (v10 != 45)
        {
          if (v7)
          {
            if (v9)
            {
              v31 = 0;
              while (1)
              {
                v32 = *v9;
                v33 = v32 - 48;
                if ((v32 - 48) >= 0xA)
                {
                  if ((v32 - 65) < 0x1A)
                  {
                    v33 = v32 - 55;
                  }

                  else
                  {
                    if ((v32 - 97) > 0x19)
                    {
                      goto LABEL_88;
                    }

                    v33 = v32 - 87;
                  }
                }

                v34 = 36 * v31;
                if ((v31 * 36) >> 64 != (36 * v31) >> 63)
                {
                  goto LABEL_88;
                }

                v31 = v34 + v33;
                if (__OFADD__(v34, v33))
                {
                  goto LABEL_88;
                }

                ++v9;
                if (!--v7)
                {
                  LOBYTE(v6) = 0;
                  goto LABEL_89;
                }
              }
            }

            goto LABEL_76;
          }

LABEL_88:
          LOBYTE(v6) = 1;
          goto LABEL_89;
        }

        if (v7 >= 1)
        {
          v6 = v7 - 1;
          if (v7 != 1)
          {
            if (v9)
            {
              v11 = 0;
              v12 = v9 + 1;
              while (1)
              {
                v13 = *v12;
                v14 = v13 - 48;
                if ((v13 - 48) >= 0xA)
                {
                  if ((v13 - 65) < 0x1A)
                  {
                    v14 = v13 - 55;
                  }

                  else
                  {
                    if ((v13 - 97) > 0x19)
                    {
                      goto LABEL_88;
                    }

                    v14 = v13 - 87;
                  }
                }

                v15 = 36 * v11;
                if ((v11 * 36) >> 64 != (36 * v11) >> 63)
                {
                  goto LABEL_88;
                }

                v11 = v15 - v14;
                if (__OFSUB__(v15, v14))
                {
                  goto LABEL_88;
                }

                ++v12;
                if (!--v6)
                {
                  goto LABEL_89;
                }
              }
            }

LABEL_76:
            LOBYTE(v6) = 0;
LABEL_89:
            v41 = v6;

            return;
          }

          goto LABEL_88;
        }

        __break(1u);
      }

      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      return;
    }
  }
}

uint64_t sub_100089DC8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = sub_1001C6468();
  if (!v26)
  {
    return sub_1001C62C8();
  }

  v48 = v26;
  v52 = sub_1001C6AB8();
  v39 = sub_1001C6AC8();
  sub_1001C6A68(v48);
  result = sub_1001C6448();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1001C64A8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1001C6AA8();
      result = sub_1001C6498();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008A1E8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *(_s21PriceDropNotificationVMa() - 8);
  v2[16] = v3;
  v4 = *(v3 + 64) + 15;
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10008A2A4, 0, 0);
}

uint64_t sub_10008A2A4()
{
  v1 = v0[15];
  v0[18] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[19] = v2;
  ObjectType = swift_getObjectType();
  v0[20] = ObjectType;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_10008A364;

  return sub_10008BB8C(ObjectType, v2);
}

uint64_t sub_10008A364(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_10008A464, 0, 0);
}

char *sub_10008A464()
{
  v57 = v0;
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 128);
    v56[0] = _swiftEmptyArrayStorage;
    sub_1000D3834(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v7 = *(v0 + 136);
      sub_10008E644(v5, v7);
      v8 = *v7;
      sub_10008E6A8(v7);
      v56[0] = v4;
      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        sub_1000D3834((v9 > 1), v10 + 1, 1);
        v4 = v56[0];
      }

      *(v4 + 2) = v10 + 1;
      *&v4[8 * v10 + 32] = v8;
      v5 += v6;
      --v2;
    }

    while (v2);
    v11 = *(v0 + 176);
  }

  else
  {
    v12 = *(v0 + 176);

    v4 = _swiftEmptyArrayStorage;
  }

  v13 = *(v0 + 112);

  v14 = sub_100102A08(v56, v4, v13);
  v54 = v16;
  v55 = v15;
  v18 = v17;

  v19 = v56[1];
  v20 = v56[2];
  v21 = v56[3];
  *(v0 + 16) = v56[0];
  *(v0 + 24) = v19;
  *(v0 + 32) = v20;
  *(v0 + 40) = v21;
  v53 = sub_100084528(&qword_10026F288, &qword_1001F0CB0);
  v22 = sub_1000885F4(&qword_10026F290, &qword_10026F288, &qword_1001F0CB0);
  if (sub_1001C6458())
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v23 = sub_1001C5148();
    sub_100083274(v23, qword_100281898);
    swift_unknownObjectRetain();
    v24 = sub_1001C5128();
    v25 = sub_1001C6588();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v24, v25))
    {
      v50 = v22;
      v26 = swift_slowAlloc();
      v51 = v18;
      v27 = swift_slowAlloc();
      v56[0] = v27;
      *v26 = 136446210;
      v28 = sub_1001C6898();
      v30 = sub_1001874E8(v28, v29, v56);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "[UserNotifier] Keeping existing requested notification(s): %{public}s", v26, 0xCu);
      sub_10008E7BC(v27);
      v18 = v51;

      v22 = v50;
    }
  }

  v31 = v54;
  *(v0 + 48) = v14;
  *(v0 + 56) = v55;
  *(v0 + 64) = v18;
  *(v0 + 72) = v54;
  v32 = v53;
  if (sub_1001C6458())
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v33 = sub_1001C5148();
    sub_100083274(v33, qword_100281898);
    swift_unknownObjectRetain();
    v34 = sub_1001C5128();
    v35 = sub_1001C65B8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      result = swift_slowAlloc();
      v56[0] = result;
      *v36 = 134218242;
      if (__OFSUB__(v54 >> 1, v18))
      {
        __break(1u);
        return result;
      }

      *(v36 + 4) = (v54 >> 1) - v18;
      v52 = result;
      swift_unknownObjectRelease();
      *(v36 + 12) = 2082;
      v38 = sub_1001C6898();
      v40 = v18;
      v41 = sub_1001874E8(v38, v39, v56);
      v32 = v53;

      *(v36 + 14) = v41;
      v18 = v40;
      v31 = v54;
      _os_log_impl(&_mh_execute_header, v34, v35, "[UserNotifier] Removing %ld outdated requested notification(s): %{public}s", v36, 0x16u);
      sub_10008E7BC(v52);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v43 = *(v0 + 152);
    v42 = *(v0 + 160);
    v44 = *(v0 + 144);
    *(v0 + 80) = v14;
    *(v0 + 88) = v55;
    *(v0 + 96) = v18;
    *(v0 + 104) = v31;
    sub_10008BE38(v0 + 80, v42, v32, v43, v22, v45, v46, v47);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v48 = *(v0 + 136);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_10008A978(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *(_s21PriceDropNotificationVMa() - 8);
  v2[16] = v3;
  v4 = *(v3 + 64) + 15;
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10008AA34, 0, 0);
}

uint64_t sub_10008AA34()
{
  v1 = v0[15];
  v0[18] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[19] = v2;
  ObjectType = swift_getObjectType();
  v0[20] = ObjectType;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_10008AAF4;

  return sub_10008BF4C(ObjectType, v2);
}

uint64_t sub_10008AAF4(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_10008ABF4, 0, 0);
}

char *sub_10008ABF4()
{
  v57 = v0;
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 128);
    v56[0] = _swiftEmptyArrayStorage;
    sub_1000D3834(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v7 = *(v0 + 136);
      sub_10008E644(v5, v7);
      v8 = *v7;
      sub_10008E6A8(v7);
      v56[0] = v4;
      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        sub_1000D3834((v9 > 1), v10 + 1, 1);
        v4 = v56[0];
      }

      *(v4 + 2) = v10 + 1;
      *&v4[8 * v10 + 32] = v8;
      v5 += v6;
      --v2;
    }

    while (v2);
    v11 = *(v0 + 176);
  }

  else
  {
    v12 = *(v0 + 176);

    v4 = _swiftEmptyArrayStorage;
  }

  v13 = *(v0 + 112);

  v14 = sub_100102A08(v56, v4, v13);
  v54 = v16;
  v55 = v15;
  v18 = v17;

  v19 = v56[1];
  v20 = v56[2];
  v21 = v56[3];
  *(v0 + 16) = v56[0];
  *(v0 + 24) = v19;
  *(v0 + 32) = v20;
  *(v0 + 40) = v21;
  v53 = sub_100084528(&qword_10026F288, &qword_1001F0CB0);
  v22 = sub_1000885F4(&qword_10026F290, &qword_10026F288, &qword_1001F0CB0);
  if (sub_1001C6458())
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v23 = sub_1001C5148();
    sub_100083274(v23, qword_100281898);
    swift_unknownObjectRetain();
    v24 = sub_1001C5128();
    v25 = sub_1001C6588();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v24, v25))
    {
      v50 = v22;
      v26 = swift_slowAlloc();
      v51 = v18;
      v27 = swift_slowAlloc();
      v56[0] = v27;
      *v26 = 136446210;
      v28 = sub_1001C6898();
      v30 = sub_1001874E8(v28, v29, v56);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "[UserNotifier] Keeping existing delivered notification(s): %{public}s", v26, 0xCu);
      sub_10008E7BC(v27);
      v18 = v51;

      v22 = v50;
    }
  }

  v31 = v54;
  *(v0 + 48) = v14;
  *(v0 + 56) = v55;
  *(v0 + 64) = v18;
  *(v0 + 72) = v54;
  v32 = v53;
  if (sub_1001C6458())
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v33 = sub_1001C5148();
    sub_100083274(v33, qword_100281898);
    swift_unknownObjectRetain();
    v34 = sub_1001C5128();
    v35 = sub_1001C65B8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      result = swift_slowAlloc();
      v56[0] = result;
      *v36 = 134218242;
      if (__OFSUB__(v54 >> 1, v18))
      {
        __break(1u);
        return result;
      }

      *(v36 + 4) = (v54 >> 1) - v18;
      v52 = result;
      swift_unknownObjectRelease();
      *(v36 + 12) = 2082;
      v38 = sub_1001C6898();
      v40 = v18;
      v41 = sub_1001874E8(v38, v39, v56);
      v32 = v53;

      *(v36 + 14) = v41;
      v18 = v40;
      v31 = v54;
      _os_log_impl(&_mh_execute_header, v34, v35, "[UserNotifier] Removing %ld outdated delivered notification(s): %{public}s", v36, 0x16u);
      sub_10008E7BC(v52);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v43 = *(v0 + 152);
    v42 = *(v0 + 160);
    v44 = *(v0 + 144);
    *(v0 + 80) = v14;
    *(v0 + 88) = v55;
    *(v0 + 96) = v18;
    *(v0 + 104) = v31;
    sub_10008C3FC(v0 + 80, v42, v32, v43, v22, v45, v46, v47);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v48 = *(v0 + 136);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_10008B108(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(_s21PriceDropNotificationVMa() - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10008B1B0, 0, 0);
}

uint64_t sub_10008B1B0()
{
  v1 = v0[6];
  v0[10] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[11] = v2;
  ObjectType = swift_getObjectType();
  v0[12] = ObjectType;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10008B270;

  return sub_10008C510(ObjectType, v2);
}

uint64_t sub_10008B270(char a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_10008B370, 0, 0);
}

uint64_t sub_10008B370()
{
  v25 = v0;
  if (*(v0 + 128) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 112) = v1;
    *v1 = v0;
    v1[1] = sub_10008B5F8;
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = *(v0 + 80);
    v5 = *(v0 + 40);

    return sub_10008C750(v5, v2, v3);
  }

  else
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 64);
    v8 = *(v0 + 40);
    v9 = sub_1001C5148();
    sub_100083274(v9, qword_100281898);
    sub_10008E644(v8, v7);
    v10 = sub_1001C5128();
    v11 = sub_1001C65B8();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 64);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446210;
      *(v0 + 16) = *v13;
      sub_10008E704();
      v16 = sub_1001C61D8();
      v18 = v17;
      sub_10008E6A8(v13);
      v19 = sub_1001874E8(v16, v18, &v24);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "[UserNotifier] Unable to request notification: %{public}s, not authorized", v14, 0xCu);
      sub_10008E7BC(v15);
    }

    else
    {

      sub_10008E6A8(v13);
    }

    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 56);

    v23 = *(v0 + 8);

    return v23(0);
  }
}

uint64_t sub_10008B5F8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_10008B908;
  }

  else
  {
    v3 = sub_10008B70C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008B70C()
{
  v20 = v0;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[5];
  v3 = sub_1001C5148();
  sub_100083274(v3, qword_100281898);
  sub_10008E644(v2, v1);
  v4 = sub_1001C5128();
  v5 = sub_1001C65B8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v0[4] = *v7;
    sub_10008E704();
    v10 = sub_1001C61D8();
    v12 = v11;
    sub_10008E6A8(v7);
    v13 = sub_1001874E8(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[UserNotifier] Requested notification: %{public}s", v8, 0xCu);
    sub_10008E7BC(v9);
  }

  else
  {

    sub_10008E6A8(v7);
  }

  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];

  v17 = v0[1];

  return v17(1);
}

uint64_t sub_10008B908()
{
  v24 = v0;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[7];
  v3 = v0[5];
  v4 = sub_1001C5148();
  sub_100083274(v4, qword_100281898);
  sub_10008E644(v3, v2);
  swift_errorRetain();
  v5 = sub_1001C5128();
  v6 = sub_1001C6598();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[15];
  v9 = v0[7];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136446466;
    v0[3] = *v9;
    sub_10008E704();
    v13 = sub_1001C61D8();
    v15 = v14;
    sub_10008E6A8(v9);
    v16 = sub_1001874E8(v13, v15, &v23);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "[UserNotifier] Unable to request notification: %{public}s, error: %@", v10, 0x16u);
    sub_10008875C(v11, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v12);
  }

  else
  {

    sub_10008E6A8(v9);
  }

  v19 = v0[8];
  v18 = v0[9];
  v20 = v0[7];

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_10008BB8C(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_100084528(&qword_10026F2A8, &qword_1001F0CC0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v6 = _s21PriceDropNotificationVMa();
  v2[29] = v6;
  v7 = *(v6 - 8);
  v2[30] = v7;
  v8 = *(v7 + 64) + 15;
  v2[31] = swift_task_alloc();
  v9 = *(a2 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v2[32] = v11;
  *v11 = v2;
  v11[1] = sub_10008BD38;

  return v13(a1, a2);
}

uint64_t sub_10008BD38(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_10008EC88, 0, 0);
}

uint64_t sub_10008BE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_100089DC8(sub_10008EC8C, 0, a3, &type metadata for UserNotification.ID, &type metadata for Never, a5, &protocol witness table for Never, a8);
  v10 = *(a4 + 16);
  v11 = sub_100084528(&qword_10026F298, &qword_1001F0CB8);
  v12 = sub_1000885F4(&qword_10026F2A0, &qword_10026F298, &qword_1001F0CB8);
  v10(&v14, v11, v12, a2, a4);
}

uint64_t sub_10008BF4C(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_100084528(&qword_10026F2A8, &qword_1001F0CC0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v6 = _s21PriceDropNotificationVMa();
  v2[29] = v6;
  v7 = *(v6 - 8);
  v2[30] = v7;
  v8 = *(v7 + 64) + 15;
  v2[31] = swift_task_alloc();
  v9 = *(a2 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v2[32] = v11;
  *v11 = v2;
  v11[1] = sub_10008C0F8;

  return v13(a1, a2);
}

uint64_t sub_10008C0F8(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_10008C1F8, 0, 0);
}

void sub_10008C1F8()
{
  v1 = *(v0 + 264);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 240);
    v5 = v1 + 32;
    v6 = _swiftEmptyArrayStorage;
    while (v3 < *(v1 + 16))
    {
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      v10 = *(v5 + 16);
      v9 = *(v5 + 32);
      *(v0 + 16) = *v5;
      *(v0 + 32) = v10;
      *(v0 + 48) = v9;
      v12 = *(v5 + 64);
      v11 = *(v5 + 80);
      v13 = *(v5 + 48);
      *(v0 + 112) = *(v5 + 96);
      *(v0 + 80) = v12;
      *(v0 + 96) = v11;
      *(v0 + 64) = v13;
      sub_10008EA78(v0 + 16, v0 + 120);
      sub_10008CCD8(v0 + 16, v8);
      if ((*(v4 + 48))(v8, 1, v7) == 1)
      {
        sub_10008875C(*(v0 + 224), &qword_10026F2A8, &qword_1001F0CC0);
      }

      else
      {
        sub_10008E758(*(v0 + 224), *(v0 + 248));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000AD8C4(0, v6[2] + 1, 1, v6);
        }

        v15 = v6[2];
        v14 = v6[3];
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1000AD8C4(v14 > 1, v15 + 1, 1, v6);
        }

        v16 = *(v0 + 248);
        v6[2] = v15 + 1;
        sub_10008E758(v16, v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15);
      }

      ++v3;
      v5 += 104;
      if (v2 == v3)
      {
        v17 = *(v0 + 264);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_14:
    v18 = *(v0 + 248);
    v19 = *(v0 + 224);

    v20 = *(v0 + 8);

    v20(v6);
  }
}

uint64_t sub_10008C3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_100089DC8(sub_10008EC8C, 0, a3, &type metadata for UserNotification.ID, &type metadata for Never, a5, &protocol witness table for Never, a8);
  v10 = *(a4 + 40);
  v11 = sub_100084528(&qword_10026F298, &qword_1001F0CB8);
  v12 = sub_1000885F4(&qword_10026F2A0, &qword_10026F298, &qword_1001F0CB8);
  v10(&v14, v11, v12, a2, a4);
}

uint64_t sub_10008C510(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10008C628;

  return v9(a1, a2);
}

uint64_t sub_10008C628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v8 = *v3;

  v9 = (a3 - 1) < 2;
  if (a2 != 2)
  {
    v9 = 0;
  }

  v10 = (a1 - 2) <= 2 && v9;
  v11 = *(v8 + 8);

  return v11(v10);
}

uint64_t sub_10008C750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[46] = a3;
  v4[47] = v3;
  v4[44] = a1;
  v4[45] = a2;
  v5 = _s21PriceDropNotificationVMa();
  v4[48] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[49] = swift_task_alloc();

  return _swift_task_switch(sub_10008C7E8, 0, 0);
}

uint64_t sub_10008C7E8()
{
  v1 = *(v0 + 392);
  sub_10008E644(*(v0 + 352), v1);
  *(v0 + 344) = *v1;
  sub_10008E704();
  v33._countAndFlagsBits = sub_1001C61D8();
  sub_1001C6138(v33);

  v2 = v1[2];
  v3 = v1[4];
  v28 = v1[3];
  v29 = v1[1];
  v4 = v1[5];
  v5 = v1[6];
  v27 = v4;
  v6 = qword_10026EBB0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 384);
  v8 = *(v0 + 392);
  v31 = *(v0 + 368);
  v9 = *algn_10026F1B8;
  v26 = qword_10026F1B0;
  sub_100084528(&qword_100272570, &qword_1001F0CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  *(v0 + 328) = sub_1001C6018();
  *(v0 + 336) = v11;

  sub_1001C6968();
  v12 = v8 + *(v7 + 32);
  v13 = sub_1001C4A58();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v13;
  *(inited + 80) = v14;
  v15 = sub_100118A6C(inited);
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_10026F280, &qword_1001F5620);
  sub_10008E6A8(v8);
  *(v0 + 16) = 0xD000000000000035;
  *(v0 + 24) = 0x80000001001FE420;
  *(v0 + 32) = v29;
  *(v0 + 40) = v2;
  *(v0 + 48) = v28;
  *(v0 + 56) = v3;
  *(v0 + 64) = v27;
  *(v0 + 72) = v5;
  *(v0 + 80) = v26;
  *(v0 + 88) = v9;
  *(v0 + 96) = 0xD00000000000002ELL;
  *(v0 + 104) = 0x80000001001FE460;
  v16 = *(v0 + 80);
  *(v0 + 200) = *(v0 + 96);
  *(v0 + 184) = v16;
  v17 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v18 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v18;
  *(v0 + 112) = v15;
  *(v0 + 216) = v15;
  *(v0 + 152) = v17;
  v19 = *(v31 + 24);
  v30 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  *(v0 + 400) = v21;
  *v21 = v0;
  v21[1] = sub_10008CB1C;
  v22 = *(v0 + 368);
  v23 = *(v0 + 376);
  v24 = *(v0 + 360);

  return v30(v0 + 120, v24, v22);
}

uint64_t sub_10008CB1C()
{
  v2 = *(*v1 + 400);
  v3 = *v1;
  v3[51] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10008CC68, 0, 0);
  }

  else
  {
    v4 = v3[49];
    sub_10008EA24((v3 + 2));

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10008CC68()
{
  v1 = v0[49];
  sub_10008EA24((v0 + 2));

  v2 = v0[1];
  v3 = v0[51];

  return v2();
}

uint64_t sub_10008CCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v47 - v6;
  v8 = sub_1001C4B28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  v15 = sub_10008E808(v14, v13);
  if (v16)
  {
    sub_10008EA24(a1);
    goto LABEL_21;
  }

  v48 = a2;
  v47 = v15;
  v54[0] = *(a1 + 64);
  v17 = v54[0];
  v18 = qword_10026EBB0;

  if (v18 != -1)
  {
    swift_once();
  }

  if (v17 == xmmword_10026F1B0)
  {
    sub_10008EAD4(v54);
  }

  else
  {
    v19 = sub_1001C6D08();
    sub_10008EAD4(v54);
    if ((v19 & 1) == 0)
    {
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v32 = sub_1001C5148();
      sub_100083274(v32, qword_100281898);

      sub_10008EA78(a1, v51);
      v33 = sub_1001C5128();
      v34 = sub_1001C6598();

      sub_10008EA24(a1);
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v51[0] = swift_slowAlloc();
        *v35 = 136446466;
        v36 = sub_1001874E8(v14, v13, v51);

        *(v35 + 4) = v36;
        *(v35 + 12) = 2082;

        sub_10008EA24(a1);
        v37 = sub_1001874E8(v17, *(&v17 + 1), v51);
        sub_10008EAD4(v54);
        *(v35 + 14) = v37;
        v38 = "[PriceDropNotification] notification: %{public}s has invalid category ID: %{public}s";
LABEL_30:
        _os_log_impl(&_mh_execute_header, v33, v34, v38, v35, 0x16u);
        swift_arrayDestroy();

LABEL_32:

        a2 = v48;
        goto LABEL_33;
      }

LABEL_31:

      sub_10008EA24(a1);
      goto LABEL_32;
    }
  }

  v53 = *(a1 + 80);
  v20 = v53;
  if (__PAIR128__(0x80000001001FE460, 0xD00000000000002ELL) != v53 && (sub_1001C6D08() & 1) == 0)
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v39 = sub_1001C5148();
    sub_100083274(v39, qword_100281898);

    sub_10008EA78(a1, v51);
    v33 = sub_1001C5128();
    v34 = sub_1001C6598();

    sub_10008EA24(a1);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v35 = 136446466;
      v40 = sub_1001874E8(v14, v13, v51);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2082;

      sub_10008EA24(a1);
      v41 = sub_1001874E8(v20, *(&v20 + 1), v51);
      sub_10008EB28(&v53);
      *(v35 + 14) = v41;
      v38 = "[PriceDropNotification] notification: %{public}s has invalid thread ID: %{public}s";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v21 = *(a1 + 96);
  *&v52 = sub_1001C6018();
  *(&v52 + 1) = v22;
  sub_1001C6968();
  if (!*(v21 + 16) || (v23 = sub_100187A1C(v51), (v24 & 1) == 0))
  {
    sub_10008EA24(a1);
    sub_10008EB7C(v51);
    a2 = v48;
    goto LABEL_16;
  }

  sub_10008EBD0(*(v21 + 56) + 32 * v23, v50);
  sub_10008EB7C(v51);
  v25 = swift_dynamicCast();
  a2 = v48;
  if ((v25 & 1) == 0)
  {
    sub_10008EA24(a1);
    goto LABEL_16;
  }

  sub_1001C4B08();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10008EA24(a1);
    sub_10008875C(v7, &unk_10026EF10, &unk_1001F1FA0);
LABEL_16:
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v26 = sub_1001C5148();
    sub_100083274(v26, qword_100281898);

    v27 = sub_1001C5128();
    v28 = sub_1001C6598();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51[0] = v30;
      *v29 = 136446210;
      v31 = sub_1001874E8(v14, v13, v51);

      *(v29 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "[UserNotifier] notification request: %{public}s does not contain a (valid) deep-link URL", v29, 0xCu);
      sub_10008E7BC(v30);

LABEL_33:
      v42 = _s21PriceDropNotificationVMa();
      return (*(*(v42 - 8) + 56))(a2, 1, 1, v42);
    }

LABEL_21:

    goto LABEL_33;
  }

  v44 = *(v9 + 32);
  v44(v12, v7, v8);
  v45 = *(a1 + 32);
  *v51 = *(a1 + 16);
  v50[0] = v45;
  v52 = *(a1 + 48);
  sub_10008EC2C(v51, v49);
  sub_10008EC2C(v50, v49);
  sub_10008EC2C(&v52, v49);
  sub_10008EA24(a1);
  *a2 = v47;
  *(a2 + 8) = *v51;
  *(a2 + 24) = v50[0];
  *(a2 + 40) = v52;
  v46 = _s21PriceDropNotificationVMa();
  v44((a2 + *(v46 + 32)), v12, v8);
  return (*(*(v46 - 8) + 56))(a2, 0, 1, v46);
}

uint64_t sub_10008D524@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_10008E704();
  v5._countAndFlagsBits = sub_1001C61D8();
  sub_1001C6138(v5);

  *a2 = 0xD000000000000035;
  a2[1] = 0x80000001001FE420;
  return result;
}

Swift::Int sub_10008D5BC(void **a1)
{
  v2 = *(_s21PriceDropNotificationVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AAC74(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10008D664(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10008D664(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001C6CB8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s21PriceDropNotificationVMa();
        v6 = sub_1001C62D8();
        v6[2] = v5;
      }

      v7 = *(_s21PriceDropNotificationVMa() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10008D988(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10008D790(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10008D790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = _s21PriceDropNotificationVMa();
  v8 = *(*(v36 - 8) + 64);
  v9 = __chkstk_darwin(v36);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v28 - v13);
  result = __chkstk_darwin(v12);
  v18 = (&v28 - v17);
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v35 = v19;
    v29 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v33 = v21;
    v34 = a3;
    v31 = v24;
    v32 = v23;
    while (1)
    {
      sub_10008E644(v24, v18);
      sub_10008E644(v21, v14);
      v25 = *v18;
      v26 = *v14;
      sub_10008E6A8(v14);
      result = sub_10008E6A8(v18);
      if (v25 >= v26)
      {
LABEL_4:
        a3 = v34 + 1;
        v21 = v33 + v29;
        v23 = v32 - 1;
        v24 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_10008E758(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10008E758(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10008D988(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v107 = a1;
  v120 = _s21PriceDropNotificationVMa();
  v114 = *(v120 - 8);
  v7 = *(v114 + 64);
  v8 = __chkstk_darwin(v120);
  v110 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v119 = &v103 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = (&v103 - v13);
  result = __chkstk_darwin(v12);
  v17 = (&v103 - v16);
  v116 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_98:
    v4 = *v107;
    if (!*v107)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v14 = v118;
    if ((result & 1) == 0)
    {
LABEL_130:
      result = sub_1001A97CC(v20);
      v20 = result;
    }

    v121 = v20;
    v99 = *(v20 + 2);
    if (v99 >= 2)
    {
      while (*v116)
      {
        v100 = *&v20[16 * v99];
        v101 = *&v20[16 * v99 + 24];
        sub_10008E1C8(*v116 + *(v114 + 72) * v100, *v116 + *(v114 + 72) * *&v20[16 * v99 + 16], *v116 + *(v114 + 72) * v101, v4);
        if (v14)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1001A97CC(v20);
        }

        if (v99 - 2 >= *(v20 + 2))
        {
          goto LABEL_124;
        }

        v102 = &v20[16 * v99];
        *v102 = v100;
        *(v102 + 1) = v101;
        v121 = v20;
        result = sub_1001A9740(v99 - 1);
        v20 = v121;
        v99 = *(v121 + 2);
        if (v99 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v105 = a4;
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v111 = v14;
  while (1)
  {
    v21 = v19;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v22 = *v116;
      v23 = *(v114 + 72);
      v4 = *v116 + v23 * (v19 + 1);
      sub_10008E644(v4, v17);
      sub_10008E644(v22 + v23 * v19, v14);
      v24 = *v17;
      v112 = *v14;
      v113 = v24;
      sub_10008E6A8(v14);
      result = sub_10008E6A8(v17);
      v106 = v19;
      v25 = v19 + 2;
      v115 = v23;
      v26 = v22 + v23 * (v19 + 2);
      while (v18 != v25)
      {
        LODWORD(v117) = v113 < v112;
        sub_10008E644(v26, v17);
        v27 = v17;
        v28 = v111;
        sub_10008E644(v4, v111);
        v29 = *v27;
        v30 = v18;
        v31 = v20;
        v32 = *v28;
        v33 = v28;
        v17 = v27;
        sub_10008E6A8(v33);
        result = sub_10008E6A8(v27);
        v34 = v29 < v32;
        v20 = v31;
        v18 = v30;
        v35 = !v34;
        ++v25;
        v26 += v115;
        v4 += v115;
        if (((v117 ^ v35) & 1) == 0)
        {
          v18 = v25 - 1;
          break;
        }
      }

      v14 = v111;
      v21 = v106;
      if (v113 < v112)
      {
        if (v18 < v106)
        {
          goto LABEL_127;
        }

        if (v106 < v18)
        {
          v104 = v20;
          v36 = v115 * (v18 - 1);
          v37 = v18 * v115;
          v38 = v18;
          v39 = v106 * v115;
          do
          {
            if (v21 != --v38)
            {
              v117 = v38;
              v4 = *v116;
              if (!*v116)
              {
                goto LABEL_133;
              }

              sub_10008E758(v4 + v39, v110);
              if (v39 < v36 || v4 + v39 >= v4 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
                v38 = v117;
              }

              else
              {
                v38 = v117;
                if (v39 != v36)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_10008E758(v110, v4 + v36);
            }

            ++v21;
            v36 -= v115;
            v37 -= v115;
            v39 += v115;
          }

          while (v21 < v38);
          v20 = v104;
          v21 = v106;
        }
      }
    }

    v40 = v116[1];
    if (v18 < v40)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_126;
      }

      if (v18 - v21 < v105)
      {
        if (__OFADD__(v21, v105))
        {
          goto LABEL_128;
        }

        if (v21 + v105 >= v40)
        {
          v41 = v116[1];
        }

        else
        {
          v41 = v21 + v105;
        }

        if (v41 < v21)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v18 != v41)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AD9F0(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v43 = *(v20 + 2);
    v42 = *(v20 + 3);
    v4 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_1000AD9F0((v42 > 1), v43 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v4;
    v44 = &v20[16 * v43];
    *(v44 + 4) = v21;
    *(v44 + 5) = v19;
    v45 = *v107;
    if (!*v107)
    {
      goto LABEL_135;
    }

    if (v43)
    {
      while (1)
      {
        v46 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v47 = *(v20 + 4);
          v48 = *(v20 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_55:
          if (v50)
          {
            goto LABEL_114;
          }

          v63 = &v20[16 * v4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_117;
          }

          v69 = &v20[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_121;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v73 = &v20[16 * v4];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_69:
        if (v68)
        {
          goto LABEL_116;
        }

        v76 = &v20[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_119;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_76:
        v84 = v46 - 1;
        if (v46 - 1 >= v4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v116)
        {
          goto LABEL_132;
        }

        v85 = *&v20[16 * v84 + 32];
        v4 = *&v20[16 * v46 + 40];
        v86 = v118;
        sub_10008E1C8(*v116 + *(v114 + 72) * v85, *v116 + *(v114 + 72) * *&v20[16 * v46 + 32], *v116 + *(v114 + 72) * v4, v45);
        v118 = v86;
        if (v86)
        {
        }

        if (v4 < v85)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1001A97CC(v20);
        }

        if (v84 >= *(v20 + 2))
        {
          goto LABEL_111;
        }

        v87 = &v20[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v4;
        v121 = v20;
        result = sub_1001A9740(v46);
        v20 = v121;
        v4 = *(v121 + 2);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v20[16 * v4 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_112;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_113;
      }

      v58 = &v20[16 * v4];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_115;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_118;
      }

      if (v62 >= v54)
      {
        v80 = &v20[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_122;
        }

        if (v49 < v83)
        {
          v46 = v4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v18 = v116[1];
    if (v19 >= v18)
    {
      goto LABEL_98;
    }
  }

  v104 = v20;
  v88 = v18;
  v89 = *v116;
  v90 = *(v114 + 72);
  v91 = *v116 + v90 * (v88 - 1);
  v92 = v21;
  v93 = -v90;
  v106 = v92;
  v94 = v92 - v88;
  v117 = v88;
  v108 = v90;
  v109 = v41;
  v4 = v89 + v88 * v90;
LABEL_88:
  v112 = v4;
  v113 = v94;
  v115 = v91;
  while (1)
  {
    sub_10008E644(v4, v17);
    sub_10008E644(v91, v14);
    v95 = *v17;
    v96 = *v14;
    sub_10008E6A8(v14);
    result = sub_10008E6A8(v17);
    if (v95 >= v96)
    {
LABEL_87:
      v19 = v109;
      v91 = v115 + v108;
      v94 = v113 - 1;
      v4 = v112 + v108;
      if (++v117 != v109)
      {
        goto LABEL_88;
      }

      v20 = v104;
      v21 = v106;
      if (v109 < v106)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v89)
    {
      break;
    }

    v97 = v119;
    sub_10008E758(v4, v119);
    swift_arrayInitWithTakeFrontToBack();
    sub_10008E758(v97, v91);
    v91 += v93;
    v4 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_10008E1C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = _s21PriceDropNotificationVMa();
  v8 = *(*(v43 - 8) + 64);
  v9 = __chkstk_darwin(v43);
  v45 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v9);
  v44 = (&v37 - v12);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = -v14;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        while (1)
        {
          if (v27 <= a1)
          {
            v48 = v27;
            v46 = v37;
            goto LABEL_58;
          }

          v29 = a3;
          v38 = v24;
          a3 += v25;
          v30 = v26 + v25;
          v31 = v26 + v25;
          v32 = v44;
          sub_10008E644(v31, v44);
          v33 = v28;
          v34 = v45;
          sub_10008E644(v28, v45);
          v35 = *v32;
          v36 = *v34;
          sub_10008E6A8(v34);
          sub_10008E6A8(v32);
          if (v35 < v36)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v33;
            v25 = v39;
            a1 = v40;
          }

          else
          {
            v28 = v33;
            v25 = v39;
            a1 = v40;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v30;
          v27 = v42;
          if (v30 <= v41)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        if (v29 < v42 || a3 >= v42)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          a2 = v33;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (v29 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v41);
    }

LABEL_57:
    v48 = a2;
    v46 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v17;
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v44;
        sub_10008E644(a2, v44);
        v21 = v45;
        sub_10008E644(a4, v45);
        v22 = *v20;
        v23 = *v21;
        sub_10008E6A8(v21);
        sub_10008E6A8(v20);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_58:
  sub_1001A97E0(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_10008E644(uint64_t a1, uint64_t a2)
{
  v4 = _s21PriceDropNotificationVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E6A8(uint64_t a1)
{
  v2 = _s21PriceDropNotificationVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10008E704()
{
  result = qword_10026F278;
  if (!qword_10026F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F278);
  }

  return result;
}

uint64_t sub_10008E758(uint64_t a1, uint64_t a2)
{
  v4 = _s21PriceDropNotificationVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E7BC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10008E808(uint64_t a1, unint64_t a2)
{
  v19._object = 0x80000001001FE420;
  v19._countAndFlagsBits = 0xD000000000000035;
  if (!sub_1001C61B8(v19))
  {
    goto LABEL_9;
  }

  v4 = sub_1001C60F8();
  sub_10016A8A8(v4, a1, a2);

  v5 = sub_1001C60B8();
  v7 = v6;

  v8 = sub_1000D9058(v5, v7);
  if ((v9 & 1) == 0)
  {
    v16 = v8;

    return v16;
  }

  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v10 = sub_1001C5148();
  sub_100083274(v10, qword_100281898);

  v11 = sub_1001C5128();
  v12 = sub_1001C6598();

  if (!os_log_type_enabled(v11, v12))
  {

LABEL_9:

    return 0;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v18 = v14;
  *v13 = 136446210;
  v15 = sub_1001874E8(a1, a2, &v18);

  *(v13 + 4) = v15;
  _os_log_impl(&_mh_execute_header, v11, v12, "[UserNotifier] notification request: %{public}s has correct prefix, but does not contain a (valid) suffix", v13, 0xCu);
  sub_10008E7BC(v14);

  return 0;
}

uint64_t sub_10008EBD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

NSObject *sub_10008ECA4()
{
  v1 = OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService;
  v2 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  }

  else
  {
    *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_serviceDirty) = 1;
    v4 = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:"com.apple.ibooks.ReadingHistoryService.lifetime"];
    v5 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCloudDataManager);
    v6 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCoherenceContext);
    v7 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_transactionProvider);
    v8 = objc_allocWithZone(sub_100084528(&unk_10026F810, &qword_1001F3220));
    v9 = sub_100099410(v5, v6, v7, v8);
    v10 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_readingGoalsService);
    v11 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryServiceContext);
    v12 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_viewStateChangeHandler);
    objc_allocWithZone(type metadata accessor for ReadingHistoryService());
    swift_unknownObjectRetain();
    v13 = v10;

    v14 = v4;
    v15 = v4;
    v16 = v0;
    v17 = sub_1000F1C1C(v13, v9, v11, v15, v12);

    swift_unknownObjectRelease();
    v18 = *(v16 + v1);
    *(v16 + v1) = v17;
    v3 = v17;

    ReadingHistoryService.setEnableCloudSync(_:)(*(v16 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceEnableCloudSync));
    v2 = 0;
  }

  v19 = v2;
  return v3;
}

char *ReadingHistoryServiceManager.init(readingGoalsService:transactionProvider:viewStateChangeHandler:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v62 = a3;
  v58 = a1;
  v59 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_1001C6638();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_1001C5688();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v55 = sub_1001C6668();
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v55);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCoherenceContext;
  v57 = OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCoherenceContext;
  *&v3[v13] = sub_10008366C();
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService] = 0;
  v3[OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceEnableCloudSync] = 0;
  v56 = OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue;
  v61 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v52[1] = "al cache at %@ error=%@";
  v54 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v53 = *(v9 + 104);
  v53(v12);
  sub_1001C5668();
  aBlock = &_swiftEmptyArrayStorage;
  v52[0] = sub_10009A514(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  v14 = sub_1001C66A8();
  v15 = v55;
  *&v3[v56] = v14;
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount] = 0;
  v56 = OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCountAccessQueue;
  (v53)(v12, v54, v15);
  sub_1001C5668();
  aBlock = &_swiftEmptyArrayStorage;
  sub_1001C68C8();
  *&v3[v56] = sub_1001C66A8();
  v3[OBJC_IVAR___BDSReadingHistoryServiceManager_serviceDirty] = 0;
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager_teardownServiceTimer] = 0;
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager_teardownServiceTimout] = 0x403E000000000000;
  v17 = v58;
  v16 = v59;
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager_readingGoalsService] = v58;
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager_transactionProvider] = v16;
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager_viewStateChangeHandler] = v62;
  v18 = *&v3[v57];
  v19 = objc_opt_self();
  swift_unknownObjectRetain();
  v20 = v18;
  v21 = v16;
  v61 = v17;
  v22 = [v19 sharedInstance];
  sub_100098D64();
  v24 = v23;
  aBlock = sub_1001C69E8();
  v64 = v25;
  v71._countAndFlagsBits = 45;
  v71._object = 0xE100000000000000;
  sub_1001C6138(v71);
  v70 = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v72._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v72);

  v26 = objc_allocWithZone(BCCloudDataSource);
  v27 = sub_1001C5FE8();

  v28 = [v26 initWithManagedObjectModel:v24 nameOnDisk:v27];

  v29 = objc_allocWithZone(sub_100084528(&qword_10026F338, &unk_1001F0D10));
  *&v4[OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCloudDataManager] = sub_100099F0C(v22, v20, v28, v21, v29);
  type metadata accessor for ReadingHistoryServiceContext();
  v30 = swift_allocObject();
  v30[2] = 0xD000000000000029;
  v30[3] = 0x80000001001FE5F0;
  v30[4] = 0xD000000000000029;
  v30[5] = 0x80000001001FE620;
  v30[6] = 0xD000000000000031;
  v30[7] = 0x80000001001FE650;
  v30[8] = v21;
  *&v4[OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryServiceContext] = v30;
  v69.receiver = v4;
  v69.super_class = ObjectType;
  v31 = v21;
  v32 = objc_msgSendSuper2(&v69, "init");
  v33 = *&v32[OBJC_IVAR___BDSReadingHistoryServiceManager_transactionProvider];
  v34 = v32;
  [v33 setDelegate:v34];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = objc_allocWithZone(BUCoalescingCallBlock);
  v67 = sub_10009A418;
  v68 = v35;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_1000991BC;
  v66 = &unk_100242578;
  v37 = _Block_copy(&aBlock);
  v38 = v34;

  v39 = sub_1001C5FE8();
  v40 = [v36 initWithNotifyBlock:v37 blockDescription:v39];

  _Block_release(v37);

  [v40 setCoalescingDelay:30.0];
  v41 = *&v38[OBJC_IVAR___BDSReadingHistoryServiceManager_teardownServiceTimer];
  *&v38[OBJC_IVAR___BDSReadingHistoryServiceManager_teardownServiceTimer] = v40;
  v42 = v40;

  v43 = OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCloudDataManager;
  *(*&v38[OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCloudDataManager] + qword_100281A00 + 8) = &off_100242848;
  swift_unknownObjectWeakAssign();

  v44 = *&v38[v43];
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v44;

  v47 = *&v46[qword_100273F40];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  v49[2] = v48;
  v49[3] = sub_10009A438;
  v49[4] = v45;
  v67 = sub_10009A440;
  v68 = v49;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_1000982D4;
  v66 = &unk_1002425F0;
  v50 = _Block_copy(&aBlock);
  swift_retain_n();

  [v47 cloudDataWithPredicate:0 sortDescriptors:0 completion:v50];
  _Block_release(v50);

  swift_unknownObjectRelease();

  return v38;
}

uint64_t sub_10008F768(uint64_t (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10008F7D8();
  }

  return a1();
}

uint64_t sub_10008F7D8()
{
  v19 = 0;
  v1 = *&v0[OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCountAccessQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v19;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10009B1A4;
  *(v3 + 24) = v2;
  v17 = sub_10009B264;
  v18 = v3;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000906F4;
  v16 = &unk_1002431B8;
  v4 = _Block_copy(&aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v19 == 1)
  {
    sub_1001C65B8();
    if (qword_10026EBE8 == -1)
    {
LABEL_4:
      sub_1001C5118();
    }

LABEL_8:
    swift_once();
    goto LABEL_4;
  }

  v7 = *&v5[OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10009B1BC;
  *(v9 + 24) = v8;
  v17 = sub_10009B264;
  v18 = v9;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000906F4;
  v16 = &unk_100243230;
  v10 = _Block_copy(&aBlock);
  v11 = v5;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10008FAE4(void *a1)
{
  v2 = sub_1001C5648();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5688();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = (v21 - v14);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a1)
    {
      v18 = a1;
      sub_1000BC0EC(v15);
      if (sub_10008FFA8(v15, 0xD000000000000014, 0x80000001001FF010))
      {
        v25 = *&v17[OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue];
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        aBlock[4] = sub_10009B1C4;
        aBlock[5] = v19;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000DD4AC;
        aBlock[3] = &unk_100243280;
        v23 = _Block_copy(aBlock);
        v24 = v17;
        sub_1001C5668();
        v26 = &_swiftEmptyArrayStorage;
        v21[1] = sub_10009A514(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
        sub_100084528(&unk_10026F360, &qword_1001F13F0);
        v22 = v18;
        sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
        sub_1001C68C8();
        v20 = v23;
        sub_1001C6698();
        _Block_release(v20);

        (*(v3 + 8))(v6, v2);
        (*(v8 + 8))(v11, v7);
        sub_10008875C(v15, &unk_10026F410, &unk_1001F0E40);
      }

      else
      {
        sub_10008875C(v15, &unk_10026F410, &unk_1001F0E40);
      }
    }

    else
    {
      sub_1001C6598();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      sub_1001C5118();
    }
  }

  else
  {
    sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
  }
}

uint64_t sub_10008FFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v6 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = (&v47 - v14);
  v16 = __chkstk_darwin(v13);
  v18 = (&v47 - v17);
  __chkstk_darwin(v16);
  v19 = *(v3 + OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryServiceContext);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v52 = &v47 - v22;
  sub_10012FA70(&v47 - v22);
  v49 = a1;
  sub_10009ADF0(a1, v18, &unk_10026F410, &unk_1001F0E40);
  v23 = type metadata accessor for CRDTModelRevisionInfo();
  v24 = *(*(v23 - 8) + 48);
  if (v24(v18, 1, v23) == 1)
  {
    sub_10008875C(v18, &unk_10026F410, &unk_1001F0E40);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = *v18;
    v26 = v18[1];

    sub_10009B0DC(v18, type metadata accessor for CRDTModelRevisionInfo);
  }

  sub_10009ADF0(v52, v15, &unk_10026F410, &unk_1001F0E40);
  if (v24(v15, 1, v23) == 1)
  {
    sub_10008875C(v15, &unk_10026F410, &unk_1001F0E40);
    if (!v26)
    {
      goto LABEL_18;
    }

LABEL_16:

    v31 = 1;
    goto LABEL_19;
  }

  v28 = *v15;
  v27 = v15[1];

  sub_10009B0DC(v15, type metadata accessor for CRDTModelRevisionInfo);
  if (v26)
  {
    if (v27)
    {
      if (v25 != v28 || v26 != v27)
      {
        v30 = sub_1001C6D08();

        v31 = v30 ^ 1;
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v27)
  {
    goto LABEL_16;
  }

LABEL_18:
  v31 = 0;
LABEL_19:
  v48 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v47 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1001F0CF0;
  *(v32 + 56) = &type metadata for String;
  v33 = sub_100084570();
  *(v32 + 64) = v33;
  *(v32 + 32) = a2;
  v34 = v49;
  *(v32 + 40) = v50;
  *(v32 + 96) = &type metadata for Bool;
  *(v32 + 104) = &protocol witness table for Bool;
  *(v32 + 72) = v31 & 1;
  sub_10009ADF0(v34, v12, &unk_10026F410, &unk_1001F0E40);
  v35 = v24(v12, 1, v23);

  if (v35 == 1)
  {
    sub_10008875C(v12, &unk_10026F410, &unk_1001F0E40);
    v36 = (v32 + 112);
    *(v32 + 136) = &type metadata for String;
    *(v32 + 144) = v33;
  }

  else
  {
    v37 = CRDTModelRevisionInfo.description.getter();
    v39 = v38;
    sub_10009B0DC(v12, type metadata accessor for CRDTModelRevisionInfo);
    v36 = (v32 + 112);
    *(v32 + 136) = &type metadata for String;
    *(v32 + 144) = v33;
    if (v39)
    {
      *v36 = v37;
      goto LABEL_26;
    }
  }

  *v36 = 7104878;
  v39 = 0xE300000000000000;
LABEL_26:
  v41 = v51;
  v40 = v52;
  *(v32 + 120) = v39;
  sub_10009ADF0(v40, v41, &unk_10026F410, &unk_1001F0E40);
  if (v24(v41, 1, v23) == 1)
  {
    sub_10008875C(v41, &unk_10026F410, &unk_1001F0E40);
    v42 = (v32 + 152);
    *(v32 + 176) = &type metadata for String;
    *(v32 + 184) = v33;
LABEL_30:
    *v42 = 7104878;
    v45 = 0xE300000000000000;
    goto LABEL_31;
  }

  v43 = CRDTModelRevisionInfo.description.getter();
  v45 = v44;
  sub_10009B0DC(v41, type metadata accessor for CRDTModelRevisionInfo);
  v42 = (v32 + 152);
  *(v32 + 176) = &type metadata for String;
  *(v32 + 184) = v33;
  if (!v45)
  {
    goto LABEL_30;
  }

  *v42 = v43;
LABEL_31:
  *(v32 + 160) = v45;
  sub_1001C5118();

  sub_10008875C(v52, &unk_10026F410, &unk_1001F0E40);
  return v31 & 1;
}

id ReadingHistoryServiceManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_10008F7D8();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10009071C(uint64_t a1)
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
  v2 = OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService;
  v3 = *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  v4 = v3;
  if (v3)
  {
    v3 = *&v3[OBJC_IVAR___BDSReadingHistoryService_lifetimeTransaction];
  }

  *(a1 + v2) = 0;
}

void ReadingHistoryServiceManager.clearDate(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v7 = sub_1001C5118();
  v8 = *(v3 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  __chkstk_darwin(v7);
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  ReadingHistoryService.clearDate(_:completionHandler:)(a1, a2, a3);
}

void sub_100090EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v10 = sub_1001C5118();
  v11 = *(v6 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  __chkstk_darwin(v10);
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  a6(a1, a2);
}

uint64_t ReadingHistoryServiceManager.handleSyncFileChange(syncVersionInfo:updateInfo:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (v20 - v11);
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v13 = sub_1001C5118();
  v14 = *(v4 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  __chkstk_darwin(v13);
  v20[-2] = v4;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  v15 = v20[1];
  if (!a1)
  {
    v18 = type metadata accessor for CRDTModelSyncVersion();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v16 = a1;
  static CRDTModelSyncVersion.fromInfo(_:)(v16, v12);

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v17 = [a2 update];
LABEL_8:
  ReadingHistoryService.handleSyncFileChange(syncVersion:update:completionHandler:)(v12, v17, a3, a4);

  return sub_10008875C(v12, &unk_10026F350, &qword_1001F31E0);
}

void ReadingHistoryServiceManager.increment(date:by:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v9 = sub_1001C5118();
  v10 = *(v4 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  __chkstk_darwin(v9);
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  ReadingHistoryService.increment(date:by:completionHandler:)(a1, a2, a3, a4);
}

uint64_t ReadingHistoryServiceManager.readingHistoryStateInfo(rangeStart:rangeEnd:currentTime:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a4;
  v67 = a5;
  v64 = a2;
  v65 = a3;
  v7 = sub_1001C5648();
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  __chkstk_darwin(v7);
  v71 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C5688();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  __chkstk_darwin(v10);
  v68 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1001C4CA8();
  v13 = *(v61 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v61);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v60 = &v56 - v18;
  v62 = v19;
  __chkstk_darwin(v17);
  v74 = &v56 - v20;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v21 = sub_1001C5118();
  v22 = *(v5 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  __chkstk_darwin(v21);
  *(&v56 - 2) = v5;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  v23 = aBlock[0];
  sub_1001C65B8();
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1001F0680;
  v25 = sub_1001C4C08();
  v27 = v26;
  *(v24 + 56) = &type metadata for String;
  v28 = sub_100084570();
  v57 = a1;
  v29 = v28;
  *(v24 + 64) = v28;
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  v30 = v64;
  v31 = sub_1001C4C08();
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v29;
  *(v24 + 72) = v31;
  *(v24 + 80) = v32;
  v33 = v65;
  v34 = sub_1001C4C08();
  *(v24 + 136) = &type metadata for String;
  *(v24 + 144) = v29;
  *(v24 + 112) = v34;
  *(v24 + 120) = v35;
  sub_1001C5118();

  v36 = v23;
  v58 = v23;
  v59 = *&v23[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v37 = *(v13 + 16);
  v38 = v61;
  v37(v74, v57, v61);
  v39 = v60;
  v37(v60, v30, v38);
  v40 = v63;
  v37(v63, v33, v38);
  v41 = *(v13 + 80);
  v42 = (v41 + 24) & ~v41;
  v43 = (v62 + v41 + v42) & ~v41;
  v44 = (v62 + v41 + v43) & ~v41;
  v45 = (v62 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v36;
  v47 = *(v13 + 32);
  v47(v46 + v42, v74, v38);
  v47(v46 + v43, v39, v38);
  v47(v46 + v44, v40, v38);
  v48 = (v46 + v45);
  v49 = v67;
  *v48 = v66;
  v48[1] = v49;
  aBlock[4] = sub_10009A464;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100242640;
  v50 = _Block_copy(aBlock);
  v51 = v58;

  v52 = v68;
  sub_1001C5668();
  v75 = &_swiftEmptyArrayStorage;
  sub_10009A514(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  v53 = v71;
  v54 = v73;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v50);
  (*(v72 + 8))(v53, v54);
  (*(v69 + 8))(v52, v70);
}

BDSReadingHistoryServiceStatusInfo __swiftcall ReadingHistoryServiceManager.serviceStatusInfo()()
{
  v14 = [objc_allocWithZone(BDSReadingHistoryServiceStatusInfo) initWithIsLoaded:0];
  v1 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = &v14;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10009A55C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_10009A564;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_1002426B8;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v1, v5);
  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001F0670;
  v7 = v14;
  *(v6 + 56) = sub_100088714(0, &qword_10026F370, off_10023DD40);
  *(v6 + 64) = sub_10009A58C();
  *(v6 + 32) = v7;
  v8 = v7;
  sub_1001C5118();

  v9 = v14;

  v11 = v9;
  result._status = v10;
  result.super.isa = v11;
  return result;
}

void sub_10009228C(uint64_t a1, void **a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      v7 = [objc_allocWithZone(BDSReadingHistoryServiceStatusInfo) initWithIsLoaded:1];
      sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1001F0670;
      *(v8 + 56) = sub_100088714(0, &qword_10026F370, off_10023DD40);
      *(v8 + 64) = sub_10009A58C();
      *(v8 + 32) = v7;
      v9 = v7;
      sub_1001C5118();

      v10 = *a2;
      *a2 = v9;
    }
  }
}

Swift::Void __swiftcall ReadingHistoryServiceManager.setEnableCloudSync(_:)(Swift::Bool a1)
{
  v2 = v1;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001F0670;
  *(v4 + 56) = &type metadata for Bool;
  *(v4 + 64) = &protocol witness table for Bool;
  v5 = a1;
  *(v4 + 32) = a1;
  sub_1001C5118();

  v6 = *&v1[OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCloudDataManager];
  v7 = *(v6 + qword_100281A08);
  *(v6 + qword_100281A08) = a1;
  if (v7 != a1)
  {
    sub_1000F1254(a1);
  }

  v8 = *&v2[OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10009A5F4;
  *(v10 + 24) = v9;
  v14[4] = sub_10009B264;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000906F4;
  v14[3] = &unk_100242730;
  v11 = _Block_copy(v14);
  v12 = v2;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_100092698(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceEnableCloudSync) = a2;
  v2 = *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  if (v2)
  {
    v4 = v2;
    ReadingHistoryService.setEnableCloudSync(_:)(a2 & 1);
  }
}

id ReadingHistoryServiceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1000927F4(void *a1)
{
  v2 = v1;
  v4 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = aBlock - v6;
  sub_1000BC0EC((aBlock - v6));
  v8 = sub_10008FFA8(v7, 0xD000000000000011, 0x80000001001FEDB0);
  v9 = *&v1[OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = a1;
  *(v10 + 32) = v8 & 1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10009AC8C;
  *(v11 + 24) = v10;
  aBlock[4] = sub_10009B264;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100242D08;
  v12 = _Block_copy(aBlock);
  v13 = v2;
  v14 = a1;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  sub_10008875C(v7, &unk_10026F410, &unk_1001F0E40);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100092A04(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  if (v3)
  {
    v6 = *(v3 + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager);
    sub_100092B10(a2);
    v5 = v6;
LABEL_5:

    return;
  }

  if (a3)
  {
    v5 = sub_10008ECA4();
    goto LABEL_5;
  }

  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118();
}

uint64_t sub_100092B10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100084528(&qword_10026FCA0, &unk_1001F0E70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for ReadingHistoryModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v45 = &v39 - v12;
  v13 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v43 = *(v13 - 8);
  v14 = *(v43 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  sub_1000BC0EC((&v39 - v17));
  v19 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8);
  if (v19 >> 60 == 15)
  {
    v23 = sub_1001C5128();
    v24 = sub_1001C6598();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "CRDTModelSyncManager resolveConflictsFor: couldn't deserialize resolved data", v25, 2u);
    }

    sub_100097144(v18);
    return sub_10008875C(v18, &unk_10026F410, &unk_1001F0E40);
  }

  else
  {
    v40 = v9;
    v41 = v2;
    v20 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData);
    v21 = *&v2[qword_10026FB18];
    sub_10009AD88(v20, v19);
    sub_10009AD88(v20, v19);
    sub_10009A514(&qword_10026F460, type metadata accessor for ReadingHistoryModel);
    v22 = v21;
    v42 = v20;
    sub_1001C5C88();
    v26 = v40 + 56;
    (*(v40 + 7))(v7, 0, 1, v8);
    v27 = v45;
    sub_10009B13C(v7, v45, type metadata accessor for ReadingHistoryModel);
    v28 = v41;
    v39 = *&v41[qword_10026FB10];
    v40 = type metadata accessor for ReadingHistoryModel;
    v29 = v44;
    sub_10009B074(v27, v44, type metadata accessor for ReadingHistoryModel);
    sub_10009ADF0(v18, v16, &unk_10026F410, &unk_1001F0E40);
    v30 = (v26[24] + 16) & ~v26[24];
    v31 = (v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (*(v43 + 80) + v31 + 8) & ~*(v43 + 80);
    v33 = swift_allocObject();
    sub_10009B13C(v29, v33 + v30, type metadata accessor for ReadingHistoryModel);
    *(v33 + v31) = v28;
    sub_10009AE58(v16, v33 + v32, &unk_10026F410, &unk_1001F0E40);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_10009AEC0;
    *(v34 + 24) = v33;
    aBlock[4] = sub_10009B264;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_100243028;
    v35 = _Block_copy(aBlock);
    v36 = v28;

    dispatch_sync(v39, v35);
    _Block_release(v35);
    sub_1000887BC(v42, v19);
    sub_10009B0DC(v45, v40);
    sub_10008875C(v18, &unk_10026F410, &unk_1001F0E40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t ReadingHistoryServiceManager.transactionDidBegin(withName:)(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCountAccessQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10009A600;
  *(v5 + 24) = v4;
  v10[4] = sub_10009B264;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000906F4;
  v10[3] = &unk_1002427A8;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100093234(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount;
  v6 = *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v2 = a1;
  *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount) = v7;
  if (a2)
  {
    v4 = sub_1001C6148();
    v3 = v8;
    v7 = *(v2 + v5);
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 7104878;
  }

  LOBYTE(v5) = sub_1001C6588();
  if (qword_10026EBE8 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v9 = qword_1002711E8;
  if (os_log_type_enabled(qword_1002711E8, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315394;
    v12 = sub_1001874E8(v4, v3, &v14);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v9, v5, "ReadingHistoryServiceManager transactionDidBegin %s, count: %ld", v10, 0x16u);
    sub_10008E7BC(v11);
  }

  else
  {
  }

  *(v2 + OBJC_IVAR___BDSReadingHistoryServiceManager_serviceDirty) = 1;
  return result;
}

uint64_t ReadingHistoryServiceManager.transactionWillEnd(withName:)(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCountAccessQueue];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = a1;
  v4[4] = 0x403E000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10009A608;
  *(v5 + 24) = v4;
  v10[4] = sub_10009B264;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000906F4;
  v10[3] = &unk_100242820;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100093694(uint64_t a1, uint64_t a2, double a3)
{
  v9 = OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount;
  v10 = *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_7;
  }

  v3 = a1;
  *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount) = v12;
  if (v12 > 0)
  {
    return;
  }

  v8 = a3;
  *(a1 + v9) = 0;
  if (a2)
  {
    v5 = sub_1001C6148();
    v4 = v13;
    v7 = *(v3 + v9);
  }

  else
  {
    v7 = 0;
    v4 = 0xE300000000000000;
    v5 = 7104878;
  }

  v6 = sub_1001C6588();
  if (qword_10026EBE8 != -1)
  {
    goto LABEL_16;
  }

LABEL_7:
  v14 = qword_1002711E8;
  if (os_log_type_enabled(qword_1002711E8, v6))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23[0] = v16;
    *v15 = 136315394;
    v17 = sub_1001874E8(v5, v4, v23);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v14, v6, "ReadingHistoryServiceManager transactionWillEnd %s, count: %ld", v15, 0x16u);
    sub_10008E7BC(v16);
  }

  else
  {
  }

  *(v3 + OBJC_IVAR___BDSReadingHistoryServiceManager_serviceDirty) = 0;
  v18 = sub_1001C65B8();
  if (os_log_type_enabled(v14, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v14, v18, "ReadingHistoryServiceManager Schedule teardown service in %f secs", v19, 0xCu);
  }

  v20 = *(v3 + OBJC_IVAR___BDSReadingHistoryServiceManager_teardownServiceTimer);
  if (v20)
  {
    v23[4] = MarkedAsFinishedMechanism.rawValue.getter;
    v23[5] = 0;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_1000DD4AC;
    v23[3] = &unk_100243140;
    v21 = _Block_copy(v23);
    v22 = v20;
    [v22 signalWithCompletion:v21];
    _Block_release(v21);
  }
}

uint64_t sub_100093ADC()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  sub_1001C5118();
  v2 = *(v1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  *(swift_task_alloc() + 16) = v1;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();

  v0[4] = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100093C40;

  return ReadingHistoryService.bookWidgetReadingHistoryStateInfo()();
}

uint64_t sub_100093C40(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v9 = *v2;

  v7 = *(v9 + 8);

  return v7(a1, a2);
}

uint64_t sub_100093ED8(const void *a1, void *a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100093F50, 0, 0);
}

uint64_t sub_100093F50()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  sub_1001C5118();
  v2 = *(v1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  *(swift_task_alloc() + 16) = v1;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();

  v0[5] = v0[2];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1000940B4;

  return ReadingHistoryService.bookWidgetReadingHistoryStateInfo()();
}

uint64_t sub_1000940B4(void *a1, char a2)
{
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v11 = *v2;

  (v7)[2](v7, a1, a2 & 1);
  _Block_release(v7);

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_100094248()
{
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  sub_1001C5118();
  v2 = *(v1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  *(swift_task_alloc() + 16) = v1;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();

  v0[4] = v0[2];
  sub_1001C65B8();
  sub_1001C5118();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1000943E8;

  return sub_1000E0774();
}

uint64_t sub_1000943E8(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_100094674(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10009471C;

  return ReadingHistoryServiceManager.mergeMovedReadingHistoryData()();
}

uint64_t sub_10009471C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_1001C4A18();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t ReadingHistoryServiceManager.backup(name:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_1000948D0, 0, 0);
}

uint64_t sub_1000948D0()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  *(swift_task_alloc() + 16) = v1;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();

  v0[6] = v0[2];
  v0[7] = sub_1000E0060();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1000949DC;
  v5 = v0[3];
  v4 = v0[4];

  return ReadingHistoryBackupManager.backup(name:)(v5, v4);
}

uint64_t sub_1000949DC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100094B28, 0, 0);
  }

  else
  {
    v4 = *(v3 + 56);

    v5 = *(v3 + 8);

    return v5(1);
  }
}

uint64_t sub_100094B28()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2(0);
}

uint64_t sub_100094D20(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1001C6018();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100094E04;

  return ReadingHistoryServiceManager.backup(name:)(a1, v7);
}

uint64_t sub_100094E04(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  v11 = *(v5 + 24);

  if (v3)
  {
    v12 = sub_1001C4A18();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(v11, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_100094FCC()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  *(swift_task_alloc() + 16) = v1;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();

  v0[4] = v0[2];
  v0[5] = sub_1000E0060();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1000950CC;

  return sub_100133D3C();
}

uint64_t sub_1000950CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_100095268;
  }

  else
  {
    v8 = *(v4 + 40);

    *(v4 + 64) = a1;
    v7 = sub_1000951FC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000951FC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2, 1);
}

uint64_t sub_100095268()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_10009544C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000954F4;

  return ReadingHistoryServiceManager.listBackup()();
}

uint64_t sub_1000954F4(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 32);
  v7 = *(*v3 + 16);
  v8 = *v3;

  v9 = *(v5 + 24);
  if (v2)
  {
    v10 = sub_1001C4A18();

    (v9)[2](v9, 0, 0, v10);

    _Block_release(v9);
  }

  else
  {
    isa = sub_1001C6288().super.isa;
    (v9)[2](v9, isa, a2 & 1, 0);

    _Block_release(v9);
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t ReadingHistoryServiceManager.restore(name:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_1000956E0, 0, 0);
}

uint64_t sub_1000956E0()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  *(swift_task_alloc() + 16) = v1;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();

  v0[6] = v0[2];
  v0[7] = sub_1000E0060();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1000957EC;
  v5 = v0[3];
  v4 = v0[4];

  return ReadingHistoryBackupManager.restore(name:)(v5, v4);
}

uint64_t sub_1000957EC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10009B2F4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 56);

    v5 = *(v3 + 8);

    return v5(1);
  }
}

uint64_t sub_100095AC0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1001C6018();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100095B94;

  return ReadingHistoryServiceManager.restore(name:)(v5, v7);
}

uint64_t sub_100095B94(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = sub_1001C4A18();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_100095D48(void *a1)
{
  v2 = sub_1001C5688();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(result + qword_10026FB10);
    v14 = result;
    sub_1001C5638();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a1;
    aBlock[4] = sub_10009AD50;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_100242DD0;
    v16 = _Block_copy(aBlock);
    v17 = a1;
    v18 = v14;
    sub_1001C5668();
    sub_1001C6698();
    _Block_release(v16);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_100095FA4(uint64_t isEscapingClosureAtFileLocation, void *a2)
{
  v124 = a2;
  v3 = sub_1001C5AC8();
  v116 = *(v3 - 8);
  v117 = v3;
  v4 = *(v116 + 64);
  __chkstk_darwin(v3);
  v115 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_10026FCA0, &unk_1001F0E70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v122 = &v110 - v8;
  v9 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v110 - v14;
  v16 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v110 - v18;
  v123 = type metadata accessor for ReadingHistoryModel(0);
  v121 = *(v123 - 8);
  v20 = *(v121 + 64);
  v21 = __chkstk_darwin(v123);
  v114 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v113 = &v110 - v24;
  v25 = __chkstk_darwin(v23);
  v119 = &v110 - v26;
  v27 = __chkstk_darwin(v25);
  v120 = &v110 - v28;
  __chkstk_darwin(v27);
  v30 = &v110 - v29;
  v125 = qword_10026FB20;
  v31 = *(*(isEscapingClosureAtFileLocation + qword_10026FB20) + 16);

  v118 = v16;
  sub_1001C6688();

  sub_10009B074(v19, v30, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v19, &unk_10026F420, &unk_1001F0E50);
  v32 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
  v126 = v30;
  if (!v124)
  {
LABEL_10:
    v53 = sub_1001C5128();
    v54 = sub_1001C65B8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "CRDTModelSyncManager Init: empty cloudData", v55, 2u);
    }

    v56 = *(isEscapingClosureAtFileLocation + v125);
    __chkstk_darwin(v57);
    *(&v110 - 2) = v30;
    *(&v110 - 1) = v15;
    v58 = *(v56 + 16);
    v59 = swift_allocObject();
    v59[2] = sub_10009AD74;
    v59[3] = &v110 - 4;
    v59[4] = v56;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_10009AD7C;
    *(v60 + 24) = v59;
    v131 = sub_10009B264;
    v132 = v60;
    aBlock = _NSConcreteStackBlock;
    v128 = 1107296256;
    v129 = sub_1000906F4;
    v130 = &unk_100242E48;
    v61 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v58, v61);
    _Block_release(v61);
    LODWORD(v58) = swift_isEscapingClosureAtFileLocation();

    if (v58)
    {
      goto LABEL_25;
    }

LABEL_13:
    sub_10008875C(v15, &unk_10026F410, &unk_1001F0E40);
    return sub_10009B0DC(v126, type metadata accessor for ReadingHistoryModel);
  }

  v33 = v124;
  sub_1000BC0EC(v13);
  sub_10008875C(v15, &unk_10026F410, &unk_1001F0E40);
  sub_10009AE58(v13, v15, &unk_10026F410, &unk_1001F0E40);
  v34 = sub_1001C5128();
  v35 = sub_1001C65B8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "CRDTModelSyncManager Init: About to deserialize existing data", v36, 2u);
  }

  v124 = v33;
  v37 = &v33[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v38 = *&v33[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
  if (v38 >> 60 == 15)
  {
    v44 = sub_1001C5128();
    v45 = sub_1001C6598();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "CRDTModelSyncManager Init: couldn't deserialize existing data", v46, 2u);
    }

    v47 = *(isEscapingClosureAtFileLocation + v125);
    __chkstk_darwin(v48);
    *(&v110 - 2) = v126;
    *(&v110 - 1) = v15;
    v49 = *(v47 + 16);
    v50 = swift_allocObject();
    v50[2] = sub_10009B2F8;
    v50[3] = &v110 - 4;
    v50[4] = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_10009B304;
    *(v51 + 24) = v50;
    v131 = sub_10009B264;
    v132 = v51;
    aBlock = _NSConcreteStackBlock;
    v128 = 1107296256;
    v129 = sub_1000906F4;
    v130 = &unk_100242EC0;
    v52 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v49, v52);
    _Block_release(v52);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_10;
  }

  v39 = *v37;
  v40 = *(isEscapingClosureAtFileLocation + qword_10026FB18);
  sub_10009AD88(*v37, v38);
  sub_10009AD88(v39, v38);
  sub_10009A514(&qword_10026F460, type metadata accessor for ReadingHistoryModel);
  v41 = v40;
  v43 = v122;
  v42 = v123;
  sub_1001C5C88();
  v110 = v39;
  v111 = v38;
  (*(v121 + 56))(v43, 0, 1, v42);
  v63 = v120;
  sub_10009B13C(v43, v120, type metadata accessor for ReadingHistoryModel);
  v64 = v42;
  v65 = isEscapingClosureAtFileLocation;
  v66 = *(*(isEscapingClosureAtFileLocation + v125) + 16);

  sub_1001C6688();

  v67 = v119;
  sub_10009B074(v19, v119, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v19, &unk_10026F420, &unk_1001F0E50);
  v68 = sub_1001C5C38();
  sub_10009B0DC(v67, type metadata accessor for ReadingHistoryModel);
  v112 = v65;
  if (v68)
  {
    v69 = v63;
    v70 = v113;
    sub_10009B074(v69, v113, type metadata accessor for ReadingHistoryModel);
    v71 = sub_1001C5128();
    v72 = sub_1001C65B8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v73 = 136315394;
      v74 = ReadingHistoryModel.description.getter();
      v76 = v75;
      sub_10009B0DC(v70, type metadata accessor for ReadingHistoryModel);
      v77 = sub_1001874E8(v74, v76, &aBlock);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      v78 = v126;
      swift_beginAccess();
      v79 = v78;
      v80 = v119;
      sub_10009B074(v79, v119, type metadata accessor for ReadingHistoryModel);
      v81 = ReadingHistoryModel.description.getter();
      v83 = v82;
      sub_10009B0DC(v80, type metadata accessor for ReadingHistoryModel);
      v84 = sub_1001874E8(v81, v83, &aBlock);

      *(v73 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v71, v72, "CRDTModelSyncManager Init: loaded stored model=%s, merging into existing=%s", v73, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10009B0DC(v70, type metadata accessor for ReadingHistoryModel);
    }

    v96 = v111;
    v97 = v126;
    swift_beginAccess();
    sub_10009A514(&unk_10026FC60, type metadata accessor for ReadingHistoryModel);
    v98 = v115;
    v99 = v120;
    sub_1001C5AB8();
    swift_endAccess();

    sub_1000887BC(v110, v96);
    (*(v116 + 8))(v98, v117);
    v100 = sub_10009B0DC(v99, type metadata accessor for ReadingHistoryModel);
    v86 = *(v112 + v125);
    __chkstk_darwin(v100);
    *(&v110 - 2) = v97;
    *(&v110 - 1) = v15;
    isa = v86[2].isa;
    v102 = swift_allocObject();
    v102[2] = sub_10009B2F8;
    v102[3] = &v110 - 4;
    v102[4] = v86;
    v85 = swift_allocObject();
    *(v85 + 16) = sub_10009B304;
    *(v85 + 24) = v102;
    v131 = sub_10009B264;
    v132 = v85;
    aBlock = _NSConcreteStackBlock;
    v128 = 1107296256;
    v129 = sub_1000906F4;
    v130 = &unk_100242FB0;
    v103 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(isa, v103);
    _Block_release(v103);
    LOBYTE(isa) = swift_isEscapingClosureAtFileLocation();

    if ((isa & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    v85 = v114;
    sub_10009B074(v63, v114, type metadata accessor for ReadingHistoryModel);
    v64 = v63;
    v86 = sub_1001C5128();
    v87 = sub_1001C65B8();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = v85;
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      aBlock = v90;
      *v89 = 136315138;
      v91 = ReadingHistoryModel.description.getter();
      v93 = v92;
      sub_10009B0DC(v88, type metadata accessor for ReadingHistoryModel);
      v94 = sub_1001874E8(v91, v93, &aBlock);

      *(v89 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v86, v87, "CRDTModelSyncManager Init: loaded stored model=%s, no delta", v89, 0xCu);
      sub_10008E7BC(v90);

      sub_1000887BC(v110, v111);
      v95 = v63;
      goto LABEL_23;
    }
  }

  sub_1000887BC(v110, v111);
  sub_10009B0DC(v85, type metadata accessor for ReadingHistoryModel);
  v95 = v64;
LABEL_23:
  v104 = sub_10009B0DC(v95, type metadata accessor for ReadingHistoryModel);
  v105 = *(v112 + v125);
  __chkstk_darwin(v104);
  *(&v110 - 2) = v126;
  *(&v110 - 1) = v15;
  v106 = *(v105 + 16);
  v107 = swift_allocObject();
  v107[2] = sub_10009B2F8;
  v107[3] = &v110 - 4;
  v107[4] = v105;
  v108 = swift_allocObject();
  *(v108 + 16) = sub_10009B304;
  *(v108 + 24) = v107;
  v131 = sub_10009B264;
  v132 = v108;
  aBlock = _NSConcreteStackBlock;
  v128 = 1107296256;
  v129 = sub_1000906F4;
  v130 = &unk_100242F38;
  v109 = _Block_copy(&aBlock);
  swift_retain_n();

  dispatch_sync(v106, v109);
  _Block_release(v109);
  LOBYTE(v106) = swift_isEscapingClosureAtFileLocation();

  if ((v106 & 1) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}