uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    if (*a7 >= -20)
    {
      v8 = *a2 + llroundf(*a6 * (*a4 * *a5));
      if (v8 < 0x80000000)
      {
        if (v8 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v8;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 *a4, float *a5, uint64_t a6, _BYTE *a7)
{
  result = *a3;
  if (!result)
  {
    v8 = *a5 * *a4;
    v9 = (v8 + (1 << ~*a7)) >> -*a7;
    if (*a7 >= 1)
    {
      v9 = v8 << *a7;
    }

    if (*a7)
    {
      v10 = v9;
    }

    else
    {
      v10 = *a5 * *a4;
    }

    v11 = *a2 + v10;
    if (v11 < 0x80000000)
    {
      if (v11 > 0xFFFFFFFF7FFFFFFFLL)
      {
        result = 0;
        *a2 = v11;
      }

      else
      {
        *a2 = -8388608;
        return 2;
      }
    }

    else
    {
      *a2 = 2139095040;
      return 1;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,unsigned char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB03B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
{
  v8 = *a6;
  v9 = *a7;
  if (**(a1 + 8) == v8)
  {
    v10 = **(a1 + 16);
    if (v9 >= (*(*(a1 + 16) + 8) - v10) >> 1)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = (v10 + 2 * v9);
  }

  else
  {
    v13 = *(a1 + 32);
    v11 = (**(a1 + 24) + 2 * **v13 * *a2 + 2 * v9 + 2 * *v13[1] * *a3 + 2 * *v13[2] * *a4 + 2 * *v13[3] * *a5 + 2 * *v13[4] * v8);
  }

  return MIL::Fp16::GetFloat(v11);
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,unsigned char>(unsigned char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},void>(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a2 + 6);
  operator new();
}

void std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},void>(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  operator new();
}

void std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},void>(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  operator new();
}

void std::function<float const ()(int,int,int,int,int,int)>::operator=<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},void>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  operator new();
}

uint64_t std::function<signed char const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v10 = a6;
  v11 = a5;
  v9 = a7;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, &v14, &v13, &v12, &v11, &v10, &v9);
}

uint64_t std::function<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, uint64_t a2, int a3, char a4, char a5, float a6, float a7)
{
  v13 = a3;
  v12 = a4;
  v11 = a6;
  v10 = a7;
  v9 = a5;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, a2, &v13, &v12, &v11, &v10, &v9);
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB04B8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__invoke_void_return_wrapper<signed char const,false>::__call[abi:ne200100]<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1} &,int,int,int,int,int,int>(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a6;
  if (**a1 == v6)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = (**(a1 + 16) + **(a1 + 24) * *a2 + **(a1 + 32) * *a3 + **(a1 + 40) * *a4 + **(a1 + 48) * *a5 + v6);
  }

  return *v7;
}

