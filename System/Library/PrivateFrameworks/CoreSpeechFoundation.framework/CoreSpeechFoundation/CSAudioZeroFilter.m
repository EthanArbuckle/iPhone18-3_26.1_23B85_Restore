@interface CSAudioZeroFilter
- (CSAudioZeroFilter)initWithZeroWindowSize:(unint64_t)a3 approxAbsSpeechThreshold:(unsigned __int16)a4 numHostTicksPerAudioSample:(double)a5;
- (id)metrics;
- (unint64_t)endAudioAndFetchAnyTrailingZerosPacket:(id *)a3;
- (unint64_t)filterZerosInAudioPacket:(id)a3 atBufferHostTime:(unint64_t)a4 filteredPacket:(id *)a5;
@end

@implementation CSAudioZeroFilter

- (id)metrics
{
  v14[7] = *MEMORY[0x1E69E9840];
  ptr = self->_audioZeroFilterImpl.__ptr_;
  v3 = ptr[7];
  v4 = ptr[8];
  if (v3 == v4)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (!*v3)
      {
        v6 = v3[1];
      }

      if (v3[1] > v5)
      {
        v5 = v3[1];
      }

      if (*(ptr + 24) && *(ptr + 7) <= *v3)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CSAudioZeroFilterImpl<unsigned short>::ZeroRun>>(1uLL);
      }

      v3 += 2;
    }

    while (v3 != v4);
  }

  v12 = [MEMORY[0x1E695DF70] array];
  v13[0] = @"CSInitialContinuousZeros";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v6];
  v14[0] = v7;
  v13[1] = @"CSMaxContinuousZeros";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v5];
  v13[2] = @"CSMidSegmentContinuousZeros";
  v14[1] = v8;
  v14[2] = v12;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (unint64_t)endAudioAndFetchAnyTrailingZerosPacket:(id *)a3
{
  if (a3)
  {
    ptr = self->_audioZeroFilterImpl.__ptr_;
    v5 = ptr[2];
    if (v5 >= *ptr)
    {
      v6 = ptr[5] - v5;
      v8 = ptr[8];
      v7 = ptr[9];
      if (v8 >= v7)
      {
        v10 = ptr[7];
        v11 = v8 - v10;
        v12 = (v8 - v10) >> 4;
        v13 = v12 + 1;
        if ((v12 + 1) >> 60)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v14 = v7 - v10;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CSAudioZeroFilterImpl<unsigned short>::ZeroRun>>(v15);
        }

        v16 = v12;
        v17 = (16 * v12);
        *v17 = v6;
        v17[1] = v5;
        v9 = 16 * v12 + 16;
        v18 = &v17[-2 * v16];
        memcpy(v18, v10, v11);
        v19 = ptr[7];
        ptr[7] = v18;
        ptr[8] = v9;
        ptr[9] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8 = v6;
        *(v8 + 1) = v5;
        v9 = (v8 + 16);
      }

      ptr[8] = v9;
    }

    else
    {
      ptr[4] += v5;
      if (v5)
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(v5);
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }
    }

    *a3 = [MEMORY[0x1E695DEF0] dataWithBytes:0 length:0];
  }

  return 0;
}

- (unint64_t)filterZerosInAudioPacket:(id)a3 atBufferHostTime:(unint64_t)a4 filteredPacket:(id *)a5
{
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    if (v8 && *self->_audioZeroFilterImpl.__ptr_)
    {
      v10 = [v8 length];
      ptr = self->_audioZeroFilterImpl.__ptr_;
      v12 = [v9 bytes];
      v21 = v10 >> 1;
      if (*ptr)
      {
        v13 = *(ptr + 2);
        if (v13)
        {
          a4 = (a4 - v13 * ptr[10]);
        }

        v20 = a4;
        if (v10 >= 2)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(v21);
        }

        if ((*(ptr + 10) & 1) == 0)
        {
          v17 = *v12 == 0;
        }

        v19 = v9;
        v16 = 0;
        *(ptr + 6) = (v20 + 0 * ptr[10]);
        v15 = 0;
      }

      else
      {
        if (v10 > 1)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(v21);
        }

        v15 = a4;
        v16 = v10 & 0xFFFFFFFFFFFFFFFELL;
      }

      [MEMORY[0x1E695DEF0] dataWithBytes:0 length:{v16, v19}];
      *a5 = a4 = v15;
    }

    else
    {
      v14 = v8;
      *a5 = v9;
    }
  }

  else
  {
    a4 = 0;
  }

  return a4;
}

- (CSAudioZeroFilter)initWithZeroWindowSize:(unint64_t)a3 approxAbsSpeechThreshold:(unsigned __int16)a4 numHostTicksPerAudioSample:(double)a5
{
  v6.receiver = self;
  v6.super_class = CSAudioZeroFilter;
  if ([(CSAudioZeroFilter *)&v6 init])
  {
    operator new();
  }

  return 0;
}

@end