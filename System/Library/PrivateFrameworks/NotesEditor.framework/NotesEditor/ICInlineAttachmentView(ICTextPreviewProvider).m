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
    v9 = [v8 displayTextRange];
    v11 = [a1 imageForTextPreviewInRange:{v9, v10}];
    v12[2](v12, v11);
  }
}

@end