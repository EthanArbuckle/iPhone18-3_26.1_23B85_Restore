@interface VCPClassificationInfo
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- (VCPClassificationInfo)initWithTimeRange:(id *)range confidence:(float)confidence;
- (void)setDuration:(id *)duration;
- (void)update:(id *)update confidence:(float)confidence;
@end

@implementation VCPClassificationInfo

- (VCPClassificationInfo)initWithTimeRange:(id *)range confidence:(float)confidence
{
  v11.receiver = self;
  v11.super_class = VCPClassificationInfo;
  v6 = [(VCPClassificationInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = *&range->var1.var0;
    *(v6 + 28) = range->var1.var3;
    *(v6 + 12) = v8;
    *(v6 + 2) = confidence;
    v9 = v6;
  }

  return v7;
}

- (void)update:(id *)update confidence:(float)confidence
{
  time = update->var1;
  Seconds = CMTimeGetSeconds(&time);
  confidence = self->_confidence;
  *&time.value = *(&self->_confidence + 1);
  time.epoch = *&self->_duration.flags;
  v9 = (Seconds * confidence) + confidence * CMTimeGetSeconds(&time);
  *&time.value = *(&self->_confidence + 1);
  time.epoch = *&self->_duration.flags;
  v10 = v9 / (CMTimeGetSeconds(&time) + Seconds);
  self->_confidence = v10;
  *&lhs.value = *(&self->_confidence + 1);
  lhs.epoch = *&self->_duration.flags;
  var1 = update->var1;
  CMTimeAdd(&time, &lhs, &var1);
  *(&self->_confidence + 1) = *&time.value;
  *&self->_duration.flags = time.epoch;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  *&retstr->var0 = *&self->var2;
  retstr->var3 = *(&self[1].var0 + 4);
  return self;
}

- (void)setDuration:(id *)duration
{
  v3 = *&duration->var0;
  *&self->_duration.flags = duration->var3;
  *(&self->_confidence + 1) = v3;
}

@end