@interface DOCSaveToFilesViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error removingItemAtURL:(id)l;
- (NSArray)keyCommands;
- (id)loadItemProvider:(id)provider error:(id *)error;
- (void)__completeRequestWithError:(id)error completion:(id)completion;
- (void)_completeRequestWithError:(id)error completion:(id)completion;
- (void)_markOrphanedTemporaryItemsPurgeable;
- (void)_markPurgeable:(id)purgeable;
- (void)documentPickerDidCancel:(id)cancel;
- (void)loadAttachments;
- (void)loadDataWithTypes:(id)types fromItemProvider:(id)provider completionHandler:(id)handler;
- (void)loadFileURLFromItemProvider:(id)provider completionHandler:(id)handler;
- (void)performDeselectAll:(id)all;
- (void)performGoToDesktop:(id)desktop;
- (void)performGoToDocuments:(id)documents;
- (void)performGoToDownloads:(id)downloads;
- (void)performGoToEnclosingFolder:(id)folder;
- (void)performGoToICloudDrive:(id)drive;
- (void)performGoToOnMyDevice:(id)device;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentDocumentPickerForURLs:(id)ls;
- (void)registerForIconUpdates;
- (void)selectAll:(id)all;
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
  view = [(DOCSaveToFilesViewController *)self view];
  [view setBackgroundColor:v3];

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

  extensionContext = [(DOCSaveToFilesViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];
  firstObject = [inputItems firstObject];

  if (firstObject)
  {
    attachments = [firstObject attachments];
    firstObject2 = [attachments firstObject];

    if (firstObject2)
    {
      v36 = firstObject2;
      attachments2 = [firstObject attachments];
      v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [attachments2 count]);

      attachments3 = [firstObject attachments];
      v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [attachments3 count]);

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v38 = firstObject;
      attachments4 = [firstObject attachments];
      v15 = [attachments4 countByEnumeratingWithState:&v47 objects:v52 count:16];
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
              objc_enumerationMutation(attachments4);
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

          v16 = [attachments4 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v16);
      }

      selfCopy = self;

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
            lastPathComponent = [v26 lastPathComponent];

            if (lastPathComponent)
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
        [(DOCSaveToFilesViewController *)selfCopy presentDocumentPickerForURLs:v11];
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
        [(DOCSaveToFilesViewController *)selfCopy _completeRequestWithError:v35];
      }

      firstObject = v38;

      firstObject2 = v36;
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

