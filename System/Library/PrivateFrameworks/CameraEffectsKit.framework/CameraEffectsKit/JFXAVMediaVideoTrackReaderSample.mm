@interface JFXAVMediaVideoTrackReaderSample
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)presentationTimeStamp;
- ($AC64C642040120CEEAD84DEEACA9A5CE)timeRange;
- (JFXAVMediaVideoTrackReaderSample)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (JFXAVMediaVideoTrackReaderSample)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer duration:(id *)duration;
- (void)dealloc;
@end

@implementation JFXAVMediaVideoTrackReaderSample

- (JFXAVMediaVideoTrackReaderSample)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer duration:(id *)duration
{
  v9.receiver = self;
  v9.super_class = JFXAVMediaVideoTrackReaderSample;
  v6 = [(JFXAVMediaVideoTrackReaderSample *)&v9 init];
  if (v6)
  {
    if (buffer)
    {
      CFRetain(buffer);
    }

    v7 = *&duration->var0;
    v6->_duration.epoch = duration->var3;
    *&v6->_duration.value = v7;
    v6->_sampleBufferRef = buffer;
  }

  return v6;
}

- (JFXAVMediaVideoTrackReaderSample)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  return [(JFXAVMediaVideoTrackReaderSample *)self initWithSampleBuffer:buffer duration:&v4];
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
  sampleBufferRef = [(JFXAVMediaVideoTrackReaderSample *)self sampleBufferRef];

  return CMSampleBufferGetPresentationTimeStamp(retstr, sampleBufferRef);
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)timeRange
{
  [(JFXAVMediaVideoTrackReaderSample *)self presentationTimeStamp];
  [(JFXAVMediaVideoTrackReaderSample *)self duration];
  return CMTimeRangeMake(retstr, &start, &v6);
}

@end