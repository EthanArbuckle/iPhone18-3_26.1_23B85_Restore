@interface CNUIIncomingCallSnapshotViewController
+ (CGRect)horizontalNameLabelBoundingRectForName:(id)name window:(id)window;
+ (CGRect)verticalNameLabelBoundingRectForName:(id)name window:(id)window;
+ (id)posterDisplayNameComponentsForContact:(id)contact;
+ (int64_t)styleIncludingCallButtons:(BOOL)buttons canShowPoster:(BOOL)poster;
+ (void)incomingCallAvatarSnapshotForAvatarImageData:(id)data contact:(id)contact windowScene:(id)scene completionBlock:(id)block;
+ (void)incomingCallPlaceholderSnapshotForContact:(id)contact windowScene:(id)scene completionBlock:(id)block;
+ (void)incomingCallSnapshotForConfiguration:(id)configuration contact:(id)contact includingCallButtons:(BOOL)buttons windowScene:(id)scene completionBlock:(id)block;
+ (void)incomingCallSnapshotForConfiguration:(id)configuration nameString:(id)string includingCallButtons:(BOOL)buttons windowScene:(id)scene completionBlock:(id)block;
+ (void)incomingCallSnapshotForConfiguration:(id)configuration style:(int64_t)style contact:(id)contact nameString:(id)string avatarImage:(id)image windowScene:(id)scene completionBlock:(id)block;
+ (void)incomingCallSnapshotForPosterArchiveData:(id)data contact:(id)contact includingCallButtons:(BOOL)buttons windowScene:(id)scene completionBlock:(id)block;
@end

@implementation CNUIIncomingCallSnapshotViewController

+ (id)posterDisplayNameComponentsForContact:(id)contact
{
  contactCopy = contact;
  v4 = [getTPInComingCallUISnapshotViewControllerClass() posterDisplayNameComponentsForContact:contactCopy];

  return v4;
}

