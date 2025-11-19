@interface ICDocumentMergeController
- (BOOL)isBlockingMerge;
- (ICDocumentMergeController)init;
- (ICDocumentMergeControlling)parentController;
- (NSSet)textViews;
- (void)addTextView:(id)a3;
- (void)beginBlockingMergeForReason:(unint64_t)a3 textView:(id)a4;
- (void)blockingMergeForReason:(unint64_t)a3 textView:(id)a4 block:(id)a5;
- (void)endBlockingMergeForReason:(unint64_t)a3 textView:(id)a4;
- (void)removeTextView:(id)a3;
- (void)requestMergeWithBlock:(id)a3;
@end

@implementation ICDocumentMergeController

- (ICDocumentMergeController)init
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___ICDocumentMergeController_textViewsToReasonCounts;
  *(self + v3) = sub_1D418666C(MEMORY[0x1E69E7CC0]);
  v4 = (self + OBJC_IVAR___ICDocumentMergeController_requestedMergeBlock);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ICDocumentMergeController;
  return [(ICDocumentMergeController *)&v6 init];
}

- (void)addTextView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D41867CC(v4);
}

- (ICDocumentMergeControlling)parentController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSSet)textViews
{
  swift_beginAccess();

  sub_1D4389644(v2);
  sub_1D41766C0(0, &qword_1EDE32A00);
  sub_1D4322D38();
  v3 = sub_1D441A054();

  return v3;
}

- (void)removeTextView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D4320C64(v4);
}

- (BOOL)isBlockingMerge
{
  v2 = self;
  sub_1D4320E9C();
  v4 = v3;

  return v4 & 1;
}

- (void)beginBlockingMergeForReason:(unint64_t)a3 textView:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_1D43210DC(a3, v6);
}

- (void)endBlockingMergeForReason:(unint64_t)a3 textView:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_1D432145C(a3, v6);
}

- (void)blockingMergeForReason:(unint64_t)a3 textView:(id)a4 block:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a4;
  v9 = self;
  [(ICDocumentMergeController *)v9 beginBlockingMergeForReason:3 textView:v8];
  v7[2](v7);
  _Block_release(v7);
  [(ICDocumentMergeController *)v9 endBlockingMergeForReason:3 textView:v8];
}

- (void)requestMergeWithBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1D4322AE4(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end