@interface ExclaveAudioFormatBase
+ (id)createFrom:(id)from forUseCase:(unsigned int)case error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (ExclaveAudioFormatBase)initWithExclaveUseCaseFormat:(const ExADUseCaseFormat *)format;
- (id)initFormat:(id)format;
@end

@implementation ExclaveAudioFormatBase

+ (id)createFrom:(id)from forUseCase:(unsigned int)case error:(id *)error
{
  fromCopy = from;
  ExADUseCaseFormatForUseCaseFromEDT(fromCopy, case, error, v10);
  if (v10[32])
  {
    v8 = [[ExclaveAudioFormatBase alloc] initWithExclaveUseCaseFormat:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ExclaveAudioFormatBase)initWithExclaveUseCaseFormat:(const ExADUseCaseFormat *)format
{
  v12.receiver = self;
  v12.super_class = ExclaveAudioFormatBase;
  v4 = [(ExclaveAudioFormatBase *)&v12 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:format->var1];
    sampleRate = v4->_sampleRate;
    v4->_sampleRate = v5;

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:format->var2];
    channels = v4->_channels;
    v4->_channels = v7;

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:format->var3];
    framesPerIO = v4->_framesPerIO;
    v4->_framesPerIO = v9;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = equalCopy;
  sampleRate = [v5 sampleRate];
  sampleRate2 = [(ExclaveAudioFormatBase *)self sampleRate];
  if (![sampleRate isEqualToNumber:sampleRate2])
  {
    goto LABEL_7;
  }

  channels = [v5 channels];
  channels2 = [(ExclaveAudioFormatBase *)self channels];
  if (![channels isEqualToNumber:channels2])
  {

LABEL_7:
    goto LABEL_8;
  }

  framesPerIO = [v5 framesPerIO];
  framesPerIO2 = [(ExclaveAudioFormatBase *)self framesPerIO];
  v12 = [framesPerIO isEqualToNumber:framesPerIO2];

  if ((v12 & 1) == 0)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v13 = 1;
LABEL_9:

  return v13;
}

- (id)initFormat:(id)format
{
  formatCopy = format;
  v13.receiver = self;
  v13.super_class = ExclaveAudioFormatBase;
  v5 = [(ExclaveAudioFormatBase *)&v13 init];
  if (v5)
  {
    sampleRate = [formatCopy sampleRate];
    sampleRate = v5->_sampleRate;
    v5->_sampleRate = sampleRate;

    channels = [formatCopy channels];
    channels = v5->_channels;
    v5->_channels = channels;

    framesPerIO = [formatCopy framesPerIO];
    framesPerIO = v5->_framesPerIO;
    v5->_framesPerIO = framesPerIO;
  }

  return v5;
}

@end