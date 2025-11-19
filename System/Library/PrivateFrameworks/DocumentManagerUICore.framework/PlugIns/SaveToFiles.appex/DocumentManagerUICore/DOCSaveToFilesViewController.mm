@interface DOCSaveToFilesViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)fileManager:(id)a3 shouldProceedAfterError:(id)a4 removingItemAtURL:(id)a5;
- (NSArray)keyCommands;
- (id)loadItemProvider:(id)a3 error:(id *)a4;
- (void)__completeRequestWithError:(id)a3 completion:(id)a4;
- (void)_completeRequestWithError:(id)a3 completion:(id)a4;
- (void)_markOrphanedTemporaryItemsPurgeable;
- (void)_markPurgeable:(id)a3;
- (void)documentPickerDidCancel:(id)a3;
- (void)loadAttachments;
- (void)loadDataWithTypes:(id)a3 fromItemProvider:(id)a4 completionHandler:(id)a5;
- (void)loadFileURLFromItemProvider:(id)a3 completionHandler:(id)a4;
- (void)performDeselectAll:(id)a3;
- (void)performGoToDesktop:(id)a3;
- (void)performGoToDocuments:(id)a3;
- (void)performGoToDownloads:(id)a3;
- (void)performGoToEnclosingFolder:(id)a3;
- (void)performGoToICloudDrive:(id)a3;
- (void)performGoToOnMyDevice:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentDocumentPickerForURLs:(id)a3;
- (void)registerForIconUpdates;
- (void)selectAll:(id)a3;
- (void)viewDidLoad;
@end

@implementation DOCSaveToFilesViewController

- (void)viewDidLoad
{
  setiopolicy_np(3, 0, 1);
  v5.receiver = self;
  v5.super_class = DOCSaveToFilesViewController;
  [(DOCSaveToFilesViewController *)&v5 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(DOCSaveToFilesViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(DOCSaveToFilesViewController *)self loadAttachments];
  self->_didLoadAttachments = 1;
  [(DOCSaveToFilesViewController *)self registerForIconUpdates];
}

- (void)loadAttachments
{
  if (!self->_urlsToRemoveOnCompletion)
  {
    v3 = objc_alloc_init(NSMutableArray);
    urlsToRemoveOnCompletion = self->_urlsToRemoveOnCompletion;
    self->_urlsToRemoveOnCompletion = v3;
  }

  v5 = [(DOCSaveToFilesViewController *)self extensionContext];
  v6 = [v5 inputItems];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [v7 attachments];
    v9 = [v8 firstObject];

    if (v9)
    {
      v36 = v9;
      v10 = [v7 attachments];
      v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);

      v12 = [v7 attachments];
      v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v38 = v7;
      v14 = [v7 attachments];
      v15 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v48;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v48 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v47 + 1) + 8 * i);
            v46 = 0;
            v20 = [(DOCSaveToFilesViewController *)self loadItemProvider:v19 error:&v46];
            v21 = v46;
            if (v20)
            {
              [v11 addObject:v20];
            }

            if (v21)
            {
              [v13 addObject:v21];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v16);
      }

      v37 = self;

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = [v11 copy];
      v22 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v43;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v43 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v42 + 1) + 8 * j);
            v27 = [v26 lastPathComponent];

            if (v27)
            {
              v28 = v13;
              v40 = 0;
              v41 = 0;
              v29 = [v26 getPromisedItemResourceValue:&v41 forKey:NSURLNameKey error:&v40];
              v30 = v41;
              v31 = v40;
              v32 = v31;
              if ((v29 & 1) == 0)
              {
                NSLog(@"Given a URL that is not pointing to an existing file: %@. Error: %@", v26, v31);
                [v11 removeObject:v26];
              }

              v13 = v28;
            }

            else
            {
              NSLog(@"Given invalid URL: %@", v26);
              [v11 removeObject:v26];
            }
          }

          v23 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v23);
      }

      if ([v11 count])
      {
        [(DOCSaveToFilesViewController *)v37 presentDocumentPickerForURLs:v11];
      }

      else
      {
        if ([v13 count])
        {
          [v13 firstObject];
        }

        else
        {
          NSLog(@"No valid URLs to present the picker for");
          [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        }
        v35 = ;
        [(DOCSaveToFilesViewController *)v37 _completeRequestWithError:v35];
      }

      v7 = v38;

      v9 = v36;
    }

    else
    {
      NSLog(@"no attachment found");
      v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      [(DOCSaveToFilesViewController *)self _completeRequestWithError:v34];
    }
  }

  else
  {
    NSLog(@"no input item found");
    v33 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    [(DOCSaveToFilesViewController *)self _completeRequestWithError:v33];
  }
}

