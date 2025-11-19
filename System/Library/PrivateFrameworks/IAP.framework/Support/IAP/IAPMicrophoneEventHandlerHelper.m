@interface IAPMicrophoneEventHandlerHelper
+ (id)sharedInstance;
- (void)dealloc;
- (void)microphoneStateChangeDebouceTimeout;
- (void)microphoneStateChangedNotification;
@end

@implementation IAPMicrophoneEventHandlerHelper

+ (id)sharedInstance
{
  if (qword_10012B998 != -1)
  {
    sub_1000E1DB4();
  }

  return qword_10012B990;
}

- (void)dealloc
{
  p_stateChangeDebouceTimer = &self->_stateChangeDebouceTimer;
  if ((&self->_stateChangeDebouceTimer & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (*p_stateChangeDebouceTimer)
    {
      [(NSTimer *)*p_stateChangeDebouceTimer invalidate];
      *p_stateChangeDebouceTimer = 0;
    }

    v4.receiver = self;
    v4.super_class = IAPMicrophoneEventHandlerHelper;
    [(IAPMicrophoneEventHandlerHelper *)&v4 dealloc];
  }
}

- (void)microphoneStateChangedNotification
{
  p_stateChangeDebouceTimer = &self->_stateChangeDebouceTimer;
  if ((&self->_stateChangeDebouceTimer & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (*p_stateChangeDebouceTimer)
    {
      [(NSTimer *)*p_stateChangeDebouceTimer invalidate];
      *p_stateChangeDebouceTimer = 0;
    }

    self->_stateChangeDebouceTimer = [[NSTimer alloc] initWithFireDate:+[NSDate dateWithTimeIntervalSinceNow:](NSDate interval:"dateWithTimeIntervalSinceNow:" target:0.3) selector:self userInfo:"microphoneStateChangeDebouceTimeout" repeats:{0, 0, 0.0}];
    [+[NSRunLoop mainRunLoop](NSRunLoop addTimer:"addTimer:forMode:" forMode:self->_stateChangeDebouceTimer, NSDefaultRunLoopMode];
    stateChangeDebouceTimer = self->_stateChangeDebouceTimer;
  }
}

- (void)microphoneStateChangeDebouceTimeout
{
  if ((&self->_stateChangeDebouceTimer & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    self->_stateChangeDebouceTimer = 0;
    +[IAPServer sendAudioStateChangedNotification];
  }
}

@end