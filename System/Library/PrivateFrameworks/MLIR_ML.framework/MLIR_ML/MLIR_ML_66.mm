__CFDictionary *ZinCreateUnflattenUnit(const ZinIrUnflattenUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  v6 = *(a1 + 20);
  v7 = @"NCHW";
  if (v6 == 2)
  {
    v7 = @"NHWC";
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  CFDictionaryAddValue(Mutable, @"Mode", v8);
  v9 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 84);
  CFDictionaryAddValue(v5, @"DestinationWidth", v9);
  CFRelease(v9);
  v10 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 88);
  CFDictionaryAddValue(v5, @"DestinationHeight", v10);
  CFRelease(v10);
  v11 = CFNumberCreate(v3, kCFNumberSInt32Type, a1 + 92);
  CFDictionaryAddValue(v5, @"DestinationChannels", v11);
  CFRelease(v11);
  CFDictionaryAddValue(Unit, @"Params", v5);
  CFRelease(v5);
  return Unit;
}

__CFString *ZinUnitTypeToCFString(int a1)
{
  if ((a1 - 1) > 0x4D)
  {
    return 0;
  }

  else
  {
    return off_27983A5F0[a1 - 1];
  }
}

__CFDictionary *ZinCreateUnit(const ZinIrUnitInfo *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (*(a1 + 31) >= 0)
  {
    v4 = a1 + 8;
  }

  else
  {
    v4 = *(a1 + 1);
  }

  v5 = CFStringCreateWithCString(v2, v4, 0x8000100u);
  CFDictionaryAddValue(Mutable, @"Name", v5);
  CFRelease(v5);
  v6 = ZinUnitTypeToCFString(*(a1 + 8));
  CFDictionaryAddValue(Mutable, @"Type", v6);
  v7 = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
  v8 = *(a1 + 5);
  if (*(a1 + 6) != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v12 = (v8 + v9);
      if (*(v8 + v9 + 23) < 0)
      {
        v12 = *v12;
      }

      v11 = CFStringCreateWithCString(v2, v12, 0x8000100u);
      CFArrayAppendValue(v7, v11);
      CFRelease(v11);
      ++v10;
      v8 = *(a1 + 5);
      v9 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 6) - v8) >> 3) > v10);
  }

  CFDictionaryAddValue(Mutable, @"Bottom", v7);
  CFRelease(v7);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = ZinTensorFormatToANECFormat(v13);
    CFDictionaryAddValue(Mutable, @"InputType", v14);
  }

  v15 = ZinTensorFormatToANECFormat(*(a1 + 17));
  if (!v15)
  {
    ZinAssertImpl("Invalid or missing output format.");
  }

  CFDictionaryAddValue(Mutable, @"OutputType", v15);
  valuePtr = *(a1 + 18);
  if (valuePtr >= 1)
  {
    v16 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(Mutable, @"OutputChannels", v16);
    CFRelease(v16);
  }

  return Mutable;
}

void ZinAddKernelSizeToParamsDict(__CFDictionary *a1, void *a2, int a3)
{
  v6 = a2[1];
  valuePtr = *a2;
  v13 = v6;
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(v7, kCFNumberSInt32Type, &v13);
  CFDictionaryAddValue(a1, @"KernelWidth", v8);
  CFDictionaryAddValue(a1, @"KernelHeight", v9);
  CFRelease(v8);
  CFRelease(v9);
  if (a3)
  {
    v11 = a2[2];
    v10 = CFNumberCreate(v7, kCFNumberSInt32Type, &v11);
    CFDictionaryAddValue(a1, @"KernelDepth", v10);
    CFRelease(v10);
  }
}

void ZinAddWeightInfoToParamsDict(__CFDictionary *a1, const void *a2, const void *a3, const void *a4, const void *a5, _BYTE *a6)
{
  v12 = *MEMORY[0x277CBECE8];
  v13 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a6 + 8);
  CFDictionaryAddValue(a1, a3, v13);
  CFRelease(v13);
  if (a2)
  {
    v14 = MEMORY[0x277CBED28];
    if (!*a6)
    {
      v14 = MEMORY[0x277CBED10];
    }

    CFDictionaryAddValue(a1, a2, *v14);
  }

  v15 = CFNumberCreate(v12, kCFNumberSInt32Type, a6 + 4);
  CFDictionaryAddValue(a1, a4, v15);
  CFRelease(v15);
  v16 = CFNumberCreate(v12, kCFNumberSInt64Type, a6 + 16);
  CFDictionaryAddValue(a1, a5, v16);

  CFRelease(v16);
}

void ZinAddStepsToParamsDict(__CFDictionary *a1, uint64_t a2, int a3)
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v8 = CFNumberCreate(v6, kCFNumberSInt32Type, a2);
  v9 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 4));
  CFArrayAppendValue(Mutable, v8);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v8);
  CFRelease(v9);
  if (a3)
  {
    v10 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 8));
    CFArrayAppendValue(Mutable, v10);
    CFRelease(v10);
  }

  CFDictionaryAddValue(a1, @"Step", Mutable);

  CFRelease(Mutable);
}

void ZinAddKernelDilationRateToParamsDict(__CFDictionary *a1, char *valuePtr)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
  v6 = CFNumberCreate(v4, kCFNumberSInt32Type, valuePtr + 4);
  CFDictionaryAddValue(a1, @"KernelDilationX", v5);
  CFDictionaryAddValue(a1, @"KernelDilationY", v6);
  CFRelease(v5);

  CFRelease(v6);
}

void ZinAddPaddingToParamsDict(__CFDictionary *a1, uint64_t a2, int a3)
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (a2 + 8));
  v8 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 12));
  v9 = CFNumberCreate(v6, kCFNumberSInt32Type, a2);
  v10 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 4));
  CFDictionaryAddValue(a1, @"PadTop", v7);
  CFDictionaryAddValue(a1, @"PadBot", v8);
  CFDictionaryAddValue(a1, @"PadLeft", v9);
  CFDictionaryAddValue(a1, @"PadRight", v10);
  CFRelease(v7);
  CFRelease(v8);
  CFRelease(v9);
  CFRelease(v10);
  if (a3)
  {
    v11 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 16));
    v12 = CFNumberCreate(v6, kCFNumberSInt32Type, (a2 + 20));
    CFDictionaryAddValue(a1, @"PadFront", v11);
    CFDictionaryAddValue(a1, @"PadBack", v12);
    CFRelease(v11);

    CFRelease(v12);
  }
}

__CFString *ZinIrPaddingModeToCFString(unsigned int a1)
{
  if (a1 > 9)
  {
    return @"Zero";
  }

  else
  {
    return qword_27983A860[a1];
  }
}

void ZinSetFormat(void *key, _DWORD *a2, CFMutableDictionaryRef theDict)
{
  v5 = *a2 - 1;
  if (v5 >= 6 || ((0x3Bu >> v5) & 1) == 0)
  {
    ZinAssertImpl("Error: invalid kernel format. It should be Int8, UInt8, FP16, FP32 or E4M3", v3, v4);
  }

  v8 = *(&off_27983A8B0 + v5);

  CFDictionaryAddValue(theDict, key, v8);
}

void ZinAddSpaceTransformFactorToParamsDict(__CFDictionary *a1, _DWORD *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a3);
  v8 = CFNumberCreate(v6, kCFNumberSInt32Type, (a3 + 4));
  v9 = CFNumberCreate(v6, kCFNumberSInt32Type, (a3 + 8));
  if (*a2 <= 0x25u && ((1 << *a2) & 0x3D80000000) != 0)
  {
    CFDictionaryAddValue(a1, @"FactorX", v7);
    CFDictionaryAddValue(a1, @"FactorY", v8);
    CFDictionaryAddValue(a1, @"FactorZ", v9);
  }

  CFRelease(v7);
  CFRelease(v8);

  CFRelease(v9);
}

void ZinAddOffsetsToParamsDict(__CFDictionary *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *MEMORY[0x277CBED28];
    v9 = MEMORY[0x277CBF138];
    v10 = MEMORY[0x277CBF150];
    do
    {
      v11 = CFDictionaryCreateMutable(v5, 0, v9, v10);
      v12 = ZinIrCoordinateToCFString(v7 + 4);
      CFDictionaryAddValue(v11, @"Dimension", v12);
      valuePtr = v7[3];
      v13 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
      CFDictionaryAddValue(v11, @"Offset", v13);
      if (*(v7 + 32) == 1)
      {
        CFDictionaryAddValue(v11, @"Circular", v8);
      }

      CFArrayAppendValue(Mutable, v11);
      CFRelease(v13);
      CFRelease(v11);
      v7 = *v7;
    }

    while (v7);
  }

  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = *MEMORY[0x277CBED28];
    v16 = MEMORY[0x277CBF138];
    v17 = MEMORY[0x277CBF150];
    do
    {
      v18 = (v14 + 3);
      v19 = CFDictionaryCreateMutable(v5, 0, v16, v17);
      v20 = ZinIrCoordinateToCFString(v14 + 4);
      CFDictionaryAddValue(v19, @"Dimension", v20);
      if (*(v14 + 47) < 0)
      {
        v18 = *v18;
      }

      v21 = CFStringCreateWithCString(v5, v18, 0x8000100u);
      CFDictionaryAddValue(v19, @"Offset", v21);
      if (*(v14 + 48) == 1)
      {
        CFDictionaryAddValue(v19, @"Circular", v15);
      }

      CFArrayAppendValue(Mutable, v19);
      CFRelease(v21);
      CFRelease(v19);
      v14 = *v14;
    }

    while (v14);
  }

  CFDictionaryAddValue(a1, a4, Mutable);
  CFRelease(Mutable);
}

uint64_t ZinTensorFormatToANECFormat(int a1)
{
  if ((a1 - 1) > 0xF)
  {
    return 0;
  }

  else
  {
    return *(&off_27983A8E0 + (a1 - 1));
  }
}

uint64_t mlir::silc::MeshAttr::findMeshAxes(mlir::silc::MeshAttr *a1, const void *a2, size_t a3)
{
  Axes = mlir::silc::MeshAttr::getAxes(a1);
  if (!v6)
  {
    return -1;
  }

  v7 = Axes;
  v8 = 0;
  v9 = 8 * v6;
  while (1)
  {
    v13 = *(v7 + 8 * v8);
    Name = mlir::silc::MeshAxisAttr::getName(&v13);
    if (v11 == a3 && (!a3 || !memcmp(Name, a2, a3)))
    {
      break;
    }

    ++v8;
    v9 -= 8;
    if (!v9)
    {
      return -1;
    }
  }

  return v8;
}

uint64_t mlir::silc::MeshAttr::getSize(mlir::silc::MeshAttr *this)
{
  Axes = mlir::silc::MeshAttr::getAxes(this);
  if (!v2)
  {
    return 1;
  }

  v3 = Axes;
  v4 = 8 * v2;
  v5 = 1;
  do
  {
    v6 = *v3++;
    v8 = v6;
    v5 *= mlir::silc::MeshAxisAttr::getSize(&v8);
    v4 -= 8;
  }

  while (v4);
  return v5;
}

