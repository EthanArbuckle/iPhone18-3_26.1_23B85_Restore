@interface DDCallerIdViewControllerProvider
- (void)createViewControllerWithCompletionHandler:(id)handler;
@end

@implementation DDCallerIdViewControllerProvider

- (void)createViewControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(UIViewController);
  v6 = objc_alloc_init(DDContactPreviewContainer);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_contentView, v6);
  [v5 setView:v6];
  v34 = 0;
  actionContext = [(DDCallerIdViewControllerProvider *)self actionContext];
  v8 = [actionContext createContact:&v34];

  if (v34 != 1 || !v8)
  {
LABEL_8:
    actionContext2 = [(DDCallerIdViewControllerProvider *)self actionContext];
    contactHandle = [actionContext2 contactHandle];

    if ([contactHandle length])
    {
      [v6 updateContactWithTitle:contactHandle subtitle:0 image:0 person:0];
      handlerCopy[2](handlerCopy, v5);
      v14 = TUNetworkCountryCode();
      if (v14)
      {
        v15 = [TUHandle normalizedPhoneNumberHandleForValue:contactHandle isoCountryCode:v14];

        if (!v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v16 = TUHomeCountryCode();
        v15 = [TUHandle normalizedPhoneNumberHandleForValue:contactHandle isoCountryCode:v16];

        if (!v15)
        {
          goto LABEL_27;
        }
      }

      v17 = [[TUMetadataDestinationID alloc] initWithHandle:v15];
      if (v17)
      {
        v18 = v17;
        v19 = [[TUCallDirectoryMetadataCacheDataProvider alloc] initWithCacheOnly:0];
        if (v19)
        {
          v20 = v19;
          if (qword_10000CCF0 != -1)
          {
            sub_100003D8C();
          }

          v21 = [TUMetadataCache alloc];
          v22 = qword_10000CCF8;
          v35 = v20;
          [NSArray arrayWithObjects:&v35 count:1];
          v23 = v28 = v20;
          v24 = [v21 initWithQueue:v22 dataProviders:v23];

          if (v24)
          {
            v25 = dispatch_get_global_queue(33, 0);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100002D20;
            block[3] = &unk_100008468;
            v30 = v24;
            v31 = v18;
            v32 = v6;
            contactHandle = contactHandle;
            v33 = contactHandle;
            v26 = v18;
            v27 = v24;
            dispatch_async(v25, block);

            goto LABEL_28;
          }
        }
      }
    }

LABEL_27:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_28;
  }

  contactHandle = [CNContactFormatter stringFromContact:v8 style:0];
  if (![contactHandle length])
  {

    goto LABEL_8;
  }

  if (![v8 imageDataAvailable])
  {
    thumbnailImageData = 0;
    v11 = dd_applicationNameWithBundleIdentifier();
    goto LABEL_20;
  }

  thumbnailImageData = [v8 thumbnailImageData];
  v11 = dd_applicationNameWithBundleIdentifier();
  if (!thumbnailImageData)
  {
LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  v12 = [UIImage imageWithData:thumbnailImageData];
LABEL_21:
  [v6 updateContactWithTitle:contactHandle subtitle:v11 image:v12 person:{objc_msgSend(v8, "contactType") == 0}];
  if (thumbnailImageData)
  {
  }

  handlerCopy[2](handlerCopy, v5);
LABEL_28:
}

@end