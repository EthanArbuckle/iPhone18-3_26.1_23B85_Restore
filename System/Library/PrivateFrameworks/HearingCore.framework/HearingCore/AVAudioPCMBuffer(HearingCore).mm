@interface AVAudioPCMBuffer(HearingCore)
- (id)magnitudesWithLevelMultiplier:()HearingCore count:;
@end

@implementation AVAudioPCMBuffer(HearingCore)

- (id)magnitudesWithLevelMultiplier:()HearingCore count:
{
  v6 = llround(log2([self frameLength]));
  v7 = (1 << v6) + ((1 << v6) >> 31);
  fftsetup = vDSP_create_fftsetup(v6, 0);
  __Z.realp = malloc_type_calloc(v7 >> 1, 4uLL, 0x100004052888210uLL);
  __Z.imagp = malloc_type_calloc(v7 >> 1, 4uLL, 0x100004052888210uLL);
  v9 = 1 << v6;
  v10 = malloc_type_calloc(v9, 4uLL, 0x100004052888210uLL);
  v11 = malloc_type_calloc(v9, 4uLL, 0x100004052888210uLL);
  vDSP_hann_window(v11, v9, 2);
  MEMORY[0x1DA731FB0](*[self floatChannelData], 1, v11, 1, v10, 1, v9);
  vDSP_ctoz(v10, 2, &__Z, 1, v7 >> 1);
  vDSP_fft_zrip(fftsetup, &__Z, 1, v6, 1);
  v12 = malloc_type_calloc(v7 >> 1, 4uLL, 0x100004052888210uLL);
  vDSP_zvmags(&__Z, 1, v12, 1, v7 >> 1);
  MEMORY[0x1DA731FC0](v12, 1, &kAdjust0DB, v12, 1, v7 >> 1);
  __B = 1.0;
  vDSP_vdbcon(v12, 1, &__B, v12, 1, v7 >> 1, 0);
  array = [MEMORY[0x1E695DF70] array];
  if (v6 != 31)
  {
    v14 = 0;
    v15 = 3 * (v7 >> 1) + (3 * (v7 >> 1) < 0 ? 3 : 0);
    v16 = ((3 * (v7 >> 1) / 4) & ~(v15 >> 31)) + 1;
    v17 = 0.0;
    v18 = (v15 >> 2) / (a4 + 1);
    v19 = v12;
    do
    {
      ++v14;
      v20 = __exp10(*v19 * 0.05) / 50.0;
      if (v17 < v20)
      {
        v17 = v20;
      }

      if (v18 == v14)
      {
        v21 = [MEMORY[0x1E696AD98] numberWithDouble:v17 * a2];
        [array addObject:v21];

        v14 = 0;
        v17 = 0.0;
      }

      ++v19;
      --v16;
    }

    while (v16);
  }

  vDSP_destroy_fftsetup(fftsetup);
  free(__Z.realp);
  free(__Z.imagp);
  free(v10);
  free(v11);
  free(v12);

  return array;
}

@end