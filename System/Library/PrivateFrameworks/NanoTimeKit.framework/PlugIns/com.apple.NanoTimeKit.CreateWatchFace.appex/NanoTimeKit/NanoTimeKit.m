void sub_1000013F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100001418(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_100011318)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100001558;
    v5[4] = &unk_10000C380;
    v5[5] = v5;
    v6 = off_10000C368;
    v7 = 0;
    qword_100011318 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_100011318;
    if (qword_100011318)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_100011318;
LABEL_5:
  result = dlsym(v2, "NTKCSeparatorColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100011310 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001558(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100011318 = result;
  return result;
}

id sub_100001B60()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = off_100011330;
  v8 = off_100011330;
  if (!off_100011330)
  {
    v1 = sub_1000040D4();
    v6[3] = dlsym(v1, "_NTKLoggingObjectForDomain");
    off_100011330 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_100006668();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = v0(24, "NTKLoggingDomainCompanionApp");

  return v2;
}

id sub_100001C74(void *a1)
{
  v1 = [a1 addFaceDetailViewController];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"CREATE_WATCH_FACE" value:&stru_10000C548 table:0];
  [v1 setTitle:v3];

  return v1;
}

BOOL sub_100002F10()
{
  v0 = +[UIScreen mainScreen];
  v1 = [v0 traitCollection];

  v2 = [v1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryCompareToCategory(v2, UIContentSizeCategoryAccessibilityMedium) != NSOrderedAscending;

  return v3;
}

void sub_100003904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000392C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_100011350;
  v7 = off_100011350;
  if (!off_100011350)
  {
    v1 = sub_1000040D4();
    v5[3] = dlsym(v1, "NTKCScreenStyle");
    off_100011350 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100006668();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0();
}

void *sub_100004084(uint64_t a1)
{
  v2 = sub_1000040D4();
  result = dlsym(v2, "NTKAllAvailableFaceDescriptors");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100011320 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000040D4()
{
  v3[0] = 0;
  if (!qword_100011328)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000041D4;
    v3[4] = &unk_10000C380;
    v3[5] = v3;
    v4 = off_10000C3C8;
    v5 = 0;
    qword_100011328 = _sl_dlopen();
  }

  v0 = qword_100011328;
  v1 = v3[0];
  if (!qword_100011328)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1000041D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100011328 = result;
  return result;
}

void *sub_100004248(uint64_t a1)
{
  v2 = sub_1000040D4();
  result = dlsym(v2, "_NTKLoggingObjectForDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100011330 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100004298(uint64_t a1)
{
  v2 = sub_1000040D4();
  result = dlsym(v2, "NTKCScreenEdgeMargin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100011338 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000042E8(uint64_t a1)
{
  sub_1000040D4();
  result = objc_getClass("NTKCompanionFaceViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100011340 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10000668C();
    return sub_100004340(v3);
  }

  return result;
}

Class sub_100004340(uint64_t a1)
{
  sub_1000040D4();
  result = objc_getClass("NTKCFaceContainerView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100011348 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1000066B4();
    return sub_100004398(v3);
  }

  return result;
}

void *sub_100004398(uint64_t a1)
{
  v2 = sub_1000040D4();
  result = dlsym(v2, "NTKCScreenStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100011350 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000043E8(uint64_t a1)
{
  v2 = sub_1000040D4();
  result = dlsym(v2, "NTKCActionColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100011358 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000048E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100004914()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = off_100011378;
  v8 = off_100011378;
  if (!off_100011378)
  {
    v1 = sub_100006174();
    v6[3] = dlsym(v1, "_NTKLoggingObjectForDomain");
    off_100011378 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_100006668();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = v0(24, "NTKLoggingDomainCompanionApp");

  return v2;
}

void sub_100004CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004EA0(uint64_t a1)
{
  v2 = dispatch_group_create();
  v29 = +[NSMutableArray array];
  v28 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v23 = a1;
  v3 = [*(a1 + 32) extensionContext];
  v4 = [v3 inputItems];

  obj = v4;
  v26 = [v4 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v26)
  {
    v25 = *v44;
    do
    {
      v5 = 0;
      do
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v5;
        v6 = *(*(&v43 + 1) + 8 * v5);
        v7 = sub_100004914();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        v39 = 0u;
        v8 = [v6 attachments];
        v9 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v40;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v40 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v39 + 1) + 8 * i);
              v14 = sub_100004914();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v49 = v13;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
              }

              v15 = [UTTypeImage identifier];
              v16 = [v13 hasItemConformingToTypeIdentifier:v15];

              if (v16)
              {
                v17 = sub_100004914();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  v18 = [UTTypeImage identifier];
                  *buf = 138412290;
                  v49 = v18;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "conforms to %@", buf, 0xCu);
                }

                dispatch_group_enter(v2);
                v19 = [UTTypeImage identifier];
                v34[0] = _NSConcreteStackBlock;
                v34[1] = 3221225472;
                v34[2] = sub_10000532C;
                v34[3] = &unk_10000C438;
                v35 = v28;
                v36 = v2;
                v37 = v13;
                v38 = v29;
                [v13 loadItemForTypeIdentifier:v19 options:0 completionHandler:v34];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v10);
        }

        v5 = v27 + 1;
      }

      while ((v27 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v26);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005944;
  block[3] = &unk_10000C460;
  v20 = *(v23 + 32);
  v31 = v28;
  v32 = v20;
  v33 = v29;
  v21 = v29;
  v22 = v28;
  dispatch_group_notify(v2, &_dispatch_main_q, block);
}

void sub_10000532C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100004914();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "attachment converted to NSString: %@", buf, 0xCu);
    }

    [*(a1 + 32) addObject:v3];
    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = [UTTypeImage identifier];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000054A4;
    v9[3] = &unk_10000C410;
    v10 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11 = v7;
    v12 = v8;
    [v5 loadItemForTypeIdentifier:v6 options:0 completionHandler:v9];
  }
}

void sub_1000054A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = sub_100004914();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = [v5 length];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "attachment converted to NSData: %p (%ld bytes)", buf, 0x16u);
    }

    v8 = v5;
    v9 = CGImageSourceCreateWithData(v8, 0);
    if (v9)
    {
      v31 = kCGImageSourceShouldCache;
      v32 = &__kCFBooleanFalse;
      v10 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, v10);
      v12 = ImageAtIndex;
      if (ImageAtIndex)
      {
        Width = CGImageGetWidth(ImageAtIndex);
        Height = CGImageGetHeight(v12);
        if (768.0 / Width >= 768.0 / Height)
        {
          v15 = 768.0 / Height;
        }

        else
        {
          v15 = 768.0 / Width;
        }

        v16 = [sub_1000064E0() _subsampleFactorForScale:v15];
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v17 = off_1000113C0;
        v30 = off_1000113C0;
        if (!off_1000113C0)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100006618;
          v34 = &unk_10000C348;
          v35 = &v27;
          v18 = sub_100006174();
          v19 = dlsym(v18, "NTKPhotosUIImageOrientation");
          *(v35[1] + 24) = v19;
          off_1000113C0 = *(v35[1] + 24);
          v17 = v28[3];
        }

        _Block_object_dispose(&v27, 8);
        if (!v17)
        {
          sub_100006668();
          __break(1u);
        }

        v20 = v17(v9);
        v21 = [sub_1000064E0() _subsampledImageWithData:v8 orientation:v20 subsampleFactor:v16];
        CFRelease(v12);
      }

      else
      {
        v21 = 0;
      }

      CFRelease(v9);

      if (v21)
      {
        [*(a1 + 32) addObject:v21];
      }
    }

    else
    {
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v22 = *(a1 + 48);
    v23 = [UTTypeImage identifier];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100005840;
    v24[3] = &unk_10000C3E8;
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    [v22 loadItemForTypeIdentifier:v23 options:0 completionHandler:v24];
  }
}

