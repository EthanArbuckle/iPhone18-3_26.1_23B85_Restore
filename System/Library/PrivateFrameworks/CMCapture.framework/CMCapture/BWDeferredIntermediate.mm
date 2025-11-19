@interface BWDeferredIntermediate
+ (void)initialize;
- (BWDeferredIntermediate)init;
- (BWDeferredIntermediate)initWithCoder:(id)a3;
- (BWDeferredIntermediate)initWithTag:(id)a3 URL:(id)a4;
- (id)archive:(int *)a3;
- (id)fetchAndRetain:(int *)a3;
- (void)dealloc;
@end

@implementation BWDeferredIntermediate

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWDeferredIntermediate)init
{
  v5.receiver = self;
  v5.super_class = BWDeferredIntermediate;
  v2 = [(BWDeferredIntermediate *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_lock, 0);
    pthread_cond_init(&v3->_cv, 0);
  }

  return v3;
}

- (BWDeferredIntermediate)initWithTag:(id)a3 URL:(id)a4
{
  if (!a3)
  {
    [BWDeferredIntermediate initWithTag:URL:];
LABEL_8:

    return 0;
  }

  if (!a4)
  {
    [BWDeferredIntermediate initWithTag:URL:];
    goto LABEL_8;
  }

  v7 = [(BWDeferredIntermediate *)self init];
  if (v7)
  {
    v7->_tag = a3;
    v7->_URL = a4;
    v7->_dirty = 1;
  }

  return v7;
}

- (BWDeferredIntermediate)initWithCoder:(id)a3
{
  if (a3)
  {
    v4 = [(BWDeferredIntermediate *)self init];
    if (v4)
    {
      v4->_tag = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    }
  }

  else
  {
    [BWDeferredIntermediate initWithCoder:?];
    return 0;
  }

  return v4;
}

- (void)dealloc
{
  pthread_cond_destroy(&self->_cv);
  pthread_mutex_destroy(&self->_lock);

  v3.receiver = self;
  v3.super_class = BWDeferredIntermediate;
  [(BWDeferredIntermediate *)&v3 dealloc];
}

- (id)fetchAndRetain:(int *)a3
{
  if (a3)
  {
    *a3 = -16136;
  }

  return 0;
}

- (id)archive:(int *)a3
{
  if (a3)
  {
    *a3 = -16136;
  }

  return 0;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
}

@end