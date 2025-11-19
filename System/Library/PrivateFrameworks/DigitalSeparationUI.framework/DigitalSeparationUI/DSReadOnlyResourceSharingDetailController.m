@interface DSReadOnlyResourceSharingDetailController
+ (id)_removeDisplayedFromArray:(id)a3;
+ (id)initWithSharingPeople:(id)a3 startingViewController:(id)a4 delegate:(id)a5;
+ (id)initWithSharingTypes:(id)a3 startingViewController:(id)a4 delegate:(id)a5;
+ (void)initialize;
- (DSNavigationDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_finishReviewingReadOnlySharing;
- (void)_learnMorePressed;
- (void)_pushNextPane;
- (void)_removeFromView;
- (void)viewDidLoad;
@end

@implementation DSReadOnlyResourceSharingDetailController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = os_log_create("com.apple.DigitalSeparation", "DSReadOnlyResourceSharingDetail");
    v3 = DSLogReadOnlySharingDetail;
    DSLogReadOnlySharingDetail = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

+ (id)initWithSharingTypes:(id)a3 startingViewController:(id)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 firstObject];
  v12 = [DSReadOnlyResourceSharingDetailController alloc];
  v13 = [v11 displayName];
  v14 = [v11 localizedDetailText];
  v15 = [v11 iconForDetail];
  v16 = [(DSTableWelcomeController *)v12 initWithTitle:v13 detailText:v14 icon:v15 adoptTableViewScrollView:0 shouldShowSearchBar:0];

  v17 = [a1 _removeDisplayedFromArray:v10];

  [(DSReadOnlyResourceSharingDetailController *)v16 setRemainingSharingTypes:v17];
  [(DSReadOnlyResourceSharingDetailController *)v16 setSharingType:v11];
  [(DSReadOnlyResourceSharingDetailController *)v16 setStartingViewController:v9];

  [(DSReadOnlyResourceSharingDetailController *)v16 setDetailDelegate:v8];

  return v16;
}

+ (id)initWithSharingPeople:(id)a3 startingViewController:(id)a4 delegate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 firstObject];
  v11 = DSUILocStringForKey(@"READ_ONLY_SHARING_BY_PERSON_DETAIL_FORMAT");
  v12 = [DSUIUtilities valueForUnfinalizedString:v11];

  v13 = [DSReadOnlyResourceSharingDetailController alloc];
  v14 = [v10 displayName];
  v15 = MEMORY[0x277CCACA8];
  v16 = [v10 displayGivenName];
  v17 = [v15 stringWithFormat:v12, v16];
  v18 = [v10 iconForDetail];
  v19 = [(DSTableWelcomeController *)v13 initWithTitle:v14 detailText:v17 icon:v18 adoptTableViewScrollView:0 shouldShowSearchBar:0];

  v20 = [a1 _removeDisplayedFromArray:v9];

  [(DSReadOnlyResourceSharingDetailController *)v19 setRemainingSharingPeople:v20];
  [(DSReadOnlyResourceSharingDetailController *)v19 setSharingPerson:v10];
  [(DSReadOnlyResourceSharingDetailController *)v19 setStartingViewController:v8];

  [(DSReadOnlyResourceSharingDetailController *)v19 setDetailDelegate:v7];

  return v19;
}

+ (id)_removeDisplayedFromArray:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
  }

  return v4;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = DSReadOnlyResourceSharingDetailController;
  [(DSTableWelcomeController *)&v14 viewDidLoad];
  v3 = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingTypes];
  if (v3)
  {

    goto LABEL_4;
  }

  v4 = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingPeople];

  if (v4)
  {
LABEL_4:
    v5 = DSUILocStringForKey(@"CONTINUE");
    v6 = [DSUIUtilities setUpBoldButtonForController:self title:v5 target:self selector:sel__pushNextPane];
    [(DSTableWelcomeController *)self setBoldButton:v6];

    v7 = DSUILocStringForKey(@"SKIP");
    v8 = [DSUIUtilities setUpLinkButtonForController:self title:v7 target:self selector:sel__finishReviewingReadOnlySharing];
    [(DSTableWelcomeController *)self setLinkButton:v8];

    v9 = [(DSReadOnlyResourceSharingDetailController *)self sharingType];

    if (v9)
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
  v3 = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingTypes];

  if (v3)
  {
    v4 = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingTypes];
    v5 = [(DSReadOnlyResourceSharingDetailController *)self startingViewController];
    v6 = [(DSReadOnlyResourceSharingDetailController *)self detailDelegate];
    v15 = [DSReadOnlyResourceSharingDetailController initWithSharingTypes:v4 startingViewController:v5 delegate:v6];

    v7 = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingTypes];