uint64_t mlir::silc::MeshAttr::getShape@<X0>(mlir::silc::MeshAttr *this@<X0>, void *a2@<X8>)
{
  result = mlir::silc::MeshAttr::getAxes(this);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::silc::MeshAttr::getMeshVector@<X0>(mlir::silc::MeshAttr *this@<X0>, void *a2@<X8>)
{
  result = mlir::silc::MeshAttr::getAxes(this);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::silc::MeshAttr::getAxisRef(mlir::silc::MeshAttr *this, uint64_t a2)
{
  Axes = mlir::silc::MeshAttr::getAxes(this);
  Context = mlir::Attribute::getContext(this);
  Name = mlir::silc::MeshAxisAttr::getName((Axes + 8 * a2));

  return mlir::silc::MeshAxisRefAttr::get(Context, Name, v6);
}

uint64_t mlir::silc::getMeshOp(mlir::SymbolTable *a1, mlir::Operation *a2)
{
  result = mlir::SymbolTable::lookupNearestSymbolFrom(a1, a2);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::silc::SilcMeshOp,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::silc::getMeshOp(uint64_t a1, size_t a2, const llvm::Twine *a3)
{
  Context = mlir::Attribute::getContext((a1 + 24));
  v7 = mlir::SymbolRefAttr::get(Context, a2, a3);
  result = mlir::SymbolTable::lookupNearestSymbolFrom(a1, v7);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::silc::SilcMeshOp,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::silc::getMeshAttr(uint64_t a1, size_t a2, const llvm::Twine *a3)
{
  Context = mlir::Attribute::getContext((a1 + 24));
  v7 = mlir::SymbolRefAttr::get(Context, a2, a3);
  v8 = mlir::SymbolTable::lookupNearestSymbolFrom(a1, v7);
  if (v8 && ((v9 = *(*(v8 + 48) + 16), v10 = v9 == &mlir::detail::TypeIDResolver<mlir::silc::SilcMeshOp,void>::id, v9 != &mlir::detail::TypeIDResolver<mlir::silc::SilcMeshOp,void>::id) ? (v11 = 0) : (v11 = v8), v13 = v11, v10))
  {
    return mlir::silc::SilcMeshOp::getMesh(&v13);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::silc::getMeshAttr(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  LeafReference = mlir::SymbolRefAttr::getLeafReference(&v14);
  Value = mlir::StringAttr::getValue(&LeafReference);
  v5 = v4;
  Context = mlir::Attribute::getContext((a1 + 24));
  v7 = mlir::SymbolRefAttr::get(Context, Value, v5);
  v8 = mlir::SymbolTable::lookupNearestSymbolFrom(a1, v7);
  if (v8 && ((v9 = *(*(v8 + 48) + 16), v10 = v9 == &mlir::detail::TypeIDResolver<mlir::silc::SilcMeshOp,void>::id, v9 != &mlir::detail::TypeIDResolver<mlir::silc::SilcMeshOp,void>::id) ? (v11 = 0) : (v11 = v8), v15 = v11, v10))
  {
    return mlir::silc::SilcMeshOp::getMesh(&v15);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::silc::getMeshOrLookup(uint64_t a1, uint64_t a2)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    v17[5] = v2;
    v17[6] = v3;
    v16 = a2;
    LeafReference = mlir::SymbolRefAttr::getLeafReference(&v16);
    Value = mlir::StringAttr::getValue(&LeafReference);
    v7 = v6;
    Context = mlir::Attribute::getContext((a1 + 24));
    v9 = mlir::SymbolRefAttr::get(Context, Value, v7);
    v10 = mlir::SymbolTable::lookupNearestSymbolFrom(a1, v9);
    if (v10 && ((v11 = *(*(v10 + 48) + 16), v12 = v11 == &mlir::detail::TypeIDResolver<mlir::silc::SilcMeshOp,void>::id, v11 != &mlir::detail::TypeIDResolver<mlir::silc::SilcMeshOp,void>::id) ? (v13 = 0) : (v13 = v10), v17[0] = v13, v12))
    {
      return mlir::silc::SilcMeshOp::getMesh(v17);
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

void mlir::silc::TensorAxisRefAttr::getMeshAxesVector(mlir::silc::TensorAxisRefAttr *this@<X0>, const mlir::silc::MeshAttr *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  Axes = mlir::silc::TensorAxisRefAttr::getAxes(this);
  if (v6)
  {
    v7 = Axes;
    v8 = (Axes + 8 * v6);
    do
    {
      v20 = *v7;
      Name = mlir::silc::MeshAxisRefAttr::getName(&v20);
      v12 = v11;
      v13 = mlir::silc::MeshAttr::getAxes(a2);
      if (v14)
      {
        v15 = v13;
        v16 = 8 * v14;
        v9 = 0;
        if (v12)
        {
          while (1)
          {
            v21 = *(v15 + 8 * v9);
            v18 = mlir::silc::MeshAxisAttr::getName(&v21);
            if (v19 == v12 && !memcmp(v18, Name, v12))
            {
              break;
            }

            ++v9;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_3;
            }
          }
        }

        else
        {
          while (1)
          {
            v21 = *(v15 + 8 * v9);
            mlir::silc::MeshAxisAttr::getName(&v21);
            if (!v17)
            {
              break;
            }

            ++v9;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_3;
            }
          }
        }
      }

      else
      {
LABEL_3:
        LOWORD(v9) = -1;
      }

      LOWORD(v21) = v9;
      std::vector<mlir::PatternBenefit>::push_back[abi:nn200100](a3, &v21);
      ++v7;
    }

    while (v7 != v8);
  }
}

uint64_t mlir::silc::ShardingAttr::getMesh(mlir::silc::ShardingAttr *this, mlir::Operation *a2)
{
  Mesh = mlir::silc::ShardingAttr::getMesh(this);

  return mlir::silc::getMeshOrLookup(a2, Mesh);
}

uint64_t mlir::silc::ShardingAttr::getMeshVector@<X0>(const mlir::silc::MeshAttr *a1@<X1>, void *a2@<X8>)
{
  result = mlir::silc::MeshAttr::getAxes(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::silc::ShardingAttr::getMeshVector@<X0>(mlir::silc::ShardingAttr *this@<X0>, mlir::Operation *a2@<X1>, void *a3@<X8>)
{
  Mesh = mlir::silc::ShardingAttr::getMesh(this);
  MeshOrLookup = mlir::silc::getMeshOrLookup(a2, Mesh);
  result = mlir::silc::MeshAttr::getAxes(&MeshOrLookup);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *mlir::silc::ShardingAttr::getMeshAxesVector@<X0>(mlir::silc::ShardingAttr *this@<X0>, const mlir::silc::MeshAttr *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = mlir::silc::ShardingAttr::getAxes(this);
  if (v5)
  {
    v6 = 0;
    v27 = &result[v5];
    do
    {
      v28 = result;
      v31 = *result;
      Axes = mlir::silc::TensorAxisRefAttr::getAxes(&v31);
      if (v8)
      {
        v9 = Axes;
        v10 = (Axes + 8 * v8);
        do
        {
          while (1)
          {
            v30 = *v9;
            Name = mlir::silc::MeshAxisRefAttr::getName(&v30);
            v13 = v12;
            v14 = mlir::silc::MeshAttr::getAxes(a2);
            if (v15)
            {
              v16 = v14;
              v17 = 8 * v15;
              v18 = 0;
              if (v13)
              {
                while (1)
                {
                  v32 = *(v16 + 8 * v18);
                  v25 = mlir::silc::MeshAxisAttr::getName(&v32);
                  if (v26 == v13 && !memcmp(v25, Name, v13))
                  {
                    break;
                  }

                  ++v18;
                  v17 -= 8;
                  if (!v17)
                  {
                    goto LABEL_11;
                  }
                }
              }

              else
              {
                while (1)
                {
                  v32 = *(v16 + 8 * v18);
                  mlir::silc::MeshAxisAttr::getName(&v32);
                  if (!v19)
                  {
                    break;
                  }

                  ++v18;
                  v17 -= 8;
                  if (!v17)
                  {
                    goto LABEL_11;
                  }
                }
              }
            }

            else
            {
LABEL_11:
              LOWORD(v18) = -1;
            }

            v20 = a3[2];
            if (v6 >= v20)
            {
              break;
            }

            *v6 = v18;
            v6 += 2;
            a3[1] = v6;
            if (++v9 == v10)
            {
              goto LABEL_3;
            }
          }

          v21 = v6;
          v22 = v6 >> 1;
          if (v6 >> 1 <= -2)
          {
            *a3 = 0;
            std::string::__throw_length_error[abi:nn200100]();
          }

          if (v20 <= v22 + 1)
          {
            v23 = v22 + 1;
          }

          else
          {
            v23 = a3[2];
          }

          if (v20 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v24 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            if ((v24 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            *a3 = 0;
            std::string::__throw_length_error[abi:nn200100]();
          }

          *(2 * v22) = v18;
          v6 = 2 * v22 + 2;
          memcpy(0, 0, v21);
          a3[1] = v6;
          a3[2] = 0;
          a3[1] = v6;
          ++v9;
        }

        while (v9 != v10);
      }

LABEL_3:
      *a3 = 0;
      result = v28 + 1;
    }

    while (v28 + 1 != v27);
  }

  return result;
}

void *mlir::silc::ShardingAttr::getMeshAxesVector@<X0>(mlir::silc::ShardingAttr *this@<X0>, mlir::Operation *a2@<X1>, void *a3@<X8>)
{
  Mesh = mlir::silc::ShardingAttr::getMesh(this);
  MeshOrLookup = mlir::silc::getMeshOrLookup(a2, Mesh);
  return mlir::silc::ShardingAttr::getMeshAxesVector(this, &MeshOrLookup, a3);
}

void mlir::silc::ShardingAttr::getTensorAxesVector(mlir::silc::ShardingAttr *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  Axes = mlir::silc::ShardingAttr::getAxes(this);
  if (v4)
  {
    v5 = Axes;
    v6 = 0;
    v7 = 0;
    v16 = (Axes + 8 * v4);
    do
    {
      v17 = *v5;
      mlir::silc::TensorAxisRefAttr::getAxes(&v17);
      if (v8)
      {
        v9 = 8 * v8;
        do
        {
          while (1)
          {
            v10 = a2[2];
            if (v6 >= v10)
            {
              break;
            }

            *v6 = v7;
            v6 += 2;
            a2[1] = v6;
            v9 -= 8;
            if (!v9)
            {
              goto LABEL_3;
            }
          }

          v11 = v6;
          v12 = v6 >> 1;
          if (v12 <= -2)
          {
            *a2 = 0;
            std::string::__throw_length_error[abi:nn200100]();
          }

          if (v10 <= v12 + 1)
          {
            v13 = v12 + 1;
          }

          else
          {
            v13 = a2[2];
          }

          if (v10 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v14 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            if ((v14 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            *a2 = 0;
            std::string::__throw_length_error[abi:nn200100]();
          }

          v15 = (2 * v12);
          *v15 = v7;
          v6 = (v15 + 1);
          memcpy(0, 0, v11);
          a2[1] = v6;
          a2[2] = 0;
          a2[1] = v6;
          v9 -= 8;
        }

        while (v9);
      }

LABEL_3:
      *a2 = 0;
      ++v7;
      ++v5;
    }

    while (v5 != v16);
  }
}

void *mlir::silc::ShardingAttr::getShardedShape@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v3)
  {
    result = memcpy(*a2, v4, 8 * v3);
    *(a2 + 8) += v3;
  }

  else
  {
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t mlir::silc::ShardingAttr::inflateRank(mlir::silc::ShardingAttr *this, BOOL a2, int a3)
{
  mlir::silc::ShardingAttr::getAxes(this);
  if (a3)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  if (v5 < v6)
  {
    Context = mlir::Attribute::getContext(this);
    mlir::silc::TensorAxisRefAttr::get(Context, 0, 0);
    operator new();
  }

  return *this;
}

BOOL mlir::silc::parseSilcMeshOrRef(mlir::silc *this, mlir::AsmParser *a2, mlir::Attribute *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 408))(this, "mesh", 4);
  Context = mlir::AsmParser::getContext(this);
  if (v5)
  {
    mlir::MLIRContext::getOrLoadDialect(Context, "silc", 4uLL);
    v31[0] = 0;
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAttr>(this, v31, 0))
    {
      v7 = (*(*this + 40))(this);
      v27[0] = "failed to parse MeshAttr";
      v28 = 259;
      (*(*this + 24))(v31, this, v7, v27);
      v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
      if (v31[0])
      {
        mlir::InFlightDiagnostic::report(v31);
      }

      if (v41 == 1)
      {
        if (v40 != &v41)
        {
          free(v40);
        }

        v9 = __p;
        if (__p)
        {
          v10 = v39;
          v11 = __p;
          if (v39 != __p)
          {
            do
            {
              v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
            }

            while (v10 != v9);
            v11 = __p;
          }

          v39 = v9;
          operator delete(v11);
        }

        v12 = v36;
        if (!v36)
        {
          goto LABEL_42;
        }

        v13 = v37;
        v14 = v36;
        if (v37 == v36)
        {
LABEL_41:
          v37 = v12;
          operator delete(v14);
LABEL_42:
          if (v32 != &v35)
          {
            free(v32);
          }

          return v8;
        }

        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            MEMORY[0x259C63150](v15, 0x1000C8077774924);
          }
        }

        while (v13 != v12);
LABEL_40:
        v14 = v36;
        goto LABEL_41;
      }

      return v8;
    }

LABEL_20:
    *a2 = v31[0];
    return 1;
  }

  mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7uLL);
  v31[0] = 0;
  if (mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(this, v31, 0))
  {
    goto LABEL_20;
  }

  v17 = (*(*this + 40))(this);
  v27[0] = "expecting MeshAttr or FlatSymbolRefAttr, got: ";
  v28 = 259;
  (*(*this + 24))(v31, this, v17, v27);
  if (v31[0])
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v29, *a2);
    if (v33 >= v34)
    {
      if (v32 > &v29 || v32 + 24 * v33 <= &v29)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = v32 + 24 * v33;
    v19 = v29;
    *(v18 + 2) = v30;
    *v18 = v19;
    ++v33;
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
  if (v31[0])
  {
    mlir::InFlightDiagnostic::report(v31);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v39;
      v22 = __p;
      if (v39 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v39 = v20;
      operator delete(v22);
    }

    v12 = v36;
    if (!v36)
    {
      goto LABEL_42;
    }

    v23 = v37;
    v14 = v36;
    if (v37 == v36)
    {
      goto LABEL_41;
    }

    do
    {
      v25 = *--v23;
      v24 = v25;
      *v23 = 0;
      if (v25)
      {
        MEMORY[0x259C63150](v24, 0x1000C8077774924);
      }
    }

    while (v23 != v12);
    goto LABEL_40;
  }

  return v8;
}

uint64_t mlir::silc::printSilcMeshOrRef(mlir::AsmPrinter *a1, uint64_t a2)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *a1;
  if (v3)
  {
    v5 = (*(v4 + 16))(a1);
    v6 = v5[4];
    if (v5[3] - v6 > 3uLL)
    {
      *v6 = 1752393069;
      v5[4] += 4;
    }

    else
    {
      llvm::raw_ostream::write(v5, "mesh", 4uLL);
    }

    v11 = v3;
    result = (*(*a1 + 56))(a1, v3);
    if ((result & 1) == 0)
    {
      v9 = (*(*a1 + 16))(a1);
      v10 = (*(*v9 + 80))(v9) + v9[4] - v9[2];
      mlir::silc::MeshAttr::print(&v11, a1);
      result = (*(*v9 + 80))(v9);
      if (v10 == result + v9[4] - v9[2])
      {
        return (*(*a1 + 40))(a1, v11);
      }
    }
  }

  else
  {
    v7 = *(v4 + 40);

    return v7();
  }

  return result;
}

uint64_t mlir::silc::MeshAxisAttr::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    return 1;
  }

  a1(v22, a2);
  if (v22[0])
  {
    LODWORD(v20) = 3;
    *(&v20 + 1) = "axis size must be at least 1, got: ";
    v21 = 35;
    if (v24 >= v25)
    {
      if (v23 > &v20 || v23 + 24 * v24 <= &v20)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v23 + 24 * v24;
    v7 = v20;
    *(v6 + 2) = v21;
    *v6 = v7;
    v8 = ++v24;
    if (v22[0])
    {
      LODWORD(v20) = 5;
      *(&v20 + 1) = 0;
      if (v8 >= v25)
      {
        if (v23 > &v20 || v23 + 24 * v8 <= &v20)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v9 = v23 + 24 * v24;
      v10 = v20;
      *(v9 + 2) = v21;
      *v9 = v10;
      ++v24;
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v30;
      v13 = __p;
      if (v30 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v30 = v11;
      operator delete(v13);
    }

    v14 = v27;
    if (v27)
    {
      v15 = v28;
      v16 = v27;
      if (v28 != v27)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            MEMORY[0x259C63150](v17, 0x1000C8077774924);
          }
        }

        while (v15 != v14);
        v16 = v27;
      }

      v28 = v14;
      operator delete(v16);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }

  return v5;
}

BOOL mlir::silc::isLegalStableHLO(mlir::silc::MeshAttr *a1, int32x4_t **a2, int32x4_t **a3, void *a4, int a5)
{
  mlir::silc::MeshAttr::getAxes(a1);
  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  Axes = mlir::silc::MeshAttr::getAxes(a1);
  if (v21)
  {
    v10 = Axes;
    v11 = 8 * v21;
    v12 = 1;
    do
    {
      v13 = *v10++;
      v54 = v13;
      v12 *= mlir::silc::MeshAxisAttr::getSize(&v54);
      v11 -= 8;
    }

    while (v11);
    v14 = v12;
    v15 = *a2;
    v16 = a2[1];
    if (*a2 == v16)
    {
LABEL_11:
      v22 = 1;
      v24 = *a3;
      v23 = a3[1];
      if (*a3 == v23)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v14 = 1;
    v15 = *a2;
    v16 = a2[1];
    if (*a2 == v16)
    {
      goto LABEL_11;
    }
  }

  v17 = v16 - v15 - 8;
  if (v17 < 0x38)
  {
    v18 = 1;
    v19 = v15;
    do
    {
LABEL_17:
      v37 = v19->i32[0];
      v19 = (v19 + 8);
      v18 *= v37;
    }

    while (v19 != v16);
    goto LABEL_18;
  }

  v27 = (v17 >> 3) + 1;
  v19 = (v15 + 8 * (v27 & 0x3FFFFFFFFFFFFFF8));
  v28 = v15 + 2;
  v29.i64[0] = 0x100000001;
  v29.i64[1] = 0x100000001;
  v30 = v27 & 0x3FFFFFFFFFFFFFF8;
  v31.i64[0] = 0x100000001;
  v31.i64[1] = 0x100000001;
  do
  {
    v33 = v28[-2];
    v32 = v28[-1];
    v35 = *v28;
    v34 = v28[1];
    v28 += 4;
    v29 = vmulq_s32(v29, vuzp1q_s32(v33, v32));
    v31 = vmulq_s32(v31, vuzp1q_s32(v35, v34));
    v30 -= 8;
  }

  while (v30);
  v36 = vmulq_s32(v31, v29);
  *v36.i8 = vmul_s32(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
  v18 = v36.i32[0] * v36.i32[1];
  if (v27 != (v27 & 0x3FFFFFFFFFFFFFF8))
  {
    goto LABEL_17;
  }

LABEL_18:
  v22 = v18;
  v24 = *a3;
  v23 = a3[1];
  if (*a3 == v23)
  {
LABEL_12:
    v25 = 1;
    v26 = 0;
    if (!a5)
    {
      goto LABEL_27;
    }

LABEL_26:
    if (v16 == v15)
    {
      return v26;
    }

    goto LABEL_27;
  }

LABEL_19:
  v38 = v23 - v24 - 8;
  if (v38 < 0x38)
  {
    v39 = 1;
    v40 = v24;
    do
    {
LABEL_24:
      v51 = v40->i32[0];
      v40 = (v40 + 8);
      v39 *= v51;
    }

    while (v40 != v23);
    goto LABEL_25;
  }

  v41 = (v38 >> 3) + 1;
  v40 = (v24 + 8 * (v41 & 0x3FFFFFFFFFFFFFF8));
  v42 = v24 + 2;
  v43.i64[0] = 0x100000001;
  v43.i64[1] = 0x100000001;
  v44 = v41 & 0x3FFFFFFFFFFFFFF8;
  v45.i64[0] = 0x100000001;
  v45.i64[1] = 0x100000001;
  do
  {
    v47 = v42[-2];
    v46 = v42[-1];
    v49 = *v42;
    v48 = v42[1];
    v42 += 4;
    v43 = vmulq_s32(v43, vuzp1q_s32(v47, v46));
    v45 = vmulq_s32(v45, vuzp1q_s32(v49, v48));
    v44 -= 8;
  }

  while (v44);
  v50 = vmulq_s32(v45, v43);
  *v50.i8 = vmul_s32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
  v39 = v50.i32[0] * v50.i32[1];
  if (v41 != (v41 & 0x3FFFFFFFFFFFFFF8))
  {
    goto LABEL_24;
  }

LABEL_25:
  v25 = v39;
  v26 = 0;
  if (a5)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v14 == v22 && v14 == v25)
  {
    return (a4[1] - *a4) >> 2 == 0;
  }

  return v26;
}

uint64_t mlir::silc::fromStableHLO(mlir::silc::MeshAttr *a1, uint64_t a2, int32x4_t **a3, void *a4, uint64_t a5)
{
  v25[6] = *MEMORY[0x277D85DE8];
  if (!mlir::silc::isLegalStableHLO(a1, a2, a3, a4, a5))
  {
    return 0;
  }

  v24 = 0;
  mlir::silc::MeshAttr::getAxes(a1);
  if (v8)
  {
    if (!(v8 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = *a2;
  if (a5 != (*(a2 + 8) - *a2) >> 3)
  {
    v13 = 0;
    v14 = a5 << 63 >> 63;
    do
    {
      if (v10->i64[v13] != 1)
      {
        v22 = a1;
        v17 = 8 * **a4;
        Axes = mlir::silc::MeshAttr::getAxes(v22);
        Context = mlir::Attribute::getContext(v22);
        Name = mlir::silc::MeshAxisAttr::getName((Axes + v17));
        mlir::silc::MeshAxisRefAttr::get(Context, Name, v21);
        operator new();
      }

      v15 = mlir::Attribute::getContext(a1);
      v16 = mlir::silc::TensorAxisRefAttr::get(v15, 0, 0);
      if (v24 >= 6uLL)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v25[v24++] = v16;
      ++v13;
      v10 = *a2;
    }

    while (v13 < v14 + ((*(a2 + 8) - *a2) >> 3));
  }

  v11 = mlir::Attribute::getContext(a1);
  return mlir::silc::ShardingAttr::get(v11, *a1, v25, v24);
}

BOOL mlir::silc::isScalar(uint64_t a1)
{
  v4[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8));
  v4[1] = v1;
  if (!v4[0] || !mlir::ShapedType::hasRank(v4))
  {
    return 0;
  }

  mlir::ShapedType::getShape(v4);
  return v2 == 0;
}

uint64_t mlir::silc::getParentOp(uint64_t a1)
{
  v3 = a1;
  result = mlir::Value::getDefiningOp(&v3);
  if (!result)
  {
    ParentBlock = mlir::Value::getParentBlock(&v3);
    return mlir::Block::getParentOp(ParentBlock);
  }

  return result;
}

uint64_t mlir::silc::getShardableValue(uint64_t result)
{
  if ((~*(result + 8) & 7) == 0)
  {
    v7[3] = v1;
    v7[4] = v2;
    v3 = result;
    v7[0] = result;
    DefiningOp = mlir::Value::getDefiningOp(v7);
    if (!DefiningOp)
    {
      ParentBlock = mlir::Value::getParentBlock(v7);
      DefiningOp = mlir::Block::getParentOp(ParentBlock);
    }

    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id || DefiningOp == 0)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t mlir::silc::getShardingAttr(uint64_t a1)
{
  v1 = a1;
  if ((~*(a1 + 8) & 7) == 0)
  {
    v11[0] = a1;
    DefiningOp = mlir::Value::getDefiningOp(v11);
    if (!DefiningOp)
    {
      ParentBlock = mlir::Value::getParentBlock(v11);
      DefiningOp = mlir::Block::getParentOp(ParentBlock);
    }

    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id || DefiningOp == 0)
    {
      v1 = 0;
    }
  }

  if (!v1)
  {
    return 0;
  }

  v11[0] = v1;
  ParentOp = mlir::Value::getDefiningOp(v11);
  if ((ParentOp || (v7 = mlir::Value::getParentBlock(v11), (ParentOp = mlir::Block::getParentOp(v7)) != 0)) && *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v8 = *(v1 + 24);
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    result = mlir::function_interface_impl::getArgAttrDict(ParentOp, InterfaceFor, v8);
    v11[0] = result;
    if (result)
    {
      result = mlir::DictionaryAttr::get(v11, "silc.sharding", 0xDuLL);
      if (result)
      {
        if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
        {
          return 0;
        }
      }
    }
  }

  else if (mlir::OpInterface<mlir::silc::CollectiveCommunicationInterface,mlir::silc::detail::CollectiveCommunicationInterfaceInterfaceTraits>::getInterfaceFor(ParentOp) && (v10 = mlir::OpInterface<mlir::silc::CollectiveCommunicationInterface,mlir::silc::detail::CollectiveCommunicationInterfaceInterfaceTraits>::getInterfaceFor(ParentOp), ParentOp))
  {
    v11[0] = ParentOp;
    v11[1] = v10;
    return mlir::silc::CollectiveCommunicationInterface::getResultSharding(v11);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t mlir::silc::getMeshAttr(uint64_t a1)
{
  result = mlir::silc::getShardingAttr(a1);
  v2 = result;
  if (result)
  {
    return mlir::silc::ShardingAttr::getMesh(&v2);
  }

  return result;
}

void mlir::silc::setFuncOperandSharding(uint64_t a1, unsigned int a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a1 + 24));
  v10 = 261;
  v9[0] = "silc.sharding";
  v9[1] = 13;
  v8 = mlir::StringAttr::get(Context, v9, v7);
  mlir::function_interface_impl::setArgAttr<mlir::func::FuncOp>(a1, a2, v8, a3);
}

void mlir::silc::setFuncResultSharding(uint64_t a1, unsigned int a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a1 + 24));
  v10 = 261;
  v9[0] = "silc.sharding";
  v9[1] = 13;
  v8 = mlir::StringAttr::get(Context, v9, v7);
  mlir::function_interface_impl::setResultAttr<mlir::func::FuncOp>(a1, a2, v8, a3);
}

void mlir::silc::cloneInputFunctionAttrs(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  if (mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a3))
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
    if (a3)
    {
      v7 = *(a2 + 8);
      if (v7)
      {
        v8 = 0;
        do
        {
          v9 = *(*a2 + 8 * v8);
          if (v9)
          {
            v10 = (*(v9 + 8) & 7) == 7;
          }

          else
          {
            v10 = 0;
          }

          if (v10)
          {
            ArgAttrDict = mlir::function_interface_impl::getArgAttrDict(*a1, a1[1], *(v9 + 24));
            if (ArgAttrDict)
            {
              mlir::silc::filterSilcAttrs(&v12, &ArgAttrDict);
              mlir::function_interface_impl::setArgAttrs(a3, InterfaceFor, v8, v12, v13);
              if (v12 != v14)
              {
                free(v12);
              }
            }

            v7 = *(a2 + 8);
          }

          ++v8;
        }

        while (v7 > v8);
      }
    }
  }
}

uint64_t mlir::silc::filterSilcAttrs(mlir::silc *this, const mlir::DictionaryAttr *a2)
{
  *this = this + 16;
  *(this + 1) = 0x200000000;
  v4 = mlir::DictionaryAttr::begin(a2);
  result = mlir::DictionaryAttr::end(a2);
  if (v4 != result)
  {
    v6 = result;
    do
    {
      result = mlir::NamedAttribute::getNameDialect(v4);
      if (result && *(result + 16) == 4 && **(result + 8) == 1668049267)
      {
        v7 = *(this + 2);
        if (v7 >= *(this + 3))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*this + 16 * v7) = *v4;
        ++*(this + 2);
      }

      v4 = (v4 + 16);
    }

    while (v4 != v6);
  }

  return result;
}

void mlir::silc::cloneOutputFunctionAttrs(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  if (mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a3))
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
    if (a3)
    {
      v7 = *(a2 + 8);
      if (v7)
      {
        v8 = 0;
        do
        {
          v9 = *(*a2 + 8 * v8);
          if (v9)
          {
            v10 = (*(v9 + 8) & 7) == 7;
          }

          else
          {
            v10 = 0;
          }

          if (v10)
          {
            ArgAttrDict = mlir::function_interface_impl::getArgAttrDict(*a1, a1[1], *(v9 + 24));
            if (ArgAttrDict)
            {
              mlir::silc::filterSilcAttrs(&v12, &ArgAttrDict);
              mlir::function_interface_impl::setResultAttrs(a3, InterfaceFor, v8, v12, v13);
              if (v12 != v14)
              {
                free(v12);
              }
            }

            v7 = *(a2 + 8);
          }

          ++v8;
        }

        while (v7 > v8);
      }
    }
  }
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc8MeshAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc8MeshAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::silc::MeshAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::OpInterface<mlir::silc::CollectiveCommunicationInterface,mlir::silc::detail::CollectiveCommunicationInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v24 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v24);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v23 = ReferencedDialect;
      mlir::OpInterface<mlir::silc::CollectiveCommunicationInterface,mlir::silc::detail::CollectiveCommunicationInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v23;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::silc::CollectiveCommunicationInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = mlir::detail::TypeIDResolver<mlir::silc::CollectiveCommunicationInterface,void>::resolveTypeID(void)::id;
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v20 = v3;
    v21 = a1;
    mlir::OpInterface<mlir::silc::CollectiveCommunicationInterface,mlir::silc::detail::CollectiveCommunicationInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v20;
    a1 = v21;
    v4 = mlir::detail::TypeIDResolver<mlir::silc::CollectiveCommunicationInterface,void>::resolveTypeID(void)::id;
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v14 = v7[1];
    if (v14)
    {
      return v14;
    }
  }

LABEL_23:
  v16 = *(v3 + 24);
  v17 = *(a1 + 48);
  {
    v22 = v17;
    mlir::OpInterface<mlir::silc::CollectiveCommunicationInterface,mlir::silc::detail::CollectiveCommunicationInterfaceInterfaceTraits>::getInterfaceFor();
    v17 = v22;
  }

  v18 = mlir::detail::TypeIDResolver<mlir::silc::CollectiveCommunicationInterface,void>::resolveTypeID(void)::id;
  v19 = *(*v16 + 104);

  return v19(v16, v18, v17);
}

