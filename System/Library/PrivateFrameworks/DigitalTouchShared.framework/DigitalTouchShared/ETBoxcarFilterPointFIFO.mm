@interface ETBoxcarFilterPointFIFO
- (ETBoxcarFilterPointFIFO)initWithFIFO:(id)o width:(unint64_t)width spacing:(float)spacing;
- (char)setPrevPoints:(char *)points;
- (id).cxx_construct;
- (uint64_t)prevPoints;
- (void)addPoints:(ETBoxcarFilterPointFIFO *)self count:(SEL)count;
- (void)clear;
- (void)emitAveragedPoint;
- (void)flush;
@end

@implementation ETBoxcarFilterPointFIFO

- (ETBoxcarFilterPointFIFO)initWithFIFO:(id)o width:(unint64_t)width spacing:(float)spacing
{
  v8.receiver = self;
  v8.super_class = ETBoxcarFilterPointFIFO;
  result = [(ETPointFIFO *)&v8 initWithFIFO:o];
  if (result)
  {
    result->_width = width;
    result->_spacing = spacing;
  }

  return result;
}

- (void)emitAveragedPoint
{
  v4 = self + 1;
  isa = self[1].super.super.isa;
  nextFIFO = self[1].super._nextFIFO;
  v7 = 0;
  if (isa != nextFIFO)
  {
    v8 = self[1].super.super.isa;
    do
    {
      v9 = *v8;
      v8 = (v8 + 8);
      v2.i32[1] = v9.i32[1];
      v7 = vadd_f32(v9, v7);
    }

    while (v8 != nextFIFO);
  }

  *v2.i32 = self->_width;
  v11 = vdiv_f32(v7, vdup_lane_s32(v2, 0));
  v10 = nextFIFO - (isa + 8);
  if (nextFIFO != (isa + 8))
  {
    memmove(isa, isa + 8, nextFIFO - (isa + 8));
  }

  v4->super._nextFIFO = (isa + v10);
  [(ETPointFIFO *)self emitPoints:&v11 count:1];
}

- (void)addPoints:(ETBoxcarFilterPointFIFO *)self count:(SEL)count
{
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v7 = self + 1;
    do
    {
      isa = v7->super.super.isa;
      nextFIFO = v7->super._nextFIFO;
      if (nextFIFO == v7->super.super.isa)
      {
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v7, v5);
        [(ETPointFIFO *)self emitPoints:v5 count:1];
      }

      else
      {
        v10 = vsub_f32(*(nextFIFO - 8), *v5);
        if (sqrtf(vaddv_f32(vmul_f32(v10, v10))) >= self->_spacing)
        {
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v7, v5);
          isa = v7->super.super.isa;
          nextFIFO = v7->super._nextFIFO;
        }

        if (self->_width == (nextFIFO - isa) >> 3)
        {
          [(ETBoxcarFilterPointFIFO *)self emitAveragedPoint];
        }
      }

      ++v5;
      --v4;
    }

    while (v4);
  }
}

- (void)flush
{
  v3 = self + 1;
  isa = self[1].super.super.isa;
  nextFIFO = self[1].super._nextFIFO;
  if (self->_width == (nextFIFO - isa) >> 3)
  {
    [(ETBoxcarFilterPointFIFO *)self emitAveragedPoint];
    isa = v3->super.super.isa;
    nextFIFO = v3->super._nextFIFO;
  }

  if (nextFIFO != isa)
  {
    [(ETPointFIFO *)self emitPoints:&nextFIFO[-1]._nextFIFO count:1];
    isa = v3->super.super.isa;
  }

  v3->super._nextFIFO = isa;
  v6.receiver = self;
  v6.super_class = ETBoxcarFilterPointFIFO;
  [(ETPointFIFO *)&v6 flush];
}

- (void)clear
{
  self[1].super._nextFIFO = self[1].super.super.isa;
  v2.receiver = self;
  v2.super_class = ETBoxcarFilterPointFIFO;
  [(ETPointFIFO *)&v2 clear];
}

- (uint64_t)prevPoints
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(a2, *(self + 32), *(self + 40), (*(self + 40) - *(self + 32)) >> 3);
}

- (char)setPrevPoints:(char *)points
{
  result = (self + 32);
  if (result != points)
  {
    return _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(result, *points, points[1], (points[1] - *points) >> 3);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end