void *std::__function::__value_func<signed char const ()(int,int,int,int,int,int)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25994CDDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0548;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::operator()(void **a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a3;
  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a4;
  if ((v8 & 0x80000000) == 0 && *a1[1] > v6)
  {
    v7 = 0;
    v9 = *a5;
    if ((v9 & 0x80000000) == 0 && *a1[2] > v8)
    {
      if (*a1[3] > v9)
      {
        return *(*a1[4] + *a1[5] * *a2 + *a1[6] * v6 + *a1[7] * v8 + *a1[8] * v9 + *a6);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB05C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a3 & ~(*a3 >> 31);
  if (**(a1 + 8) - 1 < v6)
  {
    v6 = **(a1 + 8) - 1;
  }

  v8 = *a4 & ~(*a4 >> 31);
  v7 = *(a1 + 16);
  if (*v7 - 1 < v8)
  {
    v8 = *v7 - 1;
  }

  v9 = *a5 & ~(*a5 >> 31);
  if (**(a1 + 24) - 1 < v9)
  {
    v9 = **(a1 + 24) - 1;
  }

  return *(**(a1 + 32) + **(a1 + 40) * *a2 + **(a1 + 48) * v6 + **(a1 + 56) * v8 + **(a1 + 64) * v9 + *a6);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v9 = *a4;
    v10 = *a5;
    v11 = *a6;
    v12 = *a7;
    v13 = ilogbf(*a5);
    if (v13 <= -14)
    {
      v14 = -14;
    }

    else
    {
      v14 = v13;
    }

    if (v14 + v12 >= -20)
    {
      v15 = *a2 + llroundf((v10 * v9) * v11);
      if (v15 < 0x80000000)
      {
        if (v15 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v15;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25994D70C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    if (*a7 >= -20)
    {
      v8 = *a2 + llroundf(*a6 * (*a4 * *a5));
      if (v8 < 0x80000000)
      {
        if (v8 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v8;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, uint64_t a6, _BYTE *a7)
{
  result = *a3;
  if (!result)
  {
    v8 = *a5 * *a4;
    v9 = (v8 + (1 << ~*a7)) >> -*a7;
    if (*a7 >= 1)
    {
      v9 = v8 << *a7;
    }

    if (*a7)
    {
      v10 = v9;
    }

    else
    {
      v10 = *a5 * *a4;
    }

    v11 = *a2 + v10;
    if (v11 < 0x80000000)
    {
      if (v11 > 0xFFFFFFFF7FFFFFFFLL)
      {
        result = 0;
        *a2 = v11;
      }

      else
      {
        *a2 = -8388608;
        return 2;
      }
    }

    else
    {
      *a2 = 2139095040;
      return 1;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB08D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
{
  v8 = *a6;
  v9 = *a7;
  if (**(a1 + 8) == v8)
  {
    v10 = **(a1 + 16);
    if (v9 >= (*(*(a1 + 16) + 8) - v10) >> 1)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = (v10 + 2 * v9);
  }

  else
  {
    v13 = *(a1 + 32);
    v11 = (**(a1 + 24) + 2 * **v13 * *a2 + 2 * v9 + 2 * *v13[1] * *a3 + 2 * *v13[2] * *a4 + 2 * *v13[3] * *a5 + 2 * *v13[4] * v8);
  }

  return MIL::Fp16::GetFloat(v11);
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0958;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<MIL::Fp16> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<MIL::Fp16,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<signed char const ()(int,int,int,int,int,int)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},void>(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a2 + 6);
  operator new();
}

void std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},void>(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  operator new();
}

void std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},void>(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  operator new();
}

void std::function<float const ()(int,int,int,int,int,int)>::operator=<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},void>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  operator new();
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB09D8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0A58;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::operator()(void **a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a3;
  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a4;
  if ((v8 & 0x80000000) == 0 && *a1[1] > v6)
  {
    v7 = 0;
    v9 = *a5;
    if ((v9 & 0x80000000) == 0 && *a1[2] > v8)
    {
      if (*a1[3] > v9)
      {
        return *(*a1[4] + *a1[5] * *a2 + *a1[6] * v6 + *a1[7] * v8 + *a1[8] * v9 + *a6);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0AD8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a3 & ~(*a3 >> 31);
  if (**(a1 + 8) - 1 < v6)
  {
    v6 = **(a1 + 8) - 1;
  }

  v8 = *a4 & ~(*a4 >> 31);
  v7 = *(a1 + 16);
  if (*v7 - 1 < v8)
  {
    v8 = *v7 - 1;
  }

  v9 = *a5 & ~(*a5 >> 31);
  if (**(a1 + 24) - 1 < v9)
  {
    v9 = **(a1 + 24) - 1;
  }

  return *(**(a1 + 32) + **(a1 + 40) * *a2 + **(a1 + 48) * v6 + **(a1 + 56) * v8 + **(a1 + 64) * v9 + *a6);
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v9 = *a4;
    v10 = *a5;
    v11 = *a6;
    v12 = *a7;
    v13 = ilogbf(*a5);
    if (v13 <= -14)
    {
      v14 = -14;
    }

    else
    {
      v14 = v13;
    }

    if (v14 + v12 >= -20)
    {
      v15 = *a2 + llroundf((v10 * v9) * v11);
      if (v15 < 0x80000000)
      {
        if (v15 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v15;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    if (*a7 >= -20)
    {
      v8 = *a2 + llroundf(*a6 * (*a4 * *a5));
      if (v8 < 0x80000000)
      {
        if (v8 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v8;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, uint64_t a6, _BYTE *a7)
{
  result = *a3;
  if (!result)
  {
    v8 = *a5 * *a4;
    v9 = (v8 + (1 << ~*a7)) >> -*a7;
    if (*a7 >= 1)
    {
      v9 = v8 << *a7;
    }

    if (*a7)
    {
      v10 = v9;
    }

    else
    {
      v10 = *a5 * *a4;
    }

    v11 = *a2 + v10;
    if (v11 < 0x80000000)
    {
      if (v11 > 0xFFFFFFFF7FFFFFFFLL)
      {
        result = 0;
        *a2 = v11;
      }

      else
      {
        *a2 = -8388608;
        return 2;
      }
    }

    else
    {
      *a2 = 2139095040;
      return 1;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0DD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
{
  v8 = *a6;
  v9 = *a7;
  if (**(a1 + 8) == v8)
  {
    v10 = **(a1 + 16);
    if (v9 >= (*(*(a1 + 16) + 8) - v10) >> 1)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = (v10 + 2 * v9);
  }

  else
  {
    v13 = *(a1 + 32);
    v11 = (**(a1 + 24) + 2 * **v13 * *a2 + 2 * v9 + 2 * *v13[1] * *a3 + 2 * *v13[2] * *a4 + 2 * *v13[3] * *a5 + 2 * *v13[4] * v8);
  }

  return MIL::Fp16::GetFloat(v11);
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0E58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<unsigned char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<unsigned char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},void>(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a2 + 6);
  operator new();
}

void std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},void>(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  operator new();
}

void std::function<signed char const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},void>(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  operator new();
}

void std::function<float const ()(int,int,int,int,int,int)>::operator=<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},void>(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  operator new();
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0ED8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#1}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0F58;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::operator()(void **a1, int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int *a6)
{
  v6 = *a3;
  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = *a4;
  if ((v8 & 0x80000000) == 0 && *a1[1] > v6)
  {
    v7 = 0;
    v9 = *a5;
    if ((v9 & 0x80000000) == 0 && *a1[2] > v8)
    {
      if (*a1[3] > v9)
      {
        return *(*a1[4] + *a1[5] * *a2 + *a1[6] * v6 + *a1[7] * v8 + *a1[8] * v9 + *a6);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#2}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB0FD8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v6 = *a3 & ~(*a3 >> 31);
  if (**(a1 + 8) - 1 < v6)
  {
    v6 = **(a1 + 8) - 1;
  }

  v8 = *a4 & ~(*a4 >> 31);
  v7 = *(a1 + 16);
  if (*v7 - 1 < v8)
  {
    v8 = *v7 - 1;
  }

  v9 = *a5 & ~(*a5 >> 31);
  if (**(a1 + 24) - 1 < v9)
  {
    v9 = **(a1 + 24) - 1;
  }

  return *(**(a1 + 32) + **(a1 + 40) * *a2 + **(a1 + 48) * v6 + **(a1 + 56) * v8 + **(a1 + 64) * v9 + *a6);
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#3}>,signed char const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#1}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(signed char)#2}>,signed char ()(signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    v9 = *a4;
    v10 = *a5;
    v11 = *a6;
    v12 = *a7;
    v13 = ilogbf(*a5);
    if (v13 <= -14)
    {
      v14 = -14;
    }

    else
    {
      v14 = v13;
    }

    if (v14 + v12 >= -20)
    {
      v15 = *a2 + llroundf((v10 * v9) * v11);
      if (v15 < 0x80000000)
      {
        if (v15 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v15;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#1}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, float *a6, char *a7)
{
  result = *a3;
  if (!result)
  {
    if (*a7 >= -20)
    {
      v8 = *a2 + llroundf(*a6 * (*a4 * *a5));
      if (v8 < 0x80000000)
      {
        if (v8 > 0xFFFFFFFF7FFFFFFFLL)
        {
          result = 0;
          *a2 = v8;
        }

        else
        {
          *a2 = -8388608;
          return 2;
        }
      }

      else
      {
        *a2 = 2139095040;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#2}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::operator()(uint64_t a1, int *a2, unsigned int *a3, char *a4, float *a5, uint64_t a6, _BYTE *a7)
{
  result = *a3;
  if (!result)
  {
    v8 = *a5 * *a4;
    v9 = (v8 + (1 << ~*a7)) >> -*a7;
    if (*a7 >= 1)
    {
      v9 = v8 << *a7;
    }

    if (*a7)
    {
      v10 = v9;
    }

    else
    {
      v10 = *a5 * *a4;
    }

    v11 = *a2 + v10;
    if (v11 < 0x80000000)
    {
      if (v11 > 0xFFFFFFFF7FFFFFFFLL)
      {
        result = 0;
        *a2 = v11;
      }

      else
      {
        *a2 = -8388608;
        return 2;
      }
    }

    else
    {
      *a2 = 2139095040;
      return 1;
    }
  }

  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)#3}>,MIL::ANEMachineIR::Interpreter::NumericType ()(int &,MIL::ANEMachineIR::Interpreter::NumericType,signed char,float,float,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB12D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::operator()(uint64_t a1, int *a2, int *a3, int *a4, int *a5, int *a6, int *a7)
{
  v8 = *a6;
  v9 = *a7;
  if (**(a1 + 8) == v8)
  {
    v10 = **(a1 + 16);
    if (v9 >= (*(*(a1 + 16) + 8) - v10) >> 1)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v11 = (v10 + 2 * v9);
  }

  else
  {
    v13 = *(a1 + 32);
    v11 = (**(a1 + 24) + 2 * **v13 * *a2 + 2 * v9 + 2 * *v13[1] * *a3 + 2 * *v13[2] * *a4 + 2 * *v13[3] * *a5 + 2 * *v13[4] * v8);
  }

  return MIL::Fp16::GetFloat(v11);
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#5}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB1358;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6},std::allocator<std::vector<signed char> MIL::ANEMachineIR::Interpreter::NeConvCpu::ComputeValue<signed char,signed char>(signed char const*,std::vector<unsigned long long> const&,MIL::Fp16 const*,MIL::IRDataType,std::vector<unsigned long long> const&,std::vector<unsigned long long> const&,ANEMachineIR::Validators::NeConvParameterValues const&,ANEMachineIR::Validators::PaddingMode,signed char,signed char,signed char,std::vector<MIL::Fp16> const&,std::vector<MIL::Fp16> const&,BOOL,MIL::Fp16,BOOL,std::function<float ()(float)>)::{lambda(int,int,int,int,int,int)#6}>,float const ()(int,int,int,int,int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ANEMachineIR::H2022::NeConv::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259953554(_Unwind_Exception *a1)
{
  v4 = *(v2 - 208);
  *(v2 - 208) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x670], 0);
  _Unwind_Resume(a1);
}

void sub_259954664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[13],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_25995474C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2599547C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[8],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_2599548AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_259954924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[4],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_259954A0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_259954A84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[19],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_259954B6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_259954BE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[39],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_259954CCC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_259954D44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[30],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_259954E2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_259954EA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[14],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_259954F8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MIL::Validation::TensorRankValueConstraints  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorRankValueConstraints  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Validation::TensorRankValueConstraints  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ANEMachineIR::H2021::BaseActivation::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259955490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, char a30, char a31)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v31 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a28, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Linear::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidateLinear;
  v4[3] = v4;
  ANEMachineIR::H2021::BaseActivation::Make();
}

void sub_259955694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NePiecewiseV2::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599569B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = *(v68 - 72);
  *(v68 - 72) = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  v71 = *v67;
  *v67 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v68 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a67, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Relu::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidateRelu;
  v4[3] = v4;
  ANEMachineIR::H2021::BaseActivation::Make();
}

void sub_2599570D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::ScaledActivation::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25995760C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, char a30, char a31)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v31 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a28, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Lrelu::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259957D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int16 a31, char a32, char a33)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v33 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a30, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Sigmoid::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidateSigmoid;
  v4[3] = v4;
  ANEMachineIR::H2021::ScaledActivation::Make();
}

void sub_259957FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Sqrt::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidateSqrt;
  v4[3] = v4;
  ANEMachineIR::H2021::ScaledActivation::Make();
}

void sub_259958094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Tanh::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidateTanh;
  v4[3] = v4;
  ANEMachineIR::H2021::ScaledActivation::Make();
}

void sub_259958174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::BaseNePool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259959848(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2E0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x308], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeAvgPool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25995BAC0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x330], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x358], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeMaxPool::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidateNeMaxPool;
  v4[3] = v4;
  ANEMachineIR::H2021::BaseNePool::Make();
}

void sub_25995C420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeMinPool::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidateNeMinPool;
  v4[3] = v4;
  ANEMachineIR::H2021::BaseNePool::Make();
}

void sub_25995C500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::BasePePool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25995DAFC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2D0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F8], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeAvgPool::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25995F9E4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x318], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeMaxPool::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeMaxPool;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePePool::Make();
}

void sub_259960284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeMinPool::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeMinPool;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePePool::Make();
}

void sub_259960364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::BaseActivation::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599607EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, char a30, char a31)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v31 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a28, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Linear::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidateLinear;
  v4[3] = v4;
  ANEMachineIR::H2022::BaseActivation::Make();
}

void sub_2599609F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NePiecewiseV2::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259961D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = *(v68 - 72);
  *(v68 - 72) = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  v71 = *v67;
  *v67 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v68 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a67, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Relu::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidateRelu;
  v4[3] = v4;
  ANEMachineIR::H2022::BaseActivation::Make();
}

void sub_259962434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::ScaledActivation::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259962968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int16 a29, char a30, char a31)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v31 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a28, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Lrelu::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599630A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int16 a31, char a32, char a33)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v33 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a30, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Sigmoid::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidateSigmoid;
  v4[3] = v4;
  ANEMachineIR::H2022::ScaledActivation::Make();
}

void sub_259963310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Sqrt::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidateSqrt;
  v4[3] = v4;
  ANEMachineIR::H2022::ScaledActivation::Make();
}

void sub_2599633F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Tanh::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidateTanh;
  v4[3] = v4;
  ANEMachineIR::H2022::ScaledActivation::Make();
}

void sub_2599634D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::FunctionInterpreter::Call(uint64_t a1@<X0>, MIL::IRObject *a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  OpsetString = ANEMachineIR::GetOpsetString(a3);
  std::string::basic_string[abi:ne200100]<0>(v33, OpsetString);
  if (((*(*a2 + 200))(a2, v33) & 1) == 0)
  {
    *a5 = 3;
    std::string::basic_string[abi:ne200100]<0>((a5 + 8), "Function does not have requested opset");
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
LABEL_21:
    v27 = LocationPtr[1];
    *(a5 + 32) = *LocationPtr;
    *(a5 + 40) = v27;
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    goto LABEL_34;
  }

  v10 = (*(*a2 + 128))(a2);
  v11 = v10 + 1;
  v12 = *v10;
  if (*v10 != (v10 + 1))
  {
    while (1)
    {
      Value = MIL::ANEMachineIR::Interpreter::ComputedValueStore::TryGetValue(a4, v12 + 4);
      if (!Value)
      {
        *a5 = 2;
        std::operator+<char>();
        LocationPtr = MIL::IRObject::GetLocationPtr(a2);
        goto LABEL_21;
      }

      if ((*(*Value + 4))(Value) != v12[7])
      {
        break;
      }

      v14 = v12[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v12[2];
          v16 = *v15 == v12;
          v12 = v15;
        }

        while (!v16);
      }

      v12 = v15;
      if (v15 == v11)
      {
        goto LABEL_11;
      }
    }

    *a5 = 3;
    std::operator+<char>();
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    goto LABEL_21;
  }

LABEL_11:
  v17 = (*(*a2 + 112))(a2);
  v18 = std::map<std::string,std::unique_ptr<MIL::IRBlock>>::at(v17, v33);
  v19 = (*(**v18 + 64))(*v18);
  v20 = **v19;
  v21 = (*v19)[1];
  if (v20 == v21)
  {
LABEL_16:
    v23 = (*(**v18 + 88))();
    v24 = *v23;
    v25 = *(v23 + 8);
    while (1)
    {
      if (v24 == v25)
      {
        *a5 = 0;
        std::string::basic_string[abi:ne200100]<0>((a5 + 8), &unk_259A4D977);
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;
        goto LABEL_34;
      }

      if (!MIL::ANEMachineIR::Interpreter::ComputedValueStore::TryGetValue(a4, v24))
      {
        break;
      }

      v24 += 3;
    }

    *a5 = 4;
    std::operator+<char>();
    LocationPtr = MIL::IRObject::GetLocationPtr(a2);
    goto LABEL_21;
  }

  while (1)
  {
    v22 = *v20;
    MIL::ANEMachineIR::Interpreter::DelegateByNameOp::Run(a1, *v20, a4, &v30);
    if (v30)
    {
      break;
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    v20 += 2;
    if (v20 == v21)
    {
      goto LABEL_16;
    }
  }

  *a5 = v30;
  if (SHIBYTE(v32) < 0)
  {
    std::string::__init_copy_ctor_external((a5 + 8), __p, *(&__p + 1));
  }

  else
  {
    *(a5 + 8) = __p;
    *(a5 + 24) = v32;
  }

  v28 = MIL::IRObject::GetLocationPtr(v22);
  v29 = v28[1];
  *(a5 + 32) = *v28;
  *(a5 + 40) = v29;
  if (v29)
  {
    atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

LABEL_34:
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }
}

void sub_259963884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<std::string,std::unique_ptr<MIL::IRBlock>>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

void *std::__tree<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<MIL::IRBlock>>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void MilTranslator::OpTranslator::TranslateReduceMean(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v6 = (*(*a2 + 120))(a2, &__p, 0);
  v7 = v6;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    *a3 = 4;
    std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Immediate value inputs not handled.");
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v109, *v7, *(v7 + 8));
  }

  else
  {
    v8 = *v7;
    v109.__r_.__value_.__r.__words[2] = *(v7 + 16);
    *&v109.__r_.__value_.__l.__data_ = v8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v11 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(v11, v10, v108);
  MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(this, &v109, v11, &v107);
  v12 = (*(*a2 + 176))(a2);
  v14 = **v12;
  v13 = (*v12)[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Type = MIL::IRNamedValueType::GetType(v14);
  v16 = MIL::IRValueType::AsTensorType(Type);
  std::string::basic_string[abi:ne200100]<0>(&__p, "keep_dims");
  MIL::IROperation::GetParameterValue();
  v17 = MIL::IRValue::GetScalar<BOOL>();
  v18 = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v18)
    {
LABEL_14:
      std::string::basic_string[abi:ne200100]<0>(&v106, "mean");
      v19 = (*(*v11 + 96))(v11);
      v20 = v19[1] - *v19;
      if ((v20 >> 3) <= 2)
      {
        *a3 = 8;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), "reduce_mean: input tensor rank must >= 3.");
LABEL_158:
        if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v106.__r_.__value_.__l.__data_);
        }

        goto LABEL_160;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "axes");
      v103 = 0;
      v104 = 0;
      v105 = 0;
      ParameterValue = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(ParameterValue);
      v73.__r_.__value_.__r.__words[0] = MIL::IRTensorValue::GetDataView<int>();
      v73.__r_.__value_.__l.__size_ = v22;
      if (v22)
      {
        v23 = 0;
        v24 = v20 >> 3;
        do
        {
          if ((*MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v73, v23) & 0x80000000) != 0)
          {
            v25 = *MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v73, v23) + v24;
          }

          else
          {
            v25 = *MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v73, v23);
          }

          if (v25 == 1)
          {
            __s.__r_.__value_.__s.__data_[0] = v24 - 1;
            std::vector<signed char>::push_back[abi:ne200100](&v103, &__s);
          }

          else if (v25)
          {
            if (v25 >= 2)
            {
              __s.__r_.__value_.__s.__data_[0] = v25 - 1;
              std::vector<signed char>::push_back[abi:ne200100](&v103, &__s);
            }
          }

          else
          {
            __s.__r_.__value_.__s.__data_[0] = 0;
            std::vector<signed char>::push_back[abi:ne200100](&v103, &__s);
          }

          ++v23;
        }

        while (v23 < v73.__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v100 = 0;
      v101 = 0;
      v102 = 0;
      ANEMachineIR::Utils::GetStaticTensorShape(v16, v22, &v98);
      v26 = (*(*v11 + 96))(v11);
      MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, &v109, (v26[1] - *v26) >> 3, &__s);
      MilTranslator::OpTranslator::GetTransposeOpParamPerm(&__s, (v99 - v98) >> 3, v94);
      if (MilTranslator::OpTranslator::IsTransposeRequired(v94))
      {
        MilTranslator::OpTranslator::InferTransposedShape(&v98, v94, &v92);
        v27 = *(this + 1);
        (*(*v16 + 88))(v16);
        MIL::IRTensorValueType::Make();
        Name = MIL::IRNamedValueType::GetName(v14);
        v29 = Name;
        if (*(Name + 23) >= 0)
        {
          v30 = *(Name + 23);
        }

        else
        {
          v30 = *(Name + 8);
        }

        p_str = &__str;
        std::string::basic_string[abi:ne200100](&__str, v30 + 13);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if (v30)
        {
          if (v29[23] >= 0)
          {
            v32 = v29;
          }

          else
          {
            v32 = *v29;
          }

          memmove(p_str, v32, v30);
        }

        strcpy(p_str + v30, "_channel_last");
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v73, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
        }

        else
        {
          v73 = __s;
        }

        v74 = v96;
        v75 = v97;
        std::string::operator=(&v73, &__str);
        v36 = MIL::IRNamedValueType::GetName(v14);
        std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&__p, v36, &v73);
        std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>(this + 37, &__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v79) < 0)
        {
          operator delete(v77);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v90, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          v90 = __str;
        }

        MIL::IRNamedValueType::Make();
        __p.__r_.__value_.__r.__words[0] = v57.__r_.__value_.__r.__words[0];
        if (v57.__r_.__value_.__r.__words[0])
        {
          operator new();
        }

        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        v57.__r_.__value_.__r.__words[0] = 0;
        std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](&v100, &__p);
        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
        }

        std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v57);
        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v35 = v92;
        if (!v92)
        {
          goto LABEL_75;
        }

        v93 = v92;
      }

      else
      {
        v33 = MIL::IRNamedValueType::GetName(v14);
        if (*(v33 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v89, *v33, *(v33 + 8));
        }

        else
        {
          v34 = *v33;
          v89.__r_.__value_.__r.__words[2] = *(v33 + 16);
          *&v89.__r_.__value_.__l.__data_ = v34;
        }

        MIL::IRNamedValueType::Make();
        __p.__r_.__value_.__r.__words[0] = v73.__r_.__value_.__r.__words[0];
        if (v73.__r_.__value_.__r.__words[0])
        {
          operator new();
        }

        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        v73.__r_.__value_.__r.__words[0] = 0;
        std::vector<std::shared_ptr<MIL::IRParameter>>::push_back[abi:ne200100](&v100, &__p);
        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
        }

        std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v73);
        if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

        v35 = v89.__r_.__value_.__r.__words[0];
      }

      operator delete(v35);
