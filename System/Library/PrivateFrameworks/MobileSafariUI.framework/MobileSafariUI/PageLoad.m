@interface PageLoad
- (CGSize)contentSizeAtPageLoad;
- (PageLoad)initWithURL:(id)a3 withProcessSwap:(BOOL)a4;
- (double)framesPerSecond;
- (double)renderDuration;
- (id)description;
- (id)statusString;
- (void)dealloc;
- (void)setTimer:(id)a3;
- (void)startRenderFps:(id)a3;
- (void)startRenderTime:(id)a3;
@end

@implementation PageLoad

- (PageLoad)initWithURL:(id)a3 withProcessSwap:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PageLoad;
  v8 = [(PageLoad *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = 0;
    v8->_swapProcess = a4;
    objc_storeStrong(&v8->_URL, a3);
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
  v4 = [(PageLoad *)self statusString];
  v5 = [v3 stringWithFormat:@"%-7@ |", v4];

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

  v18 = [(PageLoad *)self memoryBeforeWarning];
  if (v18)
  {
    [v5 appendFormat:@" memory_before_warning:%llu", v18];
  }

  v19 = [(PageLoad *)self memoryAfterWarning];
  if (v19)
  {
    [v5 appendFormat:@" memory_after_warning:%llu", v19];
  }

  [v5 appendFormat:@" | %@", self->_URL];
  if (self->_redirectURL)
  {
    [v5 appendFormat:@" -> %@", self->_redirectURL];
  }

  error = self->_error;
  if (error)
  {
    v21 = [(NSError *)error code];
    v22 = [(NSError *)self->_error localizedDescription];
    [v5 appendFormat:@" | error %ld: %@", v21, v22];
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

- (void)setTimer:(id)a3
{
  v4 = a3;
  timer = self->_timer;
  if (timer)
  {
    [(NSTimer *)timer invalidate];
  }

  v6 = self->_timer;
  self->_timer = v4;
}

- (void)startRenderFps:(id)a3
{
  objc_storeStrong(&self->_startRenderFrameCountDate, a3);
  v7 = a3;
  FrameCounter = CARenderServerGetFrameCounter();
  endRenderFrameCountDate = self->_endRenderFrameCountDate;
  self->_endRenderFrameCountDate = 0;
  self->_startRenderFrameCount = FrameCounter;
}

- (void)startRenderTime:(id)a3
{
  objc_storeStrong(&self->_startRenderDate, a3);
  v6 = a3;
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