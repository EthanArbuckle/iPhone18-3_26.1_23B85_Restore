@interface TouchEventGenerator
+ (id)sharedTouchEventGenerator;
- (BOOL)_sendHIDEvent:(__IOHIDEvent *)a3;
- (TouchEventGenerator)init;
- (__IOHIDEvent)_createIOHIDEventType:(int)a3;
- (void)_updateTouchPoints:(CGPoint *)a3 count:(unint64_t)a4;
- (void)liftUp:(CGPoint)a3 touchCount:(unint64_t)a4;
- (void)liftUpAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4;
- (void)moveToPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 duration:(double)a5;
- (void)touchDown:(CGPoint)a3 touchCount:(unint64_t)a4;
- (void)touchDownAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4;
@end

@implementation TouchEventGenerator

+ (id)sharedTouchEventGenerator
{
  v2 = sharedTouchEventGenerator_eventGenerator;
  if (!sharedTouchEventGenerator_eventGenerator)
  {
    v3 = objc_alloc_init(TouchEventGenerator);
    v4 = sharedTouchEventGenerator_eventGenerator;
    sharedTouchEventGenerator_eventGenerator = v3;

    v2 = sharedTouchEventGenerator_eventGenerator;
  }

  return v2;
}

- (TouchEventGenerator)init
{
  v9.receiver = self;
  v9.super_class = TouchEventGenerator;
  v2 = [(TouchEventGenerator *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = &fingerIdentifiers;
    for (i = 16; i != 256; i += 48)
    {
      v6 = *v4++;
      *(&v2->super.isa + i) = v6;
    }

    v7 = v2;
  }

  return v3;
}

- (__IOHIDEvent)_createIOHIDEventType:(int)a3
{
  mach_absolute_time();
  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  IOHIDEventSetIntegerValue();
  if (self->_activePointCount)
  {
    v6 = 0;
    p_pathProximity = &self->_activePoints[0].pathProximity;
    do
    {
      if (a3 == 1)
      {
        if (*(p_pathProximity - 2) == 0.0)
        {
          *(p_pathProximity - 2) = 0x4014000000000000;
        }

        if (*(p_pathProximity - 1) == 0.0)
        {
          *(p_pathProximity - 1) = 0;
        }

        if (!*p_pathProximity)
        {
          *p_pathProximity = 3;
        }
      }

      else if ((a3 & 0xFFFFFFFE) == 4)
      {
        *(p_pathProximity - 2) = 0;
        *(p_pathProximity - 1) = 0;
        *p_pathProximity = 0;
      }

      DigitizerFingerEvent = IOHIDEventCreateDigitizerFingerEvent();
      IOHIDEventSetFloatValue();
      IOHIDEventSetFloatValue();
      IOHIDEventAppendEvent();
      CFRelease(DigitizerFingerEvent);
      ++v6;
      p_pathProximity += 48;
    }

    while (v6 < self->_activePointCount);
  }

  return DigitizerEvent;
}

- (BOOL)_sendHIDEvent:(__IOHIDEvent *)a3
{
  if (!self->_ioSystemClient)
  {
    self->_ioSystemClient = IOHIDEventSystemClientCreate();
  }

  if (a3)
  {
    CFRetain(a3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__TouchEventGenerator__sendHIDEvent___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return 1;
}

void __37__TouchEventGenerator__sendHIDEvent___block_invoke(uint64_t a1)
{
  v2 = [*MEMORY[0x277D76620] openSessions];
  v3 = [v2 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_65];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"This code assumes a single window scene exists to correctly route touches." userInfo:0];
    objc_exception_throw(v9);
  }

  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 keyWindow];
  [v6 _contextId];

  BKSHIDEventSetDigitizerInfo();
  v7 = [MEMORY[0x277D75128] sharedApplication];
  [v7 _enqueueHIDEvent:*(a1 + 32)];

  v8 = *(a1 + 32);

  CFRelease(v8);
}

