@interface CSSApplicationProvider
- (id)applicationWithBundleIdentifier:(id)a3 name:(id)a4 shortVersionString:(id)a5 iconData:(id)a6 badgeIconData:(id)a7;
- (id)makeOperationToGenerateIconsForWebClip:(id)a3 descriptor:(id)a4;
- (id)webClipWithBundleIdentifier:(id)a3;
- (void)executeGenerateIconsOperation:(id)a3 descriptor:(id)a4 completion:(id)a5;
- (void)fetchApplicationWithDescriptor:(id)a3 completion:(id)a4;
- (void)fetchSpecificWebClipApplicationWithDescriptor:(id)a3 completion:(id)a4;
- (void)fetchStandardApplicationWithDescriptor:(id)a3 completion:(id)a4;
- (void)fetchWebClipHostApplicationWithDescriptor:(id)a3 completion:(id)a4;
@end

@implementation CSSApplicationProvider

- (void)fetchApplicationWithDescriptor:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [CRKWebClipBundleIdentifier alloc];
  v8 = [v10 bundleIdentifier];
  v9 = [v7 initWithString:v8];

  if ([v9 isWebClipHostApplication])
  {
    [(CSSApplicationProvider *)self fetchWebClipHostApplicationWithDescriptor:v10 completion:v6];
  }

  else if ([v9 isSpecificWebClip])
  {
    [(CSSApplicationProvider *)self fetchSpecificWebClipApplicationWithDescriptor:v10 completion:v6];
  }

  else
  {
    [(CSSApplicationProvider *)self fetchStandardApplicationWithDescriptor:v10 completion:v6];
  }
}

- (void)fetchStandardApplicationWithDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bundleIdentifier];
  v20 = 0;
  v9 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v20];
  v10 = v20;
  if (v9)
  {
    v11 = [v9 applicationState];
    v12 = [v11 isInstalled];

    if (v12)
    {
      v13 = [[CSSGenerateApplicationIconsOperation alloc] initWithDescriptor:v6];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10000505C;
      v16[3] = &unk_10000C788;
      v16[4] = self;
      v17 = v8;
      v18 = v9;
      v19 = v7;
      [(CSSApplicationProvider *)self executeGenerateIconsOperation:v13 descriptor:v6 completion:v16];
    }

    else
    {
      if (v8)
      {
        v21 = @"kCRKBundleIdentifierErrorKey";
        v22 = v8;
        v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      }

      else
      {
        v14 = 0;
      }

      v15 = CRKErrorWithCodeAndUserInfo();
      (*(v7 + 2))(v7, 0, v15);

      if (v8)
      {
      }
    }
  }

  else
  {
    (*(v7 + 2))(v7, 0, v10);
  }
}

- (void)fetchWebClipHostApplicationWithDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[CSSGenerateApplicationIconsOperation alloc] initWithDescriptor:v6];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005238;
  v11[3] = &unk_10000C7B0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(CSSApplicationProvider *)self executeGenerateIconsOperation:v8 descriptor:v10 completion:v11];
}

- (void)fetchSpecificWebClipApplicationWithDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bundleIdentifier];
  v9 = [(CSSApplicationProvider *)self webClipWithBundleIdentifier:v8];
  if (v9)
  {
    v10 = [(CSSApplicationProvider *)self makeOperationToGenerateIconsForWebClip:v9 descriptor:v6];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100005534;
    v12[3] = &unk_10000C788;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    v15 = v7;
    [(CSSApplicationProvider *)self executeGenerateIconsOperation:v10 descriptor:v6 completion:v12];

LABEL_7:
    goto LABEL_8;
  }

  if (v8)
  {
    v16 = @"kCRKBundleIdentifierErrorKey";
    v17 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = CRKErrorWithCodeAndUserInfo();
  (*(v7 + 2))(v7, 0, v11);

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (id)webClipWithBundleIdentifier:(id)a3
{
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = +[UIWebClip webClips];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 bundleIdentifier];
        v10 = [v3 isEqualToString:v9];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)makeOperationToGenerateIconsForWebClip:(id)a3 descriptor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 iconImage];

  v8 = [CSSGenerateApplicationIconsOperation alloc];
  if (v7)
  {
    v9 = [(CSSGenerateApplicationIconsOperation *)v8 initWithDescriptor:v6 webClip:v5];
  }

  else
  {
    v9 = [(CSSGenerateApplicationIconsOperation *)v8 initWithDescriptor:v6];
  }

  v10 = v9;

  return v10;
}

- (void)executeGenerateIconsOperation:(id)a3 descriptor:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[CATOperationQueue crk_backgroundQueue];
  [v10 addOperation:v7];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000593C;
  v16[3] = &unk_10000C710;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = [NSBlockOperation blockOperationWithBlock:v16];
  [v14 addDependency:v13];
  v15 = +[NSOperationQueue mainQueue];
  [v15 addOperation:v14];
}

- (id)applicationWithBundleIdentifier:(id)a3 name:(id)a4 shortVersionString:(id)a5 iconData:(id)a6 badgeIconData:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_new();
  [v16 setBundleIdentifier:v15];

  [v16 setName:v14];
  [v16 setShortVersionString:v13];

  [v16 setIconData:v12];
  [v16 setBadgeIconData:v11];

  return v16;
}

@end