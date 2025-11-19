@interface DDCallerIdViewControllerProvider
- (void)createViewControllerWithCompletionHandler:(id)a3;
@end

@implementation DDCallerIdViewControllerProvider

- (void)createViewControllerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UIViewController);
  v6 = objc_alloc_init(DDContactPreviewContainer);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_contentView, v6);
  [v5 setView:v6];
  v34 = 0;
  v7 = [(DDCallerIdViewControllerProvider *)self actionContext];
  v8 = [v7 createContact:&v34];

  if (v34 != 1 || !v8)
  {
LABEL_8:
    v13 = [(DDCallerIdViewControllerProvider *)self actionContext];
    v9 = [v13 contactHandle];

    if ([v9 length])
    {
      [v6 updateContactWithTitle:v9 subtitle:0 image:0 person:0];
      v4[2](v4, v5);
      v14 = TUNetworkCountryCode();
      if (v14)
      {
        v15 = [TUHandle normalizedPhoneNumberHandleForValue:v9 isoCountryCode:v14];

        if (!v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v16 = TUHomeCountryCode();
        v15 = [TUHandle normalizedPhoneNumberHandleForValue:v9 isoCountryCode:v16];

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
            v9 = v9;
            v33 = v9;
            v26 = v18;
            v27 = v24;
            dispatch_async(v25, block);

            goto LABEL_28;
          }
        }
      }
    }

LABEL_27:
    v4[2](v4, 0);
    goto LABEL_28;
  }

  v9 = [CNContactFormatter stringFromContact:v8 style:0];
  if (![v9 length])
  {

    goto LABEL_8;
  }

  if (![v8 imageDataAvailable])
  {
    v10 = 0;
    v11 = dd_applicationNameWithBundleIdentifier();
    goto LABEL_20;
  }

  v10 = [v8 thumbnailImageData];
  v11 = dd_applicationNameWithBundleIdentifier();
  if (!v10)
  {
LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  v12 = [UIImage imageWithData:v10];
LABEL_21:
  [v6 updateContactWithTitle:v9 subtitle:v11 image:v12 person:{objc_msgSend(v8, "contactType") == 0}];
  if (v10)
  {
  }

  v4[2](v4, v5);
LABEL_28:
}

@end