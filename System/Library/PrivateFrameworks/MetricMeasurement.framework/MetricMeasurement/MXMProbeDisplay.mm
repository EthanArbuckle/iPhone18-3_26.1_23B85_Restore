@interface MXMProbeDisplay
+ (MXMDisplayDescriptor)mainDescriptor;
+ (NSArray)descriptors;
+ (id)probe;
+ (id)probeWithDescriptor:(id)descriptor;
- (MXMProbeDisplay)init;
- (MXMProbeDisplay)initWithDescriptor:(id)descriptor;
- (void)_beginUpdates;
- (void)_stopUpdates;
@end

@implementation MXMProbeDisplay

+ (MXMDisplayDescriptor)mainDescriptor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3042000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  descriptors = [self descriptors];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__MXMProbeDisplay_mainDescriptor__block_invoke;
  v5[3] = &unk_2798C95C8;
  v5[4] = &v6;
  [descriptors enumerateObjectsUsingBlock:v5];

  WeakRetained = objc_loadWeakRetained(v7 + 5);
  _Block_object_dispose(&v6, 8);
  objc_destroyWeak(&v11);

  return WeakRetained;
}

void __33__MXMProbeDisplay_mainDescriptor__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  obj = a2;
  if ([obj main])
  {
    objc_storeWeak((*(*(a1 + 32) + 8) + 40), obj);
    *a4 = 1;
  }
}

+ (NSArray)descriptors
{
  v2 = objc_opt_class();

  return [v2 _allDescriptors];
}

+ (id)probe
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)probeWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [[self alloc] initWithDescriptor:descriptorCopy];

  return v5;
}

- (MXMProbeDisplay)init
{
  selfCopy = [objc_opt_class() mainDescriptor];

  if (selfCopy)
  {
    mainDescriptor = [objc_opt_class() mainDescriptor];
    self = [(MXMProbeDisplay *)self initWithDescriptor:mainDescriptor];

    selfCopy = self;
  }

  return selfCopy;
}

- (MXMProbeDisplay)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v13.receiver = self;
  v13.super_class = MXMProbeDisplay;
  v6 = [(MXMProbe *)&v13 init];
  if (v6)
  {
    if (!descriptorCopy)
    {
      [(MXMProbeDisplay *)a2 initWithDescriptor:v6];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(MXMProbeDisplay *)a2 initWithDescriptor:v6];
    }

    v7 = [MXMDisplayProbe_iphoneOS_Internal alloc];
    updateQueue = [(MXMProbe *)v6 updateQueue];
    v9 = [(MXMDisplayProbe_iphoneOS_Internal *)v7 initPrivateWithDescriptor:descriptorCopy queue:updateQueue];
    impl = v6->_impl;
    v6->_impl = v9;

    v11 = v6->_impl;
    if (!v11)
    {
      [(MXMProbeDisplay *)a2 initWithDescriptor:v6, &v6->_impl, &v14];
      v11 = v14;
    }

    [(MXMDisplayProbePlatform *)v11 setDelegate:v6];
  }

  return v6;
}

- (void)_beginUpdates
{
  v3.receiver = self;
  v3.super_class = MXMProbeDisplay;
  [(MXMProbe *)&v3 _beginUpdates];
  [(MXMDisplayProbePlatform *)self->_impl _start];
}

- (void)_stopUpdates
{
  v3.receiver = self;
  v3.super_class = MXMProbeDisplay;
  [(MXMProbe *)&v3 _stopUpdates];
  [(MXMDisplayProbePlatform *)self->_impl _stop];
}

- (void)initWithDescriptor:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMDisplayProbe.m" lineNumber:120 description:@"Cannot initialize a screen probe with a nil target!"];
}

- (void)initWithDescriptor:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMDisplayProbe.m" lineNumber:121 description:@"Cannot initialize a screen probe with a non-MXMProbeScreenDescriptor instance target!"];
}

- (void)initWithDescriptor:(void *)a3 .cold.3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"MXMDisplayProbe.m" lineNumber:133 description:@"Failed to initialize platform screen probe."];

  *a4 = *a3;
}

@end