void *__37__TouchEventGenerator__sendHIDEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 role];
  if (v3 == *MEMORY[0x277D772C8])
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)_updateTouchPoints:(CGPoint *)a3 count:(unint64_t)a4
{
  activePointCount = self->_activePointCount;
  if (activePointCount)
  {
    if (!a4)
    {
      self->_activePointCount = 0;
      v6 = 4;
      goto LABEL_12;
    }

    if (activePointCount == a4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    self->_activePointCount = a4;
  }

  else
  {
    self->_activePointCount = a4;
    v6 = 1;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  p_point = &self->_activePoints[0].point;
  do
  {
    v8 = *a3++;
    *p_point = v8;
    p_point += 3;
    --a4;
  }

  while (a4);
LABEL_12:
  v9 = [(TouchEventGenerator *)self _createIOHIDEventType:v6];
  [(TouchEventGenerator *)self _sendHIDEvent:v9];

  CFRelease(v9);
}

- (void)touchDownAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4
{
  v5 = 5;
  if (a4 < 5)
  {
    v5 = a4;
  }

  if (a4)
  {
    p_point = &self->_activePoints[0].point;
    do
    {
      v7 = *a3++;
      *p_point = v7;
      p_point += 3;
      --v5;
    }

    while (v5);
  }

  v8 = [(TouchEventGenerator *)self _createIOHIDEventType:1];
  [(TouchEventGenerator *)self _sendHIDEvent:v8];

  CFRelease(v8);
}

- (void)touchDown:(CGPoint)a3 touchCount:(unint64_t)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a4 >= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = a4;
  }

  if (a4)
  {
    v5 = &v7[1] - (16 * v4);
    v6 = v4;
    do
    {
      *(v5 - 8) = a3;
      v5 += 16;
      --v6;
    }

    while (v6);
  }

  [(TouchEventGenerator *)self touchDownAtPoints:a3.x touchCount:a3.y];
}

- (void)liftUpAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4
{
  activePointCount = self->_activePointCount;
  if (a4 >= activePointCount)
  {
    v6 = self->_activePointCount;
  }

  else
  {
    v6 = a4;
  }

  v7 = 5;
  if (v6 < 5)
  {
    v7 = v6;
  }

  v8 = activePointCount - v7;
  if (v6)
  {
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    v10 = (&self->_activePoints[0].point.x + 48 * activePointCount - 48 * v7);
    do
    {
      v11 = *a3++;
      *v10 = v11;
      v10 += 3;
      --v9;
    }

    while (v9);
  }

  v12 = [(TouchEventGenerator *)self _createIOHIDEventType:4];
  [(TouchEventGenerator *)self _sendHIDEvent:v12];
  CFRelease(v12);
  self->_activePointCount = v8;
}

- (void)liftUp:(CGPoint)a3 touchCount:(unint64_t)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a4 >= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = a4;
  }

  if (a4)
  {
    v5 = &v7[1] - (16 * v4);
    v6 = v4;
    do
    {
      *(v5 - 8) = a3;
      v5 += 16;
      --v6;
    }

    while (v6);
  }

  [(TouchEventGenerator *)self liftUpAtPoints:a3.x touchCount:a3.y];
}

- (void)moveToPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 duration:(double)a5
{
  v28 = *MEMORY[0x277D85DE8];
  if (a4 >= 5)
  {
    v9 = 5;
  }

  else
  {
    v9 = a4;
  }

  v10 = MEMORY[0x28223BE20](self);
  MEMORY[0x28223BE20](v10);
  Current = CFAbsoluteTimeGetCurrent();
  if (a5 + -0.016 > 0.0)
  {
    v12 = 0;
    v26 = 1000000000.0;
    do
    {
      v13 = CFAbsoluteTimeGetCurrent() - Current;
      if (a4)
      {
        v14 = sin(v13 / a5 * 3.14159265 * 0.5);
        *&v15 = sin(v13 / a5 * v14 * 3.14159265 * 0.5);
        p_point = &self->_activePoints[0].point;
        v17 = vdupq_lane_s64(v15, 0);
        v18 = (&v26 - 2 * v9);
        v19 = a3;
        v20 = v9;
        v21 = v18;
        do
        {
          if (!v12)
          {
            *v21 = *p_point;
          }

          v22 = *v21++;
          v23 = v22;
          v24 = *v19++;
          *v18++ = vmlaq_f64(v23, v17, vsubq_f64(v24, v23));
          p_point += 3;
          --v20;
        }

        while (v20);
      }

      [(TouchEventGenerator *)self _updateTouchPoints:&v26 - 2 * v9 count:v9, *&v26];
      v25 = -(v13 - v12 * 0.016);
      if (v25 > 0.0)
      {
        __rqtp.tv_sec = 0;
        __rqtp.tv_nsec = (v25 * v26);
        nanosleep(&__rqtp, 0);
      }

      ++v12;
    }

    while (v13 < a5 + -0.016);
  }

  [(TouchEventGenerator *)self _updateTouchPoints:a3 count:v9];
}

@end