@interface JFXVideoEncoderInterface
- (JFXVideoEncoderInterface)init;
- (JFXVideoEncoderInterface)initWithExpectedFrameRate:(double)rate;
- (void)dealloc;
- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)buffer;
@end

@implementation JFXVideoEncoderInterface

- (JFXVideoEncoderInterface)init
{
  v3.receiver = self;
  v3.super_class = JFXVideoEncoderInterface;
  if ([(JFXVideoEncoderInterface *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (JFXVideoEncoderInterface)initWithExpectedFrameRate:(double)rate
{
  result = [(JFXVideoEncoderInterface *)self init];
  if (result)
  {
    result->m_expectedFrameRate = rate;
  }

  return result;
}

- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  bufferCopy = buffer;
  CFRetain(buffer);
  std::promise<opaqueCMSampleBuffer *>::set_value(&self->m_sampleBufferPromise, &bufferCopy);
}

- (void)dealloc
{
  m_encoder = self->m_encoder;
  if (m_encoder)
  {
    HEVCLosslessEncoder::~HEVCLosslessEncoder(m_encoder);
    MEMORY[0x245D21BD0]();
  }

  v4.receiver = self;
  v4.super_class = JFXVideoEncoderInterface;
  [(JFXVideoEncoderInterface *)&v4 dealloc];
}

@end