- (id)loadItemProvider:(id)a3 error:(id *)a4
{
  v6 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1000023EC;
  v33 = sub_1000023FC;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000023EC;
  v27 = sub_1000023FC;
  v28 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100002404;
  v22[3] = &unk_10000C4E8;
  v22[4] = self;
  v7 = objc_retainBlock(v22);
  v8 = dispatch_semaphore_create(0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002594;
  v15[3] = &unk_10000C538;
  v20 = &v29;
  v9 = v7;
  v19 = v9;
  v10 = v8;
  v16 = v10;
  v11 = v6;
  v17 = v11;
  v18 = self;
  v21 = &v23;
  [(DOCSaveToFilesViewController *)self loadFileURLFromItemProvider:v11 completionHandler:v15];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    v12 = v24[5];
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v13;
}

- (void)loadDataWithTypes:(id)a3 fromItemProvider:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_1000023EC;
    v24 = sub_1000023FC;
    v25 = [v8 firstObject];
    v11 = v21[5];
    v26 = NSItemProviderOptionsDispatchModeKey;
    v27 = NSItemProviderOptionsDispatchModeAsynchronous;
    v12 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100002B30;
    v14[3] = &unk_10000C560;
    v18 = v10;
    v19 = &v20;
    v15 = v9;
    v16 = self;
    v17 = v8;
    [v15 loadItemForTypeIdentifier:v11 options:v12 completionHandler:v14];

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
    (*(v10 + 2))(v10, 0, v13);
  }
}

- (void)loadFileURLFromItemProvider:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [UTTypeFileURL identifier];
  v12 = NSItemProviderOptionsDispatchModeKey;
  v13 = NSItemProviderOptionsDispatchModeAsynchronous;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003198;
  v10[3] = &unk_10000C588;
  v11 = v5;
  v9 = v5;
  [v6 loadItemForTypeIdentifier:v7 options:v8 completionHandler:v10];
}

- (void)presentDocumentPickerForURLs:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003328;
  v4[3] = &unk_10000C5B0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = DOCSaveToFilesViewController;
  v4 = a3;
  [(DOCSaveToFilesViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(DOCSaveToFilesViewController *)self setPreferredContentSize:v6, v8];
}

- (void)_completeRequestWithError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_didLoadAttachments)
  {
    [(DOCSaveToFilesViewController *)self __completeRequestWithError:v6 completion:v7];
  }

  else
  {
    v8 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003C50;
    block[3] = &unk_10000C5D8;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_after(v8, &_dispatch_main_q, block);
  }
}

- (void)__completeRequestWithError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v21 = a4;
  v22 = v6;
  v7 = @"with error: ";
  v8 = &stru_10000CB88;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v7 = &stru_10000CB88;
  }

  NSLog(@"completing request%@%@", v7, v8);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = self->_urlsToRemoveOnCompletion;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = +[NSFileManager defaultManager];
        v25 = 0;
        v16 = [v15 removeItemAtURL:v14 error:&v25];
        v17 = v25;

        if ((v16 & 1) == 0)
        {
          NSLog(@"Failed to remove %@. Error: %@", v14, v17);
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  [(DOCSaveToFilesViewController *)self _markOrphanedTemporaryItemsPurgeable];
  v18 = [(DOCSaveToFilesViewController *)self extensionContext];
  v19 = v18;
  if (v22)
  {
    [v18 cancelRequestWithError:v22];
    v20 = v21;
  }

  else
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100003EA8;
    v23[3] = &unk_10000C600;
    v20 = v21;
    v24 = v21;
    [v19 completeRequestReturningItems:0 completionHandler:v23];

    v19 = v24;
  }
}

- (void)_markPurgeable:(id)a3
{
  v3 = a3;
  v4 = [v3 fileSystemRepresentation];
  if (v4)
  {
    v9 = xmmword_100007DC0;
    v10 = 0x40000;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (fsctl(v4, 0xC0304A6FuLL, &v9, 1u))
    {
      v5 = [v3 path];
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      NSLog(@"Failed to mark '%@' as purgeable (error %d: %s)", v5, v6, v8);
    }
  }
}

