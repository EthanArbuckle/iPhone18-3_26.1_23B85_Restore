@interface CHBoxcarFilterPointFIFO
- (CHBoxcarFilterPointFIFO)initWithFIFO:(id)o width:(unint64_t)width spacing:(float)spacing;
- (id).cxx_construct;
- (void)addPoint:(CHBoxcarFilterPointFIFO *)self;
- (void)clear;
- (void)flush;
@end

@implementation CHBoxcarFilterPointFIFO

- (CHBoxcarFilterPointFIFO)initWithFIFO:(id)o width:(unint64_t)width spacing:(float)spacing
{
  v8.receiver = self;
  v8.super_class = CHBoxcarFilterPointFIFO;
  result = [(CHPointFIFO *)&v8 initWithFIFO:o];
  if (result)
  {
    result->_width = width;
    result->_spacing = spacing;
  }

  return result;
}

- (void)addPoint:(CHBoxcarFilterPointFIFO *)self
{
  v25 = v6;
  v8 = self + 1;
  isa = self[1].super.super.isa;
  nextFIFO = self[1].super._nextFIFO;
  if (nextFIFO == isa)
  {
    v24 = *v6.i64;
    sub_1837C0350(&self[1], &v25);
    v21 = v24;
LABEL_12:

    objc_msgSend_emitPoint_(self, v19, v2, v3, v4, v5, v21);
    return;
  }

  v11 = vsubq_f32(nextFIFO[-1], v6);
  v12 = vmulq_f32(v11, v11);
  v13 = vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
  if (sqrtf(vaddv_f32(v13)) >= self->_spacing)
  {
    sub_1837C0350(&self[1], &v25);
    isa = v8->super.super.isa;
    nextFIFO = v8->super._nextFIFO;
  }

  v14 = (nextFIFO - isa) >> 4;
  if (v14 == self->_width)
  {
    v15 = 0uLL;
    if (isa != nextFIFO)
    {
      v16 = isa;
      do
      {
        v17 = *v16++;
        v13.i32[1] = v17.i32[1];
        v15 = vaddq_f32(v15, v17);
      }

      while (v16 != nextFIFO);
    }

    v13.f32[0] = v14;
    v18 = vdupq_lane_s32(v13, 0);
    v19 = isa + 16;
    v20 = nextFIFO - (isa + 16);
    if (nextFIFO != (isa + 16))
    {
      v22 = v18;
      v23 = v15;
      memmove(isa, v19, nextFIFO - (isa + 16));
      v18 = v22;
      v15 = v23;
    }

    *&v21 = vdivq_f32(v15, v18).u64[0];
    v8->super._nextFIFO = (isa + v20);
    goto LABEL_12;
  }
}

- (void)flush
{
  v8 = self + 1;
  isa = self[1].super.super.isa;
  nextFIFO = self[1].super._nextFIFO;
  v11 = (nextFIFO - isa) >> 4;
  if (v11 == self->_width)
  {
    v12 = 0uLL;
    if (isa != nextFIFO)
    {
      v13 = self[1].super.super.isa;
      do
      {
        v14 = *v13;
        v13 = (v13 + 16);
        v6.i32[1] = v14.i32[1];
        v12 = vaddq_f32(v12, v14);
      }

      while (v13 != nextFIFO);
    }

    *v6.i32 = v11;
    v15 = vdivq_f32(v12, vdupq_lane_s32(v6, 0));
    v16 = isa + 16;
    v17 = nextFIFO - (isa + 16);
    if (nextFIFO != (isa + 16))
    {
      v18 = v15;
      memmove(self[1].super.super.isa, v16, nextFIFO - (isa + 16));
      v15.i64[0] = v18.i64[0];
    }

    v8->super._nextFIFO = (isa + v17);
    objc_msgSend_emitPoint_(self, v16, v2, v3, v4, v5, *v15.i64, *&v18);
    isa = v8->super.super.isa;
    nextFIFO = v8->super._nextFIFO;
  }

  if (nextFIFO != isa)
  {
    objc_msgSend_emitPoint_(self, a2, v2, v3, v4, v5, *&nextFIFO[-1].super.isa);
    isa = v8->super.super.isa;
  }

  v8->super._nextFIFO = isa;
  v19.receiver = self;
  v19.super_class = CHBoxcarFilterPointFIFO;
  [(CHPointFIFO *)&v19 flush];
}

- (void)clear
{
  self[1].super._nextFIFO = self[1].super.super.isa;
  v2.receiver = self;
  v2.super_class = CHBoxcarFilterPointFIFO;
  [(CHPointFIFO *)&v2 clear];
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end