+ (CGRect)verticalNameLabelBoundingRectForName:(id)name window:(id)window
{
  windowCopy = window;
  nameCopy = name;
  [getTPInComingCallUISnapshotViewControllerClass() verticalNameLabelBoundingRectForName:nameCopy window:windowCopy];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

+ (CGRect)horizontalNameLabelBoundingRectForName:(id)name window:(id)window
{
  windowCopy = window;
  nameCopy = name;
  [getTPInComingCallUISnapshotViewControllerClass() horizontalNameLabelBoundingRectForName:nameCopy window:windowCopy];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

+ (void)incomingCallPlaceholderSnapshotForContact:(id)contact windowScene:(id)scene completionBlock:(id)block
{
  blockCopy = block;
  sceneCopy = scene;
  contactCopy = contact;
  [objc_opt_class() incomingCallSnapshotForConfiguration:0 style:5 contact:contactCopy nameString:0 avatarImage:0 windowScene:sceneCopy completionBlock:blockCopy];
}

+ (void)incomingCallAvatarSnapshotForAvatarImageData:(id)data contact:(id)contact windowScene:(id)scene completionBlock:(id)block
{
  v9 = MEMORY[0x1E69DCAB8];
  blockCopy = block;
  sceneCopy = scene;
  contactCopy = contact;
  v15 = [v9 imageWithData:data];
  LODWORD(data) = [getTPInComingCallUISnapshotViewControllerClass() instancesRespondToSelector:sel_initWithConfiguration_style_nameString_avatarImage_];
  v13 = objc_opt_class();
  if (data)
  {
    v14 = 6;
  }

  else
  {
    v14 = 5;
  }

  [v13 incomingCallSnapshotForConfiguration:0 style:v14 contact:contactCopy nameString:0 avatarImage:v15 windowScene:sceneCopy completionBlock:blockCopy];
}

+ (void)incomingCallSnapshotForPosterArchiveData:(id)data contact:(id)contact includingCallButtons:(BOOL)buttons windowScene:(id)scene completionBlock:(id)block
{
  buttonsCopy = buttons;
  blockCopy = block;
  sceneCopy = scene;
  contactCopy = contact;
  v14 = [CNUIPRSPosterArchiver unarchiveCNConfigurationFromData:data error:0];
  [objc_opt_class() incomingCallSnapshotForConfiguration:v14 contact:contactCopy includingCallButtons:buttonsCopy windowScene:sceneCopy completionBlock:blockCopy];
}

+ (void)incomingCallSnapshotForConfiguration:(id)configuration nameString:(id)string includingCallButtons:(BOOL)buttons windowScene:(id)scene completionBlock:(id)block
{
  buttonsCopy = buttons;
  v11 = configuration != 0;
  blockCopy = block;
  sceneCopy = scene;
  stringCopy = string;
  configurationCopy = configuration;
  v15 = [objc_opt_class() styleIncludingCallButtons:buttonsCopy canShowPoster:v11];
  [objc_opt_class() incomingCallSnapshotForConfiguration:configurationCopy style:v15 contact:0 nameString:stringCopy avatarImage:0 windowScene:sceneCopy completionBlock:blockCopy];
}

+ (void)incomingCallSnapshotForConfiguration:(id)configuration contact:(id)contact includingCallButtons:(BOOL)buttons windowScene:(id)scene completionBlock:(id)block
{
  buttonsCopy = buttons;
  v11 = configuration != 0;
  blockCopy = block;
  sceneCopy = scene;
  contactCopy = contact;
  configurationCopy = configuration;
  v15 = [objc_opt_class() styleIncludingCallButtons:buttonsCopy canShowPoster:v11];
  [objc_opt_class() incomingCallSnapshotForConfiguration:configurationCopy style:v15 contact:contactCopy nameString:0 avatarImage:0 windowScene:sceneCopy completionBlock:blockCopy];
}

+ (void)incomingCallSnapshotForConfiguration:(id)configuration style:(int64_t)style contact:(id)contact nameString:(id)string avatarImage:(id)image windowScene:(id)scene completionBlock:(id)block
{
  configurationCopy = configuration;
  contactCopy = contact;
  stringCopy = string;
  imageCopy = image;
  sceneCopy = scene;
  blockCopy = block;
  if ([getTPInComingCallUISnapshotViewControllerClass() instancesRespondToSelector:sel_initWithConfiguration_style_nameString_avatarImage_])
  {
    v20 = objc_alloc(getTPInComingCallUISnapshotViewControllerClass());
    wrappedPosterConfiguration = [configurationCopy wrappedPosterConfiguration];
    if (contactCopy)
    {
      v22 = [v20 initWithConfiguration:wrappedPosterConfiguration style:style contact:contactCopy avatarImage:imageCopy];
    }

    else
    {
      v22 = [v20 initWithConfiguration:wrappedPosterConfiguration style:style nameString:stringCopy avatarImage:imageCopy];
    }
  }

  else
  {
    v23 = objc_alloc(getTPInComingCallUISnapshotViewControllerClass());
    wrappedPosterConfiguration = [configurationCopy wrappedPosterConfiguration];
    v22 = [v23 initWithConfiguration:wrappedPosterConfiguration style:style contact:contactCopy fallbackText:&stru_1F162C170];
  }

  v24 = v22;

  mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __144__CNUIIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke;
  v37[3] = &unk_1E76E7D10;
  v26 = v24;
  v38 = v26;
  [mainThreadScheduler performBlock:v37];

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  schedulerProvider = [currentEnvironment schedulerProvider];

  v29 = [schedulerProvider newSerialSchedulerWithName:@"com.apple.ContactsUI.CNIncomingCallSnapshotViewController.snapshottingQueue"];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __144__CNUIIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke_2;
  v33[3] = &unk_1E76E8C68;
  v34 = v26;
  v35 = sceneCopy;
  v36 = blockCopy;
  v30 = blockCopy;
  v31 = sceneCopy;
  v32 = v26;
  [v29 performBlock:v33];
}

void __144__CNUIIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setNeedsLayout];
}

void __144__CNUIIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __144__CNUIIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke_3;
  v3[3] = &unk_1E76E9BD8;
  v4 = *(a1 + 48);
  [v1 snapshotWithOptions:0 windowScene:v2 completionBlock:v3];
}

void __144__CNUIIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __144__CNUIIncomingCallSnapshotViewController_incomingCallSnapshotForConfiguration_style_contact_nameString_avatarImage_windowScene_completionBlock___block_invoke_4;
  v11[3] = &unk_1E76E9BB0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 performBlock:v11];
}

+ (int64_t)styleIncludingCallButtons:(BOOL)buttons canShowPoster:(BOOL)poster
{
  v4 = !poster;
  if (buttons && !v4)
  {
    return 3;
  }

  v6 = v4 || buttons;
  v7 = 4;
  if (buttons && !poster)
  {
    v7 = 5;
  }

  if (v6 == 1)
  {
    return v7;
  }

  else
  {
    return 1;
  }
}

@end