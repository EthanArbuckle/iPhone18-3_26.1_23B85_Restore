@interface OBSetupAssistantMultitaskingViewController
- (OBSetupAssistantMultitaskingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (OBSetupAssistantMultitaskingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (double)_headerTopOffset;
- (double)contentViewsTopPaddingFromBottomOfHeader;
- (void)addMultitaskingBulletedListItemWithTitle:(id)title description:(id)description symbolName:(id)name;
- (void)setupBulletedListIfNeeded;
- (void)viewDidLoad;
@end

@implementation OBSetupAssistantMultitaskingViewController

- (OBSetupAssistantMultitaskingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  titleCopy = title;
  textCopy = text;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = OBSetupAssistantMultitaskingViewController;
  v13 = [(OBWelcomeController *)&v17 initWithTitle:titleCopy detailText:textCopy symbolName:nameCopy contentLayout:layout];
  if (v13)
  {
    v14 = [(OBHeaderView *)[OBSetupAssistantMultitaskingHeaderView alloc] initWithTitle:titleCopy detailText:textCopy symbolName:nameCopy animated:1];
    [(OBWelcomeController *)v13 setHeaderView:v14];

    headerView = [(OBWelcomeController *)v13 headerView];
    [headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v13;
}

- (OBSetupAssistantMultitaskingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  v17.receiver = self;
  v17.super_class = OBSetupAssistantMultitaskingViewController;
  v13 = [(OBWelcomeController *)&v17 initWithTitle:titleCopy detailText:textCopy icon:iconCopy contentLayout:layout];
  if (v13)
  {
    v14 = [(OBHeaderView *)[OBSetupAssistantMultitaskingHeaderView alloc] initWithTitle:titleCopy detailText:textCopy icon:iconCopy];
    [(OBWelcomeController *)v13 setHeaderView:v14];

    headerView = [(OBWelcomeController *)v13 headerView];
    [headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v13;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OBSetupAssistantMultitaskingViewController;
  [(OBWelcomeController *)&v3 viewDidLoad];
  [(OBWelcomeController *)self setTemplateType:2];
}

- (void)setupBulletedListIfNeeded
{
  v46[4] = *MEMORY[0x1E69E9840];
  bulletedList = [(OBWelcomeController *)self bulletedList];

  if (!bulletedList)
  {
    v4 = objc_alloc_init(OBSetupAssistantMultitaskingBulletedList);
    [(OBWelcomeController *)self setBulletedList:v4];

    bulletedList2 = [(OBWelcomeController *)self bulletedList];
    [bulletedList2 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(OBWelcomeController *)self contentView];
    bulletedList3 = [(OBWelcomeController *)self bulletedList];
    [contentView addSubview:bulletedList3];

    [(OBSetupAssistantMultitaskingViewController *)self contentViewsTopPaddingFromBottomOfHeader];
    v9 = v8;
    contentViewTopOffsetConstraint = [(OBWelcomeController *)self contentViewTopOffsetConstraint];
    [contentViewTopOffsetConstraint setActive:0];

    contentView2 = [(OBWelcomeController *)self contentView];
    topAnchor = [contentView2 topAnchor];
    headerView = [(OBWelcomeController *)self headerView];
    bottomAnchor = [headerView bottomAnchor];
    v15 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:v9];
    [(OBWelcomeController *)self setContentViewTopOffsetConstraint:v15];

    contentViewTopOffsetConstraint2 = [(OBWelcomeController *)self contentViewTopOffsetConstraint];
    [contentViewTopOffsetConstraint2 setActive:1];

    contentView3 = [(OBWelcomeController *)self contentView];
    leadingAnchor = [contentView3 leadingAnchor];
    bulletedList4 = [(OBWelcomeController *)self bulletedList];
    leadingAnchor2 = [bulletedList4 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    bulletedList5 = [(OBWelcomeController *)self bulletedList];
    [bulletedList5 setLeadingConstraint:v21];

    contentView4 = [(OBWelcomeController *)self contentView];
    trailingAnchor = [contentView4 trailingAnchor];
    bulletedList6 = [(OBWelcomeController *)self bulletedList];
    trailingAnchor2 = [bulletedList6 trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    bulletedList7 = [(OBWelcomeController *)self bulletedList];
    [bulletedList7 setTrailingConstraint:v27];

    v40 = MEMORY[0x1E696ACD8];
    bulletedList8 = [(OBWelcomeController *)self bulletedList];
    leadingConstraint = [bulletedList8 leadingConstraint];
    v46[0] = leadingConstraint;
    bulletedList9 = [(OBWelcomeController *)self bulletedList];
    trailingConstraint = [bulletedList9 trailingConstraint];
    v46[1] = trailingConstraint;
    contentView5 = [(OBWelcomeController *)self contentView];
    topAnchor2 = [contentView5 topAnchor];
    bulletedList10 = [(OBWelcomeController *)self bulletedList];
    topAnchor3 = [bulletedList10 topAnchor];
    v32 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v46[2] = v32;
    contentView6 = [(OBWelcomeController *)self contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    bulletedList11 = [(OBWelcomeController *)self bulletedList];
    bottomAnchor3 = [bulletedList11 bottomAnchor];
    v37 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v46[3] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
    [v40 activateConstraints:v38];
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)addMultitaskingBulletedListItemWithTitle:(id)title description:(id)description symbolName:(id)name
{
  nameCopy = name;
  descriptionCopy = description;
  titleCopy = title;
  [(OBSetupAssistantMultitaskingViewController *)self loadViewIfNeeded];
  [(OBSetupAssistantMultitaskingViewController *)self setupBulletedListIfNeeded];
  bulletedList = [(OBWelcomeController *)self bulletedList];
  [bulletedList addItemWithTitle:titleCopy description:descriptionCopy symbolName:nameCopy];
}

- (double)_headerTopOffset
{
  v3 = +[OBDevice currentDevice];
  type = [v3 type];

  if (type == 2)
  {
    v5 = +[OBDevice currentDevice];
    isMiniPad = [v5 isMiniPad];

    v7 = 0.0;
    if ((isMiniPad & 1) == 0)
    {
      view = [(OBSetupAssistantMultitaskingViewController *)self view];
      [view bounds];
      v7 = v9 * 0.045;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = OBSetupAssistantMultitaskingViewController;
    [(OBWelcomeController *)&v12 _headerTopOffset];
    return v10;
  }

  return v7;
}

- (double)contentViewsTopPaddingFromBottomOfHeader
{
  v3 = +[OBDevice currentDevice];
  templateType = [v3 templateType];

  result = 22.0;
  if (templateType != 6)
  {
    v6.receiver = self;
    v6.super_class = OBSetupAssistantMultitaskingViewController;
    [(OBWelcomeController *)&v6 contentViewsTopPaddingFromBottomOfHeader];
  }

  return result;
}

@end