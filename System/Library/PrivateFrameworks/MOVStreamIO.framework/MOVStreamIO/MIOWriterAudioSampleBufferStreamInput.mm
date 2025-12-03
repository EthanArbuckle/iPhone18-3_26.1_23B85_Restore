@interface MIOWriterAudioSampleBufferStreamInput
- (BOOL)appendAudioBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error;
- (MIOWriterAudioSampleBufferStreamInput)init;
- (MIOWriterAudioSampleBufferStreamInput)initWithStreamId:(id)id audioFormat:(id)format additionalSettings:(id)settings;
- (MIOWriterAudioSampleBufferStreamInput)initWithStreamId:(id)id audioFormatDescription:(opaqueCMFormatDescription *)description additionalSettings:(id)settings;
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

- (MIOWriterAudioSampleBufferStreamInput)initWithStreamId:(id)id audioFormat:(id)format additionalSettings:(id)settings
{
  idCopy = id;
  formatCopy = format;
  settingsCopy = settings;
  formatDescription = [formatCopy formatDescription];
  if (formatDescription)
  {
    v20.receiver = self;
    v20.super_class = MIOWriterAudioSampleBufferStreamInput;
    v12 = [(MIOWriterSampleBufferStreamInput *)&v20 initWithStreamId:idCopy format:formatDescription];
    if (v12)
    {
      v13 = +[MOVStreamIOUtility audioNoneEncoderConfig];
      v14 = [v13 mutableCopy];

      [v14 setObject:formatCopy forKey:@"AudioFormatObject"];
      if (settingsCopy)
      {
        [v14 setObject:settingsCopy forKey:@"AdditionalAudioSettings"];
      }

      v15 = [v14 copy];
      config = v12->_config;
      v12->_config = v15;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v18 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v18, OS_LOG_TYPE_ERROR, "Invalid audioFormat, no format description found.", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (MIOWriterAudioSampleBufferStreamInput)initWithStreamId:(id)id audioFormatDescription:(opaqueCMFormatDescription *)description additionalSettings:(id)settings
{
  settingsCopy = settings;
  v15.receiver = self;
  v15.super_class = MIOWriterAudioSampleBufferStreamInput;
  v9 = [(MIOWriterSampleBufferStreamInput *)&v15 initWithStreamId:id format:description];
  if (v9)
  {
    v10 = +[MOVStreamIOUtility audioNoneEncoderConfig];
    v11 = [v10 mutableCopy];

    if (settingsCopy)
    {
      [v11 setObject:settingsCopy forKey:@"AdditionalAudioSettings"];
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
  settings = [v2 settings];

  return settings;
}

- (BOOL)appendAudioBuffer:(opaqueCMSampleBuffer *)buffer error:(id *)error
{
  memset(&v11, 0, sizeof(v11));
  CMSampleBufferGetPresentationTimeStamp(&v11, buffer);
  v10 = v11;
  v7 = [MEMORY[0x277CE6648] attachmentsMIOTimedMetadataGroupForSampleBuffer:buffer pts:&v10 error:error];
  if (*error)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(MIOWriterSampleBufferStreamInput *)self appendSampleBuffer:buffer metadataGroup:v7 error:error];
  }

  return v8;
}

@end