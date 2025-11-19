@interface VCPCtrTracker
- (VCPCtrTracker)init;
- (void)dealloc;
- (void)setupTrackerWithReferenceFrame:(__CVBuffer *)a3 withROI:(CGPoint *)a4;
@end

@implementation VCPCtrTracker

- (VCPCtrTracker)init
{
  v3.receiver = self;
  v3.super_class = VCPCtrTracker;
  result = [(VCPCtrTracker *)&v3 init];
  if (result)
  {
    result->P = 0;
    result->context = 0;
  }

  return result;
}

- (void)dealloc
{
  context = self->context;
  if (context)
  {
    ctrTrackerInitialization_freeContext(context);
  }

  P = self->P;
  if (P)
  {
    free(P);
  }

  v5.receiver = self;
  v5.super_class = VCPCtrTracker;
  [(VCPCtrTracker *)&v5 dealloc];
}

- (void)setupTrackerWithReferenceFrame:(__CVBuffer *)a3 withROI:(CGPoint *)a4
{
  P = self->P;
  if (!P)
  {
    P = malloc_type_calloc(4uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    self->P = P;
  }

  for (i = 0; i != 4; ++i)
  {
    P[i] = a4[i];
  }

  context = self->context;
  if (context)
  {
    ctrTrackerInitialization_cleanUpContext(context);
    v10 = self->context;
  }

  else
  {
    v10 = ctrTrackerInitialization_allocContext();
    self->context = v10;
  }

  ctrTrackerInitialization_setUpTracker(a3, v10, a4);
}

@end