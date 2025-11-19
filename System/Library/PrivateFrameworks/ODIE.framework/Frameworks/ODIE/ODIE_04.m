void anonymous namespace::getValidatedSplitDimValue(_anonymous_namespace_ *this, const ODIE::Common::Value *a2, int a3)
{
  if (!*(a2 + 1))
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "getValidatedSplitDimValue", "Cannot perform split op without split dimension data.");
LABEL_13:
    v6 = 0;
    v5 = 2;
    goto LABEL_7;
  }

  if (*(*a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v7);
  }

  v4 = *(*a2 + 24);
  if (*(v4 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    goto LABEL_13;
  }

  if (*(v4 + 24) != 25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
    goto LABEL_13;
  }

  v5 = (a3 & (**(a2 + 1) >> 31)) + **(a2 + 1);
  if (v5 >= a3)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "getValidatedSplitDimValue", "Split dimension %d is invalid. Expect between 0 and %d.");
    goto LABEL_13;
  }

  v6 = 1;
LABEL_7:
  *this = v5;
  *(this + 4) = v6;
}

uint64_t anonymous namespace::validateSplitSizes(int *a1, uint64_t a2, int a3, int a4)
{
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *a1++;
      v4 += v5;
      --a2;
    }

    while (a2);
  }

  if (v4 == a4)
  {
    return 0;
  }

  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "validateSplitSizes", "split operation: count of split sizes is %d. Num of elements along split dimension %d in input is %d.", v4, a3, a4);
  return 2;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceSplit(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != 3 || *(**a2 + 8) != 2)
  {
    v12 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s");
    return v12;
  }

  v9 = 1;
  while (v9 != 3)
  {
    v10 = *(*a2[v9++] + 8);
    if (v10 != 2)
    {
      v11 = v9 - 2;
      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "split expects 3 packed NDArrayType inputs.");
      if (v11 < 2)
      {
        return v12;
      }

      break;
    }
  }

  v13 = 0;
  v14 = 1;
  while (1)
  {
    v15 = a2[v13];
    if (*(*v15 + 16))
    {
      if (!v15[1])
      {
        break;
      }
    }

    v14 = v13++ < 2;
    if (v13 == 3)
    {
      goto LABEL_11;
    }
  }

  v12 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v13);
  if (v14)
  {
    return v12;
  }

LABEL_11:
  if (a5 >= 1)
  {
    v16 = 0;
    v17 = 1;
    while (1)
    {
      v18 = a4[v16];
      if (*(*v18 + 16))
      {
        if (!v18[1])
        {
          break;
        }
      }

      v17 = ++v16 < a5;
      if (a5 == v16)
      {
        goto LABEL_16;
      }
    }

    v12 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v16);
    if (v17)
    {
      return v12;
    }
  }

LABEL_16:
  v19 = *a2;
  v20 = **a2;
  if (*(v20 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v44);
  }

  v21 = a2[1];
  v22 = *v21;
  if (*(*v21 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v45);
  }

  v23 = *(v22 + 8);
  if (v23 >= 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "valueInferenceSplit", "split configuration's rank can only be 0D or 1D.", v47);
    return 2;
  }

  v12 = v48;
  if (BYTE4(v48) != 1)
  {
    return v12;
  }

  v24 = *(*(v20 + 40) + 4 * v48);
  if (!v23)
  {
    if (*(*v21 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v46);
    }

    v29 = *(*v21 + 3);
    if (*(v29 + 8) != 1)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v47);
      return 2;
    }

    if (*(v29 + 24) != 25)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.", v47);
      return 2;
    }

    v30 = *v21[1];
    v31 = (v24 + v30 - 1) / v30;
    if (a5 == v31)
    {
      v32 = a1[1];
      v48 = *a1;
      *v49 = v32;
      *&v49[16] = *(a1 + 4);
      v33 = odie_alloc_aligned(&v48, 4 * a5, 4, 0);
      v34 = v33;
      v35 = (v24 / v30);
      if (v35 >= 1)
      {
        v36 = (v35 + 3) & 0xFFFFFFFC;
        v37 = vdupq_n_s64(v35 - 1);
        v38 = xmmword_25D0A04F0;
        v39 = xmmword_25D0A0500;
        v40 = v33 + 2;
        v41 = vdupq_n_s64(4uLL);
        do
        {
          v42 = vmovn_s64(vcgeq_u64(v37, v39));
          if (vuzp1_s16(v42, *v37.i8).u8[0])
          {
            *(v40 - 2) = v30;
          }

          if (vuzp1_s16(v42, *&v37).i8[2])
          {
            *(v40 - 1) = v30;
          }

          if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v38))).i32[1])
          {
            *v40 = v30;
            v40[1] = v30;
          }

          v38 = vaddq_s64(v38, v41);
          v39 = vaddq_s64(v39, v41);
          v40 += 4;
          v36 -= 4;
        }

        while (v36);
      }

      if (v24 % v30)
      {
        v33[a5 - 1] = v24 % v30;
      }

      v43 = *(a1 + 2);
      if (v43)
      {
        v48 = *a1;
        *v49 = v43;
        *&v49[8] = *(a1 + 24);
        v43(&v48, v34);
      }

      else
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
      }

      return v12;
    }

    goto LABEL_53;
  }

  ODIE::Common::NDArrayType::getNumElements(v22, &v48);
  v25 = v48;
  if (BYTE4(v48) != 1)
  {
    return v48;
  }

  if (a5 != v48)
  {
LABEL_53:
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "valueInferenceSplit", "split will produce %d tensors, but outputs has only %lld tensors.");
    return 2;
  }

  v26 = v21[1];
  if (v27)
  {
    return v27;
  }
}

uint64_t anonymous namespace::performSplit(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6, int a7)
{
  v9 = *(a4 + 32);
  if (a5 < 1)
  {
    v11 = 1;
  }

  else
  {
    v10 = a5;
    v11 = 1;
    v12 = *(a4 + 40);
    do
    {
      v13 = *v12++;
      v11 *= v13;
      --v10;
    }

    while (v10);
  }

  if (a5 < 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = a5;
  }

  v15 = (v14 + 1);
  v16 = 1;
  if (v9 > v15)
  {
    do
    {
      v16 *= *(*(a4 + 40) + 4 * v15++);
    }

    while (v15 < v9);
  }

  if (a2 == a7)
  {
    if (v11 >= 1)
    {
      v17 = 0;
      v18 = *(*(a4 + 24) + 16) * v16;
      v19 = *(a3 + 8);
      do
      {
        if (a2 >= 1)
        {
          v20 = a1;
          v21 = a6;
          v22 = a2;
          do
          {
            v23 = *v20++;
            v24 = *(v23 + 8);
            v25 = *v21++;
            memcpy((v24 + v18 * v25 * v17), v19, v18 * v25);
            v19 += v18 * v25;
            --v22;
          }

          while (v22);
        }

        ++v17;
      }

      while (v17 != v11);
    }

    return 0;
  }

  else
  {
    v26 = 1;
  }

  return v26;
}

void ODIE::Kernels::Core::CPU::registerSplitKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.split";
  v4 = 25;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceSplit;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceSplit;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceStack(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a2 + 8);
  v7 = *a2;
  v8 = a3 - 1;
  if (!HaveSameNdArrayType)
  {
    v10 = **v6;
    if (*(v10 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v22);
    }

    HaveSameNdArrayType = v25;
    if (BYTE4(v25) == 1)
    {
      v11 = *(v10 + 32);
      v12 = v11 + 1;
      v13 = a1[1];
      v25 = *a1;
      v26 = v13;
      v27 = *(a1 + 4);
      v14 = odie_alloc_aligned(&v25, 4 * v12, 4, 0);
      if ((v11 & 0x80000000) == 0)
      {
        v15 = 0;
        v16 = *(v10 + 40);
        v17 = v12;
        v18 = v14;
        do
        {
          if (HaveSameNdArrayType)
          {
            v19 = *(v16 + 4 * v15++);
          }

          else
          {
            v19 = v8;
          }

          *v18++ = v19;
          --HaveSameNdArrayType;
          --v17;
        }

        while (v17);
      }

      v27 = *(a1 + 4);
      v20 = a1[1];
      v25 = *a1;
      v26 = v20;
      ODIE::Common::NDArrayType::create(&v25, *(v10 + 24), v11 + 1, v14, v11 + 1, &ODIE::Common::Constants::kDefaultDimOrdering, v11 + 1, &v23);
      if (v24)
      {
        HaveSameNdArrayType = 0;
        *a4 = v23;
      }

      else
      {
        return v23;
      }
    }
  }

  return HaveSameNdArrayType;
}

uint64_t anonymous namespace::validateAllOperandsHaveSameNdArrayType(uint64_t **a1, uint64_t a2)
{
  if (a2)
  {
    v2 = **a1;
    if (*(v2 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v24);
    }

    v3 = *(**a1 + 24);
    if (*(v3 + 8) == 1)
    {
      if (a2 >= 2)
      {
        v4 = *(v3 + 24);
        v5 = 1;
        while (1)
        {
          v6 = *a1[v5];
          if (*(v6 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v20);
          }

          v7 = *(*a1[v5] + 24);
          if (*(v7 + 8) != 1)
          {
            goto LABEL_26;
          }

          if (v4 != *(v7 + 24))
          {
            break;
          }

          v8 = *(v2 + 32);
          if (v8 != *(v6 + 32))
          {
            goto LABEL_21;
          }

          if (v8 >= 1)
          {
            v9 = *(v2 + 40);
            v10 = *(v6 + 40);
            v11 = *(v2 + 32);
            while (1)
            {
              v13 = *v9++;
              v12 = v13;
              v14 = *v10++;
              if (v12 != v14)
              {
                break;
              }

              if (!--v11)
              {
                v15 = *(v2 + 48);
                v16 = *(v6 + 48);
                while (1)
                {
                  v18 = *v15++;
                  v17 = v18;
                  v19 = *v16++;
                  if (v17 != v19)
                  {
                    break;
                  }

                  if (!--v8)
                  {
                    goto LABEL_17;
                  }
                }

                v22 = "coreml.stack requires all tensor operands to be of same dim ordering. tensor #%lld's dim ordering does not match with tensor #0.";
                goto LABEL_23;
              }
            }

LABEL_21:
            v22 = "coreml.stack requires all tensor operands to be of same shape. tensor #%lld's shape does not match with tensor #0.";
LABEL_23:
            v25 = v5;
            goto LABEL_24;
          }

LABEL_17:
          if (++v5 == a2)
          {
            return 0;
          }
        }

        v22 = "coreml.stack requires all tensor operands to be of same element type. tensor #%lld's element type does not match tensor #0.";
        goto LABEL_23;
      }

      return 0;
    }

    else
    {
LABEL_26:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      return 2;
    }
  }

  else
  {
    v22 = "stack expects at least one input tensor.";
LABEL_24:
    v21 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Stack.cpp", "validateAllOperandsHaveSameNdArrayType", v22, v25);
  }

  return v21;
}

void sub_25C88B058()
{
  if (*(**v0 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v1);
  }

  JUMPOUT(0x25C88AE38);
}

void anonymous namespace::validateAndGetAxisValue(_anonymous_namespace_ *this, const ODIE::Common::Value *a2, const ODIE::Common::NDArrayType *a3)
{
  if (*(*a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v10);
  }

  if (*(*a2 + 32))
  {
    v11 = "stack requires axis operand to be rank 0.";
LABEL_25:
    LODWORD(v7) = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Stack.cpp", "validateAndGetAxisValue", v11, v16, v17);
    v9 = 0;
    goto LABEL_14;
  }

  if (*(*a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v12);
  }

  v4 = *(*a2 + 24);
  if (*(v4 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v13);
  }

  if (*(v4 + 24) - 27 <= 0xFFFFFFFD)
  {
    v11 = "stack requires axis operand to be Int32.";
    goto LABEL_25;
  }

  v5 = *(a3 + 8);
  if (*(*a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v14);
  }

  v6 = *(*a2 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    goto LABEL_23;
  }

  if (*(v6 + 24) != 25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
LABEL_23:
    ODIE::Platform::abort(v15);
  }

  v7 = **(a2 + 1);
  v8 = v5 + 1;
  if ((v7 & 0x80000000) != 0)
  {
    v7 = (v7 + v8);
  }

  if ((v7 & 0x80000000) != 0 || v7 > v8)
  {
    v11 = "stack axis %d is illegal. Must be between 0 and %d.";
    v16 = v7;
    v17 = (v5 + 1);
    goto LABEL_25;
  }

  v9 = 1;
LABEL_14:
  *this = v7;
  *(this + 4) = v9;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceStack(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = a2[v9];
      if (*(*v11 + 16))
      {
        if (!v11[1])
        {
          break;
        }
      }

      v10 = ++v9 < a3;
      if (a3 == v9)
      {
        goto LABEL_6;
      }
    }

    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
    if (v10)
    {
      return v18;
    }
  }

LABEL_6:
  if (a5 >= 1)
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = a4[v12];
      if (*(*v14 + 16))
      {
        if (!v14[1])
        {
          break;
        }
      }

      v13 = ++v12 < a5;
      if (a5 == v12)
      {
        goto LABEL_11;
      }
    }

    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v12);
    if (v13)
    {
      return v18;
    }
  }

LABEL_11:
  v15 = a3 - 1;
  if (a3 >= 1)
  {
    if (*(**a2 + 8) != 2)
    {
      v82 = "stack expects all inputs to be packed NDArrayType.";
      goto LABEL_101;
    }

    v16 = 0;
    while (v15 != v16)
    {
      v17 = *(*a2[++v16] + 8);
      if (v17 != 2)
      {
        v18 = 1;
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "stack expects all inputs to be packed NDArrayType.");
        if (v16 < a3)
        {
          return v18;
        }

        break;
      }
    }
  }

  if (a5 != 1 || *(**a4 + 8) != 2)
  {
    v82 = "stack expects 1 NDArrayType output.";
LABEL_101:
    v83 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v84 = "validateOperandsAreNdArrayType";
    v85 = "%s";
    v95 = v82;
LABEL_102:
    v18 = 1;
    odie_log(1, v83, v84, v85, v95, v97);
    return v18;
  }

  v21 = *a2;
  v19 = a2 + 1;
  v20 = v21;
  if (HaveSameNdArrayType)
  {
    return HaveSameNdArrayType;
  }

  v23 = **v19;
  if (*(v23 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v87);
  }

  if ((v101 & 1) == 0)
  {
    ODIE::Platform::abort(v24);
  }

  v25 = v100;
  v26 = **a4;
  if (*(v26 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v88);
  }

  v27 = **v19;
  if (*(v27 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v89);
  }

  v28 = *(v26 + 24);
  if (*(v28 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v90);
  }

  v29 = *(v28 + 24);
  v30 = *(v27 + 24);
  if (*(v30 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v91);
  }

  if (v29 != *(v30 + 24))
  {
    v83 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Stack.cpp";
    v84 = "validateOutputOperand";
    v85 = "stack requires output and inputs to have same element type.";
    goto LABEL_102;
  }

  v31 = *(v27 + 32);
  v32 = *(v26 + 32);
  if (v32 != v31 + 1)
  {
    v83 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Stack.cpp";
    v84 = "validateOutputOperand";
    v85 = "stack output rank must be one more than input. output rank = %d input rank = %d.";
    v95 = *(v26 + 32);
    v97 = *(v27 + 32);
    goto LABEL_102;
  }

  if ((v31 & 0x80000000) != 0)
  {
LABEL_39:
    v40 = *(v23 + 40);
    v41 = *(v23 + 32);
    v42 = 1;
    if (v25 >= 1)
    {
      v43 = v40;
      v44 = v25;
      do
      {
        v45 = *v43++;
        v42 *= v45;
        --v44;
      }

      while (v44);
    }

    v46 = v25 & ~(v25 >> 31);
    if (v41 <= v46)
    {
      v48 = 1;
    }

    else
    {
      v47 = v41 - v46;
      v48 = 1;
      v49 = &v40[v46];
      do
      {
        v50 = *v49++;
        v48 *= v50;
        --v47;
      }

      while (v47);
    }

    v51 = **v19;
    if (*(v51 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v92);
    }

    v52 = *(v51 + 24);
    if (*(v52 + 8) != 1)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v93);
    }

    v53 = *(v52 + 24);
    if (v53 > 67)
    {
      if (v53 == 69)
      {
        if (v42 >= 1)
        {
          v75 = 0;
          v76 = 0;
          v77 = (*a4)[1];
          v78 = 4 * v48;
          do
          {
            if (a3 >= 2)
            {
              v79 = 0;
              do
              {
                if (v48 >= 1)
                {
                  v80 = 0;
                  v81 = v19[v79][1] + v75;
                  do
                  {
                    *(v77 + 4 * v80) = *(v81 + 4 * v80);
                    ++v80;
                  }

                  while (v48 != v80);
                }

                v77 += v78;
                ++v79;
              }

              while (v79 != v15);
            }

            ++v76;
            v75 += v78;
          }

          while (v76 != v42);
        }

        return 0;
      }

      if (v53 == 68)
      {
        if (v42 >= 1)
        {
          v61 = 0;
          v62 = 0;
          v63 = (*a4)[1];
          v64 = 2 * v48;
          do
          {
            if (a3 >= 2)
            {
              v65 = 0;
              do
              {
                if (v48 >= 1)
                {
                  v66 = 0;
                  v67 = v19[v65][1] + v61;
                  do
                  {
                    *(v63 + 2 * v66) = *(v67 + 2 * v66);
                    ++v66;
                  }

                  while (v48 != v66);
                }

                v63 += v64;
                ++v65;
              }

              while (v65 != v15);
            }

            ++v62;
            v61 += v64;
          }

          while (v62 != v42);
        }

        return 0;
      }
    }

    else
    {
      if (v53 == 25)
      {
        if (v42 >= 1)
        {
          v68 = 0;
          v69 = 0;
          v70 = (*a4)[1];
          v71 = 4 * v48;
          do
          {
            if (a3 >= 2)
            {
              v72 = 0;
              do
              {
                if (v48 >= 1)
                {
                  v73 = 0;
                  v74 = v19[v72][1] + v68;
                  do
                  {
                    *(v70 + 4 * v73) = *(v74 + 4 * v73);
                    ++v73;
                  }

                  while (v48 != v73);
                }

                v70 += v71;
                ++v72;
              }

              while (v72 != v15);
            }

            ++v69;
            v68 += v71;
          }

          while (v69 != v42);
        }

        return 0;
      }

      if (v53 == 26)
      {
        if (v42 >= 1)
        {
          v54 = 0;
          v55 = 0;
          v56 = (*a4)[1];
          v57 = 8 * v48;
          do
          {
            if (a3 >= 2)
            {
              v58 = 0;
              do
              {
                if (v48 >= 1)
                {
                  v59 = 0;
                  v60 = v19[v58][1] + v54;
                  do
                  {
                    *(v56 + 8 * v59) = *(v60 + 8 * v59);
                    ++v59;
                  }

                  while (v48 != v59);
                }

                v56 += v57;
                ++v58;
              }

              while (v58 != v15);
            }

            ++v55;
            v54 += v57;
          }

          while (v55 != v42);
        }

        return 0;
      }
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Stack.cpp", "valueInferenceStack", "Unsupported element type in stack kernel.");
    return 2;
  }

  v33 = 0;
  v34 = *(v26 + 40);
  v35 = *(v27 + 40);
  v36 = 1;
  while (1)
  {
    v37 = v33;
    if (v33 < v100)
    {
      v38 = *(v34 + 4 * v33);
      v39 = *(v35 + 4 * v37);
      goto LABEL_36;
    }

    if (v100 != v33)
    {
      break;
    }

    if (v15 != *(v34 + 4 * v100))
    {
      v86 = "stack output shape validation failed. at dim %d, output shape = %d expected = %lld";
      v98 = *(v34 + 4 * v100);
      v99 = a3 - 1;
      v96 = v100;
      goto LABEL_103;
    }

LABEL_37:
    v33 = v37 + 1;
    v36 = v37 < v31;
    if (v32 == v37 + 1)
    {
      if (v37 >= v31)
      {
        goto LABEL_39;
      }

      return 1;
    }
  }

  v38 = *(v34 + 4 * v33);
  v39 = *(v35 + 4 * v37 - 4);
