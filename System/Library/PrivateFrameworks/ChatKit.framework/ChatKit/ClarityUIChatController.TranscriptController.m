@interface ClarityUIChatController.TranscriptController
- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithCoder:(id)a3;
- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)a3 delegate:(id)a4 balloonMaxWidth:(double)a5 marginInsets:(UIEdgeInsets)a6;
- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)a3 delegate:(id)a4 balloonMaxWidth:(double)a5 marginInsets:(UIEdgeInsets)a6 collectionViewSize:(CGSize)a7;
- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)a3 delegate:(id)a4 notifications:(id)a5 balloonMaxWidth:(double)a6 marginInsets:(UIEdgeInsets)a7;
- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)a3 delegate:(id)a4 notifications:(id)a5 balloonMaxWidth:(double)a6 marginInsets:(UIEdgeInsets)a7 collectionViewSize:(CGSize)a8;
- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)generateConversationFooterActions:(id)a3;
- (void)viewDidLoad;
@end

@implementation ClarityUIChatController.TranscriptController

- (id)generateConversationFooterActions:(id)a3
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
  v3 = [v2 collectionView];
  [v3 setShowsVerticalScrollIndicator_];
}

- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)a3 delegate:(id)a4 balloonMaxWidth:(double)a5 marginInsets:(UIEdgeInsets)a6
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  return [(CKTranscriptCollectionViewController *)&v14 initWithConversation:a3 delegate:a4 balloonMaxWidth:a5 marginInsets:top, left, bottom, right];
}

- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)a3 delegate:(id)a4 balloonMaxWidth:(double)a5 marginInsets:(UIEdgeInsets)a6 collectionViewSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v17.receiver = self;
  v17.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  return [(CKTranscriptCollectionViewController *)&v17 initWithConversation:a3 delegate:a4 balloonMaxWidth:a5 marginInsets:top collectionViewSize:left, bottom, right, width, height];
}

- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)a3 delegate:(id)a4 notifications:(id)a5 balloonMaxWidth:(double)a6 marginInsets:(UIEdgeInsets)a7
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  v16.receiver = self;
  v16.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  return [(CKTranscriptCollectionViewController *)&v16 initWithConversation:a3 delegate:a4 notifications:a5 balloonMaxWidth:a6 marginInsets:top, left, bottom, right];
}

- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithConversation:(id)a3 delegate:(id)a4 notifications:(id)a5 balloonMaxWidth:(double)a6 marginInsets:(UIEdgeInsets)a7 collectionViewSize:(CGSize)a8
{
  height = a8.height;
  width = a8.width;
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  v19.receiver = self;
  v19.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  return [(CKTranscriptCollectionViewController *)&v19 initWithConversation:a3 delegate:a4 notifications:a5 balloonMaxWidth:a6 marginInsets:top collectionViewSize:left, bottom, right, width, height];
}

- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_190D56F10();
    v6 = a4;
    v7 = sub_190D56ED0();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  v9 = [(ClarityUIChatController.TranscriptController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtCC7ChatKit23ClarityUIChatControllerP33_95E71DB35453CEDB4FA265025E24F84720TranscriptController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClarityUIChatController.TranscriptController();
  v4 = a3;
  v5 = [(ClarityUIChatController.TranscriptController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end