LABEL_75:
      MilTranslator::OpTranslator::InferTransposedShape(v108, v94, &v92);
      v37 = *(this + 1);
      (*(*v11 + 88))(v11);
      memset(&__p, 0, sizeof(__p));
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, v92, v93, (v93 - v92) >> 3);
      v38 = MIL::IRTensorValueType::Make();
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      memset(&__str, 0, sizeof(__str));
      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v106;
      }

      LOBYTE(v77) = 1;
      v79 = 0;
      v80 = 0;
      v78 = 0;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v78, v103, v104, v104 - v103);
      v81 = 1;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      LOBYTE(v86) = 0;
      v88 = 0;
      LocationPtr = MIL::IRObject::GetLocationPtr(a2);
      (*(*a2 + 56))(a2);
      if (v101 == v100)
      {
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      v40 = MIL::IRNamedValueType::GetType(*v100);
      v41 = MIL::IRValueType::AsTensorType(v40);
      v42 = **(this + 12);
      ANEMachineIR::Validators::ValidatePeReduce(LocationPtr, v38, v41, &__p, &v73);
      if (MIL::ValidationResult::IsGood(&v73))
      {
        std::string::basic_string[abi:ne200100]<0>(&v71, "pe_reduce");
        MilTranslator::OpTranslator::AddOperation(this);
        if (v72 < 0)
        {
          operator delete(v71);
        }

        std::string::basic_string[abi:ne200100]<0>(&v68, "x");
        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v67, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
        }

        else
        {
          v67 = v107;
        }

        MIL::Builder::OperationBuilder::AddInput();
        if (v70)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v70);
        }

        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67.__r_.__value_.__l.__data_);
        }

        if (v69 < 0)
        {
          operator delete(v68);
        }

        std::string::basic_string[abi:ne200100]<0>(&v64, "reduction");
        if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v63, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
        }

        else
        {
          v63 = v106;
        }

        MIL::Builder::OperationBuilder::AddInputString();
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        if (v65 < 0)
        {
          operator delete(v64);
        }

        std::string::basic_string[abi:ne200100]<0>(&v60, "reduction_axes");
        MIL::Builder::OperationBuilder::AddInputInt8();
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

        if (v61 < 0)
        {
          operator delete(v60);
        }

        if (v101 == v100)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v54 = MIL::IRNamedValueType::GetName(*v100);
        if (*(v54 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v58, *v54, *(v54 + 8));
        }

        else
        {
          v55 = *v54;
          v58.__r_.__value_.__r.__words[2] = *(v54 + 16);
          *&v58.__r_.__value_.__l.__data_ = v55;
        }

        if (v101 == v100)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        MIL::IRNamedValueType::GetType(*v100);
        MIL::Builder::OperationBuilder::AddOutput();
        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v59);
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        *a3 = 0;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
        if (v57.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v57.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        MIL::MILResult::GetMessage(&v73);
        std::operator+<char>();
        v43 = std::string::append(&v56, "; ");
        v44 = *&v43->__r_.__value_.__l.__data_;
        v57.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
        *&v57.__r_.__value_.__l.__data_ = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v57;
        }

        else
        {
          v45 = v57.__r_.__value_.__r.__words[0];
        }

        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v57.__r_.__value_.__l.__size_;
        }

        std::string::append(&__str, v45, size);
        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        *a3 = 6;
        v47 = a3 + 8;
        (*(*a2 + 56))(a2);
        std::operator+<char>();
        v48 = std::string::append(&v56, "', violations: ");
        v49 = *&v48->__r_.__value_.__l.__data_;
        v57.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
        *&v57.__r_.__value_.__l.__data_ = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = &__str;
        }

        else
        {
          v50 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v51 = __str.__r_.__value_.__l.__size_;
        }

        v52 = std::string::append(&v57, v50, v51);
        v53 = *&v52->__r_.__value_.__l.__data_;
        *(v47 + 16) = *(&v52->__r_.__value_.__l + 2);
        *v47 = v53;
        v52->__r_.__value_.__l.__size_ = 0;
        v52->__r_.__value_.__r.__words[2] = 0;
        v52->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }
      }

      MEMORY[0x259CA8F00](&v73);
      if (v88 == 1 && v87 < 0)
      {
        operator delete(v86);
      }

      if (v81 == 1 && v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      if (v77 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }

      if (v94[0])
      {
        v94[1] = v94[0];
        operator delete(v94[0]);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (v98)
      {
        v99 = v98;
        operator delete(v98);
      }

      __p.__r_.__value_.__r.__words[0] = &v100;
      std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (v103)
      {
        v104 = v103;
        operator delete(v103);
      }

      goto LABEL_158;
    }
  }

  else if (v17)
  {
    goto LABEL_14;
  }

  *a3 = 8;
  std::string::basic_string[abi:ne200100]<0>((a3 + 8), "reduce_mean: keep_dim must be true.");
LABEL_160:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (v108[0])
  {
    v108[1] = v108[0];
    operator delete(v108[0]);
  }

  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }
}

void sub_259964778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  MEMORY[0x259CA8F00](&a50);
  ANEMachineIR::Validators::PeReduceParamValues::~PeReduceParamValues(&a58);
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  v61 = STACK[0x230];
  if (STACK[0x230])
  {
    STACK[0x238] = v61;
    operator delete(v61);
  }

  v62 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v62;
    operator delete(v62);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  v63 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v63;
    operator delete(v63);
  }

  a58 = v59 - 248;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&a58);
  v64 = *(v59 - 224);
  if (v64)
  {
    *(v59 - 216) = v64;
    operator delete(v64);
  }

  if (*(v59 - 177) < 0)
  {
    operator delete(*(v59 - 200));
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (*(v59 - 153) < 0)
  {
    operator delete(*(v59 - 176));
  }

  v65 = *(v59 - 152);
  if (v65)
  {
    *(v59 - 144) = v65;
    operator delete(v65);
  }

  if (*(v59 - 105) < 0)
  {
    operator delete(*(v59 - 128));
  }

  _Unwind_Resume(a1);
}

void std::vector<signed char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259964C68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::PeReduceParamValues::~PeReduceParamValues(void **this)
{
  if (*(this + 104) == 1 && *(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 56) == 1)
  {
    v2 = this[4];
    if (v2)
    {
      this[5] = v2;
      operator delete(v2);
    }
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void ANEMachineIR::H2020::NeReduce::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599661B8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::PeReduce::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259967D24(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x250], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Const::Make(uint64_t a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7[0] = &unk_286AADC48;
  v7[1] = ANEMachineIR::H2022::Validators::ValidateConst;
  v7[3] = v7;
  v5 = HIBYTE(v2);
  v6[0] = &unk_286AB1438;
  v6[3] = v6;
  MIL::IROperator::Make();
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v7);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *MEMORY[0x277D85DE8];
}

{
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_259968588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v5 - 56);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  ANEMachineIR::H2022::Const::Make(va, va1);
  _Unwind_Resume(a1);
}

void sub_2599686A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ANEMachineIR::H2022::Const::Make(MIL::MILContext &,std::string)::$_0,std::allocator<ANEMachineIR::H2022::Const::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ANEMachineIR::H2021::Const::Make(uint64_t a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7[0] = &unk_286AADC48;
  v7[1] = ANEMachineIR::H2021::Validators::ValidateConst;
  v7[3] = v7;
  v5 = HIBYTE(v2);
  v6[0] = &unk_286AB14C8;
  v6[3] = v6;
  MIL::IROperator::Make();
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v7);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_259968880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::__function::__value_func<std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](v5 - 56);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  ANEMachineIR::H2022::Const::Make(va, va1);
  _Unwind_Resume(a1);
}

void sub_259968998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ANEMachineIR::H2021::Const::Make(MIL::MILContext &,std::string)::$_0,std::allocator<ANEMachineIR::H2021::Const::Make(MIL::MILContext &,std::string)::$_0>,std::shared_ptr<MIL::IRValue const> ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::array<std::string,6ul>::~array(uint64_t a1)
{
  for (i = 0; i != -144; i -= 24)
  {
    if (*(a1 + i + 143) < 0)
    {
      operator delete(*(a1 + i + 120));
    }
  }

  return a1;
}

void MilTranslator::OpTranslator::~OpTranslator(MilTranslator::OpTranslator *this)
{
  std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::~__hash_table(this + 296);
  MilTranslator::WeightTranslator::~WeightTranslator((this + 144));
  std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::~__hash_table(this + 104);
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void MilTranslator::OpTranslator::OpTranslator(uint64_t a1, void *a2, void *a3, __int128 *a4, unsigned int *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = *a2;
  v7 = a2[1];
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = *a3;
  v8 = a3[1];
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v9;
  }

  v10 = *(a1 + 16);
  v18 = *(a1 + 8);
  v19 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MIL::Builder::ProgramBuilder::Make();
  v11 = v20;
  *(a1 + 64) = v20;
  if (v11)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  v20 = 0;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v12 = *(a1 + 64);
  MIL::Builder::ProgramBuilder::AddFunction();
  OpsetString = ANEMachineIR::GetOpsetString(*a5);
  std::string::basic_string[abi:ne200100]<0>(&__p, OpsetString);
  MIL::Builder::FunctionBuilder::AddBlock();
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  *(a1 + 96) = a5;
  *&v14 = MilTranslator::OpTranslator::TranslateElementWiseBinary;
  *(&v14 + 1) = 0;
  v15 = a1;
  std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::pair[abi:ne200100]<char const(&)[4],std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,0>(&v20, "add", &v14);
}

