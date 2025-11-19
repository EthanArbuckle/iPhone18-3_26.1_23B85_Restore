@interface _EARLanguageDetectorAudioBuffer
- (id).cxx_construct;
- (id)_initWithAudioBuffer:(const void *)a3;
- (void)addAudioSampleData:(id)a3;
- (void)addAudioSamples:(const signed __int16 *)a3 count:(unint64_t)a4;
@end

@implementation _EARLanguageDetectorAudioBuffer

- (id)_initWithAudioBuffer:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = _EARLanguageDetectorAudioBuffer;
  v4 = [(_EARLanguageDetectorAudioBuffer *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v7 = *a3;
    v6 = *(a3 + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_buffer.__cntrl_;
    v5->_buffer.__ptr_ = v7;
    v5->_buffer.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

- (void)addAudioSampleData:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 bytes];
  v6 = [v4 length] >> 1;
  ptr = self->_buffer.__ptr_;
  v9 = 0;
  (*(*ptr + 16))(ptr, v5, v6, v8);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v8);
}

- (void)addAudioSamples:(const signed __int16 *)a3 count:(unint64_t)a4
{
  v7 = *MEMORY[0x1E69E9840];
  ptr = self->_buffer.__ptr_;
  v6 = 0;
  (*(*ptr + 16))(ptr, a3, a4, v5);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v5);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end