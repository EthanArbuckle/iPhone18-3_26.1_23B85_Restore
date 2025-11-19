@interface geo_state_capture_handle
- (geo_state_capture_handle)init;
- (void)dealloc;
@end

@implementation geo_state_capture_handle

- (geo_state_capture_handle)init
{
  v6.receiver = self;
  v6.super_class = geo_state_capture_handle;
  v3 = [(geo_state_capture_handle *)&v6 self];

  if (v3)
  {
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    v4 = v3;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_stateCaptureHandle)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = geo_state_capture_handle;
  [(geo_state_capture_handle *)&v3 dealloc];
}

@end