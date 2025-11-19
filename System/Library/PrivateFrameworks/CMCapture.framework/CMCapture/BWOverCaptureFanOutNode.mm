@interface BWOverCaptureFanOutNode
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWOverCaptureFanOutNode

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (BWSampleBufferIsMarkerBuffer(a3))
  {
    v7 = CMGetAttachment(a3, @"RecordingSettings", 0);
    if (v7)
    {
      v8 = [v7 spatialOverCaptureMovieURL];
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
  [(BWFanOutNode *)&v10 renderSampleBuffer:a3 forInput:a4];
}

@end