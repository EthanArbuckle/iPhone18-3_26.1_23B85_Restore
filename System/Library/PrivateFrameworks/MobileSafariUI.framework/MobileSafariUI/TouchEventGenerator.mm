@interface TouchEventGenerator
+ (id)sharedTouchEventGenerator;
- (BOOL)_sendHIDEvent:(__IOHIDEvent *)event;
- (TouchEventGenerator)init;
- (__IOHIDEvent)_createIOHIDEventType:(int)type;
- (void)_updateTouchPoints:(CGPoint *)points count:(unint64_t)count;
- (void)liftUp:(CGPoint)up touchCount:(unint64_t)count;
- (void)liftUpAtPoints:(CGPoint *)points touchCount:(unint64_t)count;
- (void)moveToPoints:(CGPoint *)points touchCount:(unint64_t)count duration:(double)duration;
- (void)touchDown:(CGPoint)down touchCount:(unint64_t)count;
- (void)touchDownAtPoints:(CGPoint *)points touchCount:(unint64_t)count;
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

- (__IOHIDEvent)_createIOHIDEventType:(int)type
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
      if (type == 1)
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

      else if ((type & 0xFFFFFFFE) == 4)
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

- (BOOL)_sendHIDEvent:(__IOHIDEvent *)event
{
  if (!self->_ioSystemClient)
  {
    self->_ioSystemClient = IOHIDEventSystemClientCreate();
  }

  if (event)
  {
    CFRetain(event);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__TouchEventGenerator__sendHIDEvent___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = event;
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

- (void)_updateTouchPoints:(CGPoint *)points count:(unint64_t)count
{
  activePointCount = self->_activePointCount;
  if (activePointCount)
  {
    if (!count)
    {
      self->_activePointCount = 0;
      v6 = 4;
      goto LABEL_12;
    }

    if (activePointCount == count)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    self->_activePointCount = count;
  }

  else
  {
    self->_activePointCount = count;
    v6 = 1;
    if (!count)
    {
      goto LABEL_12;
    }
  }

  p_point = &self->_activePoints[0].point;
  do
  {
    v8 = *points++;
    *p_point = v8;
    p_point += 3;
    --count;
  }

  while (count);
LABEL_12:
  v9 = [(TouchEventGenerator *)self _createIOHIDEventType:v6];
  [(TouchEventGenerator *)self _sendHIDEvent:v9];

  CFRelease(v9);
}

- (void)touchDownAtPoints:(CGPoint *)points touchCount:(unint64_t)count
{
  countCopy = 5;
  if (count < 5)
  {
    countCopy = count;
  }

  if (count)
  {
    p_point = &self->_activePoints[0].point;
    do
    {
      v7 = *points++;
      *p_point = v7;
      p_point += 3;
      --countCopy;
    }

    while (countCopy);
  }

  v8 = [(TouchEventGenerator *)self _createIOHIDEventType:1];
  [(TouchEventGenerator *)self _sendHIDEvent:v8];

  CFRelease(v8);
}

- (void)touchDown:(CGPoint)down touchCount:(unint64_t)count
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (count >= 5)
  {
    countCopy = 5;
  }

  else
  {
    countCopy = count;
  }

  if (count)
  {
    v5 = &v7[1] - (16 * countCopy);
    v6 = countCopy;
    do
    {
      *(v5 - 8) = down;
      v5 += 16;
      --v6;
    }

    while (v6);
  }

  [(TouchEventGenerator *)self touchDownAtPoints:down.x touchCount:down.y];
}

- (void)liftUpAtPoints:(CGPoint *)points touchCount:(unint64_t)count
{
  activePointCount = self->_activePointCount;
  if (count >= activePointCount)
  {
    countCopy = self->_activePointCount;
  }

  else
  {
    countCopy = count;
  }

  v7 = 5;
  if (countCopy < 5)
  {
    v7 = countCopy;
  }

  v8 = activePointCount - v7;
  if (countCopy)
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
      v11 = *points++;
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

- (void)liftUp:(CGPoint)up touchCount:(unint64_t)count
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (count >= 5)
  {
    countCopy = 5;
  }

  else
  {
    countCopy = count;
  }

  if (count)
  {
    v5 = &v7[1] - (16 * countCopy);
    v6 = countCopy;
    do
    {
      *(v5 - 8) = up;
      v5 += 16;
      --v6;
    }

    while (v6);
  }

  [(TouchEventGenerator *)self liftUpAtPoints:up.x touchCount:up.y];
}

- (void)moveToPoints:(CGPoint *)points touchCount:(unint64_t)count duration:(double)duration
{
  v28 = *MEMORY[0x277D85DE8];
  if (count >= 5)
  {
    countCopy = 5;
  }

  else
  {
    countCopy = count;
  }

  v10 = MEMORY[0x28223BE20](self);
  MEMORY[0x28223BE20](v10);
  Current = CFAbsoluteTimeGetCurrent();
  if (duration + -0.016 > 0.0)
  {
    v12 = 0;
    v26 = 1000000000.0;
    do
    {
      v13 = CFAbsoluteTimeGetCurrent() - Current;
      if (count)
      {
        v14 = sin(v13 / duration * 3.14159265 * 0.5);
        *&v15 = sin(v13 / duration * v14 * 3.14159265 * 0.5);
        p_point = &self->_activePoints[0].point;
        v17 = vdupq_lane_s64(v15, 0);
        v18 = (&v26 - 2 * countCopy);
        pointsCopy = points;
        v20 = countCopy;
        v21 = v18;
        do
        {
          if (!v12)
          {
            *v21 = *p_point;
          }

          v22 = *v21++;
          v23 = v22;
          v24 = *pointsCopy++;
          *v18++ = vmlaq_f64(v23, v17, vsubq_f64(v24, v23));
          p_point += 3;
          --v20;
        }

        while (v20);
      }

      [(TouchEventGenerator *)self _updateTouchPoints:&v26 - 2 * countCopy count:countCopy, *&v26];
      v25 = -(v13 - v12 * 0.016);
      if (v25 > 0.0)
      {
        __rqtp.tv_sec = 0;
        __rqtp.tv_nsec = (v25 * v26);
        nanosleep(&__rqtp, 0);
      }

      ++v12;
    }

    while (v13 < duration + -0.016);
  }

  [(TouchEventGenerator *)self _updateTouchPoints:points count:countCopy];
}

@end