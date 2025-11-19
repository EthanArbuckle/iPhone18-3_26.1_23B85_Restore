@interface MIOWriterAudioSampleBufferStreamInput
- (BOOL)appendAudioBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (MIOWriterAudioSampleBufferStreamInput)init;
- (MIOWriterAudioSampleBufferStreamInput)initWithStreamId:(id)a3 audioFormat:(id)a4 additionalSettings:(id)a5;
- (MIOWriterAudioSampleBufferStreamInput)initWithStreamId:(id)a3 audioFormatDescription:(opaqueCMFormatDescription *)a4 additionalSettings:(id)a5;
- (id)sampleInputOutputSettings;
@end

@implementation MIOWriterAudioSampleBufferStreamInput

- (MIOWriterAudioSampleBufferStreamInput)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_ErrorDoNotCall_0.isa, v4);

  return 0;
}

- (MIOWriterAudioSampleBufferStreamInput)initWithStreamId:(id)a3 audioFormat:(id)a4 additionalSettings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 formatDescription];
  if (v11)
  {
    v20.receiver = self;
    v20.super_class = MIOWriterAudioSampleBufferStreamInput;
    v12 = [(MIOWriterSampleBufferStreamInput *)&v20 initWithStreamId:v8 format:v11];
    if (v12)
    {
      v13 = +[MOVStreamIOUtility audioNoneEncoderConfig];
      v14 = [v13 mutableCopy];

      [v14 setObject:v9 forKey:@"AudioFormatObject"];
      if (v10)
      {
        [v14 setObject:v10 forKey:@"AdditionalAudioSettings"];
      }

      v15 = [v14 copy];
      config = v12->_config;
      v12->_config = v15;
    }

    self = v12;
    v17 = self;
  }

  else
  {
    v18 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v18, OS_LOG_TYPE_ERROR, "Invalid audioFormat, no format description found.", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (MIOWriterAudioSampleBufferStreamInput)initWithStreamId:(id)a3 audioFormatDescription:(opaqueCMFormatDescription *)a4 additionalSettings:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = MIOWriterAudioSampleBufferStreamInput;
  v9 = [(MIOWriterSampleBufferStreamInput *)&v15 initWithStreamId:a3 format:a4];
  if (v9)
  {
    v10 = +[MOVStreamIOUtility audioNoneEncoderConfig];
    v11 = [v10 mutableCopy];

    if (v8)
    {
      [v11 setObject:v8 forKey:@"AdditionalAudioSettings"];
    }

    v12 = [v11 copy];
    config = v9->_config;
    v9->_config = v12;
  }

  return v9;
}

- (id)sampleInputOutputSettings
{
  v2 = [MIOOutputSettingsFactory outputSettingsWithConfig:self->_config formatDescription:[(MIOWriterSampleBufferStreamInput *)self formatDescription] defaultFrameRate:0 preferEncoderConfig:0 enableAVEHighPerformanceProfile:30.0];
  v3 = [v2 settings];

  return v3;
}

- (BOOL)appendAudioBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  memset(&v11, 0, sizeof(v11));
  CMSampleBufferGetPresentationTimeStamp(&v11, a3);
  v10 = v11;
  v7 = [MEMORY[0x277CE6648] attachmentsMIOTimedMetadataGroupForSampleBuffer:a3 pts:&v10 error:a4];
  if (*a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(MIOWriterSampleBufferStreamInput *)self appendSampleBuffer:a3 metadataGroup:v7 error:a4];
  }

  return v8;
}

@end