const char *llvm::getTypeName<mlir::silc::CollectiveCommunicationInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::CollectiveCommunicationInterface]";
  v6 = 94;
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

void mlir::function_interface_impl::setArgAttr<mlir::func::FuncOp>(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v15[9] = *MEMORY[0x277D85DE8];
  v13 = a4;
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  ArgAttrDict = mlir::function_interface_impl::getArgAttrDict(a1, InterfaceFor, a2);
  mlir::NamedAttrList::NamedAttrList(v14, ArgAttrDict);
  if (mlir::NamedAttrList::set(v14, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext(&v13);
    Dictionary = mlir::NamedAttrList::getDictionary(v14, Context);
    if (a1)
    {
      v12 = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
    }

    else
    {
      v12 = 0;
    }

    mlir::function_interface_impl::setArgAttrs(a1, v12, a2, Dictionary);
  }

  if (v14[0] != v15)
  {
    free(v14[0]);
  }
}

void mlir::function_interface_impl::setResultAttr<mlir::func::FuncOp>(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v15[9] = *MEMORY[0x277D85DE8];
  v13 = a4;
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  ResultAttrDict = mlir::function_interface_impl::getResultAttrDict(a1, InterfaceFor, a2);
  mlir::NamedAttrList::NamedAttrList(v14, ResultAttrDict);
  if (mlir::NamedAttrList::set(v14, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext(&v13);
    Dictionary = mlir::NamedAttrList::getDictionary(v14, Context);
    if (a1)
    {
      v12 = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
    }

    else
    {
      v12 = 0;
    }

    mlir::function_interface_impl::setResultAttrs(a1, v12, a2, Dictionary);
  }

  if (v14[0] != v15)
  {
    free(v14[0]);
  }
}

void sub_25680C54C()
{

  JUMPOUT(0x259C63180);
}

uint64_t mlir::silc::MeshAxisAttr::get(mlir::MLIRContext *a1, void *a2, uint64_t a3, __int16 a4)
{
  v19 = *MEMORY[0x277D85DE8];
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id;
  v13[1] = a1;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail19MeshAxisAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12MeshAxisAttrEJNS_9StringRefEtEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v17[1] = v13;
  v15[0] = a2;
  v15[1] = a3;
  v16 = a4;
  v9 = llvm::hash_value(a2, a3);
  *&v18 = v9;
  WORD4(v18) = a4;
  v10 = __ROR8__(*(&v18 + 2) + 10, 10);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v10)));
  v14 = v15;
  *&v18 = v15;
  *(&v18 + 1) = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id, (-348639895 * ((v11 >> 47) ^ v11)) ^ (v9 >> 16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef,unsigned short>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef,unsigned short &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef,unsigned short>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef,unsigned short &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v18);
}

uint64_t mlir::detail::StorageUserBase<mlir::silc::MeshAxisAttr,mlir::Attribute,mlir::silc::detail::MeshAxisAttrStorage,mlir::detail::AttributeUniquer>::getChecked<llvm::StringRef,unsigned short>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, void *a4, uint64_t a5, int a6)
{
  v6 = a6;
  v21 = *MEMORY[0x277D85DE8];
  if ((mlir::silc::MeshAxisAttr::verify(a1, a2, a4, a5, a6) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id;
  v15[1] = a3;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail19MeshAxisAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12MeshAxisAttrEJRNS_9StringRefERtEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v19[1] = v15;
  v17[0] = a4;
  v17[1] = a5;
  v18 = v6;
  v11 = llvm::hash_value(a4, a5);
  *&v20 = v11;
  WORD4(v20) = v6;
  v12 = __ROR8__(*(&v20 + 2) + 10, 10);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v12)));
  v16 = v17;
  *&v20 = v17;
  *(&v20 + 1) = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id, (-348639895 * ((v13 >> 47) ^ v13)) ^ (v11 >> 16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef &,unsigned short &>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef &,unsigned short &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef &,unsigned short &>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef &,unsigned short &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v20);
}

uint64_t mlir::silc::MeshAxisAttr::parse(mlir::AsmParser *a1)
{
  v53[2] = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  v2 = (*(*a1 + 40))(a1);
  LOBYTE(v31) = 0;
  v34 = 0;
  __p = 0;
  v29 = 0uLL;
  if ((mlir::AsmParser::parseString(a1, &__p) & 1) == 0)
  {
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }

    v8 = (*(*a1 + 40))(a1);
    v30 = 259;
    (*(*a1 + 24))(v44, a1, v8, &__p);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 != 1)
    {
      goto LABEL_50;
    }

    if (v51 != &v52)
    {
      free(v51);
    }

    v9 = v49;
    if (v49)
    {
      v10 = v50;
      v11 = v49;
      if (v50 != v49)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = v49;
      }

      v50 = v9;
      operator delete(v11);
    }

    v12 = v47;
    if (v47)
    {
      v13 = v48;
      v14 = v47;
      if (v48 != v47)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            MEMORY[0x259C63150](v15, 0x1000C8077774924);
          }
        }

        while (v13 != v12);
        v14 = v47;
      }

      v48 = v12;
      operator delete(v14);
    }

    v26 = v45;
    if (v45 == &v46)
    {
LABEL_50:
      v7 = 0;
      if (v34 != 1)
      {
        return v7;
      }

      goto LABEL_51;
    }

LABEL_49:
    free(v26);
    goto LABEL_50;
  }

  *(v53 + 7) = *(&v29 + 7);
  v53[0] = v29;
  v31 = __p;
  *v32 = v29;
  *&v32[7] = *(v53 + 7);
  v33 = HIBYTE(v29);
  v34 = 1;
  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_50;
  }

  LOWORD(__p) = 0;
  if ((mlir::AsmParser::parseInteger<unsigned short>(a1, &__p) & 1) == 0)
  {
    v17 = (*(*a1 + 40))(a1);
    v30 = 259;
    (*(*a1 + 24))(v35, a1, v17, &__p);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      goto LABEL_50;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v18 = v40;
    if (v40)
    {
      v19 = v41;
      v20 = v40;
      if (v41 != v40)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = v40;
      }

      v41 = v18;
      operator delete(v20);
    }

    v21 = v38;
    if (v38)
    {
      v22 = v39;
      v23 = v38;
      if (v39 != v38)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v38;
      }

      v39 = v21;
      operator delete(v23);
    }

    v26 = v36;
    if (v36 == &v37)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v3 = __p;
  Context = mlir::AsmParser::getContext(a1);
  if (v33 >= 0)
  {
    v5 = &v31;
  }

  else
  {
    v5 = v31;
  }

  if (v33 >= 0)
  {
    v6 = v33;
  }

  else
  {
    v6 = *v32;
  }

  v53[0] = v2;
  __p = a1;
  *&v29 = v53;
  v7 = mlir::detail::StorageUserBase<mlir::silc::MeshAxisAttr,mlir::Attribute,mlir::silc::detail::MeshAxisAttrStorage,mlir::detail::AttributeUniquer>::getChecked<llvm::StringRef,unsigned short>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4silc12MeshAxisAttrEJPNS1_11MLIRContextENS_9StringRefEtEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, &__p, Context, v5, v6, v3);
  if (v34 == 1)
  {
LABEL_51:
    if (v33 < 0)
    {
      operator delete(v31);
    }
  }

  return v7;
}

llvm::raw_ostream *mlir::silc::MeshAxisAttr::print(mlir::silc::MeshAxisAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  (*(*a2 + 80))(a2, *(*this + 8), *(*this + 16));
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "=", 1uLL);
  }

  else
  {
    *v5 = 61;
    ++v4[4];
  }

  v6 = *(*this + 24);
  v7 = (*(*a2 + 16))(a2);

  return llvm::raw_ostream::operator<<(v7, v6);
}

uint64_t mlir::silc::MeshAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id;
  v16[1] = a1;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail15MeshAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_8MeshAttrEJNS_8ArrayRefINS2_12MeshAxisAttrEEENSD_IxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v20[1] = v16;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v11 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a2, &a2[2 * a3]);
  v12 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a4, &a4[a5]);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v13)));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v17);
}