void sub_100005820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005840(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004914();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "attachment converted to UIImage: %@", &v9, 0xCu);
    }

    [*(a1 + 32) addObject:v5];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000066DC(v6, v8);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

id sub_100005944(uint64_t a1)
{
  v2 = sub_100004914();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "all images loaded", &buf, 2u);
  }

  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v4 = off_1000113B0;
    v14 = off_1000113B0;
    if (!off_1000113B0)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v16 = sub_100006490;
      v17 = &unk_10000C348;
      v18 = &v11;
      v5 = sub_100006174();
      v6 = dlsym(v5, "NTKPHAssetsForLocalIdentifiers");
      *(v18[1] + 24) = v6;
      off_1000113B0 = *(v18[1] + 24);
      v4 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v4)
    {
      sub_100006668();
      __break(1u);
    }

    v7 = v4(v3);

    [*(a1 + 40) setAssets:{v7, v11}];
  }

  else
  {
    [*(a1 + 40) setAssets:*(a1 + 48)];
  }

  v8 = sub_100004914();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) assets];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "found assets: %@", &buf, 0xCu);
  }

  return [*(a1 + 40) _finishedLoadingAssets];
}

void sub_100005D9C(uint64_t a1)
{
  v2 = [*(a1 + 32) assets];
  v3 = [NTKEChooseWatchFaceViewController viewControllerWithAssets:v2];

  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  v5 = [*(a1 + 32) ntkNavController];
  [v5 setViewControllers:v4];
}