LABEL_36:
  if (v38 == v39)
  {
    goto LABEL_37;
  }

  v98 = v38;
  v99 = v39;
  v86 = "stack output shape validation failed. at dim %d, output shape = %d expected = %d";
  v96 = v37;
LABEL_103:
  v18 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Stack.cpp", "validateOutputOperand", v86, v96, v98, v99);
  if (!v36)
  {
    goto LABEL_39;
  }

  return v18;
}

void ODIE::Kernels::Core::CPU::registerStackKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.stack";
  v4 = 25;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceStack;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceStack;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceTile(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v4 = a2[1][1];
  if (v4)
  {
    v7 = **a2;
    if (*(v7 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v19);
    }

    v8 = *(v7 + 40);
    v9 = *(v7 + 32);
    v10 = a1[1];
    v22 = *a1;
    v23 = v10;
    v24 = *(a1 + 4);
    v11 = odie_alloc_aligned(&v22, 4 * v9, 4, 0);
    if (v9 >= 1)
    {
      v12 = v11;
      v13 = v9;
      do
      {
        v15 = *v8++;
        v14 = v15;
        v16 = *v4++;
        *v12++ = v16 * v14;
        --v13;
      }

      while (v13);
    }

    v24 = *(a1 + 4);
    v17 = a1[1];
    v22 = *a1;
    v23 = v17;
    ODIE::Common::NDArrayType::create(&v22, *(v7 + 24), v9, v11, v9, &ODIE::Common::Constants::kDefaultDimOrdering, v9, &v20);
    if (v21)
    {
      result = 0;
      *a4 = v20;
    }

    else
    {
      return v20;
    }
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Tile.cpp", "typeInferenceTile", "coreml.tile type inference requires dims operand to have data.");
    return 2;
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceTile(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 1;
  while (1)
  {
    v11 = a2[v9];
    if (*(*v11 + 16))
    {
      if (!v11[1])
      {
        break;
      }
    }

    v10 = ++v9 < a3;
    if (a3 == v9)
    {
      goto LABEL_6;
    }
  }

  v30 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
LABEL_6:
    if (a5 < 1)
    {
      goto LABEL_11;
    }

    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = a4[v12];
      if (*(*v14 + 16))
      {
        if (!v14[1])
        {
          break;
        }
      }

      v13 = ++v12 < a5;
      if (a5 == v12)
      {
        goto LABEL_11;
      }
    }

    v30 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v12);
    if (!v13)
    {
LABEL_11:
      if (a3 == 2 && (v15 = *a2, v16 = **a2, *(v16 + 8) == 2) && *(*a2[1] + 8) == 2)
      {
        if (a5 == 1)
        {
          v17 = *a4;
          v18 = **a4;
          if (*(v18 + 8) == 2)
          {
            v34 = *(v16 + 40);
            v19 = *(v16 + 32);
            v20 = *(*(v16 + 24) + 16);
            v21 = *(v18 + 40);
            v22 = *(v18 + 32);
            v23 = v17[1];
            v24 = v15[1];
            v42 = 0;
            memset(__dst, 0, sizeof(__dst));
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v37, v21, v22);
            if (v40)
            {
LABEL_23:
              v30 = 0;
            }

            else
            {
              while (1)
              {
                v25 = v39;
                memcpy(__dst, v38, 4 * v39);
                if (v19 >= 1)
                {
                  v26 = __dst;
                  v27 = v34;
                  v28 = v19;
                  do
                  {
                    v29 = *v27++;
                    *v26++ %= v29;
                    --v28;
                  }

                  while (v28);
                }

                ODIE::Common::NDArrayType::ravelMultiIndex(v16, __dst, v19, &v35);
                v30 = v35;
                if ((v36 & 1) == 0)
                {
                  break;
                }

                ODIE::Common::NDArrayType::ravelMultiIndex(v18, v38, v25, &v35);
                if ((v36 & 1) == 0)
                {
                  v30 = v35;
                  goto LABEL_24;
                }

                memcpy((v23 + v20 * v35), (v24 + v20 * v30), v20);
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v37);
                if (v40 == 1)
                {
                  goto LABEL_23;
                }
              }
            }

            goto LABEL_24;
          }
        }

        v33 = "coreml.tile expects 1 NDArrayType output.";
      }

      else
      {
        v33 = "coreml.tile expects all inputs to be packed NDArrayType.";
      }

      v30 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v33);
    }
  }

LABEL_24:
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

void ODIE::Kernels::Core::CPU::registerTileKernel(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.tile";
  v4 = 23;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceTile;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceTile;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceTranspose(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 == 1)
  {
    {
      return 1;
    }

    else
    {
      if (v8)
      {
        return v8;
      }

      else
      {
        v9 = **a2;
        if (*(v9 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v22);
        }

        v10 = *(v9 + 32);
        v11 = a1[1];
        v25 = *a1;
        v26 = v11;
        v27 = *(a1 + 4);
        v12 = odie_alloc_aligned(&v25, 4 * v10, 4, 0);
        if (v10 >= 1)
        {
          v13 = a2[1][1];
          v14 = *(v9 + 40);
          v15 = v12;
          v16 = v10;
          do
          {
            v17 = *v13++;
            *v15++ = *(v14 + 4 * ((v10 & (v17 >> 31)) + v17));
            --v16;
          }

          while (v16);
        }

        v27 = *(a1 + 4);
        v18 = a1[1];
        v25 = *a1;
        v26 = v18;
        ODIE::Common::NDArrayType::create(&v25, *(v9 + 24), v10, v12, v10, &ODIE::Common::Constants::kDefaultDimOrdering, v10, &v23);
        if ((v24 & 1) == 0)
        {
          ODIE::Platform::abort(v19);
        }

        v20 = 0;
        *a4 = v23;
      }
    }
  }

  else
  {
    v20 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Transpose.cpp", "typeInferenceTranspose", "outputTypes must have a single entry.");
  }

  return v20;
}

uint64_t anonymous namespace::checkInputsTypesAreCorrect(uint64_t **a1, uint64_t a2)
{
  if (a2 != 2)
  {
    v8 = "Transpose must have two inputs.";
    goto LABEL_20;
  }

  if (!*a1 || (v2 = a1[1]) == 0)
  {
    v8 = "Both inputs of Transpose kernel should be not-nullptr.";
LABEL_20:
    v6 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Transpose.cpp", "checkInputsTypesAreCorrect", v8, v13, v14);
    return v6;
  }

  if (*(**a1 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v9);
  }

  if (*(*v2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v10);
  }

  v3 = **a1;
  if (*(v3 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v11);
  }

  v4 = *a1[1];
  if (*(v4 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v12);
  }

  if (*(v4 + 32) != 1)
  {
    v8 = "Permutation should be 1D array, currently it's rank is %d.";
    v13 = *(v4 + 32);
    goto LABEL_20;
  }

  v5 = **(v4 + 40);
  if (*(v3 + 32) != v5)
  {
    v8 = "Permutation dim length %d != rank of input %d";
    v13 = v5;
    v14 = *(v3 + 32);
    goto LABEL_20;
  }

  return 0;
}

uint64_t anonymous namespace::checkPermDataIsCorrect(uint64_t **a1)
{
  v1 = a1[1];
  v2 = v1[1];
  if (v2)
  {
    v3 = *(*v1 + 16) >> 2;
    v4 = **a1;
    if (*(v4 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v13);
    }

    v5 = *(v4 + 32);
    if (v3 == v5)
    {
      if (v5 < 1)
      {
        return 0;
      }

      else
      {
        v6 = 0;
        v7 = 1;
        do
        {
          v8 = v5;
          v9 = v2;
          while (1)
          {
            v10 = *v9++;
            if (v10 == v6)
            {
              break;
            }

            if (!--v8)
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Transpose.cpp", "checkPermDataIsCorrect", "Permutation span is missing dim value %d.", v6);
              return v7;
            }
          }

          v7 = ++v6 < v5;
        }

        while (v6 != v5);
      }

      return v7;
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Transpose.cpp", "checkPermDataIsCorrect", "# of Perm values %lld != rank of input %d.", v3, v5);
      return 2;
    }
  }

  else
  {
    v11 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Transpose.cpp", "checkPermDataIsCorrect", "Permutation must have data bound.");
  }

  return v11;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceTranspose(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  {
    return 1;
  }

  if (v7)
  {
    return v7;
  }

  v8 = *a4;
  v30 = (*a4)[1];
  if (v30)
  {
    v9 = **a2;
    if (*(v9 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v27);
    }

    v29 = (*a2)[1];
    v10 = a2[1][1];
    v11 = *(v9 + 32);
    v12 = *v8;
    if (*(*v8 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v28);
    }

    v13 = *(*(v9 + 24) + 16);
    ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v31, *(v9 + 40), v11);
    v14 = *(a1 + 16);
    v34[0] = *a1;
    v34[1] = v14;
    v35 = *(a1 + 32);
    v15 = odie_alloc_aligned(v34, 4 * v11, 8, 0);
    if ((v33 & 1) == 0)
    {
      v18 = v15;
      do
      {
        v19 = v32[10];
        v20 = v10;
        v21 = v18;
        v22 = v11;
        if (v11 >= 1)
        {
          do
          {
            v23 = *v20++;
            *v21++ = v32[((v11 & (v23 >> 31)) + v23)];
            --v22;
          }

          while (v22);
        }

        ODIE::Common::NDArrayType::ravelMultiIndex(v12, v18, v11, v34);
        if ((BYTE4(v34[0]) & 1) == 0)
        {
          ODIE::Platform::abort(v24);
        }

        v25 = SLODWORD(v34[0]);
        ODIE::Common::NDArrayType::ravelMultiIndex(v9, v32, v19, v34);
        if ((BYTE4(v34[0]) & 1) == 0)
        {
          ODIE::Platform::abort(v26);
        }

        memcpy((v30 + v13 * v25), (v29 + v13 * SLODWORD(v34[0])), v13);
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v31);
      }

      while ((v33 & 1) == 0);
    }

    return 0;
  }

  else
  {
    v16 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Transpose.cpp", "valueInferenceTranspose", "Output must have data bound.");
  }

  return v16;
}

void ODIE::Kernels::Core::CPU::registerTransposeKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.transpose";
  v4 = 33;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceTranspose;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceTranspose;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

void ODIE::Common::NDArrayType::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if ((a3 & 0x80000000) != 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.cpp", "create", "NDArrayType is always ranked.");
LABEL_29:
    v21 = 0;
    *a8 = 1;
    goto LABEL_27;
  }

  v12 = a3;
  if (a3 && !a4)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.cpp", "create", "Cannot create non-0D NDArrayType without a shape.");
    goto LABEL_29;
  }

  if (a5 != a3)
  {
    v25 = "Shape requires rank = %d elements.";
LABEL_35:
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.cpp", "create", v25, a3);
    goto LABEL_29;
  }

  if (a3 && !a6)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.cpp", "create", "Cannot create non-0D NDArrayType without dimension ordering.");
    goto LABEL_29;
  }

  if (a7 != a5)
  {
    v25 = "Dimension ordering requires rank = %d elements.";
    goto LABEL_35;
  }

  if (!a2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.cpp", "create", "Cannot create NDArrayType without an element type.");
    goto LABEL_29;
  }

  v15 = *(a2 + 8);
  if (v15 != 1)
  {
    if (v15 != 99)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.cpp", "create", "Cannot create NDArrayType with non-scalar or non-custom element type.");
      v21 = 0;
      v22 = 2;
LABEL_26:
      *a8 = v22;
      goto LABEL_27;
    }

    odie_log(0, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.cpp", "create", "Creating NDArrayType using CustomType. It is expected that every element of the custom type will have the same size.");
  }

  if (v12)
  {
    v16 = 0;
    do
    {
      if (v16 != *(a6 + 4 * v16))
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.cpp", "create", "Currently support row-major ordering only. dimOrdering[%i] = %d.");
        goto LABEL_29;
      }

      ++v16;
    }

    while (a5 != v16);
    v17 = *(a2 + 16);
    v18 = 4 * a5;
    v19 = a4;
    while (1)
    {
      v20 = *v19;
      if ((v20 & 0x80000000) != 0)
      {
        break;
      }

      v17 *= v20;
      ++v19;
      v18 -= 4;
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    v17 = -1;
  }

  else
  {
    v17 = *(a2 + 16);
  }

LABEL_23:
  v23 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v23;
  v27 = *(a1 + 32);
  v24 = odie_alloc_aligned(v26, 56, 8, 0);
  if (!v24)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.cpp", "create", "Unable to allocate memory for NDArrayType.");
    v21 = 0;
    v22 = 4;
    goto LABEL_26;
  }

  *(v24 + 8) = 2;
  *(v24 + 16) = v17;
  *(v24 + 24) = a2;
  *v24 = &unk_286E741E0;
  *(v24 + 32) = v12;
  *(v24 + 40) = a4;
  *(v24 + 48) = a6;
  *a8 = v24;
  v21 = 1;
LABEL_27:
  *(a8 + 8) = v21;
}

void ODIE::Common::NDArrayType::getNumElements(ODIE::Common::NDArrayType *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 2) & 0x8000000000000000) != 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.cpp", "getNumElements", "Cannot compute number of elements for unknown shaped array.");
    v7 = 0;
    v5 = 2;
  }

  else
  {
    v3 = *(this + 8);
    if (v3 < 1)
    {
      v5 = 1;
    }

    else
    {
      v4 = *(this + 5);
      v5 = 1;
      do
      {
        v6 = *v4++;
        v5 *= v6;
        --v3;
      }

      while (v3);
    }

    v7 = 1;
  }

  *a2 = v5;
  *(a2 + 4) = v7;
}

uint64_t ODIE::Common::NDArrayType::reconcileWith(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 1;
  }

  result = 0;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return result;
}

void ODIE::Common::NDArrayValue::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  v9 = a2;
  if (a2)
  {
    v7 = ODIE::Common::Allocator::allocInstance<ODIE::Common::NDArrayValue,ODIE::Common::NDArrayType const*&,ODIE::Common::Span<unsigned char> &,ODIE::Common::Variant<ODIE::Common::EmptyState,ODIE::Common::Allocator,void (*)(void *)> &>(a1, &v9, v10, a5);
    if (v7)
    {
      *a6 = v7;
      v8 = 1;
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayValue.cpp", "create", "Unable to allocate memory for NDArray value.");
      v8 = 0;
      *a6 = 4;
    }
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayValue.cpp", "create", "Cannot create NDArray value without a valid NDArray type.");
    v8 = 0;
    *a6 = 1;
  }

  *(a6 + 8) = v8;
}

