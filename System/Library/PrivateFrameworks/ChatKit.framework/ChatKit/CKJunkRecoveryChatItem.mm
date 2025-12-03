@interface CKJunkRecoveryChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (id)loadTranscriptText;
@end

@implementation CKJunkRecoveryChatItem

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  sizingCell = self->_sizingCell;
  if (!sizingCell)
  {
    v8 = objc_alloc_init(CKJunkRecoveryTranscriptCell);
    v9 = self->_sizingCell;
    self->_sizingCell = v8;

    sizingCell = self->_sizingCell;
  }

  earliestMessageDate = [(CKJunkRecoveryChatItem *)self earliestMessageDate];
  [(CKJunkRecoveryTranscriptCell *)sizingCell updateRecoverConversationLabelContentForDate:earliestMessageDate];

  v11 = self->_sizingCell;

  [(CKJunkRecoveryTranscriptCell *)v11 sizeThatFits:width, height];
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)loadTranscriptText
{
  earliestMessageDate = [(CKJunkRecoveryChatItem *)self earliestMessageDate];
  v3 = [CKJunkRecoveryTranscriptCell attributedRecoverConversationStringWithDeletionDate:earliestMessageDate];

  return v3;
}

@end