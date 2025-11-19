void sub_1000023C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000023EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100002404(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v16 = 0;
  v5 = [v4 URLForDirectory:99 inDomain:1 appropriateForURL:v3 create:1 error:&v16];
  v6 = v16;

  if (v5)
  {
    [*(*(a1 + 32) + 8) addObject:v5];
    v7 = [v3 lastPathComponent];
    v8 = [v5 URLByAppendingPathComponent:v7];

    v9 = +[NSFileManager defaultManager];
    v15 = v6;
    v10 = [v9 copyItemAtURL:v3 toURL:v8 error:&v15];
    v11 = v15;

    if (v10)
    {
      NSLog(@"Using new temporary URL: %@", v8);
      v12 = v8;
    }

    else
    {
      NSLog(@"Unable to copy from %@ to %@, error: %@", v3, v8, v11);
      v12 = v3;
    }

    v13 = v12;
  }

  else
  {
    NSLog(@"Unable to get temporary folder for URL: %@, error: %@", v3, v6);
    v13 = v3;
    v11 = v6;
  }

  return v13;
}

void sub_100002594(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = (*(*(a1 + 56) + 16))();
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);

    dispatch_semaphore_signal(v7);
  }

  else
  {
    v8 = +[NSMutableArray array];
    v9 = [*(a1 + 40) registeredTypeIdentifiers];
    v10 = [UTType doc_contentTypesForIdentifiers:v9];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = [v16 localizedDescription];
          v18 = [v17 length];

          if (v18)
          {
            v19 = [v16 identifier];
            [v8 addObject:v19];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    v20 = [UTTypeData identifier];
    [v8 addObject:v20];

    v22 = *(a1 + 40);
    v21 = *(a1 + 48);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100002850;
    v25[3] = &unk_10000C510;
    v24 = *(a1 + 56);
    v23 = v24;
    v27 = v24;
    v28 = *(a1 + 72);
    v26 = *(a1 + 32);
    [v21 loadDataWithTypes:v8 fromItemProvider:v22 completionHandler:v25];
  }
}

void sub_100002850(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    v6 = (*(*(a1 + 40) + 16))();
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 56) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100002B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002B30(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  NSLog(@"data: %@, error: %@", v5, a3);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(UIImage *)v5 isFileURL])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(UIImage *)v5 dataUsingEncoding:4];
      v7 = &UTTypePlainText;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
          if (v6)
          {
LABEL_9:
            v11 = [UTType typeWithIdentifier:*(*(*(a1 + 64) + 8) + 40)];
            v12 = [*(a1 + 32) suggestedName];
            v13 = [v12 length];

            if (v13)
            {
              v14 = [*(a1 + 32) suggestedName];
              v15 = [v14 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

              v16 = v15;
              v17 = [v16 pathExtension];
              v18 = v16;
              if ([v17 length])
              {
                v19 = [v11 preferredFilenameExtension];
                v20 = [v17 isEqualToString:v19];

                v18 = v16;
                if (v20)
                {
                  v21 = [v16 stringByDeletingPathExtension];
                  v18 = v16;
                  if ([v21 length])
                  {
                    v18 = v21;
                  }
                }
              }
            }

            else
            {
              v18 = [v11 localizedDescription];
            }

            v23 = [v11 preferredFilenameExtension];
            v42 = v23;
            if (v23)
            {
              v24 = [v18 stringByAppendingPathExtension:v23];

              v18 = v24;
            }

            v25 = +[NSFileManager defaultManager];
            v26 = NSTemporaryDirectory();
            v27 = [v26 stringByAppendingPathComponent:@"AddToiCloudDrive.XXXXX"];

            v28 = strdup([v27 fileSystemRepresentation]);
            v29 = mkdtemp(v28);
            if (v29)
            {
              v40 = v11;
              v41 = v6;
              v30 = [v25 stringWithFileSystemRepresentation:v29 length:strlen(v29)];
              free(v28);
              v31 = +[NSFileManager defaultManager];
              v44 = 0;
              v32 = [v31 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:&v44];
              v33 = v44;

              if (v32)
              {
                v34 = [NSURL fileURLWithPath:v30];
                v35 = [v34 URLByAppendingPathComponent:v18];

                v43 = v33;
                v36 = [(UIImage *)v41 writeToURL:v35 options:0 error:&v43];
                v37 = v43;

                if (v36)
                {
                  [*(*(a1 + 40) + 8) addObject:v35];
                  (*(*(a1 + 56) + 16))();

                  goto LABEL_31;
                }

                (*(*(a1 + 56) + 16))();

                v6 = v41;
              }

              else
              {
                (*(*(a1 + 56) + 16))();

                v6 = v41;
              }

              v11 = v40;
            }

            else
            {
              free(v28);
              v38 = *(a1 + 56);
              v39 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
              (*(v38 + 16))(v38, 0, v39);
            }

            goto LABEL_31;
          }
        }

