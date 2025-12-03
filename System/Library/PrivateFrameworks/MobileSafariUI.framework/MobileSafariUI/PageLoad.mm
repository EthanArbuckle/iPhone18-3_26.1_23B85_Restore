@interface PageLoad
- (CGSize)contentSizeAtPageLoad;
- (PageLoad)initWithURL:(id)l withProcessSwap:(BOOL)swap;
- (double)framesPerSecond;
- (double)renderDuration;
- (id)description;
- (id)statusString;
- (void)dealloc;
- (void)setTimer:(id)timer;
- (void)startRenderFps:(id)fps;
- (void)startRenderTime:(id)time;
@end

@implementation PageLoad

- (PageLoad)initWithURL:(id)l withProcessSwap:(BOOL)swap
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = PageLoad;
  v8 = [(PageLoad *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = 0;
    v8->_swapProcess = swap;
    objc_storeStrong(&v8->_URL, l);
  }

  return v9;
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = PageLoad;
  [(PageLoad *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  statusString = [(PageLoad *)self statusString];
  v5 = [v3 stringWithFormat:@"%-7@ |", statusString];

  if (self->_uiProcessStartDate)
  {
    endLoadDate = self->_endLoadDate;
    if (!endLoadDate || (-[NSDate timeIntervalSinceDate:](endLoadDate, "timeIntervalSinceDate:"), [v5 appendFormat:@" load:%7.3f", v7], self->_uiProcessStartDate))
    {
      firstVisualLayoutDate = self->_firstVisualLayoutDate;
      if (!firstVisualLayoutDate || (-[NSDate timeIntervalSinceDate:](firstVisualLayoutDate, "timeIntervalSinceDate:"), [v5 appendFormat:@" layout:%7.3f", v9], self->_uiProcessStartDate))
      {
        domContentLoadedDate = self->_domContentLoadedDate;
        if (!domContentLoadedDate || (-[NSDate timeIntervalSinceDate:](domContentLoadedDate, "timeIntervalSinceDate:"), [v5 appendFormat:@" DOM Content:%7.3f", v11], self->_uiProcessStartDate))
        {
          firstMeaningfulPaintDate = self->_firstMeaningfulPaintDate;
          if (!firstMeaningfulPaintDate || (-[NSDate timeIntervalSinceDate:](firstMeaningfulPaintDate, "timeIntervalSinceDate:"), [v5 appendFormat:@" first meaningful paint:%7.3f", v13], self->_uiProcessStartDate))
          {
            allSubresourcesLoadedDate = self->_allSubresourcesLoadedDate;
            if (allSubresourcesLoadedDate)
            {
              [(NSDate *)allSubresourcesLoadedDate timeIntervalSinceDate:?];
              [v5 appendFormat:@" all subresources:%7.3f", v15];
            }
          }
        }
      }
    }
  }

  [(PageLoad *)self renderDuration];
  if (v16 != 0.0)
  {
    [v5 appendFormat:@" render:%7.3f", *&v16];
  }

  [(PageLoad *)self framesPerSecond];
  if (v17 != 0.0)
  {
    [v5 appendFormat:@" fps:%7.3f", *&v17];
  }

  memoryBeforeWarning = [(PageLoad *)self memoryBeforeWarning];
  if (memoryBeforeWarning)
  {
    [v5 appendFormat:@" memory_before_warning:%llu", memoryBeforeWarning];
  }

  memoryAfterWarning = [(PageLoad *)self memoryAfterWarning];
  if (memoryAfterWarning)
  {
    [v5 appendFormat:@" memory_after_warning:%llu", memoryAfterWarning];
  }

  [v5 appendFormat:@" | %@", self->_URL];
  if (self->_redirectURL)
  {
    [v5 appendFormat:@" -> %@", self->_redirectURL];
  }

  error = self->_error;
  if (error)
  {
    code = [(NSError *)error code];
    localizedDescription = [(NSError *)self->_error localizedDescription];
    [v5 appendFormat:@" | error %ld: %@", code, localizedDescription];
  }

  return v5;
}

- (id)statusString
{
  status = self->_status;
  if (status > 6)
  {
    return 0;
  }

  else
  {
    return off_2781D8278[status];
  }
}

- (void)setTimer:(id)timer
{
  timerCopy = timer;
  timer = self->_timer;
  if (timer)
  {
    [(NSTimer *)timer invalidate];
  }

  v6 = self->_timer;
  self->_timer = timerCopy;
}

- (void)startRenderFps:(id)fps
{
  objc_storeStrong(&self->_startRenderFrameCountDate, fps);
  fpsCopy = fps;
  FrameCounter = CARenderServerGetFrameCounter();
  endRenderFrameCountDate = self->_endRenderFrameCountDate;
  self->_endRenderFrameCountDate = 0;
  self->_startRenderFrameCount = FrameCounter;
}

- (void)startRenderTime:(id)time
{
  objc_storeStrong(&self->_startRenderDate, time);
  timeCopy = time;
  endRenderDate = self->_endRenderDate;
  self->_endRenderDate = 0;
}

- (double)renderDuration
{
  if (!self->_startRenderDate)
  {
    return 0.0;
  }

  [(NSDate *)self->_endRenderDate timeIntervalSinceDate:?];
  return result;
}

- (double)framesPerSecond
{
  endRenderFrameCountDate = self->_endRenderFrameCountDate;
  result = 0.0;
  if (endRenderFrameCountDate && self->_startRenderFrameCountDate && self->_startRenderFrameCount)
  {
    if (self->_endRenderFrameCount)
    {
      [(NSDate *)endRenderFrameCountDate timeIntervalSinceDate:0.0];
      return (self->_endRenderFrameCount - self->_startRenderFrameCount) / v5;
    }
  }

  return result;
}

- (CGSize)contentSizeAtPageLoad
{
  width = self->_contentSizeAtPageLoad.width;
  height = self->_contentSizeAtPageLoad.height;
  result.height = height;
  result.width = width;
  return result;
}

@end