@interface GDFeedbackService
- (GDFeedbackService)init;
@end

@implementation GDFeedbackService

- (GDFeedbackService)init
{
  v6.receiver = self;
  v6.super_class = GDFeedbackService;
  v2 = [(GDFeedbackService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(GDFeedbackServiceInner);
    inner = v2->_inner;
    v2->_inner = v3;
  }

  return v2;
}

@end