@interface EARCaesuraSilencePosteriorGenerator
- (EARCaesuraSilencePosteriorGeneratorDelegate)delegate;
@end

@implementation EARCaesuraSilencePosteriorGenerator

void __56__EARCaesuraSilencePosteriorGenerator__startComputeTask__block_invoke(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = mach_absolute_time();
    __p = 0;
    v29 = 0;
    v30 = 0;
    v4 = quasar::SilencePosteriorGenerator::estimateSilenceDuration(*(a1 + 40), &__p);
    v5 = mach_absolute_time();
    v6 = [EARClientSilenceFeatures alloc];
    SilenceFramesCountMs = quasar::SilencePosteriorGenerator::getSilenceFramesCountMs(*(a1 + 40));
    SilenceProbability = quasar::SilencePosteriorGenerator::getSilenceProbability(*(a1 + 40));
    SilenceDurationMs = quasar::SilencePosteriorGenerator::getSilenceDurationMs(*(a1 + 40));
    SilencePosterior = quasar::SilencePosteriorGenerator::getSilencePosterior(*(a1 + 40));
    v2 += v5 - v3;
    v11 = [(EARClientSilenceFeatures *)v6 initWithSilenceFramesCountMs:v2 silenceProbability:SilenceFramesCountMs silenceDurationMs:SilenceProbability silencePosterior:SilenceDurationMs processedAudioMs:SilencePosterior inferenceTime:quasar::SilencePosteriorGenerator::getProcessedAudioMs(*(a1 + 40))];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained delegate];
    [v13 clientSilenceFeaturesAvailable:v11];

    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = [v14 delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained((a1 + 32));
      v18 = [v17 delegate];
      v19 = __p;
      v20 = v29;
      *&v21 = quasar::SilencePosteriorGenerator::getProcessedAudioMs(*(a1 + 40));
      [v18 silenceDurationEstimateAvailable:v19 numEstimates:(v20 - v19) >> 2 clientProcessedAudioMs:v21];
    }

    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }
  }

  while ((v4 & 1) != 0);
  v22 = objc_loadWeakRetained((a1 + 32));
  v23 = [v22 delegate];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = objc_loadWeakRetained((a1 + 32));
    v26 = [v25 delegate];
    v27 = objc_loadWeakRetained((a1 + 32));
    [v26 silencePosteriorGeneratorProcessorIsFinished:v27];
  }
}

- (EARCaesuraSilencePosteriorGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithConfigFile:(uint64_t *)a1 samplingRate:(NSObject *)a2 queue:.cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1B501D000, a2, OS_LOG_TYPE_ERROR, "EARSPG: SilencePosteriorGenerator Config file does not exist at %@", &v3, 0xCu);
}

@end