uint64_t anonymous namespace::performGatherScatterComputation<short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v43 = *MEMORY[0x277D85DE8];
  v11 = *(a3 + 32);
  v12 = *(*(a3 + 40) + 4 * (v11 - 1));
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  if (v11 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(a3 + 32);
  }

  if (v14 >= v15)
  {
    v17 = (v15 - 1);
    v16 = 1;
    do
    {
      v16 *= *(v13 + 4 * v17++);
    }

    while (v17 < v14);
  }

  else
  {
    v16 = 1;
  }

  v18 = *(*(a2 + 24) + 16);
  v19 = v18 * v16;
  v20 = *(a2 + 32);
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = 0;
  memset(__dst, 0, sizeof(__dst));
  ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v37, v13, v11 - 1);
  v21 = a4;
  if (a8)
  {
    a4 = a5;
    a5 = v21;
  }

  while (1)
  {
    if (v11 >= 2)
    {
      memcpy(__dst, v38, 4 * (v11 - 1));
    }

    ODIE::Common::NDArrayType::ravelMultiIndex(a1, __dst, v14, &v35);
    v22 = v35;
    if (v36 != 1)
    {
      break;
    }

    ODIE::Common::NDArrayType::ravelMultiIndex(a3, __dst, v11, &v35);
    if (v36 != 1)
    {
      v22 = v35;
      break;
    }

    if (v12 >= 1)
    {
      v23 = (a6 + 2 * v35);
      v24 = v41;
      v25 = v12;
      do
      {
        v26 = *v23++;
        *v24++ = v26;
        --v25;
      }

      while (v25);
    }

    ODIE::Common::NDArrayType::ravelMultiIndex(a2, v41, v20, &v35);
    v27 = v35;
    if ((v36 & 1) == 0)
    {
      v22 = v35;
      break;
    }

    if (a8)
    {
      v28 = v35;
    }

    else
    {
      v28 = v22;
    }

    if (a8)
    {
      v27 = v22;
    }

    memcpy((a4 + v18 * v28), (a5 + v18 * v27), v19);
    ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v37);
    if (v38[44] == 1)
    {
      v22 = 0;
      break;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t anonymous namespace::performGatherScatterComputation<int>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = *(a3 + 32);
  v12 = *(*(a3 + 40) + 4 * (v11 - 1));
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  if (v11 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(a3 + 32);
  }

  if (v14 >= v15)
  {
    v17 = (v15 - 1);
    v16 = 1;
    do
    {
      v16 *= *(v13 + 4 * v17++);
    }

    while (v17 < v14);
  }

  else
  {
    v16 = 1;
  }

  v18 = *(*(a2 + 24) + 16);
  v19 = v18 * v16;
  v20 = *(a2 + 32);
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v37 = 0;
  memset(__dst, 0, sizeof(__dst));
  ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v34, v13, v11 - 1);
  v21 = a4;
  if (a8)
  {
    a4 = a5;
    v22 = v21;
  }

  else
  {
    v22 = a5;
  }

  while (1)
  {
    if (v11 >= 2)
    {
      memcpy(__dst, v35, 4 * (v11 - 1));
    }

    ODIE::Common::NDArrayType::ravelMultiIndex(a1, __dst, v14, &v32);
    v23 = v32;
    if (v33 != 1)
    {
      break;
    }

    ODIE::Common::NDArrayType::ravelMultiIndex(a3, __dst, v11, &v32);
    if (v33 != 1)
    {
      v23 = v32;
      break;
    }

    if (v12 >= 1)
    {
      memcpy(v38, (a6 + 4 * v32), 4 * v12);
    }

    ODIE::Common::NDArrayType::ravelMultiIndex(a2, v38, v20, &v32);
    v24 = v32;
    if (v33 != 1)
    {
      v23 = v32;
      break;
    }

    if (a8)
    {
      v25 = v32;
    }

    else
    {
      v25 = v23;
    }

    if (a8)
    {
      v24 = v23;
    }

    memcpy((a4 + v18 * v25), (v22 + v18 * v24), v19);
    ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v34);
    if (v35[44] == 1)
    {
      v23 = 0;
      break;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceGatherNd(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v20);
  }

  v8 = *(v7 + 40);
  v9 = *(v7 + 32);
  v10 = *v6;
  if (*(*v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v21);
  }

  v11 = *(v10 + 40);
  v12 = *(v10 + 32);
  v28 = 0;
  memset(__src, 0, sizeof(__src));
  v13 = v24;
  if (BYTE4(v24) == 1)
  {
    v14 = a1[1];
    v24 = *a1;
    v25 = v14;
    v26 = *(a1 + 4);
    v15 = odie_alloc_aligned(&v24, 4 * v13, 4, 0);
    v16 = v15;
    if (v13 >= 1)
    {
      memcpy(v15, __src, 4 * v13);
    }

    v26 = *(a1 + 4);
    v17 = a1[1];
    v24 = *a1;
    v25 = v17;
    ODIE::Common::NDArrayType::create(&v24, *(v7 + 24), v13, v16, v13, &ODIE::Common::Constants::kDefaultDimOrdering, v13, &v22);
    if (v23)
    {
      v13 = 0;
      *a4 = v22;
    }

    else
    {
      v13 = v22;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceGatherNd(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 2 || *(**a2 + 8) != 2 || *(*a2[1] + 8) != 2)
  {
    v32 = "gather_nd expects 2 NDArrayType inputs.";
LABEL_32:
    v33 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v34 = "validateOperandsAreNdArrayType";
    v35 = "%s";
    v39 = v32;
LABEL_33:
    v22 = 1;
    odie_log(1, v33, v34, v35, v39);
    return v22;
  }

  if (a5 != 1 || (v7 = *a4, v8 = **a4, *(v8 + 8) != 2))
  {
    v32 = "gather_nd expects 1 NDArrayType output.";
    goto LABEL_32;
  }

  v10 = 0;
  v11 = 0;
  v12 = 1;
  v13 = 1;
  while (1)
  {
    v14 = v10;
    v15 = a2[v11];
    if (*(*v15 + 16))
    {
      if (!v15[1])
      {
        break;
      }
    }

    v10 = 1;
    v12 = v13;
    v11 = 1;
    v13 = 0;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  v22 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v11);
  if (v12)
  {
    return v22;
  }

  v7 = *a4;
  v8 = **a4;
LABEL_10:
  if (*(v8 + 16) && !v7[1])
  {
    v33 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v34 = "validateOperandsHaveData";
    v35 = "Operand %lld does not have data bound.";
    v39 = 0;
    goto LABEL_33;
  }

  v16 = *a2;
  v17 = a2[1];
  v18 = **a2;
  if (*(v18 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v36);
  }

  v19 = *(v18 + 24);
  if (*(v19 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  if (*(v19 + 24) == 19)
  {
    v33 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/GatherScatter.cpp";
    v34 = "valueInferenceGatherNd";
    v35 = "Do not support si4 input datatype yet (rdar://144753950).";
    goto LABEL_33;
  }

  v20 = v16[1];
  v21 = *v17;
  if (*(*v17 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v37);
  }

  ODIE::Common::NDArrayType::getNumElements(*v17, &v40);
  v22 = v40;
  if ((BYTE4(v40) & 1) != 0 && v40)
  {
    v23 = *v7;
    if (*(*v7 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v38);
    }

    v24 = v7[1];
    v25 = *(*(v21 + 24) + 16);
    if (v25 == 4)
    {
      v29 = v17[1];
      v30 = a1[1];
      v40 = *a1;
      v41 = v30;
      v42 = *(a1 + 4);
      if (!v28)
      {
        return 0;
      }

      return v28;
    }

    if (v25 == 2)
    {
      v26 = v17[1];
      v27 = a1[1];
      v40 = *a1;
      v41 = v27;
      v42 = *(a1 + 4);
      if (!v28)
      {
        return 0;
      }

      return v28;
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/GatherScatter.cpp", "valueInferenceGatherNd", "Unexpected indices data type encountered in gather_nd");
    return 2;
  }

  return v22;
}

void ODIE::Kernels::Core::CPU::registerGatherScatterKernels(_OWORD **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v9[40] = 0;
  v10 = "coreml.scatter_nd";
  v11 = 35;
  v12 = ODIE::Kernels::Core::CPU::typeInferenceScatterNd;
  v13 = ODIE::Kernels::Core::CPU::valueInferenceScatterNd;
  v14 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v9, 1);
  v3[40] = 0;
  v4 = "coreml.gather_nd";
  v5 = 33;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceGatherNd;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceGatherNd;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  ODIE::Common::String::~String(v9);
  v2 = *MEMORY[0x277D85DE8];
}

void ODIE::Common::NDArrayType::ravelMultiIndex(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    v5 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.hpp", "ravelMultiIndex", "multiIndex input cannot be nullptr.");
    goto LABEL_14;
  }

  if (a3 != *(a1 + 32))
  {
    v10 = "multiIndex input has %lld elements whereas NDArrayType rank is %d.";
    v11 = *(a1 + 32);
LABEL_13:
    v5 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.hpp", "ravelMultiIndex", v10, a3, v11, v12);
LABEL_14:
    v9 = 0;
    goto LABEL_11;
  }

  if ((*(a1 + 16) & 0x8000000000000000) != 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/NDArrayType.hpp", "ravelMultiIndex", "Cannot query ravelMultiIndex() if NDArrayType is not fully known.");
    v9 = 0;
    v5 = 2;
    goto LABEL_11;
  }

  if (a3 - 1 >= 0)
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      a3 = (a3 - 1);
      v7 = *(a2 + 4 * a3);
      v8 = *(*(a1 + 40) + 4 * a3);
      if (v7 >= v8)
      {
        break;
      }

      v5 += v7 * v6;
      v6 *= v8;
      if (a3 <= 0)
      {
        goto LABEL_10;
      }
    }

    v11 = *(a2 + 4 * a3);
    v12 = *(*(a1 + 40) + 4 * a3);
    v10 = "multiIndex[%d] = %d, but NDArrayType dimension is %d.";
    goto LABEL_13;
  }

  v5 = 0;
LABEL_10:
  v9 = 1;
LABEL_11:
  *a4 = v5;
  *(a4 + 4) = v9;
}

uint64_t ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(uint64_t result)
{
  if ((*(result + 52) & 1) == 0)
  {
    v1 = *(result + 48);
    if (v1 < 1)
    {
LABEL_6:
      *(result + 52) = 1;
    }

    else
    {
      v2 = v1 + 1;
      v3 = (*result + 4 * v1 - 4);
      while (1)
      {
        v4 = *(result + 4 * v2) + 1;
        *(result + 4 * v2) = v4;
        v5 = *v3--;
        if (v4 < v5)
        {
          break;
        }

        *(result + 4 * v2--) = 0;
        if (v2 <= 1)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0;
  *(result + 48) = a3;
  *(result + 52) = 0;
  if (a3 >= 11)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/PositionIterator.hpp", "PositionIterator", "Expect rank to be < %d", 10);
    ODIE::Platform::abort(v7);
  }

  if (a3 < 1)
  {
    v6 = 1;
  }

  else if (*(result + 8) == **result)
  {
    v3 = 0;
    while (a3 - 1 != v3)
    {
      v4 = *(result + 12 + 4 * v3);
      v5 = *(*result + 4 + 4 * v3++);
      if (v4 != v5)
      {
        goto LABEL_11;
      }
    }

    v3 = a3;
LABEL_11:
    v6 = v3 >= a3;
  }

  else
  {
    v6 = 0;
  }

  *(result + 52) = v6;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceGelu(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v10);
  }

  v6 = *(v5 + 40);
  v7 = *(v5 + 32);
  v12 = *(a1 + 32);
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  ODIE::Common::NDArrayType::create(v11, *(v5 + 24), v7, v6, v7, &ODIE::Common::Constants::kDefaultDimOrdering, v7, &v13);
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  result = 0;
  *a4 = v13;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceGelu(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t a4)
{
  v4 = **a2;
  if (*(v4 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v37);
  }

  v5 = *(**a2 + 3);
  if (*(v5 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  v6 = *(v5 + 24);
  v7 = *(*a4 + 8);
  v8 = (*a2)[1];
  v38 = *(a1 + 104);
  NamedAttributes = ODIE::Common::SymbolAttr::getNamedAttributes(&v38);
  if (NamedAttributes && (*&v38 = NamedAttributes, *(&v38 + 1) = v10, (v11 = ODIE::Common::DictionaryAttr::getAttrByName<ODIE::Common::StringAttr>(&v38, "approximate", 0xBuLL)) != 0))
  {
    v12 = (v11 + *(v11 - *v11 + 4));
    v13 = v12 + *v12 + 4;
  }

  else
  {
    v13 = &byte_25D0A27DF;
  }

  ODIE::Common::NDArrayType::getNumElements(v4, &v38);
  v14 = v38;
  if (BYTE4(v38) == 1)
  {
    if (v6 != 69)
    {
      if (v6 == 68)
      {
        v15 = strlen(v13);
        *&v38 = v13;
        *(&v38 + 1) = v15;
        if (v14 >= 1)
        {
          while (1)
          {
            _H14 = *v8;
            if (!ODIE::Common::StringRef::compare(&v38, "tanh", 4uLL))
            {
              break;
            }

            if (!ODIE::Common::StringRef::compare(&v38, "none", 4uLL))
            {
              __asm { FCVT            D0, H14 }

              v22 = _D0 * 0.5;
              v23 = erfc(_D0 * -0.707106781);
              goto LABEL_17;
            }

            if (!ODIE::Common::StringRef::compare(&v38, "sigmoid", 7uLL))
            {
              __asm { FCVT            D14, H14 }

              _D0 = 1.0 / (exp(_D14 * -1.702) + 1.0) * _D14;
              goto LABEL_18;
            }

            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Gelu.cpp", "geluImpl", "Unsupported approximate value: %s in gelu kernel.", v13);
LABEL_19:
            v7 = (v7 + 2);
            v8 = (v8 + 2);
            if (!--v14)
            {
              return 0;
            }
          }

          __asm { FCVT            D0, H14 }

          v22 = _D0 * 0.5;
          v23 = tanh((_D0 + _D0 * 0.044715 * _D0 * _D0) * 0.797884561) + 1.0;
LABEL_17:
          _D0 = v22 * v23;
LABEL_18:
          __asm { FCVT            H0, D0 }

          *v7 = _H0;
          goto LABEL_19;
        }

        return 0;
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Gelu.cpp", "valueInferenceGelu", "Unsupported element scalar tag: %d in gelu kernel.");
      return 2;
    }

    v28 = strlen(v13);
    *&v38 = v13;
    *(&v38 + 1) = v28;
    if (v14 < 1)
    {
      return 0;
    }

    while (1)
    {
      v29 = *v8;
      if (!ODIE::Common::StringRef::compare(&v38, "tanh", 4uLL))
      {
        break;
      }

      if (!ODIE::Common::StringRef::compare(&v38, "none", 4uLL))
      {
        v33 = v29;
        v31 = v29 * 0.5;
        v32 = erfc(v33 * -0.707106781);
        goto LABEL_29;
      }

      if (!ODIE::Common::StringRef::compare(&v38, "sigmoid", 7uLL))
      {
        v34 = 1.0 / (exp(v29 * -1.702) + 1.0) * v29;
        goto LABEL_30;
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Gelu.cpp", "geluImpl", "Unsupported approximate value: %s in gelu kernel.", v13);
LABEL_31:
      ++v7;
      v8 = (v8 + 4);
      if (!--v14)
      {
        return 0;
      }
    }

    v30 = v29;
    v31 = v29 * 0.5;
    v32 = tanh((v30 + v30 * 0.044715 * v30 * v30) * 0.797884561) + 1.0;
LABEL_29:
    v34 = v31 * v32;
LABEL_30:
    v35 = v34;
    *v7 = v35;
    goto LABEL_31;
  }

  return v14;
}

void ODIE::Kernels::Core::CPU::registerGeluKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.gelu";
  v4 = 23;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceGelu;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceGelu;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceGetShape(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 1 || (v5 = **a2, *(v5 + 8) != 2))
  {
    v13 = "get_shape expects a packed NDArrayType input.";
LABEL_18:
    v14 = "validateOperandsAreNdArrayType";
    v15 = "%s";
    v16 = v13;
LABEL_19:
    v11 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v14, v15, v16);
    return v11;
  }

  if (a5 != 1 || (v6 = **a4, *(v6 + 8) != 2))
  {
    v13 = "get_shape expects a packed NDArrayType output.";
    goto LABEL_18;
  }

  if (*(v5 + 16) && !(*a2)[1] || ((v7 = (*a4)[1], *(v6 + 16)) ? (v8 = v7 == 0) : (v8 = 0), v8))
  {
    v14 = "validateOperandsHaveData";
    v15 = "Operand %lld does not have data bound.";
    v16 = 0;
    goto LABEL_19;
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    v10 = *(v5 + 40);
    do
    {
      *(v7 + 4 * v9) = *(v10 + 4 * v9);
      ++v9;
    }

    while (v9 < *(v5 + 32));
  }

  return 0;
}

void ODIE::Kernels::Core::CPU::registerGetShapeKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.get_shape";
  v4 = 33;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceGetShape;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceGetShape;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceBatchedMatMul(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v20);
  }

  v7 = *a2[1];
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v21);
  }

  v8 = *(v6 + 40);
  v9 = *(v6 + 32);
  v10 = v9 - 2;
  v11 = v8[v10];
  v12 = *(*(v7 + 40) + 4 * (v9 - 1));
  v13 = a1[1];
  v24 = *a1;
  v25 = v13;
  v26 = *(a1 + 4);
  v14 = odie_alloc_aligned(&v24, 4 * v9, 4, 0);
  if (v9 >= 3)
  {
    v15 = v14;
    v16 = v9 - 2;
    do
    {
      v17 = *v8++;
      *v15++ = v17;
      --v16;
    }

    while (v16);
  }

  v14[v10] = v11;
  v14[v9 - 1] = v12;
  v26 = *(a1 + 4);
  v18 = a1[1];
  v24 = *a1;
  v25 = v18;
  ODIE::Common::NDArrayType::create(&v24, *(v6 + 24), v9, v14, v9, *(v6 + 48), *(v6 + 32), &v22);
  if ((v23 & 1) == 0)
  {
    return v22;
  }

  result = 0;
  *a4 = v22;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceBatchedMatMul(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
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

  v98 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
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

      v98 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v12);
      if (v13)
      {
        return v98;
      }
    }

LABEL_11:
    if (a3 == 2 && (v15 = **a2, *(v15 + 8) == 2) && *(*a2[1] + 8) == 2)
    {
      if (a5 == 1 && *(**a4 + 8) == 2)
      {
        v16 = *a2[1];
        if (*(v16 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v102);
        }

        v17 = **a4;
        if (*(v17 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v103);
        }

        v18 = *(v15 + 32);
        v19 = *(v16 + 32);
        v20 = *(v17 + 32);
        v21 = (v18 - 2);
        if (v18 < 2 || v19 < 2 || v20 < 2)
        {
          v104 = "Inputs to BMM and its output should be rank >= 2";
          goto LABEL_116;
        }

        if (v18 != v19 || v18 != v20)
        {
          v104 = "Inputs to BMM and its output must have same ranks";
LABEL_116:
          v100 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/MatMul.cpp";
          v101 = "checkOperandsAreBmmCompatible";
          goto LABEL_122;
        }

        v25 = *(v15 + 40);
        v26 = *(v16 + 40);
        v27 = *(v17 + 40);
        if (v18 >= 3)
        {
          v28 = (v18 - 2);
          v29 = *(v15 + 40);
          v30 = *(v16 + 40);
          v31 = v27;
          v104 = "Batch dims of inputs to BMM and output must be the same";
          while (1)
          {
            v33 = *v29++;
            v32 = v33;
            v34 = *v30++;
            if (v32 != v34 || v32 != *v31)
            {
              goto LABEL_116;
            }

            ++v31;
            if (!--v28)
            {
              goto LABEL_37;
            }
          }
        }

        v21 = 0;
LABEL_37:
        v35 = v18 - 1;
        if (*(v25 + 4 * v35) != *(v26 + 4 * v21))
        {
          v104 = "Inputs to BMM are not MatMul compatible.";
          goto LABEL_116;
        }

        if (*(v25 + 4 * v21) != v27[v21] || *(v26 + 4 * v35) != v27[v35])
        {
          v104 = "Output of BMM not compatible with given inputs";
          goto LABEL_116;
        }

        v36 = **a2;
        if (*(v36 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v105);
        }

        v37 = *a2[1];
        if (*(v37 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v106);
        }

        v38 = *(v36 + 40);
        v39 = *(v36 + 32);
        v40 = *(v37 + 40);
        v41 = (v39 - 2);
        v42 = 4 * v39 - 4;
        v43 = 1;
        if (v39 >= 3)
        {
          v44 = v38;
          v45 = v41;
          do
          {
            v46 = *v44++;
            v43 *= v46;
            --v45;
          }

          while (v45);
        }

        v47 = v38[v41];
        v48 = *(v38 + v42);
        v49 = *(v40 + v42);
        v50 = *a2;
        v51 = a2[1][1];
        v52 = (*a4)[1];
        v55 = v50;
        v53 = *v50;
        v54 = v55[1];
        if (*(v53 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v107);
        }

        v56 = *(v53 + 24);
        if (*(v56 + 8) != 1)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v108);
        }

        v57 = *(v56 + 24);
        if (v57 > 68)
        {
          if (v57 == 69)
          {
            v88 = v49 * v47;
            bzero(v52, 4 * v88 * v43);
            if (v43 >= 1)
            {
              for (i = 0; i != v43; ++i)
              {
                if (v47 >= 1)
                {
                  v90 = 0;
                  for (j = 0; j != v47; ++j)
                  {
                    if (v48 >= 1)
                    {
                      v92 = 0;
                      v93 = v51;
                      do
                      {
                        if (v49 >= 1)
                        {
                          v94 = v93;
                          v95 = 4 * v90;
                          v96 = v49;
                          do
                          {
                            v97 = *v94++;
                            *&v52[v95] = *&v52[v95] + (*(v54 + 4 * (v92 + j * v48)) * v97);
                            v95 += 4;
                            --v96;
                          }

                          while (v96);
                        }

                        ++v92;
                        v93 += v49;
                      }

                      while (v92 != v48);
                    }

                    v90 += v49;
                  }
                }

                v54 += 4 * v48 * v47;
                v52 += 4 * v88;
                v51 += v49 * v48;
              }
            }

            return 0;
          }

          if (v57 == 70)
          {
            v68 = v49 * v47;
            bzero(v52, 8 * v68 * v43);
            if (v43 >= 1)
            {
              for (k = 0; k != v43; ++k)
              {
                if (v47 >= 1)
                {
                  v70 = 0;
                  for (m = 0; m != v47; ++m)
                  {
                    if (v48 >= 1)
                    {
                      v72 = 0;
                      v73 = v51;
                      do
                      {
                        if (v49 >= 1)
                        {
                          v74 = v73;
                          v75 = 8 * v70;
                          v76 = v49;
                          do
                          {
                            v77 = *v74++;
                            *&v52[v75] = *&v52[v75] + *(v54 + 8 * (v72 + m * v48)) * v77;
                            v75 += 8;
                            --v76;
                          }

                          while (v76);
                        }

                        ++v72;
                        v73 += v49;
                      }

                      while (v72 != v48);
                    }

                    v70 += v49;
                  }
                }

                v54 += 8 * v48 * v47;
                v52 += 8 * v68;
                v51 += 2 * v49 * v48;
              }
            }

            return 0;
          }
        }

        else
        {
          if (v57 == 25)
          {
            v78 = v49 * v47;
            bzero(v52, 4 * v78 * v43);
            if (v43 >= 1)
            {
              for (n = 0; n != v43; ++n)
              {
                if (v47 >= 1)
                {
                  v80 = 0;
                  for (ii = 0; ii != v47; ++ii)
                  {
                    if (v48 >= 1)
                    {
                      v82 = 0;
                      v83 = v51;
                      do
                      {
                        if (v49 >= 1)
                        {
                          v84 = v83;
                          v85 = 4 * v80;
                          v86 = v49;
                          do
                          {
                            v87 = *v84++;
                            *&v52[v85] += v87 * *(v54 + 4 * (v82 + ii * v48));
                            v85 += 4;
                            --v86;
                          }

                          while (v86);
                        }

                        ++v82;
                        v83 += v49;
                      }

                      while (v82 != v48);
                    }

                    v80 += v49;
                  }
                }

                v54 += 4 * v48 * v47;
                v52 += 4 * v78;
                v51 += v49 * v48;
              }
            }

            return 0;
          }

          if (v57 == 68)
          {
            v58 = v49 * v47;
            bzero(v52, 2 * v58 * v43);
            if (v43 >= 1)
            {
              for (jj = 0; jj != v43; ++jj)
              {
                if (v47 >= 1)
                {
                  v60 = 0;
                  for (kk = 0; kk != v47; ++kk)
                  {
                    if (v48 >= 1)
                    {
                      v62 = 0;
                      v63 = v51;
                      do
                      {
                        if (v49 >= 1)
                        {
                          v64 = v63;
                          v65 = 2 * v60;
                          v66 = v49;
                          do
                          {
                            v67 = *v64++;
                            *&v52[v65] = *&v52[v65] + (*(v54 + 2 * (v62 + kk * v48)) * v67);
                            v65 += 2;
                            --v66;
                          }

                          while (v66);
                        }

                        ++v62;
                        v63 += v49;
                      }

                      while (v62 != v48);
                    }

                    v60 += v49;
                  }
                }

                v54 += 2 * v48 * v47;
                v52 += 2 * v58;
                v51 = (v51 + 2 * v49 * v48);
              }
            }

            return 0;
          }
        }

        v100 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/MatMul.cpp";
        v101 = "valueInferenceBatchedMatMul";
        v104 = "Invalid type passed to BMM";
        goto LABEL_122;
      }

      v99 = "batch_matmul expects 1 packed NDArrayType output.";
    }

    else
    {
      v99 = "batch_matmul expects 2 packed NDArrayType inputs.";
    }

    v100 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v101 = "validateOperandsAreNdArrayType";
    v104 = "%s";
    v110 = v99;
