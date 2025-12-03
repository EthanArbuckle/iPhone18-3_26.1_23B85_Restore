@interface CBDigitizerHotspotTTF
- (CBDigitizerHotspotTTF)init;
- (float)computeBackoff:(float)backoff;
- (id)description;
- (void)dealloc;
@end

@implementation CBDigitizerHotspotTTF

- (CBDigitizerHotspotTTF)init
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = CBDigitizerHotspotTTF;
  selfCopy = [(CBDigitizerHotspot *)&v4 init];
  if (selfCopy)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    selfCopy->_buffer = v2;
    selfCopy->_touchTriggerBaseDelay = 5.0;
    selfCopy->_touchBufferPivot = 3;
    selfCopy->_touchBufferMaxCount = 7;
    selfCopy->_touchBufferWindowS = 10.0;
  }

  return selfCopy;
}

- (id)description
{
  selfCopy = self;
  v12 = a2;
  v10 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CBDigitizerHotspotTTF;
  v5 = [(CBDigitizerHotspot *)&v11 description];
  [(CBDigitizerHotspotTTF *)selfCopy touchBufferWindowS];
  v6 = v2;
  v7 = [(NSMutableArray *)selfCopy->_buffer count];
  touchBufferMaxCount = [(CBDigitizerHotspotTTF *)selfCopy touchBufferMaxCount];
  touchBufferPivot = [(CBDigitizerHotspotTTF *)selfCopy touchBufferPivot];
  [(CBDigitizerHotspot *)selfCopy touchTriggerDelay];
  return [v10 stringWithFormat:@"%@ window=%f count=%lu maxCount=%lu pivot=%lu  backoff=%.1f", v5, *&v6, v7, touchBufferMaxCount, touchBufferPivot, v3];
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_buffer).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBDigitizerHotspotTTF;
  [(CBDigitizerHotspotTTF *)&v3 dealloc];
}

- (float)computeBackoff:(float)backoff
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