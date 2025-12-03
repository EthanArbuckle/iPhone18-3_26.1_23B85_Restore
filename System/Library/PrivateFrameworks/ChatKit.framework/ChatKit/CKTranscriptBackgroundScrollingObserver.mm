@interface CKTranscriptBackgroundScrollingObserver
- (void)tick:(double)tick;
@end

@implementation CKTranscriptBackgroundScrollingObserver

- (void)tick:(double)tick
{
  *&self->_shouldSendStartScrolling = 0;
  v3 = fabs(tick);
  if (v3 <= 1.0 || self->_scrolling)
  {
    if (v3 < 0.0500000007 && self->_scrolling)
    {
      self->_shouldSendStopScrolling = 1;
      self->_scrolling = 0;
    }
  }

  else
  {
    *&self->_scrolling = 257;
  }
}

@end