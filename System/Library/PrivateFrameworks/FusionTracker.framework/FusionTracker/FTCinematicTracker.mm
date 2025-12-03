@interface FTCinematicTracker
+ (id)highPriorityExemplarNetworkDescriptor;
+ (id)highPriorityInstanceNetworkDescriptor;
- (FTCinematicTracker)initWithConfig:(id)config;
- (id).cxx_construct;
- (id)computeTrackingStateForInput:(id)input;
@end

@implementation FTCinematicTracker

- (FTCinematicTracker)initWithConfig:(id)config
{
  configCopy = config;
  v6.receiver = self;
  v6.super_class = FTCinematicTracker;
  if ([(FTCinematicTracker *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (id)computeTrackingStateForInput:(id)input
{
  inputCopy = input;
  ptr = self->_tracker.__ptr_;
  std::recursive_mutex::lock((ptr + 80));
  v7 = self->_tracker.__ptr_;
  v8 = *(v7 + 1);
  if ((v8 & 1) == 0)
  {
    *(v7 + 1) = v8 | 1;
    operator new();
  }

  v9 = ft::GetOsLog(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [FTCinematicTracker computeTrackingStateForInput:];
  }

  std::recursive_mutex::unlock((ptr + 80));

  return 0;
}

+ (id)highPriorityExemplarNetworkDescriptor
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(FTNetworkDescriptor);
  [(FTNetworkDescriptor *)v2 setName:@"subject_tracking_initializer_v2"];
  v3 = [FTImageTensorDescriptor bgraSquareImageWithName:@"image" size:127.0];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(FTNetworkDescriptor *)v2 setInputImages:v4];

  [(FTNetworkDescriptor *)v2 setOutputNames:&unk_285F91988];

  return v2;
}

+ (id)highPriorityInstanceNetworkDescriptor
{
  v12[1] = *MEMORY[0x277D85DE8];
  highPriorityExemplarNetworkDescriptor = [self highPriorityExemplarNetworkDescriptor];
  name = [highPriorityExemplarNetworkDescriptor name];

  v4 = objc_alloc_init(FTTensorReference);
  [(FTTensorReference *)v4 setSourceNetworkName:name];
  [(FTTensorReference *)v4 setSourceOutputName:@"net_exempler_reg"];
  [(FTTensorReference *)v4 setDestinationInputName:@"r1_kernel"];
  v5 = objc_alloc_init(FTTensorReference);
  [(FTTensorReference *)v5 setSourceNetworkName:name];
  [(FTTensorReference *)v5 setSourceOutputName:@"net_exempler_cls"];
  [(FTTensorReference *)v5 setDestinationInputName:@"cls1_kernel"];
  v6 = objc_alloc_init(FTNetworkDescriptor);
  [(FTNetworkDescriptor *)v6 setName:@"subject_tracking_tracker_v2"];
  v7 = [FTImageTensorDescriptor bgraSquareImageWithName:@"instance_image" size:271.0];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [(FTNetworkDescriptor *)v6 setInputImages:v8];

  v11[0] = v4;
  v11[1] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [(FTNetworkDescriptor *)v6 setInputReferences:v9];

  [(FTNetworkDescriptor *)v6 setOutputNames:&unk_285F919A0];

  return v6;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end