- (id)loadItemProvider:(id)provider error:(id *)error
{
  providerCopy = provider;
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
  v11 = providerCopy;
  v17 = v11;
  selfCopy = self;
  v21 = &v23;
  [(DOCSaveToFilesViewController *)self loadFileURLFromItemProvider:v11 completionHandler:v15];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v12 = v24[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v30[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v13;
}

- (void)loadDataWithTypes:(id)types fromItemProvider:(id)provider completionHandler:(id)handler
{
  typesCopy = types;
  providerCopy = provider;
  handlerCopy = handler;
  if ([typesCopy count])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_1000023EC;
    v24 = sub_1000023FC;
    firstObject = [typesCopy firstObject];
    v11 = v21[5];
    v26 = NSItemProviderOptionsDispatchModeKey;
    v27 = NSItemProviderOptionsDispatchModeAsynchronous;
    v12 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100002B30;
    v14[3] = &unk_10000C560;
    v18 = handlerCopy;
    v19 = &v20;
    v15 = providerCopy;
    selfCopy = self;
    v17 = typesCopy;
    [v15 loadItemForTypeIdentifier:v11 options:v12 completionHandler:v14];

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

- (void)loadFileURLFromItemProvider:(id)provider completionHandler:(id)handler
{
  handlerCopy = handler;
  providerCopy = provider;
  identifier = [UTTypeFileURL identifier];
  v12 = NSItemProviderOptionsDispatchModeKey;
  v13 = NSItemProviderOptionsDispatchModeAsynchronous;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003198;
  v10[3] = &unk_10000C588;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [providerCopy loadItemForTypeIdentifier:identifier options:v8 completionHandler:v10];
}

- (void)presentDocumentPickerForURLs:(id)ls
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003328;
  v4[3] = &unk_10000C5B0;
  v4[4] = self;
  lsCopy = ls;
  v3 = lsCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = DOCSaveToFilesViewController;
  containerCopy = container;
  [(DOCSaveToFilesViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(DOCSaveToFilesViewController *)self setPreferredContentSize:v6, v8];
}

- (void)_completeRequestWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  if (self->_didLoadAttachments)
  {
    [(DOCSaveToFilesViewController *)self __completeRequestWithError:errorCopy completion:completionCopy];
  }

  else
  {
    v8 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003C50;
    block[3] = &unk_10000C5D8;
    block[4] = self;
    v10 = errorCopy;
    v11 = completionCopy;
    dispatch_after(v8, &_dispatch_main_q, block);
  }
}

- (void)__completeRequestWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v22 = errorCopy;
  v7 = @"with error: ";
  v8 = &stru_10000CB88;
  if (errorCopy)
  {
    v8 = errorCopy;
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
  extensionContext = [(DOCSaveToFilesViewController *)self extensionContext];
  v19 = extensionContext;
  if (v22)
  {
    [extensionContext cancelRequestWithError:v22];
    v20 = completionCopy;
  }

  else
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100003EA8;
    v23[3] = &unk_10000C600;
    v20 = completionCopy;
    v24 = completionCopy;
    [v19 completeRequestReturningItems:0 completionHandler:v23];

    v19 = v24;
  }
}

- (void)_markPurgeable:(id)purgeable
{
  purgeableCopy = purgeable;
  fileSystemRepresentation = [purgeableCopy fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    v9 = xmmword_100007DC0;
    v10 = 0x40000;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (fsctl(fileSystemRepresentation, 0xC0304A6FuLL, &v9, 1u))
    {
      path = [purgeableCopy path];
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      NSLog(@"Failed to mark '%@' as purgeable (error %d: %s)", path, v6, v8);
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
          bOOLValue = [v14 BOOLValue];

          v16 = [v12 objectForKeyedSubscript:NSURLIsRegularFileKey];
          bOOLValue2 = [v16 BOOLValue];

          v18 = [v12 objectForKeyedSubscript:NSURLIsDirectoryKey];
          bOOLValue3 = [v18 BOOLValue];

          if (bOOLValue)
          {
            if (bOOLValue3)
            {
              [obj skipDescendants];
            }
          }

          else if ((bOOLValue2 | bOOLValue3))
          {
            [(DOCSaveToFilesViewController *)self _markPurgeable:v10];
          }
        }

        else
        {
          path = [v10 path];
          NSLog(@"Couldn't get resource values for %@ to mark purgeable. Error: %@", path, v13);
        }

        objc_autoreleasePoolPop(v11);
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }
}

- (BOOL)fileManager:(id)manager shouldProceedAfterError:(id)error removingItemAtURL:(id)l
{
  errorCopy = error;
  path = [l path];
  NSLog(@"Unable to clean up %@. Error: %@", path, errorCopy);

  return 1;
}

- (void)documentPickerDidCancel:(id)cancel
{
  v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  [(DOCSaveToFilesViewController *)self _completeRequestWithError:v4 completion:0];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1000066E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = DOCSaveToFilesViewController.canPerformAction(_:withSender:)(action, v10);

  sub_100006240(v10, &qword_100010B60, &qword_100007DF0);
  return v8 & 1;
}

- (NSArray)keyCommands
{
  v2 = [objc_allocWithZone(DOCKeyCommandController) init];
  allKeyCommands = [v2 allKeyCommands];
  sub_100006450(0, &qword_100010B68, UIKeyCommand_ptr);
  sub_100006668();

  v4.super.isa = sub_100006658().super.isa;

  return v4.super.isa;
}

- (void)selectAll:(id)all
{
  selfCopy = self;
  if (all)
  {
    selfCopy2 = self;
    swift_unknownObjectRetain();
    sub_1000066E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    selfCopy3 = self;
  }

  v6 = [(DOCSaveToFilesViewController *)selfCopy documentPickerViewController:v9];
  if (v6)
  {
    v7 = v6;
    fullDocumentManagerViewController = [(DOCDocumentPickerViewController *)v6 fullDocumentManagerViewController];

    sub_1000066B8();
    selfCopy = fullDocumentManagerViewController;
  }

  sub_100006240(&v9, &qword_100010B60, &qword_100007DF0);
}

- (void)performDeselectAll:(id)all
{
  selfCopy = self;
  if (all)
  {
    selfCopy2 = self;
    swift_unknownObjectRetain();
    sub_1000066E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    selfCopy3 = self;
  }

  v6 = [(DOCSaveToFilesViewController *)selfCopy documentPickerViewController:v10];
  if (v6)
  {
    v7 = v6;
    fullDocumentManagerViewController = [(DOCDocumentPickerViewController *)v6 fullDocumentManagerViewController];

    v9 = sub_100006698();
    if (v9)
    {
      sub_1000065F8();

      selfCopy = v9;
    }
  }

  sub_100006240(&v10, &qword_100010B60, &qword_100007DF0);
}

- (void)performGoToEnclosingFolder:(id)folder
{
  selfCopy = self;
  documentPickerViewController = [(DOCSaveToFilesViewController *)selfCopy documentPickerViewController];
  if (documentPickerViewController)
  {
    v4 = documentPickerViewController;
    [(DOCDocumentPickerViewController *)documentPickerViewController showSidebar];
  }
}

- (void)performGoToDocuments:(id)documents
{
  documentsCopy = documents;
  selfCopy = self;
  sub_100006070(&unk_10000C8A0, sub_1000064DC, &unk_10000C8B8, 0);
}

- (void)performGoToDesktop:(id)desktop
{
  desktopCopy = desktop;
  selfCopy = self;
  sub_100006070(&unk_10000C850, sub_1000064DC, &unk_10000C868, 1);
}

- (void)performGoToDownloads:(id)downloads
{
  downloadsCopy = downloads;
  selfCopy = self;
  sub_100006070(&unk_10000C800, sub_1000064DC, &unk_10000C818, 2);
}

- (void)performGoToICloudDrive:(id)drive
{
  driveCopy = drive;
  selfCopy = self;
  sub_100006070(&unk_10000C760, sub_100006220, &unk_10000C778, 3);
}

- (void)performGoToOnMyDevice:(id)device
{
  v4 = DOCDocumentSourceIdentifierLocal;
  v5 = objc_allocWithZone(DOCConcreteLocation);
  selfCopy = self;
  v6 = [v5 initWithSourceIdentifier:v4 node:0];
  sub_100004D64(v6);
}

- (void)registerForIconUpdates
{
  selfCopy = self;
  sub_100006688();
}

@end