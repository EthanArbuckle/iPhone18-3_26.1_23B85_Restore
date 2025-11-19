@interface GKSignInInputView
- (id)allVariableConstraints;
- (void)setupConstraintConstantsForOrientation:(int64_t)a3;
@end

@implementation GKSignInInputView

- (void)setupConstraintConstantsForOrientation:(int64_t)a3
{
  v4 = a3 - 3;
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    if (*MEMORY[0x277D0C258] == 1)
    {
      topToSignInBaselineConstraint = self->_topToSignInBaselineConstraint;
      v8 = 143.0;
    }

    else
    {
      v8 = dbl_24E367890[v4 < 2];
      topToSignInBaselineConstraint = self->_topToSignInBaselineConstraint;
    }
  }

  else
  {
    v9 = [MEMORY[0x277D75418] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 != 1)
    {
      v11 = [MEMORY[0x277D759A0] mainScreen];
      [v11 bounds];
      v13 = v12;
      v15 = v14;

      v16 = v15 <= v13 ? v13 : v15;
      if (v16 > 480.0)
      {
        v17 = v4 < 2;
        p_topToSignInBaselineConstraint = &self->_topToSignInBaselineConstraint;
        [(NSLayoutConstraint *)self->_topToSignInBaselineConstraint setConstant:dbl_24E367880[v17]];
        [(NSLayoutConstraint *)self->_signInBaselineToPromptTextTopConstraint setConstant:34.0];
        v19 = [MEMORY[0x277D759A0] mainScreen];
        [v19 bounds];
        v21 = v20;
        v23 = v22;

        [(NSLayoutConstraint *)self->_topToSignInBaselineConstraint constant];
        v25 = v24 * (fmin(v21, v23) / 320.0);
        goto LABEL_15;
      }
    }

    topToSignInBaselineConstraint = self->_topToSignInBaselineConstraint;
    v8 = 143.0;
    if (*MEMORY[0x277D0C258])
    {
      v8 = 155.0;
    }
  }

  [(NSLayoutConstraint *)topToSignInBaselineConstraint setConstant:v8];
  p_topToSignInBaselineConstraint = &self->_signInBaselineToPromptTextTopConstraint;
  v25 = 34.0;
LABEL_15:
  [(NSLayoutConstraint *)*p_topToSignInBaselineConstraint setConstant:v25];
  [(NSLayoutConstraint *)self->_signInBaselineToPromptTextTopConstraint constant];
  [(NSLayoutConstraint *)self->_promptTextToProgressIndicatorTopConstraint setConstant:?];
  [(NSLayoutConstraint *)self->_signInBaselineToPromptTextTopConstraint constant];
  [(NSLayoutConstraint *)self->_signInFormToSignInLabelTopConstraint setConstant:v26 + -15.0];
  v28 = +[GKConstraintUpdateController sharedController];
  signInBaselineToPromptTextTopConstraint = self->_signInBaselineToPromptTextTopConstraint;
  [(NSLayoutConstraint *)signInBaselineToPromptTextTopConstraint constant];
  [v28 registerConstraint:signInBaselineToPromptTextTopConstraint leading:*MEMORY[0x277D76918] forFontTextStyle:?];
}

- (id)allVariableConstraints
{
  v6[4] = *MEMORY[0x277D85DE8];
  signInBaselineToPromptTextTopConstraint = self->_signInBaselineToPromptTextTopConstraint;
  v6[0] = self->_topToSignInBaselineConstraint;
  v6[1] = signInBaselineToPromptTextTopConstraint;
  signInFormToSignInLabelTopConstraint = self->_signInFormToSignInLabelTopConstraint;
  v6[2] = self->_promptTextToProgressIndicatorTopConstraint;
  v6[3] = signInFormToSignInLabelTopConstraint;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];

  return v4;
}

@end