LABEL_122:
    v98 = 1;
    odie_log(1, v100, v101, v104, v110);
  }

  return v98;
}

void ODIE::Kernels::Core::CPU::registerMatMulKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.batch_matmul";
  v4 = 39;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceBatchedMatMul;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceBatchedMatMul;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceNonZero(__int128 *a1, uint64_t a2, __n128 a3, uint64_t a4, void *a5)
{
  v5 = *a2;
  if (!*(*a2 + 8))
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/NonZero.cpp", "typeInferenceNonZero", "coreml.non_zero type inference requires input operand to have data.");
    return 2;
  }

  v8 = *v5;
  if (*(*v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v43);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  v10 = *(v9 + 24);
  if (v10 <= 24)
  {
    switch(v10)
    {
      case 16:
        v24 = v5[1];
        if (!v24)
        {
          goto LABEL_58;
        }

        v25 = *(*v5 + 16);
        if (v25 < 1)
        {
          goto LABEL_58;
        }

        v13 = 0;
        do
        {
          v26 = *v24++;
          v13 += v26;
          --v25;
        }

        while (v25);
        goto LABEL_59;
      case 23:
        v36 = v5[1];
        if (v36)
        {
          v37 = *(*v5 + 16);
          if (v37 >= 1)
          {
            v13 = 0;
            do
            {
              if (*v36++)
              {
                ++v13;
              }

              --v37;
            }

            while (v37);
            goto LABEL_59;
          }
        }

        goto LABEL_58;
      case 24:
        v16 = v5[1];
        if (v16)
        {
          v17 = *(*v5 + 16);
          if (v17 >= 2)
          {
            v13 = 0;
            v18 = v17 >> 1;
            do
            {
              if (*v16++)
              {
                ++v13;
              }

              --v18;
            }

            while (v18);
            goto LABEL_59;
          }
        }

        goto LABEL_58;
    }

    goto LABEL_37;
  }

  if (v10 <= 67)
  {
    if (v10 != 25)
    {
      if (v10 == 26)
      {
        v11 = v5[1];
        if (v11)
        {
          v12 = *(*v5 + 16);
          if (v12 >= 8)
          {
            v13 = 0;
            v14 = v12 >> 3;
            do
            {
              if (*v11++)
              {
                ++v13;
              }

              --v14;
            }

            while (v14);
            goto LABEL_59;
          }
        }

        goto LABEL_58;
      }

      goto LABEL_37;
    }

    v28 = v5[1];
    if (v28)
    {
      v29 = *(*v5 + 16);
      if (v29 >= 4)
      {
        v13 = 0;
        v30 = v29 >> 2;
        do
        {
          if (*v28++)
          {
            ++v13;
          }

          --v30;
        }

        while (v30);
        goto LABEL_59;
      }
    }

LABEL_58:
    v13 = 0;
    goto LABEL_59;
  }

  if (v10 == 68)
  {
    v32 = v5[1];
    if (!v32)
    {
      goto LABEL_58;
    }

    v33 = *(*v5 + 16);
    if (v33 < 2)
    {
      goto LABEL_58;
    }

    v13 = 0;
    v34 = v33 >> 1;
    do
    {
      v35 = *v32++;
      a3.n128_u16[0] = v35;
      v13 += _ZN12_GLOBAL__N_19isNonZeroIDF16_EEbT_(a3);
      --v34;
    }

    while (v34);
    goto LABEL_59;
  }

  if (v10 != 69)
  {
LABEL_37:
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/NonZero.cpp", "typeInferenceNonZero", "Unexpected scalar type for non zero input: %d");
    return 2;
  }

  v20 = v5[1];
  if (!v20)
  {
    goto LABEL_58;
  }

  v21 = *(*v5 + 16);
  if (v21 < 4)
  {
    goto LABEL_58;
  }

  v13 = 0;
  v22 = v21 >> 2;
  do
  {
    v23 = *v20++;
    --v22;
  }

  while (v22);
LABEL_59:
  v39 = a1[1];
  v46 = *a1;
  v47 = v39;
  v48 = *(a1 + 4);
  v40 = odie_alloc_aligned(&v46, 8, 4, 0);
  *v40 = v13;
  v40[1] = *(v8 + 32);
  v41 = a1[1];
  v46 = *a1;
  v47 = v41;
  v48 = *(a1 + 4);
  ODIE::Common::ScalarType::create(&v46, 25, 4, &v44);
  if ((v45 & 1) == 0)
  {
    return v44;
  }

  v42 = a1[1];
  v46 = *a1;
  v47 = v42;
  v48 = *(a1 + 4);
  ODIE::Common::NDArrayType::create(&v46, v44, 2, v40, 2, &ODIE::Common::Constants::kDefaultDimOrdering, 2, &v44);
  if ((v45 & 1) == 0)
  {
    return v44;
  }

  result = 0;
  *a5 = v44;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceNonZero(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 1 || (v5 = *a2, v6 = **a2, *(v6 + 8) != 2))
  {
    v70 = "coreml.non_zero expects 1 NDArrayType input.";
LABEL_91:
    v71 = "validateOperandsAreNdArrayType";
    v72 = "%s";
    v73 = v70;
LABEL_92:
    v44 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v71, v72, v73);
    return v44;
  }

  if (a5 != 1 || (v7 = **a4, *(v7 + 8) != 2))
  {
    v70 = "coreml.non_zero expects 1 NDArrayType output.";
    goto LABEL_91;
  }

  v8 = *(v6 + 16);
  if (v8 && !v5[1] || ((v9 = (*a4)[1], *(v7 + 16)) ? (v10 = v9 == 0) : (v10 = 0), v10))
  {
    v71 = "validateOperandsHaveData";
    v72 = "Operand %lld does not have data bound.";
    v73 = 0;
    goto LABEL_92;
  }

  v11 = *(v6 + 24);
  if (*(v11 + 8) == 1)
  {
    v12 = *(v11 + 24);
    if (v12 <= 24)
    {
      switch(v12)
      {
        case 16:
          v37 = v5[1];
          if (!v37)
          {
            v8 = 0;
          }

          ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
          if (v8 >= 1)
          {
            v38 = 0;
            v39 = 0;
            do
            {
              if (*(v37 + v38) == 1)
              {
                v40 = v76;
                if (v76 >= 1)
                {
                  v41 = (v9 + 4 * v39);
                  v39 += v76;
                  v42 = v75;
                  do
                  {
                    v43 = *v42++;
                    *v41++ = v43;
                    --v40;
                  }

                  while (v40);
                }
              }

              ++v38;
              ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
            }

            while (v38 != v8);
          }

          return 0;
        case 23:
          v62 = v5[1];
          if (!v62)
          {
            v8 = 0;
          }

          ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
          if (v8 >= 1)
          {
            v63 = 0;
            v64 = 0;
            do
            {
              if (*(v62 + v63))
              {
                v65 = v76;
                if (v76 >= 1)
                {
                  v66 = (v9 + 4 * v64);
                  v64 += v76;
                  v67 = v75;
                  do
                  {
                    v68 = *v67++;
                    *v66++ = v68;
                    --v65;
                  }

                  while (v65);
                }
              }

              ++v63;
              ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
            }

            while (v63 != v8);
          }

          return 0;
        case 24:
          v21 = v5[1];
          ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
          if (v21 && v8 >= 2)
          {
            v22 = 0;
            v23 = 0;
            v24 = v8 >> 1;
            do
            {
              if (*(v21 + 2 * v22))
              {
                v25 = v76;
                if (v76 >= 1)
                {
                  v26 = (v9 + 4 * v23);
                  v23 += v76;
                  v27 = v75;
                  do
                  {
                    v28 = *v27++;
                    *v26++ = v28;
                    --v25;
                  }

                  while (v25);
                }
              }

              ++v22;
              ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
            }

            while (v22 != v24);
          }

          return 0;
      }
    }

    else if (v12 > 67)
    {
      if (v12 == 68)
      {
        v53 = v5[1];
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
        if (v53 && v8 >= 2)
        {
          v55 = 0;
          v56 = 0;
          v57 = v8 >> 1;
          do
          {
            v54.n128_u16[0] = *(v53 + 2 * v55);
            if (_ZN12_GLOBAL__N_19isNonZeroIDF16_EEbT_(v54))
            {
              v58 = v76;
              if (v76 >= 1)
              {
                v59 = (v9 + 4 * v56);
                v56 += v76;
                v60 = v75;
                do
                {
                  v61 = *v60++;
                  *v59++ = v61;
                  --v58;
                }

                while (v58);
              }
            }

            ++v55;
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
          }

          while (v55 != v57);
        }

        return 0;
      }

      if (v12 == 69)
      {
        v29 = v5[1];
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
        if (v29 && v8 >= 4)
        {
          v30 = 0;
          v31 = 0;
          v32 = v8 >> 2;
          do
          {
            {
              v33 = v76;
              if (v76 >= 1)
              {
                v34 = (v9 + 4 * v31);
                v31 += v76;
                v35 = v75;
                do
                {
                  v36 = *v35++;
                  *v34++ = v36;
                  --v33;
                }

                while (v33);
              }
            }

            ++v30;
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
          }

          while (v30 != v32);
        }

        return 0;
      }
    }

    else
    {
      if (v12 == 25)
      {
        v45 = v5[1];
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
        if (v45 && v8 >= 4)
        {
          v46 = 0;
          v47 = 0;
          v48 = v8 >> 2;
          do
          {
            if (*(v45 + 4 * v46))
            {
              v49 = v76;
              if (v76 >= 1)
              {
                v50 = (v9 + 4 * v47);
                v47 += v76;
                v51 = v75;
                do
                {
                  v52 = *v51++;
                  *v50++ = v52;
                  --v49;
                }

                while (v49);
              }
            }

            ++v46;
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
          }

          while (v46 != v48);
        }

        return 0;
      }

      if (v12 == 26)
      {
        v13 = v5[1];
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v74, *(v6 + 40), *(v6 + 32));
        if (v13 && v8 >= 8)
        {
          v14 = 0;
          v15 = 0;
          v16 = v8 >> 3;
          do
          {
            if (*(v13 + 8 * v14))
            {
              v17 = v76;
              if (v76 >= 1)
              {
                v18 = (v9 + 4 * v15);
                v15 += v76;
                v19 = v75;
                do
                {
                  v20 = *v19++;
                  *v18++ = v20;
                  --v17;
                }

                while (v17);
              }
            }

            ++v14;
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v74);
          }

          while (v14 != v16);
        }

        return 0;
      }
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/NonZero.cpp", "valueInferenceNonZero", "Unexpected scalar type for non zero input: %d");
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
  }

  return 2;
}

void ODIE::Kernels::Core::CPU::registerNonZeroKernel(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.non_zero";
  v4 = 31;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceNonZero;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceNonZero;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

BOOL _ZN12_GLOBAL__N_19isNonZeroIDF16_EEbT_(__n128 _Q0)
{
  __asm { FCVT            S1, H0 }

  *&v10 = _S1;
  LODWORD(v9) = 0;
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    return 0;
  }

  if (!_ZF & _CF)
  {
    return 1;
  }

  if (fabsf(_S1) <= (fmaxf(_S1, 0.0) * 0.00000011921))
  {
    return 0;
  }

  v8 = v10 - v9;
  if (v10 - v9 < 0)
  {
    v8 = v9 - v10;
  }

  return v8 > 3;
}

BOOL anonymous namespace::isNonZero<float>(float a1)
{
  *&v4 = a1;
  LODWORD(v3) = 0;
  if (a1 == 0.0)
  {
    return 0;
  }

  if (a1 > 0.0)
  {
    return 1;
  }

  if (fabsf(a1) <= (fmaxf(a1, 0.0) * 0.00000011921))
  {
    return 0;
  }

  v2 = v4 - v3;
  if (v4 - v3 < 0)
  {
    v2 = v3 - v4;
  }

  return v2 > 3;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceLutToDense(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v27);
  }

  v7 = *(v6 + 40);
  v8 = *(v6 + 32);
  v9 = *a2[1];
  if (*(v9 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v28);
  }

  if (*(v9 + 32) != v8 + 2)
  {
    v29 = "coremlax.constexpr_lut_to_dense: Lut rank must be 2 more than indices rank. Lut rank is %d indices rank is %d";
    v31 = *(v9 + 32);
    v32 = *(v6 + 32);
LABEL_28:
    v25 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp", "typeInferenceLutToDense", v29, v31, v32);
    return v25;
  }

  v10 = a2[2];
  if (!v10[1])
  {
    v29 = "coremlax.constexpr_lut_to_dense: Require vector_axis to have data to do type inference";
    goto LABEL_28;
  }

  if (*(*v10 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v30);
  }

  v11 = *(*v10 + 24);
  if (*(v11 + 8) != 1)
  {
    goto LABEL_19;
  }

  if (*(v11 + 24) != 25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
    return 2;
  }

  v12 = *v10[1];
  v13 = v8 & (v12 >> 31);
  v14 = (v13 + v12);
  if (v13 + v12 < 0 || v14 >= v8)
  {
    v29 = "coremlax.constexpr_lut_to_dense expects axis to be (-rank, rank). Rank = %d axis = %d";
    v31 = v8;
    v32 = (v13 + v12);
    goto LABEL_28;
  }

  v15 = *(*(v9 + 40) + 4 * v8 + 4);
  v16 = a1[1];
  v35 = *a1;
  v36 = v16;
  v37 = *(a1 + 4);
  v17 = odie_alloc_aligned(&v35, 4 * v8, 4, 0);
  v18 = v8;
  v19 = v17;
  do
  {
    v21 = *v7++;
    v20 = v21;
    if (v14)
    {
      v22 = 1;
    }

    else
    {
      v22 = v15;
    }

    *v19++ = v22 * v20;
    --v14;
    --v18;
  }

  while (v18);
  v23 = *(v9 + 24);
  if (*(v23 + 8) != 1)
  {
LABEL_19:
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  v24 = a1[1];
  v35 = *a1;
  v36 = v24;
  v37 = *(a1 + 4);
  ODIE::Common::NDArrayType::create(&v35, v23, v8, v17, v8, &ODIE::Common::Constants::kDefaultDimOrdering, v8, &v33);
  if ((v34 & 1) == 0)
  {
    return v33;
  }

  v25 = 0;
  *a4 = v33;
  return v25;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceLutToDense(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v97 = *MEMORY[0x277D85DE8];
  if (a3 != 3 || *(**a2 + 8) != 2)
  {
    v69 = "coremlax.constexpr_lut_to_dense expects 3 packed NDArrayType inputs.";
LABEL_84:
    v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v38 = "validateOperandsAreNdArrayType";
    v39 = "%s";
    goto LABEL_85;
  }

  v8 = 1;
  do
  {
    if (v8 == 3)
    {
      goto LABEL_7;
    }

    v9 = *(*a2[v8++] + 8);
  }

  while (v9 == 2);
  v10 = v8 - 2;
  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "coremlax.constexpr_lut_to_dense expects 3 packed NDArrayType inputs.");
  if (v10 < 2)
  {
    goto LABEL_78;
  }

LABEL_7:
  if (a5 != 1 || (v12 = *a4, v13 = **a4, *(v13 + 8) != 2))
  {
    v69 = "coremlax.constexpr_lut_to_dense expects a packed NDArrayType output.";
    goto LABEL_84;
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = a2[v14];
    if (*(*v16 + 16))
    {
      if (!v16[1])
      {
        break;
      }
    }

    v15 = v14++ < 2;
    if (v14 == 3)
    {
      goto LABEL_13;
    }
  }

  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v14);
  if (!v15)
  {
    v12 = *a4;
    v13 = **a4;
LABEL_13:
    if (*(v13 + 16) && !v12[1])
    {
      v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
      v38 = "validateOperandsHaveData";
      v39 = "Operand %lld does not have data bound.";
      v75 = 0;
      goto LABEL_45;
    }

    v17 = *a2;
    v18 = **a2;
    if (*(v18 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v70);
    }

    v19 = *(v18 + 32);
    v20 = a2[1];
    v21 = *v20;
    if (*(*v20 + 8) != 2)
    {
      v71 = a2[1];
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v72);
    }

    v22 = a2[2];
    if (*(*v22 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v73);
    }

    v23 = *(*v22 + 24);
    if (*(v23 + 8) != 1)
    {
      goto LABEL_88;
    }

    if (*(v23 + 24) != 25)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
      goto LABEL_93;
    }

    v24 = *v22[1];
    v25 = v19 & (v24 >> 31);
    v26 = (v25 + v24);
    if (v25 + v24 < 0 || v26 >= v19)
    {
      v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
      v38 = "valueInferenceLutToDense";
      v39 = "coremlax.constexpr_lut_to_dense expects axis to be (-rank, rank). Rank = %d axis = %d";
      v75 = *(v18 + 32);
      v76 = (v25 + v24);
      goto LABEL_45;
    }

    v27 = *a4;
    v85 = **a4;
    if (*(v85 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v74);
    }

    v28 = *(v18 + 32);
    v84 = *(v21 + 32);
    if (v84 == v28 + 2)
    {
      v29 = *(v18 + 40);
      v30 = *(v21 + 40);
      if (v28 >= 1)
      {
        v31 = 0;
        while (1)
        {
          v32 = *(v29 + 4 * v31);
          if (v32 % v30[v31])
          {
            break;
          }

          if (v28 == ++v31)
          {
            goto LABEL_28;
          }
        }

        v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
        v77 = v31;
        v78 = v30[v31];
        v38 = "validateLutToDense";
        v39 = "coremlax.constexpr_lut_to_dense: Indices.shape[%d] = %d, is not a multiple of Lut.shape[%d] = %d";
        v75 = v31;
        v76 = v32;
        goto LABEL_45;
      }

LABEL_28:
      v33 = *(v18 + 24);
      if (*(v33 + 8) == 1)
      {
        v34 = &v30[v28];
        v35 = *v34;
        v36 = *(v33 + 24);
        if (v36 > 34)
        {
          switch(v36)
          {
            case '#':
              if (v35 != 16)
              {
                v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                v38 = "validateLutToDense";
                v39 = "coremlax.constexpr_lut_to_dense: Num pallettes must be 16 for uint4 indices type";
                goto LABEL_45;
              }

              goto LABEL_49;
            case '%':
              if (v35 != 64)
              {
                v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                v38 = "validateLutToDense";
                v39 = "coremlax.constexpr_lut_to_dense: Num pallettes must be 64 for uint6 indices type";
                goto LABEL_45;
              }

              goto LABEL_49;
            case '\'':
              if (v35 != 256)
              {
                v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                v38 = "validateLutToDense";
                v39 = "coremlax.constexpr_lut_to_dense: Num pallettes must be 256 for uint8 indices type";
                goto LABEL_45;
              }

              goto LABEL_49;
          }
        }

        else
        {
          switch(v36)
          {
            case ' ':
              if (v35 != 2)
              {
                v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                v38 = "validateLutToDense";
                v39 = "coremlax.constexpr_lut_to_dense: Num pallettes must be 2 for uint1 indices type";
                goto LABEL_45;
              }

              goto LABEL_49;
            case '!':
              if (v35 != 4)
              {
                v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                v38 = "validateLutToDense";
                v39 = "coremlax.constexpr_lut_to_dense: Num pallettes must be 4 for uint2 indices type";
                goto LABEL_45;
              }

LABEL_49:
              v40 = *(v85 + 32);
              if (v40 == v28)
              {
                if (v28 >= 1)
                {
                  v40 = 0;
                  v41 = *(v85 + 40);
                  v42 = v34[1];
                  do
                  {
                    if (v26 == v40)
                    {
                      v43 = (*(v29 + 4 * v26) * v42);
                      if (*(v41 + 4 * v26) != v43)
                      {
                        v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                        v76 = *(v41 + 4 * v26);
                        v77 = v43;
                        v38 = "validateLutToDense";
                        v39 = "coremlax.constexpr_lut_to_dense: outputShape[%d] is %d, expect it to %d";
                        v75 = v26;
                        goto LABEL_45;
                      }
                    }

                    else
                    {
                      v44 = *(v29 + 4 * v40);
                      if (*(v41 + 4 * v40) != v44)
                      {
                        v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                        v76 = *(v41 + 4 * v40);
                        v77 = v44;
                        v38 = "validateLutToDense";
                        v39 = "coremlax.constexpr_lut_to_dense: outputShape[%d] is %d, expect it to %d";
                        goto LABEL_87;
                      }
                    }

                    ++v40;
                  }

                  while (v28 != v40);
                }

                v45 = *(v21 + 24);
                if (*(v45 + 8) == 1)
                {
                  v46 = v30[v84 - 1];
                  v47 = *(v45 + 16);
                  v96 = 0;
                  memset(v95, 0, sizeof(v95));
                  if (v28 >= 1)
                  {
                    v48 = v95;
                    v49 = v29;
                    v50 = v28;
                    do
                    {
                      v52 = *v49++;
                      v51 = v52;
                      v53 = *v30++;
                      *v48++ = v51 / v53;
                      --v50;
                    }

                    while (v50);
                  }

                  v94 = 0;
                  memset(v93, 0, sizeof(v93));
                  v92 = 0;
                  memset(__dst, 0, sizeof(__dst));
                  v54 = *(v18 + 24);
                  if (*(v54 + 8) == 1)
                  {
                    v82 = v28;
                    v83 = v18;
                    v81 = v17[1];
                    v80 = *(v54 + 24);
                    v55 = v20[1];
                    v56 = v27[1];
                    v57 = *(v85 + 32);
                    ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v88, v29, v28);
                    if (v90)
                    {
                      goto LABEL_77;
                    }

                    __n = 4 * v28;
                    while (1)
                    {
                      v58 = v89[10];
                      memcpy(__dst, v89, __n);
                      *(__dst + v26) *= v46;
                      v59 = v82;
                      if (v82 >= 1)
                      {
                        v60 = v93;
                        v61 = v95;
                        v62 = v89;
                        do
                        {
                          v64 = *v62++;
                          v63 = v64;
                          v65 = *v61++;
                          *v60++ = v63 / v65;
                          --v59;
                        }

                        while (v59);
                      }

                      ODIE::Common::NDArrayType::ravelMultiIndex(v83, v89, v58, &v86);
                      v11 = v86;
                      if ((v87 & 1) == 0)
                      {
                        break;
                      }

                      *(v93 + v84 - 2) = ODIE::Kernels::Core::CPU::Utils::getSubByteIntegerFromStream(v81, v86, v80);
                      if (v46 >= 1)
                      {
                        v66 = 0;
                        do
                        {
                          *(v93 + v84 - 1) = v66;
                          ODIE::Common::NDArrayType::ravelMultiIndex(v21, v93, v84, &v86);
                          v11 = v86;
                          if (v87 != 1)
                          {
                            goto LABEL_76;
                          }

                          ODIE::Common::NDArrayType::ravelMultiIndex(v85, __dst, v57, &v86);
                          if (v87 != 1)
                          {
                            v11 = v86;
                            goto LABEL_76;
                          }

                          memcpy((v56 + v47 * v86), (v55 + v47 * v11), v47);
                          ++*(__dst + v26);
                        }

                        while (v46 != ++v66);
                      }

                      ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v88);
                      if (v90 == 1)
                      {
                        goto LABEL_77;
                      }
                    }

LABEL_76:
                    if (!v11)
                    {
LABEL_77:
                      v11 = 0;
                    }

                    goto LABEL_78;
                  }
                }

                goto LABEL_88;
              }

              v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
              v38 = "validateLutToDense";
              v39 = "coremlax.constexpr_lut_to_dense: output rank is %d but indices rank is %d";
              v76 = v28;
LABEL_87:
              v75 = v40;
LABEL_45:
              v11 = 1;
              odie_log(1, v37, v38, v39, v75, v76, v77, v78);
              goto LABEL_78;
            case '""':
              if (v35 != 8)
              {
                v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
                v38 = "validateLutToDense";
                v39 = "coremlax.constexpr_lut_to_dense: Num pallettes must be 8 for uint3 indices type";
                goto LABEL_45;
              }

              goto LABEL_49;
          }
        }

        v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
        v38 = "validateLutToDense";
        v39 = "coremlax.constexpr_lut_to_dense: Unexpected scalar tag for indices input %d";
        v75 = v36;
        goto LABEL_45;
      }