ODIE::Common::Value *ODIE::Common::Allocator::allocInstance<ODIE::Common::NDArrayValue,ODIE::Common::NDArrayType const*&,ODIE::Common::Span<unsigned char> &,ODIE::Common::Variant<ODIE::Common::EmptyState,ODIE::Common::Allocator,void (*)(void *)> &>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v7;
  v15 = *(a1 + 32);
  v8 = odie_alloc_aligned(v14, 64, 8, 0);
  if (v8)
  {
    v9 = *a2;
    v11 = *a3;
    v10 = a3[1];
    v16 = *a4;
    (__const__ZN4ODIE6Common7VariantIJNS0_10EmptyStateENS0_9AllocatorEPFvPvEEE20copyConstructStorageERKh_functions[v16])(v17, a4 + 1);
    ODIE::Common::NDArrayValue::NDArrayValue(v8, v9, v11, v10, &v16);
    if (v16 <= 2)
    {
      (__const__ZN4ODIE6Common7VariantIJNS0_10EmptyStateENS0_9AllocatorEPFvPvEEE14destroyStorageEv_functions[v16])(v17);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

ODIE::Common::Value *ODIE::Common::NDArrayValue::NDArrayValue(ODIE::Common::Value *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11 = *a5;
  (__const__ZN4ODIE6Common7VariantIJNS0_10EmptyStateENS0_9AllocatorEPFvPvEEE20copyConstructStorageERKh_functions[v11])(v12, a5 + 1);
  ODIE::Common::Value::Value<unsigned char>(a1, a2, a3, a4, &v11);
  if (v11 <= 2)
  {
    (__const__ZN4ODIE6Common7VariantIJNS0_10EmptyStateENS0_9AllocatorEPFvPvEEE14destroyStorageEv_functions[v11])(v12);
  }

  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

ODIE::Common::Value *ODIE::Common::Value::Value<unsigned char>(ODIE::Common::Value *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11[5] = *MEMORY[0x277D85DE8];
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = a2;
  if (a4 >= 1)
  {
    v10 = *a5;
    (__const__ZN4ODIE6Common7VariantIJNS0_10EmptyStateENS0_9AllocatorEPFvPvEEE20copyConstructStorageERKh_functions[v10])(v11, a5 + 1);
    ODIE::Common::Value::setData<unsigned char>(a1, a3, a4, &v10, 0);
    if (v10 <= 2)
    {
      (__const__ZN4ODIE6Common7VariantIJNS0_10EmptyStateENS0_9AllocatorEPFvPvEEE14destroyStorageEv_functions[v10])(v11);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void ODIE::Common::ScalarType::create(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a2;
  v10 = a3;
  StorageSize = ODIE::Common::ScalarType::getStorageSize(a2);
  if (StorageSize > a3)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/ScalarType.cpp", "create", "Given scalar storage size %lld is smaller than the minimum required size %lld.", a3, StorageSize);
    v9 = 0;
    *a4 = 1;
  }

  else
  {
    v8 = ODIE::Common::Allocator::allocInstance<ODIE::Common::ScalarType,ODIE::Common::ScalarTypeAttr::ScalarTag &,long long &>(a1, &v11, &v10);
    if (v8)
    {
      *a4 = v8;
      v9 = 1;
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/ScalarType.cpp", "create", "Unable to allocate memory for Scalar type.");
      v9 = 0;
      *a4 = 4;
    }
  }

  *(a4 + 8) = v9;
}

uint64_t ODIE::Common::ScalarType::getStorageSize(int a1)
{
  if (a1 > 79)
  {
    if (a1 > 96)
    {
      if (a1 == 97)
      {
        return 8;
      }

      if (a1 == 98)
      {
        return 16;
      }
    }

    else
    {
      if (a1 == 80)
      {
        return 2;
      }

      if (a1 == 96)
      {
        return 4;
      }
    }

LABEL_13:
    v1 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/ScalarType.cpp", "getStorageSize", "Unrecognized or invalid Scalar Tag = %u.", a1);
    return v1;
  }

  v1 = 1;
  switch(a1)
  {
    case 16:
    case 17:
    case 18:
    case 19:
    case 23:
    case 32:
    case 33:
    case 34:
    case 35:
    case 39:
    case 66:
    case 67:
      return v1;
    case 24:
    case 40:
    case 68:
      return 2;
    case 25:
    case 41:
    case 69:
      return 4;
    case 26:
    case 42:
    case 70:
      return 8;
    case 27:
    case 43:
      return 16;
    default:
      goto LABEL_13;
  }

  return v1;
}

uint64_t ODIE::Common::Allocator::allocInstance<ODIE::Common::ScalarType,ODIE::Common::ScalarTypeAttr::ScalarTag &,long long &>(uint64_t a1, __int16 *a2, uint64_t *a3)
{
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v10 = *(a1 + 32);
  result = odie_alloc_aligned(v9, 32, 8, 0);
  if (result)
  {
    v7 = *a2;
    v8 = *a3;
    *(result + 8) = 1;
    *(result + 16) = v8;
    *result = &unk_286E74238;
    *(result + 24) = v7;
  }

  return result;
}

uint64_t ODIE::Common::Type::reconcileWith(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 1;
  }

  result = 0;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceWhere(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = **(a2 + 8);
  if (*(v6 + 8) != 2)
  {
    return 1;
  }

  v15 = v4;
  v16 = v5;
  v12 = *(a1 + 32);
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  ODIE::Common::NDArrayType::create(v11, *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 32), *(v6 + 48), *(v6 + 32), &v13);
  if ((v14 & 1) == 0)
  {
    ODIE::Platform::abort(v9);
  }

  result = 0;
  *a4 = v13;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceWhere(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = *(*a2 + 8);
  v7 = *(**a2 + 16);
  if (*(*v4 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v50);
  }

  v8 = *(*v4 + 24);
  if (*(v8 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v51);
  }

  v9 = *(v8 + 24);
  result = 3;
  if (v9 <= 25)
  {
    if (v9 == 16)
    {
      v43 = *a4;
      v52 = *(*a2 + 8);
      v53 = v7;
      v44 = *(*v43 + 16);
      if (v44 >= 1)
      {
        v45 = 0;
        v46 = v43[1];
        v47 = v4[1];
        v48 = *(v5 + 8);
        do
        {
          if (*ODIE::Common::Span<BOOL const>::at(&v52, v45))
          {
            v49 = v47;
          }

          else
          {
            v49 = v48;
          }

          *(v46 + v45) = *(v49 + v45);
          ++v45;
        }

        while (v44 != v45);
      }
    }

    else
    {
      if (v9 != 25)
      {
        return result;
      }

      v19 = *a4;
      v52 = *(*a2 + 8);
      v53 = v7;
      v20 = *(*v19 + 16);
      if (v20 >= 4)
      {
        v21 = 0;
        v22 = v19[1];
        v23 = v20 >> 2;
        v24 = v4[1];
        v25 = *(v5 + 8);
        do
        {
          if (*ODIE::Common::Span<BOOL const>::at(&v52, v21))
          {
            v26 = v24;
          }

          else
          {
            v26 = v25;
          }

          *(v22 + 4 * v21) = *(v26 + 4 * v21);
          ++v21;
        }

        while (v23 != v21);
      }
    }
  }

  else
  {
    switch(v9)
    {
      case 26:
        v27 = *a4;
        v52 = *(*a2 + 8);
        v53 = v7;
        v28 = *(*v27 + 16);
        if (v28 >= 8)
        {
          v29 = 0;
          v30 = v27[1];
          v31 = v28 >> 3;
          v32 = v4[1];
          v33 = *(v5 + 8);
          do
          {
            if (*ODIE::Common::Span<BOOL const>::at(&v52, v29))
            {
              v34 = v32;
            }

            else
            {
              v34 = v33;
            }

            *(v30 + 8 * v29) = *(v34 + 8 * v29);
            ++v29;
          }

          while (v31 != v29);
        }

        break;
      case 68:
        v35 = *a4;
        v52 = *(*a2 + 8);
        v53 = v7;
        v36 = *(*v35 + 16);
        if (v36 >= 2)
        {
          v37 = 0;
          v38 = v35[1];
          v39 = v36 >> 1;
          v40 = v4[1];
          v41 = *(v5 + 8);
          do
          {
            if (*ODIE::Common::Span<BOOL const>::at(&v52, v37))
            {
              v42 = v40;
            }

            else
            {
              v42 = v41;
            }

            *(v38 + 2 * v37) = *(v42 + 2 * v37);
            ++v37;
          }

          while (v39 != v37);
        }

        break;
      case 69:
        v11 = *a4;
        v52 = *(*a2 + 8);
        v53 = v7;
        v12 = *(*v11 + 16);
        if (v12 >= 4)
        {
          v13 = 0;
          v14 = v11[1];
          v15 = v12 >> 2;
          v16 = v4[1];
          v17 = *(v5 + 8);
          do
          {
            if (*ODIE::Common::Span<BOOL const>::at(&v52, v13))
            {
              v18 = v16;
            }

            else
            {
              v18 = v17;
            }

            *(v14 + 4 * v13) = *(v18 + 4 * v13);
            ++v13;
          }

          while (v15 != v13);
        }

        break;
      default:
        return result;
    }
  }

  return 0;
}

void ODIE::Kernels::Core::CPU::registerWhereKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.where";
  v4 = 25;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceWhere;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceWhere;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Common::Span<BOOL const>::at(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (v2 <= a2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Containers/Span.hpp", "at", "Index %lld is outside bound %lld of array view.", a2, v2);
    ODIE::Platform::abort(v4);
  }

  return *a1 + a2;
}

void mlir::ODIE::Compiler::registerDialects(mlir::ODIE::Compiler::FrontendRegistry *a1)
{
  mlir::DialectRegistry::insert<mlir::func::FuncDialect>(a1);
  mlir::DialectRegistry::insert<mlir::cf::ControlFlowDialect>(a1);
  mlir::DialectRegistry::insert<mlir::scf::SCFDialect>(a1);
  mlir::DialectRegistry::insert<mlir::tensor::TensorDialect>(a1);
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a1);
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect>(a1);
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::Exec::ExecDialect>(a1);
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::ODIX::ODIXDialect>(a1);
  mlir::DialectRegistry::insert<mlir::LLVM::LLVMDialect>(a1);
  mlir::DialectRegistry::insert<mlir::ODIE::DebugInfo::DebugInfoDialect>(a1);
  mlir::ODIE::Compiler::FrontendRegistry::registerAllDialects(a1);
  mlir::func::registerInlinerExtension(a1, v2);
}

uint64_t mlir::DialectRegistry::insert<mlir::ODIE::DebugInfo::DebugInfoDialect>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286E744D0;
  v3[3] = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::DebugInfo::DebugInfoDialect,void>::id, "debuginfo", 9uLL, v3);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::CoreConstantFoldInterface::fold(uint64_t a1, mlir::SymbolOpInterface *a2, mlir::Operation *a3, uint64_t a4, uint64_t a5)
{
  if ((mlir::SymbolOpInterface::classof(a2, a2) & 1) != 0 || mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor(a2) || !mlir::isSpeculatable(a2, v9) || !mlir::isMemoryEffectFree(a2, v10))
  {
    return 0;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 6) + 32))(*(a2 + 6), v11))
  {

    return mlir::Operation::fold(a2, a3, a4, a5);
  }

  v13 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,mlir::Operation *,void>>::doCastIfPossible(a2);
  if (v13)
  {
    if (!(*v14)(v14, v13))
    {
      return 0;
    }
  }

  if (a4)
  {
    v15 = 8 * a4;
    v16 = a3;
    while (*v16)
    {
      v16 = (v16 + 8);
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

LABEL_15:

  return mlir::ODIE::Compiler::CoreML::tryFoldOperation(a2, a3, a4, a5, 1000000);
}

uint64_t mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::DialectFoldInterface>();
      mlir::detail::TypeIDResolver<mlir::DialectFoldInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 600);
}

uint64_t llvm::getTypeName<mlir::DialectFoldInterface>()
{
  {
    llvm::getTypeName<mlir::DialectFoldInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DialectFoldInterface>();
    unk_27FC17270 = v1;
  }

  return llvm::getTypeName<mlir::DialectFoldInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::DialectFoldInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DialectFoldInterface]";
  v6 = 88;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::SymbolOpInterface::classof(mlir::SymbolOpInterface *this, mlir::Operation *a2)
{
  result = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  if (result)
  {

    return mlir::Operation::hasAttr(this, "sym_name", 8uLL);
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

BOOL mlir::Operation::hasAttr(uint64_t a1, const void *a2, size_t a3)
{
  if (*(a1 + 47) && (v6 = (*(**(a1 + 48) + 80))(*(a1 + 48), a1, a2, a3), (v7 & 1) != 0))
  {
    return v6 != 0;
  }

  else
  {
    mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a1 + 56) + 8), *(*(a1 + 56) + 8) + 16 * *(*(a1 + 56) + 16), a2, a3);
  }

  return v8;
}

uint64_t mlir::detail::InterfaceMap::lookup(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[2 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 2;
      v4 += ~(v4 >> 1);
      if (v8 < a2)
      {
        v3 = v7;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
  }

  else
  {
    v2 = 0;
    v3 = *a1;
  }

  if (v3 != (*a1 + 16 * v2) && *v3 == a2)
  {
    return v3[1];
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SymbolOpInterface>();
      mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 720);
}

uint64_t llvm::getTypeName<mlir::SymbolOpInterface>()
{
  {
    llvm::getTypeName<mlir::SymbolOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SymbolOpInterface>();
    *algn_27FC172E8 = v1;
  }

  return llvm::getTypeName<mlir::SymbolOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SymbolOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SymbolOpInterface]";
  v6 = 85;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SymbolUserOpInterface>();
      mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 640);
}

uint64_t llvm::getTypeName<mlir::SymbolUserOpInterface>()
{
  {
    llvm::getTypeName<mlir::SymbolUserOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SymbolUserOpInterface>();
    *algn_27FC17298 = v1;
  }

  return llvm::getTypeName<mlir::SymbolUserOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SymbolUserOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SymbolUserOpInterface]";
  v6 = 89;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 680);
}

uint64_t llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
    unk_27FC172C0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ConstantLike<Empty>]";
  v6 = 96;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,mlir::ODIE::Compiler::CoreML::detail::ConditionallyFoldableInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,mlir::ODIE::Compiler::CoreML::detail::ConditionallyFoldableInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,mlir::ODIE::Compiler::CoreML::detail::ConditionallyFoldableInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 560);
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable>();
    *algn_27FC17248 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ConditionallyFoldable]";
  v6 = 113;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::DialectRegistry::insert<mlir::func::FuncDialect>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286E74290;
  v3[3] = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, "func", 4uLL, v3);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t mlir::DialectRegistry::insert<mlir::cf::ControlFlowDialect>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286E742D8;
  v3[3] = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::cf::ControlFlowDialect,void>::id, "cf", 2uLL, v3);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::DialectRegistry::insert<mlir::scf::SCFDialect>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286E74320;
  v3[3] = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id, "scf", 3uLL, v3);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::DialectRegistry::insert<mlir::tensor::TensorDialect>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286E74368;
  v3[3] = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id, "tensor", 6uLL, v3);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286E743B0;
  v3[3] = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id, "coreml", 6uLL, v3);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286E743F8;
  v3[3] = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect,void>::id, "coremlax", 8uLL, v3);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::DialectRegistry::insert<mlir::ODIE::Compiler::Exec::ExecDialect>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286E74550;
  v3[3] = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ExecDialect,void>::id, "exec", 4uLL, v3);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::DialectRegistry::insert<mlir::ODIE::Compiler::ODIX::ODIXDialect>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286E74440;
  v3[3] = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXDialect,void>::id, "odix", 4uLL, v3);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::DialectRegistry::insert<mlir::LLVM::LLVMDialect>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_286E74488;
  v3[3] = v3;
  mlir::DialectRegistry::insert(a1, &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMDialect,void>::id, "llvm", 4uLL, v3);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::MapVector<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>,llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,0u>>::try_emplace<std::unique_ptr<mlir::DialectExtensionBase>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v8 = *a2;
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::try_emplace<unsigned int>(a1, &v8, &v9, &v10);
  if (v11 != 1)
  {
    return *(a1 + 24) + 16 * *(v10 + 8);
  }

  *(v10 + 8) = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  llvm::SmallVectorImpl<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>>::emplace_back<std::piecewise_construct_t const&,std::tuple<mlir::TypeID const&>,std::tuple<std::unique_ptr<mlir::DialectExtensionBase>&&>>((a1 + 24), &std::piecewise_construct, &v8, &v7);
  return *(a1 + 24) + 16 * *(a1 + 32) - 16;
}

uint64_t llvm::SmallVectorImpl<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>>::emplace_back<std::piecewise_construct_t const&,std::tuple<mlir::TypeID const&>,std::tuple<std::unique_ptr<mlir::DialectExtensionBase>&&>>(unsigned int *a1, uint64_t a2, void **a3, uint64_t **a4)
{
  v4 = a1[2];
  if (v4 >= a1[3])
  {
    return llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID const&>,std::tuple<std::unique_ptr<mlir::DialectExtensionBase>&&>>(a1, a2, a3, a4);
  }

  v5 = (*a1 + 16 * v4);
  v6 = *a4;
  *v5 = **a3;
  v7 = *v6;
  *v6 = 0;
  v5[1] = v7;
  v8 = v4 + 1;
  a1[2] = v8;
  return *a1 + 16 * v8 - 16;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::LookupBucketFor<mlir::TypeID>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::InsertIntoBucketImpl<mlir::TypeID>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::LookupBucketFor<mlir::TypeID>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::InsertIntoBucketImpl<mlir::TypeID>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::LookupBucketFor<mlir::TypeID>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 4;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>::LookupBucketFor<mlir::TypeID>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID const&>,std::tuple<std::unique_ptr<mlir::DialectExtensionBase>&&>>(unsigned int *a1, uint64_t a2, void **a3, uint64_t **a4)
{
  v15 = 0;
  v7 = a1 + 4;
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, 0, 16, &v15);
  v9 = &v8[2 * a1[2]];
  v10 = *a4;
  *v9 = **a3;
  v11 = *v10;
  *v10 = 0;
  v9[1] = v11;
  llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,false>::moveElementsForGrow(a1, v8);
  v12 = v15;
  if (*a1 != v7)
  {
    free(*a1);
  }

  *a1 = v8;
  v13 = a1[2] + 1;
  a1[2] = v13;
  a1[3] = v12;
  return &v8[2 * v13 - 2];
}

unsigned int *llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,false>::moveElementsForGrow(unsigned int *result, void *a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = *result;
    v4 = *result + 16 * v2;
    do
    {
      *a2 = *v3;
      v5 = v3[1];
      v3[1] = 0;
      a2[1] = v5;
      a2 += 2;
      v3 += 2;
    }

    while (v3 != v4);
    v6 = *result - 8;
    v7 = 16 * v2;
    do
    {
      result = *(v6 + v7);
      *(v6 + v7) = 0;
      if (result)
      {
        result = (*(*result + 8))(result, a2);
      }

      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

void *mlir::DialectRegistry::addExtension<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(void (*)(mlir::MLIRContext *,mlir::ODIE::Compiler::CoreML::CoreMLDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  return a1;
}

void mlir::DialectRegistry::addExtension<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(void (*)(mlir::MLIRContext *,mlir::ODIE::Compiler::CoreML::CoreMLDialect *))::Extension::~Extension(void *a1)
{
  *a1 = &unk_286E78AE0;
  v2 = a1[1];
  if (v2 != a1 + 3)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

void llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 4);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 16);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 16 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 4);
}

uint64_t llvm::SmallVectorImpl<llvm::StringRef>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 16 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 16 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 16);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 16 * v5), (*a2 + 16 * v5), 16 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<llvm::StringRef>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 16 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 16 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 16);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 16 * v7), (*a2 + 16 * v7), 16 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

void mlir::ODIE::Compiler::initialize(mlir::ODIE::Compiler *this)
{
  {
    if (v1)
    {
      mlir::ODIE::Compiler::initialize(void)::$_0::operator()(v1);
    }
  }
}

uint64_t mlir::ODIE::Compiler::getRegisteredOptionsForPassManager(mlir::ODIE::Compiler::_anonymous_namespace_ *a1)
{
  v6 = a1;
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*,llvm::DenseMapInfo<mlir::OpPassManager const*,void>,llvm::detail::DenseMapPair<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*>>,mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*,llvm::DenseMapInfo<mlir::OpPassManager const*,void>,llvm::detail::DenseMapPair<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*>>::doFind<mlir::OpPassManager const*>(&qword_27FC1D140, &v6);
  v3 = qword_27FC1D140 + 16 * dword_27FC1D150;
  if (v2)
  {
    v3 = v2;
  }

  v4 = *(v3 + 8);
  return v4;
}

void *mlir::ODIE::Compiler::anonymous namespace::getOptionsRegistry(mlir::ODIE::Compiler::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_0))
  {
    __cxa_guard_release(&_MergedGlobals_0);
  }

  if ((atomic_load_explicit(&qword_27FC1D138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D138))
  {
    qword_27FC1D148 = 0;
    dword_27FC1D150 = 0;
    qword_27FC1D140 = 0;
    __cxa_atexit(llvm::DenseMap<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*,llvm::DenseMapInfo<mlir::OpPassManager const*,void>,llvm::detail::DenseMapPair<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*>>::~DenseMap, &qword_27FC1D140, &dword_25C85D000);
    __cxa_guard_release(&qword_27FC1D138);
  }
}

void mlir::ODIE::Compiler::CoreML::registerPasses(mlir::ODIE::Compiler::CoreML *this)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286E74598;
  v1[3] = v1;
  mlir::registerPass(v1);
}

void mlir::ODIE::Compiler::Transforms::registerPasses(mlir::ODIE::Compiler::Transforms *this)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286E74748;
  v1[3] = v1;
  mlir::registerPass(v1);
}

