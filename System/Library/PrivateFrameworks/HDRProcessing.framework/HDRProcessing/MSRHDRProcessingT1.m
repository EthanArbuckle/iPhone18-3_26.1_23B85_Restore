@interface MSRHDRProcessingT1
- (void)getDegammaLutInput:(float *)a3;
- (void)setupHardwareConfigUnit;
@end

@implementation MSRHDRProcessingT1

- (void)setupHardwareConfigUnit
{
  v4.receiver = self;
  v4.super_class = MSRHDRProcessingT1;
  [(MSRHDRProcessing *)&v4 setupHardwareConfigUnit];
  msrCU = self->super._msrCU;
  msrCU[4611] = 0x140462617366;
  *msrCU = vadd_s32(*msrCU, 0x140400000001);
}

- (void)getDegammaLutInput:(float *)a3
{
  v3 = 0;
  v4 = xmmword_2508CD900;
  v5 = xmmword_2508CD910;
  v6 = a3 + 2;
  v7 = vdupq_n_s64(0x401uLL);
  v8 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v7, v5)), *v4.i8).u8[0])
    {
      *(v6 - 2) = vcvts_n_f32_u32(v3, 0xAuLL);
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v5)), *&v4).i8[2])
    {
      *(v6 - 1) = vcvts_n_f32_u32(v3 + 1, 0xAuLL);
    }

    if (vuzp1_s16(*&v4, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x401uLL), *&v4))).i32[1])
    {
      *v6 = vcvts_n_f32_u32(v3 + 2, 0xAuLL);
      v6[1] = vcvts_n_f32_u32(v3 + 3, 0xAuLL);
    }

    v3 += 4;
    v4 = vaddq_s64(v4, v8);
    v5 = vaddq_s64(v5, v8);
    v6 += 4;
  }

  while (v3 != 1028);
  v9 = 0;
  v10 = 1.0;
  do
  {
    a3[v9 + 1024] = v10;
    v10 = v10 + 0.03125;
    ++v9;
  }

  while (v9 != 257);
}

@end