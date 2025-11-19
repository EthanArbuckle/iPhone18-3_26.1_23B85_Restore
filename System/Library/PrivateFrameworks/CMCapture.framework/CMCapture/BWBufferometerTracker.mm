@interface BWBufferometerTracker
+ (void)trackBuffer:(int64_t)a3 trackedSize:(void *)a4 tag:(void *)a5 bufferType:;
- (unint64_t)initWithBuffer:(unint64_t)a3 trackedSize:(void *)a4 tag:(void *)a5 bufferType:;
- (void)dealloc;
@end

@implementation BWBufferometerTracker

+ (void)trackBuffer:(int64_t)a3 trackedSize:(void *)a4 tag:(void *)a5 bufferType:
{
  objc_opt_self();
  if (a2)
  {
    if (a3 >= 1)
    {
      v9 = [[BWBufferometerTracker alloc] initWithBuffer:a2 trackedSize:a3 tag:a4 bufferType:a5];
      if (v9)
      {
        v10 = v9;
        objc_setAssociatedObject(a2, @"BufferometerTracer", v9, 0x301);
      }
    }
  }
}

- (void)dealloc
{
  atomic_fetch_add_explicit(&qword_1ED845238, -self->_trackedSize, memory_order_relaxed);
  atomic_fetch_add_explicit(&qword_1ED845240, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);

  v3.receiver = self;
  v3.super_class = BWBufferometerTracker;
  [(BWBufferometerTracker *)&v3 dealloc];
}

- (unint64_t)initWithBuffer:(unint64_t)a3 trackedSize:(void *)a4 tag:(void *)a5 bufferType:
{
  if (!a1)
  {
    return 0;
  }

  v14.receiver = a1;
  v14.super_class = BWBufferometerTracker;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  v10 = v9;
  if (v9)
  {
    v9[3] = a2;
    v9[1] = a3;
    v9[4] = a4;
    v11 = a5;
    v12 = _MergedGlobals_15++;
    v10[5] = v11;
    v10[2] = v12;
    atomic_fetch_add_explicit(&qword_1ED845238, v10[1], memory_order_relaxed);
    atomic_fetch_add_explicit(&qword_1ED845240, 1uLL, memory_order_relaxed);
  }

  return v10;
}

@end