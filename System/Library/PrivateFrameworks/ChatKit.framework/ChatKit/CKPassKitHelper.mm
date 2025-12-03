@interface CKPassKitHelper
+ (id)addPassesViewControllerForPass:(id)pass;
+ (id)localizedNameForPass:(id)pass;
+ (id)mailAttachmentIconForPass:(id)pass;
+ (id)organizationNameForPass:(id)pass;
+ (id)passViewForPass:(id)pass content:(int64_t)content;
@end

@implementation CKPassKitHelper

+ (id)mailAttachmentIconForPass:(id)pass
{
  passCopy = pass;
  if (PassKitUILibraryCore())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__CKPassKitHelper_mailAttachmentIconForPass___block_invoke;
    block[3] = &unk_1E72EBA18;
    v4 = passCopy;
    v8 = v4;
    if (mailAttachmentIconForPass__onceToken != -1)
    {
      dispatch_once(&mailAttachmentIconForPass__onceToken, block);
    }

    if (mailAttachmentIconForPass__respondsToSelector == 1)
    {
      mailAttachmentIcon = [v4 mailAttachmentIcon];
    }

    else
    {
      mailAttachmentIcon = 0;
    }
  }

  else
  {
    mailAttachmentIcon = 0;
  }

  return mailAttachmentIcon;
}

uint64_t __45__CKPassKitHelper_mailAttachmentIconForPass___block_invoke()
{
  result = objc_opt_respondsToSelector();
  mailAttachmentIconForPass__respondsToSelector = result & 1;
  return result;
}

+ (id)localizedNameForPass:(id)pass
{
  passCopy = pass;
  if (PassKitUILibraryCore())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__CKPassKitHelper_localizedNameForPass___block_invoke;
    block[3] = &unk_1E72EBA18;
    v4 = passCopy;
    v8 = v4;
    if (localizedNameForPass__onceToken != -1)
    {
      dispatch_once(&localizedNameForPass__onceToken, block);
    }

    if (localizedNameForPass__respondsToSelector == 1)
    {
      localizedName = [v4 localizedName];
    }

    else
    {
      localizedName = 0;
    }
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

uint64_t __40__CKPassKitHelper_localizedNameForPass___block_invoke()
{
  result = objc_opt_respondsToSelector();
  localizedNameForPass__respondsToSelector = result & 1;
  return result;
}

+ (id)organizationNameForPass:(id)pass
{
  passCopy = pass;
  if (PassKitUILibraryCore())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__CKPassKitHelper_organizationNameForPass___block_invoke;
    block[3] = &unk_1E72EBA18;
    v4 = passCopy;
    v8 = v4;
    if (organizationNameForPass__onceToken != -1)
    {
      dispatch_once(&organizationNameForPass__onceToken, block);
    }

    if (organizationNameForPass__respondsToSelector == 1)
    {
      organizationName = [v4 organizationName];
    }

    else
    {
      organizationName = 0;
    }
  }

  else
  {
    organizationName = 0;
  }

  return organizationName;
}

uint64_t __43__CKPassKitHelper_organizationNameForPass___block_invoke()
{
  result = objc_opt_respondsToSelector();
  organizationNameForPass__respondsToSelector = result & 1;
  return result;
}

+ (id)passViewForPass:(id)pass content:(int64_t)content
{
  passCopy = pass;
  if (PassKitUILibraryCore())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v6 = getPKPassViewClass_softClass;
    v13 = getPKPassViewClass_softClass;
    if (!getPKPassViewClass_softClass)
    {
      PassKitUILibraryCore();
      v11[3] = objc_getClass("PKPassView");
      getPKPassViewClass_softClass = v11[3];
      v6 = v11[3];
    }

    v7 = v6;
    _Block_object_dispose(&v10, 8);
    v8 = [[v6 alloc] initWithPass:passCopy content:content];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)addPassesViewControllerForPass:(id)pass
{
  passCopy = pass;
  if (PassKitUILibraryCore())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v4 = getPKAddPassesViewControllerClass_softClass;
    v11 = getPKAddPassesViewControllerClass_softClass;
    if (!getPKAddPassesViewControllerClass_softClass)
    {
      PassKitUILibraryCore();
      v9[3] = objc_getClass("PKAddPassesViewController");
      getPKAddPassesViewControllerClass_softClass = v9[3];
      v4 = v9[3];
    }

    v5 = v4;
    _Block_object_dispose(&v8, 8);
    v6 = [[v4 alloc] initWithPass:passCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end