void sub_259969064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  v64 = *(v62 + 32);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v65 = *(v62 + 16);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::~pair(uint64_t a1)
{
  std::__function::__value_func<TranslatorStatus ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void MilTranslator::OpTranslator::Translate(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, _DWORD *a3@<X8>)
{
  ++*this;
  v6 = (*(*a2 + 56))(a2);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    __p.__r_.__value_.__r.__words[2] = *(v6 + 16);
    *&__p.__r_.__value_.__l.__data_ = v7;
  }

  v8 = std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>(this + 13, &__p.__r_.__value_.__l.__data_);
  if (v8)
  {
    v9 = v8[8];
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v9 + 48))(v9, a2);
  }

  else
  {
    *a3 = 1;
    std::operator+<char>();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_25996937C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::OpTranslator::Translate(MilTranslator::OpTranslator *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*a2 + 40))(a2);
  v7 = (*(*v6 + 56))(v6);
  v8 = **v7;
  v9 = (*v7)[1];
  while (v8 != v9)
  {
    MilTranslator::OpTranslator::Translate(a1, *v8, a3);
    if (*a3)
    {
      return;
    }

    if (*(a3 + 31) < 0)
    {
      operator delete(*(a3 + 8));
    }

    v8 += 2;
  }

  memset(v44, 0, sizeof(v44));
  v10 = (*(*v6 + 56))(v6);
  v11 = **v10;
  v12 = (*v10)[1];
  while (v11 != v12)
  {
    v13 = *v11;
    v14 = (*(**v11 + 56))(*v11);
    v15 = *(v14 + 23);
    if (v15 < 0)
    {
      if (*(v14 + 8) == 5)
      {
        v14 = *v14;
LABEL_13:
        if (*v14 == 1936617315 && *(v14 + 4) == 116)
        {
          (*(*v13 + 200))(&v41, v13);
          if (*(v41 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v41, *(v41 + 1));
          }

          else
          {
            v17 = *v41;
            __p.__r_.__value_.__r.__words[2] = *(v41 + 2);
            *&__p.__r_.__value_.__l.__data_ = v17;
          }

          v40[0] = &v41;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v40);
          v18 = *(*(*v6 + 88))(v6);
          v19 = *((*(*v6 + 88))(v6) + 8);
          if (v18 != v19)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            while (1)
            {
              v22 = *(v18 + 23);
              v23 = v22;
              if ((v22 & 0x80u) != 0)
              {
                v22 = *(v18 + 8);
              }

              if (v22 == size)
              {
                v24 = v23 >= 0 ? v18 : *v18;
                if (!memcmp(v24, p_p, size))
                {
                  break;
                }
              }

              v18 += 24;
              if (v18 == v19)
              {
                v18 = v19;
                break;
              }
            }
          }

          if (v18 != *((*(*v6 + 88))(v6) + 8))
          {
            std::vector<std::string>::push_back[abi:ne200100](v44, &__p);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    else if (v15 == 5)
    {
      goto LABEL_13;
    }

    v11 += 2;
  }

  v25 = (*(*v6 + 88))(v6);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v41, *v25, v25[1], 0xAAAAAAAAAAAAAAABLL * ((v25[1] - *v25) >> 3));
  (*(*a2 + 160))(v40, a2);
  v26 = v41;
  if (v42 != v41)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = (v26 + v27);
      if (*(v29 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v39, *v29, *(v29 + 1));
      }

      else
      {
        v30 = *v29;
        v39.__r_.__value_.__r.__words[2] = *(v29 + 2);
        *&v39.__r_.__value_.__l.__data_ = v30;
      }

      v31 = MIL::IRValueType::AsTensorType(*(v40[0] + v28));
      if (std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>(a1 + 37, &v39.__r_.__value_.__l.__data_))
      {
        v32 = std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>(a1 + 37, &v39.__r_.__value_.__l.__data_);
        v33 = v32;
        if (*(v32 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v32[5], v32[6]);
        }

        else
        {
          __p = *(v32 + 5);
        }

        v37 = *(v33 + 16);
        v38 = *(v33 + 68);
        v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = __p.__r_.__value_.__l.__size_;
        }

        if (v34)
        {
          MilTranslator::OpTranslator::EnsureTransposeProducesChannelFirst(a1, &v39, v31);
          v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        if (v35 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      ++v28;
      v26 = v41;
      v27 += 24;
    }

    while (v28 < 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3));
  }

  *a3 = 0;
  std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  __p.__r_.__value_.__r.__words[0] = &v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__r_.__value_.__r.__words[0] = v44;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_259969898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  a9 = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  a9 = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void MilTranslator::OpTranslator::EnsureTransposeProducesChannelFirst(uint64_t a1, uint64_t a2, ANEMachineIR::Utils *a3)
{
  v6 = (*(*a3 + 96))(a3);
  v7 = (v6[1] - *v6) >> 3;
  if (v8[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v39, *v8, *(v8 + 1));
  }

  else
  {
    v39 = *v8;
  }

  if (v9[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *v9, *(v9 + 1));
  }

  else
  {
    v38 = *v9;
  }

  if (*(a2 + 23) >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  p_str = &__str;
  std::string::basic_string[abi:ne200100](&__str, v10 + 13);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(p_str, v12, v10);
  }

  strcpy(p_str + v10, "_channel_last");
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v13 = (*(*a3 + 96))(a3);
  v15 = *v13;
  v14 = v13[1];
  v16 = (v14 - *v13) >> 3;
  std::vector<int>::vector[abi:ne200100](&__str, v16);
  if (v14 != v15)
  {
    v17 = &v37;
    v18 = __str.__r_.__value_.__r.__words[0];
    do
    {
      v19 = *v17++;
      *v18++ = v19;
      --v16;
    }

    while (v16);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "transpose");
  MilTranslator::OpTranslator::AddOperation(a1);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&v29, "x");
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    v28 = v36;
  }

  MIL::Builder::OperationBuilder::AddInput();
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:ne200100]<0>(&v25, "perm");
  MIL::Builder::OperationBuilder::AddInputInt32();
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  ANEMachineIR::Utils::GetStaticTensorShape(a3, v20, v24);
  v21 = *(a1 + 8);
  (*(*a3 + 88))(a3);
  MIL::IRTensorValueType::Make();
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  MIL::Builder::OperationBuilder::AddOutput();
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v24[0])
  {
    v24[1] = v24[0];
    operator delete(v24[0]);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (__str.__r_.__value_.__r.__words[0])
  {
    __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }
}

void sub_259969D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  v52 = *(v50 - 184);
  if (v52)
  {
    *(v50 - 176) = v52;
    operator delete(v52);
  }

  if (*(v50 - 137) < 0)
  {
    operator delete(*(v50 - 160));
  }

  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  if (*(v50 - 73) < 0)
  {
    operator delete(*(v50 - 96));
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::OpTranslator::AddOperation(uint64_t a1)
{
  v2 = *(a1 + 8);
  OpsetString = ANEMachineIR::GetOpsetString(**(a1 + 96));
  std::string::basic_string[abi:ne200100]<0>(__p, OpsetString);
  MIL::MILContext::GetOpset();
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  MIL::IROpset::TryGetOperatorSharedPtr();
  v4 = __p[0];
  if (__p[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v7 = std::string::append(&v9, "'");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA9540](exception, __p);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *(a1 + 80);
  MIL::Builder::BlockBuilder::AddOperation();
}

void sub_259969FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

uint64_t MilTranslator::OpTranslator::GetBlockBuilder@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 88);
  *a2 = *(this + 80);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void MilTranslator::OpTranslator::ConstructProgram(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 64);
  MIL::Builder::ProgramBuilder::GetFunction();
  v13 = *a3;
  v11 = a3 + 1;
  v12 = v13;
  if (v13 != v11)
  {
    do
    {
      if (*(v12 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, v12[4], v12[5]);
      }

      else
      {
        v26 = *(v12 + 4);
      }

      v14 = v12[7];
      MIL::Builder::FunctionBuilder::AddInput();
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v15 = v12[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v12[2];
          v17 = *v16 == v12;
          v12 = v16;
        }

        while (!v17);
      }

      v12 = v16;
    }

    while (v16 != v11);
  }

  v19 = *a4;
  v18 = a4[1];
  while (v19 != v18)
  {
    v20 = *(a1 + 80);
    MIL::Builder::BlockBuilder::AddOutput();
    v19 += 24;
  }

  MIL::Builder::ProgramBuilder::CreateProgram(&v24, *(a1 + 64));
  if (MIL::ValidationResult::IsGood(v25))
  {
    v21 = v24;
    v24 = 0;
    v22 = *a2;
    *a2 = v21;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    *a5 = 0;
    std::string::basic_string[abi:ne200100]<0>((a5 + 8), &unk_259A4D977);
  }

  else
  {
    *a5 = 3;
    MIL::MILResult::GetMessageWithLocation((a5 + 8), v25);
  }

  MEMORY[0x259CA8F00](v25);
  v23 = v24;
  v24 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }
}

void sub_25996A24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = *(v22 - 72);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(exception_object);
}

void *MilTranslator::OpTranslator::InferTransposedShape@<X0>(uint64_t *a1@<X0>, unsigned int **a2@<X1>, void *a3@<X8>)
{
  v4 = (a1[1] - *a1) >> 3;
  v6 = *a2;
  v5 = a2[1];
  if (v4 != v5 - *a2)
  {
    MilTranslator::OpTranslator::InferTransposedShape();
  }

  result = std::vector<unsigned long long>::vector[abi:ne200100](a3, v4);
  if (v5 != v6)
  {
    v10 = *a2;
    v11 = *a1;
    v12 = *a3;
    if (v4 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v4;
    }

    do
    {
      v15 = *v10++;
      v14 = v15;
      if ((v15 & 0x80000000) != 0 || v4 <= v14)
      {
        __assert_rtn("InferTransposedShape", "OpTranslator.cpp", 215, "positive_perm[i] >= 0 && positive_perm[i] < rank");
      }

      *v12++ = *(v11 + 8 * v14);
      --v13;
    }

    while (v13);
  }

  return result;
}

void sub_25996A358(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::OpTranslator::InferChannelLastTransposeInfo(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 21) = 0;
  *(a4 + 16) = 0;
  if (std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>((a1 + 296), a2))
  {
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>((a1 + 296), a2);
    std::string::operator=(a4, (v8 + 5));
    v9 = *(v8 + 16);
    *(a4 + 28) = *(v8 + 68);
    *(a4 + 24) = v9;
  }

  else
  {
    if (v10[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *v10, *(v10 + 1));
    }

    else
    {
      v22 = *v10;
    }

    if (v11[23] < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *v11, *(v11 + 1));
    }

    else
    {
      v21 = *v11;
    }

    if (*(a2 + 23) >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v12 + 13);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      memmove(p_p, v14, v12);
    }

    strcpy(p_p + v12, "_channel_last");
    v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *a4 = v17;
    *(a4 + 16) = v18;
    HIBYTE(v18) = 0;
    LOBYTE(v17) = 0;
    *(a4 + 24) = v19;
    *(a4 + 28) = v20;
    if (v15 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }
}

