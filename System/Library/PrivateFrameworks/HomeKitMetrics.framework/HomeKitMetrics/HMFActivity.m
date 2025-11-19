@interface HMFActivity
@end

@implementation HMFActivity

void __49__HMFActivity_HMMTaggedLogging__tagProcessorList__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _associatedObjectForKey:@"HMMTagSessionProcessors"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [HMMTagSessionProcessorList alloc];
    v6 = +[HMMTagManager sharedInstance];
    v7 = [v6 workQueue];
    v8 = [(HMMTagSessionProcessorList *)v5 initWithWorkQueue:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(a1 + 32);
    v12 = *(*(*(a1 + 40) + 8) + 40);

    [v11 _setAssociatedObject:v12 forKey:@"HMMTagSessionProcessors"];
  }
}

@end