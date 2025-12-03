@interface OBTouchIDEnrollmentWelcomeController
- (void)startTitleTransitionAnimated:(BOOL)animated heightDifference:(id)difference;
@end

@implementation OBTouchIDEnrollmentWelcomeController

- (void)startTitleTransitionAnimated:(BOOL)animated heightDifference:(id)difference
{
  v42[1] = *MEMORY[0x1E69E9840];
  differenceCopy = difference;
  headerView = [(OBWelcomeController *)self headerView];
  headerLabel = [headerView headerLabel];
  [headerLabel frame];
  v9 = v8;

  headerView2 = [(OBWelcomeController *)self headerView];
  headerLabel2 = [headerView2 headerLabel];
  headerView3 = [(OBWelcomeController *)self headerView];
  [headerView3 bounds];
  v14 = v13;
  LODWORD(v13) = 1112014848;
  LODWORD(v15) = 1132068864;
  [headerLabel2 systemLayoutSizeFittingSize:v14 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v13, v15}];
  v17 = v16;

  headerView4 = [(OBWelcomeController *)self headerView];
  detailLabel = [headerView4 detailLabel];
  [detailLabel frame];
  v21 = v20;

  headerView5 = [(OBWelcomeController *)self headerView];
  detailLabel2 = [headerView5 detailLabel];
  headerView6 = [(OBWelcomeController *)self headerView];
  [headerView6 bounds];
  v26 = v25;
  LODWORD(v25) = 1112014848;
  LODWORD(v27) = 1132068864;
  [detailLabel2 systemLayoutSizeFittingSize:v26 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v25, v27}];
  v29 = v28;

  v30 = v29 != v21 || v17 != v9;
  if (differenceCopy)
  {
    differenceCopy[2](differenceCopy, v9 - v17 + v21 - v29);
  }

  headerView7 = [(OBWelcomeController *)self headerView];
  if (headerView7)
  {
    headerView8 = [(OBWelcomeController *)self headerView];
    [headerView8 headerLabel];
  }

  headerView9 = [(OBWelcomeController *)self headerView];
  headerLabel3 = [headerView9 headerLabel];
  v42[0] = headerLabel3;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];

  if (v30)
  {
    headerView10 = [(OBWelcomeController *)self headerView];
    v41 = headerView10;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];

    if ([(OBTouchIDEnrollmentWelcomeController *)self shouldAnimateEntireView])
    {
      view = [(OBTouchIDEnrollmentWelcomeController *)self view];
      v40 = view;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    }

    else
    {
      v35 = v37;
    }
  }

  [(OBWelcomeController *)self _animatePushTransitionForViews:v35 transitionSubtype:0];

  v39 = *MEMORY[0x1E69E9840];
}

@end