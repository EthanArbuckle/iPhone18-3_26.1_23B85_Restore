@interface DSReadOnlyResourceSharingDetailController
+ (id)_removeDisplayedFromArray:(id)array;
+ (id)initWithSharingPeople:(id)people startingViewController:(id)controller delegate:(id)delegate;
+ (id)initWithSharingTypes:(id)types startingViewController:(id)controller delegate:(id)delegate;
+ (void)initialize;
- (DSNavigationDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_finishReviewingReadOnlySharing;
- (void)_learnMorePressed;
- (void)_pushNextPane;
- (void)_removeFromView;
- (void)viewDidLoad;
@end

@implementation DSReadOnlyResourceSharingDetailController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.DigitalSeparation", "DSReadOnlyResourceSharingDetail");
    v3 = DSLogReadOnlySharingDetail;
    DSLogReadOnlySharingDetail = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

+ (id)initWithSharingTypes:(id)types startingViewController:(id)controller delegate:(id)delegate
{
  delegateCopy = delegate;
  controllerCopy = controller;
  typesCopy = types;
  firstObject = [typesCopy firstObject];
  v12 = [DSReadOnlyResourceSharingDetailController alloc];
  displayName = [firstObject displayName];
  localizedDetailText = [firstObject localizedDetailText];
  iconForDetail = [firstObject iconForDetail];
  v16 = [(DSTableWelcomeController *)v12 initWithTitle:displayName detailText:localizedDetailText icon:iconForDetail adoptTableViewScrollView:0 shouldShowSearchBar:0];

  v17 = [self _removeDisplayedFromArray:typesCopy];

  [(DSReadOnlyResourceSharingDetailController *)v16 setRemainingSharingTypes:v17];
  [(DSReadOnlyResourceSharingDetailController *)v16 setSharingType:firstObject];
  [(DSReadOnlyResourceSharingDetailController *)v16 setStartingViewController:controllerCopy];

  [(DSReadOnlyResourceSharingDetailController *)v16 setDetailDelegate:delegateCopy];

  return v16;
}

+ (id)initWithSharingPeople:(id)people startingViewController:(id)controller delegate:(id)delegate
{
  delegateCopy = delegate;
  controllerCopy = controller;
  peopleCopy = people;
  firstObject = [peopleCopy firstObject];
  v11 = DSUILocStringForKey(@"READ_ONLY_SHARING_BY_PERSON_DETAIL_FORMAT");
  v12 = [DSUIUtilities valueForUnfinalizedString:v11];

  v13 = [DSReadOnlyResourceSharingDetailController alloc];
  displayName = [firstObject displayName];
  v15 = MEMORY[0x277CCACA8];
  displayGivenName = [firstObject displayGivenName];
  v17 = [v15 stringWithFormat:v12, displayGivenName];
  iconForDetail = [firstObject iconForDetail];
  v19 = [(DSTableWelcomeController *)v13 initWithTitle:displayName detailText:v17 icon:iconForDetail adoptTableViewScrollView:0 shouldShowSearchBar:0];

  v20 = [self _removeDisplayedFromArray:peopleCopy];

  [(DSReadOnlyResourceSharingDetailController *)v19 setRemainingSharingPeople:v20];
  [(DSReadOnlyResourceSharingDetailController *)v19 setSharingPerson:firstObject];
  [(DSReadOnlyResourceSharingDetailController *)v19 setStartingViewController:controllerCopy];

  [(DSReadOnlyResourceSharingDetailController *)v19 setDetailDelegate:delegateCopy];

  return v19;
}

+ (id)_removeDisplayedFromArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count] == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [arrayCopy subarrayWithRange:{1, objc_msgSend(arrayCopy, "count") - 1}];
  }

  return v4;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = DSReadOnlyResourceSharingDetailController;
  [(DSTableWelcomeController *)&v14 viewDidLoad];
  remainingSharingTypes = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingTypes];
  if (remainingSharingTypes)
  {

    goto LABEL_4;
  }

  remainingSharingPeople = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingPeople];

  if (remainingSharingPeople)
  {
LABEL_4:
    v5 = DSUILocStringForKey(@"CONTINUE");
    v6 = [DSUIUtilities setUpBoldButtonForController:self title:v5 target:self selector:sel__pushNextPane];
    [(DSTableWelcomeController *)self setBoldButton:v6];

    v7 = DSUILocStringForKey(@"SKIP");
    v8 = [DSUIUtilities setUpLinkButtonForController:self title:v7 target:self selector:sel__finishReviewingReadOnlySharing];
    [(DSTableWelcomeController *)self setLinkButton:v8];

    sharingType = [(DSReadOnlyResourceSharingDetailController *)self sharingType];

    if (sharingType)
    {
      v10 = [DSUIUtilities setUpLearnMoreButtonForController:self selector:sel__learnMorePressed];
    }

    return;
  }

  if ([(DSReadOnlyResourceSharingDetailController *)self isFinishedReviewing])
  {
    v11 = DSUILocStringForKey(@"CONTINUE");
    v12 = sel__pushNextPane;
  }

  else
  {
    v11 = DSUILocStringForKey(@"SKIP");
    v12 = sel__removeFromView;
  }

  v13 = [DSUIUtilities setUpBoldButtonForController:self title:v11 target:self selector:v12];
  [(DSTableWelcomeController *)self setBoldButton:v13];
}

- (void)_pushNextPane
{
  remainingSharingTypes = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingTypes];

  if (remainingSharingTypes)
  {
    remainingSharingTypes2 = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingTypes];
    startingViewController = [(DSReadOnlyResourceSharingDetailController *)self startingViewController];
    detailDelegate = [(DSReadOnlyResourceSharingDetailController *)self detailDelegate];
    v15 = [DSReadOnlyResourceSharingDetailController initWithSharingTypes:remainingSharingTypes2 startingViewController:startingViewController delegate:detailDelegate];

    remainingSharingTypes3 = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingTypes];
