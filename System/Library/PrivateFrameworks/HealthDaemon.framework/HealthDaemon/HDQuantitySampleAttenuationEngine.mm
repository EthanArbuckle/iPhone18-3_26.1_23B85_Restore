@interface HDQuantitySampleAttenuationEngine
- ($A3DB90B81A8072650F44011264F9C29D)attenuateSample:(SEL)sample;
- (BOOL)delegateLoadingWasSuccessful:(id *)successful;
- (HDQuantitySampleAttenuationEngine)initWithAttenuationEngineDelegate:(id)delegate;
- (HDQuantitySampleAttenuationEngineDelegate)attenuationEngineDelegate;
- (void)_loadSamplesFromDelegateAtLocation:(char *)location;
@end

@implementation HDQuantitySampleAttenuationEngine

- (HDQuantitySampleAttenuationEngine)initWithAttenuationEngineDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = HDQuantitySampleAttenuationEngine;
  v5 = [(HDQuantitySampleAttenuationEngine *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attenuationEngineDelegate, delegateCopy);
    *&v6->_sampleCountFromDelegate = xmmword_22916DD30;
    v6->_noMoreDelegateSamples = 0;
    delegateLoadFirstError = v6->_delegateLoadFirstError;
    v6->_delegateLoadErrorCount = 0;
    v6->_delegateLoadFirstError = 0;
  }

  return v6;
}

- ($A3DB90B81A8072650F44011264F9C29D)attenuateSample:(SEL)sample
{
  selfCopy = self;
  if (self)
  {
    if (self[1024].var3)
    {
LABEL_22:
      v19 = *&a4->var2;
      *&retstr->var0 = *&a4->var0;
      *&retstr->var2 = v19;
      retstr->var4 = a4->var4;
      return self;
    }

    var0 = a4->var0;
    var1 = self[1024].var1;
    if ((*&var1 & 0x8000000000000000) != 0)
    {
      [(HDQuantitySampleAttenuationEngine *)self _loadSamplesFromDelegateAtLocation:?];
      var1 = selfCopy[1024].var1;
      if (var1 == 0.0)
      {
LABEL_21:
        selfCopy[1024].var3 = 1;
        goto LABEL_22;
      }
    }

    var2 = selfCopy[1024].var2;
    for (i = selfCopy[*&var2].var2; var0 >= i; i = selfCopy[*&var2].var2)
    {
      ++*&var2;
      selfCopy[1024].var2 = var2;
      if (*&var2 >= *&var1)
      {
        [(HDQuantitySampleAttenuationEngine *)selfCopy _loadSamplesFromDelegateAtLocation:?];
        var1 = selfCopy[1024].var1;
        if (var1 == 0.0)
        {
          goto LABEL_21;
        }

        var2 = selfCopy[1024].var2;
      }
    }

    if ((*&var2 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    var2 = 0.0;
  }

  p_var0 = &selfCopy[*&var2].var0;
  v12 = p_var0[1];
  v13 = a4->var1;
  if (v13 <= v12)
  {
    goto LABEL_22;
  }

  v15 = p_var0[2];
  v14 = p_var0[3];
  v16 = a4->var0;
  if (a4->var0 < v12 || v13 > v15)
  {
    *&retstr->var3 = 0;
    retstr->var0 = v16;
    if (v12 <= v16)
    {
      if (v13 >= v15)
      {
        v13 = v15;
      }

      v18 = a4->var2 - v14;
    }

    else
    {
      if (v12 < v13)
      {
        v13 = v12;
      }

      v18 = a4->var2;
    }

    retstr->var1 = v13;
    retstr->var2 = v18;
    retstr->var3 = a4->var3;
    retstr->var4 = 0;
  }

  else
  {
    retstr->var0 = v16;
    retstr->var1 = v13;
    retstr->var2 = a4->var2 - v14;
    *&retstr->var3 = 0;
    retstr->var4 = 0;
  }

  return self;
}

- (void)_loadSamplesFromDelegateAtLocation:(char *)location
{
  v4 = (location + 40960);
  attenuationEngineDelegate = [location attenuationEngineDelegate];
  v9 = 0;
  v6 = [attenuationEngineDelegate loadAttenuationSamples:location + 8 anchorTime:&v9 errorOut:a2];
  v7 = v9;
  v8 = v9;

  if (v6 < 0)
  {
    if (!v4[5])
    {
      objc_storeStrong(v4 + 5, v7);
    }

    v4[4] = v4[4] + 1;
  }

  else
  {
    v4[1] = v6;
  }

  v4[2] = 0;
}

- (BOOL)delegateLoadingWasSuccessful:(id *)successful
{
  delegateLoadErrorCount = self->_delegateLoadErrorCount;
  if (delegateLoadErrorCount >= 1)
  {
    v5 = self->_delegateLoadFirstError;
    v6 = v5;
    if (v5)
    {
      if (successful)
      {
        v7 = v5;
        *successful = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return delegateLoadErrorCount < 1;
}

- (HDQuantitySampleAttenuationEngineDelegate)attenuationEngineDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_attenuationEngineDelegate);

  return WeakRetained;
}

@end