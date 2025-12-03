@interface ICDocumentMergeController
- (BOOL)isBlockingMerge;
- (ICDocumentMergeController)init;
- (ICDocumentMergeControlling)parentController;
- (NSSet)textViews;
- (void)addTextView:(id)view;
- (void)beginBlockingMergeForReason:(unint64_t)reason textView:(id)view;
- (void)blockingMergeForReason:(unint64_t)reason textView:(id)view block:(id)block;
- (void)endBlockingMergeForReason:(unint64_t)reason textView:(id)view;
- (void)removeTextView:(id)view;
- (void)requestMergeWithBlock:(id)block;
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

- (void)addTextView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1D41867CC(viewCopy);
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

- (void)removeTextView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1D4320C64(viewCopy);
}

- (BOOL)isBlockingMerge
{
  selfCopy = self;
  sub_1D4320E9C();
  v4 = v3;

  return v4 & 1;
}

- (void)beginBlockingMergeForReason:(unint64_t)reason textView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1D43210DC(reason, viewCopy);
}

- (void)endBlockingMergeForReason:(unint64_t)reason textView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1D432145C(reason, viewCopy);
}

- (void)blockingMergeForReason:(unint64_t)reason textView:(id)view block:(id)block
{
  v7 = _Block_copy(block);
  viewCopy = view;
  selfCopy = self;
  [(ICDocumentMergeController *)selfCopy beginBlockingMergeForReason:3 textView:viewCopy];
  v7[2](v7);
  _Block_release(v7);
  [(ICDocumentMergeController *)selfCopy endBlockingMergeForReason:3 textView:viewCopy];
}

- (void)requestMergeWithBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_1D4322AE4(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end