LABEL_5:
    v12 = remainingSharingTypes3;
    [v15 setIsFinishedReviewing:{objc_msgSend(remainingSharingTypes3, "count") == 1}];

    navigationController = [(DSReadOnlyResourceSharingDetailController *)self navigationController];
    [navigationController pushViewController:v15 animated:1];

    return;
  }

  remainingSharingPeople = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingPeople];

  if (remainingSharingPeople)
  {
    remainingSharingPeople2 = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingPeople];
    startingViewController2 = [(DSReadOnlyResourceSharingDetailController *)self startingViewController];
    detailDelegate2 = [(DSReadOnlyResourceSharingDetailController *)self detailDelegate];
    v15 = [DSReadOnlyResourceSharingDetailController initWithSharingPeople:remainingSharingPeople2 startingViewController:startingViewController2 delegate:detailDelegate2];

    remainingSharingTypes3 = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingPeople];
    goto LABEL_5;
  }

  v14 = DSLogReadOnlySharingDetail;
  if (os_log_type_enabled(DSLogReadOnlySharingDetail, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v14, OS_LOG_TYPE_INFO, "No more read only sharing types to display, returning", buf, 2u);
  }

  [(DSReadOnlyResourceSharingDetailController *)self _finishReviewingReadOnlySharing];
}

- (void)_removeFromView
{
  navigationController = [(DSReadOnlyResourceSharingDetailController *)self navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

- (void)_finishReviewingReadOnlySharing
{
  detailDelegate = [(DSReadOnlyResourceSharingDetailController *)self detailDelegate];
  [detailDelegate reviewReadOnlySharingCompleted];
}

- (void)_learnMorePressed
{
  sharingType = [(DSReadOnlyResourceSharingDetailController *)self sharingType];

  if (sharingType)
  {
    detailDelegate = [(DSReadOnlyResourceSharingDetailController *)self detailDelegate];
    sharingType2 = [(DSReadOnlyResourceSharingDetailController *)self sharingType];
    [detailDelegate learnMorePressedForSharingType:sharingType2];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  sharingType = [(DSReadOnlyResourceSharingDetailController *)self sharingType];
  if (sharingType)
  {

LABEL_4:
    sharingType2 = [(DSReadOnlyResourceSharingDetailController *)self sharingType];

    if (sharingType2)
    {
      sharingType3 = [(DSReadOnlyResourceSharingDetailController *)self sharingType];
      allPeople = [sharingType3 allPeople];
      v11 = [allPeople objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      v12 = MEMORY[0x277D054C0];
      sharingType4 = [(DSReadOnlyResourceSharingDetailController *)self sharingType];
      source = [sharingType4 source];
      name = [source name];
      v16 = [v12 sourceDescriptorForSource:name];

      tableView = [(OBTableWelcomeController *)self tableView];
      displayName = [v11 displayName];
      sharingPerson2 = [v16 localizedStopByPerson:v11];
      iconForTable = [v11 iconForTable];
      v21 = [DSIconTableViewCell iconTableViewCellFromTableView:tableView withText:displayName detail:sharingPerson2 icon:iconForTable];
    }

    else
    {
      sharingPerson = [(DSReadOnlyResourceSharingDetailController *)self sharingPerson];
      allSources = [sharingPerson allSources];
      v11 = [allSources objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      v24 = MEMORY[0x277D054C0];
      name2 = [v11 name];
      v16 = [v24 sourceDescriptorForSource:name2];

      tableView = [(OBTableWelcomeController *)self tableView];
      displayName = [v16 localizedName];
      sharingPerson2 = [(DSReadOnlyResourceSharingDetailController *)self sharingPerson];
      iconForTable = [v16 localizedStopByPerson:sharingPerson2];
      iconForTable2 = [v16 iconForTable];
      v21 = [DSIconTableViewCell iconTableViewCellFromTableView:tableView withText:displayName detail:iconForTable icon:iconForTable2];
    }

    [v21 setAccessoryType:0];
    [v21 setSelectionStyle:0];
    goto LABEL_8;
  }

  sharingPerson3 = [(DSReadOnlyResourceSharingDetailController *)self sharingPerson];

  if (sharingPerson3)
  {
    goto LABEL_4;
  }

  v28 = DSLogReadOnlySharingDetail;
  if (os_log_type_enabled(DSLogReadOnlySharingDetail, OS_LOG_TYPE_FAULT))
  {
    [DSReadOnlyResourceSharingDetailController tableView:v28 cellForRowAtIndexPath:?];
  }

  v21 = 0;
LABEL_8:

  return v21;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(DSReadOnlyResourceSharingDetailController *)self sharingType:view];

  if (v5)
  {
    sharingType = [(DSReadOnlyResourceSharingDetailController *)self sharingType];
    allPeople = [sharingType allPeople];
LABEL_5:
    v9 = allPeople;
    v10 = [allPeople count];

    return v10;
  }

  sharingPerson = [(DSReadOnlyResourceSharingDetailController *)self sharingPerson];

  if (sharingPerson)
  {
    sharingType = [(DSReadOnlyResourceSharingDetailController *)self sharingPerson];
    allPeople = [sharingType allSources];
    goto LABEL_5;
  }

  v12 = DSLogReadOnlySharingDetail;
  if (os_log_type_enabled(DSLogReadOnlySharingDetail, OS_LOG_TYPE_FAULT))
  {
    [DSReadOnlyResourceSharingDetailController tableView:v12 cellForRowAtIndexPath:?];
  }

  return 0;
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end