uint64_t mlir::silc::MeshAttr::parse(mlir::AsmParser *a1)
{
  v67 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v63) = 0;
  v66 = 0;
  LOBYTE(v59) = 0;
  v62 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_63;
  }

  mlir::FieldParser<llvm::SmallVector<mlir::silc::MeshAxisAttr,6u>,llvm::SmallVector<mlir::silc::MeshAxisAttr,6u>>::parse(a1, &__src);
  if (v66 != v58)
  {
    if (v66)
    {
      if (v63 != v65)
      {
        free(v63);
      }

      v66 = 0;
      if (v58 == 1)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v63 = v65;
    v64 = 0x600000000;
    v3 = v55;
    if (v55)
    {
      if (__src == v56)
      {
        if (v55 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v63, __src, 8 * v55);
        LODWORD(v64) = v3;
      }

      else
      {
        v63 = __src;
        v64 = v55;
        __src = v56;
        HIDWORD(v55) = 0;
      }

      LODWORD(v55) = 0;
    }

    v66 = 1;
LABEL_25:
    if (v58 != 1)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (!v66)
  {
    goto LABEL_25;
  }

  v2 = __src;
  if (__src != v56)
  {
    if (v63 != v65)
    {
      free(v63);
      v2 = __src;
    }

    v63 = v2;
    v64 = v55;
    __src = v56;
    v55 = 0;
    if (v58 != 1)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (__src != v56)
    {
      free(__src);
    }

    goto LABEL_28;
  }

  v4 = v55;
  v5 = v64;
  if (v64 >= v55)
  {
    if (v55)
    {
      memmove(v63, __src, 8 * v55);
    }
  }

  else
  {
    if (HIDWORD(v64) < v55)
    {
      LODWORD(v64) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v64)
    {
      memmove(v63, __src, 8 * v64);
    }

    else
    {
      v5 = 0;
    }

    if (v55 != v5)
    {
      memcpy(&v63[8 * v5], __src + 8 * v5, 8 * (v55 - v5));
    }
  }

  LODWORD(v64) = v4;
  LODWORD(v55) = 0;
  if (v58 == 1)
  {
    goto LABEL_26;
  }

LABEL_28:
  v6 = *a1;
  if ((v66 & 1) == 0)
  {
    v10 = (*(v6 + 40))(a1);
    v57 = 259;
    (*(*a1 + 24))(v45, a1, v10, &__src);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v51;
        v13 = __p;
        if (v51 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v51 = v11;
        operator delete(v13);
      }

      v14 = v48;
      if (v48)
      {
        v15 = v49;
        v16 = v48;
        if (v49 != v48)
        {
          do
          {
            v18 = *--v15;
            v17 = v18;
            *v15 = 0;
            if (v18)
            {
              MEMORY[0x259C63150](v17, 0x1000C8077774924);
            }
          }

          while (v15 != v14);
          v16 = v48;
        }

        v49 = v14;
        operator delete(v16);
      }

      if (v46 != &v47)
      {
        free(v46);
      }
    }

    goto LABEL_63;
  }

  if ((*(v6 + 128))(a1))
  {
    v57 = 257;
    if (((*(*a1 + 400))(a1, "device_ids", 10, &__src) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
    {
      goto LABEL_63;
    }

    mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(a1, &__src);
    llvm::FailureOr<llvm::SmallVector<long long,6u>>::operator=(&v59, &__src);
    if (v58 == 1 && __src != v56)
    {
      free(__src);
    }

    v7 = *a1;
    if ((v62 & 1) == 0)
    {
      v29 = (*(v7 + 40))(a1);
      v57 = 259;
      (*(*a1 + 24))(v44, a1, v29, &__src);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v44);
      goto LABEL_63;
    }

    if (((*(v7 + 328))(a1) & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_63:
    ParametricStorageTypeImpl = 0;
    goto LABEL_64;
  }

  Context = mlir::AsmParser::getContext(a1);
  v41 = v43;
  v42 = 0x600000000;
  __src = v56;
  v55 = 0x600000000;
  if (v66 == 1 && (v9 = v64, v64))
  {
    if (v64 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v56, v63, 8 * v64);
    LODWORD(v55) = v9;
    v21 = __src;
  }

  else
  {
    v9 = 0;
    v21 = v56;
  }

  v35 = v37;
  v36 = 0x600000000;
  v38 = v40;
  v39 = 0x600000000;
  if (v62 == 1 && (v22 = v60) != 0)
  {
    if (v60 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v40, v59, 8 * v60);
    LODWORD(v39) = v22;
    v23 = v38;
  }

  else
  {
    v22 = 0;
    v23 = v40;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v30[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id;
  v30[1] = Context;
  v34[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail15MeshAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_8MeshAttrEJNS_8ArrayRefINS2_12MeshAxisAttrEEENSD_IxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v34[1] = v30;
  v33[0] = v21;
  v33[1] = v9;
  v33[2] = v23;
  v33[3] = v22;
  v25 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(v21, &v21[2 * v9]);
  v26 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v23, &v23[v22]);
  v27 = __ROR8__(v26 + 16, 16);
  v28 = 0x9DDFEA08EB382D69 * (v27 ^ ((0x9DDFEA08EB382D69 * (v25 ^ 0xFF51AFD7ED558CCDLL ^ v27)) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ 0xFF51AFD7ED558CCDLL ^ v27)));
  v31[0] = v33;
  v31[1] = v34;
  v32 = v33;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id, (-348639895 * ((v28 >> 47) ^ v28)) ^ v26, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v32, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v31);
  if (v38 != v40)
  {
    free(v38);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (__src != v56)
  {
    free(__src);
  }

  if (v41 != v43)
  {
    free(v41);
  }

LABEL_64:
  if (v62 == 1 && v59 != &v61)
  {
    free(v59);
  }

  if (v66 == 1 && v63 != v65)
  {
    free(v63);
  }

  return ParametricStorageTypeImpl;
}

void mlir::FieldParser<llvm::SmallVector<mlir::silc::MeshAxisAttr,6u>,llvm::SmallVector<mlir::silc::MeshAxisAttr,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  __src = v9;
  v8 = 0x600000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = v8;
  v4 = 1;
  if (!v8 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v9)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v9)
  {
    if (v8 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(*a2, __src, 8 * v8);
    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v8);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v9;
    HIDWORD(v8) = 0;
  }

  LODWORD(v8) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v9)
  {
LABEL_8:
    free(v6);
  }
}

void mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  __src = v9;
  v8 = 0x600000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = v8;
  v4 = 1;
  if (!v8 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v9)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v9)
  {
    if (v8 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(*a2, __src, 8 * v8);
    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v8);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v9;
    HIDWORD(v8) = 0;
  }

  LODWORD(v8) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v9)
  {
LABEL_8:
    free(v6);
  }
}

uint64_t llvm::FailureOr<llvm::SmallVector<long long,6u>>::operator=(uint64_t result, uint64_t a2)
{
  if (*(result + 64) == *(a2 + 64))
  {
    if (*(result + 64))
    {
      v2 = result;
      llvm::SmallVectorImpl<long long>::operator=(result, a2);
      return v2;
    }
  }

  else if (*(result + 64))
  {
    if (*result != result + 16)
    {
      v3 = result;
      free(*result);
      result = v3;
    }

    *(result + 64) = 0;
  }

  else
  {
    *result = result + 16;
    *(result + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      v4 = result;
      llvm::SmallVectorImpl<long long>::operator=(result, a2);
      result = v4;
    }

    *(result + 64) = 1;
  }

  return result;
}

void *mlir::silc::MeshAttr::print(mlir::silc::MeshAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *this;
  v7 = *(*this + 16);
  if (v7)
  {
LABEL_3:
    v8 = *(v6 + 8);
    v9 = (*(*a2 + 16))(a2);
    v26[0] = ", ";
    v26[1] = 2;
    llvm::interleave<mlir::silc::MeshAxisAttr const*,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisAttr,(void *)0>(llvm::ArrayRef<mlir::silc::MeshAxisAttr>)::{lambda(mlir::silc::MeshAxisAttr)#1},void llvm::interleave<llvm::ArrayRef<mlir::silc::MeshAxisAttr>,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisAttr,(void *)0>(llvm::ArrayRef<mlir::silc::MeshAxisAttr>)::{lambda(mlir::silc::MeshAxisAttr)#1},llvm::raw_ostream,mlir::silc::MeshAxisAttr const>(mlir::silc::MeshAxisAttr const&,llvm::raw_ostream &,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisAttr,(void *)0>(llvm::ArrayRef<mlir::silc::MeshAxisAttr>)::{lambda(mlir::silc::MeshAxisAttr)#1},llvm::StringRef const&)::{lambda(void)#1},void>(v8, (v8 + 8 * v7), a2, v9, v26);
    v6 = *this;
  }

LABEL_4:
  if (*(v6 + 32))
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = v10[4];
    if (v10[3] == v11)
    {
      llvm::raw_ostream::write(v10, ",", 1uLL);
    }

    else
    {
      *v11 = 44;
      ++v10[4];
    }

    v12 = (*(*a2 + 16))(a2);
    v13 = *(v12 + 4);
    if (v13 >= *(v12 + 3))
    {
      llvm::raw_ostream::write(v12, 32);
    }

    else
    {
      *(v12 + 4) = v13 + 1;
      *v13 = 32;
    }

    v14 = (*(*a2 + 16))(a2);
    v15 = v14[4];
    if ((v14[3] - v15) > 9)
    {
      *(v15 + 8) = 29540;
      *v15 = *"device_ids";
      v14[4] += 10;
    }

    else
    {
      llvm::raw_ostream::write(v14, "device_ids", 0xAuLL);
    }

    v16 = (*(*a2 + 16))(a2);
    v17 = v16[4];
    if (v16[3] == v17)
    {
      llvm::raw_ostream::write(v16, "=", 1uLL);
    }

    else
    {
      *v17 = 61;
      ++v16[4];
    }

    v18 = (*(*a2 + 16))(a2);
    v19 = v18[4];
    if (v18[3] == v19)
    {
      llvm::raw_ostream::write(v18, "[", 1uLL);
      v20 = *this;
      v21 = *(*this + 32);
      if (!v21)
      {
LABEL_22:
        v22 = (*(*a2 + 16))(a2);
        v23 = v22[4];
        if (v22[3] == v23)
        {
          llvm::raw_ostream::write(v22, "]", 1uLL);
        }

        else
        {
          *v23 = 93;
          ++v22[4];
        }

        goto LABEL_27;
      }
    }

    else
    {
      *v19 = 91;
      ++v18[4];
      v20 = *this;
      v21 = *(*this + 32);
      if (!v21)
      {
        goto LABEL_22;
      }
    }

    mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<long long>,(void *)0>(a2, *(v20 + 24), v21);
    goto LABEL_22;
  }

LABEL_27:
  result = (*(*a2 + 16))(a2);
  v25 = result[4];
  if (result[3] == v25)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v25 = 62;
  ++result[4];
  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::printStrippedAttrOrType<llvm::ArrayRef<long long>,(void *)0>(llvm::raw_ostream *result, unint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = (*(*result + 16))(result);
    result = llvm::raw_ostream::operator<<(v6, *a2);
    if (a3 != 1)
    {
      v7 = 8 * a3;
      v8 = a2 + 1;
      v9 = v7 - 8;
      do
      {
        v12 = (*(*v5 + 16))(v5);
        v13 = v12[4];
        if (v12[3] - v13 <= 1uLL)
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        else
        {
          *v13 = 8236;
          v12[4] += 2;
        }

        v10 = (*(*v5 + 16))(v5);
        v11 = *v8++;
        result = llvm::raw_ostream::operator<<(v10, v11);
        v9 -= 8;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t mlir::silc::MeshAxisRefAttr::get(mlir::MLIRContext *a1, void *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail22MeshAxisRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15MeshAxisRefAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hash_value(a2, a3);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::silc::MeshAxisRefAttr::parse(mlir::AsmParser *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v24) = 0;
  v27 = 0;
  __p = 0;
  v22 = 0uLL;
  if (mlir::AsmParser::parseString(a1, &__p))
  {
    *(&v40 + 7) = *(&v22 + 7);
    *&v40 = v22;
    v24 = __p;
    *v25 = v22;
    *&v25[7] = *(&v40 + 7);
    v26 = HIBYTE(v22);
    v27 = 1;
    Context = mlir::AsmParser::getContext(a1);
    v3 = Context;
    if (v26 >= 0)
    {
      v4 = &v24;
    }

    else
    {
      v4 = v24;
    }

    if (v26 >= 0)
    {
      v5 = v26;
    }

    else
    {
      v5 = *v25;
    }

    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v28[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id;
    v28[1] = v3;
    __p = _ZN4llvm12function_refIFvPN4mlir4silc6detail22MeshAxisRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15MeshAxisRefAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    *&v22 = v28;
    *&v40 = v4;
    *(&v40 + 1) = v5;
    v7 = llvm::hash_value(v4, v5);
    v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
    v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
    v29[1] = &__p;
    v30 = &v40;
    v29[0] = &v40;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
    if (v27 != 1)
    {
      return result;
    }

LABEL_33:
    if (v26 < 0)
    {
      v20 = result;
      operator delete(v24);
      return v20;
    }

    return result;
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  v11 = (*(*a1 + 40))(a1);
  v23 = 259;
  (*(*a1 + 24))(v31, a1, v11, &__p);
  if (v31[0])
  {
    mlir::InFlightDiagnostic::report(v31);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v12 = v36;
    if (v36)
    {
      v13 = v37;
      v14 = v36;
      if (v37 != v36)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = v36;
      }

      v37 = v12;
      operator delete(v14);
    }

    v15 = v34;
    if (v34)
    {
      v16 = v35;
      v17 = v34;
      if (v35 != v34)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v34;
      }

      v35 = v15;
      operator delete(v17);
    }

    if (v32 != &v33)
    {
      free(v32);
    }
  }

  result = 0;
  if (v27 == 1)
  {
    goto LABEL_33;
  }

  return result;
}

uint64_t mlir::silc::MeshAxisRefAttr::print(mlir::silc::MeshAxisRefAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = *(*this + 8);
  v5 = *(*this + 16);
  v6 = *(*a2 + 80);

  return v6(a2, v4, v5);
}

uint64_t mlir::silc::TensorAxisRefAttr::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id;
  v11[1] = a1;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24TensorAxisRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17TensorAxisRefAttrEJNS_8ArrayRefINS2_15MeshAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v15[1] = v11;
  v14[0] = a2;
  v14[1] = a3;
  v7 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a2, &a2[2 * a3]);
  v8 = HIDWORD(v7) ^ 0xFF51AFD7ED558CCDLL;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v7 + 8) ^ v8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t mlir::silc::TensorAxisRefAttr::parse(mlir::AsmParser *a1)
{
  v51 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v47) = 0;
  v50 = 0;
  if (((*(*a1 + 72))(a1) & 1) == 0)
  {
    goto LABEL_64;
  }

  if (((*(*a1 + 96))(a1) & 1) == 0)
  {
    mlir::FieldParser<llvm::SmallVector<mlir::silc::MeshAxisRefAttr,6u>,llvm::SmallVector<mlir::silc::MeshAxisRefAttr,6u>>::parse(a1, &v43);
    if (v50 == v46)
    {
      if (v50)
      {
        v4 = v43;
        if (v43 != v45)
        {
          if (v47 != v49)
          {
            free(v47);
            v4 = v43;
          }

          v47 = v4;
          v48 = v44;
          v43 = v45;
          v44 = 0;
          if (v46 != 1)
          {
            goto LABEL_41;
          }

LABEL_39:
          if (v43 != v45)
          {
            free(v43);
          }

          goto LABEL_41;
        }

        v12 = v44;
        v13 = v48;
        if (v48 >= v44)
        {
          if (v44)
          {
            memmove(v47, v43, 8 * v44);
          }
        }

        else
        {
          if (HIDWORD(v48) < v44)
          {
            LODWORD(v48) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v48)
          {
            memmove(v47, v43, 8 * v48);
          }

          else
          {
            v13 = 0;
          }

          v25 = v44 - v13;
          if (v25)
          {
            memcpy(&v47[8 * v13], &v43[8 * v13], 8 * v25);
          }
        }

        LODWORD(v48) = v12;
        LODWORD(v44) = 0;
        if (v46 == 1)
        {
          goto LABEL_39;
        }

LABEL_41:
        v14 = *a1;
        if (v50)
        {
          if ((*(v14 + 88))(a1))
          {
            goto LABEL_3;
          }
        }

        else
        {
          v15 = (*(v14 + 40))(a1);
          v45[8] = 259;
          (*(*a1 + 24))(v34, a1, v15, &v43);
          if (v34[0])
          {
            mlir::InFlightDiagnostic::report(v34);
          }

          if (v42 == 1)
          {
            if (v41 != &v42)
            {
              free(v41);
            }

            v16 = __p;
            if (__p)
            {
              v17 = v40;
              v18 = __p;
              if (v40 != __p)
              {
                do
                {
                  v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
                }

                while (v17 != v16);
                v18 = __p;
              }

              v40 = v16;
              operator delete(v18);
            }

            v19 = v37;
            if (v37)
            {
              v20 = v38;
              v21 = v37;
              if (v38 != v37)
              {
                do
                {
                  v23 = *--v20;
                  v22 = v23;
                  *v20 = 0;
                  if (v23)
                  {
                    MEMORY[0x259C63150](v22, 0x1000C8077774924);
                  }
                }

                while (v20 != v19);
                v21 = v37;
              }

              v38 = v19;
              operator delete(v21);
            }

            if (v35 != &v36)
            {
              free(v35);
            }
          }
        }

LABEL_64:
        ParametricStorageTypeImpl = 0;
        if (v50 != 1)
        {
          return ParametricStorageTypeImpl;
        }

        goto LABEL_65;
      }
    }

    else
    {
      if (v50)
      {
        if (v47 != v49)
        {
          free(v47);
        }

        v50 = 0;
        if (v46 == 1)
        {
          goto LABEL_39;
        }

        goto LABEL_41;
      }

      v47 = v49;
      v48 = 0x600000000;
      v6 = v44;
      if (v44)
      {
        if (v43 == v45)
        {
          if (v44 >= 7)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(v47, v43, 8 * v44);
          LODWORD(v48) = v6;
        }

        else
        {
          v47 = v43;
          v48 = v44;
          v43 = v45;
          HIDWORD(v44) = 0;
        }

        LODWORD(v44) = 0;
      }

      v50 = 1;
    }

    if (v46 != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

LABEL_3:
  Context = mlir::AsmParser::getContext(a1);
  v31 = v33;
  v32 = 0x600000000;
  v43 = v45;
  v44 = 0x600000000;
  if (v50 == 1 && (v3 = v48, v48))
  {
    if (v48 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v45, v47, 8 * v48);
    LODWORD(v44) = v3;
    v5 = v43;
  }

  else
  {
    v3 = 0;
    v5 = v45;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id;
  v26[1] = Context;
  v30[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24TensorAxisRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17TensorAxisRefAttrEJNS_8ArrayRefINS2_15MeshAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v30[1] = v26;
  v29[0] = v5;
  v29[1] = v3;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(v5, &v5[8 * v3]);
  v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
  v27[0] = v29;
  v27[1] = v30;
  v28 = v29;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
  if (v43 != v45)
  {
    free(v43);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  if (v50 == 1)
  {
LABEL_65:
    if (v47 != v49)
    {
      free(v47);
    }
  }

  return ParametricStorageTypeImpl;
}

void mlir::FieldParser<llvm::SmallVector<mlir::silc::MeshAxisRefAttr,6u>,llvm::SmallVector<mlir::silc::MeshAxisRefAttr,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  __src = v9;
  v8 = 0x600000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = v8;
  v4 = 1;
  if (!v8 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v9)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v9)
  {
    if (v8 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(*a2, __src, 8 * v8);
    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v8);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v9;
    HIDWORD(v8) = 0;
  }

  LODWORD(v8) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v9)
  {
LABEL_8:
    free(v6);
  }
}

void *mlir::silc::TensorAxisRefAttr::print(mlir::silc::TensorAxisRefAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "{", 1uLL);
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v5 = 123;
    ++v4[4];
    v6 = *this;
    v7 = *(*this + 16);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  v8 = *(v6 + 8);
  v9 = (*(*a2 + 16))(a2);
  mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisRefAttr,(void *)0>(a2, *v8);
  if (v7 != 1)
  {
    v10 = v8 + 1;
    v11 = 8 * v7 - 8;
    do
    {
      while (1)
      {
        v13 = v9[4];
        if (v9[3] - v13 > 1uLL)
        {
          break;
        }

        llvm::raw_ostream::write(v9, ", ", 2uLL);
        v12 = *v10++;
        mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisRefAttr,(void *)0>(a2, v12);
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      *v13 = 8236;
      v9[4] += 2;
      v14 = *v10++;
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisRefAttr,(void *)0>(a2, v14);
      v11 -= 8;
    }

    while (v11);
  }

LABEL_10:
  result = (*(*a2 + 16))(a2);
  v16 = result[4];
  if (result[3] == v16)
  {

    return llvm::raw_ostream::write(result, "}", 1uLL);
  }

  else
  {
    *v16 = 125;
    ++result[4];
  }

  return result;
}

uint64_t mlir::silc::ShardingAttr::get(mlir::MLIRContext *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id;
  v13[1] = a1;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail19ShardingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12ShardingAttrEJNS1_9AttributeENS_8ArrayRefINS2_17TensorAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v17[1] = v13;
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v9 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a3, &a3[2 * a4]);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ (a2 >> 4) ^ (a2 >> 9) ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ (a2 >> 4) ^ (a2 >> 9) ^ 0xFF51AFD7ED558CCDLL)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id, (-348639895 * ((v11 >> 47) ^ v11)) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t mlir::detail::StorageUserBase<mlir::silc::ShardingAttr,mlir::Attribute,mlir::silc::detail::ShardingAttrStorage,mlir::detail::AttributeUniquer>::getChecked<mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  if ((mlir::silc::ShardingAttr::verifyInvariantsImpl(a1, a2, a4) & 1) == 0)
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id;
  v15[1] = a3;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail19ShardingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12ShardingAttrEJRNS1_9AttributeERNS_8ArrayRefINS2_17TensorAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_;
  v19[1] = v15;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v11 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a5, &a5[2 * a6]);
  v12 = __ROR8__(v11 + 16, 16);
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ (a4 >> 4) ^ (a4 >> 9) ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ (a4 >> 4) ^ (a4 >> 9) ^ 0xFF51AFD7ED558CCDLL)));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id, (-348639895 * ((v13 >> 47) ^ v13)) ^ v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t mlir::silc::ShardingAttr::verifyInvariantsImpl(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(*a3 + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    return 1;
  }

  v6 = v3 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? a3 : 0;
  v21[0] = v6;
  if (v6)
  {
    mlir::SymbolRefAttr::getNestedReferences(v21);
    if (!v7)
    {
      return 1;
    }
  }

  a1(v21, a2);
  if (v21[0])
  {
    LODWORD(v19) = 3;
    *(&v19 + 1) = "failed to verify 'mesh': mesh attr or flat mesh symbol reference attr";
    v20 = 69;
    if (v23 >= v24)
    {
      if (v22 > &v19 || v22 + 24 * v23 <= &v19)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v22 + 24 * v23;
    v9 = v19;
    *(v8 + 2) = v20;
    *v8 = v9;
    ++v23;
    if (v21[0])
    {
      mlir::InFlightDiagnostic::report(v21);
    }
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v29;
      v12 = __p;
      if (v29 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v29 = v10;
      operator delete(v12);
    }

    v13 = v26;
    if (v26)
    {
      v14 = v27;
      v15 = v26;
      if (v27 != v26)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v26;
      }

      v27 = v13;
      operator delete(v15);
    }

    if (v22 != &v25)
    {
      free(v22);
    }
  }

  return 0;
}