LABEL_5:
    v12 = v7;
    [v15 setIsFinishedReviewing:{objc_msgSend(v7, "count") == 1}];

    v13 = [(DSReadOnlyResourceSharingDetailController *)self navigationController];
    [v13 pushViewController:v15 animated:1];

    return;
  }

  v8 = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingPeople];

  if (v8)
  {
    v9 = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingPeople];
    v10 = [(DSReadOnlyResourceSharingDetailController *)self startingViewController];
    v11 = [(DSReadOnlyResourceSharingDetailController *)self detailDelegate];
    v15 = [DSReadOnlyResourceSharingDetailController initWithSharingPeople:v9 startingViewController:v10 delegate:v11];

    v7 = [(DSReadOnlyResourceSharingDetailController *)self remainingSharingPeople];
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
  v3 = [(DSReadOnlyResourceSharingDetailController *)self navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (void)_finishReviewingReadOnlySharing
{
  v2 = [(DSReadOnlyResourceSharingDetailController *)self detailDelegate];
  [v2 reviewReadOnlySharingCompleted];
}

- (void)_learnMorePressed
{
  v3 = [(DSReadOnlyResourceSharingDetailController *)self sharingType];

  if (v3)
  {
    v5 = [(DSReadOnlyResourceSharingDetailController *)self detailDelegate];
    v4 = [(DSReadOnlyResourceSharingDetailController *)self sharingType];
    [v5 learnMorePressedForSharingType:v4];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSReadOnlyResourceSharingDetailController *)self sharingType];
  if (v6)
  {

LABEL_4:
    v8 = [(DSReadOnlyResourceSharingDetailController *)self sharingType];

    if (v8)
    {
      v9 = [(DSReadOnlyResourceSharingDetailController *)self sharingType];
      v10 = [v9 allPeople];
      v11 = [v10 objectAtIndex:{objc_msgSend(v5, "row")}];

      v12 = MEMORY[0x277D054C0];
      v13 = [(DSReadOnlyResourceSharingDetailController *)self sharingType];
      v14 = [v13 source];
      v15 = [v14 name];
      v16 = [v12 sourceDescriptorForSource:v15];

      v17 = [(OBTableWelcomeController *)self tableView];
      v18 = [v11 displayName];
      v19 = [v16 localizedStopByPerson:v11];
      v20 = [v11 iconForTable];
      v21 = [DSIconTableViewCell iconTableViewCellFromTableView:v17 withText:v18 detail:v19 icon:v20];
    }

    else
    {
      v22 = [(DSReadOnlyResourceSharingDetailController *)self sharingPerson];
      v23 = [v22 allSources];
      v11 = [v23 objectAtIndex:{objc_msgSend(v5, "row")}];

      v24 = MEMORY[0x277D054C0];
      v25 = [v11 name];
      v16 = [v24 sourceDescriptorForSource:v25];

      v17 = [(OBTableWelcomeController *)self tableView];
      v18 = [v16 localizedName];
      v19 = [(DSReadOnlyResourceSharingDetailController *)self sharingPerson];
      v20 = [v16 localizedStopByPerson:v19];
      v26 = [v16 iconForTable];
      v21 = [DSIconTableViewCell iconTableViewCellFromTableView:v17 withText:v18 detail:v20 icon:v26];
    }

    [v21 setAccessoryType:0];
    [v21 setSelectionStyle:0];
    goto LABEL_8;
  }

  v7 = [(DSReadOnlyResourceSharingDetailController *)self sharingPerson];

  if (v7)
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(DSReadOnlyResourceSharingDetailController *)self sharingType:a3];

  if (v5)
  {
    v6 = [(DSReadOnlyResourceSharingDetailController *)self sharingType];
    v7 = [v6 allPeople];
LABEL_5:
    v9 = v7;
    v10 = [v7 count];

    return v10;
  }

  v8 = [(DSReadOnlyResourceSharingDetailController *)self sharingPerson];

  if (v8)
  {
    v6 = [(DSReadOnlyResourceSharingDetailController *)self sharingPerson];
    v7 = [v6 allSources];
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