LABEL_88:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
LABEL_93:
      v11 = 2;
      goto LABEL_78;
    }

    v37 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Palletization.cpp";
    v38 = "validateLutToDense";
    v39 = "coremlax.constexpr_lut_to_dense: Lut rank must be 2 more than indices rank. Lut rank is %d indices rank is %d";
    v76 = *(v18 + 32);
    v69 = *(v21 + 32);
LABEL_85:
    v75 = v69;
    goto LABEL_45;
  }

LABEL_78:
  v67 = *MEMORY[0x277D85DE8];
  return v11;
}

void ODIE::Kernels::Core::CPU::registerPalletizationKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coremlax.constexpr_lut_to_dense";
  v4 = 63;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceLutToDense;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceLutToDense;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceMaxPool2d(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v4 = a2[1][1];
  if (!v4)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceMaxPool2d", "coreml.max_pool_2d: Cannot do type inference without kernel size data.");
    return 2;
  }

  v5 = a2[2][1];
  if (!v5)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceMaxPool2d", "coreml.max_pool_2d: Cannot do type inference without stride data.");
    return 2;
  }

  v6 = a2[3][1];
  if (!v6)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceMaxPool2d", "coreml.max_pool_2d: Cannot do type inference without padding data.");
    return 2;
  }

  v7 = a2[4][1];
  if (!v7)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceMaxPool2d", "coreml.max_pool_2d: Cannot do type inference without dilation data.");
    return 2;
  }

  v8 = a2[5];
  if (!v8[1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceMaxPool2d", "coreml.max_pool_2d: Cannot do type inference without ceil_mode data.");
    return 2;
  }

  v10 = **a2;
  if (*(v10 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v27);
  }

  v11 = *(v10 + 40);
  v12 = *v11;
  v13 = v11[1];
  if (*(*v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v28);
  }

  v14 = *(*v8 + 24);
  if (*(v14 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  if (*(v14 + 24) != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not BOOLean.");
    return 2;
  }

  v15 = 4 * *(v10 + 32);
  v16 = vadd_s32(vadd_s32(vadd_s32(*v6, *v6), v13), vmvn_s8(vmul_s32(vadd_s32(*v4, -1), *v7)));
  v17.i64[0] = v16.i32[0];
  v17.i64[1] = v16.i32[1];
  v18 = vcvtq_f64_s64(v17);
  v17.i64[0] = *v5;
  v17.i64[1] = HIDWORD(*v5);
  v19 = vdivq_f64(v18, vcvtq_f64_s64(v17));
  v20 = vdup_n_s32(*v8[1]);
  v17.i64[0] = v20.u32[0];
  v17.i64[1] = v20.u32[1];
  v21 = vadd_s32(vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v17, 0x3FuLL)), vrndpq_f64(v19), vrndmq_f64(v19)))), 0x100000001);
  v22 = a1[1];
  v32 = *a1;
  v33 = v22;
  v34 = *(a1 + 4);
  v23 = odie_alloc_aligned(&v32, v15, 4, 0);
  *v23 = v12;
  *(v23 + 8) = v21;
  v24 = *(v10 + 32);
  v34 = *(a1 + 4);
  v25 = a1[1];
  v32 = *a1;
  v33 = v25;
  ODIE::Common::NDArrayType::create(&v32, *(v10 + 24), v24, v23, v24, &ODIE::Common::Constants::kDefaultDimOrdering, v24, &v30);
  if ((v31 & 1) == 0)
  {
    return v30;
  }

  result = 0;
  *a4 = v30;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceMaxPool2d(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v175 = *MEMORY[0x277D85DE8];
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

  v18 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
LABEL_6:
    if (a5 >= 1)
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = *(a4 + 8 * v12);
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
        goto LABEL_123;
      }
    }

LABEL_11:
    if (a3 == 6 && *(**a2 + 8) == 2)
    {
      v15 = 1;
      while (v15 != 6)
      {
        v16 = *(*a2[v15++] + 8);
        if (v16 != 2)
        {
          v17 = v15 - 2;
          v18 = 1;
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "max_pool_2d expects 6 packed NDArrayType inputs.");
          if (v17 < 5)
          {
            goto LABEL_123;
          }

          break;
        }
      }

      if (a5 == 1 && *(**a4 + 8) == 2)
      {
        v19 = **a2;
        if (*(v19 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v135);
        }

        v20 = *(v19 + 24);
        if (*(v20 + 8) == 1)
        {
          v21 = *(v20 + 24);
          switch(v21)
          {
            case 25:
              v62 = *a2;
              v63 = a2[1][1];
              v64 = a2[2][1];
              v65 = a2[3][1];
              v66 = a2[4][1];
              v67 = *v62;
              if (*(*v62 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v140);
              }

              v68 = *(v67 + 40);
              v69 = v62[1];
              v70 = *a4;
              if (*(*v70 + 8) != 2)
              {
                v141 = *v62;
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v142);
              }

              v156 = *v68;
              if (*v68 >= 1)
              {
                v71 = 0;
                v72 = *(*v70 + 40);
                v73 = v70[1];
                v74 = v68[2];
                v162 = v68[1];
                v75 = v68[3];
                v77 = *(v72 + 8);
                v76 = *(v72 + 12);
                do
                {
                  v171 = v71;
                  v159 = v71;
                  v167 = v71;
                  if (v162 >= 1)
                  {
                    v78 = 0;
                    do
                    {
                      v172 = v78;
                      v165 = v78;
                      v168 = v78;
                      if (v77 >= 1)
                      {
                        for (i = 0; i != v77; ++i)
                        {
                          if (v76 >= 1)
                          {
                            for (j = 0; j != v76; ++j)
                            {
                              v81 = 0;
                              v169 = i;
                              v170 = j;
                              v82 = 1;
                              for (k = 12; k != -4; k -= 4)
                              {
                                v81 += *(&v167 + k) * v82;
                                v82 *= *(v72 + k);
                              }

                              v84 = *v64 * i - *v65;
                              v85 = *v63 - 1;
                              v86 = *v66;
                              v87 = v85 + v84 + (*v66 - 1) * v85;
                              if (v84 <= v87)
                              {
                                v88 = v64[1] * j - v65[1];
                                v89 = v66[1];
                                v90 = v63[1] - 1 + v88 + (v89 - 1) * (v63[1] - 1);
                                v91 = -INFINITY;
                                do
                                {
                                  for (m = v88; m <= v90; m += v89)
                                  {
                                    v93 = 0.0;
                                    if ((v84 & 0x80000000) == 0 && m < v75 && v84 < v74 && (m & 0x80000000) == 0)
                                    {
                                      v94 = 0;
                                      v173 = v84;
                                      v174 = m;
                                      v95 = 1;
                                      for (n = 12; n != -4; n -= 4)
                                      {
                                        v94 += *(&v171 + n) * v95;
                                        v95 *= *(*(v67 + 40) + n);
                                      }

                                      v93 = *(v69 + 4 * v94);
                                    }

                                    if (v91 < v93)
                                    {
                                      v91 = v93;
                                    }
                                  }

                                  v84 += v86;
                                }

                                while (v84 <= v87);
                                v85 = v91;
                              }

                              *(v73 + 4 * v81) = v85;
                            }
                          }
                        }
                      }

                      v78 = v165 + 1;
                    }

                    while (v165 + 1 != v162);
                  }

                  v71 = v159 + 1;
                }

                while (v159 + 1 != v156);
              }

              goto LABEL_120;
            case 69:
              v97 = *a2;
              v163 = a2[2][1];
              v166 = a2[1][1];
              v157 = a2[4][1];
              v160 = a2[3][1];
              v98 = **a2;
              if (*(v98 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v143);
              }

              v99 = *(v98 + 40);
              v100 = v97[1];
              v101 = *a4;
              if (*(*v101 + 8) != 2)
              {
                v144 = *v97;
                v145 = v97[1];
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v146);
              }

              v148 = *v99;
              if (*v99 >= 1)
              {
                v102 = 0;
                v103 = *(*v101 + 40);
                v104 = v101[1];
                v105 = v99[2];
                v152 = v99[1];
                v106 = v99[3];
                v108 = *(v103 + 8);
                v107 = *(v103 + 12);
                do
                {
                  v171 = v102;
                  v150 = v102;
                  v167 = v102;
                  if (v152 >= 1)
                  {
                    v109 = 0;
                    do
                    {
                      v172 = v109;
                      v154 = v109;
                      v168 = v109;
                      if (v108 >= 1)
                      {
                        for (ii = 0; ii != v108; ++ii)
                        {
                          if (v107 >= 1)
                          {
                            v111 = 0;
                            v112 = v163[1];
                            v113 = *v163 * ii - *v160;
                            v114 = *v157;
                            v115 = v157[1];
                            v116 = *v166 - 1 + v113 + (*v157 - 1) * (*v166 - 1);
                            v117 = v115 * (v166[1] - 1);
                            v118 = -v160[1];
                            do
                            {
                              v119 = 0;
                              v169 = ii;
                              v170 = v111;
                              v120 = 1;
                              for (jj = 12; jj != -4; jj -= 4)
                              {
                                v119 += *(&v167 + jj) * v120;
                                v120 *= *(v103 + jj);
                              }

                              if (v113 <= v116)
                              {
                                v123 = v118 + v111 * v112;
                                v124 = v123 + v117;
                                v125 = -INFINITY;
                                v126 = v113;
                                do
                                {
                                  v127 = v118 + v111 * v112;
                                  if (v123 <= v124)
                                  {
                                    do
                                    {
                                      v128 = 0.0;
                                      if ((v126 & 0x80000000) == 0 && v127 < v106 && v126 < v105 && (v127 & 0x80000000) == 0)
                                      {
                                        v129 = 0;
                                        v173 = v126;
                                        v174 = v127;
                                        v130 = 1;
                                        for (kk = 12; kk != -4; kk -= 4)
                                        {
                                          v129 += *(&v171 + kk) * v130;
                                          v130 *= *(*(v98 + 40) + kk);
                                        }

                                        v128 = *(v100 + 4 * v129);
                                      }

                                      if (v125 < v128)
                                      {
                                        v125 = v128;
                                      }

                                      v127 += v115;
                                    }

                                    while (v127 <= v124);
                                  }

                                  v126 += v114;
                                }

                                while (v126 <= v116);
                                v122 = v125;
                              }

                              else
                              {
                                v122 = -INFINITY;
                              }

                              *(v104 + 4 * v119) = v122;
                              ++v111;
                            }

                            while (v111 != v107);
                          }
                        }
                      }

                      v109 = v154 + 1;
                    }

                    while (v154 + 1 != v152);
                  }

                  v102 = v150 + 1;
                }

                while (v150 + 1 != v148);
              }

              goto LABEL_120;
            case 68:
              v22 = *a2;
              v161 = a2[2][1];
              v164 = a2[1][1];
              v155 = a2[4][1];
              v158 = a2[3][1];
              v23 = **a2;
              if (*(v23 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v136);
              }

              v24 = *(v23 + 40);
              v25 = v22[1];
              v26 = *a4;
              if (*(*v26 + 8) != 2)
              {
                v137 = *v22;
                v138 = v22[1];
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v139);
              }

              v147 = *v24;
              if (*v24 >= 1)
              {
                v27 = 0;
                v28 = *(*v26 + 40);
                v29 = v26[1];
                v30 = v24[2];
                v151 = v24[1];
                v31 = v24[3];
                v33 = *(v28 + 8);
                v32 = *(v28 + 12);
                do
                {
                  v171 = v27;
                  v149 = v27;
                  v167 = v27;
                  if (v151 >= 1)
                  {
                    v34 = 0;
                    do
                    {
                      v172 = v34;
                      v153 = v34;
                      v168 = v34;
                      if (v33 >= 1)
                      {
                        for (mm = 0; mm != v33; ++mm)
                        {
                          if (v32 >= 1)
                          {
                            v36 = 0;
                            v37 = v161[1];
                            v38 = *v161 * mm - *v158;
                            v39 = *v155;
                            v40 = v155[1];
                            v41 = *v164 - 1 + v38 + (*v155 - 1) * (*v164 - 1);
                            v42 = v40 * (v164[1] - 1);
                            v43 = -v158[1];
                            do
                            {
                              v44 = 0;
                              v169 = mm;
                              v170 = v36;
                              v45 = 1;
                              for (nn = 12; nn != -4; nn -= 4)
                              {
                                v44 += *(&v167 + nn) * v45;
                                v45 *= *(v28 + nn);
                              }

                              _H1 = -1024;
                              if (v38 <= v41)
                              {
                                v48 = v43 + v36 * v37;
                                v49 = v48 + v42;
                                _D1 = -INFINITY;
                                v51 = v38;
                                do
                                {
                                  v52 = v43 + v36 * v37;
                                  if (v48 <= v49)
                                  {
                                    do
                                    {
                                      _D2 = 0.0;
                                      if ((v51 & 0x80000000) == 0 && v52 < v31 && v51 < v30 && (v52 & 0x80000000) == 0)
                                      {
                                        v54 = 0;
                                        v173 = v51;
                                        v174 = v52;
                                        v55 = 1;
                                        for (i1 = 12; i1 != -4; i1 -= 4)
                                        {
                                          v54 += *(&v171 + i1) * v55;
                                          v55 *= *(*(v23 + 40) + i1);
                                        }

                                        _H2 = *(v25 + 2 * v54);
                                        __asm { FCVT            D2, H2 }
                                      }

                                      if (_D1 < _D2)
                                      {
                                        _D1 = _D2;
                                      }

                                      v52 += v40;
                                    }

                                    while (v52 <= v49);
                                  }

                                  v51 += v39;
                                }

                                while (v51 <= v41);
                                __asm { FCVT            H1, D1 }
                              }

                              *(v29 + 2 * v44) = _H1;
                              ++v36;
                            }

                            while (v36 != v32);
                          }
                        }
                      }

                      v34 = v153 + 1;
                    }

                    while (v153 + 1 != v151);
                  }

                  v27 = v149 + 1;
                }

                while (v149 + 1 != v147);
              }

LABEL_120:
              v18 = 0;
              goto LABEL_123;
          }

          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "valueInferenceMaxPool2d", "unsupported input dtype in max_pool_2d");
        }

        else
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        }

        v18 = 2;
        goto LABEL_123;
      }

      v134 = "max_pool_2d expects 1 packed NDArrayType output.";
    }

    else
    {
      v134 = "max_pool_2d expects 6 packed NDArrayType inputs.";
    }

    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v134);
  }

LABEL_123:
  v132 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceAvgPool2d(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v4 = a2[1][1];
  if (!v4)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceAvgPool2d", "coreml.avg_pool_2d: Cannot do type inference without kernel size data.");
    return 2;
  }

  v5 = a2[2][1];
  if (!v5)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceAvgPool2d", "coreml.avg_pool_2d: Cannot do type inference without stride data.");
    return 2;
  }

  v6 = a2[3][1];
  if (!v6)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceAvgPool2d", "coreml.avg_pool_2d: Cannot do type inference without padding data.");
    return 2;
  }

  v7 = a2[4];
  if (!v7[1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceAvgPool2d", "coreml.avg_pool_2d: Cannot do type inference without ceil_mode data.");
    return 2;
  }

  if (!a2[5][1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceAvgPool2d", "coreml.avg_pool_2d: Cannot do type inference without count_include_pad data.");
    return 2;
  }

  if (!a2[6][1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "typeInferenceAvgPool2d", "coreml.avg_pool_2d: Cannot do type inference without divisor_override data.");
    return 2;
  }

  v10 = **a2;
  if (*(v10 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v30);
  }

  v11 = *(v10 + 40);
  v12 = *v11;
  v13 = v11[1];
  if (*(*v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  v14 = *(*v7 + 24);
  if (*(v14 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  if (*(v14 + 24) != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not BOOLean.");
    return 2;
  }

  v15 = vsub_s32(vadd_s32(vadd_s32(*v6, *v6), v13), *v4);
  v16.i64[0] = v15.i32[0];
  v16.i64[1] = v15.i32[1];
  v17 = vcvtq_f64_s64(v16);
  v16.i64[0] = v5->i32[0];
  v16.i64[1] = HIDWORD(*v5);
  v18 = vdivq_f64(v17, vcvtq_f64_s64(v16));
  v19 = vdup_n_s32(*v7[1]);
  v16.i64[0] = v19.u32[0];
  v16.i64[1] = v19.u32[1];
  *&v18.f64[0] = vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v16, 0x3FuLL)), vrndpq_f64(v18), vrndmq_f64(v18))));
  v20 = vadd_s32(*&v18.f64[0], 0x100000001);
  v21 = vbsl_s8(vcgt_s32(vadd_s32(*v6, v13), vmul_s32(*v5, *&v18.f64[0])), v20, *&v18.f64[0]);
  if (*v7[1])
  {
    v22 = -1;
  }

  else
  {
    v22 = 0;
  }

  v23 = vbsl_s8(vdup_n_s32(v22), v21, v20);
  v24 = 4 * *(v10 + 32);
  v25 = a1[1];
  v34 = *a1;
  v35 = v25;
  v36 = *(a1 + 4);
  v26 = odie_alloc_aligned(&v34, v24, 4, 0);
  *v26 = v12;
  *(v26 + 8) = v23;
  v27 = *(v10 + 32);
  v36 = *(a1 + 4);
  v28 = a1[1];
  v34 = *a1;
  v35 = v28;
  ODIE::Common::NDArrayType::create(&v34, *(v10 + 24), v27, v26, v27, &ODIE::Common::Constants::kDefaultDimOrdering, v27, &v32);
  if ((v33 & 1) == 0)
  {
    return v32;
  }

  result = 0;
  *a4 = v32;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceAvgPool2d(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v205 = *MEMORY[0x277D85DE8];
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

  v18 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v9);
  if (!v10)
  {
LABEL_6:
    if (a5 >= 1)
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = *(a4 + 8 * v12);
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
        goto LABEL_158;
      }
    }

