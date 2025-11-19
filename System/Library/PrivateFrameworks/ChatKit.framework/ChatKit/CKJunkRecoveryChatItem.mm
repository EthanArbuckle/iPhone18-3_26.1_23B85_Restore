@interface CKJunkRecoveryChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (id)loadTranscriptText;
@end

@implementation CKJunkRecoveryChatItem

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  sizingCell = self->_sizingCell;
  if (!sizingCell)
  {
    v8 = objc_alloc_init(CKJunkRecoveryTranscriptCell);
    v9 = self->_sizingCell;
    self->_sizingCell = v8;

    sizingCell = self->_sizingCell;
  }

  v10 = [(CKJunkRecoveryChatItem *)self earliestMessageDate];
  [(CKJunkRecoveryTranscriptCell *)sizingCell updateRecoverConversationLabelContentForDate:v10];

  v11 = self->_sizingCell;

  [(CKJunkRecoveryTranscriptCell *)v11 sizeThatFits:width, height];
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)loadTranscriptText
{
  v2 = [(CKJunkRecoveryChatItem *)self earliestMessageDate];
  v3 = [CKJunkRecoveryTranscriptCell attributedRecoverConversationStringWithDeletionDate:v2];

  return v3;
}

@end