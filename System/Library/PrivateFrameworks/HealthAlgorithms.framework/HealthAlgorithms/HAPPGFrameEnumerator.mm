@interface HAPPGFrameEnumerator
- (HAPPGFrameEnumerator)initWithBinaryRepresentation:(id)representation;
- (id).cxx_construct;
- (id)nextObject;
- (uint64_t)initWithBinaryRepresentation:;
- (void)handleMetadata:(const void *)metadata;
- (void)handlePacket:(const void *)packet bootTime:(double)time;
- (void)initWithBinaryRepresentation:;
@end

@implementation HAPPGFrameEnumerator

- (HAPPGFrameEnumerator)initWithBinaryRepresentation:(id)representation
{
  v21[4] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = HAPPGFrameEnumerator;
  v5 = [(HAPPGFrameEnumerator *)&v14 init];
  v6 = [representationCopy copy];
  mimosaData = v5->_mimosaData;
  v5->_mimosaData = v6;

  bytes = [(NSData *)v5->_mimosaData bytes];
  v9 = [(NSData *)v5->_mimosaData length];
  v5->_undecodedBytes.__data_ = bytes;
  v5->_undecodedBytes.__size_ = v9;
  objc_initWeak(&location, v5);
  v21[0] = &unk_2863523C8;
  v21[3] = v21;
  objc_copyWeak(&to, &location);
  v20 = 0;
  v18 = &unk_286352458;
  objc_moveWeak(&v19, &to);
  v20 = &v18;
  objc_destroyWeak(&to);
  objc_copyWeak(&from, &location);
  v17 = 0;
  v15 = &unk_2863524E8;
  objc_moveWeak(&v16, &from);
  v17 = &v15;
  objc_destroyWeak(&from);
  std::make_unique[abi:ne200100]<mimosa::Decoder,std::function<BOOL ()(mimosa::CodecVersion const&)> &,std::function<BOOL ()(mimosa::Metadata const&)> &,std::function<BOOL ()(std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,double)> &,0>();
}

- (id)nextObject
{
  if (!self->_decoder.__ptr_)
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  p_packetToProcess = &self->_packetToProcess;
  ptr = self->_packetToProcess.__ptr_;
  if (!ptr)
  {
    p_undecodedBytes = &self->_undecodedBytes;
    data = self->_undecodedBytes.__data_;
    size = self->_undecodedBytes.__size_;
    while (1)
    {
      v8 = mimosa::Decoder::decode(self->_decoder.__ptr_, data, size);
      if (!v8)
      {
        break;
      }

      size = self->_undecodedBytes.__size_ - v8;
      data = &p_undecodedBytes->__data_[v8];
      p_undecodedBytes->__data_ = data;
      self->_undecodedBytes.__size_ = size;
      ptr = p_packetToProcess->__ptr_;
      if (p_packetToProcess->__ptr_)
      {
        goto LABEL_6;
      }
    }

    std::unique_ptr<mimosa::Decoder>::reset[abi:ne200100](&self->_decoder, 0);
    goto LABEL_19;
  }

LABEL_6:
  v9 = self->_ppgProcessor.__ptr_;
  if (!v9)
  {
    operator new();
  }

  health_algorithms::PPGProcessor::process_packet(v9, ptr, v17);
  v10 = [HAPPGFrame alloc];
  cntrl = p_packetToProcess->__cntrl_;
  v15 = p_packetToProcess->__ptr_;
  v16 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = [(HAPPGFrame *)v10 initWithPPGProcessorOutput:v17 rawPacket:&v15 bootDate:self->_bootDate];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v13 = p_packetToProcess->__cntrl_;
  p_packetToProcess->__ptr_ = 0;
  p_packetToProcess->__cntrl_ = 0;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

LABEL_20:

  return v12;
}

- (void)handlePacket:(const void *)packet bootTime:(double)time
{
  if (!self->_bootDate)
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{packet, time}];
    bootDate = self->_bootDate;
    self->_bootDate = v5;
  }

  std::allocate_shared[abi:ne200100]<std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>,std::allocator<std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12>>,std::variant<mimosa::PacketV1,mimosa::PacketV2,mimosa::PacketV3,mimosa::PacketV4,mimosa::PacketV5,mimosa::PacketV6,mimosa::PacketV7,mimosa::PacketV8,mimosa::PacketV9,mimosa::PacketV10,mimosa::PacketV11,mimosa::PacketV12> const&,0>();
}

- (void)handleMetadata:(const void *)metadata
{
  if (!self->_ppgProcessor.__ptr_)
  {
    std::allocate_shared[abi:ne200100]<mimosa::Metadata const,std::allocator<mimosa::Metadata>,mimosa::Metadata const&,0>();
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

- (uint64_t)initWithBinaryRepresentation:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithBinaryRepresentation:
{
  objc_destroyWeak(self + 1);

  operator delete(self);
}

@end