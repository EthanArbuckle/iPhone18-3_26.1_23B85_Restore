@interface _NUVideoPlaybackFrameRequestResponse
- (void)dealloc;
@end

@implementation _NUVideoPlaybackFrameRequestResponse

- (void)dealloc
{
  frame = self->_frame;
  if (frame)
  {
    CFRelease(frame);
  }

  v4.receiver = self;
  v4.super_class = _NUVideoPlaybackFrameRequestResponse;
  [(_NUVideoPlaybackFrameRequestResponse *)&v4 dealloc];
}

@end