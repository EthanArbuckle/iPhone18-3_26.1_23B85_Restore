@interface BWOverCaptureFanOutNode
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWOverCaptureFanOutNode

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (BWSampleBufferIsMarkerBuffer(buffer))
  {
    v7 = CMGetAttachment(buffer, @"RecordingSettings", 0);
    if (v7)
    {
      spatialOverCaptureMovieURL = [v7 spatialOverCaptureMovieURL];
      if ([(NSArray *)[(BWNode *)self outputs] count]>= 2)
      {
        v9 = 1;
        do
        {
          [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self "outputs")];
        }

        while ([(NSArray *)[(BWNode *)self outputs] count]> v9);
      }
    }
  }

  v10.receiver = self;
  v10.super_class = BWOverCaptureFanOutNode;
  [(BWFanOutNode *)&v10 renderSampleBuffer:buffer forInput:input];
}

@end