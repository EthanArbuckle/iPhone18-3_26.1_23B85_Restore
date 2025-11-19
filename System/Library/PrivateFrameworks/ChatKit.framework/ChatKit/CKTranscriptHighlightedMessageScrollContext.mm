@interface CKTranscriptHighlightedMessageScrollContext
- (CKTranscriptHighlightedMessageScrollContext)initWithMessageGUID:(id)a3 messagePartIndex:(int64_t)a4 viewToAlignWith:(id)a5 allowOverScroll:(BOOL)a6 scrollPosition:(unint64_t)a7;
- (UIView)viewToAlignWith;
@end

@implementation CKTranscriptHighlightedMessageScrollContext

- (CKTranscriptHighlightedMessageScrollContext)initWithMessageGUID:(id)a3 messagePartIndex:(int64_t)a4 viewToAlignWith:(id)a5 allowOverScroll:(BOOL)a6 scrollPosition:(unint64_t)a7
{
  v12 = a3;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = CKTranscriptHighlightedMessageScrollContext;
  v14 = [(CKTranscriptHighlightedMessageScrollContext *)&v18 init];
  if (v14)
  {
    v15 = [v12 copy];
    messageGUID = v14->_messageGUID;
    v14->_messageGUID = v15;

    v14->_messagePartIndex = a4;
    objc_storeWeak(&v14->_viewToAlignWith, v13);
    v14->_allowOverScroll = a6;
    v14->_scrollPosition = a7;
  }

  return v14;
}

- (UIView)viewToAlignWith
{
  WeakRetained = objc_loadWeakRetained(&self->_viewToAlignWith);

  return WeakRetained;
}

@end