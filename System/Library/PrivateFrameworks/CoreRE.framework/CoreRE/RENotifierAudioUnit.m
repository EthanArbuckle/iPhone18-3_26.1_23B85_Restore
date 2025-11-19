@interface RENotifierAudioUnit
+ (void)registerToAudioUnit;
- (BOOL)allocateRenderResourcesAndReturnError:(id *)a3;
- (RENotifierAudioUnit)initWithComponentDescription:(AudioComponentDescription *)a3 options:(unsigned int)a4 error:(id *)a5;
- (id)internalRenderBlock;
- (void)deallocateRenderResources;
@end

@implementation RENotifierAudioUnit

+ (void)registerToAudioUnit
{
  if (+[RENotifierAudioUnit registerToAudioUnit]::onceToken != -1)
  {
    dispatch_once(&+[RENotifierAudioUnit registerToAudioUnit]::onceToken, &__block_literal_global_4);
  }
}

void __42__RENotifierAudioUnit_registerToAudioUnit__block_invoke()
{
  v0 = MEMORY[0x1E698D828];
  v1 = objc_opt_self();
  v2 = *"nguatonrlppa";
  v3 = 0;
  [v0 registerSubclass:v1 asComponentDescription:&v2 name:@"RE Notifier Audio Unit" version:1];
}

- (RENotifierAudioUnit)initWithComponentDescription:(AudioComponentDescription *)a3 options:(unsigned int)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v21 = *a3;
  v20.receiver = self;
  v20.super_class = RENotifierAudioUnit;
  v5 = [(AUAudioUnit *)&v20 initWithComponentDescription:&v21 options:*&a4 error:a5];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:1 channels:48000.0];
    v7 = [objc_alloc(MEMORY[0x1E698D830]) initWithFormat:v6 error:0];
    inputBus = v5->_inputBus;
    v5->_inputBus = v7;

    v9 = [objc_alloc(MEMORY[0x1E698D830]) initWithFormat:v6 error:0];
    outputBus = v5->_outputBus;
    v5->_outputBus = v9;

    v11 = objc_alloc(MEMORY[0x1E698D838]);
    v23[0] = v5->_inputBus;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v13 = [v11 initWithAudioUnit:v5 busType:1 busses:v12];
    inputBusArray = v5->_inputBusArray;
    v5->_inputBusArray = v13;

    v15 = objc_alloc(MEMORY[0x1E698D838]);
    v22 = v5->_outputBus;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v17 = [v15 initWithAudioUnit:v5 busType:2 busses:v16];
    outputBusArray = v5->_outputBusArray;
    v5->_outputBusArray = v17;

    atomic_store(0, &v5->_hasNotified);
  }

  return v5;
}

- (BOOL)allocateRenderResourcesAndReturnError:(id *)a3
{
  atomic_store(0, &self->_hasNotified);
  v5 = [(RENotifierAudioUnit *)self didAllocate];

  if (v5)
  {
    v6 = [(RENotifierAudioUnit *)self didAllocate];
    v6[2]();
  }

  [(AUAudioUnit *)self setRenderResourcesAllocated:1];
  v8.receiver = self;
  v8.super_class = RENotifierAudioUnit;
  return [(AUAudioUnit *)&v8 allocateRenderResourcesAndReturnError:a3];
}

- (void)deallocateRenderResources
{
  v3 = [(RENotifierAudioUnit *)self didDeallocate];

  if (v3)
  {
    v4 = [(RENotifierAudioUnit *)self didDeallocate];
    v4[2]();
  }

  [(AUAudioUnit *)self setRenderResourcesAllocated:0];
}

- (id)internalRenderBlock
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__RENotifierAudioUnit_internalRenderBlock__block_invoke;
  aBlock[3] = &unk_1E871B600;
  objc_copyWeak(&v6, &location);
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

uint64_t __42__RENotifierAudioUnit_internalRenderBlock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _DWORD *a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0;
    atomic_compare_exchange_strong(WeakRetained + 608, &v11, 1u);
    if (!v11)
    {
      v12 = [*(a1 + 32) firstRender];

      if (v12)
      {
        v13 = [*(a1 + 32) firstRender];
        v13[2]();
      }
    }

    if (*a6)
    {
      v14 = 0;
      v15 = 4 * a4;
      v16 = 4;
      do
      {
        bzero(*&a6[v16], v15);
        ++v14;
        v16 += 4;
      }

      while (v14 < *a6);
    }

    v17 = 0;
  }

  else
  {
    v17 = 4294956433;
  }

  return v17;
}

@end