LABEL_11:
    if (a3 == 7 && *(**a2 + 8) == 2)
    {
      v15 = 1;
      while (v15 != 7)
      {
        v16 = *(*a2[v15++] + 8);
        if (v16 != 2)
        {
          v17 = v15 - 2;
          v18 = 1;
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "avg_pool_2d expects 7 packed NDArrayType inputs.");
          if (v17 < 6)
          {
            goto LABEL_158;
          }

          break;
        }
      }

      if (a5 == 1 && *(**a4 + 8) == 2)
      {
        v19 = **a2;
        if (*(v19 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v157);
        }

        v20 = *(v19 + 24);
        if (*(v20 + 8) == 1)
        {
          v21 = *(v20 + 24);
          switch(v21)
          {
            case 25:
              v70 = a2[1][1];
              v71 = a2[2][1];
              v72 = a2[3][1];
              v73 = a2[5];
              if (*(*v73 + 8) != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v159);
              }

              v74 = *(*v73 + 24);
              if (*(v74 + 8) == 1)
              {
                if (*(v74 + 24) == 16)
                {
                  v75 = *v73[1];
                  v76 = a2[6];
                  if (*(*v76 + 8) != 2)
                  {
                    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                    ODIE::Platform::abort(v162);
                  }

                  v77 = *(*v76 + 24);
                  if (*(v77 + 8) == 1)
                  {
                    if (*(v77 + 24) == 25)
                    {
                      v78 = *v76[1];
                      v79 = *a2;
                      v80 = **a2;
                      if (*(v80 + 8) != 2)
                      {
                        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                        ODIE::Platform::abort(v167);
                      }

                      v81 = *(v80 + 40);
                      v82 = v79[1];
                      v83 = *a4;
                      if (*(*v83 + 8) != 2)
                      {
                        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                        ODIE::Platform::abort(v168);
                      }

                      v195 = v81->i32[0];
                      if (v81->i32[0] >= 1)
                      {
                        v84 = 0;
                        v85 = *(*v83 + 40);
                        v86 = v83[1];
                        v87 = v81->i32[1];
                        v88 = *(v85 + 8);
                        v89 = *(v85 + 12);
                        v90 = vadd_s32(v81[1], -1);
                        v91 = (v78 != 0) | v75;
                        do
                        {
                          v201 = v84;
                          v197 = v84;
                          if (v87 >= 1)
                          {
                            for (i = 0; i != v87; ++i)
                            {
                              v202 = i;
                              v198 = i;
                              if (v88 >= 1)
                              {
                                for (j = 0; j != v88; ++j)
                                {
                                  if (v89 >= 1)
                                  {
                                    for (k = 0; k != v89; ++k)
                                    {
                                      v95 = 0;
                                      v199 = j;
                                      v200 = k;
                                      v96 = 1;
                                      for (m = 12; m != -4; m -= 4)
                                      {
                                        v95 += *(&v197 + m) * v96;
                                        v96 *= *(v85 + m);
                                      }

                                      v98 = vmla_s32(vneg_s32(*v72), *v71, __PAIR64__(k, j));
                                      v99 = vmin_s32(vadd_s32(*v72, v90), vadd_s32(v98, vadd_s32(*v70, -1)));
                                      v100 = vmax_s32(v98, 0);
                                      v101 = vmin_s32(v90, v99);
                                      v102 = v100.i32[0];
                                      v103 = 0.0;
                                      if (v100.i32[0] <= v101.i32[0])
                                      {
                                        do
                                        {
                                          if (v100.i32[1] <= v101.i32[1])
                                          {
                                            v104 = *(v80 + 40);
                                            v105 = v100.i32[1];
                                            do
                                            {
                                              v106 = 0;
                                              v203 = v102;
                                              v204 = v105;
                                              v107 = 1;
                                              for (n = 12; n != -4; n -= 4)
                                              {
                                                v106 += *(&v201 + n) * v107;
                                                v107 *= *(v104 + n);
                                              }

                                              v103 = v103 + *(v82 + 4 * v106);
                                              _ZF = v105++ == v101.i32[1];
                                            }

                                            while (!_ZF);
                                          }

                                          _ZF = v102++ == v101.i32[0];
                                        }

                                        while (!_ZF);
                                      }

                                      v109 = vsub_s32(v99, v98);
                                      v110 = v109.i32[0] + 1 + (v109.i32[0] + 1) * v109.i32[1];
                                      if (v78)
                                      {
                                        v110 = v78;
                                      }

                                      if ((v91 & 1) == 0)
                                      {
                                        v111 = vadd_s32(vsub_s32(v101, v100), 0x100000001);
                                        v110 = vmul_lane_s32(v111, v111, 1).u32[0];
                                      }

                                      *(v86 + 4 * v95) = (v103 / v110);
                                    }
                                  }
                                }
                              }
                            }
                          }

                          ++v84;
                        }

                        while (v84 != v195);
                      }

                      goto LABEL_155;
                    }

LABEL_169:
                    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
                    goto LABEL_157;
                  }

                  break;
                }

                goto LABEL_168;
              }

              break;
            case 69:
              v185 = a2[2][1];
              v187 = a2[1][1];
              v183 = a2[3][1];
              v112 = a2[5];
              if ((*v112)[8] != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v160);
              }

              v113 = *(*v112 + 3);
              if (*(v113 + 8) == 1)
              {
                if (*(v113 + 24) != 16)
                {
                  goto LABEL_168;
                }

                v193 = *v112[1];
                v114 = a2[6];
                if (*(*v114 + 8) != 2)
                {
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                  ODIE::Platform::abort(v163);
                }

                v115 = *(*v114 + 24);
                if (*(v115 + 8) == 1)
                {
                  if (*(v115 + 24) == 25)
                  {
                    v116 = *v114[1];
                    v117 = *a2;
                    v118 = **a2;
                    if (*(v118 + 8) != 2)
                    {
                      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                      ODIE::Platform::abort(v169);
                    }

                    v119 = *(v118 + 40);
                    v120 = v117[1];
                    v121 = *a4;
                    if (*(*v121 + 8) != 2)
                    {
                      v170 = v117[1];
                      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                      ODIE::Platform::abort(v171);
                    }

                    v173 = *v119;
                    if (*v119 >= 1)
                    {
                      v122 = 0;
                      v123 = *(*v121 + 40);
                      v191 = v121[1];
                      v177 = v119[1];
                      v189 = *(v123 + 8);
                      v196 = *(v123 + 12);
                      v181 = v119[2] - 1;
                      v124 = v119[3] - 1;
                      do
                      {
                        v201 = v122;
                        v175 = v122;
                        v197 = v122;
                        if (v177 >= 1)
                        {
                          v125 = 0;
                          do
                          {
                            v202 = v125;
                            v179 = v125;
                            v198 = v125;
                            if (v189 >= 1)
                            {
                              for (ii = 0; ii != v189; ++ii)
                              {
                                if (v196 >= 1)
                                {
                                  v127 = 0;
                                  v128 = v183[1];
                                  v129 = v185[1];
                                  v130 = *v185 * ii - *v183;
                                  v131 = *v183 + v181;
                                  if (v131 >= v130 + *v187 - 1)
                                  {
                                    v131 = v130 + *v187 - 1;
                                  }

                                  v132 = v128 + v124;
                                  v133 = v131 - v130 + 1;
                                  v134 = v130 & ~(v130 >> 31);
                                  if (v181 >= v131)
                                  {
                                    v135 = v131;
                                  }

                                  else
                                  {
                                    v135 = v181;
                                  }

                                  v136 = v187[1] - 1;
                                  v137 = -v128;
                                  do
                                  {
                                    v138 = 0;
                                    v199 = ii;
                                    v200 = v127;
                                    v139 = 1;
                                    for (jj = 12; jj != -4; jj -= 4)
                                    {
                                      v138 += *(&v197 + jj) * v139;
                                      v139 *= *(v123 + jj);
                                    }

                                    v141 = v137 + v127 * v129;
                                    if (v132 >= v136 + v141)
                                    {
                                      v142 = v136 + v141;
                                    }

                                    else
                                    {
                                      v142 = v132;
                                    }

                                    v143 = v141 & ~(v141 >> 31);
                                    if (v124 >= v142)
                                    {
                                      v144 = v142;
                                    }

                                    else
                                    {
                                      v144 = v124;
                                    }

                                    v145 = 0.0;
                                    if (v135 >= v134)
                                    {
                                      v146 = v134;
                                      do
                                      {
                                        if (v144 >= v143)
                                        {
                                          v147 = *(v118 + 40);
                                          v148 = v141 & ~(v141 >> 31);
                                          do
                                          {
                                            v149 = 0;
                                            v203 = v146;
                                            v204 = v148;
                                            v150 = 1;
                                            for (kk = 12; kk != -4; kk -= 4)
                                            {
                                              v149 += *(&v201 + kk) * v150;
                                              v150 *= *(v147 + kk);
                                            }

                                            v145 = v145 + *(v120 + 4 * v149);
                                            _ZF = v148++ == v144;
                                          }

                                          while (!_ZF);
                                        }

                                        _ZF = v146++ == v135;
                                      }

                                      while (!_ZF);
                                    }

                                    v152 = v133 + v133 * (v142 - v141);
                                    if (!v193)
                                    {
                                      v152 = v135 - v134 + 1 + (v135 - v134 + 1) * (v144 - v143);
                                    }

                                    if (v116)
                                    {
                                      v152 = v116;
                                    }

                                    v153 = v145 / v152;
                                    *(v191 + 4 * v138) = v153;
                                    ++v127;
                                  }

                                  while (v127 != v196);
                                }
                              }
                            }

                            v125 = v179 + 1;
                          }

                          while (v179 + 1 != v177);
                        }

                        v122 = v175 + 1;
                      }

                      while (v175 + 1 != v173);
                    }

                    goto LABEL_155;
                  }

                  goto LABEL_169;
                }
              }

              break;
            case 68:
              v184 = a2[2][1];
              v186 = a2[1][1];
              v182 = a2[3][1];
              v22 = a2[5];
              if ((*v22)[8] != 2)
              {
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                ODIE::Platform::abort(v158);
              }

              v23 = *(*v22 + 3);
              if (*(v23 + 8) == 1)
              {
                if (*(v23 + 24) == 16)
                {
                  v192 = *v22[1];
                  v24 = a2[6];
                  if (*(*v24 + 8) != 2)
                  {
                    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                    ODIE::Platform::abort(v161);
                  }

                  v25 = *(*v24 + 24);
                  if (*(v25 + 8) == 1)
                  {
                    if (*(v25 + 24) == 25)
                    {
                      v26 = *v24[1];
                      v27 = *a2;
                      v28 = **a2;
                      if (*(v28 + 8) != 2)
                      {
                        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                        ODIE::Platform::abort(v164);
                      }

                      v29 = *(v28 + 40);
                      v30 = v27[1];
                      v31 = *a4;
                      if (*(*v31 + 8) != 2)
                      {
                        v165 = v27[1];
                        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                        ODIE::Platform::abort(v166);
                      }

                      v172 = *v29;
                      if (*v29 >= 1)
                      {
                        v32 = 0;
                        v33 = *(*v31 + 40);
                        v190 = v31[1];
                        v176 = v29[1];
                        v188 = *(v33 + 8);
                        v194 = *(v33 + 12);
                        v180 = v29[2] - 1;
                        v34 = v29[3] - 1;
                        do
                        {
                          v201 = v32;
                          v174 = v32;
                          v197 = v32;
                          if (v176 >= 1)
                          {
                            v35 = 0;
                            do
                            {
                              v202 = v35;
                              v178 = v35;
                              v198 = v35;
                              if (v188 >= 1)
                              {
                                for (mm = 0; mm != v188; ++mm)
                                {
                                  if (v194 >= 1)
                                  {
                                    v37 = 0;
                                    v38 = v182[1];
                                    v39 = v184[1];
                                    v40 = *v184 * mm - *v182;
                                    v41 = *v182 + v180;
                                    if (v41 >= v40 + *v186 - 1)
                                    {
                                      v41 = v40 + *v186 - 1;
                                    }

                                    v42 = v38 + v34;
                                    v43 = v41 - v40 + 1;
                                    v44 = v40 & ~(v40 >> 31);
                                    if (v180 >= v41)
                                    {
                                      v45 = v41;
                                    }

                                    else
                                    {
                                      v45 = v180;
                                    }

                                    v46 = v186[1] - 1;
                                    v47 = -v38;
                                    do
                                    {
                                      v48 = 0;
                                      v199 = mm;
                                      v200 = v37;
                                      v49 = 1;
                                      for (nn = 12; nn != -4; nn -= 4)
                                      {
                                        v48 += *(&v197 + nn) * v49;
                                        v49 *= *(v33 + nn);
                                      }

                                      v51 = v47 + v37 * v39;
                                      if (v42 >= v46 + v51)
                                      {
                                        v52 = v46 + v51;
                                      }

                                      else
                                      {
                                        v52 = v42;
                                      }

                                      v53 = v51 & ~(v51 >> 31);
                                      if (v34 >= v52)
                                      {
                                        v54 = v52;
                                      }

                                      else
                                      {
                                        v54 = v34;
                                      }

                                      v55 = 0.0;
                                      if (v45 >= v44)
                                      {
                                        v56 = v44;
                                        do
                                        {
                                          if (v54 >= v53)
                                          {
                                            v57 = *(v28 + 40);
                                            v58 = v51 & ~(v51 >> 31);
                                            do
                                            {
                                              v59 = 0;
                                              v203 = v56;
                                              v204 = v58;
                                              v60 = 1;
                                              for (i1 = 12; i1 != -4; i1 -= 4)
                                              {
                                                v59 += *(&v201 + i1) * v60;
                                                v60 *= *(v57 + i1);
                                              }

                                              _H1 = *(v30 + 2 * v59);
                                              __asm { FCVT            D1, H1 }

                                              v55 = v55 + _D1;
                                              _ZF = v58++ == v54;
                                            }

                                            while (!_ZF);
                                          }

                                          _ZF = v56++ == v45;
                                        }

                                        while (!_ZF);
                                      }

                                      v68 = v43 + v43 * (v52 - v51);
                                      if (!v192)
                                      {
                                        v68 = v45 - v44 + 1 + (v45 - v44 + 1) * (v54 - v53);
                                      }

                                      if (v26)
                                      {
                                        v68 = v26;
                                      }

                                      _D0 = v55 / v68;
                                      __asm { FCVT            H0, D0 }

                                      *(v190 + 2 * v48) = LOWORD(_D0);
                                      ++v37;
                                    }

                                    while (v37 != v194);
                                  }
                                }
                              }

                              v35 = v178 + 1;
                            }

                            while (v178 + 1 != v176);
                          }

                          v32 = v174 + 1;
                        }

                        while (v174 + 1 != v172);
                      }

LABEL_155:
                      v18 = 0;
                      goto LABEL_158;
                    }

                    goto LABEL_169;
                  }

                  break;
                }

LABEL_168:
                odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not BOOLean.");
                goto LABEL_157;
              }

              break;
            default:
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Pooling.cpp", "valueInferenceAvgPool2d", "unsupported input dtype in avg_pool_2d");
LABEL_157:
              v18 = 2;
              goto LABEL_158;
          }
        }

        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        goto LABEL_157;
      }

      v156 = "avg_pool_2d expects 1 packed NDArrayType output.";
    }

    else
    {
      v156 = "avg_pool_2d expects 7 packed NDArrayType inputs.";
    }

    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", v156);
  }

LABEL_158:
  v154 = *MEMORY[0x277D85DE8];
  return v18;
}

void ODIE::Kernels::Core::CPU::registerPoolingKernels(_OWORD **a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v5 = "coreml.max_pool_2d";
  v6 = 37;
  v7 = ODIE::Kernels::Core::CPU::typeInferenceMaxPool2d;
  v8 = ODIE::Kernels::Core::CPU::valueInferenceMaxPool2d;
  v9 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  v4 = 0;
  v5 = "coreml.avg_pool_2d";
  v6 = 37;
  v7 = ODIE::Kernels::Core::CPU::typeInferenceAvgPool2d;
  v8 = ODIE::Kernels::Core::CPU::valueInferenceAvgPool2d;
  v9 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceQuantize(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v12);
  }

  v6 = *(v5 + 40);
  v7 = *(v5 + 32);
  v8 = *a2[2];
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v13);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) == 1)
  {
    v10 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v10;
    v15 = *(a1 + 32);
    ODIE::Common::NDArrayType::create(v14, v9, v7, v6, v7, &ODIE::Common::Constants::kDefaultDimOrdering, v7, &v16);
    if (v17)
    {
      result = 0;
      *a4 = v16;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceQuantize(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 4 || *(**a2 + 8) != 2)
  {
    v29 = "coremlax.quantize expects 4 packed NDArrayType inputs.";
    goto LABEL_122;
  }

  v7 = 1;
  do
  {
    if (v7 == 4)
    {
      goto LABEL_7;
    }

    v8 = *(*a2[v7++] + 8);
  }

  while (v8 == 2);
  v9 = v7 - 2;
  v10 = a4;
  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "coremlax.quantize expects 4 packed NDArrayType inputs.");
  a4 = v10;
  if (v9 < 3)
  {
    return v11;
  }

LABEL_7:
  if (a5 != 1 || (v12 = *a4, v13 = **a4, *(v13 + 8) != 2))
  {
    v29 = "coremlax.quantize expects a packed NDArrayType output.";
LABEL_122:
    v57 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v58 = "validateOperandsAreNdArrayType";
    v59 = "%s";
LABEL_51:
    v133 = v29;
LABEL_52:
    v11 = 1;
    odie_log(1, v57, v58, v59, v133, v134);
    return v11;
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = a2[v14];
    if (*(*v16 + 16))
    {
      if (!v16[1])
      {
        break;
      }
    }

    v15 = v14++ < 3;
    if (v14 == 4)
    {
      goto LABEL_13;
    }
  }

  v118 = a4;
  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v14);
  if (!v15)
  {
    a4 = v118;
    v12 = *v118;
    v13 = **v118;
LABEL_13:
    if (*(v13 + 16) && !v12[1])
    {
      v57 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
      v58 = "validateOperandsHaveData";
      v59 = "Operand %lld does not have data bound.";
      v133 = 0;
    }

    else
    {
      v137 = *a2;
      v17 = **a2;
      if (*(v17 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v119);
      }

      v18 = *(v17 + 32);
      v135 = a2[1];
      v19 = *v135;
      if (*(*v135 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v120);
      }

      v136 = a2[2];
      v20 = *v136;
      if (*(*v136 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v121);
      }

      v21 = a2[3];
      if (*(*v21 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v122);
      }

      v22 = *(*v21 + 24);
      if (*(v22 + 8) != 1)
      {
        goto LABEL_123;
      }

      if (*(v22 + 24) != 25)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
        return 2;
      }

      v23 = *v21[1];
      v24 = v18 & (v23 >> 31);
      v25 = v24 + v23;
      if (v24 + v23 >= 0 && v25 < v18)
      {
        v26 = v18;
        v27 = *a4;
        {
          return 1;
        }

        v28 = *(v17 + 24);
        if (*(v28 + 8) != 1)
        {
          goto LABEL_123;
        }

        v29 = *(v28 + 24);
        if (v29 != 69)
        {
          if (v29 != 68)
          {
            v57 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp";
            v58 = "valueInferenceQuantize";
            v59 = "coremlax.quantize: Unsupported input scalar type: %d";
            goto LABEL_51;
          }

          v30 = *(v20 + 24);
          if (*(v30 + 8) != 1)
          {
            goto LABEL_123;
          }

          v29 = *(v30 + 24);
          if (v29 != 39)
          {
            if (v29 == 23)
            {
              v31 = *(v19 + 32);
              ODIE::Common::NDArrayType::getNumElements(v17, &v138);
              v11 = v138;
              if (v139 == 1)
              {
                v32 = v137[1];
                v33 = v27[1];
                if (v31)
                {
                  ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v138, *(v17 + 40), *(v17 + 32));
                  if (v11 >= 1)
                  {
                    v34 = v135[1];
                    v35 = v136[1];
                    do
                    {
                      v36 = v140[v25];
                      v37 = *v32++;
                      _H0 = v37;
                      _H1 = *(v34 + 2 * v36);
                      __asm
                      {
                        FCVT            S0, H0
                        FCVT            S1, H1
                      }

                      _S0 = roundf(_S0 / _S1);
                      __asm { FCVT            H0, S0 }

                      v47 = *(v35 + v36) + *&_S0;
                      if (v47 > COERCE_SHORT_FLOAT(22512))
                      {
                        v47 = COERCE_SHORT_FLOAT(22512);
                      }

                      *v33++ = fmaxl(v47, COERCE_SHORT_FLOAT(-10240));
                      ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v138);
                      --v11;
                    }

                    while (v11);
                  }

                  return 0;
                }

                if (*(*v135 + 8) != 2)
                {
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                  ODIE::Platform::abort(v123);
                }

                v85 = *(*v135 + 24);
                if (*(v85 + 8) == 1)
                {
                  if (*(v85 + 24) == 68)
                  {
                    _H0 = *v135[1];
                    if (*(*v136 + 8) != 2)
                    {
                      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                      ODIE::Platform::abort(v127);
                    }

                    v87 = *(*v136 + 24);
                    if (*(v87 + 8) == 1)
                    {
                      if (*(v87 + 24) == 23)
                      {
                        if (v138 >= 1)
                        {
                          v88 = *v136[1];
                          __asm { FCVT            S0, H0 }

                          do
                          {
                            v90 = *v32++;
                            _H4 = v90;
                            __asm { FCVT            S4, H4 }

                            _S4 = roundf(_S4 / _S0);
                            __asm { FCVT            H4, S4 }

                            v94 = v88 + *&_S4;
                            if (v94 > COERCE_SHORT_FLOAT(22512))
                            {
                              v94 = COERCE_SHORT_FLOAT(22512);
                            }

                            *v33++ = fmaxl(v94, COERCE_SHORT_FLOAT(-10240));
                            --v11;
                          }

                          while (v11);
                        }

                        return 0;
                      }

                      goto LABEL_137;
                    }

                    goto LABEL_123;
                  }

LABEL_135:
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not fp16.");
                  return 2;
                }

                goto LABEL_123;
              }

LABEL_133:
              if (v11)
              {
                return v11;
              }

              return 0;
            }

LABEL_50:
            v57 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp";
            v58 = "quantizeHelper";
            v59 = "coremlax.quantize: Unsupported zero point scalar type: %d";
            goto LABEL_51;
          }

          v60 = *(v19 + 32);
          ODIE::Common::NDArrayType::getNumElements(v17, &v138);
          v11 = v138;
          if (v139 != 1)
          {
            goto LABEL_133;
          }

          v62 = v137[1];
          v63 = v27[1];
          if (v60)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v138, *(v17 + 40), *(v17 + 32));
            if (v11 >= 1)
            {
              v65 = v135[1];
              v66 = v136[1];
              do
              {
                v67 = v140[v25];
                v68 = *v62++;
                _H0 = v68;
                _H1 = *(v65 + 2 * v67);
                LOBYTE(v64) = *(v66 + v67);
                __asm
                {
                  FCVT            S0, H0
                  FCVT            S1, H1
                }

                _S0 = roundf(_S0 / _S1);
                __asm { FCVT            H0, S0 }

                v74 = v64 + *&_S0;
                if (v74 > COERCE_SHORT_FLOAT(23544))
                {
                  v74 = COERCE_SHORT_FLOAT(23544);
                }

                *v63++ = fmaxl(v74, COERCE_SHORT_FLOAT(0));
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v138);
                --v11;
              }

              while (v11);
            }

            return 0;
          }

          if (*(*v135 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v125);
          }

          v101 = *(*v135 + 24);
          if (*(v101 + 8) != 1)
          {
            goto LABEL_123;
          }

          if (*(v101 + 24) != 68)
          {
            goto LABEL_135;
          }

          _H0 = *v135[1];
          if (*(*v136 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v130);
          }

          v103 = *(*v136 + 24);
          if (*(v103 + 8) != 1)
          {
LABEL_123:
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            return 2;
          }

          if (*(v103 + 24) == 39)
          {
            if (v138 >= 1)
            {
              LOBYTE(v61) = *v136[1];
              v104 = v61;
              __asm { FCVT            S0, H0 }

              do
              {
                v106 = *v62++;
                _H4 = v106;
                __asm { FCVT            S4, H4 }

                _S4 = roundf(_S4 / _S0);
                __asm { FCVT            H4, S4 }

                v110 = v104 + *&_S4;
                if (v110 > COERCE_SHORT_FLOAT(23544))
                {
                  v110 = COERCE_SHORT_FLOAT(23544);
                }

                *v63++ = fmaxl(v110, COERCE_SHORT_FLOAT(0));
                --v11;
              }

              while (v11);
            }

            return 0;
          }

LABEL_138:
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not uint8.");
          return 2;
        }

        v48 = *(v20 + 24);
        if (*(v48 + 8) != 1)
        {
          goto LABEL_123;
        }

        v29 = *(v48 + 24);
        if (v29 == 39)
        {
          v75 = *(v19 + 32);
          ODIE::Common::NDArrayType::getNumElements(v17, &v138);
          v11 = v138;
          if (v139 != 1)
          {
            goto LABEL_133;
          }

          v77 = v137[1];
          v78 = v27[1];
          if (v75)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v138, *(v17 + 40), *(v17 + 32));
            if (v11 >= 1)
            {
              v80 = v135[1];
              v81 = v136[1];
              do
              {
                v82 = v140[v25];
                v83 = *v77++;
                LOBYTE(v79) = *(v81 + v82);
                v84 = roundf(v83 / *(v80 + 4 * v82)) + v79;
                if (v84 > 255.0)
                {
                  v84 = 255.0;
                }

                *v78++ = fmaxf(v84, 0.0);
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v138);
                --v11;
              }

              while (v11);
            }

            return 0;
          }

          if (*(*v135 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v126);
          }

          v111 = *(*v135 + 24);
          if (*(v111 + 8) != 1)
          {
            goto LABEL_123;
          }

          if (*(v111 + 24) == 69)
          {
            v112 = *v135[1];
            if (*(*v136 + 8) != 2)
            {
              v131 = *v135[1];
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
              ODIE::Platform::abort(v132);
            }

            v113 = *(*v136 + 24);
            if (*(v113 + 8) != 1)
            {
              goto LABEL_123;
            }

            if (*(v113 + 24) == 39)
            {
              if (v138 >= 1)
              {
                LOBYTE(v76) = *v136[1];
                v114 = v76;
                do
                {
                  v115 = *v77++;
                  v116 = roundf(v115 / v112) + v114;
                  if (v116 > 255.0)
                  {
                    v116 = 255.0;
                  }

                  *v78++ = fmaxf(v116, 0.0);
                  --v11;
                }

                while (v11);
              }

              return 0;
            }

            goto LABEL_138;
          }
        }

        else
        {
          if (v29 != 23)
          {
            goto LABEL_50;
          }

          v49 = *(v19 + 32);
          ODIE::Common::NDArrayType::getNumElements(v17, &v138);
          v11 = v138;
          if (v139 != 1)
          {
            goto LABEL_133;
          }

          v50 = v137[1];
          v51 = v27[1];
          if (v49)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v138, *(v17 + 40), *(v17 + 32));
            if (v11 >= 1)
            {
              v52 = v135[1];
              v53 = v136[1];
              do
              {
                v54 = v140[v25];
                v55 = *v50++;
                v56 = roundf(v55 / *(v52 + 4 * v54)) + *(v53 + v54);
                if (v56 > 127.0)
                {
                  v56 = 127.0;
                }

                *v51++ = fmaxf(v56, -128.0);
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v138);
                --v11;
              }

              while (v11);
            }

            return 0;
          }

          if (*(*v135 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v124);
          }

          v95 = *(*v135 + 24);
          if (*(v95 + 8) != 1)
          {
            goto LABEL_123;
          }

          if (*(v95 + 24) == 69)
          {
            v96 = *v135[1];
            if (*(*v136 + 8) != 2)
            {
              v128 = *v135[1];
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
              ODIE::Platform::abort(v129);
            }

            v97 = *(*v136 + 24);
            if (*(v97 + 8) == 1)
            {
              if (*(v97 + 24) == 23)
              {
                if (v138 >= 1)
                {
                  v98 = *v136[1];
                  do
                  {
                    v99 = *v50++;
                    v100 = roundf(v99 / v96) + v98;
                    if (v100 > 127.0)
                    {
                      v100 = 127.0;
                    }

                    *v51++ = fmaxf(v100, -128.0);
                    --v11;
                  }

                  while (v11);
                }

                return 0;
              }

LABEL_137:
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int8.");
              return 2;
            }

            goto LABEL_123;
          }
        }

        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not float.");
        return 2;
      }

      v57 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp";
      v58 = "valueInferenceQuantize";
      v59 = "coremlax.quantize expects axis to be (-rank, rank). Rank = %d axis = %d";
      v133 = *(v17 + 32);
      v134 = (v24 + v23);
    }

    goto LABEL_52;
  }

  return v11;
}

