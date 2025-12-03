@interface CKTranscriptHighlightedMessageScrollContext
- (CKTranscriptHighlightedMessageScrollContext)initWithMessageGUID:(id)d messagePartIndex:(int64_t)index viewToAlignWith:(id)with allowOverScroll:(BOOL)scroll scrollPosition:(unint64_t)position;
- (UIView)viewToAlignWith;
@end

@implementation CKTranscriptHighlightedMessageScrollContext

- (CKTranscriptHighlightedMessageScrollContext)initWithMessageGUID:(id)d messagePartIndex:(int64_t)index viewToAlignWith:(id)with allowOverScroll:(BOOL)scroll scrollPosition:(unint64_t)position
{
  dCopy = d;
  withCopy = with;
  v18.receiver = self;
  v18.super_class = CKTranscriptHighlightedMessageScrollContext;
  v14 = [(CKTranscriptHighlightedMessageScrollContext *)&v18 init];
  if (v14)
  {
    v15 = [dCopy copy];
    messageGUID = v14->_messageGUID;
    v14->_messageGUID = v15;

    v14->_messagePartIndex = index;
    objc_storeWeak(&v14->_viewToAlignWith, withCopy);
    v14->_allowOverScroll = scroll;
    v14->_scrollPosition = position;
  }

  return v14;
}

- (UIView)viewToAlignWith
{
  WeakRetained = objc_loadWeakRetained(&self->_viewToAlignWith);

  return WeakRetained;
}

@end