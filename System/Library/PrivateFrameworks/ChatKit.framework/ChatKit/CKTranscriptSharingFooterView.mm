@interface CKTranscriptSharingFooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation CKTranscriptSharingFooterView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  footerTextViewTitle = [(CKTranscriptSharingFooterView *)self footerTextViewTitle];
  [footerTextViewTitle sizeThatFits:{width + -40.0, height}];
  v10 = v9;

  footerTextViewDesc = [(CKTranscriptSharingFooterView *)self footerTextViewDesc];
  [footerTextViewDesc sizeThatFits:{width + -40.0, height}];
  v13 = v12;

  v14 = v10 + v13;
  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 transcriptSharingFooterBottomSpacing];
  v17 = v16;

  v18 = v14 + v17;
  if (isEntryViewRefreshEnabled)
  {
    v19 = width + -40.0;
  }

  else
  {
    v19 = width;
  }

  if (!isEntryViewRefreshEnabled)
  {
    v18 = v14 + v17 * 3.0;
  }

  result.height = v18;
  result.width = v19;
  return result;
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = CKTranscriptSharingFooterView;
  [(CKTranscriptSharingFooterView *)&v34 layoutSubviews];
  toolbar = [(CKTranscriptSharingFooterView *)self toolbar];
  [(CKTranscriptSharingFooterView *)self bounds];
  [toolbar setFrame:?];

  [(CKTranscriptSharingFooterView *)self bounds];
  v5 = v4;
  v7 = v6;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

  if (!isEntryViewRefreshEnabled)
  {
    v5 = v5 + -40.0;
  }

  footerTextViewTitle = [(CKTranscriptSharingFooterView *)self footerTextViewTitle];
  [footerTextViewTitle sizeThatFits:{v5, v7}];
  v12 = v11;
  v14 = v13;

  footerTextViewDesc = [(CKTranscriptSharingFooterView *)self footerTextViewDesc];
  [footerTextViewDesc sizeThatFits:{v5, v7}];
  v17 = v16;
  v19 = v18;

  v20 = MEMORY[0x1E695F058];
  v21 = *MEMORY[0x1E695F058];
  mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled2 = [mEMORY[0x1E69A8070]2 isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled2)
  {
    v24 = *(v20 + 8);
    v25 = v21;
  }

  else
  {
    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 transcriptSharingFooterBottomSpacing];
    v24 = v27;

    v25 = 20.0;
  }

  footerTextViewTitle2 = [(CKTranscriptSharingFooterView *)self footerTextViewTitle];
  [footerTextViewTitle2 setFrame:{v25, v24, v12, v14}];

  v35.origin.x = v25;
  v35.origin.y = v24;
  v35.size.width = v12;
  v35.size.height = v14;
  MaxY = CGRectGetMaxY(v35);
  mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEntryViewRefreshEnabled3 = [mEMORY[0x1E69A8070]3 isEntryViewRefreshEnabled];

  if (isEntryViewRefreshEnabled3)
  {
    v32 = v21;
  }

  else
  {
    v32 = 20.0;
  }

  footerTextViewDesc2 = [(CKTranscriptSharingFooterView *)self footerTextViewDesc];
  [footerTextViewDesc2 setFrame:{v32, MaxY, v17, v19}];
}

@end