- (void)_markOrphanedTemporaryItemsPurgeable
{
  v2 = NSTemporaryDirectory();
  v3 = [NSURL fileURLWithPath:v2];

  v32[0] = NSURLIsRegularFileKey;
  v32[1] = NSURLIsDirectoryKey;
  v32[2] = NSURLIsSymbolicLinkKey;
  v32[3] = NSURLIsPurgeableKey;
  v4 = [NSArray arrayWithObjects:v32 count:4];
  v5 = +[NSFileManager defaultManager];
  v21 = v3;
  v25 = v4;
  v6 = [v5 enumeratorAtURL:v3 includingPropertiesForKeys:v4 options:0 errorHandler:&stru_10000C640];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = *v28;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v26 = 0;
        v12 = [v10 resourceValuesForKeys:v25 error:&v26];
        v13 = v26;
        if (v12)
        {
          v14 = [v12 objectForKeyedSubscript:NSURLIsPurgeableKey];
          v15 = [v14 BOOLValue];

          v16 = [v12 objectForKeyedSubscript:NSURLIsRegularFileKey];
          v17 = [v16 BOOLValue];

          v18 = [v12 objectForKeyedSubscript:NSURLIsDirectoryKey];
          v19 = [v18 BOOLValue];

          if (v15)
          {
            if (v19)
            {
              [obj skipDescendants];
            }
          }

          else if ((v17 | v19))
          {
            [(DOCSaveToFilesViewController *)self _markPurgeable:v10];
          }
        }

        else
        {
          v20 = [v10 path];
          NSLog(@"Couldn't get resource values for %@ to mark purgeable. Error: %@", v20, v13);
        }

        objc_autoreleasePoolPop(v11);
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }
}

- (BOOL)fileManager:(id)a3 shouldProceedAfterError:(id)a4 removingItemAtURL:(id)a5
{
  v6 = a4;
  v7 = [a5 path];
  NSLog(@"Unable to clean up %@. Error: %@", v7, v6);

  return 1;
}

- (void)documentPickerDidCancel:(id)a3
{
  v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  [(DOCSaveToFilesViewController *)self _completeRequestWithError:v4 completion:0];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_1000066E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = DOCSaveToFilesViewController.canPerformAction(_:withSender:)(a3, v10);

  sub_100006240(v10, &qword_100010B60, &qword_100007DF0);
  return v8 & 1;
}

- (NSArray)keyCommands
{
  v2 = [objc_allocWithZone(DOCKeyCommandController) init];
  v3 = [v2 allKeyCommands];
  sub_100006450(0, &qword_100010B68, UIKeyCommand_ptr);
  sub_100006668();

  v4.super.isa = sub_100006658().super.isa;

  return v4.super.isa;
}

- (void)selectAll:(id)a3
{
  v3 = self;
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1000066E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v5 = self;
  }

  v6 = [(DOCSaveToFilesViewController *)v3 documentPickerViewController:v9];
  if (v6)
  {
    v7 = v6;
    v8 = [(DOCDocumentPickerViewController *)v6 fullDocumentManagerViewController];

    sub_1000066B8();
    v3 = v8;
  }

  sub_100006240(&v9, &qword_100010B60, &qword_100007DF0);
}

- (void)performDeselectAll:(id)a3
{
  v3 = self;
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1000066E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v5 = self;
  }

  v6 = [(DOCSaveToFilesViewController *)v3 documentPickerViewController:v10];
  if (v6)
  {
    v7 = v6;
    v8 = [(DOCDocumentPickerViewController *)v6 fullDocumentManagerViewController];

    v9 = sub_100006698();
    if (v9)
    {
      sub_1000065F8();

      v3 = v9;
    }
  }

  sub_100006240(&v10, &qword_100010B60, &qword_100007DF0);
}

- (void)performGoToEnclosingFolder:(id)a3
{
  v5 = self;
  v3 = [(DOCSaveToFilesViewController *)v5 documentPickerViewController];
  if (v3)
  {
    v4 = v3;
    [(DOCDocumentPickerViewController *)v3 showSidebar];
  }
}

- (void)performGoToDocuments:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006070(&unk_10000C8A0, sub_1000064DC, &unk_10000C8B8, 0);
}

- (void)performGoToDesktop:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006070(&unk_10000C850, sub_1000064DC, &unk_10000C868, 1);
}

- (void)performGoToDownloads:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006070(&unk_10000C800, sub_1000064DC, &unk_10000C818, 2);
}

- (void)performGoToICloudDrive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100006070(&unk_10000C760, sub_100006220, &unk_10000C778, 3);
}

- (void)performGoToOnMyDevice:(id)a3
{
  v4 = DOCDocumentSourceIdentifierLocal;
  v5 = objc_allocWithZone(DOCConcreteLocation);
  v7 = self;
  v6 = [v5 initWithSourceIdentifier:v4 node:0];
  sub_100004D64(v6);
}

- (void)registerForIconUpdates
{
  v2 = self;
  sub_100006688();
}

@end