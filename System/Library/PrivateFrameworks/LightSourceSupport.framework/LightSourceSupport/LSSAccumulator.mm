@interface LSSAccumulator
- (__n64)addSample:(uint64_t)sample;
@end

@implementation LSSAccumulator

- (__n64)addSample:(uint64_t)sample
{
  if (sample)
  {
    v2 = *(sample + 368);
    *(sample + 8 + 4 * (v2 % 0x5A)) = a2;
    result.n64_u32[1] = 0;
    result.n64_f32[0] = (((((((((((((((((((((((((((((((((((((((((*(sample + 8) + 0.0) + *(sample + 12)) + *(sample + 16)) + *(sample + 20)) + *(sample + 24)) + *(sample + 28)) + *(sample + 32)) + *(sample + 36)) + *(sample + 40)) + *(sample + 44)) + *(sample + 48)) + *(sample + 52)) + *(sample + 56)) + *(sample + 60)) + *(sample + 64)) + *(sample + 68)) + *(sample + 72)) + *(sample + 76)) + *(sample + 80)) + *(sample + 84)) + *(sample + 88)) + *(sample + 92)) + *(sample + 96)) + *(sample + 100)) + *(sample + 104)) + *(sample + 108)) + *(sample + 112)) + *(sample + 116)) + *(sample + 120)) + *(sample + 124)) + *(sample + 128)) + *(sample + 132)) + *(sample + 136)) + *(sample + 140)) + *(sample + 144)) + *(sample + 148)) + *(sample + 152)) + *(sample + 156)) + *(sample + 160)) + *(sample + 164)) + *(sample + 168)) + *(sample + 172);
    v3 = *(sample + 252);
    result.n64_f32[0] = ((((((((((((((((((result.n64_f32[0] + *(sample + 176)) + *(sample + 180)) + *(sample + 184)) + *(sample + 188)) + *(sample + 192)) + *(sample + 196)) + *(sample + 200)) + *(sample + 204)) + *(sample + 208)) + *(sample + 212)) + *(sample + 216)) + *(sample + 220)) + *(sample + 224)) + *(sample + 228)) + *(sample + 232)) + *(sample + 236)) + *(sample + 240)) + *(sample + 244)) + *(sample + 248);
    *(sample + 368) = v2 + 1;
    result.n64_f32[0] = ((((((((((((((((((((((((((((result.n64_f32[0] + v3) + *(sample + 256)) + *(sample + 260)) + *(sample + 264)) + *(sample + 268)) + *(sample + 272)) + *(sample + 276)) + *(sample + 280)) + *(sample + 284)) + *(sample + 288)) + *(sample + 292)) + *(sample + 296)) + *(sample + 300)) + *(sample + 304)) + *(sample + 308)) + *(sample + 312)) + *(sample + 316)) + *(sample + 320)) + *(sample + 324)) + *(sample + 328)) + *(sample + 332)) + *(sample + 336)) + *(sample + 340)) + *(sample + 344)) + *(sample + 348)) + *(sample + 352)) + *(sample + 356)) + *(sample + 360)) + *(sample + 364);
  }

  else
  {
    return 0;
  }

  return result;
}

@end