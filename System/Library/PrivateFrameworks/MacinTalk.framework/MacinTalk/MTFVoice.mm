@interface MTFVoice
- (void)dealloc;
@end

@implementation MTFVoice

- (void)dealloc
{
  v3 = [(MTFVoice *)self description][4];
  if (*[(MTFVoice *)self wrapped])
  {
    if (v3 == 1734437985)
    {
      v5 = *[(MTFVoice *)self wrapped];
      if (!v5)
      {
        goto LABEL_9;
      }

      PROWReader::~PROWReader(v5);
      goto LABEL_8;
    }

    if (v3 == 1835364215)
    {
      v4 = *[(MTFVoice *)self wrapped];
      if (v4)
      {
        MEOWReader::~MEOWReader(v4);
LABEL_8:
        MEMORY[0x259C6DA90]();
      }
    }
  }

LABEL_9:
  if ([(MTFVoice *)self _pcmData])
  {
    _pcmData = [(MTFVoice *)self _pcmData];
    SLMMapCache::Unmap(_pcmData, v7);
  }

  if ([(MTFVoice *)self voiceData])
  {
    free([(MTFVoice *)self voiceData]);
  }

  v8.receiver = self;
  v8.super_class = MTFVoice;
  [(MTFVoice *)&v8 dealloc];
}

@end