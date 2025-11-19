@interface BKUIPearlCrossHairsManager
- (BKUIPearlCrossHairsManager)init;
- (BOOL)grayscale;
- (id).cxx_construct;
- (void)addInstance:(id)a3;
- (void)setSpringsStates:(unint64_t)a3;
- (void)setTarget:(BKUIPearlCrossHairsManager *)self;
- (void)setValue:(BKUIPearlCrossHairsManager *)self;
- (void)update:(double)a3;
@end

@implementation BKUIPearlCrossHairsManager

- (BKUIPearlCrossHairsManager)init
{
  v19.receiver = self;
  v19.super_class = BKUIPearlCrossHairsManager;
  v2 = [(BKUIPearlCrossHairsManager *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    springInstances = v2->_springInstances;
    v2->_springInstances = v3;

    p_instanceVector = &v2->_instanceVector;
    begin = v2->_instanceVector.__begin_;
    if (begin)
    {
      v2->_instanceVector.__end_ = begin;
      operator delete(begin);
      p_instanceVector->__begin_ = 0;
      v2->_instanceVector.__end_ = 0;
      v2->_instanceVector.__cap_ = 0;
    }

    p_instanceVector->__begin_ = 0;
    v2->_instanceVector.__end_ = 0;
    v2->_instanceVector.__cap_ = 0;
    if (kinstancePerAxisCount >= 1)
    {
      v7 = 0;
      __asm { FMOV            V0.4S, #1.0 }

      v18 = *&_Q0;
      v13 = MEMORY[0x277CF1C58];
      do
      {
        v14 = [[BKUIPearlSpringInstance alloc] initWithInitialRotation:0.0078125 color:v18];
        [(BKUIPearlSpringInstance *)v14 setAxisOrientation:1];
        [(BKUIPearlSpringInstance *)v14 setParameters:*&kinitialDamping + *&kdampingOffset * v7, *(v13 + 8), *&kinitialResponse + *&kresponseOffset * v7, *(v13 + 24)];
        [(BKUIPearlCrossHairsManager *)v2 addInstance:v14];

        ++v7;
      }

      while (v7 < kinstancePerAxisCount);
      if (kinstancePerAxisCount >= 1)
      {
        v15 = 0;
        do
        {
          v16 = [[BKUIPearlSpringInstance alloc] initWithInitialRotation:0.0078125 color:v18];
          [(BKUIPearlSpringInstance *)v16 setAxisOrientation:2];
          [(BKUIPearlSpringInstance *)v16 setParameters:*&kinitialDamping + *&kdampingOffset * v15, *(v13 + 8), *&kinitialResponse + *&kresponseOffset * v15, *(v13 + 24)];
          [(BKUIPearlCrossHairsManager *)v2 addInstance:v16];

          ++v15;
        }

        while (v15 < kinstancePerAxisCount);
      }
    }
  }

  return v2;
}

- (BOOL)grayscale
{
  v2 = [(BKUIPearlCrossHairsManager *)self springInstances];
  v3 = [v2 firstObject];
  v4 = [v3 grayscale];

  return v4;
}

- (void)addInstance:(id)a3
{
  v26 = a3;
  [(NSMutableArray *)self->_springInstances addObject:?];
  [v26 matrix];
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  [v26 color];
  end = self->_instanceVector.__end_;
  cap = self->_instanceVector.__cap_;
  if (end >= cap)
  {
    begin = self->_instanceVector.__begin_;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((end - begin) >> 4);
    v14 = v13 + 1;
    if (v13 + 1 > 0x333333333333333)
    {
      std::vector<InstanceInfo>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xCCCCCCCCCCCCCCCDLL * ((cap - begin) >> 4);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x199999999999999)
    {
      v16 = 0x333333333333333;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<InstanceInfo>>(&self->_instanceVector, v16);
    }

    v17 = 80 * v13;
    *v17 = v22;
    *(v17 + 16) = v23;
    *(v17 + 32) = v24;
    *(v17 + 48) = v25;
    *(v17 + 64) = v8;
    v11 = (80 * v13 + 80);
    v18 = self->_instanceVector.__begin_;
    v19 = (self->_instanceVector.__end_ - v18);
    v20 = (80 * v13 - v19);
    memcpy((v17 - v19), v18, v19);
    v21 = self->_instanceVector.__begin_;
    self->_instanceVector.__begin_ = v20;
    self->_instanceVector.__end_ = v11;
    self->_instanceVector.__cap_ = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *end = v22;
    *(end + 1) = v23;
    *(end + 2) = v24;
    *(end + 3) = v25;
    v11 = (end + 80);
    *(end + 4) = v8;
  }

  self->_instanceVector.__end_ = v11;
}

- (void)setTarget:(BKUIPearlCrossHairsManager *)self
{
  v8 = v2;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_springInstances;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v6++) setTarget:{*&v8, v8, v9}];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setValue:(BKUIPearlCrossHairsManager *)self
{
  v8 = v2;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_springInstances;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v6++) setValue:{*&v8, v8, v9}];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setSpringsStates:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_springInstances;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) setSpringState:{a3, v9}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)update:(double)a3
{
  v5 = 0;
  for (i = 0; ; ++i)
  {
    v7 = [(BKUIPearlCrossHairsManager *)self springInstances];
    v8 = [v7 count];

    if (v8 <= i)
    {
      break;
    }

    v9 = [(BKUIPearlCrossHairsManager *)self springInstances];
    v10 = [v9 objectAtIndexedSubscript:i];

    [v10 step:a3];
    [v10 matrix];
    v19 = v12;
    v20 = v11;
    v17 = v14;
    v18 = v13;
    [v10 color];
    v15 = (self->_instanceVector.__begin_ + v5);
    *v15 = v20;
    v15[1] = v19;
    v15[2] = v18;
    v15[3] = v17;
    v15[4] = v16;

    v5 += 80;
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end