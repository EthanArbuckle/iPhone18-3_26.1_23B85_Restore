@interface ETQuadCurvePointFIFO
- (ETQuadCurvePointFIFO)initWithFIFO:(id)a3;
- (char)setControlPoints:(char *)a3;
- (char)setPoints:(char *)a3;
- (char)setPrevPoints:(char *)a3;
- (id).cxx_construct;
- (uint64_t)controlPoints;
- (uint64_t)points;
- (uint64_t)prevPoints;
- (void)addPoints:(ETQuadCurvePointFIFO *)self count:(SEL)a2;
- (void)clear;
- (void)flush;
@end

@implementation ETQuadCurvePointFIFO

- (ETQuadCurvePointFIFO)initWithFIFO:(id)a3
{
  v4.receiver = self;
  v4.super_class = ETQuadCurvePointFIFO;
  result = [(ETPointFIFO *)&v4 initWithFIFO:a3];
  if (result)
  {
    result->_unitSize = 1.0;
    result->_emitInterpolatedPoints = 1;
  }

  return result;
}

- (void)addPoints:(ETQuadCurvePointFIFO *)self count:(SEL)a2
{
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v7 = 0;
    anon_28 = self->_anon_28;
    v9 = 0x27EECB000uLL;
    v10 = 0x27EECB000uLL;
    v11 = 0x27EECB000;
    v37 = v3;
    do
    {
      v40 = 0;
      v12 = (v5 + 8 * v7);
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(anon_28, v12);
      v14 = *anon_28;
      v13 = *(anon_28 + 1);
      v15 = &v13[-*anon_28] >> 3;
      if (v15 == 1)
      {
        v34 = *(v9 + 3708);
        *(&self->super._nextFIFO + v34) = *(&self->super.super.isa + v34);
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(self + v34, (v5 + 8 * v7));
        v35 = *v12;
        *(&self->super.super.isa + *(v10 + 3712)) = *v12;
        v40 = v35;
      }

      else if (v15 == 3)
      {
        v16 = v5;
        v17 = *(v14 + 8);
        v18 = *(v14 + 16);
        v39 = v17;
        v19 = v10;
        v20 = *(v10 + 3712);
        v21 = *(&self->super.super.isa + v20);
        v22 = v13 - (v14 + 8);
        if (v13 != v14 + 8)
        {
          memmove(v14, v14 + 8, v13 - (v14 + 8));
        }

        v23 = vmla_f32(v17, 0x3F0000003F000000, vsub_f32(v18, v17));
        *(anon_28 + 1) = &v14[v22];
        v24 = v9;
        v25 = *(v9 + 3708);
        *(&self->super._nextFIFO + v25) = *(&self->super.super.isa + v25);
        if (self->_emitInterpolatedPoints)
        {
          v26 = vsub_f32(v21, v39);
          v27 = vmul_f32(v26, v26);
          v28 = vsub_f32(v39, v23);
          v29 = vmul_f32(v28, v28);
          v30 = vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(v27, v29), vzip2_s32(v27, v29)))) / self->_unitSize;
          if (v30 > 0.0)
          {
            v31 = 0.0;
            v32 = 1;
            do
            {
              v33 = v31 / v30;
              v38 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v39, v33 * ((1.0 - v33) + (1.0 - v33))), v21, (1.0 - v33) * (1.0 - v33)), v23, v33 * v33);
              _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(self + v25, &v38);
              v31 = v32++;
            }

            while (v30 > v31);
          }
        }

        else
        {
          v38 = vmla_f32(vadd_f32(v21, vmul_f32(v39, 0)), 0, v23);
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(self + v25, &v38);
          v38 = vadd_f32(v23, vmla_f32(vmul_f32(v39, 0), 0, v21));
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(self + v25, &v38);
        }

        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&self[1], &v39);
        v40 = v39;
        *(&self->super.super.isa + v20) = v23;
        v9 = v24;
        v10 = v19;
        v5 = v16;
        v4 = v37;
        v11 = 0x27EECB000uLL;
      }

      v36 = *(&self->super.super.isa + *(v11 + 3720));
      if (v36)
      {
        (*(v36 + 16))();
      }

      [(ETPointFIFO *)self emitPoints:v37 count:?];
      ++v7;
    }

    while (v7 != v4);
  }
}

- (void)flush
{
  v19 = 0;
  anon_28 = self->_anon_28;
  v4 = *&self->_anon_28[8];
  if (v4 != *self->_anon_28)
  {
    v5 = *self->_lastPoint;
    v6 = *(v4 - 8);
    v7 = vmla_f32(v5, 0x3F0000003F000000, vsub_f32(v6, v5));
    v18 = v7;
    *&self->_anon_40[8] = *self->_anon_40;
    if (self->_emitInterpolatedPoints)
    {
      v8 = vsub_f32(v5, v7);
      v9 = vsub_f32(v7, v6);
      v10 = (sqrtf(vaddv_f32(vmul_f32(v8, v8))) + sqrtf(vaddv_f32(vmul_f32(v9, v9)))) / self->_unitSize;
      if (v10 > 0.0)
      {
        v11 = 0.0;
        v12 = 1;
        do
        {
          v13 = v11 / v10;
          v17 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v7, v13 * ((1.0 - v13) + (1.0 - v13))), v5, (1.0 - v13) * (1.0 - v13)), v6, v13 * v13);
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(self->_anon_40, &v17);
          v11 = v12++;
        }

        while (v10 > v11);
      }
    }

    else
    {
      v14 = vmul_f32(v7, 0);
      v17 = vmla_f32(vadd_f32(v5, v14), 0, v6);
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(self->_anon_40, &v17);
      v17 = vadd_f32(v6, vmla_f32(v14, 0, v5));
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(self->_anon_40, &v17);
    }

    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(&self[1], &v18);
    v19 = v18;
  }

  emissionHandler = self->_emissionHandler;
  if (emissionHandler)
  {
    emissionHandler[2]();
  }

  [ETPointFIFO emitPoints:"emitPoints:count:" count:?];
  *(anon_28 + 1) = *anon_28;
  v16.receiver = self;
  v16.super_class = ETQuadCurvePointFIFO;
  [(ETPointFIFO *)&v16 flush];
}

- (void)clear
{
  *&self->_anon_28[8] = *self->_anon_28;
  *&self->_anon_40[8] = *self->_anon_40;
  v2.receiver = self;
  v2.super_class = ETQuadCurvePointFIFO;
  [(ETPointFIFO *)&v2 clear];
}

- (uint64_t)prevPoints
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a2, *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 3);
}

- (char)setPrevPoints:(char *)a3
{
  result = (a1 + 40);
  if (result != a3)
  {
    return _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(result, *a3, a3[1], (a3[1] - *a3) >> 3);
  }

  return result;
}

- (uint64_t)points
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a2, *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 3);
}

- (char)setPoints:(char *)a3
{
  result = (a1 + 64);
  if (result != a3)
  {
    return _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(result, *a3, a3[1], (a3[1] - *a3) >> 3);
  }

  return result;
}

- (uint64_t)controlPoints
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a2, *(a1 + 88), *(a1 + 96), (*(a1 + 96) - *(a1 + 88)) >> 3);
}

- (char)setControlPoints:(char *)a3
{
  result = (a1 + 88);
  if (result != a3)
  {
    return _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(result, *a3, a3[1], (a3[1] - *a3) >> 3);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  return self;
}

@end