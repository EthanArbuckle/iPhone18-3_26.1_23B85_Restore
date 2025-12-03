@interface MPCAudioSpectrumObserver
+ (id)defaultObserver;
- (float)averagePowerOfFrequencyBandAtIndex:(int64_t)index frequencyBand:(MPCAudioFrequencyBand *)band;
- (int64_t)addAnalysisBand:(MPCAudioSpectrumAnalyzerBand)band;
- (int64_t)addFrequencyBand:(MPCAudioFrequencyBand)band;
- (void)_resizeBandStorage;
- (void)beginReport;
- (void)dealloc;
- (void)finishReport;
@end

@implementation MPCAudioSpectrumObserver

- (void)finishReport
{
  onUpdate = [(MPCAudioSpectrumObserver *)self onUpdate];

  if (onUpdate)
  {
    onUpdate2 = [(MPCAudioSpectrumObserver *)self onUpdate];
    onUpdate2[2](onUpdate2, self);
  }
}

- (void)beginReport
{
  if (self->_numberOfBands >= 1)
  {
    v2 = 0;
    p_var4 = &self->_bands->var4;
    do
    {
      *p_var4 = 0;
      *(p_var4 - 2) = 0;
      ++v2;
      p_var4 += 4;
    }

    while (v2 < self->_numberOfBands);
  }

  [(MPCAudioSpectrumObserver *)self setPowerLevel:0.0];
}

- (void)_resizeBandStorage
{
  bandsStorageSize = self->_bandsStorageSize;
  if (bandsStorageSize <= self->_numberOfBands)
  {
    v4 = fmax(bandsStorageSize * 1.5, 3.0);
    self->_bands = reallocf(self->_bands, 32 * v4);
    self->_bandsStorageSize = v4;
  }
}

- (float)averagePowerOfFrequencyBandAtIndex:(int64_t)index frequencyBand:(MPCAudioFrequencyBand *)band
{
  p_var0 = &self->_bands[index].var0;
  result = p_var0[2].var0;
  if (band)
  {
    *band = p_var0[1];
  }

  return result;
}

- (int64_t)addFrequencyBand:(MPCAudioFrequencyBand)band
{
  var0 = band.var0;
  var1 = band.var1;
  [(MPCAudioSpectrumObserver *)self _resizeBandStorage];
  v4 = &self->_bands[self->_numberOfBands];
  *v4 = vdupq_lane_s64(__SPAIR64__(LODWORD(var1), LODWORD(var0)), 0);
  v4[1].i64[0] = 0;
  v4[1].i64[1] = 0;
  result = self->_numberOfBands;
  self->_numberOfBands = result + 1;
  return result;
}

- (int64_t)addAnalysisBand:(MPCAudioSpectrumAnalyzerBand)band
{
  v3 = band.var0 > 600.0;
  band.var1 = 300.0;
  v4 = 5000.0;
  if (band.var0 <= 600.0)
  {
    v4 = 300.0;
  }

  v5 = band.var0 > 300.0;
  band.var0 = 20.0;
  if (v5)
  {
    band.var0 = v4;
    LODWORD(band.var1) = dword_1C6045068[v3];
  }

  return [(MPCAudioSpectrumObserver *)self addFrequencyBand:*&band, *&band.var1];
}

- (void)dealloc
{
  bands = self->_bands;
  if (bands)
  {
    free(bands);
  }

  v4.receiver = self;
  v4.super_class = MPCAudioSpectrumObserver;
  [(MPCAudioSpectrumObserver *)&v4 dealloc];
}

+ (id)defaultObserver
{
  v2 = objc_alloc_init(self);
  LODWORD(v3) = 20.0;
  LODWORD(v4) = 1133903872;
  [v2 addFrequencyBand:{v3, v4}];
  LODWORD(v5) = 1133903872;
  LODWORD(v6) = 1167867904;
  [v2 addFrequencyBand:{v5, v6}];
  LODWORD(v7) = 1186693120;
  LODWORD(v8) = 1167867904;
  [v2 addFrequencyBand:{v8, v7}];

  return v2;
}

@end