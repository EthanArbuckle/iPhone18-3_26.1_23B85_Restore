@interface OU3DObjectCorner
- (OU3DObjectCorner)init;
- (void)addCornerStatus:(id)a3 inView:(id)a4 timestamp:;
- (void)updateIsCompleted;
@end

@implementation OU3DObjectCorner

- (OU3DObjectCorner)init
{
  v8.receiver = self;
  v8.super_class = OU3DObjectCorner;
  v2 = [(OU3DObjectCorner *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    coordinate = v2->_coordinate;
    v2->_coordinate = v3;

    v5 = objc_opt_new();
    inView = v2->_inView;
    v2->_inView = v5;
  }

  *&v2->kCornerTimerThreshold = xmmword_25D277FE0;
  v2->isCompleted = 0;
  return v2;
}

- (void)updateIsCompleted
{
  if (self->isCompleted)
  {
    return;
  }

  v3 = [(NSMutableArray *)self->_coordinate count];
  if (v3 <= 1)
  {
    self->isCompleted = 0;
    return;
  }

  v4 = v3;
  v25 = [(NSMutableArray *)self->_timer objectAtIndexedSubscript:v3 - 1];
  [v25 doubleValue];
  v6 = v5;
  v7 = [(NSMutableArray *)self->_timer objectAtIndexedSubscript:0];
  [v7 doubleValue];
  v9 = v6 - v8;
  kCornerTimerThreshold = self->kCornerTimerThreshold;

  if (v9 > kCornerTimerThreshold)
  {
    self->isCompleted = 1;
    return;
  }

  v26 = objc_opt_new();
  v11 = 0;
  v12 = MEMORY[0x277CBEC38];
  do
  {
    v13 = [(NSMutableArray *)self->_inView objectAtIndexedSubscript:v11];
    v14 = [v13 isEqual:v12];

    if (v14)
    {
      v15 = [(NSMutableArray *)self->_coordinate objectAtIndexedSubscript:v11];
      [v26 addObject:v15];
    }

    ++v11;
  }

  while (v4 != v11);
  v16 = [v26 count];
  v17 = v16 - 1;
  if (v16 > 1)
  {
    v28.i32[2] = 0;
    v28.i64[0] = 0;
    v27.i32[2] = 0;
    v27.i64[0] = 0;
    v18 = [v26 objectAtIndexedSubscript:v17];
    v19 = float3FromNSArray(v18, &v28);

    if (v19 && ([v26 objectAtIndexedSubscript:v17], v20 = objc_claimAutoreleasedReturnValue(), v21 = float3FromNSArray(v20, &v27), v20, v21))
    {
      v22 = vsubq_f32(v28, v27);
      v23 = vmulq_f32(v22, v22);
      if (self->kCornerLocationThreshold <= sqrtf(v23.f32[2] + vaddv_f32(*v23.f32)))
      {
        goto LABEL_19;
      }

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    self->isCompleted = v24;
    goto LABEL_19;
  }

  self->isCompleted = 0;
LABEL_19:
}

- (void)addCornerStatus:(id)a3 inView:(id)a4 timestamp:
{
  v15 = v4;
  v16[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:*&v15];
  v16[0] = v9;
  HIDWORD(v10) = DWORD1(v15);
  LODWORD(v10) = DWORD1(v15);
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v16[1] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v15), DWORD2(v15)))}];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  [(NSMutableArray *)self->_coordinate addObject:v13];
  [(NSMutableArray *)self->_inView addObject:v7];
  [(NSMutableArray *)self->_timer addObject:v8];
  [(OU3DObjectCorner *)self updateIsCompleted];

  v14 = *MEMORY[0x277D85DE8];
}

@end