LABEL_18:
        v22 = [*(a1 + 48) mutableCopy];
        [v22 removeObjectAtIndex:0];
        [*(a1 + 40) loadDataWithTypes:v22 fromItemProvider:*(a1 + 32) completionHandler:*(a1 + 56)];

        goto LABEL_31;
      }

      v6 = UIImagePNGRepresentation(v5);
      v7 = &UTTypePNG;
    }

    v8 = [*v7 identifier];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  (*(*(a1 + 56) + 16))();
LABEL_31:
}

void sub_100003198(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v9;
  v7 = v5;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 isFileURL])
    {
      v6 = v9;
    }

    else
    {

      NSLog(@"bad url: %@", 0);
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];

      v6 = 0;
      v7 = v8;
    }
  }

  v10 = v6;
  (*(*(a1 + 32) + 16))();
}

void sub_100003328(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 view];
  v4 = [v3 window];
  [v4 bounds];
  [v2 setPreferredContentSize:{v5, v6}];

  v7 = [DOCConfiguration configurationForExportingDocumentsToURLs:*(a1 + 40) mode:2];
  [*(a1 + 32) setConfiguration:v7];

  v8 = [*(a1 + 32) configuration];
  [v8 setInProcess:1];

  v9 = [*(a1 + 32) configuration];
  [v9 setForPickingDocuments:1];

  v10 = [*(a1 + 32) configuration];
  v11 = [*(a1 + 32) view];
  v12 = [v11 window];
  [v10 updateStateAndSceneIdentifiersWithWindow:v12];

  v13 = [*(a1 + 32) extensionContext];
  v14 = [v13 inputItems];
  v15 = [v14 firstObject];

  v82 = v15;
  v16 = [v15 userInfo];
  v17 = [v16 objectForKeyedSubscript:_UINSExtensionItemUserInfoIsContentManagedKey];

  if (v17)
  {
    v18 = [v17 BOOLValue];
    v19 = [*(a1 + 32) configuration];
    [v19 setIsContentManaged:v18];
  }

  v20 = [*(a1 + 32) configuration];
  v21 = [v20 hostIdentifier];
  [FINode setCurrentHostAppIdentifier:v21];

  v22 = +[DOCAppProtectionManager sharedManager];
  v23 = [*(a1 + 32) configuration];
  [v23 hostIdentifier];
  v24 = v81 = v17;
  [v22 setHostIdentifier:v24];

  v25 = [*(a1 + 32) configuration];
  v26 = [v25 hostIdentifier];
  v27 = +[DOCManagedPermission defaultPermission];
  [v27 setHostIdentifier:v26];

  v28 = [DOCDocumentPickerViewController alloc];
  v29 = [*(a1 + 32) configuration];
  v30 = [v28 initWithConfiguration:v29 context:0];
  [*(a1 + 32) setDocumentPickerViewController:v30];

  v31 = *(a1 + 32);
  v32 = [v31 documentPickerViewController];
  [v32 setPickerDelegate:v31];

  v33 = [DOCDefaultSourceUIManager alloc];
  v34 = [*(a1 + 32) configuration];
  v35 = [*(a1 + 32) documentPickerViewController];
  v36 = [v35 sourceObserver];
  v37 = [v33 initWithConfiguration:v34 sourceObserver:v36 presentAlertsOn:*(a1 + 32)];
  [*(a1 + 32) setDefaultSourceUIManager:v37];

  v38 = [DOCNamedLocationResolver alloc];
  v39 = [*(a1 + 32) configuration];
  v40 = [*(a1 + 32) defaultSourceUIManager];
  v41 = [v38 initWithConfiguration:v39 defaultSourceUIManager:v40];
  [*(a1 + 32) setNamedLocationResolver:v41];

  v42 = [*(a1 + 32) documentPickerViewController];
  [v42 beginAppearanceTransition:1 animated:0];

  v43 = [*(a1 + 32) documentPickerViewController];
  v44 = objc_alloc_init(DOCAppearance);
  [v43 setAppearance:v44];

  v45 = *(a1 + 32);
  v46 = [v45 documentPickerViewController];
  [v45 addChildViewController:v46];

  v47 = [*(a1 + 32) view];
  v48 = [*(a1 + 32) documentPickerViewController];
  v49 = [v48 view];
  [v47 addSubview:v49];

  v50 = [*(a1 + 32) documentPickerViewController];
  [v50 didMoveToParentViewController:*(a1 + 32)];

  v51 = [*(a1 + 32) documentPickerViewController];
  [v51 endAppearanceTransition];

  v52 = [*(a1 + 32) documentPickerViewController];
  v53 = [v52 view];
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];

  v80 = [*(a1 + 32) documentPickerViewController];
  v79 = [v80 view];
  v77 = [v79 leadingAnchor];
  v78 = [*(a1 + 32) view];
  v76 = [v78 leadingAnchor];
  v75 = [v77 constraintEqualToAnchor:v76];
  v83[0] = v75;
  v74 = [*(a1 + 32) documentPickerViewController];
  v73 = [v74 view];
  v71 = [v73 trailingAnchor];
  v72 = [*(a1 + 32) view];
  v70 = [v72 trailingAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v83[1] = v69;
  v68 = [*(a1 + 32) documentPickerViewController];
  v67 = [v68 view];
  v65 = [v67 topAnchor];
  v66 = [*(a1 + 32) view];
  v54 = [v66 topAnchor];
  v55 = [v65 constraintEqualToAnchor:v54];
  v83[2] = v55;
  v56 = [*(a1 + 32) documentPickerViewController];
  v57 = [v56 view];
  v58 = [v57 bottomAnchor];
  v59 = [*(a1 + 32) view];
  v60 = [v59 bottomAnchor];
  v61 = [v58 constraintEqualToAnchor:v60];
  v83[3] = v61;
  v62 = [NSArray arrayWithObjects:v83 count:4];
  [NSLayoutConstraint activateConstraints:v62];

  v63 = [*(a1 + 32) documentPickerViewController];
  [v63 preferredContentSize];
  [*(a1 + 32) setPreferredContentSize:?];

  v64 = [*(a1 + 32) documentPickerViewController];
  [v64 becomeFirstResponder];
}

