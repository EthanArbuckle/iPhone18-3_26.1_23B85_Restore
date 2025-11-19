@interface CSSGenerateApplicationIconsOperation
- (BOOL)isGeneratingCalendarIcons;
- (CSSCalendarIcons)calendarIcons;
- (CSSGenerateApplicationIconsOperation)initWithDescriptor:(id)a3;
- (CSSGenerateApplicationIconsOperation)initWithDescriptor:(id)a3 sourceIcon:(id)a4;
- (CSSGenerateApplicationIconsOperation)initWithDescriptor:(id)a3 webClip:(id)a4;
- (id)bundleIdentifier;
- (void)fetchBadgeIconDataWithCompletion:(id)a3;
- (void)fetchFullSizeIconDataWithCompletion:(id)a3;
- (void)fetchIconDataWithISImageDescriptorName:(id)a3 completion:(id)a4;
- (void)main;
@end

@implementation CSSGenerateApplicationIconsOperation

- (CSSGenerateApplicationIconsOperation)initWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [ISIcon alloc];
  v6 = [v4 bundleIdentifier];
  v7 = [v5 initWithBundleIdentifier:v6];

  v8 = [(CSSGenerateApplicationIconsOperation *)self initWithDescriptor:v4 sourceIcon:v7];
  return v8;
}

- (CSSGenerateApplicationIconsOperation)initWithDescriptor:(id)a3 webClip:(id)a4
{
  v6 = a3;
  v7 = [ISIcon css_iconWithWebClip:a4];
  v8 = [(CSSGenerateApplicationIconsOperation *)self initWithDescriptor:v6 sourceIcon:v7];

  return v8;
}

- (CSSGenerateApplicationIconsOperation)initWithDescriptor:(id)a3 sourceIcon:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CSSGenerateApplicationIconsOperation;
  v9 = [(CSSGenerateApplicationIconsOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, a3);
    objc_storeStrong(&v10->_sourceIcon, a4);
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
  v4 = [(CSSGenerateApplicationIconsOperation *)self descriptor];
  v5 = [v4 includeIcon];

  if (v5)
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

  v6 = [(CSSGenerateApplicationIconsOperation *)self descriptor];
  v7 = [v6 includeBadgeIcon];

  if (v7)
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

- (void)fetchFullSizeIconDataWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CSSGenerateApplicationIconsOperation *)self isGeneratingCalendarIcons])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000186C;
    v5[3] = &unk_10000C4E0;
    v5[4] = self;
    v6 = v4;
    dispatch_async(&_dispatch_main_q, v5);
  }

  else
  {
    [(CSSGenerateApplicationIconsOperation *)self fetchIconDataWithISImageDescriptorName:kISImageDescriptorLargeHomeScreen completion:v4];
  }
}

- (void)fetchBadgeIconDataWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CSSGenerateApplicationIconsOperation *)self isGeneratingCalendarIcons])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100001998;
    v5[3] = &unk_10000C4E0;
    v5[4] = self;
    v6 = v4;
    dispatch_async(&_dispatch_main_q, v5);
  }

  else
  {
    [(CSSGenerateApplicationIconsOperation *)self fetchIconDataWithISImageDescriptorName:kISImageDescriptorTableUIName completion:v4];
  }
}

- (void)fetchIconDataWithISImageDescriptorName:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [ISImageDescriptor imageDescriptorNamed:a3];
  v8 = [(CSSGenerateApplicationIconsOperation *)self sourceIcon];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001ADC;
  v10[3] = &unk_10000C508;
  v11 = v6;
  v9 = v6;
  [v8 getImageForImageDescriptor:v7 completion:v10];
}

- (BOOL)isGeneratingCalendarIcons
{
  v2 = [(CSSGenerateApplicationIconsOperation *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.mobilecal"];

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
  v2 = [(CSSGenerateApplicationIconsOperation *)self descriptor];
  v3 = [v2 bundleIdentifier];

  return v3;
}

@end