uint64_t anonymous namespace::validateScaleAndZeroPoint(_DWORD *a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (!(a6 | a3))
  {
    return 0;
  }

  if (a3 != 1 || a6 != 1)
  {
    v12 = "coremlax.quantize - scale and zero point must both be scalars or rank 0 tensors.";
LABEL_12:
    v10 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp", "validateScaleAndZeroPoint", v12, v13, v14, v15);
    return v10;
  }

  v9 = *a4;
  if (*a1 != v9)
  {
    v12 = "coremlax.quantize: scale has %d elements, zero point has %d elements";
LABEL_11:
    v13 = *a1;
    v14 = v9;
    goto LABEL_12;
  }

  v9 = a9;
  if (*(a7 + 4 * a9) != *a1)
  {
    v15 = *(a7 + 4 * a9);
    v12 = "Scale shape [%d] should match input.shape[%d] which is %d";
    goto LABEL_11;
  }

  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceDequantize(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v12);
  }

  v6 = *(v5 + 40);
  v7 = *(v5 + 32);
  v8 = *a2[1];
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v13);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) == 1)
  {
    v10 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v10;
    v15 = *(a1 + 32);
    ODIE::Common::NDArrayType::create(v14, v9, v7, v6, v7, &ODIE::Common::Constants::kDefaultDimOrdering, v7, &v16);
    if (v17)
    {
      result = 0;
      *a4 = v16;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceDequantize(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 4 || *(**a2 + 8) != 2)
  {
    v30 = "coremlax.dequantize expects 4 packed NDArrayType inputs.";
    goto LABEL_106;
  }

  v8 = 1;
  do
  {
    if (v8 == 4)
    {
      goto LABEL_7;
    }

    v9 = *(*a2[v8++] + 8);
  }

  while (v9 == 2);
  v10 = v8 - 2;
  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "coremlax.dequantize expects 4 packed NDArrayType inputs.");
  if (v10 < 3)
  {
    return v11;
  }

LABEL_7:
  if (a5 != 1 || (v12 = *a4, v13 = **a4, *(v13 + 8) != 2))
  {
    v30 = "coremlax.dequantize expects a packed NDArrayType output.";
LABEL_106:
    v49 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v50 = "validateOperandsAreNdArrayType";
    v51 = "%s";
LABEL_47:
    v101 = v30;
LABEL_48:
    v11 = 1;
    odie_log(1, v49, v50, v51, v101, v102);
    return v11;
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = a2[v14];
    if (*(*v16 + 16))
    {
      if (!v16[1])
      {
        break;
      }
    }

    v15 = v14++ < 3;
    if (v14 == 4)
    {
      goto LABEL_13;
    }
  }

  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v14);
  if (!v15)
  {
    v12 = *a4;
    v13 = **a4;
LABEL_13:
    if (*(v13 + 16) && !v12[1])
    {
      v49 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
      v50 = "validateOperandsHaveData";
      v51 = "Operand %lld does not have data bound.";
      v101 = 0;
    }

    else
    {
      v105 = *a2;
      v17 = **a2;
      if (*(v17 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v89);
      }

      v18 = *(v17 + 32);
      v103 = a2[1];
      v19 = *v103;
      if (*(*v103 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v90);
      }

      v104 = a2[2];
      v20 = *v104;
      if (*(*v104 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v91);
      }

      v21 = *(v20 + 32);
      v22 = *(v20 + 40);
      v23 = a2[3];
      if (*(*v23 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v92);
      }

      v24 = *(*v23 + 24);
      if (*(v24 + 8) != 1)
      {
        goto LABEL_107;
      }

      if (*(v24 + 24) != 25)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
        return 2;
      }

      v25 = *v23[1];
      v26 = v18 & (v25 >> 31);
      v27 = v26 + v25;
      if (v26 + v25 >= 0 && v27 < v18)
      {
        {
          return 1;
        }

        v28 = *(v17 + 24);
        if (*(v28 + 8) != 1)
        {
          goto LABEL_107;
        }

        v29 = *a4;
        v30 = *(v28 + 24);
        if (v30 != 39)
        {
          if (v30 != 23)
          {
            v49 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp";
            v50 = "valueInferenceDequantize";
            v51 = "coremlax.dequantize: Unsupported input scalar type: %d";
            goto LABEL_47;
          }

          v31 = *(v19 + 24);
          if (*(v31 + 8) != 1)
          {
            goto LABEL_107;
          }

          v30 = *(v31 + 24);
          if (v30 != 68)
          {
            if (v30 == 69)
            {
              v32 = *(v19 + 32);
              ODIE::Common::NDArrayType::getNumElements(v17, &v110);
              v11 = v110;
              if (v111 == 1)
              {
                v33 = v105[1];
                v34 = v29[1];
                if (v32)
                {
                  ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v110, *(v17 + 40), *(v17 + 32));
                  if (v11 >= 1)
                  {
                    v35 = v103[1];
                    v36 = v104[1];
                    do
                    {
                      v37 = v112[v27];
                      v38 = *v33++;
                      *v34++ = *(v35 + 4 * v37) * (v38 - *(v36 + v37));
                      ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v110);
                      --v11;
                    }

                    while (v11);
                  }

                  return 0;
                }

                if (*(*v103 + 8) != 2)
                {
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                  ODIE::Platform::abort(v93);
                }

                v68 = *(*v103 + 24);
                if (*(v68 + 8) == 1)
                {
                  if (*(v68 + 24) == 69)
                  {
                    v69 = *v103[1];
                    if (*(*v104 + 8) != 2)
                    {
                      v106 = *v103[1];
                      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
                      ODIE::Platform::abort(v97);
                    }

                    v70 = *(*v104 + 24);
                    if (*(v70 + 8) == 1)
                    {
                      if (*(v70 + 24) == 23)
                      {
                        if (v110 >= 1)
                        {
                          v71 = *v104[1];
                          do
                          {
                            v72 = *v33++;
                            *v34++ = v69 * (v72 - v71);
                            --v11;
                          }

                          while (v11);
                        }

                        return 0;
                      }

                      goto LABEL_121;
                    }

                    goto LABEL_107;
                  }

LABEL_119:
                  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not float.");
                  return 2;
                }

                goto LABEL_107;
              }

LABEL_117:
              if (v11)
              {
                return v11;
              }

              return 0;
            }

LABEL_46:
            v49 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp";
            v50 = "dequantizeHelper";
            v51 = "coremlax.dequantize: Unsupported zero point scalar type: %d";
            goto LABEL_47;
          }

          v52 = *(v19 + 32);
          ODIE::Common::NDArrayType::getNumElements(v17, &v110);
          v11 = v110;
          if (v111 != 1)
          {
            goto LABEL_117;
          }

          v53 = v105[1];
          v54 = v29[1];
          if (v52)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v110, *(v17 + 40), *(v17 + 32));
            if (v11 >= 1)
            {
              v55 = v103[1];
              v56 = v104[1];
              do
              {
                v57 = v112[v27];
                v58 = *v53++;
                *v54++ = *(v55 + 2 * v57) * (v58 - *(v56 + v57));
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v110);
                --v11;
              }

              while (v11);
            }

            return 0;
          }

          if (*(*v103 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v95);
          }

          v78 = *(*v103 + 24);
          if (*(v78 + 8) != 1)
          {
            goto LABEL_107;
          }

          if (*(v78 + 24) == 68)
          {
            v79 = *v103[1];
            if (*(*v104 + 8) != 2)
            {
              v108 = *v103[1];
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
              ODIE::Platform::abort(v99);
            }

            v80 = *(*v104 + 24);
            if (*(v80 + 8) == 1)
            {
              if (*(v80 + 24) == 23)
              {
                if (v110 >= 1)
                {
                  v81 = *v104[1];
                  do
                  {
                    v82 = *v53++;
                    *v54++ = v79 * (v82 - v81);
                    --v11;
                  }

                  while (v11);
                }

                return 0;
              }

LABEL_121:
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int8.");
              return 2;
            }

            goto LABEL_107;
          }

LABEL_120:
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not fp16.");
          return 2;
        }

        v39 = *(v19 + 24);
        if (*(v39 + 8) != 1)
        {
          goto LABEL_107;
        }

        v30 = *(v39 + 24);
        if (v30 == 68)
        {
          v59 = *(v19 + 32);
          ODIE::Common::NDArrayType::getNumElements(v17, &v110);
          v11 = v110;
          if (v111 != 1)
          {
            goto LABEL_117;
          }

          v61 = v105[1];
          v62 = v29[1];
          if (v59)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v110, *(v17 + 40), *(v17 + 32));
            if (v11 >= 1)
            {
              v64 = v103[1];
              v65 = v104[1];
              do
              {
                v66 = v112[v27];
                v67 = *v61++;
                LOBYTE(v63) = *(v65 + v66);
                *v62++ = *(v64 + 2 * v66) * (v67 - v63);
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v110);
                --v11;
              }

              while (v11);
            }

            return 0;
          }

          if (*(*v103 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v96);
          }

          v83 = *(*v103 + 24);
          if (*(v83 + 8) != 1)
          {
            goto LABEL_107;
          }

          if (*(v83 + 24) != 68)
          {
            goto LABEL_120;
          }

          v84 = *v103[1];
          if (*(*v104 + 8) != 2)
          {
            v109 = *v103[1];
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v100);
          }

          v85 = *(*v104 + 24);
          if (*(v85 + 8) != 1)
          {
            goto LABEL_107;
          }

          if (*(v85 + 24) == 39)
          {
            if (v110 >= 1)
            {
              LOBYTE(v60) = *v104[1];
              v86 = v60;
              do
              {
                v87 = *v61++;
                *v62++ = v84 * (v87 - v86);
                --v11;
              }

              while (v11);
            }

            return 0;
          }
        }

        else
        {
          if (v30 != 69)
          {
            goto LABEL_46;
          }

          v40 = *(v19 + 32);
          ODIE::Common::NDArrayType::getNumElements(v17, &v110);
          v11 = v110;
          if (v111 != 1)
          {
            goto LABEL_117;
          }

          v42 = v105[1];
          v43 = v29[1];
          if (v40)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v110, *(v17 + 40), *(v17 + 32));
            if (v11 >= 1)
            {
              v45 = v103[1];
              v46 = v104[1];
              do
              {
                v47 = v112[v27];
                v48 = *v42++;
                LOBYTE(v44) = *(v46 + v47);
                *v43++ = *(v45 + 4 * v47) * (v48 - v44);
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v110);
                --v11;
              }

              while (v11);
            }

            return 0;
          }

          if (*(*v103 + 8) != 2)
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v94);
          }

          v73 = *(*v103 + 24);
          if (*(v73 + 8) != 1)
          {
            goto LABEL_107;
          }

          if (*(v73 + 24) != 69)
          {
            goto LABEL_119;
          }

          v74 = *v103[1];
          if (*(*v104 + 8) != 2)
          {
            v107 = *v103[1];
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            ODIE::Platform::abort(v98);
          }

          v75 = *(*v104 + 24);
          if (*(v75 + 8) != 1)
          {
LABEL_107:
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
            return 2;
          }

          if (*(v75 + 24) == 39)
          {
            if (v110 >= 1)
            {
              LOBYTE(v41) = *v104[1];
              v76 = v41;
              do
              {
                v77 = *v42++;
                *v43++ = v74 * (v77 - v76);
                --v11;
              }

              while (v11);
            }

            return 0;
          }
        }

        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not uint8.");
        return 2;
      }

      v49 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Quantization.cpp";
      v50 = "valueInferenceDequantize";
      v51 = "coremlax.dequantize expects axis to be (-rank, rank). Rank = %d axis = %d";
      v101 = *(v17 + 32);
      v102 = (v26 + v25);
    }

    goto LABEL_48;
  }

  return v11;
}

void ODIE::Kernels::Core::CPU::registerQuantizationKernels(_OWORD **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v9[40] = 0;
  v10 = "coremlax.quantize";
  v11 = 35;
  v12 = ODIE::Kernels::Core::CPU::typeInferenceQuantize;
  v13 = ODIE::Kernels::Core::CPU::valueInferenceQuantize;
  v14 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v9, 1);
  v3[40] = 0;
  v4 = "coremlax.dequantize";
  v5 = 39;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceDequantize;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceDequantize;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  ODIE::Common::String::~String(v9);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceRange(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a3 != 3)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Range.cpp", "validateOperandTypes", "expects 3 inputs, got %lld");
LABEL_31:
    v34 = "coreml.range: invalid operand types.";
LABEL_35:
    v33 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Range.cpp", "typeInferenceRange", v34);
    return v33;
  }

  if (a5 != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Range.cpp", "validateOperandTypes", "expects 1 output, got %lld");
    goto LABEL_31;
  }

  v8 = 0;
  v9 = 1;
  v10 = "expects inputs @ %d to have data.";
  while (1)
  {
    v11 = a2[v8];
    v12 = *v11;
    if (*(*v11 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v14);
    }

    if (!v11[1])
    {
      break;
    }

    if (*(v12 + 8))
    {
      goto LABEL_13;
    }

    ODIE::Common::NDArrayType::getNumElements(v12, &v41);
    if ((BYTE4(v41) & 1) == 0)
    {
      ODIE::Platform::abort(v13);
    }

    if (v41 != 1)
    {
LABEL_13:
      v10 = "expects inputs @ %d to be 0D tensor.";
      break;
    }

    v9 = v8++ < 2;
    if (v8 == 3)
    {
      goto LABEL_15;
    }
  }

  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Range.cpp", "validateOperandTypes", v10, v8);
  if (v9)
  {
    goto LABEL_31;
  }

LABEL_15:
  v15 = a1[1];
  v41 = *a1;
  v42 = v15;
  v43 = *(a1 + 4);
  v16 = odie_alloc_aligned(&v41, 4, 4, 0);
  v17 = **a2;
  if (*(v17 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v35);
  }

  v18 = *(v17 + 24);
  if (*(v18 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v36);
  }

  v19 = *(v18 + 24);
  if (v19 > 67)
  {
    if (v19 == 69)
    {
      v20 = *a2;
      _D0 = *(*a2)[1];
      _D1 = *a2[1][1];
      _D2 = *a2[2][1];
      goto LABEL_26;
    }

    if (v19 == 68)
    {
      v20 = *a2;
      _H0 = *(*a2)[1];
      __asm { FCVT            D0, H0 }

      _H1 = *a2[1][1];
      __asm { FCVT            D1, H1 }

      _H2 = *a2[2][1];
      __asm { FCVT            D2, H2 }

      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (v19 == 25)
  {
    v20 = *a2;
    _D0 = *(*a2)[1];
    _D1 = *a2[1][1];
    _D2 = *a2[2][1];
    goto LABEL_26;
  }

  if (v19 != 26)
  {
LABEL_34:
    v34 = "coreml.range: invalid element type encountered in typeInferenceRange. Currently only supports [f16, f32, i32, i64].";
    goto LABEL_35;
  }

  v20 = *a2;
  _D0 = *(*a2)[1];
  _D1 = *a2[1][1];
  _D2 = *a2[2][1];
LABEL_26:
  *v16 = vcvtpd_s64_f64((_D1 - _D0) / _D2);
  v31 = a1[1];
  v41 = *a1;
  v42 = v31;
  v43 = *(a1 + 4);
  v32 = *v20;
  if (*(v32 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v38);
  }

  ODIE::Common::NDArrayType::create(&v41, *(v32 + 24), 1, v16, 1, &ODIE::Common::Constants::kDefaultDimOrdering, 1, &v39);
  if ((v40 & 1) == 0)
  {
    return v39;
  }

  v33 = 0;
  *a4 = v39;
  return v33;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceRange(uint64_t a1, uint64_t a2, uint64_t a3, ODIE::Common::NDArrayType ***a4)
{
  v5 = *(*a2 + 8);
  v6 = *(*(a2 + 16) + 8);
  v7 = **a4;
  v8 = (*a4)[1];
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v63);
  }

  ODIE::Common::NDArrayType::getNumElements(v7, &v65);
  if ((v66 & 1) == 0)
  {
    ODIE::Platform::abort(v9);
  }

  v10 = **(a2 + 8);
  if (*(v10 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v64);
  }

  v11 = *(v10 + 24);
  if (*(v11 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  v12 = *(v11 + 24);
  result = 1;
  if (v12 > 67)
  {
    if (v12 == 69)
    {
      if (v65 >= 1)
      {
        v51 = 0;
        v52 = vdupq_n_s64(v65 - 1);
        v53 = (v65 + 3) & 0xFFFFFFFC;
        v54 = vld1q_dup_f32(v6);
        v55 = vld1q_dup_f32(v5);
        v56 = xmmword_25D0A04F0;
        v57 = xmmword_25D0A0500;
        v58 = (v8 + 8);
        v59 = vdupq_n_s64(4uLL);
        do
        {
          v60 = vmovn_s64(vcgeq_u64(v52, v57));
          v61.i32[0] = v51;
          v61.i32[1] = v51 + 1;
          v61.u64[1] = vorr_s8(vdup_n_s32(v51), 0x300000002);
          v62 = vmlaq_f32(v55, vcvtq_f32_u32(v61), v54);
          if (vuzp1_s16(v60, *v52.i8).u8[0])
          {
            *(v58 - 2) = v62.i32[0];
          }

          if (vuzp1_s16(v60, *&v52).i8[2])
          {
            *(v58 - 1) = v62.i32[1];
          }

          if (vuzp1_s16(*&v52, vmovn_s64(vcgeq_u64(v52, *&v56))).i32[1])
          {
            *v58 = v62.i64[1];
          }

          v51 += 4;
          v56 = vaddq_s64(v56, v59);
          v57 = vaddq_s64(v57, v59);
          v58 += 2;
        }

        while (v53 != v51);
      }
    }

    else
    {
      if (v12 != 68)
      {
        return result;
      }

      if (v65 >= 1)
      {
        v23 = 0;
        v24 = vdupq_n_s64(v65 - 1);
        v25 = (v65 + 7) & 0xFFFFFFF8;
        v26 = vld1q_dup_s16(v6);
        v27 = vld1q_dup_s16(v5);
        v28 = xmmword_25D0A0520;
        v29 = xmmword_25D0A0530;
        v30 = xmmword_25D0A04F0;
        v31 = xmmword_25D0A0500;
        v32 = v8 + 8;
        v33 = vdupq_n_s64(8uLL);
        do
        {
          v34 = vdupq_n_s32(v23);
          v35 = vmovn_s64(vcgeq_u64(v24, v31));
          v36.i32[0] = v23;
          v36.i32[1] = v23 + 1;
          v36.u64[1] = vorr_s8(*v34.i8, 0x300000002);
          v37 = vmlaq_f16(v27, vcvt_hight_f16_f32(vcvt_f16_f32(vcvtq_f32_u32(v36)), vcvtq_f32_u32(vorrq_s8(v34, xmmword_25D0A04B0))), v26);
          if (vuzp1_s8(vuzp1_s16(v35, *v24.i8), *v24.i8).u8[0])
          {
            *(v32 - 4) = v37.i16[0];
          }

          if (vuzp1_s8(vuzp1_s16(v35, *&v24), *&v24).i8[1])
          {
            *(v32 - 3) = v37.i16[1];
          }

          if (vuzp1_s8(vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, *&v30))), *&v24).i8[2])
          {
            *(v32 - 1) = v37.i32[1];
          }

          v38 = vmovn_s64(vcgeq_u64(v24, v29));
          if (vuzp1_s8(*&v24, vuzp1_s16(v38, *&v24)).i32[1])
          {
            *v32 = v37.i16[4];
          }

          if (vuzp1_s8(*&v24, vuzp1_s16(v38, *&v24)).i8[5])
          {
            *(v32 + 1) = v37.i16[5];
          }

          if (vuzp1_s8(*&v24, vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, *&v28)))).i8[6])
          {
            *(v32 + 1) = v37.i32[3];
          }

          v23 += 8;
          v29 = vaddq_s64(v29, v33);
          v30 = vaddq_s64(v30, v33);
          v31 = vaddq_s64(v31, v33);
          v28 = vaddq_s64(v28, v33);
          v32 += 16;
        }

        while (v25 != v23);
      }
    }
  }

  else if (v12 == 25)
  {
    if (v65 >= 1)
    {
      v39 = *v6;
      v40 = *v5;
      v41 = vdupq_n_s64(v65 - 1);
      v42 = (v65 + 3) & 0xFFFFFFFC;
      v43 = 4 * *v6;
      v44 = 2 * *v6;
      v45 = (v8 + 8);
      v46 = xmmword_25D0A04F0;
      v47 = xmmword_25D0A0500;
      v48 = 3 * *v6;
      v49 = vdupq_n_s64(4uLL);
      do
      {
        v50 = vmovn_s64(vcgeq_u64(v41, v47));
        if (vuzp1_s16(v50, *v41.i8).u8[0])
        {
          *(v45 - 2) = v40;
        }

        if (vuzp1_s16(v50, *&v41).i8[2])
        {
          *(v45 - 1) = LODWORD(v39) + LODWORD(v40);
        }

        if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, *&v46))).i32[1])
        {
          *v45 = v44 + LODWORD(v40);
          *(v45 + 1) = v48 + LODWORD(v40);
        }

        v46 = vaddq_s64(v46, v49);
        v47 = vaddq_s64(v47, v49);
        LODWORD(v40) += v43;
        v45 += 4;
        v42 -= 4;
      }

      while (v42);
    }
  }

  else
  {
    if (v12 != 26)
    {
      return result;
    }

    if (v65 >= 1)
    {
      v14 = *v5;
      v15 = *v6;
      v16 = (v65 + 1) & 0xFFFFFFFE;
      v17 = vdupq_n_s64(v65 - 1);
      v18 = 2 * *v6;
      v19 = xmmword_25D0A0500;
      v20 = (v8 + 8);
      v21 = vdupq_n_s64(2uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v19));
        if (v22.i8[0])
        {
          *(v20 - 1) = v14;
        }

        if (v22.i8[4])
        {
          *v20 = v15 + v14;
        }

        v19 = vaddq_s64(v19, v21);
        v14 += v18;
        v20 += 2;
        v16 -= 2;
      }

      while (v16);
    }
  }

  return 0;
}

void ODIE::Kernels::Core::CPU::registerRangeKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.range";
  v4 = 25;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceRange;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceRange;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceReduceMean(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(a1, a2, a3, &v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  result = 0;
  *a4 = v6;
  return result;
}

void ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 != 3 || (v6 = **a2, *(v6 + 8) != 2))
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "reduction expects 3 NDArrayType inputs.");
LABEL_15:
    v16 = 1;
    goto LABEL_16;
  }

  v8 = 1;
  do
  {
    if (v8 == 3)
    {
      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
      goto LABEL_10;
    }

    v9 = *(**(a2 + 8 * v8++) + 8);
  }

  while (v9 == 2);
  v10 = v8 - 2;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "reduction expects 3 NDArrayType inputs.");
  if (v10 < 2)
  {
    goto LABEL_15;
  }

  v11 = *(a2 + 8);
  v6 = **a2;
  v12 = *(a2 + 16);
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v13);
  }

LABEL_10:
  memset(v23, 0, 32);
  v14 = *(a1 + 16);
  v17 = *a1;
  v18 = v14;
  v19 = *(a1 + 32);
  ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(v6, v11, v12, &v17, v23, &v20);
  if ((v22 & 1) == 0 || (v19 = *(a1 + 32), v15 = *(a1 + 16), v17 = *a1, v18 = v15, ODIE::Common::NDArrayType::create(&v17, *(v6 + 24), v21, v20, v21, &ODIE::Common::Constants::kDefaultDimOrdering, v21, &v20), (v21 & 1) == 0))
  {
    v16 = v20;
LABEL_16:
    *a4 = v16;
    *(a4 + 8) = 0;
    return;
  }

  *a4 = v20;
  *(a4 + 8) = 1;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceReduceMean(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v9[6] = *(a1 + 96);
  v10 = *(a1 + 112);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
}

uint64_t anonymous namespace::valueInferenceReduction(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5, int a6)
{
  if (a3 != 3 || *(**a2 + 8) != 2)
  {
    v206 = "reduce operation expects 3 NDArrayType inputs.";
LABEL_207:
    v207 = "validateOperandsAreNdArrayType";
    v208 = "%s";
    v220 = v206;
    goto LABEL_208;
  }

  v11 = 1;
  do
  {
    if (v11 == 3)
    {
      goto LABEL_7;
    }

    v12 = *(*a2[v11++] + 8);
  }

  while (v12 == 2);
  v13 = v11 - 2;
  v14 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "reduce operation expects 3 NDArrayType inputs.");
  if (v13 < 2)
  {
    return v14;
  }

