@interface GDPersonEntityTaggingStatefulFeedback
- (GDPersonEntityTaggingStatefulFeedback)initWithStatefulFeedbackType:(int64_t)type eventIds:(id)ids;
@end

@implementation GDPersonEntityTaggingStatefulFeedback

- (GDPersonEntityTaggingStatefulFeedback)initWithStatefulFeedbackType:(int64_t)type eventIds:(id)ids
{
  idsCopy = ids;
  v11.receiver = self;
  v11.super_class = GDPersonEntityTaggingStatefulFeedback;
  v8 = [(GDPersonEntityTaggingStatefulFeedback *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_feedbackType = type;
    objc_storeStrong(&v8->_eventIds, ids);
  }

  return v9;
}

@end