@interface _CKTranscriptNavigationBarTitleView
- (void)didMoveToSuperview;
- (void)removeFromSuperview;
@end

@implementation _CKTranscriptNavigationBarTitleView

- (void)removeFromSuperview
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      superview = [(_CKTranscriptNavigationBarTitleView *)self superview];
      *buf = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = superview;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "_CKTranscriptNavigationBarTitleView instance\n {%@} is being removed from its superview\n {%@}.", buf, 0x16u);
    }
  }

  v5.receiver = self;
  v5.super_class = _CKTranscriptNavigationBarTitleView;
  [(_CKTranscriptNavigationBarTitleView *)&v5 removeFromSuperview];
}

- (void)didMoveToSuperview
{
  v10 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = _CKTranscriptNavigationBarTitleView;
  [(_CKTranscriptNavigationBarTitleView *)&v5 didMoveToSuperview];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      superview = [(_CKTranscriptNavigationBarTitleView *)self superview];
      *buf = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = superview;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "_CKTranscriptNavigationBarTitleView instance\n {%@} did move to superview\n {%@}.", buf, 0x16u);
    }
  }
}

@end