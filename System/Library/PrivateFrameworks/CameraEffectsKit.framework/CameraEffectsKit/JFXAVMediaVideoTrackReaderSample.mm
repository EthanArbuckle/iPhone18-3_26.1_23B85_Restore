@interface JFXAVMediaVideoTrackReaderSample
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)presentationTimeStamp;
- ($AC64C642040120CEEAD84DEEACA9A5CE)timeRange;
- (JFXAVMediaVideoTrackReaderSample)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (JFXAVMediaVideoTrackReaderSample)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3 duration:(id *)a4;
- (void)dealloc;
@end

@implementation JFXAVMediaVideoTrackReaderSample

- (JFXAVMediaVideoTrackReaderSample)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3 duration:(id *)a4
{
  v9.receiver = self;
  v9.super_class = JFXAVMediaVideoTrackReaderSample;
  v6 = [(JFXAVMediaVideoTrackReaderSample *)&v9 init];
  if (v6)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    v7 = *&a4->var0;
    v6->_duration.epoch = a4->var3;
    *&v6->_duration.value = v7;
    v6->_sampleBufferRef = a3;
  }

  return v6;
}

- (JFXAVMediaVideoTrackReaderSample)initWithSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  return [(JFXAVMediaVideoTrackReaderSample *)self initWithSampleBuffer:a3 duration:&v4];
}

- (void)dealloc
{
  CFRelease(self->_sampleBufferRef);
  v3.receiver = self;
  v3.super_class = JFXAVMediaVideoTrackReaderSample;
  [(JFXAVMediaVideoTrackReaderSample *)&v3 dealloc];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)presentationTimeStamp
{
  v4 = [(JFXAVMediaVideoTrackReaderSample *)self sampleBufferRef];

  return CMSampleBufferGetPresentationTimeStamp(retstr, v4);
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)timeRange
{
  [(JFXAVMediaVideoTrackReaderSample *)self presentationTimeStamp];
  [(JFXAVMediaVideoTrackReaderSample *)self duration];
  return CMTimeRangeMake(retstr, &start, &v6);
}

@end