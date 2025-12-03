@interface CSSGenerateApplicationIconsOperation
- (BOOL)isGeneratingCalendarIcons;
- (CSSCalendarIcons)calendarIcons;
- (CSSGenerateApplicationIconsOperation)initWithDescriptor:(id)descriptor;
- (CSSGenerateApplicationIconsOperation)initWithDescriptor:(id)descriptor sourceIcon:(id)icon;
- (CSSGenerateApplicationIconsOperation)initWithDescriptor:(id)descriptor webClip:(id)clip;
- (id)bundleIdentifier;
- (void)fetchBadgeIconDataWithCompletion:(id)completion;
- (void)fetchFullSizeIconDataWithCompletion:(id)completion;
- (void)fetchIconDataWithISImageDescriptorName:(id)name completion:(id)completion;
- (void)main;
@end

@implementation CSSGenerateApplicationIconsOperation

- (CSSGenerateApplicationIconsOperation)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [ISIcon alloc];
  bundleIdentifier = [descriptorCopy bundleIdentifier];
  v7 = [v5 initWithBundleIdentifier:bundleIdentifier];

  v8 = [(CSSGenerateApplicationIconsOperation *)self initWithDescriptor:descriptorCopy sourceIcon:v7];
  return v8;
}

- (CSSGenerateApplicationIconsOperation)initWithDescriptor:(id)descriptor webClip:(id)clip
{
  descriptorCopy = descriptor;
  v7 = [ISIcon css_iconWithWebClip:clip];
  v8 = [(CSSGenerateApplicationIconsOperation *)self initWithDescriptor:descriptorCopy sourceIcon:v7];

  return v8;
}

- (CSSGenerateApplicationIconsOperation)initWithDescriptor:(id)descriptor sourceIcon:(id)icon
{
  descriptorCopy = descriptor;
  iconCopy = icon;
  v12.receiver = self;
  v12.super_class = CSSGenerateApplicationIconsOperation;
  v9 = [(CSSGenerateApplicationIconsOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, descriptor);
    objc_storeStrong(&v10->_sourceIcon, icon);
  }

  return v10;
}

- (void)main
{
  v3 = dispatch_group_create();
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_1000015D0;
  v17[4] = sub_1000015E0;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_1000015D0;
  v15[4] = sub_1000015E0;
  v16 = 0;
  descriptor = [(CSSGenerateApplicationIconsOperation *)self descriptor];
  includeIcon = [descriptor includeIcon];

  if (includeIcon)
  {
    dispatch_group_enter(v3);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000015E8;
    v12[3] = &unk_10000C490;
    v12[4] = self;
    v14 = v17;
    v13 = v3;
    [(CSSGenerateApplicationIconsOperation *)self fetchFullSizeIconDataWithCompletion:v12];
  }

  descriptor2 = [(CSSGenerateApplicationIconsOperation *)self descriptor];
  includeBadgeIcon = [descriptor2 includeBadgeIcon];

  if (includeBadgeIcon)
  {
    dispatch_group_enter(v3);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000016B4;
    v9[3] = &unk_10000C490;
    v9[4] = self;
    v11 = v15;
    v10 = v3;
    [(CSSGenerateApplicationIconsOperation *)self fetchBadgeIconDataWithCompletion:v9];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000173C;
  block[3] = &unk_10000C4B8;
  block[5] = v17;
  block[6] = v15;
  block[4] = self;
  dispatch_group_notify(v3, &_dispatch_main_q, block);
  _Block_object_dispose(v15, 8);

  _Block_object_dispose(v17, 8);
}

- (void)fetchFullSizeIconDataWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CSSGenerateApplicationIconsOperation *)self isGeneratingCalendarIcons])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000186C;
    v5[3] = &unk_10000C4E0;
    v5[4] = self;
    v6 = completionCopy;
    dispatch_async(&_dispatch_main_q, v5);
  }

  else
  {
    [(CSSGenerateApplicationIconsOperation *)self fetchIconDataWithISImageDescriptorName:kISImageDescriptorLargeHomeScreen completion:completionCopy];
  }
}

- (void)fetchBadgeIconDataWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CSSGenerateApplicationIconsOperation *)self isGeneratingCalendarIcons])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100001998;
    v5[3] = &unk_10000C4E0;
    v5[4] = self;
    v6 = completionCopy;
    dispatch_async(&_dispatch_main_q, v5);
  }

  else
  {
    [(CSSGenerateApplicationIconsOperation *)self fetchIconDataWithISImageDescriptorName:kISImageDescriptorTableUIName completion:completionCopy];
  }
}

- (void)fetchIconDataWithISImageDescriptorName:(id)name completion:(id)completion
{
  completionCopy = completion;
  v7 = [ISImageDescriptor imageDescriptorNamed:name];
  sourceIcon = [(CSSGenerateApplicationIconsOperation *)self sourceIcon];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001ADC;
  v10[3] = &unk_10000C508;
  v11 = completionCopy;
  v9 = completionCopy;
  [sourceIcon getImageForImageDescriptor:v7 completion:v10];
}

- (BOOL)isGeneratingCalendarIcons
{
  bundleIdentifier = [(CSSGenerateApplicationIconsOperation *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.mobilecal"];

  return v3;
}

- (CSSCalendarIcons)calendarIcons
{
  calendarIcons = self->_calendarIcons;
  if (!calendarIcons)
  {
    v4 = objc_opt_new();
    v5 = self->_calendarIcons;
    self->_calendarIcons = v4;

    calendarIcons = self->_calendarIcons;
  }

  return calendarIcons;
}

- (id)bundleIdentifier
{
  descriptor = [(CSSGenerateApplicationIconsOperation *)self descriptor];
  bundleIdentifier = [descriptor bundleIdentifier];

  return bundleIdentifier;
}

@end