LABEL_7:
  if (a5 != 1 || (v15 = *a4, v16 = **a4, *(v16 + 8) != 2))
  {
    v206 = "reduce operation expects 1 NDArrayType output.";
    goto LABEL_207;
  }

  v17 = 0;
  v18 = 1;
  while (1)
  {
    v19 = a2[v17];
    if (*(*v19 + 16))
    {
      if (!v19[1])
      {
        break;
      }
    }

    v18 = v17++ < 2;
    if (v17 == 3)
    {
      goto LABEL_13;
    }
  }

  v14 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v17);
  if (!v18)
  {
    v15 = *a4;
    v16 = **a4;
LABEL_13:
    if (!*(v16 + 16) || v15[1])
    {
      v20 = **a2;
      if (*(v20 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v209);
      }

      v21 = *(v20 + 24);
      if (*(v21 + 8) != 1)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v210);
      }

      v22 = *(v21 + 24);
      if (v22 <= 67)
      {
        if (v22 != 16)
        {
          if (v22 == 25)
          {
            v241 = *(a1 + 32);
            v245 = *(a1 + 48);
            v233 = *a1;
            v237 = *(a1 + 16);
            v253 = *(a1 + 112);
            v23 = *(a1 + 80);
            v249 = *(a1 + 96);
            v24 = *(a1 + 64);
            v26 = *a2;
            v25 = a2[1];
            v27 = a2[2];
            v229 = **a2;
            if (*(v229 + 8) != 2)
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
              ODIE::Platform::abort(v212);
            }

            v28 = **a4;
            if (*(v28 + 8) != 2)
            {
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
              ODIE::Platform::abort(v213);
            }

            v29 = *(v229 + 40);
            v30 = *(v229 + 32);
            v269 = 0u;
            v270 = 0u;
            v264 = v233;
            v265 = v237;
            v266 = v241;
            ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(v229, v25, v27, &v264, &v269, &v259);
            if (v261)
            {
              v31 = 1.0;
              if (!a6)
              {
                v32 = *(&v269 + 1);
                if (*(&v269 + 1) >= 1)
                {
                  v33 = v269;
                  do
                  {
                    v34 = *v33++;
                    v31 = v31 * *(v29 + 4 * v34);
                    --v32;
                  }

                  while (v32);
                }
              }

              v36 = v259;
              v35 = v260;
              v37 = (*a4)[1];
              v38 = INFINITY;
              if (a6 != 3)
              {
                v38 = 0.0;
              }

              if (a6 == 2)
              {
                v39 = -INFINITY;
              }

              else
              {
                v39 = v38;
              }

              v266 = v241;
              v40 = v272;
              v264 = v233;
              v265 = v237;
              v41 = odie_alloc_aligned(&v264, 8 * v272, 8, 0);
              if (v41)
              {
                v42 = v41;
                if (v40 >= 1)
                {
                  v43 = (v40 + 1) & 0xFFFFFFFE;
                  v44 = vdupq_n_s64(v40 - 1);
                  v45 = xmmword_25D0A0500;
                  v46 = (v41 + 8);
                  v47 = vdupq_n_s64(2uLL);
                  do
                  {
                    v48 = vmovn_s64(vcgeq_u64(v44, v45));
                    if (v48.i8[0])
                    {
                      *(v46 - 1) = v39;
                    }

                    if (v48.i8[4])
                    {
                      *v46 = v39;
                    }

                    v45 = vaddq_s64(v45, v47);
                    v46 += 2;
                    v43 -= 2;
                  }

                  while (v43);
                }

                v221 = v36;
                v225 = v37;
                v264 = v233;
                v265 = v237;
                v266 = v241;
                v49 = odie_alloc_aligned(&v264, 4 * v35, 4, 0);
                if (v49)
                {
                  v50 = v49;
                  v51 = off_286E741B0[a6];
                  v52 = v26[1];
                  ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v264, v29, v30);
                  if (v268)
                  {
LABEL_42:
                    if (v35)
                    {
                      ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v259, v221, v35);
                      if ((v263 & 1) == 0)
                      {
                        do
                        {
                          ODIE::Common::NDArrayType::ravelMultiIndex(v28, &v260, v262, &v257);
                          if ((v258 & 1) == 0)
                          {
                            ODIE::Platform::abort(v53);
                          }

                          v225[v257] = (v42[v257] / v31);
                          ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v259);
                        }

                        while (v263 != 1);
                      }
                    }

                    else
                    {
                      *v225 = (*v42 / v31);
                    }

                    return 0;
                  }

                  while (1)
                  {
                    v153 = v267;
                    if (v35 >= 1)
                    {
                      bzero(v50, 4 * v35);
                    }

                    if (v153 >= 1)
                    {
                      break;
                    }

LABEL_144:
                    ODIE::Common::NDArrayType::ravelMultiIndex(v229, &v264 + 8, v153, &v259);
                    if ((v259 & 0x100000000) == 0)
                    {
                      ODIE::Platform::abort(v161);
                    }

                    v162 = v259;
                    ODIE::Common::NDArrayType::ravelMultiIndex(v28, v50, v35, &v259);
                    if ((v259 & 0x100000000) == 0)
                    {
                      ODIE::Platform::abort(v163);
                    }

                    v164 = v259;
                    v42[v164] = v51(v42[v259], *(v52 + 4 * v162));
                    ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v264);
                    if (v268 == 1)
                    {
                      goto LABEL_42;
                    }
                  }

                  v154 = 0;
                  v155 = v270;
                  v156 = v271;
                  v157 = &v264 + 2;
                  v158 = v153;
                  while (1)
                  {
                    v159 = *v155++;
                    if (v159 != 1)
                    {
                      break;
                    }

                    if (v156)
                    {
                      v160 = 0;
LABEL_142:
                      *(v50 + v154++) = v160;
                    }

                    ++v157;
                    if (!--v158)
                    {
                      goto LABEL_144;
                    }
                  }

                  v160 = *v157;
                  goto LABEL_142;
                }
              }

LABEL_209:
              odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Algorithms/MakeSpan.hpp", "makeSpan", "Unable to allocate memory in makeSpan.");
              return 4;
            }

            return v259;
          }

LABEL_212:
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reduce.cpp", "valueInferenceReduction", "Unsupported element type for reduction: %u", v22);
          return 2;
        }

        v243 = *(a1 + 32);
        v247 = *(a1 + 48);
        v235 = *a1;
        v239 = *(a1 + 16);
        v255 = *(a1 + 112);
        v86 = *(a1 + 80);
        v251 = *(a1 + 96);
        v87 = *(a1 + 64);
        v89 = *a2;
        v88 = a2[1];
        v90 = a2[2];
        v231 = **a2;
        if (*(v231 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v216);
        }

        v91 = **a4;
        if (*(v91 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v217);
        }

        v92 = *(v231 + 40);
        v93 = *(v231 + 32);
        v269 = 0u;
        v270 = 0u;
        v264 = v235;
        v265 = v239;
        v266 = v243;
        ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(v231, v88, v90, &v264, &v269, &v259);
        if ((v261 & 1) == 0)
        {
          return v259;
        }

        v94 = 1.0;
        if (!a6)
        {
          v95 = *(&v269 + 1);
          if (*(&v269 + 1) >= 1)
          {
            v96 = v269;
            do
            {
              v97 = *v96++;
              v94 = v94 * *(v92 + 4 * v97);
              --v95;
            }

            while (v95);
          }
        }

        v99 = v259;
        v98 = v260;
        v100 = (*a4)[1];
        v101 = INFINITY;
        if (a6 != 3)
        {
          v101 = 0.0;
        }

        if (a6 == 2)
        {
          v102 = -INFINITY;
        }

        else
        {
          v102 = v101;
        }

        v266 = v243;
        v103 = v272;
        v264 = v235;
        v265 = v239;
        v104 = odie_alloc_aligned(&v264, 8 * v272, 8, 0);
        if (!v104)
        {
          goto LABEL_209;
        }

        v105 = v104;
        if (v103 >= 1)
        {
          v106 = (v103 + 1) & 0xFFFFFFFE;
          v107 = vdupq_n_s64(v103 - 1);
          v108 = xmmword_25D0A0500;
          v109 = (v104 + 8);
          v110 = vdupq_n_s64(2uLL);
          do
          {
            v111 = vmovn_s64(vcgeq_u64(v107, v108));
            if (v111.i8[0])
            {
              *(v109 - 1) = v102;
            }

            if (v111.i8[4])
            {
              *v109 = v102;
            }

            v108 = vaddq_s64(v108, v110);
            v109 += 2;
            v106 -= 2;
          }

          while (v106);
        }

        v223 = v99;
        v227 = v100;
        v264 = v235;
        v265 = v239;
        v266 = v243;
        v112 = odie_alloc_aligned(&v264, 4 * v98, 4, 0);
        if (!v112)
        {
          goto LABEL_209;
        }

        v113 = v112;
        v114 = off_286E741B0[a6];
        v115 = v89[1];
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v264, v92, v93);
        if (v268)
        {
LABEL_100:
          if (v98)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v259, v223, v98);
            if ((v263 & 1) == 0)
            {
              do
              {
                ODIE::Common::NDArrayType::ravelMultiIndex(v91, &v260, v262, &v257);
                if ((v258 & 1) == 0)
                {
                  ODIE::Platform::abort(v116);
                }

                v227[v257] = v105[v257] / v94 != 0.0;
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v259);
              }

              while (v263 != 1);
            }
          }

          else
          {
            *v227 = *v105 / v94 != 0.0;
          }

          return 0;
        }

        while (1)
        {
          v177 = v267;
          if (v98 >= 1)
          {
            bzero(v113, 4 * v98);
          }

          if (v177 >= 1)
          {
            break;
          }

LABEL_176:
          ODIE::Common::NDArrayType::ravelMultiIndex(v231, &v264 + 8, v177, &v259);
          if ((v259 & 0x100000000) == 0)
          {
            ODIE::Platform::abort(v185);
          }

          v186 = v259;
          ODIE::Common::NDArrayType::ravelMultiIndex(v91, v113, v98, &v259);
          if ((v259 & 0x100000000) == 0)
          {
            ODIE::Platform::abort(v187);
          }

          v189 = v259;
          LOBYTE(v188) = *(v115 + v186);
          v105[v189] = v114(v105[v259], v188);
          ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v264);
          if (v268 == 1)
          {
            goto LABEL_100;
          }
        }

        v178 = 0;
        v179 = v270;
        v180 = v271;
        v181 = &v264 + 2;
        v182 = v177;
        while (1)
        {
          v183 = *v179++;
          if (v183 != 1)
          {
            break;
          }

          if (v180)
          {
            v184 = 0;
LABEL_174:
            *(v113 + v178++) = v184;
          }

          ++v181;
          if (!--v182)
          {
            goto LABEL_176;
          }
        }

        v184 = *v181;
        goto LABEL_174;
      }

      if (v22 != 68)
      {
        if (v22 != 69)
        {
          goto LABEL_212;
        }

        v242 = *(a1 + 32);
        v246 = *(a1 + 48);
        v234 = *a1;
        v238 = *(a1 + 16);
        v254 = *(a1 + 112);
        v54 = *(a1 + 80);
        v250 = *(a1 + 96);
        v55 = *(a1 + 64);
        v57 = *a2;
        v56 = a2[1];
        v58 = a2[2];
        v230 = **a2;
        if (*(v230 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v214);
        }

        v59 = **a4;
        if (*(v59 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v215);
        }

        v60 = *(v230 + 40);
        v61 = *(v230 + 32);
        v269 = 0u;
        v270 = 0u;
        v264 = v234;
        v265 = v238;
        v266 = v242;
        ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(v230, v56, v58, &v264, &v269, &v259);
        if ((v261 & 1) == 0)
        {
          return v259;
        }

        v62 = 1.0;
        if (!a6)
        {
          v63 = *(&v269 + 1);
          if (*(&v269 + 1) >= 1)
          {
            v64 = v269;
            do
            {
              v65 = *v64++;
              v62 = v62 * *(v60 + 4 * v65);
              --v63;
            }

            while (v63);
          }
        }

        v67 = v259;
        v66 = v260;
        v68 = (*a4)[1];
        v69 = INFINITY;
        if (a6 != 3)
        {
          v69 = 0.0;
        }

        if (a6 == 2)
        {
          v70 = -INFINITY;
        }

        else
        {
          v70 = v69;
        }

        v266 = v242;
        v71 = v272;
        v264 = v234;
        v265 = v238;
        v72 = odie_alloc_aligned(&v264, 8 * v272, 8, 0);
        if (!v72)
        {
          goto LABEL_209;
        }

        v73 = v72;
        if (v71 >= 1)
        {
          v74 = (v71 + 1) & 0xFFFFFFFE;
          v75 = vdupq_n_s64(v71 - 1);
          v76 = xmmword_25D0A0500;
          v77 = (v72 + 8);
          v78 = vdupq_n_s64(2uLL);
          do
          {
            v79 = vmovn_s64(vcgeq_u64(v75, v76));
            if (v79.i8[0])
            {
              *(v77 - 1) = v70;
            }

            if (v79.i8[4])
            {
              *v77 = v70;
            }

            v76 = vaddq_s64(v76, v78);
            v77 += 2;
            v74 -= 2;
          }

          while (v74);
        }

        v222 = v67;
        v226 = v68;
        v264 = v234;
        v265 = v238;
        v266 = v242;
        v80 = odie_alloc_aligned(&v264, 4 * v66, 4, 0);
        if (!v80)
        {
          goto LABEL_209;
        }

        v81 = v80;
        v82 = off_286E741B0[a6];
        v83 = v57[1];
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v264, v60, v61);
        if (v268)
        {
LABEL_72:
          if (v66)
          {
            ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v259, v222, v66);
            if ((v263 & 1) == 0)
            {
              do
              {
                ODIE::Common::NDArrayType::ravelMultiIndex(v59, &v260, v262, &v257);
                if ((v258 & 1) == 0)
                {
                  ODIE::Platform::abort(v84);
                }

                v85 = v73[v257] / v62;
                v226[v257] = v85;
                ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v259);
              }

              while (v263 != 1);
            }
          }

          else
          {
            v204 = *v73 / v62;
            *v226 = v204;
          }

          return 0;
        }

        while (1)
        {
          v165 = v267;
          if (v66 >= 1)
          {
            bzero(v81, 4 * v66);
          }

          if (v165 >= 1)
          {
            break;
          }

LABEL_160:
          ODIE::Common::NDArrayType::ravelMultiIndex(v230, &v264 + 8, v165, &v259);
          if ((v259 & 0x100000000) == 0)
          {
            ODIE::Platform::abort(v173);
          }

          v174 = v259;
          ODIE::Common::NDArrayType::ravelMultiIndex(v59, v81, v66, &v259);
          if ((v259 & 0x100000000) == 0)
          {
            ODIE::Platform::abort(v175);
          }

          v176 = v259;
          v73[v176] = v82(v73[v259], *(v83 + 4 * v174));
          ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v264);
          if (v268 == 1)
          {
            goto LABEL_72;
          }
        }

        v166 = 0;
        v167 = v270;
        v168 = v271;
        v169 = &v264 + 2;
        v170 = v165;
        while (1)
        {
          v171 = *v167++;
          if (v171 != 1)
          {
            break;
          }

          if (v168)
          {
            v172 = 0;
LABEL_158:
            *(v81 + v166++) = v172;
          }

          ++v169;
          if (!--v170)
          {
            goto LABEL_160;
          }
        }

        v172 = *v169;
        goto LABEL_158;
      }

      v244 = *(a1 + 32);
      v248 = *(a1 + 48);
      v236 = *a1;
      v240 = *(a1 + 16);
      v256 = *(a1 + 112);
      v117 = *(a1 + 80);
      v252 = *(a1 + 96);
      v118 = *(a1 + 64);
      v120 = *a2;
      v119 = a2[1];
      v121 = a2[2];
      v232 = **a2;
      if (*(v232 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v218);
      }

      v122 = **a4;
      if (*(v122 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v219);
      }

      v123 = *(v232 + 40);
      v124 = *(v232 + 32);
      v269 = 0u;
      v270 = 0u;
      v264 = v236;
      v265 = v240;
      v266 = v244;
      ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(v232, v119, v121, &v264, &v269, &v259);
      if ((v261 & 1) == 0)
      {
        return v259;
      }

      v125 = 1.0;
      if (!a6)
      {
        v126 = *(&v269 + 1);
        if (*(&v269 + 1) >= 1)
        {
          v127 = v269;
          do
          {
            v128 = *v127++;
            v125 = v125 * *(v123 + 4 * v128);
            --v126;
          }

          while (v126);
        }
      }

      v130 = v259;
      v129 = v260;
      v131 = (*a4)[1];
      v132 = INFINITY;
      if (a6 != 3)
      {
        v132 = 0.0;
      }

      if (a6 == 2)
      {
        v133 = -INFINITY;
      }

      else
      {
        v133 = v132;
      }

      v266 = v244;
      v134 = v272;
      v264 = v236;
      v265 = v240;
      v135 = odie_alloc_aligned(&v264, 8 * v272, 8, 0);
      if (!v135)
      {
        goto LABEL_209;
      }

      v136 = v135;
      if (v134 >= 1)
      {
        v137 = (v134 + 1) & 0xFFFFFFFE;
        v138 = vdupq_n_s64(v134 - 1);
        v139 = xmmword_25D0A0500;
        v140 = (v135 + 8);
        v141 = vdupq_n_s64(2uLL);
        do
        {
          v142 = vmovn_s64(vcgeq_u64(v138, v139));
          if (v142.i8[0])
          {
            *(v140 - 1) = v133;
          }

          if (v142.i8[4])
          {
            *v140 = v133;
          }

          v139 = vaddq_s64(v139, v141);
          v140 += 2;
          v137 -= 2;
        }

        while (v137);
      }

      v224 = v130;
      v228 = v131;
      v264 = v236;
      v265 = v240;
      v266 = v244;
      v143 = odie_alloc_aligned(&v264, 4 * v129, 4, 0);
      if (!v143)
      {
        goto LABEL_209;
      }

      v144 = v143;
      v145 = off_286E741B0[a6];
      v146 = v120[1];
      ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v264, v123, v124);
      if (v268)
      {
LABEL_128:
        if (v129)
        {
          ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v259, v224, v129);
          if ((v263 & 1) == 0)
          {
            do
            {
              ODIE::Common::NDArrayType::ravelMultiIndex(v122, &v260, v262, &v257);
              if ((v258 & 1) == 0)
              {
                ODIE::Platform::abort(v147);
              }

              _D0 = v136[v257] / v125;
              __asm { FCVT            H0, D0 }

              v228[v257] = LOWORD(_D0);
              ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v259);
            }

            while (v263 != 1);
          }
        }

        else
        {
          _D0 = *v136 / v125;
          __asm { FCVT            H0, D0 }

          *v228 = LOWORD(_D0);
        }

        return 0;
      }

      while (1)
      {
        v190 = v267;
        if (v129 >= 1)
        {
          bzero(v144, 4 * v129);
        }

        if (v190 >= 1)
        {
          break;
        }

LABEL_192:
        ODIE::Common::NDArrayType::ravelMultiIndex(v232, &v264 + 8, v190, &v259);
        if ((v259 & 0x100000000) == 0)
        {
          ODIE::Platform::abort(v198);
        }

        v199 = v259;
        ODIE::Common::NDArrayType::ravelMultiIndex(v122, v144, v129, &v259);
        if ((v259 & 0x100000000) == 0)
        {
          ODIE::Platform::abort(v200);
        }

        v201 = v259;
        _H1 = *(v146 + 2 * v199);
        __asm { FCVT            D1, H1 }

        v136[v201] = v145(v136[v259], _D1);
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v264);
        if (v268 == 1)
        {
          goto LABEL_128;
        }
      }

      v191 = 0;
      v192 = v270;
      v193 = v271;
      v194 = &v264 + 2;
      v195 = v190;
      while (1)
      {
        v196 = *v192++;
        if (v196 != 1)
        {
          break;
        }

        if (v193)
        {
          v197 = 0;
LABEL_190:
          *(v144 + v191++) = v197;
        }

        ++v194;
        if (!--v195)
        {
          goto LABEL_192;
        }
      }

      v197 = *v194;
      goto LABEL_190;
    }

    v207 = "validateOperandsHaveData";
    v208 = "Operand %lld does not have data bound.";
    v220 = 0;
