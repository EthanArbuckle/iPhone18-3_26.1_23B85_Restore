@interface ICInlineAttachmentView(ICTextPreviewProvider)
- (void)imageForTextPreviewUsingFindingResult:()ICTextPreviewProvider inTextView:completion:;
@end

@implementation ICInlineAttachmentView(ICTextPreviewProvider)

- (void)imageForTextPreviewUsingFindingResult:()ICTextPreviewProvider inTextView:completion:
{
  v12 = a5;
  v7 = a3;
  objc_opt_class();
  v8 = ICDynamicCast();

  if (v12)
  {
    displayTextRange = [v8 displayTextRange];
    v11 = [self imageForTextPreviewInRange:{displayTextRange, v10}];
    v12[2](v12, v11);
  }
}

@end