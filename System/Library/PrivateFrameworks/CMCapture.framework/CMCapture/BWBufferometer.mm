@interface BWBufferometer
+ (void)initialize;
+ (void)trackBuffer:(void *)a3 trackedSize:(int64_t)a4;
@end

@implementation BWBufferometer

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (void)trackBuffer:(void *)a3 trackedSize:(int64_t)a4
{
  objc_opt_self();

  [BWBufferometerTracker trackBuffer:a3 trackedSize:a4 tag:0 bufferType:0];
}

@end