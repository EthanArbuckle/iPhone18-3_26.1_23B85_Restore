@interface HAPPGFrame
- (HAPPGFrame)initWithPPGProcessorOutput:(const void *)output rawPacket:(shared_ptr<const)std:()mimosa:()mimosa:()mimosa:()mimosa:()mimosa:()mimosa:()mimosa:()mimosa:()mimosa:()mimosa:(mimosa:(id)mimosa :PacketV12>>)a4 :PacketV11 :PacketV10 :PacketV9 :PacketV8 :PacketV7 :PacketV6 :PacketV5 :PacketV4 :PacketV3 :PacketV2 :variant<mimosa::PacketV1 bootDate:;
- (HAPPGTemperatureSample)temperatureSample;
- (id).cxx_construct;
- (int64_t)timestamp;
- (unint64_t)usage;
@end

@implementation HAPPGFrame

- (HAPPGFrame)initWithPPGProcessorOutput:(const void *)output rawPacket:(shared_ptr<const)std:()mimosa:()mimosa:()mimosa:()mimosa:()mimosa:()mimosa:()mimosa:()mimosa:()mimosa:()mimosa:(mimosa:(id)mimosa :PacketV12>>)a4 :PacketV11 :PacketV10 :PacketV9 :PacketV8 :PacketV7 :PacketV6 :PacketV5 :PacketV4 :PacketV3 :PacketV2 :variant<mimosa::PacketV1 bootDate:
{
  cntrl = a4.__cntrl_;
  ptr = a4.__ptr_;
  v9 = a4.__cntrl_;
  v29.receiver = self;
  v29.super_class = HAPPGFrame;
  v10 = [(HAPPGFrame *)&v29 init];
  v11 = v10;
  v13 = *ptr;
  v12 = ptr[1];
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v14 = v10->_rawPacket.__cntrl_;
  v11->_rawPacket.__ptr_ = v13;
  v11->_rawPacket.__cntrl_ = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  objc_storeStrong(&v11->_startDate, cntrl);
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:(*(output + 1) - *output) >> 6];
  v16 = *output;
  v17 = *(output + 1);
  if (*output != v17)
  {
    do
    {
      v18 = [[HAPPGOpticalSample alloc] initWithPPGProcessorOutputSignal:v16];
      [v15 addObject:v18];

      v16 += 64;
    }

    while (v16 != v17);
  }

  objc_storeStrong(&v11->_opticalSamples, v15);
  v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(output + 4) - *(output + 3)) >> 3)];
  v21 = *(output + 3);
  for (i = *(output + 4); v21 != i; v21 += 24)
  {
    v22 = [HAPPGAccelSample alloc];
    LODWORD(v23) = *(v21 + 12);
    LODWORD(v24) = *(v21 + 16);
    LODWORD(v25) = *(v21 + 20);
    v26 = [(HAPPGAccelSample *)v22 initWithSamplingFrequency:*(v21 + 8) timestamp:*v21 x:v23 y:v24 z:v25];
    [(NSArray *)v19 addObject:v26];
  }

  accelSamples = v11->_accelSamples;
  v11->_accelSamples = v19;

  return v11;
}

- (int64_t)timestamp
{
  v2 = *(self->_rawPacket.__ptr_ + 80);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_286352298[v2])(&v5);
}

- (unint64_t)usage
{
  v2 = *(self->_rawPacket.__ptr_ + 80);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_2863522F8[v2])(&v5);
}

- (HAPPGTemperatureSample)temperatureSample
{
  v2 = *(self->_rawPacket.__ptr_ + 80);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v6 = &v5;
  v3 = (off_286352358[v2])(&v6);

  return v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end