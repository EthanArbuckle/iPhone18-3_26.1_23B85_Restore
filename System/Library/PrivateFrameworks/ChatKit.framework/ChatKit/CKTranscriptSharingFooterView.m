@interface CKTranscriptSharingFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation CKTranscriptSharingFooterView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v7 = [v6 isEntryViewRefreshEnabled];

  v8 = [(CKTranscriptSharingFooterView *)self footerTextViewTitle];
  [v8 sizeThatFits:{width + -40.0, height}];
  v10 = v9;

  v11 = [(CKTranscriptSharingFooterView *)self footerTextViewDesc];
  [v11 sizeThatFits:{width + -40.0, height}];
  v13 = v12;

  v14 = v10 + v13;
  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 transcriptSharingFooterBottomSpacing];
  v17 = v16;

  v18 = v14 + v17;
  if (v7)
  {
    v19 = width + -40.0;
  }

  else
  {
    v19 = width;
  }

  if (!v7)
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
  v3 = [(CKTranscriptSharingFooterView *)self toolbar];
  [(CKTranscriptSharingFooterView *)self bounds];
  [v3 setFrame:?];

  [(CKTranscriptSharingFooterView *)self bounds];
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v9 = [v8 isEntryViewRefreshEnabled];

  if (!v9)
  {
    v5 = v5 + -40.0;
  }

  v10 = [(CKTranscriptSharingFooterView *)self footerTextViewTitle];
  [v10 sizeThatFits:{v5, v7}];
  v12 = v11;
  v14 = v13;

  v15 = [(CKTranscriptSharingFooterView *)self footerTextViewDesc];
  [v15 sizeThatFits:{v5, v7}];
  v17 = v16;
  v19 = v18;

  v20 = MEMORY[0x1E695F058];
  v21 = *MEMORY[0x1E695F058];
  v22 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v23 = [v22 isEntryViewRefreshEnabled];

  if (v23)
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

  v28 = [(CKTranscriptSharingFooterView *)self footerTextViewTitle];
  [v28 setFrame:{v25, v24, v12, v14}];

  v35.origin.x = v25;
  v35.origin.y = v24;
  v35.size.width = v12;
  v35.size.height = v14;
  MaxY = CGRectGetMaxY(v35);
  v30 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v31 = [v30 isEntryViewRefreshEnabled];

  if (v31)
  {
    v32 = v21;
  }

  else
  {
    v32 = 20.0;
  }

  v33 = [(CKTranscriptSharingFooterView *)self footerTextViewDesc];
  [v33 setFrame:{v32, MaxY, v17, v19}];
}

@end