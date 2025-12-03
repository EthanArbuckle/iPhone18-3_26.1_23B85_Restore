@interface CSSApplicationProvider
- (id)applicationWithBundleIdentifier:(id)identifier name:(id)name shortVersionString:(id)string iconData:(id)data badgeIconData:(id)iconData;
- (id)makeOperationToGenerateIconsForWebClip:(id)clip descriptor:(id)descriptor;
- (id)webClipWithBundleIdentifier:(id)identifier;
- (void)executeGenerateIconsOperation:(id)operation descriptor:(id)descriptor completion:(id)completion;
- (void)fetchApplicationWithDescriptor:(id)descriptor completion:(id)completion;
- (void)fetchSpecificWebClipApplicationWithDescriptor:(id)descriptor completion:(id)completion;
- (void)fetchStandardApplicationWithDescriptor:(id)descriptor completion:(id)completion;
- (void)fetchWebClipHostApplicationWithDescriptor:(id)descriptor completion:(id)completion;
@end

@implementation CSSApplicationProvider

- (void)fetchApplicationWithDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  v7 = [CRKWebClipBundleIdentifier alloc];
  bundleIdentifier = [descriptorCopy bundleIdentifier];
  v9 = [v7 initWithString:bundleIdentifier];

  if ([v9 isWebClipHostApplication])
  {
    [(CSSApplicationProvider *)self fetchWebClipHostApplicationWithDescriptor:descriptorCopy completion:completionCopy];
  }

  else if ([v9 isSpecificWebClip])
  {
    [(CSSApplicationProvider *)self fetchSpecificWebClipApplicationWithDescriptor:descriptorCopy completion:completionCopy];
  }

  else
  {
    [(CSSApplicationProvider *)self fetchStandardApplicationWithDescriptor:descriptorCopy completion:completionCopy];
  }
}

- (void)fetchStandardApplicationWithDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  bundleIdentifier = [descriptorCopy bundleIdentifier];
  v20 = 0;
  v9 = [[LSApplicationRecord alloc] initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v20];
  v10 = v20;
  if (v9)
  {
    applicationState = [v9 applicationState];
    isInstalled = [applicationState isInstalled];

    if (isInstalled)
    {
      v13 = [[CSSGenerateApplicationIconsOperation alloc] initWithDescriptor:descriptorCopy];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10000505C;
      v16[3] = &unk_10000C788;
      v16[4] = self;
      v17 = bundleIdentifier;
      v18 = v9;
      v19 = completionCopy;
      [(CSSApplicationProvider *)self executeGenerateIconsOperation:v13 descriptor:descriptorCopy completion:v16];
    }

    else
    {
      if (bundleIdentifier)
      {
        v21 = @"kCRKBundleIdentifierErrorKey";
        v22 = bundleIdentifier;
        v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      }

      else
      {
        v14 = 0;
      }

      v15 = CRKErrorWithCodeAndUserInfo();
      (*(completionCopy + 2))(completionCopy, 0, v15);

      if (bundleIdentifier)
      {
      }
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

- (void)fetchWebClipHostApplicationWithDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  v8 = [[CSSGenerateApplicationIconsOperation alloc] initWithDescriptor:descriptorCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005238;
  v11[3] = &unk_10000C7B0;
  v11[4] = self;
  v12 = descriptorCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = descriptorCopy;
  [(CSSApplicationProvider *)self executeGenerateIconsOperation:v8 descriptor:v10 completion:v11];
}

- (void)fetchSpecificWebClipApplicationWithDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  bundleIdentifier = [descriptorCopy bundleIdentifier];
  v9 = [(CSSApplicationProvider *)self webClipWithBundleIdentifier:bundleIdentifier];
  if (v9)
  {
    v10 = [(CSSApplicationProvider *)self makeOperationToGenerateIconsForWebClip:v9 descriptor:descriptorCopy];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100005534;
    v12[3] = &unk_10000C788;
    v12[4] = self;
    v13 = bundleIdentifier;
    v14 = v9;
    v15 = completionCopy;
    [(CSSApplicationProvider *)self executeGenerateIconsOperation:v10 descriptor:descriptorCopy completion:v12];

LABEL_7:
    goto LABEL_8;
  }

  if (bundleIdentifier)
  {
    v16 = @"kCRKBundleIdentifierErrorKey";
    v17 = bundleIdentifier;
    v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = CRKErrorWithCodeAndUserInfo();
  (*(completionCopy + 2))(completionCopy, 0, v11);

  if (bundleIdentifier)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (id)webClipWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
        bundleIdentifier = [v8 bundleIdentifier];
        v10 = [identifierCopy isEqualToString:bundleIdentifier];

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

- (id)makeOperationToGenerateIconsForWebClip:(id)clip descriptor:(id)descriptor
{
  clipCopy = clip;
  descriptorCopy = descriptor;
  iconImage = [clipCopy iconImage];

  v8 = [CSSGenerateApplicationIconsOperation alloc];
  if (iconImage)
  {
    v9 = [(CSSGenerateApplicationIconsOperation *)v8 initWithDescriptor:descriptorCopy webClip:clipCopy];
  }

  else
  {
    v9 = [(CSSGenerateApplicationIconsOperation *)v8 initWithDescriptor:descriptorCopy];
  }

  v10 = v9;

  return v10;
}

- (void)executeGenerateIconsOperation:(id)operation descriptor:(id)descriptor completion:(id)completion
{
  operationCopy = operation;
  descriptorCopy = descriptor;
  completionCopy = completion;
  v10 = +[CATOperationQueue crk_backgroundQueue];
  [v10 addOperation:operationCopy];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000593C;
  v16[3] = &unk_10000C710;
  v17 = operationCopy;
  v18 = descriptorCopy;
  v19 = completionCopy;
  v11 = completionCopy;
  v12 = descriptorCopy;
  v13 = operationCopy;
  v14 = [NSBlockOperation blockOperationWithBlock:v16];
  [v14 addDependency:v13];
  v15 = +[NSOperationQueue mainQueue];
  [v15 addOperation:v14];
}

- (id)applicationWithBundleIdentifier:(id)identifier name:(id)name shortVersionString:(id)string iconData:(id)data badgeIconData:(id)iconData
{
  iconDataCopy = iconData;
  dataCopy = data;
  stringCopy = string;
  nameCopy = name;
  identifierCopy = identifier;
  v16 = objc_opt_new();
  [v16 setBundleIdentifier:identifierCopy];

  [v16 setName:nameCopy];
  [v16 setShortVersionString:stringCopy];

  [v16 setIconData:dataCopy];
  [v16 setBadgeIconData:iconDataCopy];

  return v16;
}

@end