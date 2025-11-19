@interface LAUIPhysicalButtonViewBounceAnimation
- (double)_currentLength;
- (void)_animateWithLength:(double)a3 delay:(double)a4;
- (void)beginWithDelay:(double)a3;
- (void)update;
@end

@implementation LAUIPhysicalButtonViewBounceAnimation

- (void)beginWithDelay:(double)a3
{
  if (![(LAUIPhysicalButtonViewAnimation *)self isRunning])
  {
    [(LAUIPhysicalButtonViewBounceAnimation *)self _currentLength];

    [LAUIPhysicalButtonViewBounceAnimation _animateWithLength:"_animateWithLength:delay:" delay:?];
  }
}

- (void)update
{
  if ([(LAUIPhysicalButtonViewAnimation *)self isRunning])
  {
    [(LAUIPhysicalButtonViewBounceAnimation *)self _currentLength];
    if (self->_lastLength != v3)
    {

      [LAUIPhysicalButtonViewBounceAnimation _animateWithLength:"_animateWithLength:delay:" delay:?];
    }
  }
}

- (double)_currentLength
{
  if (self->_forceMaxXEdge || (v3 = objc_loadWeakRetained(&self->super._physicalButtonView), v4 = [v3 edge] & 0xFFFFFFFD, v3, !v4))
  {
    WeakRetained = objc_loadWeakRetained(&self->super._physicalButtonView);
    [WeakRetained bounds];
    v7 = v8;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super._physicalButtonView);
    [WeakRetained bounds];
    v7 = v6;
  }

  return v7;
}

- (void)_animateWithLength:(double)a3 delay:(double)a4
{
  v25[7] = *MEMORY[0x277D85DE8];
  [(LAUIPhysicalButtonViewAnimation *)self end];
  self->_lastLength = a3;
  if (self->_forceMaxXEdge)
  {
    goto LABEL_2;
  }

  WeakRetained = objc_loadWeakRetained(&self->super._physicalButtonView);
  v10 = [WeakRetained edge];

  v7 = 0;
  v8 = 0;
  if (v10 <= 1)
  {
    if (!v10)
    {
      goto LABEL_3;
    }

    if (v10 != 1)
    {
      goto LABEL_13;
    }

LABEL_12:
    v8 = @"position.y";
    goto LABEL_13;
  }

  if (v10 == 3)
  {
    v7 = 1;
    goto LABEL_12;
  }

  if (v10 == 2)
  {
LABEL_2:
    v7 = 1;
LABEL_3:
    v8 = @"position.x";
  }

LABEL_13:
  v11 = [MEMORY[0x277CD9EC8] animationWithKeyPath:v8];
  [v11 setAdditive:1];
  [v11 setBeginTimeMode:*MEMORY[0x277CDA080]];
  [v11 setBeginTime:a4];
  [(LAUIPhysicalButtonViewBounceAnimation *)self duration];
  [v11 setDuration:?];
  [v11 setCalculationMode:*MEMORY[0x277CDA070]];
  v25[0] = &unk_28682F870;
  if (v7)
  {
    v12 = -1.7;
  }

  else
  {
    v12 = 1.7;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12 * self->_lastLength];
  v25[1] = v13;
  v25[2] = &unk_28682F870;
  v25[3] = &unk_28682F870;
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12 * self->_lastLength];
  v25[4] = v14;
  v25[5] = &unk_28682F870;
  v25[6] = &unk_28682F870;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:7];
  [v11 setValues:v15];

  [v11 setKeyTimes:&unk_28682FE80];
  LODWORD(v16) = 1051372203;
  LODWORD(v17) = 1059760811;
  LODWORD(v18) = 1.0;
  v19 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v16 :0.0 :v17 :v18];
  v20 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  v24[0] = v19;
  v24[1] = v20;
  v24[2] = v19;
  v24[3] = v19;
  v24[4] = v20;
  v24[5] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:6];
  [v11 setTimingFunctions:v21];

  LODWORD(v22) = 2139095040;
  [v11 setRepeatCount:v22];
  v23 = objc_loadWeakRetained(&self->super._layer);
  [(LAUIPhysicalButtonViewAnimation *)self addAdditiveAnimation:v11 to:v23 keyPath:0];
}

@end