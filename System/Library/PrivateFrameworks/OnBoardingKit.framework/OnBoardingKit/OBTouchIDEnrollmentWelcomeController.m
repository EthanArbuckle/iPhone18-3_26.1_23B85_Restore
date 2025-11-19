@interface OBTouchIDEnrollmentWelcomeController
- (void)startTitleTransitionAnimated:(BOOL)a3 heightDifference:(id)a4;
@end

@implementation OBTouchIDEnrollmentWelcomeController

- (void)startTitleTransitionAnimated:(BOOL)a3 heightDifference:(id)a4
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(OBWelcomeController *)self headerView];
  v7 = [v6 headerLabel];
  [v7 frame];
  v9 = v8;

  v10 = [(OBWelcomeController *)self headerView];
  v11 = [v10 headerLabel];
  v12 = [(OBWelcomeController *)self headerView];
  [v12 bounds];
  v14 = v13;
  LODWORD(v13) = 1112014848;
  LODWORD(v15) = 1132068864;
  [v11 systemLayoutSizeFittingSize:v14 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v13, v15}];
  v17 = v16;

  v18 = [(OBWelcomeController *)self headerView];
  v19 = [v18 detailLabel];
  [v19 frame];
  v21 = v20;

  v22 = [(OBWelcomeController *)self headerView];
  v23 = [v22 detailLabel];
  v24 = [(OBWelcomeController *)self headerView];
  [v24 bounds];
  v26 = v25;
  LODWORD(v25) = 1112014848;
  LODWORD(v27) = 1132068864;
  [v23 systemLayoutSizeFittingSize:v26 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v25, v27}];
  v29 = v28;

  v30 = v29 != v21 || v17 != v9;
  if (v5)
  {
    v5[2](v5, v9 - v17 + v21 - v29);
  }

  v31 = [(OBWelcomeController *)self headerView];
  if (v31)
  {
    v32 = [(OBWelcomeController *)self headerView];
    [v32 headerLabel];
  }

  v33 = [(OBWelcomeController *)self headerView];
  v34 = [v33 headerLabel];
  v42[0] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];

  if (v30)
  {
    v36 = [(OBWelcomeController *)self headerView];
    v41 = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];

    if ([(OBTouchIDEnrollmentWelcomeController *)self shouldAnimateEntireView])
    {
      v38 = [(OBTouchIDEnrollmentWelcomeController *)self view];
      v40 = v38;
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