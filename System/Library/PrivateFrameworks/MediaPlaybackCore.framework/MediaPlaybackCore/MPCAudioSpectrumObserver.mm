@interface MPCAudioSpectrumObserver
+ (id)defaultObserver;
- (float)averagePowerOfFrequencyBandAtIndex:(int64_t)a3 frequencyBand:(MPCAudioFrequencyBand *)a4;
- (int64_t)addAnalysisBand:(MPCAudioSpectrumAnalyzerBand)a3;
- (int64_t)addFrequencyBand:(MPCAudioFrequencyBand)a3;
- (void)_resizeBandStorage;
- (void)beginReport;
- (void)dealloc;
- (void)finishReport;
@end

@implementation MPCAudioSpectrumObserver

- (void)finishReport
{
  v3 = [(MPCAudioSpectrumObserver *)self onUpdate];

  if (v3)
  {
    v4 = [(MPCAudioSpectrumObserver *)self onUpdate];
    v4[2](v4, self);
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

- (float)averagePowerOfFrequencyBandAtIndex:(int64_t)a3 frequencyBand:(MPCAudioFrequencyBand *)a4
{
  p_var0 = &self->_bands[a3].var0;
  result = p_var0[2].var0;
  if (a4)
  {
    *a4 = p_var0[1];
  }

  return result;
}

- (int64_t)addFrequencyBand:(MPCAudioFrequencyBand)a3
{
  var0 = a3.var0;
  var1 = a3.var1;
  [(MPCAudioSpectrumObserver *)self _resizeBandStorage];
  v4 = &self->_bands[self->_numberOfBands];
  *v4 = vdupq_lane_s64(__SPAIR64__(LODWORD(var1), LODWORD(var0)), 0);
  v4[1].i64[0] = 0;
  v4[1].i64[1] = 0;
  result = self->_numberOfBands;
  self->_numberOfBands = result + 1;
  return result;
}

- (int64_t)addAnalysisBand:(MPCAudioSpectrumAnalyzerBand)a3
{
  v3 = a3.var0 > 600.0;
  a3.var1 = 300.0;
  v4 = 5000.0;
  if (a3.var0 <= 600.0)
  {
    v4 = 300.0;
  }

  v5 = a3.var0 > 300.0;
  a3.var0 = 20.0;
  if (v5)
  {
    a3.var0 = v4;
    LODWORD(a3.var1) = dword_1C6045068[v3];
  }

  return [(MPCAudioSpectrumObserver *)self addFrequencyBand:*&a3, *&a3.var1];
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
  v2 = objc_alloc_init(a1);
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