void sub_25996A54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 - 41) < 0)
  {
    operator delete(*(v25 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::GetShapePermInfoFromAxisConvention@<X0>(std::string *__str@<X2>, uint64_t a2@<X0>, uint64_t *a3@<X1>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 21) = 0;
  *(a4 + 16) = 0;
  result = std::string::operator=(a4, __str);
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = *(a3 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = a3[1];
  }

  if (v8 != v9)
  {
    __assert_rtn("GetShapePermInfoFromAxisConvention", "OpTranslator.cpp", 39, "source.size() == target.size()");
  }

  if (v8)
  {
    v10 = 0;
    v11 = a4 + 24;
    do
    {
      if (*(a3 + 23) >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = *a3;
      }

      result = std::string::find(a2, *(v12 + v10), 0);
      *(v11 + v10++) = result;
    }

    while (v8 != v10);
  }

  return result;
}

void sub_25996A694(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MilTranslator::OpTranslator::IsTransposeRequired(void *a1)
{
  v1 = a1[1];
  v2 = v1 - *a1;
  if (v1 == *a1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = v2 >> 2;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      v4 |= v3 != *(*a1 + 4 * v3);
      ++v3;
    }

    while (v5 != v3);
  }

  return v4 & 1;
}

void *MilTranslator::OpTranslator::GetTransposeOpParamPerm@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X8>)
{
  v3 = a2;
  result = std::vector<int>::vector[abi:ne200100](a3, a2);
  if (v3)
  {
    v6 = (a1 + 24);
    v7 = *result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v3;
    }

    while (v3);
  }

  return result;
}

void MilTranslator::OpTranslator::GetChannelLastTensorNameMayInsertTranspose(uint64_t a1@<X0>, uint64_t a2@<X1>, ANEMachineIR::Utils *a3@<X2>, std::string *a4@<X8>)
{
  v8 = (*(*a3 + 96))(a3);
  v10 = *v8;
  v9 = v8[1];
  if (std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>((a1 + 296), a2))
  {
    v11 = std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>((a1 + 296), a2);
    v12 = v11;
    if (*(v11 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, v11[5], v11[6]);
    }

    else
    {
      v39 = *(v11 + 5);
    }

    LODWORD(v40) = *(v12 + 16);
    BYTE4(v40) = *(v12 + 68);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v39.__r_.__value_.__l.__size_)
      {
        std::string::__init_copy_ctor_external(a4, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
        if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        v13 = v39.__r_.__value_.__r.__words[0];
        goto LABEL_70;
      }

      operator delete(v39.__r_.__value_.__l.__data_);
    }

    else if (*(&v39.__r_.__value_.__s + 23))
    {
      *a4 = v39;
      return;
    }
  }

  MilTranslator::OpTranslator::InferChannelLastTransposeInfo(a1, a2, (v9 - v10) >> 3, &v48);
  v14 = (*(*a3 + 96))(a3);
  v16 = *v14;
  v15 = v14[1];
  v17 = (v15 - *v14) >> 3;
  std::vector<int>::vector[abi:ne200100](&v46, v17);
  if (v15 != v16)
  {
    v18 = &v49;
    v19 = v46;
    do
    {
      v20 = *v18++;
      *v19++ = v20;
      --v17;
    }

    while (v17);
  }

  if (v47 == v46)
  {
    goto LABEL_24;
  }

  v21 = 0;
  v22 = 0;
  v23 = v47 - v46;
  if (v23 <= 1)
  {
    v23 = 1;
  }

  do
  {
    v22 |= v21 != v46[v21];
    ++v21;
  }

  while (v23 != v21);
  if ((v22 & 1) == 0)
  {
LABEL_24:
    v42 = 0uLL;
    v43 = 0;
    v44 = 50462976;
    v45 = 4;
    std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&v39, a2, &v42);
    std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>((a1 + 296), &v39.__r_.__value_.__l.__data_);
    if (v41 < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a4, *a2, *(a2 + 8));
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *a2;
      a4->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "transpose");
    MilTranslator::OpTranslator::AddOperation(a1);
    if (v37 < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&v33, "x");
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, *a2, *(a2 + 8));
    }

    else
    {
      v32 = *a2;
    }

    MIL::Builder::OperationBuilder::AddInput();
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }

    std::string::basic_string[abi:ne200100]<0>(&v29, "perm");
    memset(&v39, 0, sizeof(v39));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v39, v46, v47, v47 - v46);
    MIL::Builder::OperationBuilder::AddInputInt32();
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (v39.__r_.__value_.__r.__words[0])
    {
      v39.__r_.__value_.__l.__size_ = v39.__r_.__value_.__r.__words[0];
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }

    ANEMachineIR::Utils::GetStaticTensorShape(a3, v24, &v42);
    MilTranslator::OpTranslator::InferTransposedShape(&v42, &v46, v28);
    v25 = *(a1 + 8);
    (*(*a3 + 88))(a3);
    MIL::IRTensorValueType::Make();
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v26, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = v48;
    }

    MIL::Builder::OperationBuilder::AddOutput();
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>::pair[abi:ne200100]<std::string const&,std::pair<std::string,std::array<unsigned char,5ul>>&,0>(&v39, a2, &v48);
    std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>>((a1 + 296), &v39.__r_.__value_.__l.__data_);
    if (v41 < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(a4, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
    }

    else
    {
      *a4 = v48;
    }

    if (v28[0])
    {
      v28[1] = v28[0];
      operator delete(v28[0]);
    }

    if (v42)
    {
      *(&v42 + 1) = v42;
      operator delete(v42);
    }

    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    v13 = v48.__r_.__value_.__r.__words[0];
LABEL_70:
    operator delete(v13);
  }
}