uint64_t std::__function::__value_func<std::unique_ptr<mlir::Pass> ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*,llvm::DenseMapInfo<mlir::OpPassManager const*,void>,llvm::detail::DenseMapPair<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*>>,mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*,llvm::DenseMapInfo<mlir::OpPassManager const*,void>,llvm::detail::DenseMapPair<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*>>::LookupBucketFor<mlir::OpPassManager const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*,llvm::DenseMapInfo<mlir::OpPassManager const*,void>,llvm::detail::DenseMapPair<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*,llvm::DenseMapInfo<mlir::OpPassManager const*,void>,llvm::detail::DenseMapPair<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*>>,mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*,llvm::DenseMapInfo<mlir::OpPassManager const*,void>,llvm::detail::DenseMapPair<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*>>::LookupBucketFor<mlir::OpPassManager const*>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<mlir::ODIE::Compiler::applyPasses(mlir::ModuleOp,llvm::ArrayRef<std::variant<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>>,mlir::ODIE::Compiler::Options const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>> const&>(uint64_t **a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v5 = a2[23];
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = a2[23];
  }

  else
  {
    v7 = *(a2 + 1);
  }

  v8 = mlir::PassPipelineInfo::lookup(v6, v7, a3);
  if (v8 || ((v10 = a2[23], v10 >= 0) ? (v11 = a2) : (v11 = *a2), v10 >= 0 ? (v12 = a2[23]) : (v12 = *(a2 + 1)), (v8 = mlir::PassInfo::lookup(v11, v12, v9)) != 0))
  {
    v13 = v8;
    v35 = v37;
    v36 = 0x600000000;
    v14 = a2[71];
    if (v14 >= 0)
    {
      v15 = a2[71];
    }

    else
    {
      v15 = *(a2 + 7);
    }

    if (v15)
    {
      v39 = v41;
      v40 = 0x300000000;
      if (v14 >= 0)
      {
        v16 = (a2 + 48);
      }

      else
      {
        v16 = *(a2 + 6);
      }

      llvm::SplitString(v16, v15, &v39, ",", 1);
      if (v40)
      {
        v17 = *v39;
        v18 = *(v39 + 1);
        mlir::detail::OpPassManagerImpl::nest(**(v4 + 8));
      }

      if (v39 != v41)
      {
        free(v39);
      }
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::OpPassManager *,true>::push_back(&v35, *(v4 + 8));
    }

    if (v36)
    {
      v19 = *v4;
      v20 = v35;
      v21 = 8 * v36;
      while (1)
      {
        v22 = a2[47];
        v23 = v22 >= 0 ? (a2 + 24) : *(a2 + 3);
        v24 = v22 >= 0 ? a2[47] : *(a2 + 4);
        if ((std::function<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(v13 + 48, *v20, v23, v24, llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<mlir::ODIE::Compiler::applyPasses(mlir::ModuleOp,llvm::ArrayRef<std::variant<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>>,mlir::ODIE::Compiler::Options const&)::$_1>, v19) & 1) == 0)
        {
          break;
        }

        ++v20;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_37;
        }
      }

      v31 = "Failed to create pass: ";
      v32 = 259;
      emitDiag(*(**v19 + 616), 2, &v31, &v39);
      if (v39)
      {
        v34 = 260;
        v33[0] = a2;
        mlir::Diagnostic::operator<<(&v40, v33);
        if (v39)
        {
          mlir::Diagnostic::operator<<<12ul>(&v40, "; options: ");
          if (v39)
          {
            v34 = 260;
            v33[0] = a2 + 24;
            mlir::Diagnostic::operator<<(&v40, v33);
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
      v25 = 0;
    }

    else
    {
LABEL_37:
      v25 = 1;
    }

    if (v35 != v37)
    {
      free(v35);
    }
  }

  else
  {
    v26 = a2[23];
    v27 = *a2;
    if (v26 >= 0)
    {
      v27 = a2;
    }

    v28 = *v4;
    if (v26 < 0)
    {
      v26 = *(a2 + 1);
    }

    v38 = 1283;
    v35 = "Failed to find registered pass or pipeline: ";
    v37[0] = v27;
    v37[1] = v26;
    emitDiag(*(**v28 + 616), 2, &v35, &v39);
    v25 = v41[184] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v25 & 1;
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<mlir::ODIE::Compiler::applyPasses(mlir::ModuleOp,llvm::ArrayRef<std::variant<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>>,mlir::ODIE::Compiler::Options const&)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>> const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = **(*a1 + 8);
    v6 = *(*v4 + 48);

    v6();
  }

  else
  {
    v7 = std::__throw_bad_function_call[abi:nn200100]();
    llvm::SmallVectorTemplateBase<mlir::OpPassManager *,true>::push_back(v7, v8);
  }
}

void llvm::SmallVectorTemplateBase<mlir::OpPassManager *,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

void mlir::InFlightDiagnostic::~InFlightDiagnostic(mlir::InFlightDiagnostic *this)
{
  if (*this)
  {
    mlir::InFlightDiagnostic::report(this);
  }

  if (*(this + 200) == 1)
  {
    v2 = *(this + 23);
    if (v2 != this + 200)
    {
      free(v2);
    }

    v4 = (this + 160);
    std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](&v4);
    v4 = (this + 136);
    std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](&v4);
    v3 = *(this + 3);
    if (v3 != this + 40)
    {
      free(v3);
    }
  }
}

void std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<mlir::Diagnostic>>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<mlir::Diagnostic>>::__base_destruct_at_end[abi:nn200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v6 = *--v4;
    v5 = v6;
    *v4 = 0;
    if (v6)
    {
      v7 = *(v5 + 176);
      if (v7 != (v5 + 192))
      {
        free(v7);
      }

      v9 = (v5 + 152);
      std::vector<std::unique_ptr<mlir::Diagnostic>>::__destroy_vector::operator()[abi:nn200100](&v9);
      v9 = (v5 + 128);
      std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](&v9);
      v8 = *(v5 + 16);
      if (v8 != (v5 + 32))
      {
        free(v8);
      }

      result = MEMORY[0x25F891040](v5, 0x10A0C40DB3FE637);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<char []>>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<char []>>::__base_destruct_at_end[abi:nn200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x25F891010](result, 0x1000C8077774924);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::function<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a3;
  v9[1] = a4;
  v8[0] = a5;
  v8[1] = a6;
  v6 = *(a1 + 24);
  if (v6)
  {
    return (*(*v6 + 48))(v6, a2, v9, v8);
  }

  std::__throw_bad_function_call[abi:nn200100]();
  return std::__throw_bad_function_call[abi:nn200100]();
}

BOOL llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<mlir::ODIE::Compiler::applyPasses(mlir::ModuleOp,llvm::ArrayRef<std::variant<mlir::ODIE::Compiler::PassEntry,std::function<llvm::LogicalResult ()(mlir::OpPassManager &)>>>,mlir::ODIE::Compiler::Options const&)::$_1>(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  emitDiag(*(**a1 + 616), 2, a2, v5);
  v2 = v5[200];
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v5);
  v3 = *MEMORY[0x277D85DE8];
  return (v2 & 1) == 0;
}

uint64_t mlir::Diagnostic::operator<<<12ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

unint64_t llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + 24 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 24);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 24);
    }
  }

  return v3;
}

uint64_t mlir::ODIE::Compiler::anonymous namespace::UserLoggerIRPrinterConfig::printBeforeIfEnabled(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void **), uint64_t a5)
{
  if (*(result + 80))
  {
    v7 = result;
    v35[6] = 0;
    v8 = MEMORY[0x277D828A0] + 24;
    v9 = MEMORY[0x277D828A0] + 64;
    v35[0] = MEMORY[0x277D828A0] + 64;
    v10 = MEMORY[0x277D82828];
    v11 = *(MEMORY[0x277D82828] + 16);
    v26 = *(MEMORY[0x277D82828] + 8);
    *(&v26 + *(v26 - 24)) = v11;
    v12 = (&v26 + *(v26 - 24));
    std::ios_base::init(v12, &v27);
    v12[1].__vftable = 0;
    v12[1].__fmtflags_ = -1;
    v26 = v8;
    v35[0] = v9;
    v13 = MEMORY[0x277D82868] + 16;
    v27 = MEMORY[0x277D82868] + 16;
    MEMORY[0x25F890EC0](&v28);
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v14 = MEMORY[0x277D82878] + 16;
    v27 = MEMORY[0x277D82878] + 16;
    memset(&v32, 0, sizeof(v32));
    v33 = &v32;
    v34 = 16;
    std::string::resize(&v32, 0x16uLL, 0);
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    *(&v30 + 1) = &v32;
    *&v31 = &v32;
    *(&v31 + 1) = &v32 + size;
    v19 = 0;
    v23 = 0;
    v24 = 1;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    __p = &unk_286E79BB8;
    v25 = &v26;
    a4(a5, &__p);
    llvm::raw_os_ostream::~raw_os_ostream(&__p);
    p_p = &__p;
    std::stringbuf::str();
    if (SHIBYTE(v20) < 0 && (p_p = __p) == 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = strlen(p_p);
    }

    (*(v7 + 64))(*(v7 + 72), p_p, v17);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }

    v26 = *v10;
    *(&v26 + *(v26 - 24)) = v10[3];
    v27 = v14;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    v27 = v13;
    std::locale::~locale(&v28);
    std::ostream::~ostream();
    return MEMORY[0x25F890F80](v35);
  }

  return result;
}

char **std::function<void ()(llvm::StringRef)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,0u>::~SmallVector(v5);
}

char **llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,0u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = v2 - 8;
    v5 = 16 * v3;
    do
    {
      v6 = *&v4[v5];
      *&v4[v5] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v5 -= 16;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,0>(uint64_t a1)
{
  std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](a1 + 32);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*,llvm::DenseMapInfo<mlir::OpPassManager const*,void>,llvm::detail::DenseMapPair<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*>>,mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*,llvm::DenseMapInfo<mlir::OpPassManager const*,void>,llvm::detail::DenseMapPair<mlir::OpPassManager const*,mlir::ODIE::Compiler::Options const*>>::doFind<mlir::OpPassManager const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void mlir::ODIE::Compiler::registerPassPipelines(mlir::ODIE::Compiler *this)
{
  v3 = *MEMORY[0x277D85DE8];
  v1[0] = &unk_286E751A8;
  v1[3] = v1;
  std::__function::__value_func<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>::__value_func[abi:nn200100](v2, v1);
  operator new();
}

uint64_t std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>::~function(uint64_t a1)
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

uint64_t std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::ToOdixPipelineOptions const&)>::~function(uint64_t a1)
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

uint64_t std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions const&)>::~function(uint64_t a1)
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

void std::__function::__func<mlir::ODIE::Compiler::registerPassPipelines(void)::$_0,std::allocator<mlir::ODIE::Compiler::registerPassPipelines(void)::$_0>,void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>::operator()(uint64_t a1, mlir *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = (a3 + 1840);
  v6 = *(a3 + 1863);
  if (v6 >= 0)
  {
    v7 = (a3 + 1840);
  }

  else
  {
    v7 = *(a3 + 1840);
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 1863);
  }

  else
  {
    v8 = *(a3 + 1848);
  }

  ExtensionForDialect = mlir::ODIE::Compiler::FrontendRegistry::getExtensionForDialect(v7, v8);
  if (ExtensionForDialect)
  {
    (*(*ExtensionForDialect + 40))(ExtensionForDialect, a2, a3);
  }

  else
  {
    v10 = llvm::errs(0);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 0x28uLL)
    {
      qmemcpy(v11, "No frontend extension found for dialect '", 41);
      *(v10 + 4) += 41;
    }

    else
    {
      v10 = llvm::raw_ostream::write(v10, "No frontend extension found for dialect '", 0x29uLL);
    }

    v12 = *(a3 + 1863);
    if (v12 >= 0)
    {
      v13 = v5;
    }

    else
    {
      v13 = *(a3 + 1840);
    }

    if (v12 >= 0)
    {
      v14 = *(a3 + 1863);
    }

    else
    {
      v14 = *(a3 + 1848);
    }

    v15 = llvm::raw_ostream::write(v10, v13, v14);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 1uLL)
    {
      *v16 = 2599;
      *(v15 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v15, "'\n", 2uLL);
    }
  }

  mlir::ODIE::Compiler::populateCanonicalizationPasses(a2);
}

void mlir::ODIE::Compiler::anonymous namespace::createSpecializeDynamicShapesPassPipeline(uint64_t a1, uint64_t a2)
{
  v10[9] = *MEMORY[0x277D85DE8];
  if (*(a2 + 568) == 1)
  {
    v3 = *(a2 + 304);
    v4 = *(a2 + 312);
    v9[0] = v10;
    v9[1] = 0x100000000;
    llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::append<std::__wrap_iter<mlir::ODIE::FuncShape const*>,void>(v9, v3, v4);
    mlir::ODIE::Compiler::CoreML::createEnumeratedShapeEntryPoints(v9);
  }

  v5 = *(a2 + 304);
  v6 = *(a2 + 312);
  v7[0] = &v8;
  v7[1] = 0x100000000;
  llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::append<std::__wrap_iter<mlir::ODIE::FuncShape const*>,void>(v7, v5, v6);
  mlir::ODIE::Compiler::CoreML::createMaterializeEnumeratedShapes(v7);
}

void mlir::ODIE::Compiler::anonymous namespace::EnumeratedShapesOptions::~EnumeratedShapesOptions(mlir::ODIE::Compiler::_anonymous_namespace_::EnumeratedShapesOptions *this)
{
  v2 = (this + 648);
  *(this + 81) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 800);
  llvm::cl::Option::~Option(v2);
  *(this + 56) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 600);
  llvm::cl::Option::~Option(this + 56);
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(this + 184);
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap(this + 128);
  v4 = *(this + 10);
  if (v4 != this + 96)
  {
    free(v4);
  }

  v5 = *(this + 4);
  if (v5 != this + 48)
  {
    free(v5);
  }
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, const void *a2, size_t __n)
{
  v6 = *(this + 3);
  v5 = *(this + 4);
  if (__n <= v6 - v5)
  {
    if (__n)
    {
      memcpy(v5, a2, __n);
      *(this + 4) += __n;
    }

    return this;
  }

  else
  {

    return llvm::raw_ostream::write(this, a2, __n);
  }
}

void llvm::SmallVectorTemplateBase<std::string,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v6);
  llvm::SmallVectorTemplateBase<std::string,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<std::string,false>::moveElementsForGrow(__int128 **a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = 24 * v2;
    do
    {
      v5 = *v3;
      *(a2 + 16) = *(v3 + 2);
      *a2 = v5;
      a2 += 24;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      *v3 = 0;
      v3 = (v3 + 24);
      v4 -= 24;
    }

    while (v4);
    v6 = *(a1 + 2);
    if (v6)
    {
      v7 = *a1 + 24 * v6 - 1;
      v8 = -24 * v6;
      v9 = v7;
      do
      {
        v10 = *v9;
        v9 -= 24;
        if (v10 < 0)
        {
          operator delete(*(v7 - 23));
        }

        v7 = v9;
        v8 += 24;
      }

      while (v8);
    }
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t llvm::SmallVector<std::string,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 24 * v3 - 1;
    v5 = -24 * v3;
    v6 = v4;
    do
    {
      v7 = *v6;
      v6 -= 24;
      if (v7 < 0)
      {
        operator delete(*(v4 - 23));
      }

      v4 = v6;
      v5 += 24;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

llvm::cl::Option *mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::ListOption<llvm::cl::desc>(llvm::cl::Option *a1, const void *a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v10[0] = a3;
  v10[1] = a4;
  v9[0] = a2;
  v9[1] = 0;
  v7 = llvm::cl::list<mlir::ODIE::FuncShape,BOOL,llvm::cl::parser<mlir::ODIE::FuncShape>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1, v10, v9, a5);
  *(v7 + 248) = 0;
  *v7 = &unk_286E75AF0;
  *(v7 + 30) = &unk_286E75B70;
  *(v7 + 32) = &unk_286E76508;
  if ((*(v7 + 168) & 1) == 0)
  {
    *(a1 + 168) = 1;
  }

  v9[0] = v7 + 240;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, v9);
  return a1;
}

llvm::cl::Option *llvm::cl::list<mlir::ODIE::FuncShape,BOOL,llvm::cl::parser<mlir::ODIE::FuncShape>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(llvm::cl::Option *a1, uint64_t *a2, const void **a3, _OWORD *a4)
{
  v8 = llvm::cl::Option::Option(a1, 1, 0);
  *(v8 + 168) = 0;
  *(v8 + 152) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 120) = 0u;
  *v8 = &unk_286E75BB0;
  *(v8 + 184) = 0;
  *(v8 + 192) = 0;
  *(v8 + 176) = 0;
  *(v8 + 200) = &unk_286E76508;
  *(v8 + 208) = &unk_286E75C18;
  *(v8 + 232) = v8 + 208;
  llvm::cl::Option::setArgStr(v8, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::list<mlir::ODIE::FuncShape,BOOL,llvm::cl::parser<mlir::ODIE::FuncShape>>>(a3, a1);
  *(a1 + 2) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<mlir::detail::PassOptions::OptionBase *>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::detail::PassOptions::OptionBase *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

BOOL mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::handleOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 168) == 1)
  {
    llvm::cl::list<mlir::ODIE::FuncShape,BOOL,llvm::cl::parser<mlir::ODIE::FuncShape>>::clear(a1);
    *(a1 + 168) = 0;
  }

  *(a1 + 248) = 1;
  v12 = a1;
  v13[0] = a1 + 256;
  v14[0] = a3;
  v14[1] = a4;
  v13[1] = a1;
  v13[2] = v14;
  v13[3] = &v12;
  return (mlir::detail::pass_options::parseCommaSeparatedList(a1, a3, a4, a5, a6, llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<mlir::ODIE::FuncShape>,mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::ODIE::FuncShape const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<mlir::ODIE::FuncShape> &,mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::ODIE::FuncShape const&)#1} &&)::{lambda(llvm::StringRef)#1}>, v13) & 1) == 0;
}

void mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(uint64_t a1)
{
  *a1 = &unk_286E75BB0;
  std::__function::__value_func<void ()(mlir::ODIE::FuncShape const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 120);
  std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v4);
  llvm::cl::Option::~Option(a1);
}

{
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(a1);

  JUMPOUT(0x25F891040);
}

{
  *a1 = &unk_286E75BB0;
  std::__function::__value_func<void ()(mlir::ODIE::FuncShape const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 120);
  std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v4);
  llvm::cl::Option::~Option(a1);
}

void llvm::cl::list<mlir::ODIE::FuncShape,BOOL,llvm::cl::parser<mlir::ODIE::FuncShape>>::setDefault(void *a1)
{
  v2 = (a1 + 15);
  v3 = a1[15];
  a1[23] = a1[22];
  for (i = a1[16]; i != v3; std::allocator_traits<std::allocator<mlir::ODIE::FuncShape>>::destroy[abi:nn200100]<mlir::ODIE::FuncShape,0>(v2, i))
  {
    i -= 72;
  }

  a1[16] = v3;
}

void mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  if (*(a1 + 168) != 1 || (*(a1 + 128) == *(a1 + 120) ? (v4 = (*(a1 + 152) - *(a1 + 144)) >> 3 == 0x8E38E38E38E38E39 * ((*(a1 + 128) - *(a1 + 120)) >> 3)) : (v4 = 0), !v4))
  {
    v5 = llvm::raw_ostream::operator<<(this, *(a1 + 16), *(a1 + 24));
    v6 = *(v5 + 4);
    if (*(v5 + 3) - v6 > 1uLL)
    {
      *v6 = 31549;
      *(v5 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v5, "={", 2uLL);
    }

    v7 = *(a1 + 120);
    v8 = *(a1 + 128);
    if (v7 != v8)
    {
      llvm::cl::parser<mlir::ODIE::FuncShape>::print(this, *(a1 + 120));
      for (i = v7 + 72; i != v8; i += 72)
      {
        v10 = *(this + 4);
        if (*(this + 3) == v10)
        {
          llvm::raw_ostream::write(this, ",", 1uLL);
        }

        else
        {
          *v10 = 44;
          ++*(this + 4);
        }

        llvm::cl::parser<mlir::ODIE::FuncShape>::print(this, i);
      }
    }

    v11 = *(this + 4);
    if (*(this + 3) == v11)
    {

      llvm::raw_ostream::write(this, "}", 1uLL);
    }

    else
    {
      *v11 = 125;
      ++*(this + 4);
    }
  }
}

void mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<mlir::ODIE::FuncShape>::__assign_with_size[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*>(a1 + 120, *(a2 - 120), *(a2 - 112), 0x8E38E38E38E38E39 * ((*(a2 - 112) - *(a2 - 120)) >> 3));
  *(a1 + 248) = 1;
  *(a1 + 248) = *(a2 + 8);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(a1 - 240);
}

{
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(a1 - 240);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<mlir::ODIE::FuncShape>::__assign_with_size[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*>(a1 - 120, *(a2 - 120), *(a2 - 112), 0x8E38E38E38E38E39 * ((*(a2 - 112) - *(a2 - 120)) >> 3));
  *(a1 + 8) = 1;
  *(a1 + 8) = *(a2 + 8);
}

uint64_t llvm::cl::Option::Option(uint64_t a1, char a2, char a3)
{
  *a1 = &unk_286E78FE8;
  *(a1 + 8) = 0;
  *(a1 + 10) = a2 & 7 | (32 * (a3 & 3)) | *(a1 + 10) & 0x8000;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 64) = a1 + 80;
  v4 = a1 + 64;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  llvm::SmallVectorTemplateBase<llvm::cl::OptionCategory *,true>::push_back(v4, GeneralCategory);
  return a1;
}

uint64_t llvm::cl::list<mlir::ODIE::FuncShape,BOOL,llvm::cl::parser<mlir::ODIE::FuncShape>>::handleOccurrence(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v21 = a2;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  *__p = 0u;
  if (*(a1 + 168) == 1)
  {
    llvm::cl::list<mlir::ODIE::FuncShape,BOOL,llvm::cl::parser<mlir::ODIE::FuncShape>>::clear(a1);
    *(a1 + 168) = 0;
  }

  v12 = llvm::cl::parser<mlir::ODIE::FuncShape>::parse(a1 + 200, a1, a3, a4, a5, a6, v16);
  if ((v12 & 1) == 0)
  {
    std::vector<mlir::ODIE::FuncShape>::push_back[abi:nn200100](a1 + 120, v16);
    *(a1 + 12) = v10;
    std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 176), &v21);
    v13 = *(a1 + 232);
    if (!v13)
    {
      v15 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::list<mlir::ODIE::FuncShape,BOOL,llvm::cl::parser<mlir::ODIE::FuncShape>>::~list(v15);
    }

    (*(*v13 + 48))(v13, v16);
  }

  v22 = &v19;
  std::vector<mlir::ODIE::ArgShape>::__destroy_vector::operator()[abi:nn200100](&v22);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v16[0]);
  }

  return v12;
}

void llvm::cl::list<mlir::ODIE::FuncShape,BOOL,llvm::cl::parser<mlir::ODIE::FuncShape>>::~list(uint64_t a1)
{
  *a1 = &unk_286E75BB0;
  std::__function::__value_func<void ()(mlir::ODIE::FuncShape const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 120);
  std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v4);
  llvm::cl::Option::~Option(a1);
}

uint64_t llvm::cl::list<mlir::ODIE::FuncShape,BOOL,llvm::cl::parser<mlir::ODIE::FuncShape>>::~list(uint64_t a1)
{
  *a1 = &unk_286E75BB0;
  std::__function::__value_func<void ()(mlir::ODIE::FuncShape const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 120);
  std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](&v5);
  llvm::cl::Option::~Option(a1);
  return MEMORY[0x25F891040]();
}

void llvm::SmallVectorTemplateBase<llvm::cl::OptionCategory *,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

const void **llvm::cl::sub::apply<llvm::cl::list<mlir::ODIE::FuncShape,BOOL,llvm::cl::parser<mlir::ODIE::FuncShape>>>(const void **result, uint64_t a2)
{
  if (*result)
  {
    return llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), *result, v8);
  }

  v3 = result[1];
  if (v3)
  {
    v4 = *(v3 + 2);
    if (v4)
    {
      v5 = *v3;
      v6 = 8 * v4;
      do
      {
        v7 = *v5++;
        result = llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), v7, v8);
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

const void **llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert@<X0>(llvm::SmallPtrSetImplBase *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(a1, a2);
  v7 = 8;
  if (*(a1 + 20))
  {
    v7 = 12;
  }

  v8 = *a1 + 8 * *(a1 + v7);
  if (v8 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v8)
      {
        result = v8;
        break;
      }
    }
  }

  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v6;
  return result;
}

const void **llvm::SmallPtrSetImplBase::insert_imp(llvm::SmallPtrSetImplBase *this, char *a2)
{
  if (*(this + 20) != 1)
  {
    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v2 = *this;
  v3 = *(this + 3);
  if (!v3)
  {
LABEL_6:
    if (v3 < *(this + 2))
    {
      *(this + 3) = v3 + 1;
      *(v2 + 8 * v3) = a2;
      return (*this + 8 * v3);
    }

    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v4 = 8 * v3;
  v5 = *this;
  while (*v5 != a2)
  {
    ++v5;
    v4 -= 8;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  return v5;
}

void llvm::cl::list<mlir::ODIE::FuncShape,BOOL,llvm::cl::parser<mlir::ODIE::FuncShape>>::clear(void *a1)
{
  v2 = (a1 + 15);
  v3 = a1[15];
  a1[23] = a1[22];
  for (i = a1[16]; i != v3; std::allocator_traits<std::allocator<mlir::ODIE::FuncShape>>::destroy[abi:nn200100]<mlir::ODIE::FuncShape,0>(v2, i))
  {
    i -= 72;
  }

  a1[16] = v3;
}

uint64_t llvm::cl::parser<mlir::ODIE::FuncShape>::parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a5;
  v67 = a6;
  llvm::StringRef::split(&v66, "(", 1uLL, v63);
  if (!v63[1] || !v65 || v64[v65 - 1] != 41)
  {
    goto LABEL_13;
  }

  llvm::StringRef::split(v63, ":", 1uLL, &v61);
  v10 = *(&__src + 1);
  if (!*(&v61 + 1))
  {
    if (*(&__src + 1))
    {
      v61 = __src;
      goto LABEL_9;
    }

LABEL_13:
    *&v39[32] = 1283;
    *v39 = "'";
    *&v39[16] = v66;
    *&v39[24] = v67;
    *__dst = v39;
    *&__dst[16] = "' is an invalid function shape specifier!";
    *&__dst[32] = 770;
    v11 = llvm::errs(v9);
    v12 = llvm::cl::Option::error(a2, __dst, 0, 0, v11);
    return v12 & 1;
  }

  if (!*(&__src + 1))
  {
    __src = v61;
    v10 = *(&v61 + 1);
  }

LABEL_9:
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_88;
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v10;
  if (v10)
  {
    memmove(__dst, __src, v10);
  }

  __dst[v10] = 0;
  v14 = *(&v61 + 1);
  if (*(&v61 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
  {
LABEL_88:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (*(&v61 + 1) >= 0x17uLL)
  {
    operator new();
  }

  v57[7] = BYTE8(v61);
  if (*(&v61 + 1))
  {
    memmove(&__dst[24], v61, *(&v61 + 1));
  }

  __dst[v14 + 24] = 0;
  *&v57[8] = 0;
  *&v57[16] = 0;
  *&v58 = 0;
  if (*(a7 + 23) < 0)
  {
    operator delete(*a7);
  }

  *a7 = *__dst;
  *(a7 + 16) = *&__dst[16];
  __dst[23] = 0;
  __dst[0] = 0;
  if (*(a7 + 47) < 0)
  {
    operator delete(*(a7 + 24));
  }

  *(a7 + 24) = *&__dst[24];
  *(a7 + 40) = *v57;
  v57[7] = 0;
  __dst[24] = 0;
  std::vector<mlir::ODIE::ArgShape>::__vdeallocate((a7 + 48));
  *(a7 + 48) = *&v57[8];
  *(a7 + 64) = v58;
  *&v57[16] = 0;
  *&v58 = 0;
  *&v57[8] = 0;
  *v39 = &v57[8];
  std::vector<mlir::ODIE::ArgShape>::__destroy_vector::operator()[abi:nn200100](v39);
  if ((v57[7] & 0x80000000) != 0)
  {
    operator delete(*&__dst[24]);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v15 = v65;
  if (v15 >= v15 - 1)
  {
    v15 = v65 - 1;
  }

  v65 = v15;
  if (v15 == 1 && *v64 == 42)
  {
    goto LABEL_85;
  }

  *&v39[8] = 0;
  *&v39[16] = 0;
  *&v39[24] = v64;
  *&v39[32] = v15;
  *&v40 = ";";
  *(&v40 + 1) = 1;
  llvm::StringRef::split(&v39[24], ";", 1uLL, __dst);
  *&v39[8] = *__dst;
  *&v39[24] = *&__dst[16];
  v72 = 0u;
  v71 = 0u;
  *&v73 = ";";
  *(&v73 + 1) = 1;
  llvm::StringRef::split(&v72, ";", 1uLL, __dst);
  v71 = *__dst;
  v72 = *&__dst[16];
  __dst[0] = v39[0];
  *&__dst[8] = *&v39[8];
  *&__dst[24] = *&v39[24];
  *v57 = v40;
  if (v40 == v39)
  {
    *v57 = __dst;
    *&v57[8] = 1;
  }

  v57[16] = v70;
  v58 = v71;
  v59 = v72;
  v60 = v73;
  if (v73 == &v70)
  {
    *&v60 = &v57[16];
    *(&v60 + 1) = 1;
  }

  v52 = v39[0];
  v53 = *&__dst[8];
  v54 = *&__dst[24];
  v55 = *v57;
  if (*v57 == __dst)
  {
    *&v55 = &v52;
    *(&v55 + 1) = 1;
  }

  v48 = v70;
  v49 = v58;
  v50 = v59;
  v51 = v60;
  if (v60 == &v57[16])
  {
    *&v51 = &v48;
    *(&v51 + 1) = 1;
  }

  v16 = v53;
  if (v53 == v49)
  {
LABEL_85:
    v12 = 0;
  }

  else
  {
    v33 = a2;
    while (1)
    {
      v17 = *(&v53 + 1);
      v45 = 0;
      v46 = 0;
      v47 = 0;
      if (*(&v53 + 1) == 1 && *v16 == 42)
      {
        memset(v39, 0, 24);
        std::vector<mlir::ODIE::ArgShape>::push_back[abi:nn200100]((a7 + 48), v39);
        if (*v39)
        {
          *&v39[8] = *v39;
          operator delete(*v39);
        }

        v18 = 3;
      }

      else
      {
        v71 = 0uLL;
        *&v72 = v16;
        *(&v72 + 1) = *(&v53 + 1);
        *&v73 = "x";
        *(&v73 + 1) = 1;
        llvm::StringRef::split(&v72, "x", 1uLL, v68);
        v71 = *v68;
        v72 = *&v68[16];
        memset(&v68[8], 0, 32);
        *&v69 = "x";
        *(&v69 + 1) = 1;
        llvm::StringRef::split(&v68[24], "x", 1uLL, &v36);
        *&v68[8] = v36;
        *&v68[24] = v37;
        v39[0] = v70;
        *&v39[8] = v71;
        *&v39[24] = v72;
        v40 = v73;
        if (v73 == &v70)
        {
          *&v40 = v39;
          *(&v40 + 1) = 1;
        }

        v41 = v68[0];
        v42 = *&v68[8];
        v43 = *&v68[24];
        v44 = v69;
        if (v69 == v68)
        {
          *&v44 = &v41;
          *(&v44 + 1) = 1;
        }

        v71 = *&v39[8];
        v72 = *&v39[24];
        v73 = v40;
        if (v40 == v39)
        {
          *&v73 = &v70;
          *(&v73 + 1) = 1;
        }

        *&v68[8] = v42;
        *&v68[24] = v43;
        v69 = v44;
        if (v44 == &v41)
        {
          *&v69 = v68;
          *(&v69 + 1) = 1;
        }

        while (v71 != *&v68[8])
        {
          v34[0] = 0;
          v36 = v71;
          v20 = llvm::consumeSignedInteger(&v36, 0xA, v34, v19);
          if ((v20 & 1) != 0 || *(&v36 + 1) || v34[0] != SLODWORD(v34[0]))
          {
            v35 = 1283;
            v34[0] = "'";
            v34[2] = v16;
            v34[3] = v17;
            *&v36 = v34;
            *&v37 = "' is an invalid dimension shape!";
            v38 = 770;
            v31 = llvm::errs(v20);
            v32 = llvm::cl::Option::error(v33, &v36, 0, 0, v31);
            v18 = 1;
            goto LABEL_80;
          }

          v21 = v46;
          if (v46 >= v47)
          {
            v23 = v45;
            v24 = v46 - v45;
            v25 = (v46 - v45) >> 2;
            v26 = v25 + 1;
            if ((v25 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:nn200100]();
            }

            v27 = v47 - v45;
            if ((v47 - v45) >> 1 > v26)
            {
              v26 = v27 >> 1;
            }

            v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
            v29 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v28)
            {
              v29 = v26;
            }

            if (v29)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(&v45, v29);
            }

            *(4 * v25) = v34[0];
            v22 = 4 * v25 + 4;
            memcpy(0, v23, v24);
            v30 = v45;
            v45 = 0;
            v46 = v22;
            v47 = 0;
            if (v30)
            {
              operator delete(v30);
            }
          }

          else
          {
            *v46 = v34[0];
            v22 = (v21 + 4);
          }

          v46 = v22;
          llvm::StringRef::split(&v72, v73, *(&v73 + 1), &v36);
          v71 = v36;
          v72 = v37;
        }

        memset(v39, 0, 24);
        if (v46 != v45)
        {
          std::vector<int>::__vallocate[abi:nn200100](v39, (v46 - v45) >> 2);
        }

        std::vector<mlir::ODIE::ArgShape>::push_back[abi:nn200100]((a7 + 48), v39);
        if (*v39)
        {
          *&v39[8] = *v39;
          operator delete(*v39);
        }

        v18 = 0;
      }

LABEL_80:
      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      if (v18 != 3 && v18)
      {
        break;
      }

      llvm::StringRef::split(&v54, v55, *(&v55 + 1), v39);
      v53 = *v39;
      v54 = *&v39[16];
      v16 = *v39;
      if (*v39 == v49)
      {
        goto LABEL_85;
      }
    }

    v12 = v32;
  }

  return v12 & 1;
}

void std::vector<unsigned int>::push_back[abi:nn200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::allocator_traits<std::allocator<mlir::ODIE::FuncShape>>::destroy[abi:nn200100]<mlir::ODIE::FuncShape,0>(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  std::vector<mlir::ODIE::ArgShape>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

__n128 llvm::StringRef::split@<Q0>(uint64_t *a1@<X0>, char *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = llvm::StringRef::find(a1, a2, a3, 0);
  if (v7 == -1)
  {
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    result = *a1;
    *a4 = *a1;
  }

  else
  {
    v10 = *a1;
    v9 = a1[1];
    if (v7 >= v9)
    {
      v11 = a1[1];
    }

    else
    {
      v11 = v7;
    }

    v12 = v7 + a3;
    if (v9 < v7 + a3)
    {
      v12 = a1[1];
    }

    *a4 = v10;
    *(a4 + 8) = v11;
    *(a4 + 16) = v10 + v12;
    *(a4 + 24) = v9 - v12;
  }

  return result;
}

uint64_t std::vector<mlir::ODIE::ArgShape>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<mlir::ODIE::ArgShape>::__emplace_back_slow_path<mlir::ODIE::ArgShape>(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = (v3 + 3);
  }

  a1[1] = result;
  return result;
}

void std::vector<mlir::ODIE::ArgShape>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<mlir::ODIE::ArgShape>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<mlir::ODIE::ArgShape>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::vector<mlir::ODIE::ArgShape>::__emplace_back_slow_path<mlir::ODIE::ArgShape>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<mlir::ODIE::ArgShape>::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::ArgShape>>(a1, v6);
  }

  v7 = 24 * v2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = 24 * v2 + 24;
  v9 = a1[1];
  v10 = 24 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::ODIE::ArgShape>,mlir::ODIE::ArgShape*>(a1, *a1, v9, (v7 + *a1 - v9));
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<mlir::ODIE::ArgShape>::~__split_buffer(v14);
  return v8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::ArgShape>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::ODIE::ArgShape>,mlir::ODIE::ArgShape*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 3;
    }

    while (v6 != a3);
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 24;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<mlir::ODIE::ArgShape>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<mlir::ODIE::ArgShape>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<mlir::ODIE::ArgShape>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *std::vector<int>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<int>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 2);
  }

  return result;
}

void std::vector<int>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

std::string *std::vector<mlir::ODIE::FuncShape>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<mlir::ODIE::FuncShape>::__emplace_back_slow_path<mlir::ODIE::FuncShape const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<mlir::ODIE::FuncShape>>::construct[abi:nn200100]<mlir::ODIE::FuncShape,mlir::ODIE::FuncShape const&,0>(a1, *(a1 + 8), a2);
    result = v3 + 3;
  }

  *(a1 + 8) = result;
  return result;
}

std::string *std::vector<mlir::ODIE::FuncShape>::__emplace_back_slow_path<mlir::ODIE::FuncShape const&>(void **a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<mlir::ODIE::FuncShape>::__throw_length_error[abi:nn200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::FuncShape>>(a1, v6);
  }

  v7 = (72 * v2);
  std::allocator_traits<std::allocator<mlir::ODIE::FuncShape>>::construct[abi:nn200100]<mlir::ODIE::FuncShape,mlir::ODIE::FuncShape const&,0>(a1, v7, a2);
  v8 = v7 + 3;
  v9 = a1[1];
  v10 = *a1 + v7 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::ODIE::FuncShape>,mlir::ODIE::FuncShape*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<mlir::ODIE::FuncShape>::~__split_buffer(v14);
  return v8;
}