uint64_t mlir::silc::ShardingAttr::parse(mlir::AsmParser *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  v2 = (*(*a1 + 40))(a1);
  LOBYTE(v21) = 0;
  v22 = 0;
  LOBYTE(v42[0]) = 0;
  v44 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_32;
  }

  v3 = (*(*a1 + 40))(a1);
  v21 = 0;
  v22 = 1;
  if (!mlir::silc::parseSilcMeshOrRef(a1, &v21, v4))
  {
    goto LABEL_32;
  }

  if ((v22 & 1) == 0)
  {
    v28 = "custom parser failed to parse parameter 'mesh'";
    v31 = 259;
    (*(*a1 + 24))(v33, a1, v3, &v28);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v39;
        v12 = __p;
        if (v39 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v39 = v10;
        operator delete(v12);
      }

      v13 = v36;
      if (v36)
      {
        v14 = v37;
        v15 = v36;
        if (v37 != v36)
        {
          do
          {
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              MEMORY[0x259C63150](v16, 0x1000C8077774924);
            }
          }

          while (v14 != v13);
          v15 = v36;
        }

        v37 = v13;
        operator delete(v15);
      }

      if (v34 != &v35)
      {
        free(v34);
      }
    }

    goto LABEL_32;
  }

  v31 = 257;
  if (((*(*a1 + 400))(a1, "with", 4, &v28) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_32;
  }

  if (((*(*a1 + 336))(a1) & 1) == 0)
  {
    mlir::FieldParser<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>,llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::parse(a1, &v28);
    llvm::FailureOr<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::operator=(v42, &v28);
    if (v32 == 1 && v28 != v30)
    {
      free(v28);
    }

    v19 = *a1;
    if ((v44 & 1) == 0)
    {
      v20 = (*(v19 + 40))(a1);
      v31 = 259;
      (*(*a1 + 24))(v27, a1, v20, &v28);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v27);
      goto LABEL_32;
    }

    if (((*(v19 + 328))(a1) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  Context = mlir::AsmParser::getContext(a1);
  v6 = v21;
  v25[0] = v26;
  v25[1] = 0x600000000;
  std::optional<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>(v42, v25, &v28);
  v23[0] = a1;
  v23[1] = &v24;
  v24 = v2;
  result = mlir::detail::StorageUserBase<mlir::silc::ShardingAttr,mlir::Attribute,mlir::silc::detail::ShardingAttrStorage,mlir::detail::AttributeUniquer>::getChecked<mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4silc12ShardingAttrEJPNS1_11MLIRContextENS1_9AttributeENS_8ArrayRefINS8_17TensorAxisRefAttrEEEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, v23, Context, v6, v28, v29);
  if (v28 != v30)
  {
    v8 = result;
    free(v28);
    result = v8;
  }

  if (v25[0] != v26)
  {
    v9 = result;
    free(v25[0]);
    result = v9;
  }

LABEL_33:
  if (v44 == 1 && v42[0] != &v43)
  {
    v18 = result;
    free(v42[0]);
    return v18;
  }

  return result;
}

void mlir::FieldParser<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>,llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  __src = v9;
  v8 = 0x600000000;
  if (((*(*a1 + 392))() & 1) == 0)
  {
    v4 = 0;
    *a2 = 0;
    goto LABEL_7;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = v8;
  v4 = 1;
  if (!v8 || &__src == a2)
  {
LABEL_7:
    *(a2 + 64) = v4;
    v6 = __src;
    if (__src == v9)
    {
      return;
    }

    goto LABEL_8;
  }

  if (__src == v9)
  {
    if (v8 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(*a2, __src, 8 * v8);
    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = __src;
    v5 = HIDWORD(v8);
    *(a2 + 8) = v3;
    *(a2 + 12) = v5;
    __src = v9;
    HIDWORD(v8) = 0;
  }

  LODWORD(v8) = 0;
  *(a2 + 64) = 1;
  v6 = __src;
  if (__src != v9)
  {
LABEL_8:
    free(v6);
  }
}

uint64_t llvm::FailureOr<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::operator=(uint64_t result, uint64_t a2)
{
  if (*(result + 64) == *(a2 + 64))
  {
    if (*(result + 64))
    {
      v2 = result;
      llvm::SmallVectorImpl<unsigned long>::operator=(result, a2);
      return v2;
    }
  }

  else if (*(result + 64))
  {
    if (*result != result + 16)
    {
      v3 = result;
      free(*result);
      result = v3;
    }

    *(result + 64) = 0;
  }

  else
  {
    *result = result + 16;
    *(result + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      v4 = result;
      llvm::SmallVectorImpl<unsigned long>::operator=(result, a2);
      result = v4;
    }

    *(result + 64) = 1;
  }

  return result;
}

const void **std::optional<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::value_or[abi:nn200100]<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>@<X0>(const void **result@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v3 = *(result + 64);
  *a3 = a3 + 2;
  a3[1] = 0x600000000;
  if (v3 == 1)
  {
    if (a3 != result)
    {
      v4 = *(result + 2);
      if (v4)
      {
        if (v4 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        result = memcpy(a3 + 2, *result, 8 * *(result + 2));
        *(a3 + 2) = v4;
      }
    }
  }

  else if (*(a2 + 8))
  {

    return llvm::SmallVectorImpl<unsigned long>::operator=(a3, a2);
  }

  return result;
}

void *mlir::silc::ShardingAttr::print(mlir::silc::ShardingAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  mlir::silc::printSilcMeshOrRef(a2, *(*this + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 3uLL)
  {
    *v9 = 1752459639;
    v8[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v8, "with", 4uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, " ", 1uLL);
  }

  else
  {
    *v11 = 32;
    ++v10[4];
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] != v13)
  {
    *v13 = 91;
    ++v12[4];
    v14 = *this;
    v15 = *(*this + 24);
    if (!v15)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  llvm::raw_ostream::write(v12, "[", 1uLL);
  v14 = *this;
  v15 = *(*this + 24);
  if (v15)
  {
LABEL_15:
    v16 = *(v14 + 16);
    v17 = (*(*a2 + 16))(a2);
    v22[0] = ", ";
    v22[1] = 2;
    llvm::interleave<mlir::silc::TensorAxisRefAttr const*,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::TensorAxisRefAttr,(void *)0>(llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>)::{lambda(mlir::silc::TensorAxisRefAttr)#1},void llvm::interleave<llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::TensorAxisRefAttr,(void *)0>(llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>)::{lambda(mlir::silc::TensorAxisRefAttr)#1},llvm::raw_ostream,mlir::silc::TensorAxisRefAttr const>(mlir::silc::TensorAxisRefAttr const&,llvm::raw_ostream &,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::TensorAxisRefAttr,(void *)0>(llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>)::{lambda(mlir::silc::TensorAxisRefAttr)#1},llvm::StringRef const&)::{lambda(void)#1},void>(v16, (v16 + 8 * v15), a2, v17, v22);
  }

LABEL_16:
  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, "]", 1uLL);
  }

  else
  {
    *v19 = 93;
    ++v18[4];
  }

  result = (*(*a2 + 16))(a2);
  v21 = result[4];
  if (result[3] == v21)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v21 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::silc::ReductionKindAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24ReductionKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionKindAttrEJNS2_13ReductionKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::silc::ReductionKindAttr::parse(mlir::AsmParser *a1)
{
  v90 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  v2 = (*(*a1 + 40))(a1);
  v65 = 0;
  v66 = 0;
  if (mlir::AsmParser::parseKeyword(a1, &v65))
  {
    v3 = mlir::silc::symbolizeReductionKind(v65, v66);
    if ((v3 & 0x100000000) != 0)
    {
      v47 = v3;
      v48 = v3;
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      *&v67 = &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id;
      *(&v67 + 1) = Context;
      v79[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24ReductionKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionKindAttrEJNS2_13ReductionKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v79[1] = &v67;
      v69 = v48;
      v51 = 0x9DDFEA08EB382D69 * (((8 * v48) | 4) ^ v47 ^ 0xFF51AFD7ED558CCDLL);
      v52 = 0x9DDFEA08EB382D69 * (v47 ^ 0xFF51AFD7ED558CCDLL ^ (v51 >> 47) ^ v51);
      v65 = &v69;
      v63[0] = &v69;
      v63[1] = v79;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id, -348639895 * ((v52 >> 47) ^ v52), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v65, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v63);
    }

    v64 = 257;
    (*(*a1 + 24))(v79, a1, v2, v63);
    if (v79[0])
    {
      LODWORD(v67) = 3;
      *(&v67 + 1) = "expected ";
      v68 = 9;
      if (v81 >= v82)
      {
        if (v80 > &v67 || v80 + 24 * v81 <= &v67)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v4 = v80 + 24 * v81;
      v5 = v67;
      *(v4 + 2) = v68;
      *v4 = v5;
      v6 = ++v81;
      if (v79[0])
      {
        LODWORD(v67) = 3;
        *(&v67 + 1) = "::mlir::silc::ReductionKind";
        v68 = 27;
        if (v6 >= v82)
        {
          if (v80 > &v67 || v80 + 24 * v6 <= &v67)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v7 = v80 + 24 * v81;
        v8 = v67;
        *(v7 + 2) = v68;
        *v7 = v8;
        v9 = ++v81;
        if (v79[0])
        {
          LODWORD(v67) = 3;
          *(&v67 + 1) = " to be one of: ";
          v68 = 15;
          if (v9 >= v82)
          {
            if (v80 > &v67 || v80 + 24 * v9 <= &v67)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v10 = v80 + 24 * v81;
          v11 = v67;
          *(v10 + 2) = v68;
          *v10 = v11;
          v12 = ++v81;
          if (v79[0])
          {
            LODWORD(v67) = 3;
            *(&v67 + 1) = "sum";
            v68 = 3;
            if (v12 >= v82)
            {
              if (v80 > &v67 || v80 + 24 * v12 <= &v67)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v13 = v80 + 24 * v81;
            v14 = v67;
            *(v13 + 2) = v68;
            *v13 = v14;
            v15 = ++v81;
            if (v79[0])
            {
              LODWORD(v67) = 3;
              *(&v67 + 1) = ", ";
              v68 = 2;
              if (v15 >= v82)
              {
                if (v80 > &v67 || v80 + 24 * v15 <= &v67)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v16 = v80 + 24 * v81;
              v17 = v67;
              *(v16 + 2) = v68;
              *v16 = v17;
              v18 = ++v81;
              if (v79[0])
              {
                LODWORD(v67) = 3;
                *(&v67 + 1) = "max";
                v68 = 3;
                if (v18 >= v82)
                {
                  if (v80 > &v67 || v80 + 24 * v18 <= &v67)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v19 = v80 + 24 * v81;
                v20 = v67;
                *(v19 + 2) = v68;
                *v19 = v20;
                v21 = ++v81;
                if (v79[0])
                {
                  LODWORD(v67) = 3;
                  *(&v67 + 1) = ", ";
                  v68 = 2;
                  if (v21 >= v82)
                  {
                    if (v80 > &v67 || v80 + 24 * v21 <= &v67)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v22 = v80 + 24 * v81;
                  v23 = v67;
                  *(v22 + 2) = v68;
                  *v22 = v23;
                  v24 = ++v81;
                  if (v79[0])
                  {
                    LODWORD(v67) = 3;
                    *(&v67 + 1) = "min";
                    v68 = 3;
                    if (v24 >= v82)
                    {
                      if (v80 > &v67 || v80 + 24 * v24 <= &v67)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v25 = v80 + 24 * v81;
                    v26 = v67;
                    *(v25 + 2) = v68;
                    *v25 = v26;
                    v27 = ++v81;
                    if (v79[0])
                    {
                      LODWORD(v67) = 3;
                      *(&v67 + 1) = ", ";
                      v68 = 2;
                      if (v27 >= v82)
                      {
                        if (v80 > &v67 || v80 + 24 * v27 <= &v67)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v28 = v80 + 24 * v81;
                      v29 = v67;
                      *(v28 + 2) = v68;
                      *v28 = v29;
                      v30 = ++v81;
                      if (v79[0])
                      {
                        LODWORD(v67) = 3;
                        *(&v67 + 1) = "product";
                        v68 = 7;
                        if (v30 >= v82)
                        {
                          if (v80 > &v67 || v80 + 24 * v30 <= &v67)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v31 = v80 + 24 * v81;
                        v32 = v67;
                        *(v31 + 2) = v68;
                        *v31 = v32;
                        v33 = ++v81;
                        if (v79[0])
                        {
                          LODWORD(v67) = 3;
                          *(&v67 + 1) = ", ";
                          v68 = 2;
                          if (v33 >= v82)
                          {
                            if (v80 > &v67 || v80 + 24 * v33 <= &v67)
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                            }

                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          v34 = v80 + 24 * v81;
                          v35 = v67;
                          *(v34 + 2) = v68;
                          *v34 = v35;
                          v36 = ++v81;
                          if (v79[0])
                          {
                            LODWORD(v67) = 3;
                            *(&v67 + 1) = "mean";
                            v68 = 4;
                            if (v36 >= v82)
                            {
                              if (v80 > &v67 || v80 + 24 * v36 <= &v67)
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod();
                              }

                              llvm::SmallVectorBase<unsigned int>::grow_pod();
                            }

                            v37 = v80 + 24 * v81;
                            v38 = v67;
                            *(v37 + 2) = v68;
                            *v37 = v38;
                            ++v81;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v79);
    if (v79[0])
    {
      mlir::InFlightDiagnostic::report(v79);
    }

    if (v89 == 1)
    {
      if (v88 != &v89)
      {
        free(v88);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v87;
        v41 = __p;
        if (v87 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v87 = v39;
        operator delete(v41);
      }

      v42 = v84;
      if (v84)
      {
        v43 = v85;
        v44 = v84;
        if (v85 != v84)
        {
          do
          {
            v46 = *--v43;
            v45 = v46;
            *v43 = 0;
            if (v46)
            {
              MEMORY[0x259C63150](v45, 0x1000C8077774924);
            }
          }

          while (v43 != v42);
          v44 = v84;
        }

        v85 = v42;
        operator delete(v44);
      }

      if (v80 != &v83)
      {
        free(v80);
      }
    }
  }

  v54 = (*(*a1 + 40))(a1);
  LOWORD(v81) = 259;
  (*(*a1 + 24))(v70, a1, v54, v79);
  if (v70[0])
  {
    mlir::InFlightDiagnostic::report(v70);
  }

  if (v78 == 1)
  {
    if (v77 != &v78)
    {
      free(v77);
    }

    v55 = v75;
    if (v75)
    {
      v56 = v76;
      v57 = v75;
      if (v76 != v75)
      {
        do
        {
          v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
        }

        while (v56 != v55);
        v57 = v75;
      }

      v76 = v55;
      operator delete(v57);
    }

    v58 = v73;
    if (v73)
    {
      v59 = v74;
      v60 = v73;
      if (v74 != v73)
      {
        do
        {
          v62 = *--v59;
          v61 = v62;
          *v59 = 0;
          if (v62)
          {
            MEMORY[0x259C63150](v61, 0x1000C8077774924);
          }
        }

        while (v59 != v58);
        v60 = v73;
      }

      v74 = v58;
      operator delete(v60);
    }

    if (v71 != &v72)
    {
      free(v71);
    }
  }

  return 0;
}

void *mlir::silc::ReductionKindAttr::print(mlir::silc::ReductionKindAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
    v6 = *(*this + 8);
    if (v6 > 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
    v6 = *(*this + 8);
    if (v6 > 2)
    {
LABEL_3:
      switch(v6)
      {
        case 3:
          v7 = 0;
          v8 = "min";
          v9 = 3;
          goto LABEL_15;
        case 4:
          v7 = 0;
          v8 = "product";
          v9 = 7;
          goto LABEL_15;
        case 5:
          v7 = 0;
          v8 = "mean";
          v9 = 4;
          goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (v6 == 1)
  {
    v7 = 0;
    v8 = "sum";
    v9 = 3;
    goto LABEL_15;
  }

  if (v6 == 2)
  {
    v7 = 0;
    v8 = "max";
    v9 = 3;
    goto LABEL_15;
  }

LABEL_14:
  v9 = 0;
  v8 = "";
  v7 = 1;
LABEL_15:
  result = (*(*a2 + 16))(a2);
  if (v9 <= result[3] - result[4])
  {
    if ((v7 & 1) == 0)
    {
      v11 = result;
      result = memcpy(result[4], v8, v9);
      v11[4] += v9;
    }
  }

  else
  {

    return llvm::raw_ostream::write(result, v8, v9);
  }

  return result;
}

const char *mlir::silc::stringifyReductionKind(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "";
  }

  else
  {
    return (&off_27983A960)[a1 - 1];
  }
}

uint64_t mlir::silc::SilcDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v36 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v40) = 0;
  v38 = 0;
  v39 = 0;
  v37 = v5;
  LOBYTE(v40) = 0;
  if (((*(*a2 + 640))(a2, &v38) & 1) == 0)
  {
    v6 = 0;
    if ((v40 & 0x10000) != 0)
    {
      LOWORD(v40) = 256;
      *&v33 = "mesh_axis";
      v7 = 0;
      v8 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v36) & 0x100) != 0)
      {
        return v6;
      }
    }

    else
    {
      LOWORD(v40) = 256;
      BYTE2(v40) = 1;
      v7 = 0;
      v8 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v36) & 0x100) != 0)
      {
        return v6;
      }
    }

    goto LABEL_64;
  }

  *&v33 = "mesh_axis";
  *(&v33 + 1) = 9;
  if ((v40 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v7 = v39;
  if (v39)
  {
    if (v39 == 9 && *v38 == 0x6978615F6873656DLL && *(v38 + 8) == 115)
    {
      v13 = mlir::silc::MeshAxisAttr::parse(a2);
      goto LABEL_60;
    }

    *&v33 = "mesh";
    *(&v33 + 1) = 4;
    goto LABEL_15;
  }

  (*(*v36 + 648))(v36, &v33, 1);
  *&v33 = "mesh";
  *(&v33 + 1) = 4;
  if ((v40 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v7 = v39;
  if (v39)
  {
LABEL_15:
    if (v7 == 4 && *v38 == 1752393069)
    {
      v13 = mlir::silc::MeshAttr::parse(a2);
      goto LABEL_60;
    }

    *&v33 = "mesh_axis_ref";
    *(&v33 + 1) = 13;
    if (v7)
    {
      goto LABEL_18;
    }

LABEL_46:
    (*(*v36 + 648))(v36, &v33, 1);
    *&v33 = "tensor_axis_ref";
    *(&v33 + 1) = 15;
    if ((v40 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v7 = v39;
    if (v39)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

  (*(*v36 + 648))(v36, &v33, 1);
  *&v33 = "mesh_axis_ref";
  *(&v33 + 1) = 13;
  if ((v40 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v7 = v39;
  if (!v39)
  {
    goto LABEL_46;
  }

LABEL_18:
  if (v7 == 13 && *v38 == 0x6978615F6873656DLL && *(v38 + 5) == 0x6665725F73697861)
  {
    v13 = mlir::silc::MeshAxisRefAttr::parse(a2);
    goto LABEL_60;
  }

  *&v33 = "tensor_axis_ref";
  *(&v33 + 1) = 15;
  if (v7)
  {
LABEL_24:
    if (v7 == 15 && *v38 == 0x615F726F736E6574 && *(v38 + 7) == 0x6665725F73697861)
    {
      v13 = mlir::silc::TensorAxisRefAttr::parse(a2);
      goto LABEL_60;
    }

    *&v33 = "sharding";
    *(&v33 + 1) = 8;
    if (v7)
    {
LABEL_30:
      if (v7 != 8 || *v38 != 0x676E696472616873)
      {
        *&v33 = "reduction_kind";
        *(&v33 + 1) = 14;
        if (v7)
        {
          goto LABEL_33;
        }

        goto LABEL_52;
      }

      v13 = mlir::silc::ShardingAttr::parse(a2);
LABEL_60:
      v6 = v13;
      LOBYTE(v40) = v13 != 0;
      *(&v40 + 1) = 257;
      v7 = 0;
      v8 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v36) & 0x100) != 0)
      {
        return v6;
      }

      goto LABEL_64;
    }

    goto LABEL_50;
  }

LABEL_48:
  (*(*v36 + 648))(v36, &v33, 1);
  *&v33 = "sharding";
  *(&v33 + 1) = 8;
  if ((v40 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v7 = v39;
  if (v39)
  {
    goto LABEL_30;
  }

LABEL_50:
  (*(*v36 + 648))(v36, &v33, 1);
  *&v33 = "reduction_kind";
  *(&v33 + 1) = 14;
  if ((v40 & 0x10000) != 0)
  {
LABEL_3:
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v36) & 0x100) != 0)
    {
      return v6;
    }

    goto LABEL_64;
  }

  v7 = v39;
  if (v39)
  {
LABEL_33:
    if (v7 != 14 || (*v38 == 0x6F69746375646572 ? (v12 = *(v38 + 6) == 0x646E696B5F6E6F69) : (v12 = 0), !v12))
    {
LABEL_63:
      v6 = 0;
      v8 = v38;
      LOWORD(v40) = 0;
      BYTE2(v40) = 1;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v36) & 0x100) != 0)
      {
        return v6;
      }

      goto LABEL_64;
    }

    v13 = mlir::silc::ReductionKindAttr::parse(a2);
    goto LABEL_60;
  }

LABEL_52:
  (*(*v36 + 648))(v36, &v33, 1);
  if ((v40 & 0x10000) == 0)
  {
    v7 = v39;
    goto LABEL_63;
  }

  v7 = 0;
  v8 = 0;
  v6 = 0;
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v36) & 0x100) != 0)
  {
    return v6;
  }

LABEL_64:
  v32 = 257;
  (*(*a2 + 24))(&v36, a2, v4, v31);
  if (v36)
  {
    LODWORD(v33) = 3;
    v34 = 19;
    if (v40 >= v41)
    {
      if (v39 > &v33 || v39 + 24 * v40 <= &v33)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = v39 + 24 * v40;
    v15 = v33;
    *(v14 + 2) = v34;
    *v14 = v15;
    ++v40;
    if (v36)
    {
      v35 = 261;
      *&v33 = v8;
      *(&v33 + 1) = v7;
      mlir::Diagnostic::operator<<(&v37, &v33);
      if (v36)
      {
        LODWORD(v33) = 3;
        v34 = 14;
        if (v40 >= v41)
        {
          if (v39 > &v33 || v39 + 24 * v40 <= &v33)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v39 + 24 * v40;
        v17 = v33;
        *(v16 + 2) = v34;
        *v16 = v17;
        ++v40;
        if (v36)
        {
          v18 = *(a1 + 8);
          v19 = *(a1 + 16);
          v35 = 261;
          *&v33 = v18;
          *(&v33 + 1) = v19;
          mlir::Diagnostic::operator<<(&v37, &v33);
          if (v36)
          {
            LODWORD(v33) = 3;
            v34 = 1;
            if (v40 >= v41)
            {
              if (v39 > &v33 || v39 + 24 * v40 <= &v33)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v20 = v39 + 24 * v40;
            v21 = v33;
            *(v20 + 2) = v34;
            *v20 = v21;
            ++v40;
            if (v36)
            {
              mlir::InFlightDiagnostic::report(&v36);
            }
          }
        }
      }
    }
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v46;
      v24 = __p;
      if (v46 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v46 = v22;
      operator delete(v24);
    }

    v25 = v43;
    if (v43)
    {
      v26 = v44;
      v27 = v43;
      if (v44 != v43)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            MEMORY[0x259C63150](v28, 0x1000C8077774924);
          }
        }

        while (v26 != v25);
        v27 = v43;
      }

      v44 = v25;
      operator delete(v27);
    }

    if (v39 != &v42)
    {
      free(v39);
    }
  }

  return 0;
}

void mlir::silc::SilcDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id)
  {
    v17 = a2;
    v5 = (*(*a3 + 16))(a3);
    v6 = v5[4];
    if ((v5[3] - v6) > 8)
    {
      *(v6 + 8) = 115;
      *v6 = *"mesh_axis";
      v5[4] += 9;
    }

    else
    {
      llvm::raw_ostream::write(v5, "mesh_axis", 9uLL);
    }

    mlir::silc::MeshAxisAttr::print(&v17, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id)
  {
    v17 = a2;
    v7 = (*(*a3 + 16))(a3);
    v8 = v7[4];
    if (v7[3] - v8 > 3uLL)
    {
      *v8 = 1752393069;
      v7[4] += 4;
    }

    else
    {
      llvm::raw_ostream::write(v7, "mesh", 4uLL);
    }

    mlir::silc::MeshAttr::print(&v17, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id)
  {
    v17 = a2;
    v9 = (*(*a3 + 16))(a3);
    v10 = v9[4];
    if (v9[3] - v10 > 0xCuLL)
    {
      qmemcpy(v10, "mesh_axis_ref", 13);
      v9[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v9, "mesh_axis_ref", 0xDuLL);
    }

    mlir::Attribute::getContext(&v17);
    (*(*a3 + 80))(a3, *(v17 + 8), *(v17 + 16));
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
  {
    v17 = a2;
    v11 = (*(*a3 + 16))(a3);
    v12 = v11[4];
    if (v11[3] - v12 > 0xEuLL)
    {
      qmemcpy(v12, "tensor_axis_ref", 15);
      v11[4] += 15;
    }

    else
    {
      llvm::raw_ostream::write(v11, "tensor_axis_ref", 0xFuLL);
    }

    mlir::silc::TensorAxisRefAttr::print(&v17, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id)
  {
    v17 = a2;
    v13 = (*(*a3 + 16))(a3);
    v14 = v13[4];
    if (v13[3] - v14 > 7uLL)
    {
      *v14 = 0x676E696472616873;
      v13[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "sharding", 8uLL);
    }

    mlir::silc::ShardingAttr::print(&v17, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id)
  {
    v17 = a2;
    v15 = (*(*a3 + 16))(a3);
    v16 = v15[4];
    if (v15[3] - v16 > 0xDuLL)
    {
      qmemcpy(v16, "reduction_kind", 14);
      v15[4] += 14;
    }

    else
    {
      llvm::raw_ostream::write(v15, "reduction_kind", 0xEuLL);
    }

    mlir::silc::ReductionKindAttr::print(&v17, a3);
  }
}

uint64_t mlir::silc::symbolizeReductionKind(unsigned __int16 *a1, uint64_t a2)
{
  if (a2 == 7)
  {
    if (*a1 == 1685025392 && *(a1 + 3) == 1952675172)
    {
      return 0x100000004;
    }

    return 0;
  }

  if (a2 == 4)
  {
    if (*a1 == 1851876717)
    {
      return 0x100000005;
    }

    else
    {
      return 0;
    }
  }

  if (a2 != 3)
  {
    return 0;
  }

  if (*a1 == 30067 && *(a1 + 2) == 109)
  {
    return 0x100000001;
  }

  result = 0x100000002;
  v5 = *a1;
  v6 = a1;
  v7 = *(a1 + 2);
  if (v5 != 24941 || v7 != 120)
  {
    v9 = *v6;
    v10 = *(v6 + 2);
    if (v9 == 26989 && v10 == 110)
    {
      return 0x100000003;
    }

    return 0;
  }

  return result;
}

uint64_t mlir::silc::symbolizeReductionKind(mlir::silc *this)
{
  v1 = (this - 1);
  if (v1 >= 5)
  {
    return 0;
  }

  else
  {
    return (v1 + 1) | 0x100000000;
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4silc12MeshAxisAttrEJPNS1_11MLIRContextENS_9StringRefEtEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_4silc12ShardingAttrEJPNS1_11MLIRContextENS1_9AttributeENS_8ArrayRefINS8_17TensorAxisRefAttrEEEEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::silc::SilcAllGatherOp::setInherentAttr((v5 + 64), Value, v7, a4);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::silc::SilcAllGatherOp::populateInherentAttrs(Context, v6, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllGatherOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::silc::SilcAllGatherOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::writeProperties;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::addOpToNetwork;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::silc::detail::BufferizationInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::isConverted;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v9 = v8;
  *v8 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::verifySymbolUses;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v10 = mlir::silc::detail::CollectiveCommunicationInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::getResultSharding;
  {
    mlir::OpInterface<mlir::silc::CollectiveCommunicationInterface,mlir::silc::detail::CollectiveCommunicationInterfaceInterfaceTraits>::getInterfaceFor();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::CollectiveCommunicationInterface,void>::resolveTypeID(void)::id, v10);
  v11 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v11 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::getAsmResultNames;
  v11[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::getAsmBlockArgumentNames;
  v11[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::getAsmBlockNames;
  v11[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllGatherOp>::getDefaultDialect;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::NoRegionArguments<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::NoTerminator<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::SymbolTable<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::RegionKindInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ODIE::Compiler::CoreML::ClassOp>>();
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    a1 = v90;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v79 = v1;
    v91 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v1 = v79;
    a1 = v91;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v80 = v1;
    v92 = a1;
    v69 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v69;
    v1 = v80;
    a1 = v92;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v81 = v1;
    v93 = a1;
    v60 = v3;
    v70 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v3 = v60;
    v2 = v70;
    v1 = v81;
    a1 = v93;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v82 = v1;
    v94 = a1;
    v61 = v3;
    v71 = v2;
    v52 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v52;
    v3 = v61;
    v2 = v71;
    v1 = v82;
    a1 = v94;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v83 = v1;
    v95 = a1;
    v62 = v3;
    v72 = v2;
    v53 = v4;
    v45 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v5 = v45;
    v4 = v53;
    v3 = v62;
    v2 = v72;
    v1 = v83;
    a1 = v95;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v84 = v1;
    v96 = a1;
    v63 = v3;
    v73 = v2;
    v54 = v4;
    v39 = v6;
    v46 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>();
    v6 = v39;
    v5 = v46;
    v4 = v54;
    v3 = v63;
    v2 = v73;
    v1 = v84;
    a1 = v96;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v85 = v1;
    v97 = a1;
    v64 = v3;
    v74 = v2;
    v55 = v4;
    v40 = v6;
    v47 = v5;
    v34 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v7 = v34;
    v6 = v40;
    v5 = v47;
    v4 = v55;
    v3 = v64;
    v2 = v74;
    v1 = v85;
    a1 = v97;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v86 = v1;
    v98 = a1;
    v65 = v3;
    v75 = v2;
    v56 = v4;
    v41 = v6;
    v48 = v5;
    v30 = v8;
    v35 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v8 = v30;
    v7 = v35;
    v6 = v41;
    v5 = v48;
    v4 = v56;
    v3 = v65;
    v2 = v75;
    v1 = v86;
    a1 = v98;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::BufferizationInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v87 = v1;
    v99 = a1;
    v66 = v3;
    v76 = v2;
    v57 = v4;
    v42 = v6;
    v49 = v5;
    v31 = v8;
    v36 = v7;
    v27 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>();
    v9 = v27;
    v8 = v31;
    v7 = v36;
    v6 = v42;
    v5 = v49;
    v4 = v57;
    v3 = v66;
    v2 = v76;
    v1 = v87;
    a1 = v99;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::silc::CollectiveCommunicationInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::CollectiveCommunicationInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v89 = v1;
    v101 = a1;
    v68 = v3;
    v78 = v2;
    v59 = v4;
    v44 = v6;
    v51 = v5;
    v33 = v8;
    v38 = v7;
    v26 = v10;
    v29 = v9;
    v24 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
    v11 = v24;
    v10 = v26;
    v9 = v29;
    v8 = v33;
    v7 = v38;
    v6 = v44;
    v5 = v51;
    v4 = v59;
    v3 = v68;
    v2 = v78;
    v1 = v89;
    a1 = v101;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::silc::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::PlistGeneratorInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::PlistGeneratorInterface::Trait<Empty>]";
  v6 = 99;
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

const char *llvm::getTypeName<mlir::silc::BufferizationInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::BufferizationInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::BufferizationInterface::Trait<Empty>]";
  v6 = 98;
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

const char *llvm::getTypeName<mlir::silc::CollectiveCommunicationInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::CollectiveCommunicationInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::silc::CollectiveCommunicationInterface::Trait<Empty>]";
  v6 = 108;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::silc::SilcAllGatherOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::silc::SilcAllGatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::silc::SilcAllGatherOp::verifyInvariantsImpl(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::foldHook()
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  if (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v5 = v6[0];
      if ((v7 & 2) != 0)
      {
        v5 = v6;
      }

      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v1, v2, v3, v4);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v6[0], v6[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v5, a2, a3, a4, a5);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::silc::SilcAllReduceOp::setInherentAttr((v5 + 64), Value, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::silc::SilcAllReduceOp::populateInherentAttrs(Context, v6, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::silc::SilcAllReduceOp::getPropertiesAsAttr(Context, v4);
}

BOOL mlir::RegisteredOperationName::Model<mlir::silc::SilcAllReduceOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2)
  {
    return 0;
  }

  if (a3[1] == a2[1])
  {
    return a3[2] == a2[2];
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllReduceOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllReduceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllReduceOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllReduceOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllReduceOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllReduceOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllReduceOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllReduceOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllReduceOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllReduceOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllReduceOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::writeProperties;
  {
    v11 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>>();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::verifySymbolUses;
  {
    v12 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::addOpToNetwork;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::silc::detail::BufferizationInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::isConverted;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface,void>::resolveTypeID(void)::id, v8);
  v9 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v9 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::getAsmResultNames;
  v9[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::getAsmBlockArgumentNames;
  v9[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::getAsmBlockNames;
  v9[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllReduceOp>::getDefaultDialect;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::NoRegionArguments<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::NoTerminator<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::SymbolTable<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::RegionKindInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ODIE::Compiler::CoreML::ClassOp>>();
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    a1 = v77;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v67 = v1;
    v78 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v1 = v67;
    a1 = v78;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v68 = v1;
    v79 = a1;
    v58 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v2 = v58;
    v1 = v68;
    a1 = v79;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v69 = v1;
    v80 = a1;
    v50 = v3;
    v59 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v3 = v50;
    v2 = v59;
    v1 = v69;
    a1 = v80;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v70 = v1;
    v81 = a1;
    v51 = v3;
    v60 = v2;
    v43 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v43;
    v3 = v51;
    v2 = v60;
    v1 = v70;
    a1 = v81;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v71 = v1;
    v82 = a1;
    v52 = v3;
    v61 = v2;
    v44 = v4;
    v37 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v5 = v37;
    v4 = v44;
    v3 = v52;
    v2 = v61;
    v1 = v71;
    a1 = v82;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v72 = v1;
    v83 = a1;
    v53 = v3;
    v62 = v2;
    v45 = v4;
    v32 = v6;
    v38 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>();
    v6 = v32;
    v5 = v38;
    v4 = v45;
    v3 = v53;
    v2 = v62;
    v1 = v72;
    a1 = v83;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v73 = v1;
    v84 = a1;
    v54 = v3;
    v63 = v2;
    v46 = v4;
    v33 = v6;
    v39 = v5;
    v28 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>();
    v7 = v28;
    v6 = v33;
    v5 = v39;
    v4 = v46;
    v3 = v54;
    v2 = v63;
    v1 = v73;
    a1 = v84;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v74 = v1;
    v85 = a1;
    v55 = v3;
    v64 = v2;
    v47 = v4;
    v34 = v6;
    v40 = v5;
    v25 = v8;
    v29 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v8 = v25;
    v7 = v29;
    v6 = v34;
    v5 = v40;
    v4 = v47;
    v3 = v55;
    v2 = v64;
    v1 = v74;
    a1 = v85;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::PlistGeneratorInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::silc::BufferizationInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v76 = v1;
    v87 = a1;
    v57 = v3;
    v66 = v2;
    v49 = v4;
    v36 = v6;
    v42 = v5;
    v27 = v8;
    v31 = v7;
    v22 = v10;
    v24 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
    v10 = v22;
    v9 = v24;
    v8 = v27;
    v7 = v31;
    v6 = v36;
    v5 = v42;
    v4 = v49;
    v3 = v57;
    v2 = v66;
    v1 = v76;
    a1 = v87;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::silc::SilcAllReduceOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::silc::SilcAllReduceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::silc::SilcAllReduceOp::verifyInvariantsImpl(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::silc::SilcAllSliceOp::setInherentAttr((v5 + 64), Value, v7, a4);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::silc::SilcAllSliceOp::populateInherentAttrs(Context, v6, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcAllSliceOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::silc::SilcAllSliceOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllSliceOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllSliceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllSliceOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllSliceOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllSliceOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllSliceOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllSliceOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllSliceOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllSliceOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllSliceOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllSliceOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllSliceOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::writeProperties;
  {
    v13 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>>();
    v3 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::silc::detail::PlistGeneratorInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::addOpToNetwork;
  {
    v14 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v5 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::PlistGeneratorInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::silc::detail::BufferizationInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::isConverted;
  {
    v15 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneResult<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OneOperand<mlir::silc::SilcAllGatherOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcAllGatherOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::PlistGeneratorInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::BufferizationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::silc::CollectiveCommunicationInterface::Trait<mlir::silc::SilcAllGatherOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcAllGatherOp>>();
    v7 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::BufferizationInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v9 = v8;
  *v8 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::verifySymbolUses;
  {
    v16 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>>();
    v9 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v9);
  v10 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v10 = mlir::silc::detail::CollectiveCommunicationInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::getResultSharding;
  {
    mlir::OpInterface<mlir::silc::CollectiveCommunicationInterface,mlir::silc::detail::CollectiveCommunicationInterfaceInterfaceTraits>::getInterfaceFor();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::silc::CollectiveCommunicationInterface,void>::resolveTypeID(void)::id, v10);
  v11 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v11 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::getAsmResultNames;
  v11[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::getAsmBlockArgumentNames;
  v11[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::getAsmBlockNames;
  v11[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcAllSliceOp>::getDefaultDialect;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::NoRegionArguments<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::NoTerminator<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::SymbolTable<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::RegionKindInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ODIE::Compiler::CoreML::ClassOp>>();
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v12, v11);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::silc::SilcAllSliceOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::silc::SilcAllSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::silc::PlistGeneratorInterface::Trait,mlir::silc::BufferizationInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::silc::CollectiveCommunicationInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::silc::SilcAllSliceOp::verifyInvariantsImpl(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::silc::SilcMeshOp::setInherentAttr((v5 + 64), Value, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::silc::SilcMeshOp::populateInherentAttrs(Context, v6, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcMeshOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::silc::SilcMeshOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcMeshOp>,mlir::OpTrait::ZeroResults<mlir::silc::SilcMeshOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcMeshOp>,mlir::OpTrait::ZeroOperands<mlir::silc::SilcMeshOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcMeshOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcMeshOp>,mlir::SymbolOpInterface::Trait<mlir::silc::SilcMeshOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::writeProperties;
  {
    v4 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>>();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ClassOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::silc::SilcMeshOp>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v9 = 261;
  v8[0] = "sym_name";
  v8[1] = 8;
  v7 = mlir::StringAttr::get(Context, v8, v6);
  mlir::Operation::setAttr(a2, v7, a3);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::silc::SilcMeshOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::silc::SilcMeshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroResults(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    return 0;
  }

  v8 = a1;
  if (!mlir::silc::SilcMeshOp::verifyInvariantsImpl(&v8) || !mlir::detail::SymbolOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::ClassOp>::verifyTrait(a1, v6))
  {
    return 0;
  }

  v8 = a1;
  return mlir::silc::SilcMeshOp::verify(&v8);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::silc::SilcSPMDCallOp::setInherentAttr((v5 + 64), Value, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::silc::SilcSPMDCallOp::populateInherentAttrs(Context, v6, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::silc::SilcSPMDCallOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::silc::SilcSPMDCallOp::getPropertiesAsAttr(Context, v4);
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::silc::SilcSPMDCallOp>,mlir::OpTrait::OneResult<mlir::silc::SilcSPMDCallOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::silc::SilcSPMDCallOp>,mlir::OpTrait::ZeroSuccessors<mlir::silc::SilcSPMDCallOp>,mlir::OpTrait::VariadicOperands<mlir::silc::SilcSPMDCallOp>,mlir::OpTrait::OpInvariants<mlir::silc::SilcSPMDCallOp>,mlir::BytecodeOpInterface::Trait<mlir::silc::SilcSPMDCallOp>,mlir::CallOpInterface::Trait<mlir::silc::SilcSPMDCallOp>,mlir::SymbolUserOpInterface::Trait<mlir::silc::SilcSPMDCallOp>,mlir::OpAsmOpInterface::Trait<mlir::silc::SilcSPMDCallOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::writeProperties;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>>(a1);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::verifySymbolUses;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicResults<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::VariadicOperands<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::CallOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::ODIE::Compiler::CoreML::CallOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v7 = v6;
  *v6 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getAsmResultNames;
  v6[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getAsmBlockArgumentNames;
  v6[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getAsmBlockNames;
  v6[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getDefaultDialect;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::NoRegionArguments<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::NoTerminator<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::SymbolTable<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::RegionKindInterface::Trait<mlir::ODIE::Compiler::CoreML::ClassOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ODIE::Compiler::CoreML::ClassOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x800407D3415B1uLL);
  v3 = v2;
  *v2 = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getCallableForCallee;
  v2[1] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::setCalleeFromCallable;
  v2[2] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getArgOperands;
  v2[3] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::getArgOperandsMutable;
  v2[4] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::resolveCallableInTable;
  v2[5] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::resolveCallable;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::CallOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v4 = a3;
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v4;
    a2 = InterfaceFor;
  }

  return mlir::call_interface_impl::resolveCallable(v3, a2, a3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::silc::SilcSPMDCallOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<7u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::SameOperandsAndResultShape,mlir::InferShapedTypeOpInterface::Trait>();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::silc::SilcSPMDCallOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::silc::SilcSPMDCallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  v6 = a1;
  return mlir::silc::SilcSPMDCallOp::verifyInvariantsImpl(&v6);
}

void mlir::Dialect::addAttribute<mlir::silc::MeshAxisAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::silc::MeshAxisAttr,mlir::Attribute,mlir::silc::detail::MeshAxisAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12MeshAxisAttrES2_NSD_6detail19MeshAxisAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12MeshAxisAttrES2_NSC_6detail19MeshAxisAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id;
  v21 = "silc.mesh_axis";
  v22 = 14;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::silc::MeshAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::silc::MeshAttr,mlir::Attribute,mlir::silc::detail::MeshAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc8MeshAttrES2_NSD_6detail15MeshAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc8MeshAttrES2_NSC_6detail15MeshAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id;
  v21 = "silc.mesh";
  v22 = 9;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::silc::MeshAxisRefAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::silc::MeshAxisRefAttr,mlir::Attribute,mlir::silc::detail::MeshAxisRefAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc15MeshAxisRefAttrES2_NSD_6detail22MeshAxisRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc15MeshAxisRefAttrES2_NSC_6detail22MeshAxisRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id;
  v21 = "silc.mesh_axis_ref";
  v22 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::silc::TensorAxisRefAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::silc::TensorAxisRefAttr,mlir::Attribute,mlir::silc::detail::TensorAxisRefAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17TensorAxisRefAttrES2_NSD_6detail24TensorAxisRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17TensorAxisRefAttrES2_NSC_6detail24TensorAxisRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id;
  v21 = "silc.tensor_axis_ref";
  v22 = 20;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::silc::ShardingAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::silc::ShardingAttr,mlir::Attribute,mlir::silc::detail::ShardingAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12ShardingAttrES2_NSD_6detail19ShardingAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12ShardingAttrES2_NSC_6detail19ShardingAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id;
  v21 = "silc.sharding";
  v22 = 13;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::silc::ReductionKindAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::silc::ReductionKindAttr,mlir::Attribute,mlir::silc::detail::ReductionKindAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17ReductionKindAttrES2_NSD_6detail24ReductionKindAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17ReductionKindAttrES2_NSC_6detail24ReductionKindAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id;
  v21 = "silc.reduction_kind";
  v22 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12MeshAxisAttrES2_NSC_6detail19MeshAxisAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  Context = mlir::Attribute::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail19MeshAxisAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12MeshAxisAttrEJNS_9StringRefEtEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v16[1] = v12;
  v14[0] = v2;
  v14[1] = v3;
  v15 = v4;
  v7 = llvm::hash_value(v2, v3);
  *&v17 = v7;
  WORD4(v17) = v4;
  v8 = __ROR8__(*(&v17 + 2) + 10, 10);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v8)));
  v13 = v14;
  *&v17 = v14;
  *(&v17 + 1) = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id, (-348639895 * ((v9 >> 47) ^ v9)) ^ (v7 >> 16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef,unsigned short>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef,unsigned short &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef,unsigned short>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef,unsigned short &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v17);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc8MeshAttrES2_NSD_6detail15MeshAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  if (v6)
  {
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v11, v9);
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc8MeshAttrES2_NSC_6detail15MeshAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::silc::MeshAttr>(a2, v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::silc::MeshAttr>(uint64_t a1, uint64_t *a2)
{
  v32[6] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *a2;
  if (a2[1] >= *(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = a2[1];
  }

  v19 = a1;
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v2, v3, &v31);
  *&v28 = v4;
  *(&v28 + 1) = v5;
  *&__src = v30;
  *(&__src + 1) = 0x600000000;
  v6 = DWORD2(v31);
  v7 = v31;
  if (DWORD2(v31))
  {
    if (v31 == v32)
    {
      if (DWORD2(v31) >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v30, v31, 8 * DWORD2(v31));
      v7 = v31;
      DWORD2(__src) = v6;
    }

    else
    {
      __src = v31;
      *&v31 = v32;
      HIDWORD(v31) = 0;
      v7 = v32;
    }

    DWORD2(v31) = 0;
  }

  if (v7 != v32)
  {
    free(v7);
  }

  Context = mlir::Attribute::getContext(&v19);
  v24 = v28;
  v25 = v27;
  v26 = 0x600000000;
  v9 = DWORD2(__src);
  if (DWORD2(__src))
  {
    if (DWORD2(__src) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v27, __src, 8 * DWORD2(__src));
    LODWORD(v26) = v9;
    v10 = v25;
  }

  else
  {
    v9 = 0;
    v10 = v27;
  }

  v11 = v24;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id;
  v20[1] = Context;
  v23[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail15MeshAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_8MeshAttrEJNS_8ArrayRefINS2_12MeshAxisAttrEEENSD_IxEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v23[1] = v20;
  v31 = v11;
  v32[0] = v10;
  v32[1] = v9;
  v13 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(v11, (v11 + 8 * *(&v11 + 1)));
  v14 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v10, &v10[v9]);
  v15 = __ROR8__(v14 + 16, 16);
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ v15)));
  v21[0] = &v31;
  v21[1] = v23;
  v22 = &v31;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAttr,void>::id, (-348639895 * ((v16 >> 47) ^ v16)) ^ v14, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
  if (v25 != v27)
  {
    free(v25);
  }

  if (__src != v30)
  {
    free(__src);
  }

  return ParametricStorageTypeImpl;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc15MeshAxisRefAttrES2_NSC_6detail22MeshAxisRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  Context = mlir::Attribute::getContext(&v10);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail22MeshAxisRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15MeshAxisRefAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v15[1] = v11;
  v14[0] = v2;
  v14[1] = v3;
  v6 = llvm::hash_value(v2, v3);
  v7 = HIDWORD(v6) ^ 0xFF51AFD7ED558CCDLL;
  v8 = 0x9DDFEA08EB382D69 * ((8 * v6 + 8) ^ v7);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17TensorAxisRefAttrES2_NSD_6detail24TensorAxisRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  if (v6)
  {
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v11, v9);
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17TensorAxisRefAttrES2_NSC_6detail24TensorAxisRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v12 = a2;
  if (a4 >= *(a2 + 16))
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = a4;
  }

  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24TensorAxisRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17TensorAxisRefAttrEJNS_8ArrayRefINS2_15MeshAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v17[1] = v13;
  v16[0] = a3;
  v16[1] = v5;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a3, &a3[2 * v5]);
  v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12ShardingAttrES2_NSD_6detail19ShardingAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  result = mlir::AttrTypeImmediateSubElementWalker::walk(v12, v6);
  if (v8)
  {
    v10 = 8 * v8;
    do
    {
      v11 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v12, v11);
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc12ShardingAttrES2_NSC_6detail19ShardingAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::silc::ShardingAttr>(a2, v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::silc::ShardingAttr>(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v3 = *a2;
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    --v2;
    v5 = *v3;
    v3 += 2;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (v2 >= *(a1 + 24))
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = v2;
  }

  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id;
  v14[1] = Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail19ShardingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12ShardingAttrEJNS1_9AttributeENS_8ArrayRefINS2_17TensorAxisRefAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_;
  v18[1] = v14;
  v17[0] = v4;
  v17[1] = v3;
  v17[2] = v6;
  v9 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(v3, &v3[2 * v6]);
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v4 >> 4) ^ (v4 >> 9) ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ (v4 >> 4) ^ (v4 >> 9) ^ 0xFF51AFD7ED558CCDLL)));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ShardingAttr,void>::id, (-348639895 * ((v11 >> 47) ^ v11)) ^ v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4silc17ReductionKindAttrES2_NSC_6detail24ReductionKindAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4silc6detail24ReductionKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionKindAttrEJNS2_13ReductionKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::silc::ReductionKindAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ReductionKindAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ReductionKindAttrStorage,mlir::silc::ReductionKind>(llvm::function_ref<void ()(mlir::silc::detail::ReductionKindAttrStorage *)>,mlir::TypeID,mlir::silc::ReductionKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef,unsigned short>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef,unsigned short &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 8), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 24) == *(v2 + 16);
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef,unsigned short>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef,unsigned short &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::silc::detail::MeshAxisAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t mlir::silc::detail::MeshAxisAttrStorage::construct(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *(a2 + 8);
  if (!v2)
  {
    Slow = 0;
    goto LABEL_24;
  }

  v4 = *a2;
  a1[10] += v2 + 1;
  Slow = *a1;
  v6 = v2 + 1 + *a1;
  if (*a1)
  {
    v7 = v6 > a1[1];
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *a1 = v6;
    if (v2 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v8 = Slow;
    v9 = v4;
    goto LABEL_22;
  }

  v19 = a1;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v2 + 1, v2 + 1, 0);
  a1 = v19;
  if (v2 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v8 = Slow;
  v9 = v4;
  if ((Slow - v4) >= 0x20)
  {
    if (v2 < 0x20)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFFE0;
    v11 = (v4 + 16);
    v12 = (Slow + 16);
    v13 = v2 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 2;
      v13 -= 32;
    }

    while (v13);
    if (v2 == v10)
    {
      goto LABEL_23;
    }

    if ((v2 & 0x18) != 0)
    {
LABEL_15:
      v8 = (Slow + (v2 & 0xFFFFFFFFFFFFFFF8));
      v9 = (v4 + (v2 & 0xFFFFFFFFFFFFFFF8));
      v15 = (v4 + v10);
      v16 = (Slow + v10);
      v17 = v10 - (v2 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v18 = *v15++;
        *v16++ = v18;
        v17 += 8;
      }

      while (v17);
      if (v2 == (v2 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v9 = (v4 + v10);
    v8 = (Slow + v10);
  }

  do
  {
LABEL_22:
    v20 = *v9++;
    *v8++ = v20;
  }

  while (v9 != (v4 + v2));
LABEL_23:
  *(Slow + v2) = 0;
LABEL_24:
  a1[10] += 32;
  v21 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v21 + 32;
  if (*a1)
  {
    v23 = v22 > a1[1];
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v21 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v22;
  }

  *v21 = 0;
  *(v21 + 8) = Slow;
  *(v21 + 16) = v2;
  *(v21 + 24) = v3;
  return v21;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef &,unsigned short &>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef &,unsigned short &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 != *(*a1 + 8))
  {
    return 0;
  }

  if (v3 && (v4 = a2, v5 = memcmp(*(a2 + 8), *v2, v3), a2 = v4, v5))
  {
    return 0;
  }

  else
  {
    return *(a2 + 24) == *(v2 + 16);
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisAttrStorage,llvm::StringRef &,unsigned short &>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisAttrStorage *)>,mlir::TypeID,llvm::StringRef &,unsigned short &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::silc::detail::MeshAxisAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t mlir::AsmParser::parseInteger<unsigned short>(uint64_t a1, _WORD *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v17[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned short,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned short>(unsigned short &)::{lambda(llvm::APInt &)#1}>(a1, a2, v17);
  if ((v5 & 0x100) == 0)
  {
    v15 = "expected integer value";
    v16 = 259;
    (*(*a1 + 24))(v17, a1, v4, &v15);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v23;
        v8 = __p;
        if (v23 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v23 = v6;
        operator delete(v8);
      }

      v9 = v20;
      if (v20)
      {
        v10 = v21;
        v11 = v20;
        if (v21 != v20)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v20;
        }

        v21 = v9;
        operator delete(v11);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned short,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned short>(unsigned short &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v28 = 1;
  v27 = 0;
  v7 = (*(**a3 + 376))();
  if ((v7 & (v7 >> 8) & 1) == 0)
  {
    v12 = BYTE1(v7);
    return v7 | (v12 << 8);
  }

  llvm::APInt::sextOrTrunc(&v27, 0x10u, &v29);
  v8 = v30;
  if (v30 < 0x41)
  {
    v9 = v29;
    *a2 = v29;
    v10 = v28;
    v11 = v9;
    v30 = v28;
    if (v28 > 0x40)
    {
LABEL_15:
      llvm::APInt::initSlowCase(&v29);
    }

    goto LABEL_10;
  }

  v13 = v8 - llvm::APInt::countLeadingZerosSlowCase(&v29);
  v14 = v29;
  if (v13 <= 0x40)
  {
    *a2 = *v29;
LABEL_14:
    MEMORY[0x259C63150]();
    v10 = v28;
    v11 = *a2;
    v30 = v28;
    if (v28 > 0x40)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  *a2 = -1;
  if (v14)
  {
    goto LABEL_14;
  }

  v10 = v28;
  v11 = 0xFFFFLL;
  v30 = v28;
  if (v28 > 0x40)
  {
    goto LABEL_15;
  }

LABEL_10:
  v15 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
  if (!v10)
  {
    v15 = 0;
  }

  v29 = (v15 & v11);
  if (v29 == v27)
  {
    LOBYTE(v7) = 1;
    v12 = 1;
  }

  else
  {
    v25 = "integer value too large";
    v26 = 259;
    (*(*a1 + 24))(&v29, a1, v6, &v25);
    if (v29)
    {
      mlir::InFlightDiagnostic::report(&v29);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v36;
        v18 = __p;
        if (v36 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v36 = v16;
        operator delete(v18);
      }

      v19 = v33;
      if (v33)
      {
        v20 = v34;
        v21 = v33;
        if (v34 != v33)
        {
          do
          {
            v23 = *--v20;
            v22 = v23;
            *v20 = 0;
            if (v23)
            {
              MEMORY[0x259C63150](v22, 0x1000C8077774924);
            }
          }

          while (v20 != v19);
          v21 = v33;
        }

        v34 = v19;
        operator delete(v21);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }

    LOBYTE(v7) = 0;
    v12 = 1;
    if (v28 >= 0x41 && v27)
    {
      MEMORY[0x259C63150](v27, 0x1000C8000313F17);
      LOBYTE(v7) = 0;
    }
  }

  return v7 | (v12 << 8);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8))
  {
    if (v3)
    {
      v4 = *(a2 + 8);
      v5 = *v2;
      v6 = 8 * v3;
      while (*v4 == *v5)
      {
        ++v4;
        ++v5;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v7 = *(a2 + 32);
      if (v7 == *(v2 + 24))
      {
        return memcmp(*(a2 + 24), *(v2 + 16), 8 * v7) == 0;
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::silc::detail::MeshAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisAttr>,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::silc::detail::MeshAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::silc::detail::MeshAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  if (!v2)
  {
    Slow = 0;
    goto LABEL_16;
  }

  v5 = *a2;
  v6 = 8 * v2;
  a1[10] += 8 * v2;
  Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = Slow + 8 * v2;
  if (*a1)
  {
    v9 = v8 > a1[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v19 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
    a1 = v19;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
      goto LABEL_7;
    }

LABEL_14:
    v11 = Slow;
    v12 = v5;
    do
    {
LABEL_15:
      v20 = *v12++;
      *v11++ = v20;
    }

    while (v12 != (v5 + 8 * v2));
    goto LABEL_16;
  }

  *a1 = v8;
  v10 = v6 - 8;
  if ((v6 - 8) < 0x18)
  {
    goto LABEL_14;
  }

LABEL_7:
  v11 = Slow;
  v12 = v5;
  if (Slow - v5 < 0x20)
  {
    goto LABEL_15;
  }

  v13 = (v10 >> 3) + 1;
  v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
  v11 = (Slow + v14);
  v12 = (v5 + v14);
  v15 = (v5 + 16);
  v16 = (Slow + 16);
  v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = *v15;
    *(v16 - 1) = *(v15 - 1);
    *v16 = v18;
    v15 += 2;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_15;
  }

LABEL_16:
  v21 = *a1;
  if (!v4)
  {
    v23 = 0;
    goto LABEL_32;
  }

  v22 = 8 * v4;
  a1[10] += 8 * v4;
  v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = v23 + 8 * v4;
  if (v21)
  {
    v25 = v24 > a1[1];
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v35 = a1;
    v23 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v4, 8 * v4, 3);
    a1 = v35;
    v26 = v22 - 8;
    if ((v22 - 8) >= 0x18)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *a1 = v24;
    v26 = v22 - 8;
    if ((v22 - 8) >= 0x18)
    {
LABEL_22:
      v27 = v23;
      v28 = v3;
      if (v23 - v3 >= 0x20)
      {
        v29 = (v26 >> 3) + 1;
        v30 = 8 * (v29 & 0x3FFFFFFFFFFFFFFCLL);
        v27 = (v23 + v30);
        v28 = (v3 + v30);
        v31 = (v3 + 16);
        v32 = (v23 + 16);
        v33 = v29 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v34 = *v31;
          *(v32 - 1) = *(v31 - 1);
          *v32 = v34;
          v31 += 2;
          v32 += 2;
          v33 -= 4;
        }

        while (v33);
        if (v29 == (v29 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }
  }

  v27 = v23;
  v28 = v3;
  do
  {
LABEL_30:
    v36 = *v28++;
    *v27++ = v36;
  }

  while (v28 != (v3 + 8 * v4));
LABEL_31:
  v21 = *a1;
LABEL_32:
  a1[10] += 40;
  v37 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v38 = v37 + 5;
  if (v21)
  {
    v39 = v38 > a1[1];
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    v37 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
  }

  else
  {
    *a1 = v38;
  }

  *v37 = 0;
  v37[1] = Slow;
  v37[2] = v2;
  v37[3] = v23;
  v37[4] = v4;
  return v37;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::silc::MeshAxisAttr,6u>,llvm::SmallVector<mlir::silc::MeshAxisAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *a1;
  Context = mlir::AsmParser::getContext(*a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "silc", 4uLL);
  v7 = 0;
  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAxisAttr>(v2, &v7, 0))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v4 + 8 * v5) = v7;
  ++*(v4 + 8);
  return 1;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAxisAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc12MeshAxisAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc12MeshAxisAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::silc::MeshAxisAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<long long,6u>,llvm::SmallVector<long long,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v6 = 0;
  if ((mlir::AsmParser::parseInteger<unsigned long long>(v2, &v6) & 1) == 0)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v3 + 8 * v4) = v6;
  ++*(v3 + 8);
  return 1;
}

uint64_t llvm::interleave<mlir::silc::MeshAxisAttr const*,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisAttr,(void *)0>(llvm::ArrayRef<mlir::silc::MeshAxisAttr>)::{lambda(mlir::silc::MeshAxisAttr)#1},void llvm::interleave<llvm::ArrayRef<mlir::silc::MeshAxisAttr>,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisAttr,(void *)0>(llvm::ArrayRef<mlir::silc::MeshAxisAttr>)::{lambda(mlir::silc::MeshAxisAttr)#1},llvm::raw_ostream,mlir::silc::MeshAxisAttr const>(mlir::silc::MeshAxisAttr const&,llvm::raw_ostream &,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisAttr,(void *)0>(llvm::ArrayRef<mlir::silc::MeshAxisAttr>)::{lambda(mlir::silc::MeshAxisAttr)#1},llvm::StringRef const&)::{lambda(void)#1},void>(uint64_t result, void *a2, mlir::AsmPrinter *a3, void *a4, uint64_t a5)
{
  if (result != a2)
  {
    v21[9] = v5;
    v21[10] = v6;
    v11 = result;
    v21[0] = *result;
    result = (*(*a3 + 56))(a3);
    if ((result & 1) == 0)
    {
      v12 = (*(*a3 + 16))(a3);
      v13 = (*(*v12 + 80))(v12) + v12[4] - v12[2];
      mlir::silc::MeshAxisAttr::print(v21, a3);
      result = (*(*v12 + 80))(v12);
      if (v13 == result + v12[4] - v12[2])
      {
        result = (*(*a3 + 40))(a3, v21[0]);
      }
    }

    for (i = (v11 + 8); i != a2; ++i)
    {
      v15 = *a5;
      v16 = *(a5 + 8);
      v17 = a4[4];
      if (v16 <= a4[3] - v17)
      {
        if (v16)
        {
          v18 = *(a5 + 8);
          memcpy(v17, v15, v16);
          a4[4] += v18;
        }
      }

      else
      {
        llvm::raw_ostream::write(a4, v15, v16);
      }

      v21[0] = *i;
      result = (*(*a3 + 56))(a3);
      if ((result & 1) == 0)
      {
        v19 = (*(*a3 + 16))(a3);
        v20 = (*(*v19 + 80))(v19) + v19[4] - v19[2];
        mlir::silc::MeshAxisAttr::print(v21, a3);
        result = (*(*v19 + 80))(v19);
        if (v20 == result + v19[4] - v19[2])
        {
          result = (*(*a3 + 40))(a3, v21[0]);
        }
      }
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (v2)
  {
    return memcmp(*(a2 + 8), **a1, v2) == 0;
  }

  return 1;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::MeshAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::MeshAxisRefAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::silc::detail::MeshAxisRefAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v2 = (*a1)[1];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_24;
  }

  v3 = **a1;
  a2[10] += v2 + 1;
  v4 = *a2;
  v5 = v2 + 1 + *a2;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    *a2 = v5;
    if (v2 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v7 = v4;
    v8 = v3;
    goto LABEL_22;
  }

  v18 = a1;
  v19 = a2;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, v2 + 1, v2 + 1, 0);
  a2 = v19;
  v4 = Slow;
  a1 = v18;
  if (v2 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v7 = v4;
  v8 = v3;
  if ((v4 - v3) >= 0x20)
  {
    if (v2 < 0x20)
    {
      v9 = 0;
      goto LABEL_15;
    }

    v9 = v2 & 0xFFFFFFFFFFFFFFE0;
    v10 = (v3 + 16);
    v11 = (v4 + 16);
    v12 = v2 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v13 = *v10;
      *(v11 - 1) = *(v10 - 1);
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 32;
    }

    while (v12);
    if (v2 == v9)
    {
      goto LABEL_23;
    }

    if ((v2 & 0x18) != 0)
    {
LABEL_15:
      v7 = (v4 + (v2 & 0xFFFFFFFFFFFFFFF8));
      v8 = (v3 + (v2 & 0xFFFFFFFFFFFFFFF8));
      v14 = (v3 + v9);
      v15 = (v4 + v9);
      v16 = v9 - (v2 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v17 = *v14++;
        *v15++ = v17;
        v16 += 8;
      }

      while (v16);
      if (v2 == (v2 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v8 = (v3 + v9);
    v7 = (v4 + v9);
  }

  do
  {
LABEL_22:
    v21 = *v8++;
    *v7++ = v21;
  }

  while (v8 != (v3 + v2));
LABEL_23:
  *(v4 + v2) = 0;
LABEL_24:
  a2[10] += 24;
  v22 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22 + 3;
  if (*a2)
  {
    v24 = v23 > a2[1];
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v28 = a1;
    v22 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *v22 = 0;
    v22[1] = v4;
    v22[2] = v2;
    v25 = v28[1];
    v26 = *v25;
    if (!*v25)
    {
      return v22;
    }

    goto LABEL_29;
  }

  *a2 = v23;
  *v22 = 0;
  v22[1] = v4;
  v22[2] = v2;
  v25 = a1[1];
  v26 = *v25;
  if (*v25)
  {
LABEL_29:
    v26(v25[1], v22);
  }

  return v22;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::TensorAxisRefAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::TensorAxisRefAttrStorage,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::TensorAxisRefAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::silc::MeshAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::silc::MeshAxisRefAttr,6u>,llvm::SmallVector<mlir::silc::MeshAxisRefAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *a1;
  Context = mlir::AsmParser::getContext(*a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "silc", 4uLL);
  v7 = 0;
  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAxisRefAttr>(v2, &v7, 0))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v4 + 8 * v5) = v7;
  ++*(v4 + 8);
  return 1;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::MeshAxisRefAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc15MeshAxisRefAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::MeshAxisRefAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc15MeshAxisRefAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::silc::MeshAxisRefAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::silc::MeshAxisRefAttr,(void *)0>(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = (*(*v4 + 80))(v4) + v4[4] - v4[2];
    mlir::Attribute::getContext(&v6);
    (*(*a1 + 80))(a1, *(v6 + 8), *(v6 + 16));
    result = (*(*v4 + 80))(v4);
    if (v5 == result + v4[4] - v4[2])
    {
      return (*(*a1 + 40))(a1, v6);
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr>>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::silc::detail::ShardingAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::silc::detail::ShardingAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  if (v3)
  {
    v4 = a2[1];
    v5 = 8 * v3;
    a1[10] += 8 * v3;
    Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = Slow + 8 * v3;
    if (*a1)
    {
      v8 = v7 > a1[1];
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v18 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v3, 8 * v3, 3);
      a1 = v18;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v7;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
LABEL_7:
        v10 = Slow;
        v11 = v4;
        if (Slow - v4 >= 0x20)
        {
          v12 = (v9 >> 3) + 1;
          v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
          v10 = (Slow + v13);
          v11 = (v4 + v13);
          v14 = (v4 + 16);
          v15 = (Slow + 16);
          v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 4;
          }

          while (v16);
          if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v10 = Slow;
    v11 = v4;
    do
    {
LABEL_15:
      v19 = *v11++;
      *v10++ = v19;
    }

    while (v11 != (v4 + 8 * v3));
    goto LABEL_16;
  }

  Slow = 0;
LABEL_16:
  a1[10] += 32;
  v20 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 4;
  if (*a1)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = v2;
  v20[2] = Slow;
  v20[3] = v3;
  return v20;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::silc::detail::ShardingAttrStorage * mlir::StorageUniquer::get<mlir::silc::detail::ShardingAttrStorage,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &>(llvm::function_ref<void ()(mlir::silc::detail::ShardingAttrStorage *)>,mlir::TypeID,mlir::Attribute &,llvm::ArrayRef<mlir::silc::TensorAxisRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::silc::detail::ShardingAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>,llvm::SmallVector<mlir::silc::TensorAxisRefAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *a1;
  Context = mlir::AsmParser::getContext(*a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "silc", 4uLL);
  v7 = 0;
  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::TensorAxisRefAttr>(v2, &v7, 0))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v4 + 8 * v5) = v7;
  ++*(v4 + 8);
  return 1;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::silc::TensorAxisRefAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4silc17TensorAxisRefAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::silc::TensorAxisRefAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}