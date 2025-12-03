@interface ClarityUIChatController.TranscriptController
- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithCoder:(id)coder;
- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)conversation delegate:(id)delegate balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets;
- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)conversation delegate:(id)delegate balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets collectionViewSize:(CGSize)size;
- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)conversation delegate:(id)delegate notifications:(id)notifications balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets;
- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)conversation delegate:(id)delegate notifications:(id)notifications balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets collectionViewSize:(CGSize)size;
- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithNibName:(id)name bundle:(id)bundle;
- (id)generateConversationFooterActions:(id)actions;
- (void)viewDidLoad;
@end

@implementation ClarityUIChatController.TranscriptController

- (id)generateConversationFooterActions:(id)actions
{
  type metadata accessor for FooterButtonAction();
  v3 = sub_190D57160();

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  v2 = v4.receiver;
  [(CKTranscriptCollectionViewController *)&v4 viewDidLoad];
  collectionView = [v2 collectionView];
  [collectionView setShowsVerticalScrollIndicator_];
}

- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)conversation delegate:(id)delegate balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  return [(CKTranscriptCollectionViewController *)&v14 initWithConversation:conversation delegate:delegate balloonMaxWidth:width marginInsets:top, left, bottom, right];
}

- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)conversation delegate:(id)delegate balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets collectionViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v17.receiver = self;
  v17.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  return [(CKTranscriptCollectionViewController *)&v17 initWithConversation:conversation delegate:delegate balloonMaxWidth:width marginInsets:top collectionViewSize:left, bottom, right, width, height];
}

- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)conversation delegate:(id)delegate notifications:(id)notifications balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v16.receiver = self;
  v16.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  return [(CKTranscriptCollectionViewController *)&v16 initWithConversation:conversation delegate:delegate notifications:notifications balloonMaxWidth:width marginInsets:top, left, bottom, right];
}

- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)conversation delegate:(id)delegate notifications:(id)notifications balloonMaxWidth:(double)width marginInsets:(UIEdgeInsets)insets collectionViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v19.receiver = self;
  v19.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  return [(CKTranscriptCollectionViewController *)&v19 initWithConversation:conversation delegate:delegate notifications:notifications balloonMaxWidth:width marginInsets:top collectionViewSize:left, bottom, right, width, height];
}

- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_190D56F10();
    bundleCopy = bundle;
    v7 = sub_190D56ED0();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  v9 = [(ClarityUIChatController.TranscriptController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  coderCopy = coder;
  v5 = [(ClarityUIChatController.TranscriptController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end