uint64_t sub_100005E6C(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&stru_100011364);
  if (qword_100011368)
  {
    v4 = qword_100011368 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != qword_100011370))
  {
    qword_100011368 = v3;
    qword_100011370 = [v3 version];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005F7C;
    v8[3] = &unk_10000C4B0;
    v9 = *(a1 + 32);
    byte_100011360 = sub_100005F7C(v8, v3);
  }

  v6 = byte_100011360;
  os_unfair_lock_unlock(&stru_100011364);

  return v6;
}

uint64_t sub_100005F7C(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100006010;
  v4[3] = &unk_10000C488;
  v5 = *(a1 + 32);
  (sub_100006010)(v4, a2);

  return 1;
}

void *sub_100006124(uint64_t a1)
{
  v2 = sub_100006174();
  result = dlsym(v2, "_NTKLoggingObjectForDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100011378 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100006174()
{
  v3[0] = 0;
  if (!qword_100011380)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100006274;
    v3[4] = &unk_10000C380;
    v3[5] = v3;
    v4 = off_10000C4D0;
    v5 = 0;
    qword_100011380 = _sl_dlopen();
  }

  v0 = qword_100011380;
  v1 = v3[0];
  if (!qword_100011380)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100006274(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100011380 = result;
  return result;
}

void *sub_1000062E8(uint64_t a1)
{
  v2 = sub_100006174();
  result = dlsym(v2, "NTKCFaceDetailViewControllerDidAddFace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100011388 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100006338(uint64_t a1)
{
  sub_100006174();
  result = objc_getClass("NTKCompanionAppLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100006754();
  }

  qword_100011390 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100006390(uint64_t a1)
{
  v2 = sub_100006174();
  result = dlsym(v2, "NTKSharedRemoteComplicationProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100011398 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000063E0(uint64_t a1)
{
  sub_100006174();
  result = objc_getClass("NTKTransactionCommitCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000677C();
  }

  qword_1000113A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100006438(uint64_t a1)
{
  sub_100006174();
  result = objc_getClass("NTKCNavigationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000067A4();
  }

  qword_1000113A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100006490(uint64_t a1)
{
  v2 = sub_100006174();
  result = dlsym(v2, "NTKPHAssetsForLocalIdentifiers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000113B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1000064E0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000113B8;
  v7 = qword_1000113B8;
  if (!qword_1000113B8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000065C0;
    v3[3] = &unk_10000C348;
    v3[4] = &v4;
    sub_1000065C0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000065A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000065C0(uint64_t a1)
{
  sub_100006174();
  result = objc_getClass("NTKCompanionResourceDirectoryEditor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000067CC();
  }

  qword_1000113B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100006618(uint64_t a1)
{
  v2 = sub_100006174();
  result = dlsym(v2, "NTKPhotosUIImageOrientation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000113C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100006668()
{
  dlerror();
  v0 = abort_report_np();
  return sub_10000668C(v0);
}

void sub_1000066DC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "attachment could not be converted; error == %@", &v2, 0xCu);
}