LABEL_208:
    v14 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v207, v208, v220);
  }

  return v14;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceReduceSum(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(a1, a2, a3, &v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceReduceMax(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(a1, a2, a3, &v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceReduceSum(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v9[6] = *(a1 + 96);
  v10 = *(a1 + 112);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceReduceMax(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v9[6] = *(a1 + 96);
  v10 = *(a1 + 112);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
}

void ODIE::Kernels::Core::CPU::registerReduceKernels(_OWORD **a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v21[40] = 0;
  v22 = "coreml.reduce_mean";
  v23 = 37;
  v24 = ODIE::Kernels::Core::CPU::typeInferenceReduceMean;
  v25 = ODIE::Kernels::Core::CPU::valueInferenceReduceMean;
  v26 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v21, 1);
  v15[40] = 0;
  v16 = "coreml.reduce_sum";
  v17 = 35;
  v18 = ODIE::Kernels::Core::CPU::typeInferenceReduceSum;
  v19 = ODIE::Kernels::Core::CPU::valueInferenceReduceSum;
  v20 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v15, 1);
  v9[40] = 0;
  v10 = "coreml.reduce_max";
  v11 = 35;
  v12 = ODIE::Kernels::Core::CPU::typeInferenceReduceMax;
  v13 = ODIE::Kernels::Core::CPU::valueInferenceReduceMax;
  v14 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v9, 1);
  v3[40] = 0;
  v4 = "coreml.reduce_min";
  v5 = 35;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  ODIE::Common::String::~String(v9);
  ODIE::Common::String::~String(v15);
  ODIE::Common::String::~String(v21);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t anonymous namespace::typeInferenceReduceMin(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(a1, a2, a3, &v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t anonymous namespace::valueInferenceReduceMin(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v9[6] = *(a1 + 96);
  v10 = *(a1 + 112);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
}

void ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, int **a5@<X4>, uint64_t a6@<X8>)
{
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 1) = 0u;
  *(a5 + 9) = 0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2[1];
  v13 = *(*a2 + 16);
  v14 = a4[1];
  v40 = *a4;
  v41 = v14;
  v42 = *(a4 + 4);
  v15 = odie_alloc_aligned(&v40, v13 & 0xFFFFFFFFFFFFFFFCLL, 4, 0);
  if (!v15)
  {
    goto LABEL_35;
  }

  v16 = v13 >> 2;
  *a5 = v15;
  a5[1] = (v13 >> 2);
  if (v13 >= 4)
  {
    do
    {
      v17 = *v12++;
      *v15++ = (v10 & (v17 >> 31)) + v17;
      --v16;
    }

    while (v16);
  }

  v18 = a4[1];
  v40 = *a4;
  v41 = v18;
  v42 = *(a4 + 4);
  v19 = odie_alloc_aligned(&v40, v10, 1, 0);
  if (!v19)
  {
    goto LABEL_35;
  }

  v20 = v19;
  if (v10 >= 1)
  {
    bzero(v19, v10);
  }

  a5[2] = v20;
  a5[3] = v10;
  v21 = a5[1];
  if (v21 < 1)
  {
    if (!v21 && v10)
    {
      memset(v20, 1, v10);
    }
  }

  else
  {
    v22 = *a5;
    do
    {
      v23 = *v22++;
      *(v20 + v23) = 1;
      --v21;
    }

    while (v21);
  }

  v24 = **(a3 + 8);
  *(a5 + 32) = v24;
  if (v24)
  {
    v25 = v10;
  }

  else
  {
    v25 = 0;
  }

  if (v10 >= 1 && (v24 & 1) == 0)
  {
    v25 = 0;
    v26 = v10;
    do
    {
      v27 = *v20;
      v20 = (v20 + 1);
      v25 += v27 ^ 1;
      --v26;
    }

    while (v26);
  }

  v28 = a4[1];
  v40 = *a4;
  v41 = v28;
  v42 = *(a4 + 4);
  v29 = odie_alloc_aligned(&v40, 4 * v25, 4, 0);
  if (v29)
  {
    if (v10 >= 1)
    {
      v30 = 0;
      v31 = a5[2];
      v32 = *(a5 + 32);
      while (1)
      {
        v33 = *v31;
        v31 = (v31 + 1);
        if ((v33 & 1) == 0)
        {
          break;
        }

        if (v32)
        {
          v34 = 1;
LABEL_28:
          *(v29 + 4 * v30++) = v34;
        }

        ++v11;
        if (!--v10)
        {
          goto LABEL_30;
        }
      }

      v34 = *v11;
      goto LABEL_28;
    }

LABEL_30:
    v35 = 1;
    *(a5 + 9) = 1;
    if (v25 >= 1)
    {
      v36 = v29;
      v37 = v25;
      do
      {
        v38 = *v36++;
        v35 *= v38;
        *(a5 + 9) = v35;
        --v37;
      }

      while (v37);
    }

    *a6 = v29;
    *(a6 + 8) = v25;
    v39 = 1;
  }

  else
  {
LABEL_35:
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Algorithms/MakeSpan.hpp", "makeSpan", "Unable to allocate memory in makeSpan.");
    v39 = 0;
    *a6 = 4;
  }

  *(a6 + 16) = v39;
}

double anonymous namespace::reductionFunctionMaximum(_anonymous_namespace_ *this, double result, double a3)
{
  if (result < a3)
  {
    return a3;
  }

  return result;
}

double anonymous namespace::reductionFunctionMinimum(_anonymous_namespace_ *this, double result, double a3)
{
  if (a3 < result)
  {
    return a3;
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceReduceAll(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(a1, a2, a3, &v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceReduceAll(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v9[6] = *(a1 + 96);
  v10 = *(a1 + 112);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return ODIE::Kernels::Core::CPU::valueInferenceReduceBoolean(v9, a2, a3, a4, a5, 0);
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceReduceBoolean(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5, int a6)
{
  if (a3 != 3 || *(**a2 + 8) != 2)
  {
    v53 = "all expects 3 NDArrayType inputs.";
LABEL_53:
    v54 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v55 = "validateOperandsAreNdArrayType";
    v56 = "%s";
    v61 = v53;
    goto LABEL_54;
  }

  v11 = 1;
  do
  {
    if (v11 == 3)
    {
      goto LABEL_7;
    }

    v12 = *(*a2[v11++] + 8);
  }

  while (v12 == 2);
  v13 = v11 - 2;
  v14 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "all expects 3 NDArrayType inputs.");
  if (v13 < 2)
  {
    return v14;
  }

LABEL_7:
  if (a5 != 1 || (v15 = *a4, v16 = **a4, *(v16 + 8) != 2))
  {
    v53 = "all expects 1 NDArrayType output.";
    goto LABEL_53;
  }

  v17 = 0;
  v18 = 1;
  while (1)
  {
    v19 = a2[v17];
    if (*(*v19 + 16))
    {
      if (!v19[1])
      {
        break;
      }
    }

    v18 = v17++ < 2;
    if (v17 == 3)
    {
      goto LABEL_13;
    }
  }

  v14 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v17);
  if (!v18)
  {
    v15 = *a4;
    v16 = **a4;
LABEL_13:
    if (*(v16 + 16) && !v15[1])
    {
      v54 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
      v55 = "validateOperandsHaveData";
      v56 = "Operand %lld does not have data bound.";
      v61 = 0;
    }

    else
    {
      v21 = *a2;
      v20 = a2[1];
      v22 = a2[2];
      v23 = **a2;
      if (*(v23 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v57);
      }

      v24 = *(v23 + 24);
      if (*(v24 + 8) != 1)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v58);
      }

      if (*(v24 + 24) == 16)
      {
        v25 = *v21;
        if (*(*v21 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v59);
        }

        v26 = **a4;
        if (*(v26 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v60);
        }

        v27 = *(v25 + 40);
        v62 = *(v25 + 32);
        v28 = v21[1];
        v72 = 0u;
        v73 = 0u;
        v29 = *(a1 + 16);
        v63 = *a1;
        v64 = v29;
        v65 = *(a1 + 32);
        ODIE::Kernels::Core::CPU::Utils::getReductionOutputShape(v25, v20, v22, &v63, &v72, &v68);
        if ((v71 & 1) == 0)
        {
          return v68;
        }

        v30 = v70;
        v31 = **a4;
        v32 = (*a4)[1];
        v33 = a1;
        v34 = *(v31 + 16);
        v35 = *(v33 + 16);
        v63 = *v33;
        v64 = v35;
        v65 = *(v33 + 32);
        v36 = 4 * v70;
        v37 = odie_alloc_aligned(&v63, 4 * v70, 4, 0);
        if (!v37)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/Algorithms/MakeSpan.hpp", "makeSpan", "Unable to allocate memory in makeSpan.");
          return 4;
        }

        v38 = v37;
        if (v34)
        {
          memset(v32, a6 == 0, v34);
        }

        ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(&v63, v27, v62);
        if (v67)
        {
          return 0;
        }

        while (1)
        {
          v40 = v66;
          if (v30 >= 1)
          {
            bzero(v38, v36);
          }

          if (v40 >= 1)
          {
            v41 = 0;
            v42 = v73;
            v43 = v74;
            v44 = &v63 + 2;
            v45 = v40;
            while (1)
            {
              v46 = *v42++;
              if (v46 != 1)
              {
                break;
              }

              if (v43)
              {
                v47 = 0;
LABEL_35:
                *(v38 + v41++) = v47;
              }

              ++v44;
              if (!--v45)
              {
                goto LABEL_37;
              }
            }

            v47 = *v44;
            goto LABEL_35;
          }

LABEL_37:
          ODIE::Common::NDArrayType::ravelMultiIndex(v25, &v63 + 8, v40, &v68);
          if ((v69 & 1) == 0)
          {
            ODIE::Platform::abort(v48);
          }

          v49 = v68;
          ODIE::Common::NDArrayType::ravelMultiIndex(v26, v38, v30, &v68);
          if ((v69 & 1) == 0)
          {
            ODIE::Platform::abort(v50);
          }

          v51 = *(v32 + v68);
          if (!a6)
          {
            break;
          }

          if ((*(v32 + v68) & 1) == 0)
          {
            goto LABEL_43;
          }

          v52 = 1;
LABEL_45:
          *(v32 + v68) = v52 & 1;
          ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(&v63);
          if (v67 == 1)
          {
            return 0;
          }
        }

        if ((*(v32 + v68) & 1) == 0)
        {
          v52 = 0;
          goto LABEL_45;
        }

LABEL_43:
        v52 = *(v28 + v49);
        goto LABEL_45;
      }

      v54 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ReduceBoolean.cpp";
      v55 = "valueInferenceReduceBoolean";
      v56 = "all expects BOOLean input";
    }

LABEL_54:
    v14 = 1;
    odie_log(1, v54, v55, v56, v61);
  }

  return v14;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceReduceAny(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ODIE::Kernels::Core::CPU::Utils::typeInferenceReduction(a1, a2, a3, &v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceReduceAny(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v5;
  v9[6] = *(a1 + 96);
  v10 = *(a1 + 112);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return ODIE::Kernels::Core::CPU::valueInferenceReduceBoolean(v9, a2, a3, a4, a5, 1);
}

void ODIE::Kernels::Core::CPU::registerReduceBooleanKernels(_OWORD **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v9[40] = 0;
  v10 = "coreml.all";
  v11 = 21;
  v12 = ODIE::Kernels::Core::CPU::typeInferenceReduceAll;
  v13 = ODIE::Kernels::Core::CPU::valueInferenceReduceAll;
  v14 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v9, 1);
  v3[40] = 0;
  v4 = "coreml.any";
  v5 = 21;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceReduceAny;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceReduceAny;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  ODIE::Common::String::~String(v9);
  v2 = *MEMORY[0x277D85DE8];
}

void ODIE::Kernels::Core::CPU::initialize(_OWORD **a1)
{
  ODIE::Kernels::Core::CPU::registerAllocationKernels(a1);
  ODIE::Kernels::Core::CPU::registerBatchNormKernels(a1);
  ODIE::Kernels::Core::CPU::registerBuiltinKernels(a1);
  ODIE::Kernels::Core::CPU::registerBroadcastInDimsKernels(a1);
  ODIE::Kernels::Core::CPU::registerBroadcastToKernels(a1);
  ODIE::Kernels::Core::CPU::registerBroadcastShapesKernels(a1);
  ODIE::Kernels::Core::CPU::registerCastKernels(a1);
  ODIE::Kernels::Core::CPU::registerComplexKernels(a1);
  ODIE::Kernels::Core::CPU::registerConcatKernels(a1);
  ODIE::Kernels::Core::CPU::registerConvKernels(a1);
  ODIE::Kernels::Core::CPU::registerElementwiseBinaryKernels(a1);
  ODIE::Kernels::Core::CPU::registerElementwiseBooleanKernels(a1);
  ODIE::Kernels::Core::CPU::registerElementwiseUnaryKernels(a1);
  ODIE::Kernels::Core::CPU::registerErrorKernels(a1);
  ODIE::Kernels::Core::CPU::registerFillKernels(a1);
  ODIE::Kernels::Core::CPU::registerGatherScatterKernels(a1);
  ODIE::Kernels::Core::CPU::registerGeluKernels(a1);
  ODIE::Kernels::Core::CPU::registerGetShapeKernels(a1);
  ODIE::Kernels::Core::CPU::registerMatMulKernels(a1);
  ODIE::Kernels::Core::CPU::registerNonZeroKernel(a1);
  ODIE::Kernels::Core::CPU::registerPalletizationKernels(a1);
  ODIE::Kernels::Core::CPU::registerPoolingKernels(a1);
  ODIE::Kernels::Core::CPU::registerQuantizationKernels(a1);
  ODIE::Kernels::Core::CPU::registerRangeKernels(a1);
  ODIE::Kernels::Core::CPU::registerReshapeKernels(a1);
  ODIE::Kernels::Core::CPU::registerReduceKernels(a1);
  ODIE::Kernels::Core::CPU::registerReduceBooleanKernels(a1);
  ODIE::Kernels::Core::CPU::registerSelectKernels(a1);
  ODIE::Kernels::Core::CPU::registerSliceKernels(a1);
  ODIE::Kernels::Core::CPU::registerSplitKernels(a1);
  ODIE::Kernels::Core::CPU::registerSoftmaxKernels(a1);
  ODIE::Kernels::Core::CPU::registerStackKernels(a1);
  ODIE::Kernels::Core::CPU::registerTileKernel(a1);
  ODIE::Kernels::Core::CPU::registerTransposeKernels(a1);

  ODIE::Kernels::Core::CPU::registerWhereKernels(a1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceReshape(__int128 *a1, uint64_t **a2, uint64_t a3, ODIE::Common::NDArrayType **a4)
{
  v4 = a2[1];
  if (!v4[1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceReshape", "coreml.reshape type inference requires shape operand to have data.");
    return 2;
  }

  if (*(*v4 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v22);
  }

  v6 = **a2;
  if (*(v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v23);
  }

  if ((*(v6 + 16) & 0x8000000000000000) != 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceReshape", "coreml.reshape type inference requires input shape to be fully known.");
    return 2;
  }

  v7 = v4[1];
  v8 = **(*v4 + 40);
  v9 = a1[1];
  v26 = *a1;
  v27 = v9;
  v28 = *(a1 + 4);
  v10 = a1[1];
  v29 = *a1;
  v30 = v10;
  v31 = *(a1 + 4);
  v11 = odie_alloc_aligned(&v29, 4 * v8, 4, 0);
  v12 = v11;
  if (v8 < 1)
  {
LABEL_15:
    v31 = v28;
    v29 = v26;
    v30 = v27;
    ODIE::Common::NDArrayType::create(&v29, *(v6 + 24), v8, v12, v8, &ODIE::Common::Constants::kDefaultDimOrdering, v8, &v24);
    if ((v25 & 1) == 0)
    {
      return v24;
    }

    v18 = v24;
    if ((*(v6 + 16) & 0x8000000000000000) != 0 || (*(v24 + 2) & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    ODIE::Common::NDArrayType::getNumElements(v6, &v29);
    if ((BYTE4(v29) & 1) == 0)
    {
      ODIE::Platform::abort(v19);
    }

    v20 = v29;
    ODIE::Common::NDArrayType::getNumElements(v18, &v24);
    if ((BYTE4(v24) & 1) == 0)
    {
      ODIE::Platform::abort(v21);
    }

    if (v20 == v24)
    {
LABEL_21:
      result = 0;
      *a4 = v18;
      return result;
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceReshape", "coreml.reshape type inference requires input and output types to have same number of elements. Possibly malformed new shape.");
    return 2;
  }

  v13 = 0;
  v14 = -1;
  v15 = 1;
  do
  {
    v16 = *(v7 + 4 * v13);
    *(v11 + 4 * v13) = v16;
    if (v16 == -1)
    {
      if (v14 != -1)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceReshape", "coreml.reshape type inference: more than one dimension's new length is -1");
        return 2;
      }

      v14 = v13;
    }

    else
    {
      v15 *= v16;
    }

    ++v13;
  }

  while (v8 != v13);
  if (v14 == -1)
  {
    goto LABEL_15;
  }

  ODIE::Common::NDArrayType::getNumElements(v6, &v29);
  result = v29;
  if (BYTE4(v29) == 1)
  {
    v12[v14] = v29 / v15;
    goto LABEL_15;
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceShrinkDims(__int128 *a1, uint64_t **a2, uint64_t a3, ODIE::Common::NDArrayType **a4)
{
  v4 = a2[1];
  v5 = v4[1];
  if (v5)
  {
    v7 = **a2;
    if (*(v7 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v30);
    }

    v8 = *(*v4 + 16);
    v9 = v8 >> 2;
    v10 = *(v7 + 40);
    v11 = *(v7 + 32);
    if (v8 < 4)
    {
LABEL_10:
      v17 = a1[1];
      v34 = *a1;
      v35 = v17;
      v36 = *(a1 + 4);
      v18 = a1[1];
      v37 = *a1;
      v38 = v18;
      v39 = *(a1 + 4);
      v19 = odie_alloc_aligned(&v37, 4 * (v11 - v9), 4, 0);
      if (v11 >= 1)
      {
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = v5;
          if (v8 < 4)
          {
LABEL_17:
            v19[v21++] = *(v10 + 4 * v20);
          }

          else
          {
            while (1)
            {
              v23 = *v22;
              if (*v22 < 0)
              {
                do
                {
                  v23 += v11;
                }

                while (v23 < 0);
              }

              if (v20 == v23)
              {
                break;
              }

              if (++v22 == &v5[v9])
              {
                goto LABEL_17;
              }
            }
          }

          ++v20;
        }

        while (v20 != v11);
      }

      v39 = v36;
      v37 = v34;
      v38 = v35;
      ODIE::Common::NDArrayType::create(&v37, *(v7 + 24), (v11 - v9), v19, v11 - v9, &ODIE::Common::Constants::kDefaultDimOrdering, v11 - v9, &v32);
      if ((v33 & 1) == 0)
      {
        ODIE::Platform::abort(v24);
      }

      v25 = v32;
      if ((*(v7 + 16) & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      ODIE::Common::NDArrayType::getNumElements(v7, &v37);
      if ((BYTE4(v37) & 1) == 0)
      {
        ODIE::Platform::abort(v26);
      }

      v27 = v37;
      ODIE::Common::NDArrayType::getNumElements(v25, &v32);
      if ((BYTE4(v32) & 1) == 0)
      {
        ODIE::Platform::abort(v28);
      }

      if (v27 == v32)
      {
LABEL_24:
        result = 0;
        *a4 = v25;
        return result;
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceShrinkDims", "coreml.shrink_dims type inference requires input and output types to have same number of elements. Possibly malformed new shape.");
    }

    else
    {
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = *(v7 + 32);
      }

      v13 = v8 >> 2;
      v14 = v4[1];
      while (1)
      {
        v15 = *v14++;
        v16 = v15 + (((v15 & ~(v15 >> 31)) - v15 + (v15 >> 31)) / v12 + (v15 >> 31)) * v11;
        if (*(v10 + 4 * v16) != 1)
        {
          break;
        }

        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      v31 = *(v10 + 4 * v16);
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceShrinkDims", "coreml.shrink_dims must shrink axes that are equal to 1 got %d at index %d");
    }
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceShrinkDims", "coreml.shrink_dims type inference requires axes operand to have data.");
  }

  return 2;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceExpandDims(__int128 *a1, uint64_t **a2, uint64_t a3, ODIE::Common::NDArrayType **a4)
{
  v4 = a2[1];
  v5 = v4[1];
  if (v5)
  {
    v7 = **a2;
    if (*(v7 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v33);
    }

    v8 = *(*v4 + 16);
    v9 = *(v7 + 40);
    v10 = *(v7 + 32);
    v11 = a1[1];
    v36 = *a1;
    v37 = v11;
    v38 = *(a1 + 4);
    v12 = (v10 + (v8 >> 2));
    v13 = a1[1];
    v39 = *a1;
    v40 = v13;
    v41 = *(a1 + 4);
    v14 = odie_alloc_aligned(&v39, 4 * v12, 4, 0);
    v15 = v14;
    if (v10 >= 1)
    {
      v16 = v14;
      v17 = v10;
      do
      {
        v18 = *v9++;
        *v16++ = v18;
        --v17;
      }

      while (v17);
    }

    if ((v8 >> 2) >= 1)
    {
      v19 = 0;
      v20 = v10 + 1;
      do
      {
        v21 = *(v5 + 4 * v19);
        if (v21 < 0)
        {
          do
          {
            v21 += v20;
          }

          while (v21 < 0);
        }

        v22 = v21;
        if (v12 - 1 > v21)
        {
          v23 = &v15[v12 - 1];
          v24 = v12 - 1;
          v25 = v23;
          do
          {
            v26 = *--v25;
            *v23 = v26;
            --v24;
            v23 = v25;
          }

          while (v24 > v22);
        }

        v15[v22] = 1;
        ++v19;
        ++v20;
      }

      while (v19 != ((v8 >> 2) & 0x7FFFFFFF));
    }

    v41 = v38;
    v39 = v36;
    v40 = v37;
    ODIE::Common::NDArrayType::create(&v39, *(v7 + 24), (v10 + (v8 >> 2)), v15, (v10 + (v8 >> 2)), &ODIE::Common::Constants::kDefaultDimOrdering, (v10 + (v8 >> 2)), &v34);
    if ((v35 & 1) == 0)
    {
      ODIE::Platform::abort(v27);
    }

    v28 = v34;
    if ((*(v7 + 16) & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    ODIE::Common::NDArrayType::getNumElements(v7, &v39);
    if ((BYTE4(v39) & 1) == 0)
    {
      ODIE::Platform::abort(v29);
    }

    v30 = v39;
    ODIE::Common::NDArrayType::getNumElements(v28, &v34);
    if ((BYTE4(v34) & 1) == 0)
    {
      ODIE::Platform::abort(v31);
    }

    if (v30 == v34)
    {
LABEL_19:
      result = 0;
      *a4 = v28;
      return result;
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceExpandDims", "coreml.expand_dims type inference requires input and output types to have same number of elements. Possibly malformed new shape.");
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Reshape.cpp", "typeInferenceExpandDims", "coreml.expand_dims type inference requires axes operand to have data.");
  }

  return 2;
}

void ODIE::Kernels::Core::CPU::registerReshapeKernels(_OWORD **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v15[40] = 0;
  v16 = "coreml.reshape";
  v17 = 29;
  v18 = ODIE::Kernels::Core::CPU::typeInferenceReshape;
  v19 = ODIE::Kernels::Core::CPU::valueInferenceReshape;
  v20 = 0;
  v9[40] = 0;
  v10 = "coreml.shrink_dims";
  v11 = 37;
  v12 = ODIE::Kernels::Core::CPU::typeInferenceShrinkDims;
  v13 = ODIE::Kernels::Core::CPU::valueInferenceReshape;
  v14 = 0;
  v3[40] = 0;
  v4 = "coreml.expand_dims";
  v5 = 37;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceExpandDims;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceReshape;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v15, 1);
  ODIE::Registration::KernelRegistry::addKernel(a1, v9, 1);
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  ODIE::Common::String::~String(v9);
  ODIE::Common::String::~String(v15);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceSelect(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  if (a2[1][1])
  {
    v6 = **a2;
    if (*(v6 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v17);
    }

    v7 = *(v6 + 32);
    v8 = v20;
    if (BYTE4(v20) == 1)
    {
      v9 = *(v6 + 32) - 1;
      v10 = *(v6 + 40);
      v11 = a1[1];
      v20 = *a1;
      v21 = v11;
      v22 = *(a1 + 4);
      v12 = odie_alloc_aligned(&v20, 4 * v9, 4, 0);
      if (v7 >= 1)
      {
        v13 = 0;
        do
        {
          if (v8)
          {
            v12[v13++] = *v10;
          }

          ++v10;
          --v8;
          --v7;
        }

        while (v7);
      }

      v14 = *(v6 + 48);
      v22 = *(a1 + 4);
      v15 = a1[1];
      v20 = *a1;
      v21 = v15;
      ODIE::Common::NDArrayType::create(&v20, *(v6 + 24), v9, v12, v9, v14, v9, &v18);
      if (v19)
      {
        v8 = 0;
        *a4 = v18;
      }

      else
      {
        return v18;
      }
    }
  }

  else
  {
    return 2;
  }

  return v8;
}

void anonymous namespace::validateAndGetDimValue(_anonymous_namespace_ *this, int **a2, uint64_t a3)
{
  if (*(*a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v10);
  }

  if ((*a2)[8])
  {
    v11 = "select kernel requires dim input to be 0D.";
LABEL_23:
    v8 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Select.cpp", "validateAndGetDimValue", v11, v16, v17);
    v9 = 0;
    goto LABEL_12;
  }

  if (*(*a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v12);
  }

  v4 = *(*a2 + 3);
  if (*(v4 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v13);
  }

  if (*(v4 + 24) - 27 <= 0xFFFFFFFD)
  {
    v11 = "select kernel requires dim operand to be Int32.";
    goto LABEL_23;
  }

  if (*(*a2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v14);
  }

  v5 = *(*a2 + 3);
  if (*(v5 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    goto LABEL_21;
  }

  if (*(v5 + 24) != 25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
LABEL_21:
    ODIE::Platform::abort(v15);
  }

  v6 = *a2[1];
  v7 = a3 & (v6 >> 31);
  v8 = v7 + v6;
  if (v7 + v6 < 0 || v8 >= a3)
  {
    v11 = "select kernel dim %d is illegal. Must be between 0 and %d.";
    v16 = (v7 + v6);
    v17 = a3;
    goto LABEL_23;
  }

  v9 = 1;
LABEL_12:
  *this = v8;
  *(this + 4) = v9;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceSelect(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 3 || *(**a2 + 8) != 2)
  {
    v50 = "reduce_mean expects 3 NDArrayType inputs.";
LABEL_55:
    v51 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v52 = "validateOperandsAreNdArrayType";
    v53 = "%s";
    v64 = v50;
LABEL_56:
    v11 = 1;
    odie_log(1, v51, v52, v53, v64, v65);
    return v11;
  }

  v8 = 1;
  while (v8 != 3)
  {
    v9 = *(*a2[v8++] + 8);
    if (v9 != 2)
    {
      v10 = v8 - 2;
      v11 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "reduce_mean expects 3 NDArrayType inputs.");
      if (v10 < 2)
      {
        return v11;
      }

      break;
    }
  }

  if (a5 != 1 || (v12 = *a4, v13 = **a4, *(v13 + 8) != 2))
  {
    v50 = "reduce_mean expects 1 NDArrayType output.";
    goto LABEL_55;
  }

  v14 = 0;
  v15 = 1;
  while (1)
  {
    v16 = a2[v14];
    if (*(*v16 + 16))
    {
      if (!v16[1])
      {
        break;
      }
    }

    v15 = v14++ < 2;
    if (v14 == 3)
    {
      goto LABEL_13;
    }
  }

  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v14);
  if (v15)
  {
    return v11;
  }

  v12 = *a4;
  v13 = **a4;
LABEL_13:
  if (*(v13 + 16) && !v12[1])
  {
    v51 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp";
    v52 = "validateOperandsHaveData";
    v53 = "Operand %lld does not have data bound.";
    v64 = 0;
    goto LABEL_56;
  }

  v18 = *a2;
  v17 = a2[1];
  v19 = a2[2];
  v20 = **a2;
  if (*(v20 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v55);
  }

  v21 = *(v20 + 40);
  v22 = *(v20 + 32);
  if ((v68 & 1) == 0)
  {
    ODIE::Platform::abort(v23);
  }

  v24 = v67;
  v25 = v21[v67];
  if (*(*v19 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v56);
  }

  if ((*v19)[8])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Select.cpp", "validateAndGetIndexValue", "select kernel requires index input to be 0D.", v63);
    goto LABEL_74;
  }

  if (*(*v19 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v59);
  }

  v26 = *(*v19 + 3);
  if (*(v26 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v60);
  }

  if (*(v26 + 24) - 27 <= 0xFFFFFFFD)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Select.cpp", "validateAndGetIndexValue", "select kernel requires index operand to be Int32.");
    goto LABEL_74;
  }

  if (*(*v19 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v61);
  }

  v27 = *(*v19 + 3);
  if (*(v27 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    goto LABEL_72;
  }

  if (*(v27 + 24) != 25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "getScalarValue", "Scalar is not int32.");
LABEL_72:
    ODIE::Platform::abort(v62);
  }

  v28 = (v25 & (*v19[1] >> 31)) + *v19[1];
  if (v28 < 0 || v28 >= v25)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Select.cpp", "validateAndGetIndexValue", "select kernel index %d is illegal. Must be between 0 and %d.");
LABEL_74:
    ODIE::Platform::abort(v57);
  }

  v29 = *a4;
  v30 = **a4;
  if (*(v30 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v58);
  }

  v31 = *(v20 + 32);
  v32 = *(v30 + 32);
  if (v32 != v31 - 1)
  {
    v51 = "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Select.cpp";
    v52 = "validateOutputOperand";
    v53 = "select output rank must be one less than input rank. output rank = %d input rank = %d.";
    v64 = *(v30 + 32);
    v65 = *(v20 + 32);
    goto LABEL_56;
  }

  if (v31 <= 1)
  {
LABEL_38:
    v38 = 1;
    if (v24 >= 1)
    {
      v39 = v21;
      v40 = v24;
      do
      {
        v41 = *v39++;
        v38 *= v41;
        --v40;
      }

      while (v40);
    }

    if (v24 < 0)
    {
      v42 = -1;
    }

    else
    {
      v42 = v24;
    }

    v43 = (v42 + 1);
    v44 = 1;
    if (v22 > v43)
    {
      do
      {
        v44 *= v21[v43++];
      }

      while (v43 < v22);
    }

    if (v38 >= 1)
    {
      v45 = *(*(v20 + 24) + 16) * v44;
      v46 = v45 * v21[v24];
      v47 = (v18[1] + v45 * v28);
      v48 = v29[1];
      do
      {
        memcpy(v48, v47, v45);
        v47 += v46;
        v48 += v45;
        --v38;
      }

      while (v38);
    }

    return 0;
  }

  v33 = 0;
  v34 = *(v20 + 40);
  v35 = *(v30 + 40);
  v36 = 1;
  while (v33 < v67)
  {
    v37 = *(v35 + 4 * v33);
    if (v37 != *(v34 + 4 * v33))
    {
      v66 = *(v34 + 4 * v33);
      v54 = "stack output shape validation failed. at dim %d, output shape = %d expected = %d";
      goto LABEL_58;
    }

LABEL_36:
    v36 = ++v33 < v32;
    if (v32 == v33)
    {
      if (v33 >= v32)
      {
        goto LABEL_38;
      }

      return 1;
    }
  }

  if (v67 == v33)
  {
    goto LABEL_36;
  }

  v37 = *(v35 + 4 * v33);
  if (v37 == *(v34 + 4 * v33 + 4))
  {
    goto LABEL_36;
  }

  v66 = *(v34 + 4 * v33 + 4);
  v54 = "select output shape validation failed. at dim %d, output shape = %d expected = %d";
LABEL_58:
  v11 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Select.cpp", "validateOutputOperand", v54, v33, v37, v66);
  if (!v36)
  {
    goto LABEL_38;
  }

  return v11;
}

void ODIE::Kernels::Core::CPU::registerSelectKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.select";
  v4 = 27;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceSelect;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceSelect;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceSlice(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a2[1][1];
  if (!v4)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Slice.cpp", "typeInferenceSlice", "coreml.slice type inference requires start indices to have data.");
LABEL_28:
    result = 3;
    goto LABEL_24;
  }

  v5 = a2[2][1];
  if (!v5)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Slice.cpp", "typeInferenceSlice", "coreml.slice type inference requires end indices to have data.");
    goto LABEL_28;
  }

  v6 = a2[3][1];
  if (!v6)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Slice.cpp", "typeInferenceSlice", "coreml.slice type inference requires strides to have data.");
    goto LABEL_28;
  }

  v9 = **a2;
  if (*(v9 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v21);
  }

  v10 = *(v9 + 32);
  if (!result)
  {
    v12 = a1[1];
    v24 = *a1;
    v25 = v12;
    v26 = *(a1 + 4);
    v13 = odie_alloc_aligned(&v24, 4 * v10, 4, 0);
    if (v10 >= 1)
    {
      for (i = 0; i != v10; ++i)
      {
        v15 = v28[i];
        if (v15 == -1 || (v16 = v27[i], v16 == -1))
        {
          v13[i] = -1;
        }

        else
        {
          v13[i] = 0;
          if ((*(v6 + 4 * i) & 0x80000000) != 0)
          {
            if (v15 > v16)
            {
              v18 = 1;
              do
              {
                v13[i] = v18;
                v15 += *(v6 + 4 * i);
                ++v18;
              }

              while (v15 > v16);
            }
          }

          else if (v15 < v16)
          {
            v17 = 1;
            do
            {
              v13[i] = v17;
              v15 += *(v6 + 4 * i);
              ++v17;
            }

            while (v15 < v16);
          }
        }
      }
    }

    v26 = *(a1 + 4);
    v19 = a1[1];
    v24 = *a1;
    v25 = v19;
    ODIE::Common::NDArrayType::create(&v24, *(v9 + 24), v10, v13, v10, *(v9 + 48), *(v9 + 32), &v22);
    if (v23)
    {
      result = 0;
      *a4 = v22;
    }

    else
    {
      result = v22;
    }
  }

LABEL_24:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t anonymous namespace::resolveStartAndEndIndices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 < 1)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(a1 + 4 * v7);
    if (v8 != -1)
    {
      break;
    }

    *(a6 + 4 * v7) = -1;
    *(a7 + 4 * v7) = -1;
LABEL_26:
    if (a2 == ++v7)
    {
      return 0;
    }
  }

  v9 = *(a5 + 4 * v7);
  if (v9)
  {
    if (v9 <= 0)
    {
      v10 = v8 - 1;
    }

    else
    {
      v10 = *(a1 + 4 * v7);
    }

    v11 = (v8 & (*(a3 + 4 * v7) >> 31)) + *(a3 + 4 * v7);
    if (v10 >= v11)
    {
      v10 = (v8 & (*(a3 + 4 * v7) >> 31)) + *(a3 + 4 * v7);
    }

    if (v11 < 0)
    {
      v10 = 0;
    }

    *(a6 + 4 * v7) = v10;
    v12 = *(a5 + 4 * v7);
    v13 = *(a4 + 4 * v7);
    if (v12 >= 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }

    if (v13 >= v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v8;
    }

    v16 = v15 + v13;
    if (v12 <= 0)
    {
      --v8;
    }

    if (v8 >= v16)
    {
      v8 = v16;
    }

    if (v16 < v14)
    {
      v8 = v14;
    }

    *(a7 + 4 * v7) = v8;
    goto LABEL_26;
  }

  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Slice.cpp", "resolveStartAndEndIndices", "slice kernel: stride[%d] is 0. Not allowed.", v7);
  return 3;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceSlice(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a3 != 4 || *(**a2 + 8) != 2)
  {
    v31 = "slice expects 4 packed NDArrayType inputs.";
LABEL_25:
    v32 = "validateOperandsAreNdArrayType";
    v33 = "%s";
    v36 = v31;
LABEL_26:
    v12 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v32, v33, v36);
    goto LABEL_20;
  }

  v9 = 1;
  while (v9 != 4)
  {
    v10 = *(*a2[v9++] + 8);
    if (v10 != 2)
    {
      v11 = v9 - 2;
      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "slice expects 4 packed NDArrayType inputs.");
      if (v11 < 3)
      {
        goto LABEL_20;
      }

      break;
    }
  }

  if (a5 != 1 || (v13 = *a4, v14 = **a4, *(v14 + 8) != 2))
  {
    v31 = "slice expects packed 1 NDArrayType output.";
    goto LABEL_25;
  }

  v15 = 0;
  v16 = 1;
  while (1)
  {
    v17 = a2[v15];
    if (*(*v17 + 16))
    {
      if (!v17[1])
      {
        break;
      }
    }

    v16 = v15++ < 3;
    if (v15 == 4)
    {
      goto LABEL_13;
    }
  }

  v12 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v15);
  if (v16)
  {
    goto LABEL_20;
  }

  v13 = *a4;
  v14 = **a4;
LABEL_13:
  if (*(v14 + 16) && !v13[1])
  {
    v32 = "validateOperandsHaveData";
    v33 = "Operand %lld does not have data bound.";
    v36 = 0;
    goto LABEL_26;
  }

  v18 = *a2;
  v19 = a2[3];
  v20 = a2[1][1];
  v21 = a2[2][1];
  v22 = v19[1];
  v23 = *(*v19 + 16);
  if (*(v14 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v34);
  }

  v24 = *v18;
  if (*(*v18 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v35);
  }

  v25 = v18[1];
  v26 = v13[1];
  if (!v27)
  {
    v28 = *(a1 + 16);
    v37[0] = *a1;
    v37[1] = v28;
    v38 = *(a1 + 32);
  }

  v12 = v27;
LABEL_20:
  v29 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t anonymous namespace::performSliceComputation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, int *a7, uint64_t a8, int *a9, uint64_t a10, uint64_t a11, char a12)
{
  v49 = *MEMORY[0x277D85DE8];
  v12 = *(*(a1 + 24) + 16);
  if ((v12 & 0x8000000000000000) != 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Slice.cpp", "performSliceComputation", "Slice kernel does not support unknown element size.");
    v36 = 3;
  }

  else
  {
    v17 = *(a1 + 32);
    ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v45, *(a1 + 40), v17);
    if (v47)
    {
LABEL_22:
      v36 = 0;
    }

    else
    {
      v18 = a4;
      if (a12)
      {
        v19 = a3;
      }

      else
      {
        a4 = a3;
        v19 = v18;
      }

      while (1)
      {
        v20 = v46[10];
        if (v17 >= 1)
        {
          v21 = v48;
          v23 = a9;
          v22 = a5;
          v24 = v46;
          v25 = a7;
          v26 = v17;
          do
          {
            v28 = *v22++;
            v27 = v28;
            v30 = *v24++;
            v29 = v30;
            v32 = *v23++;
            v31 = v32;
            v33 = v27 + v32 * v29;
            *v21 = v33;
            v35 = *v25++;
            v34 = v35;
            if (v31 < 1)
            {
              if (v33 <= v34)
              {
                goto LABEL_21;
              }
            }

            else if (v33 >= v34)
            {
              goto LABEL_21;
            }

            ++v21;
            --v26;
          }

          while (v26);
        }

        ODIE::Common::NDArrayType::ravelMultiIndex(a1, v46, v20, &v43);
        v36 = v43;
        if (v44 != 1)
        {
          break;
        }

        ODIE::Common::NDArrayType::ravelMultiIndex(a2, v48, v17, &v43);
        v37 = v43;
        if (v44 != 1)
        {
          v36 = v43;
          break;
        }

        if (a12)
        {
          v38 = v43;
        }

        else
        {
          v38 = v36;
        }

        if (a12)
        {
          v37 = v36;
        }

        memcpy((a4 + v12 * v38), (v19 + v12 * v37), v12);
LABEL_21:
        ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v45);
        if (v47 == 1)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceSliceUpdate(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  if (a3 == 5 && (v5 = **a2, *(v5 + 8) == 2))
  {
    v8 = 1;
    while (v8 != 5)
    {
      v9 = *(*a2[v8++] + 8);
      if (v9 != 2)
      {
        v10 = v8 - 2;
        v11 = 1;
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "coreml.slice_update expects 5 packed NDArrayType inputs.");
        if (v10 < 4)
        {
          return v11;
        }

        v5 = **a2;
        if (*(v5 + 8) != 2)
        {
          odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
          ODIE::Platform::abort(v21);
        }

        break;
      }
    }

    v12 = *(v5 + 40);
    v13 = *(v5 + 32);
    v14 = a1[1];
    v24 = *a1;
    v25 = v14;
    v26 = *(a1 + 4);
    v15 = odie_alloc_aligned(&v24, 4 * v13, 4, 0);
    if (v13 >= 1)
    {
      v16 = v15;
      v17 = v13;
      do
      {
        v18 = *v12++;
        *v16++ = v18;
        --v17;
      }

      while (v17);
    }

    v26 = *(a1 + 4);
    v19 = a1[1];
    v24 = *a1;
    v25 = v19;
    ODIE::Common::NDArrayType::create(&v24, *(v5 + 24), v13, v15, v13, &ODIE::Common::Constants::kDefaultDimOrdering, v13, &v22);
    if (v23)
    {
      v11 = 0;
      *a4 = v22;
    }

    else
    {
      return v22;
    }
  }

  else
  {
    v11 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "coreml.slice_update expects 5 packed NDArrayType inputs.");
  }

  return v11;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceSliceUpdate(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a3 != 5 || *(**a2 + 8) != 2)
  {
    v34 = "coreml.slice_update expects 5 packed NDArrayValue inputs.";
LABEL_26:
    v35 = "validateOperandsAreNdArrayType";
    v36 = "%s";
    v40 = v34;
LABEL_27:
    v12 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v35, v36, v40);
    goto LABEL_21;
  }

  v9 = 1;
  while (v9 != 5)
  {
    v10 = *(*a2[v9++] + 8);
    if (v10 != 2)
    {
      v11 = v9 - 2;
      v12 = 1;
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "coreml.slice_update expects 5 packed NDArrayValue inputs.");
      if (v11 < 4)
      {
        goto LABEL_21;
      }

      break;
    }
  }

  if (a5 != 1 || (v13 = *a4, v14 = **a4, *(v14 + 8) != 2))
  {
    v34 = "coreml.slice_update expects packed 1 NDArrayValue output.";
    goto LABEL_26;
  }

  v15 = 0;
  v16 = 1;
  while (1)
  {
    v17 = a2[v15];
    if (*(*v17 + 16))
    {
      if (!v17[1])
      {
        break;
      }
    }

    v16 = v15++ < 4;
    if (v15 == 5)
    {
      goto LABEL_13;
    }
  }

  v12 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v15);
  if (v16)
  {
    goto LABEL_21;
  }

  v13 = *a4;
  v14 = **a4;
LABEL_13:
  if (*(v14 + 16) && !v13[1])
  {
    v35 = "validateOperandsHaveData";
    v36 = "Operand %lld does not have data bound.";
    v40 = 0;
    goto LABEL_27;
  }

  v18 = *a2;
  v19 = a2[3];
  v20 = a2[4];
  v21 = *(a2[1] + 8);
  v22 = *(a2[2] + 8);
  v23 = v19[1];
  v41 = *(*v19 + 16);
  if (*(v14 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v37);
  }

  v24 = a1;
  v25 = *v18;
  if (*(*v18 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v38);
  }

  v26 = *v20;
  if (*(*v20 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v39);
  }

  v27 = v18[1];
  v28 = v13[1];
  v29 = v20[1];
  if (!v30)
  {
    memcpy(v28, v27, *(v25 + 16));
    v31 = *(v24 + 16);
    v42[0] = *v24;
    v42[1] = v31;
    v43 = *(v24 + 32);
  }

  v12 = v30;
LABEL_21:
  v32 = *MEMORY[0x277D85DE8];
  return v12;
}

void ODIE::Kernels::Core::CPU::registerSliceKernels(_OWORD **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v9[40] = 0;
  v10 = "coreml.slice";
  v11 = 25;
  v12 = ODIE::Kernels::Core::CPU::typeInferenceSlice;
  v13 = ODIE::Kernels::Core::CPU::valueInferenceSlice;
  v14 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v9, 1);
  v3[40] = 0;
  v4 = "coreml.slice_update";
  v5 = 39;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceSliceUpdate;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceSliceUpdate;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v3, 1);
  ODIE::Common::String::~String(v3);
  ODIE::Common::String::~String(v9);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceSoftmax(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  {
    v24 = "Invalid input operand types passed to Softmax kernel.";
LABEL_18:
    v23 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Softmax.cpp", "typeInferenceSoftmax", v24);
    return v23;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v25);
  }

  v8 = *(v7 + 32);
  v9 = *(v7 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v26);
  }

  v10 = *(v9 + 24);
  if (v10 == 69)
  {
    v11 = 4;
    goto LABEL_8;
  }

  if (v10 != 68)
  {
    v24 = "Invalid input type detected in softmax kernel. Not fp32/fp16.";
    goto LABEL_18;
  }

  v11 = 2;
LABEL_8:
  v12 = a1[1];
  v30 = *a1;
  v31 = v12;
  v32 = *(a1 + 4);
  v13 = odie_alloc_aligned(&v30, 4 * v8, 4, 0);
  v14 = v13;
  if (v8 >= 1)
  {
    v15 = *(v7 + 40);
    v16 = v8;
    v17 = v13;
    do
    {
      v18 = *v15++;
      *v17++ = v18;
      --v16;
    }

    while (v16);
  }

  v19 = a1[1];
  v30 = *a1;
  v31 = v19;
  v32 = *(a1 + 4);
  ODIE::Common::ScalarType::create(&v30, v10, v11, &v28);
  if ((v29 & 1) == 0)
  {
    ODIE::Platform::abort(v20);
  }

  v21 = a1[1];
  v30 = *a1;
  v31 = v21;
  v32 = *(a1 + 4);
  ODIE::Common::NDArrayType::create(&v30, v28, v8, v14, v8, &ODIE::Common::Constants::kDefaultDimOrdering, v8, &v28);
  if ((v29 & 1) == 0)
  {
    ODIE::Platform::abort(v22);
  }

  v23 = 0;
  *a4 = v28;
  return v23;
}

