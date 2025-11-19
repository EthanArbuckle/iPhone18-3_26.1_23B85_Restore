@interface FlexTestingContext
- (FlexTestingContext)init;
- (void)setMaxSilenceDurationTime:(id *)a3;
- (void)setMaxSilencePercentageTime:(id *)a3;
- (void)setMaxSilenceUnderSetDurationTime:(id *)a3;
- (void)setMinOutroDurationTime:(id *)a3;
@end

@implementation FlexTestingContext

- (FlexTestingContext)init
{
  v11.receiver = self;
  v11.super_class = FlexTestingContext;
  v2 = [(FlexTestingContext *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_timedOut = 0;
    v2->_usingPreventedOutro = 0;
    v2->_maxPassesToFit = 0;
    v4 = objc_opt_new();
    removedConflicts = v3->_removedConflicts;
    v3->_removedConflicts = v4;

    v6 = MEMORY[0x277CC08F0];
    v7 = *MEMORY[0x277CC08F0];
    *&v3->_maxSilenceDurationTime.value = *MEMORY[0x277CC08F0];
    v8 = *(v6 + 16);
    v3->_maxSilenceDurationTime.epoch = v8;
    *&v9 = -1;
    *(&v9 + 1) = -1;
    *&v3->_maxSilenceDuration = v9;
    *&v3->_maxSilenceUnderSetDurationTime.value = v7;
    v3->_maxSilenceUnderSetDurationTime.epoch = v8;
    *&v3->_maxSilencePercentageTime.value = v7;
    v3->_maxSilencePercentageTime.epoch = v8;
    v3->_maxSilencePercentage = 0.0;
    v3->_minOutroDuration = -1;
    *&v3->_minOutroDurationTime.value = v7;
    v3->_minOutroDurationTime.epoch = v8;
  }

  return v3;
}

- (void)setMaxSilenceDurationTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_maxSilenceDurationTime.epoch = a3->var3;
  *&self->_maxSilenceDurationTime.value = v3;
}

- (void)setMaxSilenceUnderSetDurationTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_maxSilenceUnderSetDurationTime.epoch = a3->var3;
  *&self->_maxSilenceUnderSetDurationTime.value = v3;
}

- (void)setMaxSilencePercentageTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_maxSilencePercentageTime.epoch = a3->var3;
  *&self->_maxSilencePercentageTime.value = v3;
}

- (void)setMinOutroDurationTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_minOutroDurationTime.epoch = a3->var3;
  *&self->_minOutroDurationTime.value = v3;
}

@end