uint64_t std::allocator_traits<std::allocator<mlir::ODIE::FuncShape>>::construct[abi:nn200100]<mlir::ODIE::FuncShape,mlir::ODIE::FuncShape const&,0>(int a1, std::string *this, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    this->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v6 = *(a3 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  v7 = this + 2;
  v7->__r_.__value_.__r.__words[2] = 0;
  v8 = *(a3 + 6);
  v9 = *(a3 + 7);

  return std::vector<mlir::ODIE::ArgShape>::__init_with_size[abi:nn200100]<mlir::ODIE::ArgShape*,mlir::ODIE::ArgShape*>(v7, v8, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
}

uint64_t std::vector<mlir::ODIE::ArgShape>::__init_with_size[abi:nn200100]<mlir::ODIE::ArgShape*,mlir::ODIE::ArgShape*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mlir::ODIE::ArgShape>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<mlir::ODIE::ArgShape>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::ArgShape>>(a1, a2);
  }

  std::vector<mlir::ODIE::ArgShape>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::FuncShape>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::ODIE::FuncShape>,mlir::ODIE::FuncShape*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    do
    {
      std::allocator_traits<std::allocator<mlir::ODIE::FuncShape>>::destroy[abi:nn200100]<mlir::ODIE::FuncShape,0>(a1, v5);
      v5 += 72;
    }

    while (v5 != a3);
  }
}

void **std::__split_buffer<mlir::ODIE::FuncShape>::~__split_buffer(void **a1)
{
  std::__split_buffer<mlir::ODIE::FuncShape>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<mlir::ODIE::FuncShape>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    std::allocator_traits<std::allocator<mlir::ODIE::FuncShape>>::destroy[abi:nn200100]<mlir::ODIE::FuncShape,0>(v4, i - 72);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<mlir::ODIE::ArgShape>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<mlir::ODIE::ArgShape>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void llvm::cl::Option::~Option(void **this)
{
  *this = &unk_286E78FE8;
  if ((*(this + 108) & 1) == 0)
  {
    free(this[11]);
  }

  v2 = this[8];
  if (v2 != this + 10)
  {
    free(v2);
  }
}

uint64_t std::__function::__value_func<void ()(mlir::ODIE::FuncShape const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<mlir::ODIE::FuncShape>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 72;
        std::allocator_traits<std::allocator<mlir::ODIE::FuncShape>>::destroy[abi:nn200100]<mlir::ODIE::FuncShape,0>(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::detail::PassOptions::OptionBase *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<mlir::ODIE::FuncShape>,mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::ODIE::FuncShape const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<mlir::ODIE::FuncShape> &,mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(mlir::ODIE::FuncShape const&)#1} &&)::{lambda(llvm::StringRef)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  *v6 = 0u;
  *__p = 0u;
  if (llvm::cl::parser<mlir::ODIE::FuncShape>::parse(*a1, *(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8), a2, a3, v6))
  {
    v4 = 0;
  }

  else
  {
    std::vector<mlir::ODIE::FuncShape>::push_back[abi:nn200100](**(a1 + 24) + 120, v6);
    v4 = 1;
  }

  v11 = &v9;
  std::vector<mlir::ODIE::ArgShape>::__destroy_vector::operator()[abi:nn200100](&v11);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v6[0]);
  }

  return v4;
}

void llvm::cl::parser<mlir::ODIE::FuncShape>::print(llvm::raw_ostream *a1, const char *a2)
{
  v2 = a2;
  v4 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = llvm::raw_ostream::write(a1, a2, v5);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "(", 1uLL);
  }

  else
  {
    *v7 = 40;
    ++*(v6 + 4);
  }

  v8 = *(v2 + 3);
  v9 = *(v2 + 7);
  v10 = *(v2 + 6);
  if (v10 == v9)
  {
    v21 = *(a1 + 4);
    if (*(a1 + 3) == v21)
    {
      llvm::raw_ostream::write(a1, "*", 1uLL);
    }

    else
    {
      *v21 = 42;
      ++*(a1 + 4);
    }
  }

  else
  {
    v11 = 1;
    do
    {
      std::vector<int>::vector[abi:nn200100](__p, v10);
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = ";";
      }

      llvm::raw_ostream::operator<<(a1, v12, (v11 & 1) == 0);
      v13 = __p[1];
      v14 = __p[0];
      if (__p[0] == __p[1])
      {
        v20 = *(a1 + 4);
        if (*(a1 + 3) == v20)
        {
          llvm::raw_ostream::write(a1, "*", 1uLL);
        }

        else
        {
          *v20 = 42;
          ++*(a1 + 4);
        }
      }

      else
      {
        v15 = 1;
        do
        {
          v17 = *v14++;
          v16 = v17;
          if (v15)
          {
            v18 = 0;
          }

          else
          {
            v18 = "x";
          }

          v19 = llvm::raw_ostream::operator<<(a1, v18, (v15 & 1) == 0);
          llvm::write_integer(v19, v16, 0, 0);
          v15 = 0;
        }

        while (v14 != v13);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v11 = 0;
      v10 += 3;
    }

    while (v10 != v9);
  }

  v22 = *(a1 + 4);
  if (*(a1 + 3) == v22)
  {
    llvm::raw_ostream::write(a1, ")", 1uLL);
  }

  else
  {
    *v22 = 41;
    ++*(a1 + 4);
  }
}

uint64_t mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc>(uint64_t a1, const void *a2, _OWORD *a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  v10[1] = 0;
  v6 = llvm::cl::Option::Option(a1, 0, 0);
  *(v6 + 120) = 0;
  *(v6 + 128) = &unk_286E76000;
  *(v6 + 136) = 0;
  *v6 = &unk_286E79348;
  *(v6 + 144) = &unk_286E79090;
  v7 = (v6 + 152);
  *(v6 + 152) = &unk_286E76020;
  *(v6 + 176) = v6 + 152;
  llvm::cl::Option::setArgStr(v6, "create-entry-points", 19);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(v10, a1);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  *(a1 + 192) = 0;
  *a1 = &unk_286E75F40;
  *(a1 + 184) = &unk_286E75FC0;
  v10[0] = (a1 + 184);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, v10);
  v11[0] = &unk_286E751F0;
  v11[1] = a1;
  v11[3] = v11;
  std::function<void ()(BOOL const&)>::operator=(v7, v11);
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v11);
  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(void **a1)
{
  *a1 = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((a1 + 19));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((a1 + 19));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = llvm::raw_ostream::operator<<(this, *(a1 + 16), *(a1 + 24));
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 61);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 61;
  }

  if (*(a1 + 120))
  {
    v6 = 4;
  }

  else
  {
    v6 = 5;
  }

  if (*(a1 + 120))
  {
    v7 = "true";
  }

  else
  {
    v7 = "false";
  }

  return llvm::raw_ostream::operator<<(this, v7, v6);
}

uint64_t mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 120) = *(a2 - 64);
  *(result + 192) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(uint64_t a1)
{
  v1 = (a1 - 184);
  *(a1 - 184) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](a1 - 32);

  llvm::cl::Option::~Option(v1);
}

{
  v1 = (a1 - 184);
  *(a1 - 184) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](a1 - 32);
  llvm::cl::Option::~Option(v1);

  JUMPOUT(0x25F891040);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 64) = *(a2 - 64);
  *(result + 8) = *(a2 + 8);
  return result;
}

const void **llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(const void **result, uint64_t a2)
{
  if (*result)
  {
    return llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), *result, v8);
  }

  v3 = result[1];
  if (v3)
  {
    v4 = *(v3 + 2);
    if (v4)
    {
      v5 = *v3;
      v6 = 8 * v4;
      do
      {
        v7 = *v5++;
        result = llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), v7, v8);
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

void *std::function<void ()(BOOL const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:nn200100](v5, a2);
  std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](void *result, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS7_4descEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISL_EEFvRKbEE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E751F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

llvm::cl::Option *mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(llvm::cl::Option *a1, const void *a2, uint64_t a3, uint64_t a4, __n128 *a5, _BYTE **a6)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a2;
  v11[1] = 0;
  v8 = llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1, v12, v11, a5, a6);
  *(v8 + 192) = 0;
  *v8 = &unk_286E75F40;
  *(v8 + 23) = &unk_286E75FC0;
  v11[0] = v8 + 184;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, v11);
  v13[0] = &unk_286E76068;
  v13[1] = a1;
  v13[3] = v13;
  std::function<void ()(BOOL const&)>::operator=(a1 + 19, v13);
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](v13);
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

llvm::cl::Option *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>>(llvm::cl::Option *a1, uint64_t *a2, const void **a3, __n128 *a4, _BYTE **a5)
{
  v10 = llvm::cl::Option::Option(a1, 0, 0);
  *(v10 + 120) = 0;
  *(v10 + 128) = &unk_286E76000;
  *(v10 + 136) = 0;
  *v10 = &unk_286E79348;
  *(v10 + 144) = &unk_286E79090;
  *(v10 + 152) = &unk_286E76020;
  *(v10 + 176) = v10 + 152;
  llvm::cl::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>,llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>>(v10, a2, a3, a4, a5);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

__n128 llvm::cl::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>,llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>>(uint64_t a1, uint64_t *a2, const void **a3, __n128 *a4, _BYTE **a5)
{
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  result = *a4;
  *(a1 + 32) = *a4;
  v10 = *a5;
  *(a1 + 120) = **a5;
  *(a1 + 137) = 1;
  *(a1 + 136) = *v10;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS7_4descENS7_11initializerIbEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKbEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E76068;
  a2[1] = v2;
  return result;
}

void std::vector<mlir::ODIE::FuncShape>::__assign_with_size[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v7 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<mlir::ODIE::FuncShape>::__vdeallocate(a1);
    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v8 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
      {
        v9 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<mlir::ODIE::FuncShape>::__vallocate[abi:nn200100](a1, v9);
    }

    std::vector<mlir::ODIE::FuncShape>::__throw_length_error[abi:nn200100]();
  }

  v10 = *(a1 + 8) - v7;
  if (0x8E38E38E38E38E39 * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape*>(&v18, __str, a3, v7);
    v15 = v14;
    v16 = *(a1 + 8);
    if (v16 != v14)
    {
      do
      {
        v16 -= 72;
        std::allocator_traits<std::allocator<mlir::ODIE::FuncShape>>::destroy[abi:nn200100]<mlir::ODIE::FuncShape,0>(a1, v16);
      }

      while (v16 != v15);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v11 = (__str + v10);
    std::__copy_impl::operator()[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape*>(&v17, __str, (__str + v10), v7);
    v12 = *(a1 + 8);
    if (v11 != a3)
    {
      v13 = *(a1 + 8);
      do
      {
        std::allocator_traits<std::allocator<mlir::ODIE::FuncShape>>::construct[abi:nn200100]<mlir::ODIE::FuncShape,mlir::ODIE::FuncShape const&,0>(a1, v13, v11);
        v11 = (v11 + 72);
        v13 += 3;
        v12 += 72;
      }

      while (v11 != a3);
    }

    *(a1 + 8) = v12;
  }
}

void std::vector<mlir::ODIE::FuncShape>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 72;
        std::allocator_traits<std::allocator<mlir::ODIE::FuncShape>>::destroy[abi:nn200100]<mlir::ODIE::FuncShape,0>(a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<mlir::ODIE::FuncShape>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::ODIE::FuncShape>>(a1, a2);
  }

  std::vector<mlir::ODIE::FuncShape>::__throw_length_error[abi:nn200100]();
}

std::string *std::__copy_impl::operator()[abi:nn200100]<mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape const*,mlir::ODIE::FuncShape*>(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    if (this != v5)
    {
      std::vector<mlir::ODIE::ArgShape>::__assign_with_size[abi:nn200100]<mlir::ODIE::ArgShape*,mlir::ODIE::ArgShape*>(&this[2], v5[2].__r_.__value_.__l.__data_, v5[2].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v5[2].__r_.__value_.__l.__size_ - v5[2].__r_.__value_.__r.__words[0]) >> 3));
    }

    this += 3;
    v5 += 3;
  }

  while (v5 != v6);
  return v6;
}

void std::vector<mlir::ODIE::ArgShape>::__assign_with_size[abi:nn200100]<mlir::ODIE::ArgShape*,mlir::ODIE::ArgShape*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<mlir::ODIE::ArgShape>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<mlir::ODIE::ArgShape>::__vallocate[abi:nn200100](a1, v9);
    }

    std::vector<mlir::ODIE::ArgShape>::__throw_length_error[abi:nn200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:nn200100]<mlir::ODIE::ArgShape *,mlir::ODIE::ArgShape *,mlir::ODIE::ArgShape *>(&v22, a2, a3, v7);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      v18 = a1[1];
      do
      {
        v20 = *(v18 - 24);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v17 - 16) = v19;
          operator delete(v19);
        }

        v17 = v18;
      }

      while (v18 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v11 = (a2 + v10);
    std::__copy_impl::operator()[abi:nn200100]<mlir::ODIE::ArgShape *,mlir::ODIE::ArgShape *,mlir::ODIE::ArgShape *>(&v21, a2, (a2 + v10), v7);
    v12 = a1[1];
    if (v11 != a3)
    {
      v13 = a1[1];
      do
      {
        v14 = std::vector<int>::vector[abi:nn200100](v13, v11);
        v11 += 3;
        v13 = v14 + 3;
        v12 += 24;
      }

      while (v11 != a3);
    }

    a1[1] = v12;
  }
}

char **std::__copy_impl::operator()[abi:nn200100]<mlir::ODIE::ArgShape *,mlir::ODIE::ArgShape *,mlir::ODIE::ArgShape *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<int>::__assign_with_size[abi:nn200100]<int *,int *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<int>::__assign_with_size[abi:nn200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void llvm::SmallVectorImpl<mlir::ODIE::FuncShape>::append<std::__wrap_iter<mlir::ODIE::FuncShape const*>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0x8E38E38E38E38E39 * ((a3 - a2) >> 3);
  v7 = *(a1 + 8);
  if (v6 + v7 > *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::grow(a1, v6 + v7);
    LODWORD(v7) = *(a1 + 8);
  }

  if (a3 != a2)
  {
    v8 = 0;
    v9 = *a1 + 72 * v7;
    do
    {
      v10 = (v9 + v8);
      v11 = (a2 + v8);
      if (*(a2 + v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v10, *v11, *(v11 + 1));
      }

      else
      {
        v12 = *v11;
        v10->__r_.__value_.__r.__words[2] = *(v11 + 2);
        *&v10->__r_.__value_.__l.__data_ = v12;
      }

      v13 = (v9 + v8);
      v14 = a2 + v8;
      if (*(a2 + v8 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v13 + 1, *(v14 + 24), *(v14 + 32));
      }

      else
      {
        v15 = *(v14 + 24);
        v13[1].__r_.__value_.__r.__words[2] = *(v14 + 40);
        *&v13[1].__r_.__value_.__l.__data_ = v15;
      }

      v16 = v9 + v8;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      v17 = v9 + v8 + 48;
      *(v17 + 16) = 0;
      std::vector<mlir::ODIE::ArgShape>::__init_with_size[abi:nn200100]<mlir::ODIE::ArgShape*,mlir::ODIE::ArgShape*>(v17, *(a2 + v8 + 48), *(a2 + v8 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v8 + 56) - *(a2 + v8 + 48)) >> 3));
      v8 += 72;
    }

    while (a2 + v8 != a3);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + v6;
}

void llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 72, &v6);
  llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::moveElementsForGrow(__int128 **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = (v3 + 72 * v4);
    do
    {
      v6 = *v3;
      *(a2 + 16) = *(v3 + 2);
      *a2 = v6;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      *v3 = 0;
      v7 = *(v3 + 24);
      *(a2 + 40) = *(v3 + 5);
      *(a2 + 24) = v7;
      *(v3 + 4) = 0;
      *(v3 + 5) = 0;
      *(v3 + 3) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 48) = v3[3];
      *(a2 + 64) = *(v3 + 8);
      *(v3 + 6) = 0;
      *(v3 + 7) = 0;
      *(v3 + 8) = 0;
      a2 += 72;
      v3 = (v3 + 72);
    }

    while (v3 != v5);
    v3 = *a1;
    v8 = *(a1 + 2);
  }

  else
  {
    v8 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(v3, v3 + 9 * v8);
}

void llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(void **a1, void **a2)
{
  if (a2 != a1)
  {
    v7[5] = v2;
    v7[6] = v3;
    v4 = a2;
    do
    {
      v7[0] = v4 - 3;
      std::vector<mlir::ODIE::ArgShape>::__destroy_vector::operator()[abi:nn200100](v7);
      if (*(v4 - 25) < 0)
      {
        operator delete(*(v4 - 6));
      }

      v6 = v4 - 9;
      if (*(v4 - 49) < 0)
      {
        operator delete(*v6);
      }

      v4 -= 9;
    }

    while (v6 != a1);
  }
}

uint64_t llvm::SmallVector<mlir::ODIE::FuncShape,1u>::~SmallVector(uint64_t a1)
{
  llvm::SmallVectorTemplateBase<mlir::ODIE::FuncShape,false>::destroy_range(*a1, (*a1 + 72 * *(a1 + 8)));
  if (*a1 != a1 + 16)
  {
    free(*a1);
  }

  return a1;
}

uint64_t llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x25F891030]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t std::__function::__value_func<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::LegalizeToCoreOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::LegalizeToCoreOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E75238;
  std::__function::__value_func<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::LegalizeToCoreOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::LegalizeToCoreOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E75238;
  std::__function::__value_func<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x25F891040);
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::LegalizeToCoreOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::LegalizeToCoreOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

mlir::ODIE::Compiler::LegalizeToCoreOptions *std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::LegalizeToCoreOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::LegalizeToCoreOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14[295] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  v7 = mlir::ODIE::Compiler::LegalizeToCoreOptions::LegalizeToCoreOptions(v14);
  v8 = llvm::errs(v7);
  if ((mlir::detail::PassOptions::parseFromString(v14, v5, v6, v8) & 1) == 0)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(*v9 + 48))(v9, a2, v14);
    v10 = 1;
LABEL_5:
    mlir::ODIE::Compiler::LegalizeToCoreOptions::~LegalizeToCoreOptions(v14);
    v11 = *MEMORY[0x277D85DE8];
    return v10;
  }

  v13 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::ODIE::Compiler::LegalizeToCoreOptions::LegalizeToCoreOptions(v13);
}