uint64_t anonymous namespace::validateInputOperandTypes(void **a1, uint64_t a2)
{
  if (a2 != 2)
  {
    v7 = "Softmax kernel requires two inputs.";
LABEL_17:
    v5 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Softmax.cpp", "validateInputOperandTypes", v7);
    return v5;
  }

  if (*(**a1 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v8);
  }

  v2 = *a1[1];
  if (*(v2 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v9);
  }

  if (*(v2 + 32))
  {
    v7 = "Softmax kernel's axis rank must be 0.";
    goto LABEL_17;
  }

  v3 = *a1[1];
  if (*(v3 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v10);
  }

  v4 = *(v3 + 24);
  if (*(v4 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v11);
  }

  if (*(v4 + 24) != 25)
  {
    v7 = "Softmax kernel's axis element type must be Int32.";
    goto LABEL_17;
  }

  return 0;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceSoftmax(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v96 = *MEMORY[0x277D85DE8];
  {
    v73 = "Invalid input operand types passed to Softmax kernel.";
    goto LABEL_62;
  }

  v79 = (*a2)[1];
  if (!v79 || !a2[1][1] || (v78 = (*a4)[1]) == 0)
  {
    v73 = "Softmax kernel requires data to be bound to both inputs and output.";
LABEL_62:
    v33 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Softmax.cpp", "valueInferenceSoftmax", v73);
    goto LABEL_30;
  }

  v7 = **a2;
  v83 = v7;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v74);
  }

  v8 = *(v7 + 32);
  v9 = **a4;
  v82 = v9;
  if (*(v9 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v75);
  }

  if (*(v7 + 16) != *(v9 + 16))
  {
    v73 = "Softmax kernel requires input and output data to be of same size.";
    goto LABEL_62;
  }

  v10 = *(v7 + 32);
  v11 = *a2[1][1];
  v81 = (v8 & (v11 >> 31)) + v11;
  v80 = *(v7 + 40);
  v95 = 0;
  memset(v94, 0, sizeof(v94));
  v92 = 0;
  memset(v91, 0, sizeof(v91));
  if ((v8 & 0x80000000) == 0)
  {
    *(v94 + v8) = 1;
    if (v8)
    {
      v12 = 0;
      v13 = 4 * v8;
      v14 = 1;
      v15 = v8;
      do
      {
        v16 = v80[v15 - 1];
        v12 |= v16 < 0;
        v14 *= v16;
        if (v12)
        {
          v14 = -1;
        }

        *&v93[v15 * 4] = v14;
        --v15;
      }

      while (v15 * 4);
      v17 = 0;
      v18 = *(v82 + 40) - 4;
      v19 = 1;
      *(v91 + v8) = 1;
      do
      {
        v20 = *(v18 + v13);
        v17 |= v20 < 0;
        v19 *= v20;
        if (v17)
        {
          v19 = -1;
        }

        *&v90[v13] = v19;
        v13 -= 4;
      }

      while (v13);
    }

    else
    {
      *(v91 + v8) = 1;
    }
  }

  v21 = 4 * v81 + 4;
  v22 = *(v94 + v21);
  v23 = *(v91 + v21);
  v24 = *(a1 + 16);
  v86[0] = *a1;
  v86[1] = v24;
  v87 = *(a1 + 32);
  v25 = odie_alloc_aligned(v86, 4 * v8, 4, 0);
  if (v8 >= 1)
  {
    v27 = v80;
    v26 = v81;
    v28 = v25;
    do
    {
      if (v26)
      {
        v29 = *v27;
      }

      else
      {
        v29 = 1;
      }

      *v28++ = v29;
      ++v27;
      --v26;
      --v8;
    }

    while (v8);
  }

  v30 = **a2;
  if (*(v30 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v76);
  }

  v31 = *(v30 + 24);
  if (*(v31 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v77);
  }

  v32 = *(v31 + 24);
  ODIE::Kernels::Core::CPU::Utils::PositionIterator::PositionIterator(v86, v25, v10);
  if ((v89 & 1) == 0)
  {
    v36 = 2 * v22;
    v37 = 2 * v23;
    v38 = 4 * v22;
    v39 = 4 * v23;
    do
    {
      ODIE::Common::NDArrayType::ravelMultiIndex(v83, v86 + 8, v88, &v84);
      if ((v85 & 1) == 0)
      {
        ODIE::Platform::abort(v40);
      }

      v41 = v84;
      ODIE::Common::NDArrayType::ravelMultiIndex(v82, v86 + 8, v88, &v84);
      if ((v85 & 1) == 0)
      {
        ODIE::Platform::abort(v42);
      }

      if (v32 == 68)
      {
        v53 = v80[v81];
        if (v53 >= 1)
        {
          v54 = (v79 + 2 * v41);
          v55 = (v78 + 2 * v84);
          v56 = -1.79769313e308;
          v57 = v54;
          v58 = v80[v81];
          do
          {
            _H0 = *v57;
            __asm { FCVT            D0, H0 }

            if (v56 < _D0)
            {
              v56 = _D0;
            }

            v57 = (v57 + v36);
            --v58;
          }

          while (v58);
          v65 = 0.0;
          v66 = v54;
          v67 = v80[v81];
          do
          {
            _H0 = *v66;
            __asm { FCVT            D0, H0 }

            v65 = v65 + exp(_D0 - v56);
            v66 = (v66 + v36);
            --v67;
          }

          while (v67);
          do
          {
            _H0 = *v54;
            __asm { FCVT            D0, H0 }

            _D0 = exp(_D0 - v56) / v65;
            __asm { FCVT            H0, D0 }

            *v55 = LOWORD(_D0);
            v55 = (v55 + v37);
            v54 = (v54 + v36);
            --v53;
          }

          while (v53);
        }
      }

      else if (v32 == 69)
      {
        v43 = v80[v81];
        if (v43 >= 1)
        {
          v44 = (v79 + 4 * v41);
          v45 = (v78 + 4 * v84);
          v46 = -1.79769313e308;
          v47 = v44;
          v48 = v80[v81];
          do
          {
            if (v46 < *v47)
            {
              v46 = *v47;
            }

            v47 = (v47 + v38);
            --v48;
          }

          while (v48);
          v49 = 0.0;
          v50 = v44;
          v51 = v80[v81];
          do
          {
            v49 = v49 + exp(*v50 - v46);
            v50 = (v50 + v38);
            --v51;
          }

          while (v51);
          do
          {
            v52 = exp(*v44 - v46) / v49;
            *v45 = v52;
            v45 = (v45 + v39);
            v44 = (v44 + v38);
            --v43;
          }

          while (v43);
        }
      }

      ODIE::Kernels::Core::CPU::Utils::PositionIterator::operator++(v86);
    }

    while (v89 != 1);
  }

  v33 = 0;
LABEL_30:
  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

void ODIE::Kernels::Core::CPU::registerSoftmaxKernels(_OWORD **a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[40] = 0;
  v3 = "coreml.softmax";
  v4 = 29;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceSoftmax;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceSoftmax;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceSplit(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2[1];
  if (!v5[1])
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "typeInferenceSplit", "Cannot perform split op's type inference without split configuration data.");
    return 2;
  }

  v8 = *a2;
  v9 = *v5;
  if (*(*v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v10 = *(v9 + 8);
  if (v10 >= 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "typeInferenceSplit", "split configuration's rank can only be 0D or 1D.");
    return 2;
  }

  v11 = *v8;
  if (*(*v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v12 = *(v11 + 32);
  v13 = v40;
  if (BYTE4(v40) != 1)
  {
    return v40;
  }

  v35 = *(v11 + 40);
  v14 = v5[1];
  v34 = v35[v40];
  if (!v10)
  {
    v16 = (v35[v40] + *v14 - 1) / *v14;
LABEL_11:
    if (a5 == v16)
    {
      v36 = (v16 - 1);
      if (v16 >= 1)
      {
        v18 = 0;
        v19 = 0;
        v20 = v12;
        v21 = 4 * v12;
        v22 = v16;
        do
        {
          if (v10 == 1)
          {
            v23 = v14[v18];
          }

          else
          {
            v23 = *v14;
            if (v18 == v36)
            {
              v23 = v34 % v23;
            }
          }

          if (!v19 || *(*(v19 + 40) + 4 * v13) != v23)
          {
            v24 = a1[1];
            v40 = *a1;
            v41 = v24;
            v42 = *(a1 + 4);
            v25 = odie_alloc_aligned(&v40, v21, 4, 0);
            if (v20 >= 1)
            {
              v26 = v13;
              v27 = v25;
              v28 = v20;
              v29 = v35;
              do
              {
                v30 = v23;
                if (v26)
                {
                  v30 = *v29;
                }

                *v27++ = v30;
                ++v29;
                --v26;
                --v28;
              }

              while (v28);
            }

            v42 = *(a1 + 4);
            v31 = a1[1];
            v40 = *a1;
            v41 = v31;
            ODIE::Common::NDArrayType::create(&v40, *(v11 + 24), v20, v25, v20, *(v11 + 48), *(v11 + 32), &v38);
            if (v39 != 1)
            {
              return v38;
            }

            v19 = v38;
          }

          *(a4 + 8 * v18++) = v19;
        }

        while (v18 != v22);
      }

      return 0;
    }

    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Split.cpp", "typeInferenceSplit", "split will produce %d tensors, but outputs has %lld tensors.");
    return 2;
  }

  v15 = *(*v5 + 2);
  ODIE::Common::NDArrayType::getNumElements(v9, &v40);
  v16 = v40;
  if (BYTE4(v40) != 1)
  {
    return v40;
  }

  if (!result)
  {
    goto LABEL_11;
  }

  return result;
}