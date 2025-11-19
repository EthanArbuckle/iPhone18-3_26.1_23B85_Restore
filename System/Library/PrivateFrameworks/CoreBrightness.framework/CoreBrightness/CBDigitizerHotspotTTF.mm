@interface CBDigitizerHotspotTTF
- (CBDigitizerHotspotTTF)init;
- (float)computeBackoff:(float)a3;
- (id)description;
- (void)dealloc;
@end

@implementation CBDigitizerHotspotTTF

- (CBDigitizerHotspotTTF)init
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = CBDigitizerHotspotTTF;
  v6 = [(CBDigitizerHotspot *)&v4 init];
  if (v6)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_buffer = v2;
    v6->_touchTriggerBaseDelay = 5.0;
    v6->_touchBufferPivot = 3;
    v6->_touchBufferMaxCount = 7;
    v6->_touchBufferWindowS = 10.0;
  }

  return v6;
}

- (id)description
{
  v13 = self;
  v12 = a2;
  v10 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CBDigitizerHotspotTTF;
  v5 = [(CBDigitizerHotspot *)&v11 description];
  [(CBDigitizerHotspotTTF *)v13 touchBufferWindowS];
  v6 = v2;
  v7 = [(NSMutableArray *)v13->_buffer count];
  v8 = [(CBDigitizerHotspotTTF *)v13 touchBufferMaxCount];
  v9 = [(CBDigitizerHotspotTTF *)v13 touchBufferPivot];
  [(CBDigitizerHotspot *)v13 touchTriggerDelay];
  return [v10 stringWithFormat:@"%@ window=%f count=%lu maxCount=%lu pivot=%lu  backoff=%.1f", v5, *&v6, v7, v8, v9, v3];
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_buffer).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBDigitizerHotspotTTF;
  [(CBDigitizerHotspotTTF *)&v3 dealloc];
}

- (float)computeBackoff:(float)a3
{
  [(NSMutableArray *)self->_buffer removeObjectsAtIndexes:[(NSMutableArray *)self->_buffer indexesOfObjectsWithOptions:2 passingTest:?]];
  v6 = [(NSMutableArray *)self->_buffer count];
  if (!v6)
  {
    return 0.0;
  }

  if (v6 >= [(CBDigitizerHotspotTTF *)self touchBufferPivot])
  {
    [(CBDigitizerHotspotTTF *)self touchTriggerBaseDelay];
    return v4 + (v6 - [(CBDigitizerHotspotTTF *)self touchBufferPivot]+ 1);
  }

  else
  {
    [(CBDigitizerHotspotTTF *)self touchTriggerBaseDelay];
    return v3;
  }
}

BOOL __40__CBDigitizerHotspotTTF_computeBackoff___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = *(a1 + 40);
  [a2 floatValue];
  v9 = fabs((v8 - v3));
  [*(a1 + 32) touchBufferWindowS];
  v10 = 1;
  if (v9 <= v4)
  {
    v6 = [*(*(a1 + 32) + 40) count] - a3;
    return v6 > [*(a1 + 32) touchBufferMaxCount];
  }

  return v10;
}

@end