void sub_25996AC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, std::__shared_weak_count *a51)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a51);
  }

  v53 = *(v51 - 120);
  if (v53)
  {
    *(v51 - 112) = v53;
    operator delete(v53);
  }

  if (*(v51 - 73) < 0)
  {
    operator delete(*(v51 - 96));
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::pair[abi:ne200100]<char const(&)[4],std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void sub_25996AE20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>>,TranslatorStatus ()(MIL::IROperation const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286AB1548;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>>,TranslatorStatus ()(MIL::IROperation const&)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t std::__function::__func<std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>>,TranslatorStatus ()(MIL::IROperation const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::pair[abi:ne200100]<char const(&)[9],std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void sub_25996AFF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::pair[abi:ne200100]<char const(&)[6],std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void sub_25996B0A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::pair[abi:ne200100]<char const(&)[5],std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void sub_25996B14C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::pair[abi:ne200100]<char const(&)[7],std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void sub_25996B1F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::pair[abi:ne200100]<char const(&)[8],std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void sub_25996B2A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::pair[abi:ne200100]<char const(&)[12],std::__bind<TranslatorStatus (MilTranslator::OpTranslator::*)(MIL::IROperation const&),MilTranslator::OpTranslator*,std::placeholders::__ph<1> const&>,0>(_BYTE *a1, char *a2, __int128 *a3)
{
  v4 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5 = *a3;
  v6 = *(a3 + 2);
  *(v4 + 6) = 0;
  operator new();
}

void sub_25996B350(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<TranslatorStatus ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<std::function<std::string ()(std::string const&)>>::__shared_ptr_emplace[abi:ne200100]<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<std::function<std::string ()(std::string const&)>>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286AB1608;
  std::allocator<std::function<std::string ()(std::string const&)>>::construct[abi:ne200100]<std::function<std::string ()(std::string const&)>,ANEMachineIR::Utils::CheckedCounterNameGenerator>(&v2, (a1 + 3), a2);
}

void std::__shared_ptr_emplace<std::function<std::string ()(std::string const&)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286AB1608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

void std::allocator<std::function<std::string ()(std::string const&)>>::construct[abi:ne200100]<std::function<std::string ()(std::string const&)>,ANEMachineIR::Utils::CheckedCounterNameGenerator>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *a3;
  v3 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *(a2 + 24) = 0;
  operator new();
}

void sub_25996B5C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<ANEMachineIR::Utils::CheckedCounterNameGenerator>,std::string ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_286AB1658;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<ANEMachineIR::Utils::CheckedCounterNameGenerator>,std::string ()(std::string const&)>::~__func(void *a1)
{
  *a1 = &unk_286AB1658;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x259CA9760);
}

void *std::__function::__func<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<ANEMachineIR::Utils::CheckedCounterNameGenerator>,std::string ()(std::string const&)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_286AB1658;
  a2[1] = v2;
  v3 = result[3];
  a2[2] = result[2];
  a2[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<ANEMachineIR::Utils::CheckedCounterNameGenerator>,std::string ()(std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<ANEMachineIR::Utils::CheckedCounterNameGenerator>,std::string ()(std::string const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<ANEMachineIR::Utils::CheckedCounterNameGenerator,std::allocator<ANEMachineIR::Utils::CheckedCounterNameGenerator>,std::string ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL ANEMachineIR::Utils::CheckedCounterNameGenerator::operator()@<W0>(MIL::Builder::BlockBuilder **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  for (i = 0; ; ++i)
  {
    ANEMachineIR::Utils::CheckedCounterNameGenerator::Candidate(a2, i, a3);
    result = ANEMachineIR::Utils::CheckedCounterNameGenerator::NameExists(a1, a3);
    if (!result)
    {
      break;
    }

    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }
  }

  return result;
}

void sub_25996B85C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Utils::CheckedCounterNameGenerator::Candidate(const void **a1@<X1>, unint64_t a2@<X2>, std::string *a3@<X8>)
{
  if (a2)
  {
    if (*(a1 + 23) >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v7 = &v16;
    std::string::basic_string[abi:ne200100](&v16, v6 + 1);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v16.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (*(a1 + 23) >= 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = *a1;
      }

      memmove(v7, v8, v6);
    }

    *(&v7->__r_.__value_.__l.__data_ + v6) = 95;
    std::to_string(&__p, a2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v16, p_p, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    a3->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&a3->__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else if (*(a1 + 23) < 0)
  {
    v13 = *a1;
    v14 = a1[1];

    std::string::__init_copy_ctor_external(a3, v13, v14);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = a1[2];
  }
}

void sub_25996B9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

BOOL ANEMachineIR::Utils::CheckedCounterNameGenerator::NameExists(MIL::Builder::BlockBuilder **a1, const void **a2)
{
  v4 = 1;
  if (!(*(**a1 + 24))(*a1, a2, 1))
  {
    MIL::Builder::BlockBuilder::GetOperations(&v18, a1[1]);
    v5 = v18;
    v6 = v19;
    if (v18 != v19)
    {
      while (1)
      {
        v7 = *v5;
        v8 = *(v5 + 8);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        OutputName = MIL::Builder::OperationBuilder::GetOutputName(v7);
        v10 = *(OutputName + 23);
        if (v10 >= 0)
        {
          v11 = *(OutputName + 23);
        }

        else
        {
          v11 = OutputName[1];
        }

        v12 = *(a2 + 23);
        v13 = v12;
        if (v12 < 0)
        {
          v12 = a2[1];
        }

        if (v11 == v12)
        {
          break;
        }

        v4 = 0;
        if (v8)
        {
          goto LABEL_19;
        }

LABEL_20:
        v5 += 16;
        v16 = v5 == v6 || v4;
        if (v16)
        {
          goto LABEL_26;
        }
      }

      if (v10 < 0)
      {
        OutputName = *OutputName;
      }

      v14 = *a2;
      if (v13 >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      v4 = memcmp(OutputName, v15, v11) == 0;
      if (!v8)
      {
        goto LABEL_20;
      }

LABEL_19:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      goto LABEL_20;
    }

    v4 = 0;
LABEL_26:
    v20 = &v18;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v20);
  }

  return v4;
}

void sub_25996BB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  a12 = &a9;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::string ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *std::pair<std::unique_ptr<MIL::IRProgram>,MIL::ValidationResult>::~pair(uint64_t *a1)
{
  MEMORY[0x259CA8F00](a1 + 1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,0>(uint64_t a1)
{
  std::__function::__value_func<TranslatorStatus ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<std::string,std::array<unsigned char,5ul>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__shared_ptr_pointer<MIL::Builder::ProgramBuilder  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::Builder::ProgramBuilder  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Builder::ProgramBuilder  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 56 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>> const&>(a1, a2);
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::__construct_node_hash<std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25996C10C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::function<TranslatorStatus ()(MIL::IROperation const&)>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::__function::__value_func<TranslatorStatus ()(MIL::IROperation const&)>::__value_func[abi:ne200100](&this[1], a2 + 24);
  return this;
}

void sub_25996C244(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<TranslatorStatus ()(MIL::IROperation const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<TranslatorStatus ()(MIL::IROperation const&)>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25996C6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<std::string,std::array<unsigned char,5ul>>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *std::vector<unsigned long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25996C9EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_OpTranslator_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(v0 + 24, "C");
  std::string::basic_string[abi:ne200100]<0>(byte_28154AEF0, "NC");
  std::string::basic_string[abi:ne200100]<0>(byte_28154AF08, "NCW");
  std::string::basic_string[abi:ne200100]<0>(byte_28154AF20, "NCHW");
  std::string::basic_string[abi:ne200100]<0>(byte_28154AF38, "NCDHW");
  std::string::basic_string[abi:ne200100]<0>(v1 + 24, "C");
  std::string::basic_string[abi:ne200100]<0>(byte_28154AE10, "NC");
  std::string::basic_string[abi:ne200100]<0>(byte_28154AE28, "NWC");
  std::string::basic_string[abi:ne200100]<0>(byte_28154AE40, "NHWC");
  std::string::basic_string[abi:ne200100]<0>(byte_28154AE58, "NDHWC");
}

void _GLOBAL__sub_I_OpTranslator_cpp_cold_1(void **a1)
{
  do
  {
    v2 = *(a1 - 1);
    a1 -= 3;
    if (v2 < 0)
    {
      operator delete(*a1);
    }
  }
}

void _GLOBAL__sub_I_OpTranslator_cpp_cold_2(void **a1)
{
  do
  {
    v2 = *(a1 - 1);
    a1 -= 3;
    if (v2 < 0)
    {
      operator delete(*a1);
    }
  }
}

void ANEMachineIR::H2021::Opsets::aneflowh2021Opset::Register(ANEMachineIR::H2021::Opsets::aneflowh2021Opset *this, MIL::MILContext *a2)
{
  v3 = 12;
  strcpy(__p, "aneflowh2021");
  operator new();
}

void sub_25996CE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MIL::IROpset *a10, uint64_t *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    ANEMachineIR::H2021::Opsets::aneflowh2021Opset::Register(v18);
  }

  std::unique_ptr<ANEMachineIR::H2021::Opsets::aneflowh2021Opset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

MIL::IROpset **std::unique_ptr<ANEMachineIR::H2021::Opsets::aneflowh2021Opset>::~unique_ptr[abi:ne200100](MIL::IROpset **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IROpset::~IROpset(v2);
    MEMORY[0x259CA9760]();
  }

  return a1;
}

void sub_25996CFAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Opsets::aneflowh2021Opset::GetOps(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(&v3, "base_ne_matmul");
  ANEMachineIR::H2021::BaseNeMatmul::Make();
}

void sub_25996E380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = *(v15 - 40);
  *(v15 - 40) = 0;
  if (v17)
  {
    ANEMachineIR::H2021::Opsets::aneflowh2021Opset::GetOps(v17);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(v14);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::Opsets::aneflowh2021Opset::~aneflowh2021Opset(ANEMachineIR::H2021::Opsets::aneflowh2021Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x259CA9760);
}

void sub_25996EC4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[15],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996ED34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<MIL::IROperator  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::IROperator  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IROperator  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_25996EED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[6],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996EFC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[7],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F120(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[14],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F280(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F2F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[12],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F3E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[16],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F540(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F5B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[8],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F6A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[10],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F800(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F878(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[11],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996F960(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996F9D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[9],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996FAC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996FB38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[17],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996FC20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996FC98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[13],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996FD80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25996FDF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IROperator const>>::pair[abi:ne200100]<char const(&)[5],std::unique_ptr<MIL::IROperator>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IROperator const>::shared_ptr[abi:ne200100]<MIL::IROperator,std::default_delete<MIL::IROperator>,0>(v5 + 3, a3);
  return a1;
}

void sub_25996FEE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::H2021::BasePeElementWiseBinary::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259971A8C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x310], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeAdd::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeAdd;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeAddAbs::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeAddAbs;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeAddMul::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeAddMul;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeAddSquare::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeAddSquare;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_2599726F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeEqual::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeEqual;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_2599727D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeGreater::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeGreater;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_2599728B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeGreaterEqual::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeGreaterEqual;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeLess::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeLess;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeLessEqual::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeLessEqual;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeMaximum::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeMaximum;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeMinimum::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeMinimum;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeMul::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeMul;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeNotEqual::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeNotEqual;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseBinary::Make();
}

void sub_259972ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::BasePeElementWiseUnary::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259974498(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x260], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeAbs::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeAbs;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseUnary::Make();
}

void sub_259974CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::PeSquare::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2021::Validators::ValidatePeSquare;
  v4[3] = v4;
  ANEMachineIR::H2021::BasePeElementWiseUnary::Make();
}

void sub_259974DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeActivation::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259975A90(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeAdd::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25997737C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeMaximum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259978A4C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeMinimum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25997A02C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeMul::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25997B8A0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2021::NeSquare::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25997CE04(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::Opsets::aneflowh2020Opset::Register(ANEMachineIR::H2020::Opsets::aneflowh2020Opset *this, MIL::MILContext *a2)
{
  v3 = 12;
  strcpy(__p, "aneflowh2020");
  operator new();
}

void sub_25997D3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, MIL::IROpset *a10, uint64_t *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v18 = a11;
  a11 = 0;
  if (v18)
  {
    ANEMachineIR::H2021::Opsets::aneflowh2021Opset::Register(v18);
  }

  std::unique_ptr<ANEMachineIR::H2021::Opsets::aneflowh2021Opset>::~unique_ptr[abi:ne200100](&a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25997D4BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::Opsets::aneflowh2020Opset::GetOps(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(&v3, "base_ne_matmul");
  ANEMachineIR::H2020::BaseNeMatmul::Make();
}

void sub_25997E890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = *(v15 - 40);
  *(v15 - 40) = 0;
  if (v17)
  {
    ANEMachineIR::H2021::Opsets::aneflowh2021Opset::GetOps(v17);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::~__hash_table(v14);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2020::Opsets::aneflowh2020Opset::~aneflowh2020Opset(ANEMachineIR::H2020::Opsets::aneflowh2020Opset *this)
{
  MIL::IROpset::~IROpset(this);

  JUMPOUT(0x259CA9760);
}

void ANEMachineIR::H2022::BasePeElementWiseBinary::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259980BE8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x310], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeAdd::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeAdd;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_2599815AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeAddAbs::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeAddAbs;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_25998168C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeAddMul::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeAddMul;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_25998176C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeAddSquare::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeAddSquare;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_25998184C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeEqual::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeEqual;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_25998192C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeGreater::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeGreater;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeGreaterEqual::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeGreaterEqual;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeLess::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeLess;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeLessEqual::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeLessEqual;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeMaximum::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeMaximum;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeMinimum::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeMinimum;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeMul::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeMul;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_259981F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeNotEqual::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeNotEqual;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseBinary::Make();
}

void sub_25998202C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::BasePeElementWiseUnary::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599835F4(_Unwind_Exception *a1)
{
  v4 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x260], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeAbs::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeAbs;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseUnary::Make();
}

void sub_259983E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::PeSquare::Make(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v2 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4[0] = &unk_286AADC48;
  v4[1] = ANEMachineIR::H2022::Validators::ValidatePeSquare;
  v4[3] = v4;
  ANEMachineIR::H2022::BasePeElementWiseUnary::Make();
}

void sub_259983F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__function::__value_func<MIL::ValidationResult ()(MIL::IROperation const&)>::~__value_func[abi:ne200100](&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeActivation::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259984BEC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeAdd::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599864D8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeMaximum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259987BA8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeMinimum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_259989188(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeMul::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25998A9FC(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeSquare::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25998BF60(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 112), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 216), 0);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::Interpreter::TransposeCpu::Run(MIL::IROperation *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v158[2] = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 56))(a1);
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    if (*(v4 + 8) != 9)
    {
      goto LABEL_10;
    }

    v4 = *v4;
  }

  else if (v5 != 9)
  {
    goto LABEL_10;
  }

  if (*v4 == 0x736F70736E617274 && *(v4 + 8) == 101)
  {
    std::string::basic_string[abi:ne200100]<0>(__src, "x");
    InterpretedTensorValue = MIL::ANEMachineIR::Interpreter::TryGetInterpretedTensorValue(a2, a1, __src);
    v20 = InterpretedTensorValue;
    if ((__src[23] & 0x80000000) != 0)
    {
      operator delete(*__src);
      if (v20)
      {
LABEL_26:
        OutputType = MIL::IROperation::GetOutputType(a1);
        if (!(*(*OutputType + 24))(OutputType))
        {
          *a3 = 3;
          std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Output type is not a tensor.");
          goto LABEL_23;
        }

        std::string::basic_string[abi:ne200100]<0>(__src, "perm");
        ParameterValue = MIL::IROperation::GetParameterValue();
        MIL::IRValue::AsTensor(ParameterValue);
        Data = MIL::IRTensorValue::GetDataView<int>();
        v152 = v23;
        if ((__src[23] & 0x80000000) != 0)
        {
          operator delete(*__src);
          v23 = v152;
        }

        std::vector<int>::vector[abi:ne200100](&v149, v23);
        if (v150 != v149)
        {
          v24 = 0;
          do
          {
            v25 = MIL::Util::Span<int const,18446744073709551615ul>::At(&Data, v24);
            v26 = v149;
            v149[v24++] = *v25;
          }

          while (v24 < (v150 - v26) >> 2);
        }

        v27 = (*(*v20 + 32))(v20);
        v28 = (*(*v27 + 88))(v27);
        v29 = MIL::IROperation::GetOutputType(a1);
        v30 = MIL::IRValueType::AsTensorType(v29);
        if (v28 != (*(*v30 + 88))(v30))
        {
          *a3 = 3;
          std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Expect same data type for input and output.");
LABEL_164:
          v17 = v149;
          if (!v149)
          {
            goto LABEL_23;
          }

          v150 = v149;
          goto LABEL_22;
        }

        v31 = MIL::IROperation::GetOutputType(a1);
        v32 = MIL::IRValueType::AsTensorType(v31);
        v33 = (*(*v32 + 16))(v32);
        v34 = (*(*v20 + 32))(v20);
        ANEMachineIR::Utils::GetStaticTensorShape(v34, v35, &v147);
        v36 = MIL::IROperation::GetOutputType(a1);
        v37 = MIL::IRValueType::AsTensorType(v36);
        ANEMachineIR::Utils::GetStaticTensorShape(v37, v38, &v145);
        if (v28 == 4)
        {
          v56 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
          v57 = v148 - v147;
          if (v148 - v147 == v146 - v145)
          {
            v58 = v57 >> 3;
            if (v57 >> 3 == (v150 - v149) >> 2)
            {
              v59 = v56;
              v142 = 0;
              v143 = 0;
              v144 = 0;
              std::vector<MIL::Fp16>::resize(&v142, v33);
              memset(&v156, 0, sizeof(v156));
              std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v156, v147, v148, (v148 - v147) >> 3);
              memset(&v155, 0, sizeof(v155));
              std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v155, v145, v146, (v146 - v145) >> 3);
              if (v58 > 2)
              {
                if (v58 == 3)
                {
                  *__src = vdupq_n_s64(1uLL);
                  std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v156, (v156.__r_.__value_.__r.__words[0] + 8), __src, &__src[16], 2);
                  *__src = vdupq_n_s64(1uLL);
                  std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, &__src[16], 2);
                }

                else if (v58 == 4)
                {
                  *__src = 1;
                  std::vector<unsigned long long>::insert(&v156, (v156.__r_.__value_.__r.__words[0] + 8), __src);
                  *__src = 1;
                  std::vector<unsigned long long>::insert(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src);
                }
              }

              else if (v58 == 1)
              {
                *__src = xmmword_259A4A808;
                *&__src[16] = unk_259A4A818;
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v156, (v156.__r_.__value_.__r.__words[0] + 8), __src, v158, 4);
                *__src = xmmword_259A4A808;
                *&__src[16] = unk_259A4A818;
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, v158, 4);
              }

              else if (v58 == 2)
              {
                *__src = xmmword_259A4A7F0;
                *&__src[16] = 1;
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v156, (v156.__r_.__value_.__r.__words[0] + 8), __src, &__src[24], 3);
                *__src = xmmword_259A4A7F0;
                *&__src[16] = 1;
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, &__src[24], 3);
              }

              v138 = __p;
              if (*v156.__r_.__value_.__l.__data_)
              {
                v106 = *v156.__r_.__value_.__l.__data_;
                v107 = 0;
                v108 = 0;
                v109 = *(v155.__r_.__value_.__r.__words[0] + 32);
                v110 = *(v156.__r_.__value_.__r.__words[0] + 8);
                v111 = *(v156.__r_.__value_.__r.__words[0] + 16);
                v112 = *(v156.__r_.__value_.__r.__words[0] + 24);
                v113 = *(v156.__r_.__value_.__r.__words[0] + 32);
                v114 = v109 * *(v155.__r_.__value_.__r.__words[0] + 24);
                v115 = v114 * *(v155.__r_.__value_.__r.__words[0] + 16);
                v117 = *(__p + 3);
                v116 = *(__p + 4);
                v119 = *(__p + 1);
                v118 = *(__p + 2);
                v120 = *__p;
                v121 = *(v155.__r_.__value_.__r.__words[0] + 8) * v115;
                do
                {
                  if (v110)
                  {
                    for (i = 0; i != v110; ++i)
                    {
                      if (v111)
                      {
                        for (j = 0; j != v111; ++j)
                        {
                          if (v112)
                          {
                            v124 = 0;
                            v125 = v142;
                            do
                            {
                              if (v113)
                              {
                                for (k = 0; k != v113; ++k)
                                {
                                  *__src = v107;
                                  *&__src[8] = i;
                                  *&__src[16] = j;
                                  *&__src[24] = v124;
                                  v158[0] = k;
                                  v125[*&__src[8 * v116] + *&__src[8 * v119] * v115 + v114 * *&__src[8 * v118] + *&__src[8 * v117] * v109 + v121 * *&__src[8 * v120]] = *(v59 + 2 * v108 + 2 * k);
                                }

                                v108 += k;
                              }

                              ++v124;
                            }

                            while (v124 != v112);
                          }
                        }
                      }
                    }
                  }

                  ++v107;
                }

                while (v107 != v106);
              }

              v154 = v138;
              operator delete(v138);
              if (v155.__r_.__value_.__r.__words[0])
              {
                v155.__r_.__value_.__l.__size_ = v155.__r_.__value_.__r.__words[0];
                operator delete(v155.__r_.__value_.__l.__data_);
              }

              if (v156.__r_.__value_.__r.__words[0])
              {
                v156.__r_.__value_.__l.__size_ = v156.__r_.__value_.__r.__words[0];
                operator delete(v156.__r_.__value_.__l.__data_);
              }

              (*(*a1 + 200))(__src, a1);
              v127 = *__src;
              if (*&__src[8] == *__src)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v128 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v128);
              MIL::IRTensorValueType::MakeFloat16Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v127, &v156.__r_.__value_.__l.__data_);
              v129 = v156.__r_.__value_.__r.__words[0];
              v156.__r_.__value_.__r.__words[0] = 0;
              if (v129)
              {
                (*(*v129 + 8))(v129);
              }

              goto LABEL_158;
            }

            v134 = "x_rank == perm.size()";
            v135 = 68;
          }

          else
          {
            v134 = "x_rank == o_shape.size()";
            v135 = 67;
          }

          __assert_rtn("ComputeValue", "TransposeCpu.cpp", v135, v134);
        }

        if (v28 != 9)
        {
          if (v28 != 14)
          {
            *a3 = 3;
            std::string::basic_string[abi:ne200100]<0>((a3 + 8), "Unimplemented input dtype");
LABEL_160:
            if (v145)
            {
              v146 = v145;
              operator delete(v145);
            }

            if (v147)
            {
              v148 = v147;
              operator delete(v147);
            }

            goto LABEL_164;
          }

          v39 = MIL::IRTensorValue::GetDataView<unsigned char>();
          v40 = v147;
          v41 = v148;
          v42 = v148 - v147;
          if (v148 - v147 == v146 - v145)
          {
            v43 = v42 >> 3;
            if (v42 >> 3 == (v150 - v149) >> 2)
            {
              v44 = v39;
              v142 = 0;
              v143 = 0;
              v144 = 0;
              if (v33)
              {
                std::vector<unsigned char>::__append(&v142, v33);
                v40 = v147;
                v41 = v148;
                v45 = (v148 - v147) >> 3;
              }

              else
              {
                v45 = v42 >> 3;
              }

              memset(&v156, 0, sizeof(v156));
              std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v156, v40, v41, v45);
              memset(&v155, 0, sizeof(v155));
              std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v155, v145, v146, (v146 - v145) >> 3);
              if (v43 > 2)
              {
                if (v43 == 3)
                {
                  *__src = vdupq_n_s64(1uLL);
                  std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v156, (v156.__r_.__value_.__r.__words[0] + 8), __src, &__src[16], 2);
                  *__src = vdupq_n_s64(1uLL);
                  std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, &__src[16], 2);
                }

                else if (v43 == 4)
                {
                  *__src = 1;
                  std::vector<unsigned long long>::insert(&v156, (v156.__r_.__value_.__r.__words[0] + 8), __src);
                  *__src = 1;
                  std::vector<unsigned long long>::insert(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src);
                }
              }

              else if (v43 == 1)
              {
                *__src = xmmword_259A4A808;
                *&__src[16] = unk_259A4A818;
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v156, (v156.__r_.__value_.__r.__words[0] + 8), __src, v158, 4);
                *__src = xmmword_259A4A808;
                *&__src[16] = unk_259A4A818;
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, v158, 4);
              }

              else if (v43 == 2)
              {
                *__src = xmmword_259A4A7F0;
                *&__src[16] = 1;
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v156, (v156.__r_.__value_.__r.__words[0] + 8), __src, &__src[24], 3);
                *__src = xmmword_259A4A7F0;
                *&__src[16] = 1;
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, &__src[24], 3);
              }

              v83 = __p;
              v137 = *v156.__r_.__value_.__l.__data_;
              if (*v156.__r_.__value_.__l.__data_)
              {
                v84 = 0;
                v85 = 0;
                v86 = *(v155.__r_.__value_.__r.__words[0] + 32);
                v87 = *(v156.__r_.__value_.__r.__words[0] + 8);
                v88 = *(v156.__r_.__value_.__r.__words[0] + 16);
                v89 = *(v156.__r_.__value_.__r.__words[0] + 24);
                v90 = *(v156.__r_.__value_.__r.__words[0] + 32);
                v91 = v86 * *(v155.__r_.__value_.__r.__words[0] + 24);
                v92 = v91 * *(v155.__r_.__value_.__r.__words[0] + 16);
                v94 = *(__p + 3);
                v93 = *(__p + 4);
                v96 = *(__p + 1);
                v95 = *(__p + 2);
                v97 = *__p;
                v98 = *(v155.__r_.__value_.__r.__words[0] + 8) * v92;
                do
                {
                  if (v87)
                  {
                    for (m = 0; m != v87; ++m)
                    {
                      if (v88)
                      {
                        for (n = 0; n != v88; ++n)
                        {
                          if (v89)
                          {
                            for (ii = 0; ii != v89; ++ii)
                            {
                              if (v90)
                              {
                                for (jj = 0; jj != v90; ++jj)
                                {
                                  *__src = v84;
                                  *&__src[8] = m;
                                  *&__src[16] = n;
                                  *&__src[24] = ii;
                                  v158[0] = jj;
                                  *(v142 + *&__src[8 * v93] + *&__src[8 * v96] * v92 + v91 * *&__src[8 * v95] + *&__src[8 * v94] * v86 + v98 * *&__src[8 * v97]) = *(v44 + v85 + jj);
                                }

                                v85 += jj;
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  ++v84;
                }

                while (v84 != v137);
                v83 = __p;
              }

              if (v83)
              {
                v154 = v83;
                operator delete(v83);
              }

              if (v155.__r_.__value_.__r.__words[0])
              {
                v155.__r_.__value_.__l.__size_ = v155.__r_.__value_.__r.__words[0];
                operator delete(v155.__r_.__value_.__l.__data_);
              }

              if (v156.__r_.__value_.__r.__words[0])
              {
                v156.__r_.__value_.__l.__size_ = v156.__r_.__value_.__r.__words[0];
                operator delete(v156.__r_.__value_.__l.__data_);
              }

              (*(*a1 + 200))(__src, a1);
              v103 = *__src;
              if (*&__src[8] == *__src)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              v104 = MIL::IROperation::GetOutputType(a1);
              MIL::IRValueType::AsTensorType(v104);
              MIL::IRTensorValueType::MakeUInt8Value();
              MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v103, &v156.__r_.__value_.__l.__data_);
              v105 = v156.__r_.__value_.__r.__words[0];
              v156.__r_.__value_.__r.__words[0] = 0;
              if (v105)
              {
                (*(*v105 + 8))(v105);
              }

LABEL_158:
              v156.__r_.__value_.__r.__words[0] = __src;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v156);
              *a3 = 0;
              std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
              if (v142)
              {
                v143 = v142;
                operator delete(v142);
              }

              goto LABEL_160;
            }

            v130 = "x_rank == perm.size()";
            v131 = 68;
          }

          else
          {
            v130 = "x_rank == o_shape.size()";
            v131 = 67;
          }

          __assert_rtn("ComputeValue", "TransposeCpu.cpp", v131, v130);
        }

        v49 = MIL::IRTensorValue::GetDataView<signed char>();
        v50 = v147;
        v51 = v148;
        v52 = v148 - v147;
        if (v148 - v147 == v146 - v145)
        {
          v53 = v52 >> 3;
          if (v52 >> 3 == (v150 - v149) >> 2)
          {
            v54 = v49;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            if (v33)
            {
              std::vector<unsigned char>::__append(&v142, v33);
              v50 = v147;
              v51 = v148;
              v55 = (v148 - v147) >> 3;
            }

            else
            {
              v55 = v52 >> 3;
            }

            memset(&v156, 0, sizeof(v156));
            std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v156, v50, v51, v55);
            memset(&v155, 0, sizeof(v155));
            std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v155, v145, v146, (v146 - v145) >> 3);
            if (v53 > 2)
            {
              if (v53 == 3)
              {
                *__src = vdupq_n_s64(1uLL);
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v156, (v156.__r_.__value_.__r.__words[0] + 8), __src, &__src[16], 2);
                *__src = vdupq_n_s64(1uLL);
                std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, &__src[16], 2);
              }

              else if (v53 == 4)
              {
                *__src = 1;
                std::vector<unsigned long long>::insert(&v156, (v156.__r_.__value_.__r.__words[0] + 8), __src);
                *__src = 1;
                std::vector<unsigned long long>::insert(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src);
              }
            }

            else if (v53 == 1)
            {
              *__src = xmmword_259A4A808;
              *&__src[16] = unk_259A4A818;
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v156, (v156.__r_.__value_.__r.__words[0] + 8), __src, v158, 4);
              *__src = xmmword_259A4A808;
              *&__src[16] = unk_259A4A818;
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, v158, 4);
            }

            else if (v53 == 2)
            {
              *__src = xmmword_259A4A7F0;
              *&__src[16] = 1;
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v156, (v156.__r_.__value_.__r.__words[0] + 8), __src, &__src[24], 3);
              *__src = xmmword_259A4A7F0;
              *&__src[16] = 1;
              std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(&v155, (v155.__r_.__value_.__r.__words[0] + 8), __src, &__src[24], 3);
            }

            v60 = __p;
            v136 = *v156.__r_.__value_.__l.__data_;
            if (*v156.__r_.__value_.__l.__data_)
            {
              v61 = 0;
              v62 = 0;
              v63 = *(v155.__r_.__value_.__r.__words[0] + 32);
              v64 = *(v156.__r_.__value_.__r.__words[0] + 8);
              v65 = *(v156.__r_.__value_.__r.__words[0] + 16);
              v66 = *(v156.__r_.__value_.__r.__words[0] + 24);
              v67 = *(v156.__r_.__value_.__r.__words[0] + 32);
              v68 = v63 * *(v155.__r_.__value_.__r.__words[0] + 24);
              v69 = v68 * *(v155.__r_.__value_.__r.__words[0] + 16);
              v71 = *(__p + 3);
              v70 = *(__p + 4);
              v73 = *(__p + 1);
              v72 = *(__p + 2);
              v74 = *__p;
              v75 = *(v155.__r_.__value_.__r.__words[0] + 8) * v69;
              do
              {
                if (v64)
                {
                  for (kk = 0; kk != v64; ++kk)
                  {
                    if (v65)
                    {
                      for (mm = 0; mm != v65; ++mm)
                      {
                        if (v66)
                        {
                          for (nn = 0; nn != v66; ++nn)
                          {
                            if (v67)
                            {
                              for (i1 = 0; i1 != v67; ++i1)
                              {
                                *__src = v61;
                                *&__src[8] = kk;
                                *&__src[16] = mm;
                                *&__src[24] = nn;
                                v158[0] = i1;
                                *(v142 + *&__src[8 * v70] + *&__src[8 * v73] * v69 + v68 * *&__src[8 * v72] + *&__src[8 * v71] * v63 + v75 * *&__src[8 * v74]) = *(v54 + v62 + i1);
                              }

                              v62 += i1;
                            }
                          }
                        }
                      }
                    }
                  }
                }

                ++v61;
              }

              while (v61 != v136);
              v60 = __p;
            }

            if (v60)
            {
              v154 = v60;
              operator delete(v60);
            }

            if (v155.__r_.__value_.__r.__words[0])
            {
              v155.__r_.__value_.__l.__size_ = v155.__r_.__value_.__r.__words[0];
              operator delete(v155.__r_.__value_.__l.__data_);
            }

            if (v156.__r_.__value_.__r.__words[0])
            {
              v156.__r_.__value_.__l.__size_ = v156.__r_.__value_.__r.__words[0];
              operator delete(v156.__r_.__value_.__l.__data_);
            }

            (*(*a1 + 200))(__src, a1);
            v80 = *__src;
            if (*&__src[8] == *__src)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            v81 = MIL::IROperation::GetOutputType(a1);
            MIL::IRValueType::AsTensorType(v81);
            MIL::IRTensorValueType::MakeInt8Value();
            MIL::ANEMachineIR::Interpreter::ComputedValueStore::InsertValue(a2, v80, &v156.__r_.__value_.__l.__data_);
            v82 = v156.__r_.__value_.__r.__words[0];
            v156.__r_.__value_.__r.__words[0] = 0;
            if (v82)
            {
              (*(*v82 + 8))(v82);
            }

            goto LABEL_158;
          }

          v132 = "x_rank == perm.size()";
          v133 = 68;
        }

        else
        {
          v132 = "x_rank == o_shape.size()";
          v133 = 67;
        }

        __assert_rtn("ComputeValue", "TransposeCpu.cpp", v133, v132);
      }
    }

    else if (InterpretedTensorValue)
    {
      goto LABEL_26;
    }

    *a3 = 2;
    v46 = std::string::basic_string[abi:ne200100]<0>(__src, "x");
    v47 = std::string::insert(v46, 0, "No value for ");
    v48 = *&v47->__r_.__value_.__l.__data_;
    *(a3 + 24) = *(&v47->__r_.__value_.__l + 2);
    *(a3 + 8) = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    if ((__src[23] & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v17 = *__src;
    goto LABEL_22;
  }

LABEL_10:
  *a3 = 1;
  v141 = a3 + 8;
  std::string::basic_string[abi:ne200100]<0>(&v155, "transpose");
  v7 = std::string::insert(&v155, 0, "Expected '");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v156.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v156.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v156, "' op. Got ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  *&__src[16] = *(&v9->__r_.__value_.__l + 2);
  *__src = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = (*(*a1 + 56))(a1);
  v12 = *(v11 + 23);
  if (v12 >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = *v11;
  }

  if (v12 >= 0)
  {
    v14 = *(v11 + 23);
  }

  else
  {
    v14 = *(v11 + 8);
  }

  v15 = std::string::append(__src, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  *(v141 + 16) = *(&v15->__r_.__value_.__l + 2);
  *v141 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if ((__src[23] & 0x80000000) != 0)
  {
    operator delete(*__src);
  }

  if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v156.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    v17 = v155.__r_.__value_.__r.__words[0];
LABEL_22:
    operator delete(v17);
  }

LABEL_23:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_25998D608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  v41 = *(v39 - 176);
  if (v41)
  {
    *(v39 - 168) = v41;
    operator delete(v41);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ConvertPermToRank5(uint64_t *a1@<X0>, int **a2@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 - *a1;
  v7 = v6 >> 2;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2, v5, v4, v6 >> 2);
  for (i = *a1; i != a1[1]; ++i)
  {
    if ((*i & 0x80000000) != 0)
    {
      ANEMachineIR::Utils::InferPositiveAxes(a1, &v17);
      v9 = *a2;
      if (*a2)
      {
        a2[1] = v9;
        operator delete(v9);
      }

      *a2 = v17;
      a2[2] = v18[0];
      break;
    }
  }

  if (v4 != v5)
  {
    v10 = *a2;
    if (v7 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v6 >> 2;
    }

    do
    {
      if (*v10 >= 1)
      {
        *v10 = *v10 - (v6 >> 2) + 5;
      }

      ++v10;
      --v11;
    }

    while (v11);
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v15 = *a2;
      *&v17 = 0x200000001;
      std::vector<int>::__insert_with_size[abi:ne200100]<int const*,int const*>(a2, v15 + 4, &v17, &v17 + 8, 2);
    }

    else if (v7 == 4)
    {
      v13 = *a2;
      LODWORD(v17) = 1;
      std::vector<int>::__insert_with_size[abi:ne200100]<int const*,int const*>(a2, v13 + 4, &v17, &v17 + 4, 1);
    }
  }

  else if (v7 == 1)
  {
    v14 = *a2;
    v17 = xmmword_259A4A790;
    std::vector<int>::__insert_with_size[abi:ne200100]<int const*,int const*>(a2, v14 + 4, &v17, v18, 4);
  }

  else if (v7 == 2)
  {
    v12 = *a2;
    *&v17 = 0x200000001;
    DWORD2(v17) = 3;
    std::vector<int>::__insert_with_size[abi:ne200100]<int const*,int const*>(a2, v12 + 4, &v17, &v17 + 12, 3);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_25998DA58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<int const*,int const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void ANEMachineIR::H2022::Reshape::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25998E7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  v63 = *(v61 - 80);
  *(v61 - 80) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v61 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v61 - 192), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::Transpose::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_25998F940(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 240), 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::Validators::ParseNeBatchMatmulParamValues(MIL::IRObject *a1@<X0>, uint64_t a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v43 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v40, "acc_left_shift");
  MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v43, &v43 + 1, a3);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
  }

  if (!MIL::ValidationResult::IsGood(a3))
  {
    return;
  }

  MEMORY[0x259CA8F00](a3);
  *a2 = HIBYTE(v43) | 0x100;
  v39 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v40, "post_right_shift");
  MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<signed char>(a1, &v39, &v39 + 1, a3);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
  }

  if (!MIL::ValidationResult::IsGood(a3))
  {
    return;
  }

  MEMORY[0x259CA8F00](a3);
  *(a2 + 2) = HIBYTE(v39) | 0x100;
  std::string::basic_string[abi:ne200100]<0>(&v40, "post_scale");
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  v7 = ParameterValue;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
    if (!v7)
    {
      goto LABEL_34;
    }
  }

  else if (!ParameterValue)
  {
LABEL_34:
    LOWORD(v36) = MIL::Fp16::FromFloat(ParameterValue, 1.0);
    __p.__r_.__value_.__s.__data_[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v40, "post_scale");
    MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(a1, &__p, &v36, a3);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(v40);
    }

    if (MIL::ValidationResult::IsGood(a3))
    {
      MEMORY[0x259CA8F00](a3);
      v22 = v36;
      if ((*(a2 + 6) & 1) == 0)
      {
        *(a2 + 6) = 1;
      }

      *(a2 + 4) = v22;
      if (*(a2 + 32) == 1)
      {
        v23 = *(a2 + 8);
        if (v23)
        {
          *(a2 + 16) = v23;
          operator delete(v23);
        }

        *(a2 + 32) = 0;
      }

LABEL_56:
      MIL::ValidationResult::ValidationResult(a3);
      return;
    }

    return;
  }

  ParameterValue = (*(*v7 + 40))(v7);
  if (!ParameterValue)
  {
    goto LABEL_34;
  }

  std::string::basic_string[abi:ne200100]<0>(&v36, "post_scale");
  ParameterType = MIL::IROperation::GetParameterType();
  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  v10 = (*(*v9 + 96))(v9);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v40, *v10, v10[1], (v10[1] - *v10) >> 3);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v36);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "y");
  v11 = MIL::IROperation::GetParameterType();
  v12 = MIL::IRValueType::AsTensorType(v11);
  v13 = (*(*v12 + 96))(v12);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v36, *v13, v13[1], (v13[1] - *v13) >> 3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v41 - v40 == 8)
  {
    if ((v37 - v36) <= 8)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    if (*v40 == v36[1])
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "post_scale");
      v24 = MIL::IROperation::GetParameterValue();
      MIL::IRValue::AsTensor(v24);
      v25 = MIL::IRTensorValue::GetDataView<MIL::Fp16>();
      v27 = v26;
      v30.__r_.__value_.__r.__words[0] = v25;
      v30.__r_.__value_.__l.__size_ = v26;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      memset(&__p, 0, sizeof(__p));
      std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(a2 + 8, &__p);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::vector<MIL::Fp16>::reserve((a2 + 8), v27);
      if (v27)
      {
        v28 = 0;
        do
        {
          v29 = MIL::Util::Span<MIL::Fp16 const,18446744073709551615ul>::At(&v30, v28);
          std::vector<MIL::Fp16>::push_back[abi:ne200100]((a2 + 8), v29);
          ++v28;
        }

        while (v28 < v30.__r_.__value_.__l.__size_);
      }

      if (*(a2 + 6) == 1)
      {
        *(a2 + 6) = 0;
      }

      if (v36)
      {
        v37 = v36;
        operator delete(v36);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      goto LABEL_56;
    }
  }

  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v15 = LocationPtr[1];
  v33 = *LocationPtr;
  v34 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v37 - v36) <= 8)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v16 = MIL::IRDimension::AsConstant(v36[1]);
  v17 = (*(*v16 + 48))(v16);
  std::to_string(&v30, v17);
  v18 = std::string::insert(&v30, 0, "Post scale tensor must be of shape (");
  v19 = *&v18->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&__p, ",)");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v32 = v20->__r_.__value_.__r.__words[2];
  *v31 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a3, &v33, 319, v31);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_259990374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  v32 = *(v30 - 96);
  if (v32)
  {
    *(v30 - 88) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 64);
  if (v33)
  {
    *(v30 - 56) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<std::vector<MIL::Fp16>>::operator=[abi:ne200100]<std::vector<MIL::Fp16>,void>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<MIL::Fp16>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<MIL::Fp16>(MIL::Fp16 *a1@<X0>, _BYTE *a2@<X2>, _WORD *a3@<X3>, MIL::ValidationResult *a4@<X8>)
{
  MIL::Fp16::FromFloat(a1, 0.0);
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (!ParameterValue)
  {
    *a2 = 0;
    goto LABEL_25;
  }

  if ((*(*ParameterValue + 40))(ParameterValue))
  {
    v9 = MEMORY[0x259CA93C0]();
    if (v9)
    {
      *a3 = *v9;
      *a2 = 1;
LABEL_25:

      MIL::ValidationResult::ValidationResult(a4);
      return;
    }
  }

  *a2 = 0;
  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v11 = LocationPtr[1];
  v27 = *LocationPtr;
  v28 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  v12 = std::string::append(&v22, " in operation ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = (*(*a1 + 56))(a1);
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::string::append(&v23, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v24, ".");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v26 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a4, &v27, 304, __p);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void sub_259990720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v37 = *(v35 - 56);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}