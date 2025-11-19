@interface ExclaveAudioFormatBase
+ (id)createFrom:(id)a3 forUseCase:(unsigned int)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (ExclaveAudioFormatBase)initWithExclaveUseCaseFormat:(const ExADUseCaseFormat *)a3;
- (id)initFormat:(id)a3;
@end

@implementation ExclaveAudioFormatBase

+ (id)createFrom:(id)a3 forUseCase:(unsigned int)a4 error:(id *)a5
{
  v7 = a3;
  ExADUseCaseFormatForUseCaseFromEDT(v7, a4, a5, v10);
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

- (ExclaveAudioFormatBase)initWithExclaveUseCaseFormat:(const ExADUseCaseFormat *)a3
{
  v12.receiver = self;
  v12.super_class = ExclaveAudioFormatBase;
  v4 = [(ExclaveAudioFormatBase *)&v12 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var1];
    sampleRate = v4->_sampleRate;
    v4->_sampleRate = v5;

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var2];
    channels = v4->_channels;
    v4->_channels = v7;

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3->var3];
    framesPerIO = v4->_framesPerIO;
    v4->_framesPerIO = v9;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [v5 sampleRate];
  v7 = [(ExclaveAudioFormatBase *)self sampleRate];
  if (![v6 isEqualToNumber:v7])
  {
    goto LABEL_7;
  }

  v8 = [v5 channels];
  v9 = [(ExclaveAudioFormatBase *)self channels];
  if (![v8 isEqualToNumber:v9])
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = [v5 framesPerIO];
  v11 = [(ExclaveAudioFormatBase *)self framesPerIO];
  v12 = [v10 isEqualToNumber:v11];

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

- (id)initFormat:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ExclaveAudioFormatBase;
  v5 = [(ExclaveAudioFormatBase *)&v13 init];
  if (v5)
  {
    v6 = [v4 sampleRate];
    sampleRate = v5->_sampleRate;
    v5->_sampleRate = v6;

    v8 = [v4 channels];
    channels = v5->_channels;
    v5->_channels = v8;

    v10 = [v4 framesPerIO];
    framesPerIO = v5->_framesPerIO;
    v5->_framesPerIO = v10;
  }

  return v5;
}

@end