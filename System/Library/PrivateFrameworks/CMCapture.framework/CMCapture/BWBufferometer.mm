@interface BWBufferometer
+ (void)initialize;
+ (void)trackBuffer:(void *)buffer trackedSize:(int64_t)size;
@end

@implementation BWBufferometer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (void)trackBuffer:(void *)buffer trackedSize:(int64_t)size
{
  objc_opt_self();

  [BWBufferometerTracker trackBuffer:buffer trackedSize:size tag:0 bufferType:0];
}

@end