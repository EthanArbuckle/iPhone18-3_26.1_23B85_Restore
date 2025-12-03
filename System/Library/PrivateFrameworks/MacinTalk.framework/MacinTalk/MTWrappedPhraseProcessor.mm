@interface MTWrappedPhraseProcessor
- (BOOL)processNextPhrase;
- (MTFVoice)voice;
- (MTWrappedPhraseProcessor)initWithVoice:(id)voice frontend:(id)frontend;
- (MacinTalkPhraseProcessorDelegate)delegate;
- (id)nextBuffer;
- (void)dealloc;
- (void)finishedSampleGeneration;
- (void)setPitchModulation:(id)modulation;
@end

@implementation MTWrappedPhraseProcessor

- (MTWrappedPhraseProcessor)initWithVoice:(id)voice frontend:(id)frontend
{
  voiceCopy = voice;
  frontendCopy = frontend;
  v12.receiver = self;
  v12.super_class = MTWrappedPhraseProcessor;
  v8 = [(MTWrappedPhraseProcessor *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_voice, voiceCopy);
    v9->_currentSampleCount = 0;
    pitchModulation = v9->_pitchModulation;
    v9->_pitchModulation = &unk_2868FD840;

    objc_storeStrong(&v9->_frontend, frontend);
    operator new();
  }

  return 0;
}

- (void)setPitchModulation:(id)modulation
{
  modulationCopy = modulation;
  defaultModulation = [(MTWrappedPhraseProcessor *)self defaultModulation];
  [defaultModulation floatValue];
  v7 = v6;
  [modulationCopy floatValue];
  v9 = v8;

  objc_storeStrong(&self->_pitchModulation, modulation);
  *([(MTWrappedPhraseProcessor *)self notifier]+ 16) = vcvts_n_s32_f32(v7 * v9, 0x10uLL);
}

- (BOOL)processNextPhrase
{
  frontend = [(MTWrappedPhraseProcessor *)self frontend];
  nextObject = [frontend nextObject];

  [nextObject setUnOwned:1];
  if (nextObject)
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
  delegate = [(MTWrappedPhraseProcessor *)self delegate];
  [delegate didFinishGeneratingSamples];
}

- (void)dealloc
{
  if ([(MTWrappedPhraseProcessor *)self processor])
  {
    processor = [(MTWrappedPhraseProcessor *)self processor];
    if (processor)
    {
      (*(*processor + 48))(processor);
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

  fPParams = [(MTWrappedPhraseProcessor *)self fPParams];
  if (fPParams)
  {
    MTBEPersistentParam::~MTBEPersistentParam(fPParams);
    MEMORY[0x259C6DA90]();
  }

  saveState = [(MTWrappedPhraseProcessor *)self saveState];
  if (saveState)
  {
    (*(saveState->var0 + 1))(saveState);
  }

  resetState = [(MTWrappedPhraseProcessor *)self resetState];
  if (resetState)
  {
    (*(resetState->var0 + 1))(resetState);
  }

  notifier = [(MTWrappedPhraseProcessor *)self notifier];
  if (notifier)
  {
    (*(notifier->var0 + 1))(notifier);
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