mlir::ODIE::Compiler::LegalizeToCoreOptions *mlir::ODIE::Compiler::LegalizeToCoreOptions::LegalizeToCoreOptions(mlir::ODIE::Compiler::LegalizeToCoreOptions *this)
{
  v20 = *MEMORY[0x277D85DE8];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = this + 48;
  *(this + 5) = 0x400000000;
  *(this + 10) = this + 96;
  *(this + 11) = 0x400000000;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x1000000000;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  __str.__r_.__value_.__r.__words[0] = "Materialize the given enumerated shapes into the graph as static-shaped functions. Example: 'main:(3x3;4x3),main:(4x3;4x3)'";
  __str.__r_.__value_.__l.__size_ = 123;
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::ListOption<llvm::cl::desc>((this + 184), this, "enumerated-shapes", 17, &__str);
  *&v7 = "The action to take when we encounter a graph with constants marked as 'mutable'";
  *(&v7 + 1) = 79;
  v5 = 1;
  v6 = &v5;
  __src = "hoistToArg";
  v11 = 10;
  v13 = "hoist mutable weights to graph arguments";
  v14 = 40;
  v15 = "insertOptimizationBarrier";
  v16 = 25;
  v12 = 0;
  v17 = 1;
  v18 = "insert an optimization barrier after each mutable weight";
  v19 = 56;
  __str.__r_.__value_.__r.__words[0] = &__str.__r_.__value_.__r.__words[2];
  __str.__r_.__value_.__l.__size_ = 0x400000000;
  llvm::SmallVectorImpl<llvm::cl::OptionEnumValue>::append<llvm::cl::OptionEnumValue const*,void>(&__str, &__src, &v20);
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::ODIE::Compiler::Action>,llvm::cl::ValuesClass>(this + 448, this, "mutable-arg-action", 18, &v7, &v6, &__str);
  if (__str.__r_.__value_.__l.__data_ != &__str.__r_.__value_.__r.__words[2])
  {
    free(__str.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = "Directories to search for imports.";
  __str.__r_.__value_.__l.__size_ = 34;
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::ListOption<llvm::cl::desc>((this + 1056), this, "import-search-paths", 19, &__str);
  __str.__r_.__value_.__l.__size_ = 68;
  LOBYTE(v7) = 0;
  __src = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((this + 1320), this, "promote-buffers-to-mutable", 26, &__str, &__src);
  __str.__r_.__value_.__r.__words[0] = "Encloses mil dialect ops within coreml.graph() if a mil op is decomposed to multiple coreml ops.";
  __str.__r_.__value_.__l.__size_ = 96;
  LOBYTE(v7) = 0;
  __src = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((this + 1520), this, "isolate-mil-ops", 15, &__str, &__src);
  __src = this;
  v11 = 0;
  v2 = llvm::cl::Option::Option(this + 1720, 0, 0);
  *(this + 232) = 0;
  *(this + 115) = 0u;
  *(this + 234) = 0;
  *(this + 1880) = 0u;
  *(this + 1896) = 0;
  *(this + 233) = &unk_286E79070;
  *(this + 215) = &unk_286E792E0;
  *(this + 238) = &unk_286E791E0;
  *(this + 239) = &unk_286E75EB0;
  *(this + 242) = this + 1912;
  llvm::cl::Option::setArgStr(v2, "source-dialect", 14);
  llvm::cl::sub::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(&__src, this + 1720);
  *(this + 219) = "MLIR dialect of the input module.";
  *(this + 220) = 33;
  std::string::basic_string[abi:nn200100]<0>(&__str, "TorchImport");
  std::string::operator=((this + 1840), &__str);
  *(this + 1896) = 1;
  std::string::operator=(this + 78, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  llvm::cl::Option::addArgument((this + 1720));
  *(this + 1952) = 0;
  *(this + 215) = &unk_286E75DD0;
  *(this + 243) = &unk_286E75E50;
  __str.__r_.__value_.__r.__words[0] = this + 1944;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](this + 160, &__str);
  __str.__r_.__value_.__r.__words[0] = &unk_286E75518;
  __str.__r_.__value_.__l.__size_ = this + 1720;
  p_str = &__str;
  std::function<void ()(std::string const&)>::operator=(this + 239, &__str);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](&__str);
  __str.__r_.__value_.__l.__size_ = 63;
  LOBYTE(v7) = 1;
  __src = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((this + 1960), this, "remove-unused-externalized-graphs", 33, &__str, &__src);
  __str.__r_.__value_.__r.__words[0] = "Removes extra broadcast ops from eligible ops.";
  __str.__r_.__value_.__l.__size_ = 46;
  LOBYTE(v7) = 0;
  __src = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((this + 2160), this, "elide-explicit-broadcast", 24, &__str, &__src);
  v3 = *MEMORY[0x277D85DE8];
  return this;
}

void llvm::SmallVectorImpl<llvm::cl::OptionEnumValue>::append<llvm::cl::OptionEnumValue const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - __src) >> 3);
  v8 = *(a1 + 8);
  if (v7 + v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v7 + v8, 40);
    LODWORD(v8) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 40 * v8), __src, v6);
    LODWORD(v8) = *(a1 + 8);
  }

  *(a1 + 8) = v8 + v7;
}

uint64_t mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::Option<llvm::cl::desc,llvm::cl::initializer<mlir::ODIE::Compiler::Action>,llvm::cl::ValuesClass>(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6, uint64_t *a7)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = a3;
  v13[1] = a4;
  v12[0] = a2;
  v12[1] = 0;
  v9 = llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::ODIE::Compiler::Action>,llvm::cl::ValuesClass>(a1, v13, v12, a5, a6, a7);
  *(v9 + 600) = 0;
  *v9 = &unk_286E75280;
  *(v9 + 592) = &unk_286E75300;
  v12[0] = (v9 + 592);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, v12);
  v14[0] = &unk_286E754D0;
  v14[1] = a1;
  v14[3] = v14;
  std::function<void ()(mlir::ODIE::Compiler::Action const&)>::operator=((a1 + 560), v14);
  std::__function::__value_func<void ()(mlir::ODIE::Compiler::Action const&)>::~__value_func[abi:nn200100](v14);
  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<mlir::ODIE::Compiler::Action>,llvm::cl::ValuesClass>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, int **a5, uint64_t *a6)
{
  v12 = llvm::cl::Option::Option(a1, 0, 0);
  *(v12 + 120) = 0;
  *(v12 + 128) = &unk_286E753A8;
  *(v12 + 136) = 0;
  *v12 = &unk_286E75340;
  *(v12 + 152) = v12;
  *(v12 + 160) = v12 + 176;
  *(v12 + 168) = 0x800000000;
  *(v12 + 144) = &unk_286E753E8;
  *(v12 + 560) = &unk_286E75488;
  *(v12 + 584) = v12 + 560;
  llvm::cl::Option::setArgStr(v12, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>>(a3, a1);
  *(a1 + 32) = *a4;
  v13 = **a5;
  *(a1 + 120) = v13;
  *(a1 + 140) = 1;
  *(a1 + 136) = v13;
  llvm::cl::ValuesClass::apply<llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>>(a6, a1);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v12 = 0;
  v8 = llvm::cl::parser<mlir::ODIE::Compiler::Action>::parse(a1 + 144, a1, a3, a4, a5, a6, &v12);
  if (v8)
  {
    return v8;
  }

  *(a1 + 120) = v12;
  *(a1 + 12) = a2;
  v9 = *(a1 + 584);
  if (v9)
  {
    (*(*v9 + 48))(v9, &v12);
    return v8;
  }

  v11 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::getValueExpectedFlagDefault(v11);
}

uint64_t llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 152) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(uint64_t a1)
{
  *a1 = &unk_286E75340;
  std::__function::__value_func<void ()(mlir::ODIE::Compiler::Action const&)>::~__value_func[abi:nn200100](a1 + 560);
  *(a1 + 144) = &unk_286E75438;
  v2 = *(a1 + 160);
  if (v2 != (a1 + 176))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);
}

{
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

{
  *a1 = &unk_286E75340;
  std::__function::__value_func<void ()(mlir::ODIE::Compiler::Action const&)>::~__value_func[abi:nn200100](a1 + 560);
  *(a1 + 144) = &unk_286E75438;
  v2 = *(a1 + 160);
  if (v2 != (a1 + 176))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);
}

llvm::raw_ostream *llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::printOptionValue(llvm::raw_ostream *result, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 140) != 1 || *(result + 34) != *(result + 30))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 30);
    v6 = &unk_286E753A8;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 144), result, &v6, (result + 128), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::setDefault(uint64_t result)
{
  if (*(result + 140) == 1)
  {
    v1 = *(result + 136);
  }

  else
  {
    v1 = 0;
  }

  *(result + 120) = v1;
  return result;
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = llvm::raw_ostream::operator<<(this, *(a1 + 16), *(a1 + 24));
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 61);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 61;
  }

  return mlir::detail::PassOptions::printValue<mlir::ODIE::Compiler::Action>(this, a1 + 144, (a1 + 120));
}

uint64_t mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 120) = *(a2 - 472);
  *(result + 600) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(a1 - 592);
}

{
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(a1 - 592);

  JUMPOUT(0x25F891040);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 472) = *(a2 - 472);
  *(result + 8) = *(a2 + 8);
  return result;
}

void llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~opt(uint64_t a1)
{
  *a1 = &unk_286E75340;
  std::__function::__value_func<void ()(mlir::ODIE::Compiler::Action const&)>::~__value_func[abi:nn200100](a1 + 560);
  *(a1 + 144) = &unk_286E75438;
  v2 = *(a1 + 160);
  if (v2 != (a1 + 176))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E75340;
  std::__function::__value_func<void ()(mlir::ODIE::Compiler::Action const&)>::~__value_func[abi:nn200100](a1 + 560);
  *(a1 + 144) = &unk_286E75438;
  v2 = *(a1 + 160);
  if (v2 != (a1 + 176))
  {
    free(v2);
  }

  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void *mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_286E75438;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_286E75438;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

uint64_t llvm::cl::parser<mlir::ODIE::Compiler::Action>::getOption(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 16) + 48 * a2);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t llvm::cl::parser<mlir::ODIE::Compiler::Action>::getDescription(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 48 * a2;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

void *llvm::cl::parser<mlir::ODIE::Compiler::Action>::~parser(void *a1)
{
  *a1 = &unk_286E75438;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void llvm::cl::parser<mlir::ODIE::Compiler::Action>::~parser(void *a1)
{
  *a1 = &unk_286E75438;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x25F891040);
}

const void **llvm::cl::sub::apply<llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>>(const void **result, uint64_t a2)
{
  if (*result)
  {
    return llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), *result, v8);
  }

  v3 = result[1];
  if (v3)
  {
    v4 = *(v3 + 2);
    if (v4)
    {
      v5 = *v3;
      v6 = 8 * v4;
      do
      {
        v7 = *v5++;
        result = llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), v7, v8);
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

void llvm::cl::ValuesClass::apply<llvm::cl::opt<mlir::ODIE::Compiler::Action,false,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v4 = *a1;
    v5 = *a1 + 40 * v2;
    do
    {
      llvm::cl::parser<mlir::ODIE::Compiler::Action>::addLiteralOption<int>(a2 + 144, *v4, *(v4 + 8), (v4 + 16), *(v4 + 24), *(v4 + 32));
      v4 += 40;
    }

    while (v4 != v5);
  }
}

void llvm::cl::parser<mlir::ODIE::Compiler::Action>::addLiteralOption<int>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = &unk_286E753A8;
  v16 = 1;
  v15 = v9;
  v10 = llvm::SmallVectorTemplateCommon<llvm::cl::parser<mlir::ODIE::Compiler::Action>::OptionInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::ODIE::Compiler::Action>::OptionInfo,false>>(a1 + 16, v14, 1);
  v11 = *(a1 + 16) + 48 * *(a1 + 24);
  v12 = *(v10 + 16);
  *v11 = *v10;
  *(v11 + 16) = v12;
  *(v11 + 32) = &unk_286E753C8;
  v13 = *(v10 + 44);
  *(v11 + 40) = *(v10 + 40);
  *(v11 + 44) = v13;
  *(v11 + 32) = &unk_286E753A8;
  ++*(a1 + 24);
  llvm::cl::AddLiteralOption(*(a1 + 8), a2, a3);
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::cl::parser<mlir::ODIE::Compiler::Action>::OptionInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::ODIE::Compiler::Action>::OptionInfo,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 48 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::ODIE::Compiler::Action>::OptionInfo,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::ODIE::Compiler::Action>::OptionInfo,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::ODIE::Compiler::Action>::OptionInfo,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[48 * v6];
    v8 = v4 + 32;
    v9 = v4;
    do
    {
      v10 = *(v5 + 1);
      *v9 = *v5;
      *(v9 + 1) = v10;
      *(v9 + 4) = &unk_286E753C8;
      v11 = *(v5 + 10);
      v9[44] = v5[44];
      *(v9 + 10) = v11;
      *(v9 + 4) = &unk_286E753A8;
      v9 += 48;
      v5 += 48;
      v8 += 48;
    }

    while (v5 != v7);
    v5 = *a1;
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

void *std::function<void ()(mlir::ODIE::Compiler::Action const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(mlir::ODIE::Compiler::Action const&)>::__value_func[abi:nn200100](v5, a2);
  std::__function::__value_func<void ()(mlir::ODIE::Compiler::Action const&)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(mlir::ODIE::Compiler::Action const&)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t std::__function::__value_func<void ()(mlir::ODIE::Compiler::Action const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(mlir::ODIE::Compiler::Action const&)>::swap[abi:nn200100](void *result, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_4ODIE8Compiler6ActionENS4_19GenericOptionParserIS8_EEEC1IJN4llvm2cl4descENSE_11initializerIS8_EENSE_11ValuesClassEEEERS4_NSD_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISR_EEFvRKS8_EE7__cloneEPNS0_6__baseISW_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E754D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(mlir::ODIE::Compiler::Action const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::cl::parser<mlir::ODIE::Compiler::Action>::parse(uint64_t a1, uint64_t a2, const void *a3, size_t a4, const void *a5, size_t a6, _DWORD *a7)
{
  v8 = *(*(a1 + 8) + 24);
  if (v8)
  {
    a3 = a5;
  }

  if (v8)
  {
    a4 = a6;
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    v13 = *(a1 + 16);
    while (1)
    {
      if (*(v13 + 8) == a4)
      {
        if (!a4)
        {
          break;
        }

        a1 = memcmp(*v13, a3, a4);
        if (!a1)
        {
          break;
        }
      }

      v13 += 48;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    result = 0;
    *a7 = *(v13 + 40);
  }

  else
  {
LABEL_13:
    v17 = 1283;
    v16[0] = "Cannot find option named '";
    v16[2] = a3;
    v16[3] = a4;
    v18[0] = v16;
    v18[2] = "'!";
    v19 = 770;
    v14 = llvm::errs(a1);
    return llvm::cl::Option::error(a2, v18, 0, 0, v14);
  }

  return result;
}

void llvm::cl::generic_parser_base::getExtraOptionNames(void *a1, uint64_t a2)
{
  if (!*(a1[1] + 24))
  {
    v4 = (*(*a1 + 16))(a1);
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      do
      {
        v7 = (*(*a1 + 24))(a1, v6);
        llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(a2, v7, v8);
        v6 = (v6 + 1);
      }

      while (v5 != v6);
    }
  }
}

void llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

llvm::raw_ostream *mlir::detail::PassOptions::printValue<mlir::ODIE::Compiler::Action>(llvm::raw_ostream *a1, uint64_t a2, _DWORD *a3)
{
    ;
  }

  return llvm::raw_ostream::operator<<(a1, *(i - 44), *(i - 36));
}

llvm::cl::Option *mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::ListOption<llvm::cl::desc>(llvm::cl::Option *a1, const void *a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v10[0] = a3;
  v10[1] = a4;
  v9[0] = a2;
  v9[1] = 0;
  v7 = llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1, v10, v9, a5);
  *(v7 + 248) = 0;
  *v7 = &unk_286E75C60;
  *(v7 + 30) = &unk_286E75CE0;
  *(v7 + 32) = &unk_286E791E0;
  if ((*(v7 + 168) & 1) == 0)
  {
    *(a1 + 168) = 1;
  }

  v9[0] = v7 + 240;
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, v9);
  return a1;
}

llvm::cl::Option *llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(llvm::cl::Option *a1, uint64_t *a2, const void **a3, _OWORD *a4)
{
  v8 = llvm::cl::Option::Option(a1, 1, 0);
  *(v8 + 168) = 0;
  *(v8 + 152) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 120) = 0u;
  *v8 = &unk_286E75D20;
  *(v8 + 184) = 0;
  *(v8 + 192) = 0;
  *(v8 + 176) = 0;
  *(v8 + 200) = &unk_286E791E0;
  *(v8 + 208) = &unk_286E75D88;
  *(v8 + 232) = v8 + 208;
  llvm::cl::Option::setArgStr(v8, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>>(a3, a1);
  *(a1 + 2) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

BOOL mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    std::vector<std::string>::clear[abi:nn200100]((a1 + 120));
    *(a1 + 168) = 0;
  }

  *(a1 + 248) = 1;
  v12 = a1;
  v13[0] = a1 + 256;
  v14[0] = a3;
  v14[1] = a4;
  v13[1] = a1;
  v13[2] = v14;
  v13[3] = &v12;
  return (mlir::detail::pass_options::parseCommaSeparatedList(a1, a3, a4, a5, a6, llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<std::string>,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<std::string> &,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1} &&)::{lambda(llvm::StringRef)#1}>, v13) & 1) == 0;
}

void mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(uint64_t a1)
{
  *a1 = &unk_286E75D20;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 144);
  std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (a1 + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::cl::Option::~Option(a1);
}

{
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(a1);

  JUMPOUT(0x25F891040);
}

{
  *a1 = &unk_286E75D20;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 144);
  std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (a1 + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::cl::Option::~Option(a1);
}

void llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::setDefault(uint64_t a1)
{
  *(a1 + 184) = *(a1 + 176);
  std::vector<std::string>::clear[abi:nn200100]((a1 + 120));
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  while (v2 != v3)
  {
    llvm::cl::list_storage<std::string,BOOL>::addValue<std::string>(a1 + 120, (v2 + 8), 0);
    v2 += 40;
  }
}

llvm::raw_ostream *mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::print(llvm::raw_ostream *result, llvm::raw_ostream *this)
{
  v3 = result;
  if (*(result + 168) != 1)
  {
    goto LABEL_11;
  }

  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(result + 19) - *(result + 18)) >> 3);
  if (v4 != 0xAAAAAAAAAAAAAAABLL * ((*(result + 16) - *(result + 15)) >> 3))
  {
    goto LABEL_11;
  }

  v5 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      result = llvm::cl::OptionValueCopy<std::string>::compare(*(v3 + 18) + v6, (*(v3 + 15) + v7));
      if (!result)
      {
        break;
      }

      ++v8;
      v7 += 24;
      v6 += 40;
      if (v5 == v8)
      {
        v8 = v5;
        break;
      }
    }

    v4 = 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 16) - *(v3 + 15)) >> 3);
  }

  else
  {
    v8 = 0;
  }

  if (v4 != v8)
  {
LABEL_11:
    result = llvm::raw_ostream::operator<<(this, *(v3 + 2), *(v3 + 3));
    v9 = *(result + 4);
    if (*(result + 3) - v9 > 1uLL)
    {
      *v9 = 31549;
      *(result + 4) += 2;
    }

    else
    {
      result = llvm::raw_ostream::write(result, "={", 2uLL);
    }

    v10 = *(v3 + 15);
    v11 = *(v3 + 16);
    if (v10 != v11)
    {
      result = mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, v3 + 200, *(v3 + 15));
      for (i = v10 + 1; i != v11; ++i)
      {
        v13 = *(this + 4);
        if (*(this + 3) == v13)
        {
          llvm::raw_ostream::write(this, ",", 1uLL);
        }

        else
        {
          *v13 = 44;
          ++*(this + 4);
        }

        result = mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, v3 + 200, i);
      }
    }

    v14 = *(this + 4);
    if (*(this + 3) == v14)
    {

      return llvm::raw_ostream::write(this, "}", 1uLL);
    }

    else
    {
      *v14 = 125;
      ++*(this + 4);
    }
  }

  return result;
}

void mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>((a1 + 120), *(a2 - 120), *(a2 - 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 - 112) - *(a2 - 120)) >> 3));
  *(a1 + 248) = 1;
  *(a1 + 248) = *(a2 + 8);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(a1 - 240);
}

{
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(a1 - 240);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>((a1 - 120), *(a2 - 120), *(a2 - 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 - 112) - *(a2 - 120)) >> 3));
  *(a1 + 8) = 1;
  *(a1 + 8) = *(a2 + 8);
}

uint64_t llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, int a2, int a3, int a4, void *__src, size_t __len)
{
  v10 = a2;
  v17 = a2;
  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 168) == 1)
  {
    *(a1 + 184) = *(a1 + 176);
    std::vector<std::string>::clear[abi:nn200100]((a1 + 120));
    *(a1 + 168) = 0;
  }

  v12 = llvm::cl::parser<std::string>::parse(a1 + 200, a1, a3, a4, __src, __len, &__p);
  if ((v12 & 1) == 0)
  {
    llvm::cl::list_storage<std::string,BOOL>::addValue<std::string>(a1 + 120, &__p, 0);
    *(a1 + 12) = v10;
    std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 176), &v17);
    v13 = *(a1 + 232);
    if (!v13)
    {
      v15 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(v15);
    }

    (*(*v13 + 48))(v13, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12;
}

void llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(uint64_t a1)
{
  *a1 = &unk_286E75D20;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 144);
  std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (a1 + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  llvm::cl::Option::~Option(a1);
}

uint64_t llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(uint64_t a1)
{
  *a1 = &unk_286E75D20;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 208);
  v2 = *(a1 + 176);
  if (v2)
  {
    *(a1 + 184) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 144);
  std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (a1 + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
  llvm::cl::Option::~Option(a1);
  return MEMORY[0x25F891040]();
}

const void **llvm::cl::sub::apply<llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>>(const void **result, uint64_t a2)
{
  if (*result)
  {
    return llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), *result, v8);
  }

  v3 = result[1];
  if (v3)
  {
    v4 = *(v3 + 2);
    if (v4)
    {
      v5 = *v3;
      v6 = 8 * v4;
      do
      {
        v7 = *v5++;
        result = llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), v7, v8);
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t llvm::cl::parser<std::string>::parse(int a1, int a2, int a3, int a4, void *__src, size_t __len, uint64_t a7)
{
  if (__src)
  {
    if (__len >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    HIBYTE(v11) = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
    }

    *(&__dst + __len) = 0;
  }

  else
  {
    __dst = 0uLL;
    v11 = 0;
  }

  if (*(a7 + 23) < 0)
  {
    operator delete(*a7);
  }

  *a7 = __dst;
  *(a7 + 16) = v11;
  return 0;
}

void llvm::cl::list_storage<std::string,BOOL>::addValue<std::string>(uint64_t a1, std::string *__str, int a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    v24.__end_cap_.__value_ = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, v12);
    }

    v14 = (24 * v9);
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v14, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v15 = *&__str->__r_.__value_.__l.__data_;
      v14->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&v14->__r_.__value_.__l.__data_ = v15;
    }

    v13 = v14 + 1;
    v16 = *(a1 + 8) - *a1;
    v17 = v14 - v16;
    memcpy(v14 - v16, *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v14 + 1;
    v19 = *(a1 + 16);
    *(a1 + 16) = 0;
    v24.__end_ = v18;
    v24.__end_cap_.__value_ = v19;
    v24.__first_ = v18;
    v24.__begin_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v24);
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = *&__str->__r_.__value_.__l.__data_;
      *(v7 + 16) = *(&__str->__r_.__value_.__l + 2);
      *v7 = v8;
    }

    v13 = (v7 + 24);
  }

  *(a1 + 8) = v13;
  if (a3)
  {
    memset(&v24.__begin_, 0, 24);
    v24.__first_ = &unk_286E79070;
    LOBYTE(v24.__end_cap_.__value_) = 1;
    std::string::operator=(&v24.__begin_, __str);
    v20 = *(a1 + 32);
    if (v20 >= *(a1 + 40))
    {
      v23 = std::vector<llvm::cl::OptionValue<std::string>>::__emplace_back_slow_path<llvm::cl::OptionValue<std::string>>((a1 + 24), &v24);
    }

    else
    {
      *v20 = &unk_286E75E90;
      v21 = (v20 + 8);
      if (SHIBYTE(v24.__end_cap_.__value_) < 0)
      {
        std::string::__init_copy_ctor_external(v21, v24.__begin_, v24.__end_);
      }

      else
      {
        v22 = *&v24.__begin_;
        *(v20 + 24) = v24.__end_cap_.__value_;
        *&v21->__r_.__value_.__l.__data_ = v22;
      }

      *(v20 + 32) = v24.__end_cap_.__value_;
      *v20 = &unk_286E79070;
      v23 = v20 + 40;
    }

    *(a1 + 32) = v23;
    v24.__first_ = &unk_286E75E90;
    if (SHIBYTE(v24.__end_cap_.__value_) < 0)
    {
      operator delete(v24.__begin_);
    }
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
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

uint64_t std::vector<llvm::cl::OptionValue<std::string>>::__emplace_back_slow_path<llvm::cl::OptionValue<std::string>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<llvm::cl::OptionValue<std::string>>::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::cl::OptionValue<std::string>>>(a1, v6);
  }

  v7 = 40 * v2;
  llvm::cl::OptionValueCopy<std::string>::OptionValueCopy(v7, a2);
  *v7 = &unk_286E79070;
  v8 = v7 + 40;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::cl::OptionValue<std::string>>,llvm::cl::OptionValue<std::string>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<llvm::cl::OptionValue<std::string>>::~__split_buffer(v14);
  return v8;
}

uint64_t llvm::cl::OptionValueCopy<std::string>::OptionValueCopy(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286E75E90;
  v4 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

BOOL llvm::cl::OptionValueCopy<std::string>::compare(uint64_t a1, void *a2)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v9 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(v6, a2, v3) == 0;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::cl::OptionValue<std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::cl::OptionValue<std::string>>,llvm::cl::OptionValue<std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a4;
    v8 = a2;
    do
    {
      v9 = llvm::cl::OptionValueCopy<std::string>::OptionValueCopy(v4, v8);
      *v9 = &unk_286E79070;
      v4 = (v9 + 5);
      v8 += 40;
      v7 += 40;
    }

    while (v8 != a3);
    v10 = v6 + 8;
    do
    {
      *(v10 - 8) = &unk_286E75E90;
      v11 = v10 - 8;
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 40;
      v6 += 40;
    }

    while (v11 + 40 != a3);
  }
}

uint64_t std::__split_buffer<llvm::cl::OptionValue<std::string>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<llvm::cl::OptionValue<std::string>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<llvm::cl::OptionValue<std::string>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      *(v2 - 40) = &unk_286E75E90;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<llvm::cl::OptionValue<std::string>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<llvm::cl::OptionValue<std::string>>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<llvm::cl::OptionValue<std::string>>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 40;
    v6 = *(a1 + 8);
    do
    {
      *(v6 - 40) = &unk_286E75E90;
      v6 -= 40;
      if (*(v6 + 31) < 0)
      {
        operator delete(*(v4 - 32));
      }

      v5 -= 40;
      v4 = v6;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<std::string>,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<std::string> &,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1} &&)::{lambda(llvm::StringRef)#1}>(uint64_t a1, void *__src, size_t __len)
{
  memset(&__p, 0, sizeof(__p));
  if (llvm::cl::parser<std::string>::parse(*a1, *(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8), __src, __len, &__p))
  {
    v4 = 0;
  }

  else
  {
    llvm::cl::list_storage<std::string,BOOL>::addValue<std::string>(**(a1 + 24) + 120, &__p, 0);
    v4 = 1;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

llvm::raw_ostream *mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(llvm::raw_ostream *a1, int a2, std::string *this)
{
  v5 = std::string::find(this, 32, 0);
  v6 = std::string::find(this, 123, 0);
  v7 = std::string::find(this, 39, 0);
  v8 = std::string::find(this, 34, 0);
  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v8 < v9)
  {
    v9 = v8;
  }

  if (v5 >= v9)
  {
    v11 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v11 >= 0)
    {
      v12 = this;
    }

    else
    {
      v12 = this->__r_.__value_.__r.__words[0];
    }

    if (v11 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v14 = a1;
  }

  else
  {
    v10 = *(a1 + 4);
    if (*(a1 + 3) == v10)
    {
      llvm::raw_ostream::write(a1, "{", 1uLL);
    }

    else
    {
      *v10 = 123;
      ++*(a1 + 4);
    }

    v15 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v15 >= 0)
    {
      v16 = this;
    }

    else
    {
      v16 = this->__r_.__value_.__r.__words[0];
    }

    if (v15 >= 0)
    {
      v17 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = this->__r_.__value_.__l.__size_;
    }

    result = llvm::raw_ostream::write(a1, v16, v17);
    v19 = *(a1 + 4);
    if (*(a1 + 3) != v19)
    {
      *v19 = 125;
      ++*(a1 + 4);
      return result;
    }

    v12 = "}";
    v14 = a1;
    size = 1;
  }

  return llvm::raw_ostream::write(v14, v12, size);
}

void std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:nn200100](a1, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:nn200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:nn200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<std::string>::__throw_length_error[abi:nn200100]();
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        this->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&this->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      ++this;
    }

    while (v6 != a3);
  }

  return this;
}

void mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  *a1 = &unk_286E792E0;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 192);
  *(a1 + 144) = &unk_286E75E90;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  llvm::cl::Option::~Option(a1);
}

{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1);

  JUMPOUT(0x25F891040);
}

{
  *a1 = &unk_286E792E0;
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](a1 + 192);
  *(a1 + 144) = &unk_286E75E90;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  llvm::cl::Option::~Option(a1);
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = llvm::raw_ostream::operator<<(this, *(a1 + 16), *(a1 + 24));
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 61);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 61;
  }

  return mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, a1 + 184, (a1 + 120));
}

std::string *mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::copyValueFrom(std::string *a1, uint64_t a2)
{
  result = std::string::operator=(a1 + 5, (a2 - 104));
  a1[9].__r_.__value_.__s.__data_[16] = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1 - 224);
}

{
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1 - 224);

  JUMPOUT(0x25F891040);
}

std::string *non-virtual thunk tomlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::string::operator=((a1 - 104), (a2 - 104));
  *(a1 + 8) = *(a2 + 8);
  return result;
}

const void **llvm::cl::sub::apply<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>>(const void **result, uint64_t a2)
{
  if (*result)
  {
    return llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), *result, v8);
  }

  v3 = result[1];
  if (v3)
  {
    v4 = *(v3 + 2);
    if (v4)
    {
      v5 = *v3;
      v6 = 8 * v4;
      do
      {
        v7 = *v5++;
        result = llvm::SmallPtrSetImpl<llvm::cl::SubCommand *>::insert((a2 + 88), v7, v8);
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

void *std::function<void ()(std::string const&)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:nn200100](v5, a2);
  std::__function::__value_func<void ()(std::string const&)>::swap[abi:nn200100](v5, a1);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(std::string const&)>::swap[abi:nn200100](void *result, void *a2)
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

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN4llvm2cl6parserISB_EEEC1IJNSD_4descENSD_11initializerIA12_cEEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS9_ISU_EEFvRKSB_EE7__cloneEPNS0_6__baseISY_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E75518;
  a2[1] = v2;
  return result;
}

void llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::setDefaultImpl<std::string,void>(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    v4 = (a1 + 120);

    std::string::operator=(v4, (a1 + 152));
  }

  else
  {
    v6 = v1;
    v7 = v2;
    memset(&__str, 0, sizeof(__str));
    std::string::operator=((a1 + 120), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void mlir::ODIE::Compiler::LegalizeToCoreOptions::~LegalizeToCoreOptions(mlir::ODIE::Compiler::LegalizeToCoreOptions *this)
{
  v2 = (this + 2160);
  *(this + 270) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 2312);
  llvm::cl::Option::~Option(v2);
  *(this + 245) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 2112);
  llvm::cl::Option::~Option(this + 245);
  mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(this + 1720);
  *(this + 190) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 1672);
  llvm::cl::Option::~Option(this + 190);
  *(this + 165) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 1472);
  llvm::cl::Option::~Option(this + 165);
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(this + 1056);
  mlir::detail::PassOptions::Option<mlir::ODIE::Compiler::Action,mlir::detail::PassOptions::GenericOptionParser<mlir::ODIE::Compiler::Action>>::~Option(this + 448);
  mlir::detail::PassOptions::ListOption<mlir::ODIE::FuncShape,llvm::cl::parser<mlir::ODIE::FuncShape>>::~ListOption(this + 184);
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  llvm::StringMap<llvm::cl::Option *,llvm::MallocAllocator>::~StringMap(this + 128);
  v4 = *(this + 10);
  if (v4 != this + 96)
  {
    free(v4);
  }

  v5 = *(this + 4);
  if (v5 != this + 48)
  {
    free(v5);
  }
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::LegalizeToCoreOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::LegalizeToCoreOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::LegalizeToCoreOptions const&)>)::{lambda(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)#1}>,void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v5[295] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = *(a2 + 8);
  bzero(v5, 0x938uLL);
  mlir::ODIE::Compiler::LegalizeToCoreOptions::LegalizeToCoreOptions(v5);
  v3(v2, v5);
  mlir::ODIE::Compiler::LegalizeToCoreOptions::~LegalizeToCoreOptions(v5);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__value_func<void ()(llvm::function_ref<void ()(mlir::detail::PassOptions const&)>)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<mlir::ODIE::Compiler::registerPassPipelines(void)::$_1,std::allocator<mlir::ODIE::Compiler::registerPassPipelines(void)::$_1>,void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>::operator()(uint64_t a1, mlir::ODIE::Compiler::_anonymous_namespace_ *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  RegisteredOptionsForPassManager = mlir::ODIE::Compiler::getRegisteredOptionsForPassManager(a2);
  v12 = 0;
  v5 = *(a3 + 327);
  if (v5 >= 0)
  {
    v6 = *(a3 + 327);
  }

  else
  {
    v6 = *(a3 + 312);
  }

  if (v6)
  {
    if (v5 >= 0)
    {
      v7 = (a3 + 304);
    }

    else
    {
      v7 = *(a3 + 304);
    }

    v8 = llvm::StringMap<mlir::ODIE::Compiler::ModuleRewriter,llvm::MallocAllocator>::find(&RegisteredOptionsForPassManager[1], v7, v6);
    std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::__value_func[abi:nn200100](v9, *v8 + 8);
    if (*(a3 + 567) < 0)
    {
      std::string::__init_copy_ctor_external(&v11, *(a3 + 544), *(a3 + 552));
    }

    else
    {
      v11 = *(a3 + 544);
    }

    if (v10)
    {
      if (v10 == v9)
      {
        v14 = v13;
        (*(*v10 + 24))();
      }

      else
      {
        v14 = v10;
        v10 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    __p.__pn_ = v11;
    memset(&v11, 0, sizeof(v11));
    operator new();
  }

  v14 = 0;
  std::__fs::filesystem::__absolute(&__p, RegisteredOptionsForPassManager, 0);
  mlir::ODIE::Compiler::Transforms::createSegmentForDelegates(v13);
}

uint64_t llvm::StringMap<mlir::ODIE::Compiler::ModuleRewriter,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  if (Key == -1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = Key;
  }

  return *a1 + 8 * v8;
}

uint64_t std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createRunDefaultSegmenterPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createRunDefaultSegmenterPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_286E755F0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

void std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createRunDefaultSegmenterPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createRunDefaultSegmenterPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_286E755F0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x25F891040);
}

void std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createRunDefaultSegmenterPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createRunDefaultSegmenterPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286E755F0;
  v3 = (a2 + 5);
  std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  if (*(a1 + 63) < 0)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    std::string::__init_copy_ctor_external(v3, v5, v6);
  }

  else
  {
    v4 = *(a1 + 40);
    v3->__r_.__value_.__r.__words[2] = *(a1 + 56);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }
}

void std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createRunDefaultSegmenterPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createRunDefaultSegmenterPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::destroy_deallocate(void *a1)
{

  operator delete(a1);
}

void std::__function::__func<mlir::ODIE::Compiler::anonymous namespace::createRunDefaultSegmenterPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createRunDefaultSegmenterPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::operator()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
  }

  v8 = *a4;
  v7 = a4[1];
  v9 = *a2;
  *a2 = 0;
  v18 = v9;
  std::__fs::filesystem::__absolute(&__p, &v17, 0);
  v12 = *(a1 + 40);
  v11 = a1 + 40;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v10 = v11;
  }

  if (v13 < 0)
  {
    v13 = *(v11 + 8);
  }

  v20 = v10;
  v21 = v13;
  v22 = v8;
  v23 = v7;
  v14 = *(v11 - 8);
  if (v14)
  {
    (*(*v14 + 48))(v14, &v18);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    v15 = v18;
    v18 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = std::__throw_bad_function_call[abi:nn200100]();
  }
}

uint64_t std::__function::__alloc_func<mlir::ODIE::Compiler::anonymous namespace::createRunDefaultSegmenterPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)::$_0,std::allocator<mlir::ODIE::Compiler::anonymous namespace::createRunDefaultSegmenterPassPipeline(mlir::OpPassManager &,mlir::ODIE::Compiler::Options const&,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)::$_0>,std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::destroy[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](a1);
}

void *std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::swap[abi:nn200100](void *result, void *a2)
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

uint64_t std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(mlir::ODIE::Compiler::ModuleRewriter::Payload &&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::unique_ptr<llvm::MemoryBuffer> ()(std::unique_ptr<llvm::MemoryBuffer>&&,std::__fs::filesystem::path const&,llvm::function_ref<void ()(llvm::Twine const&)>)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>::function(uint64_t a1, uint64_t a2)
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

void *std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E75638;
  return a1;
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::~__func(void *a1)
{
  *a1 = &unk_286E75638;

  JUMPOUT(0x25F891040);
}

void std::__function::__func<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1},std::allocator<mlir::PassPipelineRegistration<mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions>::PassPipelineRegistration(llvm::StringRef,llvm::StringRef,std::function<void ()(mlir::OpPassManager &,mlir::ODIE::Compiler::anonymous namespace::SegmenterOptions const&)>)::{lambda(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)#1}>,llvm::LogicalResult ()(mlir::OpPassManager &,llvm::StringRef,llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>)>::destroy_deallocate(void *a1)
{

  operator delete(a1);
}