uint64_t sub_100003EA8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL sub_100004244(id a1, NSURL *a2, NSError *a3)
{
  v4 = a3;
  v5 = [(NSURL *)a2 path];
  NSLog(@"Failed to enumerate %@ to mark purgeable. Error: %@", v5, v4);

  return 0;
}

uint64_t DOCSaveToFilesViewController.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  v5 = DOCSaveToFilesViewController.canPerformKeyCommandAction(_:with:)();
  if (v5 == 2)
  {
    sub_1000062A0(a2, v16, &qword_100010B60, &qword_100007DF0);
    v6 = v17;
    if (v17)
    {
      v7 = sub_100004804(v16, v17);
      v8 = *(v6 - 8);
      v9 = *(v8 + 64);
      __chkstk_darwin(v7, v7);
      v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11);
      v12 = sub_100006708();
      (*(v8 + 8))(v11, v6);
      sub_100004848(v16);
    }

    else
    {
      v12 = 0;
    }

    v15.receiver = v2;
    v15.super_class = DOCSaveToFilesViewController;
    v13 = objc_msgSendSuper2(&v15, "canPerformAction:withSender:", a1, v12);
    swift_unknownObjectRelease();
    v5 = v13;
  }

  return v5 & 1;
}

uint64_t DOCSaveToFilesViewController.canPerformKeyCommandAction(_:with:)()
{
  v1 = [v0 documentPickerViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 fullDocumentManagerViewController];

    if (v3)
    {
      if (sub_1000065D8() & 1) != 0 || (sub_1000065D8() & 1) != 0 || (sub_1000065D8() & 1) != 0 || (sub_1000065D8() & 1) != 0 || (sub_1000065D8() & 1) != 0 || (sub_1000065D8() & 1) != 0 || (sub_1000065D8())
      {

        return 1;
      }

      if (sub_1000065D8())
      {
        v5 = [v3 canGoToEnclosingFolder];

        return v5 ^ 1;
      }

      if (sub_1000065D8())
      {
        v6 = sub_100006698();
        if (v6)
        {
          v7 = v6;
          v8 = sub_100006608();
LABEL_19:
          v10 = v8;

LABEL_21:
          return v10 & 1;
        }

        goto LABEL_20;
      }

      if (sub_1000065D8())
      {
        v9 = sub_100006698();
        if (v9)
        {
          v7 = v9;
          v8 = sub_100006618();
          goto LABEL_19;
        }

LABEL_20:
        v10 = 0;
        goto LABEL_21;
      }
    }
  }

  return 2;
}

