@interface CKConversationListCellLayout
- (BOOL)isValidForContentViewWidth:(double)a3 contentViewHeight:(double)a4 widthForDeterminingAvatarVisibility:(double)a5 showingEditControl:(BOOL)a6;
- (CGRect)avatarFrame;
- (CGRect)chevronFrame;
- (CGRect)dateFrame;
- (CGRect)footerFrame;
- (CGRect)indicatorContainerFrame;
- (CGRect)priorityFrame;
- (CGRect)senderFrame;
- (CGRect)summaryFrameIfAccessoryIndicatorHidden;
- (CGRect)summaryFrameIfAccessoryIndicatorVisible;
- (CGRect)unreadFrame;
- (CKConversationListCellLayout)init;
- (double)cellHeightForDisplayScale:(double)a3;
- (void)invalidate;
- (void)markAsValidForContentViewWidth:(double)a3 contentViewHeight:(double)a4 widthForDeterminingAvatarVisibility:(double)a5 showingEditControl:(BOOL)a6;
@end

@implementation CKConversationListCellLayout

- (CKConversationListCellLayout)init
{
  v6.receiver = self;
  v6.super_class = CKConversationListCellLayout;
  v2 = [(CKConversationListCellLayout *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_invalid = 1;
    v4 = +[CKUIBehavior sharedBehaviors];
    v3->_shouldShowChevron = [v4 showsConversationListCellChevronImage];
  }

  return v3;
}

- (void)invalidate
{
  self->_shouldShowAvatarView = 0;
  v2 = MEMORY[0x1E695F058];
  self->_contentViewWidth = 0.0;
  self->_contentViewHeight = 0.0;
  v3 = *v2;
  v4 = *(v2 + 16);
  self->_summaryFrameIfAccessoryIndicatorVisible.origin = *v2;
  self->_summaryFrameIfAccessoryIndicatorVisible.size = v4;
  self->_summaryFrameIfAccessoryIndicatorHidden.origin = v3;
  self->_summaryFrameIfAccessoryIndicatorHidden.size = v4;
  self->_dateFrame.origin = v3;
  self->_dateFrame.size = v4;
  self->_senderFrame.origin = v3;
  self->_senderFrame.size = v4;
  self->_chevronFrame.origin = v3;
  self->_chevronFrame.size = v4;
  self->_unreadFrame.origin = v3;
  self->_unreadFrame.size = v4;
  self->_avatarFrame.origin = v3;
  self->_avatarFrame.size = v4;
  self->_tableViewWidth = 0.0;
  self->_summaryLabelCapFrameYOrigin = 0.0;
  self->_widthForDeterminingAvatarVisibility = 0.0;
  self->_lastUsedDisplayScale = 0.0;
  self->_cellHeight = 0.0;
  self->_invalid = 1;
}

- (CGRect)senderFrame
{
  x = self->_senderFrame.origin.x;
  y = self->_senderFrame.origin.y;
  width = self->_senderFrame.size.width;
  height = self->_senderFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)dateFrame
{
  x = self->_dateFrame.origin.x;
  y = self->_dateFrame.origin.y;
  width = self->_dateFrame.size.width;
  height = self->_dateFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)avatarFrame
{
  x = self->_avatarFrame.origin.x;
  y = self->_avatarFrame.origin.y;
  width = self->_avatarFrame.size.width;
  height = self->_avatarFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)footerFrame
{
  x = self->_footerFrame.origin.x;
  y = self->_footerFrame.origin.y;
  width = self->_footerFrame.size.width;
  height = self->_footerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)chevronFrame
{
  x = self->_chevronFrame.origin.x;
  y = self->_chevronFrame.origin.y;
  width = self->_chevronFrame.size.width;
  height = self->_chevronFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)indicatorContainerFrame
{
  x = self->_indicatorContainerFrame.origin.x;
  y = self->_indicatorContainerFrame.origin.y;
  width = self->_indicatorContainerFrame.size.width;
  height = self->_indicatorContainerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)summaryFrameIfAccessoryIndicatorHidden
{
  x = self->_summaryFrameIfAccessoryIndicatorHidden.origin.x;
  y = self->_summaryFrameIfAccessoryIndicatorHidden.origin.y;
  width = self->_summaryFrameIfAccessoryIndicatorHidden.size.width;
  height = self->_summaryFrameIfAccessoryIndicatorHidden.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)unreadFrame
{
  x = self->_unreadFrame.origin.x;
  y = self->_unreadFrame.origin.y;
  width = self->_unreadFrame.size.width;
  height = self->_unreadFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)isValidForContentViewWidth:(double)a3 contentViewHeight:(double)a4 widthForDeterminingAvatarVisibility:(double)a5 showingEditControl:(BOOL)a6
{
  if (self->_invalid)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = CKFloatApproximatelyEqualToFloatWithTolerance(self->_contentViewWidth, a3, 0.00000999999975);
    if (v6)
    {
      v6 = CKFloatApproximatelyEqualToFloatWithTolerance(self->_contentViewHeight, a4, 0.00000999999975);
      if (v6)
      {
        v6 = CKFloatApproximatelyEqualToFloatWithTolerance(self->_widthForDeterminingAvatarVisibility, a5, 0.00000999999975);
        if (v6)
        {
          LOBYTE(v6) = [(CKConversationListCellLayout *)self showingEditControl]^ a6 ^ 1;
        }
      }
    }
  }

  return v6;
}

- (void)markAsValidForContentViewWidth:(double)a3 contentViewHeight:(double)a4 widthForDeterminingAvatarVisibility:(double)a5 showingEditControl:(BOOL)a6
{
  self->_invalid = 0;
  self->_contentViewWidth = a3;
  self->_contentViewHeight = a4;
  self->_widthForDeterminingAvatarVisibility = a5;
  self->_showingEditControl = a6;
}

- (double)cellHeightForDisplayScale:(double)a3
{
  if (self->_cellHeight == 0.0 || ([(CKConversationListCellLayout *)self lastUsedDisplayScale], v5 != a3))
  {
    [CKConversationListCell cellHeightForDisplayScale:a3];
    self->_cellHeight = v6;
    [(CKConversationListCellLayout *)self setLastUsedDisplayScale:a3];
  }

  return self->_cellHeight;
}

- (CGRect)summaryFrameIfAccessoryIndicatorVisible
{
  x = self->_summaryFrameIfAccessoryIndicatorVisible.origin.x;
  y = self->_summaryFrameIfAccessoryIndicatorVisible.origin.y;
  width = self->_summaryFrameIfAccessoryIndicatorVisible.size.width;
  height = self->_summaryFrameIfAccessoryIndicatorVisible.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)priorityFrame
{
  x = self->_priorityFrame.origin.x;
  y = self->_priorityFrame.origin.y;
  width = self->_priorityFrame.size.width;
  height = self->_priorityFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end