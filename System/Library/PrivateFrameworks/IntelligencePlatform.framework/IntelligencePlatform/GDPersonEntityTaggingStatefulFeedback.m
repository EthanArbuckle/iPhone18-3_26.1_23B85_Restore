@interface GDPersonEntityTaggingStatefulFeedback
- (GDPersonEntityTaggingStatefulFeedback)initWithStatefulFeedbackType:(int64_t)a3 eventIds:(id)a4;
@end

@implementation GDPersonEntityTaggingStatefulFeedback

- (GDPersonEntityTaggingStatefulFeedback)initWithStatefulFeedbackType:(int64_t)a3 eventIds:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GDPersonEntityTaggingStatefulFeedback;
  v8 = [(GDPersonEntityTaggingStatefulFeedback *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_feedbackType = a3;
    objc_storeStrong(&v8->_eventIds, a4);
  }

  return v9;
}

@end