uint64_t sub_1000047BC(uint64_t *a1, uint64_t *a2)
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

void *sub_100004804(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100004848(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t DOCSaveToFilesViewController.keyCommands.getter()
{
  v0 = [objc_allocWithZone(DOCKeyCommandController) init];
  v1 = [v0 allKeyCommands];
  sub_100006450(0, &qword_100010B68, UIKeyCommand_ptr);
  v2 = sub_100006668();

  return v2;
}

void DOCSaveToFilesViewController.selectAll(_:)()
{
  v1 = [v0 documentPickerViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 fullDocumentManagerViewController];

    sub_1000066B8();
  }
}

void DOCSaveToFilesViewController.performDeselectAll(_:)()
{
  v1 = [v0 documentPickerViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 fullDocumentManagerViewController];

    v4 = sub_100006698();
    if (v4)
    {
      sub_1000065F8();
    }
  }
}

void sub_100004D64(void *a1)
{
  v3 = [v1 documentPickerViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 fullDocumentManagerViewController];

    if (v5)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      *(v6 + 24) = v5;
      v10[4] = sub_1000063FC;
      v10[5] = v6;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_10000602C;
      v10[3] = &unk_10000C908;
      v7 = _Block_copy(v10);
      v8 = a1;
      v9 = v5;

      [v9 showLocation:v8 fromRootAnimated:0 withCompletionBlock:v7];
      _Block_release(v7);
    }
  }
}

Swift::Void __swiftcall DOCSaveToFilesViewController.performGoToEnclosingFolder(_:)(UIKeyCommand a1)
{
  v2 = [v1 documentPickerViewController];
  if (v2)
  {
    v3 = v2;
    [v2 showSidebar];
  }
}

Swift::Void __swiftcall DOCSaveToFilesViewController.performGoToOnMyDevice(_:)(UIKeyCommand a1)
{
  v1 = [objc_allocWithZone(DOCConcreteLocation) initWithSourceIdentifier:DOCDocumentSourceIdentifierLocal node:0];
  sub_100004D64(v1);
}

void sub_1000053AC(uint64_t a1, SEL *a2)
{
  v2 = [objc_opt_self() *a2];
  sub_100004D64(v2);
}

void sub_100005418(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = objc_opt_self();
  v8 = a1;
  v7 = [v6 *a4];
  sub_100004D64(v7);
}

uint64_t sub_10000549C(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = sub_1000065C8();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  __chkstk_darwin(v3, v5);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000047BC(&qword_100010B70, &qword_100007DF8);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v31 - v14;
  v16 = sub_100006628();
  sub_100006678();
  sub_1000047BC(&qword_100010B78, &unk_100007E00);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100007DE0;
  sub_1000062A0(a1, v15, &qword_100010B70, &qword_100007DF8);
  v18 = sub_100006648();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100006308();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  sub_100006638();

  v21 = v34;
  sub_1000062A0(a1, v12, &qword_100010B70, &qword_100007DF8);
  if ((*(v21 + 48))(v12, 1, v3) == 1)
  {
    return sub_100006240(v12, &qword_100010B70, &qword_100007DF8);
  }

  v23 = v33;
  (*(v21 + 32))(v33, v12, v3);
  sub_1000065A8(v24);
  v26 = v25;
  v27 = swift_allocObject();
  v28 = v32;
  *(v27 + 16) = v32;
  aBlock[4] = sub_10000635C;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005BA8;
  aBlock[3] = &unk_10000C7C8;
  v29 = _Block_copy(aBlock);
  v30 = v28;

  [v30 revealDocumentAtURL:v26 importIfNeeded:0 updateLastUsedDate:1 completion:v29];
  _Block_release(v29);

  return (*(v21 + 8))(v23, v3);
}

