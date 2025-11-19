@interface MTWrappedPhraseProcessor
- (BOOL)processNextPhrase;
- (MTFVoice)voice;
- (MTWrappedPhraseProcessor)initWithVoice:(id)a3 frontend:(id)a4;
- (MacinTalkPhraseProcessorDelegate)delegate;
- (id)nextBuffer;
- (void)dealloc;
- (void)finishedSampleGeneration;
- (void)setPitchModulation:(id)a3;
@end

@implementation MTWrappedPhraseProcessor

- (MTWrappedPhraseProcessor)initWithVoice:(id)a3 frontend:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MTWrappedPhraseProcessor;
  v8 = [(MTWrappedPhraseProcessor *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_voice, v6);
    v9->_currentSampleCount = 0;
    pitchModulation = v9->_pitchModulation;
    v9->_pitchModulation = &unk_2868FD840;

    objc_storeStrong(&v9->_frontend, a4);
    operator new();
  }

  return 0;
}

- (void)setPitchModulation:(id)a3
{
  v10 = a3;
  v5 = [(MTWrappedPhraseProcessor *)self defaultModulation];
  [v5 floatValue];
  v7 = v6;
  [v10 floatValue];
  v9 = v8;

  objc_storeStrong(&self->_pitchModulation, a3);
  *([(MTWrappedPhraseProcessor *)self notifier]+ 16) = vcvts_n_s32_f32(v7 * v9, 0x10uLL);
}

- (BOOL)processNextPhrase
{
  v2 = [(MTWrappedPhraseProcessor *)self frontend];
  v3 = [v2 nextObject];

  [v3 setUnOwned:1];
  if (v3)
  {
    operator new();
  }

  return 0;
}

- (id)nextBuffer
{
  if ([(MTWrappedPhraseProcessor *)self processor]|| [(MTWrappedPhraseProcessor *)self processNextPhrase])
  {
    if (*([(MTWrappedPhraseProcessor *)self processor]+ 2881) == 1)
    {
      MTFEFrameFiller::SyncWithUnitSearch(([(MTWrappedPhraseProcessor *)self processor]+ 2728));
    }

    operator new();
  }

  return 0;
}

uint64_t __38__MTWrappedPhraseProcessor_nextBuffer__block_invoke(uint64_t a1)
{
  MTMBSegment::Free(*(a1 + 32));
  result = *(a1 + 32);
  if (result)
  {

    JUMPOUT(0x259C6DA90);
  }

  return result;
}

- (void)finishedSampleGeneration
{
  v2 = [(MTWrappedPhraseProcessor *)self delegate];
  [v2 didFinishGeneratingSamples];
}

- (void)dealloc
{
  if ([(MTWrappedPhraseProcessor *)self processor])
  {
    v3 = [(MTWrappedPhraseProcessor *)self processor];
    if (v3)
    {
      (*(*v3 + 48))(v3);
    }
  }

  if ([(MTWrappedPhraseProcessor *)self fPParams][88])
  {
    v4 = [(MTWrappedPhraseProcessor *)self fPParams][88];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if ([(MTWrappedPhraseProcessor *)self fPParams][56])
  {
    v5 = [(MTWrappedPhraseProcessor *)self fPParams][56];
    if (v5)
    {
      (*(*v5 + 56))(v5);
    }
  }

  if ([(MTWrappedPhraseProcessor *)self fPParams][40])
  {
    CFRelease([(MTWrappedPhraseProcessor *)self fPParams][40]);
  }

  v6 = [(MTWrappedPhraseProcessor *)self fPParams];
  if (v6)
  {
    MTBEPersistentParam::~MTBEPersistentParam(v6);
    MEMORY[0x259C6DA90]();
  }

  v7 = [(MTWrappedPhraseProcessor *)self saveState];
  if (v7)
  {
    (*(v7->var0 + 1))(v7);
  }

  v8 = [(MTWrappedPhraseProcessor *)self resetState];
  if (v8)
  {
    (*(v8->var0 + 1))(v8);
  }

  v9 = [(MTWrappedPhraseProcessor *)self notifier];
  if (v9)
  {
    (*(v9->var0 + 1))(v9);
  }

  v10.receiver = self;
  v10.super_class = MTWrappedPhraseProcessor;
  [(MTWrappedPhraseProcessor *)&v10 dealloc];
}

- (MacinTalkPhraseProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MTFVoice)voice
{
  WeakRetained = objc_loadWeakRetained(&self->_voice);

  return WeakRetained;
}

@end