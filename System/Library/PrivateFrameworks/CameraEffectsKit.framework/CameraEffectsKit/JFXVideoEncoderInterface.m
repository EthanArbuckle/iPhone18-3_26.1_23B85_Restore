@interface JFXVideoEncoderInterface
- (JFXVideoEncoderInterface)init;
- (JFXVideoEncoderInterface)initWithExpectedFrameRate:(double)a3;
- (void)dealloc;
- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)a3;
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

- (JFXVideoEncoderInterface)initWithExpectedFrameRate:(double)a3
{
  result = [(JFXVideoEncoderInterface *)self init];
  if (result)
  {
    result->m_expectedFrameRate = a3;
  }

  return result;
}

- (void)writeSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v4 = a3;
  CFRetain(a3);
  std::promise<opaqueCMSampleBuffer *>::set_value(&self->m_sampleBufferPromise, &v4);
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