uint64_t sub_1000057FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000047BC(&qword_100010B70, &qword_100007DF8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v34[-v9];
  v11 = sub_1000065C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = __chkstk_darwin(v11, v14);
  v17 = &v34[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a2)
  {
    sub_1000062A0(a1, v10, &qword_100010B70, &qword_100007DF8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      return sub_100006240(v10, &qword_100010B70, &qword_100007DF8);
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
      v18 = [objc_opt_self() defaultManager];
      sub_1000065A8(v19);
      v21 = v20;
      v35 = 0;
      v22 = [v18 itemForURL:v20 error:&v35];

      v23 = v35;
      if (v22)
      {
        sub_100006450(0, &qword_100010B90, FPItem_ptr);
        v24 = v23;
        v25 = sub_1000066C8();
        v26 = [objc_allocWithZone(DOCConcreteLocation) initWithSourceIdentifier:v25 node:v22];

        v27 = [a3 hierarchyController];
        sub_1000065E8();
      }

      else
      {
        v28 = v35;
        sub_100006598();

        swift_willThrow();
        v29 = sub_100006628();
        sub_100006678();
        sub_1000047BC(&qword_100010B78, &unk_100007E00);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_100007DE0;
        sub_100006364();
        v31 = sub_1000066F8();
        v33 = v32;
        *(v30 + 56) = &type metadata for String;
        *(v30 + 64) = sub_100006308();
        *(v30 + 32) = v31;
        *(v30 + 40) = v33;
        sub_100006638();
      }

      return (*(v12 + 8))(v17, v11);
    }
  }

  return result;
}

uint64_t sub_100005BA8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000047BC(&qword_100010B70, &qword_100007DF8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v17 - v9;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a2)
  {
    sub_1000065B8();
    v13 = sub_1000065C8();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_1000065C8();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = a3;
  v12(v10, a3);

  return sub_100006240(v10, &qword_100010B70, &qword_100007DF8);
}

uint64_t sub_100005CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_100010B70, &qword_100007DF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v14 - v7;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_1000065B8();
    v11 = sub_1000065C8();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  }

  else
  {
    v12 = sub_1000065C8();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  v10(v8);

  return sub_100006240(v8, &qword_100010B70, &qword_100007DF8);
}

void sub_100005E34(void *a1, id a2)
{
  v3 = [a2 displayedRootLocation];
  if (!v3 || (v4 = v3, sub_100006450(0, &qword_100010B98, DOCConcreteLocation_ptr), v5 = a1, v6 = sub_1000066D8(), v4, v5, (v6 & 1) == 0))
  {
    v7 = sub_1000066A8();
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = a1;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_100006404;
      *(v10 + 24) = v9;
      v14[4] = sub_100006428;
      v14[5] = v10;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_100006004;
      v14[3] = &unk_10000C980;
      v11 = _Block_copy(v14);
      v12 = a1;
      v13 = v8;

      [v13 withLocationChangePacingDisabled:v11];

      _Block_release(v11);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_10000602C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100006070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [v4 documentPickerViewController];
  if (v8)
  {
    v9 = v8;
    v15 = [v8 fullDocumentManagerViewController];

    if (v15)
    {
      v10 = [v4 namedLocationResolver];
      if (v10)
      {
        v11 = v10;
        v12 = swift_allocObject();
        *(v12 + 16) = v15;
        aBlock[4] = a2;
        aBlock[5] = v12;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100005CFC;
        aBlock[3] = a3;
        v13 = _Block_copy(aBlock);
        v14 = v15;

        [v11 resolveNamedLocation:a4 completion:v13];

        _Block_release(v13);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1000061E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006240(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000047BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000062A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000047BC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100006308()
{
  result = qword_100010B80;
  if (!qword_100010B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B80);
  }

  return result;
}

unint64_t sub_100006364()
{
  result = qword_100010B88;
  if (!qword_100010B88)
  {
    sub_1000065C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B88);
  }

  return result;
}

uint64_t sub_1000063BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006428()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100006450(uint64_t a1, unint64_t *a2, uint64_t *a3)
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