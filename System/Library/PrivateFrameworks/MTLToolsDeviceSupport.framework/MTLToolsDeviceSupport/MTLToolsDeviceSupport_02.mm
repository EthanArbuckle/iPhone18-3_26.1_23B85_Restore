const char *GPUTools::MTL::GetMTLIOErrorAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLIOErrorURLInvalid";
  if (a2)
  {
    v3 = "URLInvalid";
  }

  v4 = "MTLIOErrorInternal";
  if (a2)
  {
    v4 = "Internal";
  }

  if (this == 2)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLIOPriorityAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLIOPriorityLow";
  if (a2)
  {
    v3 = "Low";
  }

  v4 = "MTLIOPriorityNormal";
  if (a2)
  {
    v4 = "Normal";
  }

  v5 = "High";
  if (!a2)
  {
    v5 = "MTLIOPriorityHigh";
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLIOStatusAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLIOStatusError";
  if (a2)
  {
    v3 = "Error";
    v4 = "Complete";
  }

  else
  {
    v4 = "MTLIOStatusComplete";
  }

  if (this != 3)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLIOStatusPending";
  if (a2)
  {
    v5 = "Pending";
  }

  v6 = "MTLIOStatusCancelled";
  if (a2)
  {
    v6 = "Cancelled";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLImageFilterFunctionArgumentTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 3)
  {
    v3 = "MTLImageFilterFunctionArgumentTypeThreadPositionInThreadgroupSPI";
    if (a2)
    {
      v3 = "ThreadPositionInThreadgroupSPI";
    }

    v8 = "MTLImageFilterFunctionArgumentTypeImageBlockSPI";
    if (a2)
    {
      v8 = "ImageBlockSPI";
    }

    if (this != 7)
    {
      v8 = "Unknown";
    }

    if (this != 6)
    {
      v3 = v8;
    }

    v9 = "MTLImageFilterFunctionArgumentTypeThreadPositionInGridSPI";
    if (a2)
    {
      v9 = "ThreadPositionInGridSPI";
    }

    v10 = "MTLImageFilterFunctionArgumentTypeOutputSPI";
    if (a2)
    {
      v10 = "OutputSPI";
    }

    if (this == 5)
    {
      v2 = v10;
    }

    if (this == 4)
    {
      v2 = v9;
    }

    v7 = this <= 5;
  }

  else
  {
    v3 = "MTLImageFilterFunctionArgumentTypeSamplerSPI";
    if (a2)
    {
      v3 = "SamplerSPI";
    }

    v4 = "MTLImageFilterFunctionArgumentTypeBufferSPI";
    if (a2)
    {
      v4 = "BufferSPI";
    }

    if (this != 3)
    {
      v4 = "Unknown";
    }

    if (this != 2)
    {
      v3 = v4;
    }

    v5 = "MTLImageFilterFunctionArgumentTypeTexture2DSPI";
    if (a2)
    {
      v5 = "Texture2DSPI";
    }

    v6 = "MTLImageFilterFunctionArgumentTypeTexture2DWriteSPI";
    if (a2)
    {
      v6 = "Texture2DWriteSPI";
    }

    if (this == 1)
    {
      v2 = v6;
    }

    if (!this)
    {
      v2 = v5;
    }

    v7 = this <= 1;
  }

  if (v7)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLIndexTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLIndexTypeUInt32";
  if (a2)
  {
    v3 = "UInt32";
  }

  v4 = "MTLIndexTypeUInt16";
  if (a2)
  {
    v4 = "UInt16";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLIndirectArgumentBuffersTierAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLIndirectArgumentBuffersTier2";
  if (a2)
  {
    v3 = "2";
  }

  v4 = "MTLIndirectArgumentBuffersTier1";
  if (a2)
  {
    v4 = "1";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLIndirectCommandTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 31)
  {
    v3 = "MTLIndirectCommandTypeDrawMeshThreadgroups";
    if (a2)
    {
      v3 = "DrawMeshThreadgroups";
    }

    v8 = "MTLIndirectCommandTypeDrawMeshThreads";
    if (a2)
    {
      v8 = "DrawMeshThreads";
    }

    if (this != 256)
    {
      v8 = "Unknown";
    }

    if (this != 128)
    {
      v3 = v8;
    }

    v9 = "MTLIndirectCommandTypeConcurrentDispatch";
    if (a2)
    {
      v9 = "ConcurrentDispatch";
    }

    v10 = "MTLIndirectCommandTypeConcurrentDispatchThreads";
    if (a2)
    {
      v10 = "ConcurrentDispatchThreads";
    }

    if (this == 64)
    {
      v2 = v10;
    }

    if (this == 32)
    {
      v2 = v9;
    }

    v7 = this <= 127;
  }

  else
  {
    v3 = "MTLIndirectCommandTypeDrawPatches";
    if (a2)
    {
      v3 = "DrawPatches";
    }

    v4 = "MTLIndirectCommandTypeDrawIndexedPatches";
    if (a2)
    {
      v4 = "DrawIndexedPatches";
    }

    if (this != 8)
    {
      v4 = "Unknown";
    }

    if (this != 4)
    {
      v3 = v4;
    }

    v5 = "MTLIndirectCommandTypeDraw";
    if (a2)
    {
      v5 = "Draw";
    }

    v6 = "MTLIndirectCommandTypeDrawIndexed";
    if (a2)
    {
      v6 = "DrawIndexed";
    }

    if (this == 2)
    {
      v2 = v6;
    }

    if (this == 1)
    {
      v2 = v5;
    }

    v7 = this <= 3;
  }

  if (v7)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLIntersectionFunctionSignatureAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this <= 7)
  {
    v3 = "MTLIntersectionFunctionSignatureTriangleData";
    if (a2)
    {
      v3 = "TriangleData";
    }

    v9 = "MTLIntersectionFunctionSignatureWorldSpaceData";
    if (a2)
    {
      v9 = "WorldSpaceData";
    }

    if (this != 4)
    {
      v9 = "Unknown";
    }

    if (this != 2)
    {
      v3 = v9;
    }

    v10 = "MTLIntersectionFunctionSignatureNone";
    if (a2)
    {
      v10 = "None";
    }

    v11 = "MTLIntersectionFunctionSignatureInstancing";
    if (a2)
    {
      v11 = "Instancing";
    }

    if (this == 1)
    {
      v2 = v11;
    }

    if (!this)
    {
      v2 = v10;
    }

    v8 = this <= 1;
  }

  else
  {
    v3 = "MTLIntersectionFunctionSignatureExtendedLimits";
    if (a2)
    {
      v3 = "ExtendedLimits";
    }

    v4 = "MTLIntersectionFunctionSignatureMaxLevels";
    if (a2)
    {
      v4 = "MaxLevels";
    }

    v5 = "MTLIntersectionFunctionSignatureCurveData";
    if (a2)
    {
      v5 = "CurveData";
    }

    if (this != 128)
    {
      v5 = "Unknown";
    }

    if (this != 64)
    {
      v4 = v5;
    }

    if (this != 32)
    {
      v3 = v4;
    }

    v6 = "MTLIntersectionFunctionSignatureInstanceMotion";
    if (a2)
    {
      v6 = "InstanceMotion";
    }

    v7 = "MTLIntersectionFunctionSignaturePrimitiveMotion";
    if (a2)
    {
      v7 = "PrimitiveMotion";
    }

    if (this == 16)
    {
      v2 = v7;
    }

    if (this == 8)
    {
      v2 = v6;
    }

    v8 = this <= 31;
  }

  if (v8)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLLanguageVersionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this <= 131073)
  {
    if (this > 65537)
    {
      v3 = 65538;
      v4 = "MTLLanguageVersion1_2";
      if (a2)
      {
        v4 = "1_2";
      }

      v5 = "MTLLanguageVersion2_0";
      if (a2)
      {
        v5 = "2_0";
      }

      v8 = "MTLLanguageVersion2_1";
      if (a2)
      {
        v8 = "2_1";
      }

      if (this == 131073)
      {
        v2 = v8;
      }

      v7 = this == 0x20000;
      goto LABEL_22;
    }

    v10 = "MTLLanguageVersion1_0";
    if (a2)
    {
      v10 = "1_0";
    }

    v14 = "MTLLanguageVersion1_1";
    if (a2)
    {
      v14 = "1_1";
    }

    if (this == 65537)
    {
      v2 = v14;
    }

    v13 = this == 0x10000;
LABEL_45:
    if (v13)
    {
      return v10;
    }

    else
    {
      return v2;
    }
  }

  if (this >= 196608)
  {
    v10 = "MTLLanguageVersion3_0";
    if (a2)
    {
      v10 = "3_0";
    }

    v11 = "MTLLanguageVersion3_1";
    if (a2)
    {
      v11 = "3_1";
    }

    v12 = "MTLLanguageVersion3_2";
    if (a2)
    {
      v12 = "3_2";
    }

    if (this == 196610)
    {
      v2 = v12;
    }

    if (this == 196609)
    {
      v2 = v11;
    }

    v13 = this == 196608;
    goto LABEL_45;
  }

  v3 = 131074;
  v4 = "MTLLanguageVersion2_2";
  if (a2)
  {
    v4 = "2_2";
  }

  v5 = "MTLLanguageVersion2_3";
  if (a2)
  {
    v5 = "2_3";
  }

  v6 = "MTLLanguageVersion2_4";
  if (a2)
  {
    v6 = "2_4";
  }

  if (this == 131076)
  {
    v2 = v6;
  }

  v7 = this == 131075;
LABEL_22:
  if (v7)
  {
    v2 = v5;
  }

  if (this == v3)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLLibraryErrorAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLLibraryErrorCompileWarning";
  if (a2)
  {
    v3 = "CompileWarning";
  }

  v4 = "FunctionNotFound";
  if (!a2)
  {
    v4 = "MTLLibraryErrorFunctionNotFound";
  }

  v5 = "MTLLibraryErrorFileNotFound";
  if (a2)
  {
    v5 = "FileNotFound";
  }

  if (this != 6)
  {
    v5 = "Unknown";
  }

  if (this != 5)
  {
    v4 = v5;
  }

  if (this != 4)
  {
    v3 = v4;
  }

  v6 = "MTLLibraryErrorUnsupported";
  if (a2)
  {
    v6 = "Unsupported";
  }

  v7 = "MTLLibraryErrorInternal";
  if (a2)
  {
    v7 = "Internal";
    v8 = "CompileFailure";
  }

  else
  {
    v8 = "MTLLibraryErrorCompileFailure";
  }

  if (this == 3)
  {
    v2 = v8;
  }

  if (this == 2)
  {
    v2 = v7;
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (this <= 3)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLLibraryOptimizationLevelAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLLibraryOptimizationLevelSize";
  if (a2)
  {
    v3 = "Size";
  }

  v4 = "MTLLibraryOptimizationLevelDefault";
  if (a2)
  {
    v4 = "Default";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLLibraryTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLLibraryTypeExecutable";
  if (a2)
  {
    v3 = "Executable";
  }

  v4 = "MTLLibraryTypeDynamic";
  if (a2)
  {
    v4 = "Dynamic";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLLoadActionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLLoadActionDontCare";
  if (a2)
  {
    v3 = "DontCare";
  }

  v4 = "MTLLoadActionLoad";
  if (a2)
  {
    v4 = "Load";
  }

  v5 = "Clear";
  if (!a2)
  {
    v5 = "MTLLoadActionClear";
  }

  if (this == 2)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLLogLevelAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLLogLevelNotice";
  if (a2)
  {
    v3 = "Notice";
  }

  v4 = "Error";
  if (!a2)
  {
    v4 = "MTLLogLevelError";
  }

  v5 = "MTLLogLevelFault";
  if (a2)
  {
    v5 = "Fault";
  }

  if (this != 5)
  {
    v5 = "Unknown";
  }

  if (this != 4)
  {
    v4 = v5;
  }

  if (this != 3)
  {
    v3 = v4;
  }

  v6 = "MTLLogLevelUndefined";
  if (a2)
  {
    v6 = "Undefined";
  }

  v7 = "MTLLogLevelDebug";
  if (a2)
  {
    v7 = "Debug";
    v8 = "Info";
  }

  else
  {
    v8 = "MTLLogLevelInfo";
  }

  if (this == 2)
  {
    v2 = v8;
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLLogStateErrorAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLLogStateErrorInvalidSize";
  if (a2)
  {
    v3 = "InvalidSize";
  }

  v4 = "MTLLogStateErrorInvalid";
  if (a2)
  {
    v4 = "Invalid";
  }

  if (this == 2)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLLogicOpAsString(GPUTools::MTL *this, int a2)
{
  switch(this)
  {
    case 0uLL:
      v2 = "MTLLogicOpClear";
      v3 = "Clear";
      goto LABEL_18;
    case 1uLL:
      v2 = "MTLLogicOpSet";
      v3 = "Set";
      goto LABEL_18;
    case 2uLL:
      v2 = "MTLLogicOpCopy";
      v3 = "Copy";
      goto LABEL_18;
    case 3uLL:
      v2 = "MTLLogicOpInverseCopy";
      v3 = "InverseCopy";
      goto LABEL_18;
    case 4uLL:
      v2 = "MTLLogicOpNoop";
      v3 = "Noop";
      goto LABEL_18;
    case 5uLL:
      v2 = "MTLLogicOpInverse";
      v3 = "Inverse";
      goto LABEL_18;
    case 6uLL:
      v2 = "MTLLogicOpAnd";
      v3 = "And";
      goto LABEL_18;
    case 7uLL:
      v2 = "MTLLogicOpNand";
      v3 = "Nand";
      goto LABEL_18;
    case 8uLL:
      v2 = "MTLLogicOpOr";
      v3 = "Or";
      goto LABEL_18;
    case 9uLL:
      v2 = "MTLLogicOpNor";
      v3 = "Nor";
      goto LABEL_18;
    case 0xAuLL:
      v2 = "MTLLogicOpXor";
      v3 = "Xor";
      goto LABEL_18;
    case 0xBuLL:
      v2 = "MTLLogicOpEquiv";
      v3 = "Equiv";
      goto LABEL_18;
    case 0xCuLL:
      v2 = "MTLLogicOpRevAnd";
      v3 = "RevAnd";
      goto LABEL_18;
    case 0xDuLL:
      v2 = "MTLLogicOpInvAnd";
      v3 = "InvAnd";
      goto LABEL_18;
    case 0xEuLL:
      v2 = "MTLLogicOpRevOr";
      v3 = "RevOr";
      goto LABEL_18;
    case 0xFuLL:
      v2 = "MTLLogicOpInvOr";
      v3 = "InvOr";
LABEL_18:
      if (a2)
      {
        result = v3;
      }

      else
      {
        result = v2;
      }

      break;
    default:
      result = "Unknown";
      break;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLLogicOperationAsString(GPUTools::MTL *this, int a2)
{
  switch(this)
  {
    case 0uLL:
      v2 = "MTLLogicOperationClear";
      v3 = "Clear";
      goto LABEL_18;
    case 1uLL:
      v2 = "MTLLogicOperationSet";
      v3 = "Set";
      goto LABEL_18;
    case 2uLL:
      v2 = "MTLLogicOperationCopy";
      v3 = "Copy";
      goto LABEL_18;
    case 3uLL:
      v2 = "MTLLogicOperationInverseCopy";
      v3 = "InverseCopy";
      goto LABEL_18;
    case 4uLL:
      v2 = "MTLLogicOperationNoop";
      v3 = "Noop";
      goto LABEL_18;
    case 5uLL:
      v2 = "MTLLogicOperationInverse";
      v3 = "Inverse";
      goto LABEL_18;
    case 6uLL:
      v2 = "MTLLogicOperationAnd";
      v3 = "And";
      goto LABEL_18;
    case 7uLL:
      v2 = "MTLLogicOperationNand";
      v3 = "Nand";
      goto LABEL_18;
    case 8uLL:
      v2 = "MTLLogicOperationOr";
      v3 = "Or";
      goto LABEL_18;
    case 9uLL:
      v2 = "MTLLogicOperationNor";
      v3 = "Nor";
      goto LABEL_18;
    case 0xAuLL:
      v2 = "MTLLogicOperationXor";
      v3 = "Xor";
      goto LABEL_18;
    case 0xBuLL:
      v2 = "MTLLogicOperationEquiv";
      v3 = "Equiv";
      goto LABEL_18;
    case 0xCuLL:
      v2 = "MTLLogicOperationRevAnd";
      v3 = "RevAnd";
      goto LABEL_18;
    case 0xDuLL:
      v2 = "MTLLogicOperationInvAnd";
      v3 = "InvAnd";
      goto LABEL_18;
    case 0xEuLL:
      v2 = "MTLLogicOperationRevOr";
      v3 = "RevOr";
      goto LABEL_18;
    case 0xFuLL:
      v2 = "MTLLogicOperationInvOr";
      v3 = "InvOr";
LABEL_18:
      if (a2)
      {
        result = v3;
      }

      else
      {
        result = v2;
      }

      break;
    default:
      result = "Unknown";
      break;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLMathFloatingPointFunctionsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLMathFloatingPointFunctionsPrecise";
  if (a2)
  {
    v3 = "Precise";
  }

  v4 = "MTLMathFloatingPointFunctionsFast";
  if (a2)
  {
    v4 = "Fast";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLMathModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLMathModeSafe";
  if (a2)
  {
    v3 = "Safe";
  }

  v4 = "MTLMathModeRelaxed";
  if (a2)
  {
    v4 = "Relaxed";
  }

  v5 = "Fast";
  if (!a2)
  {
    v5 = "MTLMathModeFast";
  }

  if (this == 2)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLMatrixLayoutAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLMatrixLayoutRowMajor";
  if (a2)
  {
    v3 = "RowMajor";
  }

  v4 = "MTLMatrixLayoutColumnMajor";
  if (a2)
  {
    v4 = "ColumnMajor";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLMeshTopologyKindAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLMeshTopologyKindTriangle";
  if (a2)
  {
    v3 = "Triangle";
    v4 = "Line";
  }

  else
  {
    v4 = "MTLMeshTopologyKindLine";
  }

  if (this != 2)
  {
    v4 = "Unknown";
  }

  if (this != 3)
  {
    v3 = v4;
  }

  v5 = "MTLMeshTopologyKindNone";
  if (a2)
  {
    v5 = "None";
  }

  v6 = "MTLMeshTopologyKindPoint";
  if (a2)
  {
    v6 = "Point";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLMessageTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLMessageTypeWarning";
  if (a2)
  {
    v3 = "Warning";
  }

  v4 = "MTLMessageTypeError";
  if (a2)
  {
    v4 = "Error";
  }

  v5 = "DebugError";
  if (!a2)
  {
    v5 = "MTLMessageTypeDebugError";
  }

  if (this == 8)
  {
    v2 = v5;
  }

  if (this == 4)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLMotionBorderModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLMotionBorderModeVanish";
  if (a2)
  {
    v3 = "Vanish";
  }

  v4 = "MTLMotionBorderModeClamp";
  if (a2)
  {
    v4 = "Clamp";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLMultisampleDepthResolveFilterAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLMultisampleDepthResolveFilterSample0";
  if (a2)
  {
    v3 = "Sample0";
  }

  v4 = "MTLMultisampleDepthResolveFilterMin";
  if (a2)
  {
    v4 = "Min";
  }

  v5 = "Max";
  if (!a2)
  {
    v5 = "MTLMultisampleDepthResolveFilterMax";
  }

  if (this == 2)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLMultisampleStencilResolveFilterAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLMultisampleStencilResolveFilterSample0";
  if (a2)
  {
    v3 = "Sample0";
  }

  v4 = "MTLMultisampleStencilResolveFilterDepthResolvedSample";
  if (a2)
  {
    v4 = "DepthResolvedSample";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLMutabilityAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLMutabilityImmutable";
  if (a2)
  {
    v3 = "Immutable";
  }

  v4 = "MTLMutabilityMutable";
  if (a2)
  {
    v4 = "Mutable";
  }

  v5 = "Default";
  if (!a2)
  {
    v5 = "MTLMutabilityDefault";
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLPatchTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLPatchTypeQuad";
  if (a2)
  {
    v3 = "Quad";
  }

  v4 = "MTLPatchTypeTriangle";
  if (a2)
  {
    v4 = "Triangle";
  }

  v5 = "None";
  if (!a2)
  {
    v5 = "MTLPatchTypeNone";
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLPipelineOptionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this < 0x800000)
  {
    if (this >= 0x20000)
    {
      if (this >= 0x100000)
      {
        v8 = "MTLPipelineOptionPrivateBufferAccessToVertexDescriptor";
        if (a2)
        {
          v8 = "PrivateBufferAccessToVertexDescriptor";
        }

        v18 = "MTLPipelineOptionPrivateTraceBuffer";
        if (a2)
        {
          v18 = "PrivateTraceBuffer";
        }

        v19 = "MTLPipelineOptionPrivateCompileTimeStatistics";
        if (a2)
        {
          v19 = "PrivateCompileTimeStatistics";
        }

        if (this == 0x400000)
        {
          v2 = v19;
        }

        if (this == 0x200000)
        {
          v2 = v18;
        }

        v11 = this == 0x100000;
      }

      else
      {
        v8 = "MTLPipelineOptionPrivateFunctionWithNoReflection";
        if (a2)
        {
          v8 = "PrivateFunctionWithNoReflection";
        }

        v12 = "MTLPipelineOptionPrivatePerformanceStatistics";
        if (a2)
        {
          v12 = "PrivatePerformanceStatistics";
        }

        v13 = "MTLPipelineOptionPrivatePostVertexDump";
        if (a2)
        {
          v13 = "PrivatePostVertexDump";
        }

        if (this == 0x80000)
        {
          v2 = v13;
        }

        if (this == 0x40000)
        {
          v2 = v12;
        }

        v11 = this == 0x20000;
      }
    }

    else if (this > 3)
    {
      v8 = "MTLPipelineOptionFailOnBinaryArchiveMiss";
      if (a2)
      {
        v8 = "FailOnBinaryArchiveMiss";
      }

      v16 = "MTLPipelineOptionPrivateRequestDriverReflection";
      if (a2)
      {
        v16 = "PrivateRequestDriverReflection";
      }

      v17 = "MTLPipelineOptionPrivateBuiltInArguments";
      if (a2)
      {
        v17 = "PrivateBuiltInArguments";
      }

      if (this == 0x10000)
      {
        v2 = v17;
      }

      if (this == 0x8000)
      {
        v2 = v16;
      }

      v11 = this == 4;
    }

    else
    {
      v8 = "MTLPipelineOptionNone";
      if (a2)
      {
        v8 = "None";
      }

      v9 = "MTLPipelineOptionBindingInfo";
      if (a2)
      {
        v9 = "BindingInfo";
      }

      v10 = "MTLPipelineOptionBufferTypeInfo";
      if (a2)
      {
        v10 = "BufferTypeInfo";
      }

      if (this == 2)
      {
        v2 = v10;
      }

      if (this == 1)
      {
        v2 = v9;
      }

      v11 = this == 0;
    }
  }

  else
  {
    if (this > 0x1FFFFFFF)
    {
      if (this > 0x1FFFFFFFFLL)
      {
        if (this > 0x7FFFFFFFFLL)
        {
          v3 = 0x800000000;
          v4 = "MTLPipelineOptionPrivateShaderValidationChecksEnable";
          if (a2)
          {
            v4 = "PrivateShaderValidationChecksEnable";
          }

          v5 = 0x1000000000;
          v6 = "MTLPipelineOptionPrivateShaderValidationChecksDisable";
          v7 = "PrivateShaderValidationChecksDisable";
        }

        else
        {
          v3 = 0x200000000;
          v4 = "MTLPipelineOptionPrivateForceLateReflection";
          if (a2)
          {
            v4 = "PrivateForceLateReflection";
          }

          v5 = 0x400000000;
          v6 = "MTLPipelineOptionPrivateFailOnFSCacheMiss";
          v7 = "PrivateFailOnFSCacheMiss";
        }

        if (a2)
        {
          v6 = v7;
        }

        if (this == v5)
        {
          v2 = v6;
        }

LABEL_94:
        if (this == v3)
        {
          return v4;
        }

        else
        {
          return v2;
        }
      }

      v3 = 0x20000000;
      v4 = "MTLPipelineOptionPrivateStitchingReflection";
      if (a2)
      {
        v4 = "PrivateStitchingReflection";
      }

      v21 = "MTLPipelineOptionPrivateEnableResourcePatchingInstrumentation";
      v22 = 0x40000000;
      if (a2)
      {
        v21 = "PrivateEnableResourcePatchingInstrumentation";
      }

      v23 = 0x80000000;
      v24 = "MTLPipelineOptionPrivateEnableResourceUsageInstrumentation";
      v25 = "PrivateEnableResourceUsageInstrumentation";
LABEL_80:
      if (a2)
      {
        v24 = v25;
      }

      if (this == v23)
      {
        v2 = v24;
      }

      if (this == v22)
      {
        v2 = v21;
      }

      goto LABEL_94;
    }

    if (this > 0x3FFFFFF)
    {
      v3 = 0x4000000;
      v4 = "MTLPipelineOptionPrivateZeroOutFragmentShaderRTAI";
      if (a2)
      {
        v4 = "PrivateZeroOutFragmentShaderRTAI";
      }

      v21 = "MTLPipelineOptionEnableAssertions";
      v22 = 0x8000000;
      if (a2)
      {
        v21 = "EnableAssertions";
      }

      v23 = 0x10000000;
      v24 = "MTLPipelineOptionPrivateInlinedSymbols";
      v25 = "PrivateInlinedSymbols";
      goto LABEL_80;
    }

    v8 = "MTLPipelineOptionPrivateFrameworkGeneratedReflection";
    if (a2)
    {
      v8 = "PrivateFrameworkGeneratedReflection";
    }

    v14 = "MTLPipelineOptionPrivateDebugInstrumentation";
    if (a2)
    {
      v14 = "PrivateDebugInstrumentation";
    }

    v15 = "MTLPipelineOptionPrivateAlmondRequest";
    if (a2)
    {
      v15 = "PrivateAlmondRequest";
    }

    if (this == 0x2000000)
    {
      v2 = v15;
    }

    if (this == 0x1000000)
    {
      v2 = v14;
    }

    v11 = this == 0x800000;
  }

  if (v11)
  {
    return v8;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLPixelFormatAsString(GPUTools::MTL *this, int a2)
{
  result = "Unknown";
  switch(this)
  {
    case 0uLL:
      v4 = "MTLPixelFormatInvalid";
      v5 = "Invalid";
      goto LABEL_287;
    case 1uLL:
      v4 = "MTLPixelFormatA8Unorm";
      v5 = "A8Unorm";
      goto LABEL_287;
    case 0xAuLL:
      v4 = "MTLPixelFormatR8Unorm";
      v5 = "R8Unorm";
      goto LABEL_287;
    case 0xBuLL:
      v4 = "MTLPixelFormatR8Unorm_sRGB";
      v5 = "R8Unorm_sRGB";
      goto LABEL_287;
    case 0xCuLL:
      v4 = "MTLPixelFormatR8Snorm";
      v5 = "R8Snorm";
      goto LABEL_287;
    case 0xDuLL:
      v4 = "MTLPixelFormatR8Uint";
      v5 = "R8Uint";
      goto LABEL_287;
    case 0xEuLL:
      v4 = "MTLPixelFormatR8Sint";
      v5 = "R8Sint";
      goto LABEL_287;
    case 0x14uLL:
      v4 = "MTLPixelFormatR16Unorm";
      v5 = "R16Unorm";
      goto LABEL_287;
    case 0x16uLL:
      v4 = "MTLPixelFormatR16Snorm";
      v5 = "R16Snorm";
      goto LABEL_287;
    case 0x17uLL:
      v4 = "MTLPixelFormatR16Uint";
      v5 = "R16Uint";
      goto LABEL_287;
    case 0x18uLL:
      v4 = "MTLPixelFormatR16Sint";
      v5 = "R16Sint";
      goto LABEL_287;
    case 0x19uLL:
      v4 = "MTLPixelFormatR16Float";
      v5 = "R16Float";
      goto LABEL_287;
    case 0x1AuLL:
      v4 = "MTLPixelFormatR16Bfloat";
      v5 = "R16Bfloat";
      goto LABEL_287;
    case 0x1EuLL:
      v4 = "MTLPixelFormatRG8Unorm";
      v5 = "RG8Unorm";
      goto LABEL_287;
    case 0x1FuLL:
      v4 = "MTLPixelFormatRG8Unorm_sRGB";
      v5 = "RG8Unorm_sRGB";
      goto LABEL_287;
    case 0x20uLL:
      v4 = "MTLPixelFormatRG8Snorm";
      v5 = "RG8Snorm";
      goto LABEL_287;
    case 0x21uLL:
      v4 = "MTLPixelFormatRG8Uint";
      v5 = "RG8Uint";
      goto LABEL_287;
    case 0x22uLL:
      v4 = "MTLPixelFormatRG8Sint";
      v5 = "RG8Sint";
      goto LABEL_287;
    case 0x28uLL:
      v4 = "MTLPixelFormatB5G6R5Unorm";
      v5 = "B5G6R5Unorm";
      goto LABEL_287;
    case 0x29uLL:
      v4 = "MTLPixelFormatA1BGR5Unorm";
      v5 = "A1BGR5Unorm";
      goto LABEL_287;
    case 0x2AuLL:
      v4 = "MTLPixelFormatABGR4Unorm";
      v5 = "ABGR4Unorm";
      goto LABEL_287;
    case 0x2BuLL:
      v4 = "MTLPixelFormatBGR5A1Unorm";
      v5 = "BGR5A1Unorm";
      goto LABEL_287;
    case 0x2CuLL:
      v4 = "MTLPixelFormatBGRA4Unorm";
      v5 = "BGRA4Unorm";
      goto LABEL_287;
    case 0x35uLL:
      v4 = "MTLPixelFormatR32Uint";
      v5 = "R32Uint";
      goto LABEL_287;
    case 0x36uLL:
      v4 = "MTLPixelFormatR32Sint";
      v5 = "R32Sint";
      goto LABEL_287;
    case 0x37uLL:
      v4 = "MTLPixelFormatR32Float";
      v5 = "R32Float";
      goto LABEL_287;
    case 0x3CuLL:
      v4 = "MTLPixelFormatRG16Unorm";
      v5 = "RG16Unorm";
      goto LABEL_287;
    case 0x3EuLL:
      v4 = "MTLPixelFormatRG16Snorm";
      v5 = "RG16Snorm";
      goto LABEL_287;
    case 0x3FuLL:
      v4 = "MTLPixelFormatRG16Uint";
      v5 = "RG16Uint";
      goto LABEL_287;
    case 0x40uLL:
      v4 = "MTLPixelFormatRG16Sint";
      v5 = "RG16Sint";
      goto LABEL_287;
    case 0x41uLL:
      v4 = "MTLPixelFormatRG16Float";
      v5 = "RG16Float";
      goto LABEL_287;
    case 0x42uLL:
      v4 = "MTLPixelFormatRG16Bfloat";
      v5 = "RG16Bfloat";
      goto LABEL_287;
    case 0x46uLL:
      v4 = "MTLPixelFormatRGBA8Unorm";
      v5 = "RGBA8Unorm";
      goto LABEL_287;
    case 0x47uLL:
      v4 = "MTLPixelFormatRGBA8Unorm_sRGB";
      v5 = "RGBA8Unorm_sRGB";
      goto LABEL_287;
    case 0x48uLL:
      v4 = "MTLPixelFormatRGBA8Snorm";
      v5 = "RGBA8Snorm";
      goto LABEL_287;
    case 0x49uLL:
      v4 = "MTLPixelFormatRGBA8Uint";
      v5 = "RGBA8Uint";
      goto LABEL_287;
    case 0x4AuLL:
      v4 = "MTLPixelFormatRGBA8Sint";
      v5 = "RGBA8Sint";
      goto LABEL_287;
    case 0x50uLL:
      v4 = "MTLPixelFormatBGRA8Unorm";
      v5 = "BGRA8Unorm";
      goto LABEL_287;
    case 0x51uLL:
      v4 = "MTLPixelFormatBGRA8Unorm_sRGB";
      v5 = "BGRA8Unorm_sRGB";
      goto LABEL_287;
    case 0x54uLL:
      v4 = "MTLPixelFormatARGB8Unorm";
      v5 = "ARGB8Unorm";
      goto LABEL_287;
    case 0x55uLL:
      v4 = "MTLPixelFormatARGB8Unorm_sRGB";
      v5 = "ARGB8Unorm_sRGB";
      goto LABEL_287;
    case 0x5AuLL:
      v4 = "MTLPixelFormatRGB10A2Unorm";
      v5 = "RGB10A2Unorm";
      goto LABEL_287;
    case 0x5BuLL:
      v4 = "MTLPixelFormatRGB10A2Uint";
      v5 = "RGB10A2Uint";
      goto LABEL_287;
    case 0x5CuLL:
      v4 = "MTLPixelFormatRG11B10Float";
      v5 = "RG11B10Float";
      goto LABEL_287;
    case 0x5DuLL:
      v4 = "MTLPixelFormatRGB9E5Float";
      v5 = "RGB9E5Float";
      goto LABEL_287;
    case 0x5EuLL:
      v4 = "MTLPixelFormatBGR10A2Unorm";
      v5 = "BGR10A2Unorm";
      goto LABEL_287;
    case 0x67uLL:
      v4 = "MTLPixelFormatRG32Uint";
      v5 = "RG32Uint";
      goto LABEL_287;
    case 0x68uLL:
      v4 = "MTLPixelFormatRG32Sint";
      v5 = "RG32Sint";
      goto LABEL_287;
    case 0x69uLL:
      v4 = "MTLPixelFormatRG32Float";
      v5 = "RG32Float";
      goto LABEL_287;
    case 0x6EuLL:
      v4 = "MTLPixelFormatRGBA16Unorm";
      v5 = "RGBA16Unorm";
      goto LABEL_287;
    case 0x70uLL:
      v4 = "MTLPixelFormatRGBA16Snorm";
      v5 = "RGBA16Snorm";
      goto LABEL_287;
    case 0x71uLL:
      v4 = "MTLPixelFormatRGBA16Uint";
      v5 = "RGBA16Uint";
      goto LABEL_287;
    case 0x72uLL:
      v4 = "MTLPixelFormatRGBA16Sint";
      v5 = "RGBA16Sint";
      goto LABEL_287;
    case 0x73uLL:
      v4 = "MTLPixelFormatRGBA16Float";
      v5 = "RGBA16Float";
      goto LABEL_287;
    case 0x74uLL:
      v4 = "MTLPixelFormatRGBA16Bfloat";
      v5 = "RGBA16Bfloat";
      goto LABEL_287;
    case 0x7BuLL:
      v4 = "MTLPixelFormatRGBA32Uint";
      v5 = "RGBA32Uint";
      goto LABEL_287;
    case 0x7CuLL:
      v4 = "MTLPixelFormatRGBA32Sint";
      v5 = "RGBA32Sint";
      goto LABEL_287;
    case 0x7DuLL:
      v4 = "MTLPixelFormatRGBA32Float";
      v5 = "RGBA32Float";
      goto LABEL_287;
    case 0x82uLL:
      v4 = "MTLPixelFormatBC1_RGBA";
      v5 = "BC1_RGBA";
      goto LABEL_287;
    case 0x83uLL:
      v4 = "MTLPixelFormatBC1_RGBA_sRGB";
      v5 = "BC1_RGBA_sRGB";
      goto LABEL_287;
    case 0x84uLL:
      v4 = "MTLPixelFormatBC2_RGBA";
      v5 = "BC2_RGBA";
      goto LABEL_287;
    case 0x85uLL:
      v4 = "MTLPixelFormatBC2_RGBA_sRGB";
      v5 = "BC2_RGBA_sRGB";
      goto LABEL_287;
    case 0x86uLL:
      v4 = "MTLPixelFormatBC3_RGBA";
      v5 = "BC3_RGBA";
      goto LABEL_287;
    case 0x87uLL:
      v4 = "MTLPixelFormatBC3_RGBA_sRGB";
      v5 = "BC3_RGBA_sRGB";
      goto LABEL_287;
    case 0x8CuLL:
      v4 = "MTLPixelFormatBC4_RUnorm";
      v5 = "BC4_RUnorm";
      goto LABEL_287;
    case 0x8DuLL:
      v4 = "MTLPixelFormatBC4_RSnorm";
      v5 = "BC4_RSnorm";
      goto LABEL_287;
    case 0x8EuLL:
      v4 = "MTLPixelFormatBC5_RGUnorm";
      v5 = "BC5_RGUnorm";
      goto LABEL_287;
    case 0x8FuLL:
      v4 = "MTLPixelFormatBC5_RGSnorm";
      v5 = "BC5_RGSnorm";
      goto LABEL_287;
    case 0x96uLL:
      v4 = "MTLPixelFormatBC6H_RGBFloat";
      v5 = "BC6H_RGBFloat";
      goto LABEL_287;
    case 0x97uLL:
      v4 = "MTLPixelFormatBC6H_RGBUfloat";
      v5 = "BC6H_RGBUfloat";
      goto LABEL_287;
    case 0x98uLL:
      v4 = "MTLPixelFormatBC7_RGBAUnorm";
      v5 = "BC7_RGBAUnorm";
      goto LABEL_287;
    case 0x99uLL:
      v4 = "MTLPixelFormatBC7_RGBAUnorm_sRGB";
      v5 = "BC7_RGBAUnorm_sRGB";
      goto LABEL_287;
    case 0xA0uLL:
      v4 = "MTLPixelFormatPVRTC_RGB_2BPP";
      v5 = "PVRTC_RGB_2BPP";
      goto LABEL_287;
    case 0xA1uLL:
      v4 = "MTLPixelFormatPVRTC_RGB_2BPP_sRGB";
      v5 = "PVRTC_RGB_2BPP_sRGB";
      goto LABEL_287;
    case 0xA2uLL:
      v4 = "MTLPixelFormatPVRTC_RGB_4BPP";
      v5 = "PVRTC_RGB_4BPP";
      goto LABEL_287;
    case 0xA3uLL:
      v4 = "MTLPixelFormatPVRTC_RGB_4BPP_sRGB";
      v5 = "PVRTC_RGB_4BPP_sRGB";
      goto LABEL_287;
    case 0xA4uLL:
      v4 = "MTLPixelFormatPVRTC_RGBA_2BPP";
      v5 = "PVRTC_RGBA_2BPP";
      goto LABEL_287;
    case 0xA5uLL:
      v4 = "MTLPixelFormatPVRTC_RGBA_2BPP_sRGB";
      v5 = "PVRTC_RGBA_2BPP_sRGB";
      goto LABEL_287;
    case 0xA6uLL:
      v4 = "MTLPixelFormatPVRTC_RGBA_4BPP";
      v5 = "PVRTC_RGBA_4BPP";
      goto LABEL_287;
    case 0xA7uLL:
      v4 = "MTLPixelFormatPVRTC_RGBA_4BPP_sRGB";
      v5 = "PVRTC_RGBA_4BPP_sRGB";
      goto LABEL_287;
    case 0xAAuLL:
      v4 = "MTLPixelFormatEAC_R11Unorm";
      v5 = "EAC_R11Unorm";
      goto LABEL_287;
    case 0xACuLL:
      v4 = "MTLPixelFormatEAC_R11Snorm";
      v5 = "EAC_R11Snorm";
      goto LABEL_287;
    case 0xAEuLL:
      v4 = "MTLPixelFormatEAC_RG11Unorm";
      v5 = "EAC_RG11Unorm";
      goto LABEL_287;
    case 0xB0uLL:
      v4 = "MTLPixelFormatEAC_RG11Snorm";
      v5 = "EAC_RG11Snorm";
      goto LABEL_287;
    case 0xB2uLL:
      v4 = "MTLPixelFormatEAC_RGBA8";
      v5 = "EAC_RGBA8";
      goto LABEL_287;
    case 0xB3uLL:
      v4 = "MTLPixelFormatEAC_RGBA8_sRGB";
      v5 = "EAC_RGBA8_sRGB";
      goto LABEL_287;
    case 0xB4uLL:
      v4 = "MTLPixelFormatETC2_RGB8";
      v5 = "ETC2_RGB8";
      goto LABEL_287;
    case 0xB5uLL:
      v4 = "MTLPixelFormatETC2_RGB8_sRGB";
      v5 = "ETC2_RGB8_sRGB";
      goto LABEL_287;
    case 0xB6uLL:
      v4 = "MTLPixelFormatETC2_RGB8A1";
      v5 = "ETC2_RGB8A1";
      goto LABEL_287;
    case 0xB7uLL:
      v4 = "MTLPixelFormatETC2_RGB8A1_sRGB";
      v5 = "ETC2_RGB8A1_sRGB";
      goto LABEL_287;
    case 0xB9uLL:
      v4 = "MTLPixelFormatASTC_4x2_sRGB";
      v5 = "ASTC_4x2_sRGB";
      goto LABEL_287;
    case 0xBAuLL:
      v4 = "MTLPixelFormatASTC_4x4_sRGB";
      v5 = "ASTC_4x4_sRGB";
      goto LABEL_287;
    case 0xBBuLL:
      v4 = "MTLPixelFormatASTC_5x4_sRGB";
      v5 = "ASTC_5x4_sRGB";
      goto LABEL_287;
    case 0xBCuLL:
      v4 = "MTLPixelFormatASTC_5x5_sRGB";
      v5 = "ASTC_5x5_sRGB";
      goto LABEL_287;
    case 0xBDuLL:
      v4 = "MTLPixelFormatASTC_6x5_sRGB";
      v5 = "ASTC_6x5_sRGB";
      goto LABEL_287;
    case 0xBEuLL:
      v4 = "MTLPixelFormatASTC_6x6_sRGB";
      v5 = "ASTC_6x6_sRGB";
      goto LABEL_287;
    case 0xBFuLL:
      v4 = "MTLPixelFormatASTC_8x4_sRGB";
      v5 = "ASTC_8x4_sRGB";
      goto LABEL_287;
    case 0xC0uLL:
      v4 = "MTLPixelFormatASTC_8x5_sRGB";
      v5 = "ASTC_8x5_sRGB";
      goto LABEL_287;
    case 0xC1uLL:
      v4 = "MTLPixelFormatASTC_8x6_sRGB";
      v5 = "ASTC_8x6_sRGB";
      goto LABEL_287;
    case 0xC2uLL:
      v4 = "MTLPixelFormatASTC_8x8_sRGB";
      v5 = "ASTC_8x8_sRGB";
      goto LABEL_287;
    case 0xC3uLL:
      v4 = "MTLPixelFormatASTC_10x5_sRGB";
      v5 = "ASTC_10x5_sRGB";
      goto LABEL_287;
    case 0xC4uLL:
      v4 = "MTLPixelFormatASTC_10x6_sRGB";
      v5 = "ASTC_10x6_sRGB";
      goto LABEL_287;
    case 0xC5uLL:
      v4 = "MTLPixelFormatASTC_10x8_sRGB";
      v5 = "ASTC_10x8_sRGB";
      goto LABEL_287;
    case 0xC6uLL:
      v4 = "MTLPixelFormatASTC_10x10_sRGB";
      v5 = "ASTC_10x10_sRGB";
      goto LABEL_287;
    case 0xC7uLL:
      v4 = "MTLPixelFormatASTC_12x10_sRGB";
      v5 = "ASTC_12x10_sRGB";
      goto LABEL_287;
    case 0xC8uLL:
      v4 = "MTLPixelFormatASTC_12x12_sRGB";
      v5 = "ASTC_12x12_sRGB";
      goto LABEL_287;
    case 0xCBuLL:
      v4 = "MTLPixelFormatASTC_4x2_LDR";
      v5 = "ASTC_4x2_LDR";
      goto LABEL_287;
    case 0xCCuLL:
      v4 = "MTLPixelFormatASTC_4x4_LDR";
      v5 = "ASTC_4x4_LDR";
      goto LABEL_287;
    case 0xCDuLL:
      v4 = "MTLPixelFormatASTC_5x4_LDR";
      v5 = "ASTC_5x4_LDR";
      goto LABEL_287;
    case 0xCEuLL:
      v4 = "MTLPixelFormatASTC_5x5_LDR";
      v5 = "ASTC_5x5_LDR";
      goto LABEL_287;
    case 0xCFuLL:
      v4 = "MTLPixelFormatASTC_6x5_LDR";
      v5 = "ASTC_6x5_LDR";
      goto LABEL_287;
    case 0xD0uLL:
      v4 = "MTLPixelFormatASTC_6x6_LDR";
      v5 = "ASTC_6x6_LDR";
      goto LABEL_287;
    case 0xD1uLL:
      v4 = "MTLPixelFormatASTC_8x4_LDR";
      v5 = "ASTC_8x4_LDR";
      goto LABEL_287;
    case 0xD2uLL:
      v4 = "MTLPixelFormatASTC_8x5_LDR";
      v5 = "ASTC_8x5_LDR";
      goto LABEL_287;
    case 0xD3uLL:
      v4 = "MTLPixelFormatASTC_8x6_LDR";
      v5 = "ASTC_8x6_LDR";
      goto LABEL_287;
    case 0xD4uLL:
      v4 = "MTLPixelFormatASTC_8x8_LDR";
      v5 = "ASTC_8x8_LDR";
      goto LABEL_287;
    case 0xD5uLL:
      v4 = "MTLPixelFormatASTC_10x5_LDR";
      v5 = "ASTC_10x5_LDR";
      goto LABEL_287;
    case 0xD6uLL:
      v4 = "MTLPixelFormatASTC_10x6_LDR";
      v5 = "ASTC_10x6_LDR";
      goto LABEL_287;
    case 0xD7uLL:
      v4 = "MTLPixelFormatASTC_10x8_LDR";
      v5 = "ASTC_10x8_LDR";
      goto LABEL_287;
    case 0xD8uLL:
      v4 = "MTLPixelFormatASTC_10x10_LDR";
      v5 = "ASTC_10x10_LDR";
      goto LABEL_287;
    case 0xD9uLL:
      v4 = "MTLPixelFormatASTC_12x10_LDR";
      v5 = "ASTC_12x10_LDR";
      goto LABEL_287;
    case 0xDAuLL:
      v4 = "MTLPixelFormatASTC_12x12_LDR";
      v5 = "ASTC_12x12_LDR";
      goto LABEL_287;
    case 0xDDuLL:
      v4 = "MTLPixelFormatASTC_4x2_HDR";
      v5 = "ASTC_4x2_HDR";
      goto LABEL_287;
    case 0xDEuLL:
      v4 = "MTLPixelFormatASTC_4x4_HDR";
      v5 = "ASTC_4x4_HDR";
      goto LABEL_287;
    case 0xDFuLL:
      v4 = "MTLPixelFormatASTC_5x4_HDR";
      v5 = "ASTC_5x4_HDR";
      goto LABEL_287;
    case 0xE0uLL:
      v4 = "MTLPixelFormatASTC_5x5_HDR";
      v5 = "ASTC_5x5_HDR";
      goto LABEL_287;
    case 0xE1uLL:
      v4 = "MTLPixelFormatASTC_6x5_HDR";
      v5 = "ASTC_6x5_HDR";
      goto LABEL_287;
    case 0xE2uLL:
      v4 = "MTLPixelFormatASTC_6x6_HDR";
      v5 = "ASTC_6x6_HDR";
      goto LABEL_287;
    case 0xE3uLL:
      v4 = "MTLPixelFormatASTC_8x4_HDR";
      v5 = "ASTC_8x4_HDR";
      goto LABEL_287;
    case 0xE4uLL:
      v4 = "MTLPixelFormatASTC_8x5_HDR";
      v5 = "ASTC_8x5_HDR";
      goto LABEL_287;
    case 0xE5uLL:
      v4 = "MTLPixelFormatASTC_8x6_HDR";
      v5 = "ASTC_8x6_HDR";
      goto LABEL_287;
    case 0xE6uLL:
      v4 = "MTLPixelFormatASTC_8x8_HDR";
      v5 = "ASTC_8x8_HDR";
      goto LABEL_287;
    case 0xE7uLL:
      v4 = "MTLPixelFormatASTC_10x5_HDR";
      v5 = "ASTC_10x5_HDR";
      goto LABEL_287;
    case 0xE8uLL:
      v4 = "MTLPixelFormatASTC_10x6_HDR";
      v5 = "ASTC_10x6_HDR";
      goto LABEL_287;
    case 0xE9uLL:
      v4 = "MTLPixelFormatASTC_10x8_HDR";
      v5 = "ASTC_10x8_HDR";
      goto LABEL_287;
    case 0xEAuLL:
      v4 = "MTLPixelFormatASTC_10x10_HDR";
      v5 = "ASTC_10x10_HDR";
      goto LABEL_287;
    case 0xEBuLL:
      v4 = "MTLPixelFormatASTC_12x10_HDR";
      v5 = "ASTC_12x10_HDR";
      goto LABEL_287;
    case 0xECuLL:
      v4 = "MTLPixelFormatASTC_12x12_HDR";
      v5 = "ASTC_12x12_HDR";
      goto LABEL_287;
    case 0xF0uLL:
      v4 = "MTLPixelFormatGBGR422";
      v5 = "GBGR422";
      goto LABEL_287;
    case 0xF1uLL:
      v4 = "MTLPixelFormatBGRG422";
      v5 = "BGRG422";
      goto LABEL_287;
    case 0xFAuLL:
      v4 = "MTLPixelFormatDepth16Unorm";
      v5 = "Depth16Unorm";
      goto LABEL_287;
    case 0xFCuLL:
      v4 = "MTLPixelFormatDepth32Float";
      v5 = "Depth32Float";
      goto LABEL_287;
    case 0xFDuLL:
      v4 = "MTLPixelFormatStencil8";
      v5 = "Stencil8";
      goto LABEL_287;
    case 0xFFuLL:
      v4 = "MTLPixelFormatDepth24Unorm_Stencil8";
      v5 = "Depth24Unorm_Stencil8";
      goto LABEL_287;
    case 0x104uLL:
      v4 = "MTLPixelFormatDepth32Float_Stencil8";
      v5 = "Depth32Float_Stencil8";
      goto LABEL_287;
    case 0x105uLL:
      v4 = "MTLPixelFormatX32_Stencil8";
      v5 = "X32_Stencil8";
      goto LABEL_287;
    case 0x106uLL:
      v4 = "MTLPixelFormatX24_Stencil8";
      v5 = "X24_Stencil8";
      goto LABEL_287;
    case 0x12CuLL:
      v4 = "MTLPixelFormatRGBX8Unorm";
      v5 = "RGBX8Unorm";
      goto LABEL_287;
    case 0x12DuLL:
      v4 = "MTLPixelFormatRGBX8Unorm_sRGB";
      v5 = "RGBX8Unorm_sRGB";
      goto LABEL_287;
    case 0x12EuLL:
      v4 = "MTLPixelFormatRGBX8Snorm";
      v5 = "RGBX8Snorm";
      goto LABEL_287;
    case 0x12FuLL:
      v4 = "MTLPixelFormatRGBX8Uint";
      v5 = "RGBX8Uint";
      goto LABEL_287;
    case 0x130uLL:
      v4 = "MTLPixelFormatRGBX8Sint";
      v5 = "RGBX8Sint";
      goto LABEL_287;
    case 0x139uLL:
      v4 = "MTLPixelFormatRGBX16Uint";
      v5 = "RGBX16Uint";
      goto LABEL_287;
    case 0x13AuLL:
      v4 = "MTLPixelFormatRGBX16Sint";
      v5 = "RGBX16Sint";
      goto LABEL_287;
    case 0x13BuLL:
      v4 = "MTLPixelFormatRGBX16Float";
      v5 = "RGBX16Float";
      goto LABEL_287;
    case 0x143uLL:
      v4 = "MTLPixelFormatRGBX32Uint";
      v5 = "RGBX32Uint";
      goto LABEL_287;
    case 0x144uLL:
      v4 = "MTLPixelFormatRGBX32Sint";
      v5 = "RGBX32Sint";
      goto LABEL_287;
    case 0x145uLL:
      v4 = "MTLPixelFormatRGBX32Float";
      v5 = "RGBX32Float";
      goto LABEL_287;
    case 0x1F4uLL:
      v4 = "MTLPixelFormatYCBCR8_420_2P";
      v5 = "YCBCR8_420_2P";
      goto LABEL_287;
    case 0x1F5uLL:
      v4 = "MTLPixelFormatYCBCR8_422_1P";
      v5 = "YCBCR8_422_1P";
      goto LABEL_287;
    case 0x1F6uLL:
      v4 = "MTLPixelFormatYCBCR8_422_2P";
      v5 = "YCBCR8_422_2P";
      goto LABEL_287;
    case 0x1F7uLL:
      v4 = "MTLPixelFormatYCBCR8_444_2P";
      v5 = "YCBCR8_444_2P";
      goto LABEL_287;
    case 0x1F8uLL:
      v4 = "MTLPixelFormatYCBCR10_444_1P";
      v5 = "YCBCR10_444_1P";
      goto LABEL_287;
    case 0x1F9uLL:
      v4 = "MTLPixelFormatYCBCR10_420_2P";
      v5 = "YCBCR10_420_2P";
      goto LABEL_287;
    case 0x1FAuLL:
      v4 = "MTLPixelFormatYCBCR10_422_2P";
      v5 = "YCBCR10_422_2P";
      goto LABEL_287;
    case 0x1FBuLL:
      v4 = "MTLPixelFormatYCBCR10_444_2P";
      v5 = "YCBCR10_444_2P";
      goto LABEL_287;
    case 0x1FCuLL:
      v4 = "MTLPixelFormatYCBCR10_420_2P_PACKED";
      v5 = "YCBCR10_420_2P_PACKED";
      goto LABEL_287;
    case 0x1FDuLL:
      v4 = "MTLPixelFormatYCBCR10_422_2P_PACKED";
      v5 = "YCBCR10_422_2P_PACKED";
      goto LABEL_287;
    case 0x1FEuLL:
      v4 = "MTLPixelFormatYCBCR10_444_2P_PACKED";
      v5 = "YCBCR10_444_2P_PACKED";
      goto LABEL_287;
    case 0x208uLL:
      v4 = "MTLPixelFormatYCBCR8_420_2P_sRGB";
      v5 = "YCBCR8_420_2P_sRGB";
      goto LABEL_287;
    case 0x209uLL:
      v4 = "MTLPixelFormatYCBCR8_422_1P_sRGB";
      v5 = "YCBCR8_422_1P_sRGB";
      goto LABEL_287;
    case 0x20AuLL:
      v4 = "MTLPixelFormatYCBCR8_422_2P_sRGB";
      v5 = "YCBCR8_422_2P_sRGB";
      goto LABEL_287;
    case 0x20BuLL:
      v4 = "MTLPixelFormatYCBCR8_444_2P_sRGB";
      v5 = "YCBCR8_444_2P_sRGB";
      goto LABEL_287;
    case 0x20CuLL:
      v4 = "MTLPixelFormatYCBCR10_444_1P_sRGB";
      v5 = "YCBCR10_444_1P_sRGB";
      goto LABEL_287;
    case 0x20DuLL:
      v4 = "MTLPixelFormatYCBCR10_420_2P_sRGB";
      v5 = "YCBCR10_420_2P_sRGB";
      goto LABEL_287;
    case 0x20EuLL:
      v4 = "MTLPixelFormatYCBCR10_422_2P_sRGB";
      v5 = "YCBCR10_422_2P_sRGB";
      goto LABEL_287;
    case 0x20FuLL:
      v4 = "MTLPixelFormatYCBCR10_444_2P_sRGB";
      v5 = "YCBCR10_444_2P_sRGB";
      goto LABEL_287;
    case 0x210uLL:
      v4 = "MTLPixelFormatYCBCR10_420_2P_PACKED_sRGB";
      v5 = "YCBCR10_420_2P_PACKED_sRGB";
      goto LABEL_287;
    case 0x211uLL:
      v4 = "MTLPixelFormatYCBCR10_422_2P_PACKED_sRGB";
      v5 = "YCBCR10_422_2P_PACKED_sRGB";
      goto LABEL_287;
    case 0x212uLL:
      v4 = "MTLPixelFormatYCBCR10_444_2P_PACKED_sRGB";
      v5 = "YCBCR10_444_2P_PACKED_sRGB";
      goto LABEL_287;
    case 0x21CuLL:
      v4 = "MTLPixelFormatRGB8_420_2P";
      v5 = "RGB8_420_2P";
      goto LABEL_287;
    case 0x21DuLL:
      v4 = "MTLPixelFormatRGB8_422_2P";
      v5 = "RGB8_422_2P";
      goto LABEL_287;
    case 0x21EuLL:
      v4 = "MTLPixelFormatRGB8_444_2P";
      v5 = "RGB8_444_2P";
      goto LABEL_287;
    case 0x21FuLL:
      v4 = "MTLPixelFormatRGB10_420_2P";
      v5 = "RGB10_420_2P";
      goto LABEL_287;
    case 0x220uLL:
      v4 = "MTLPixelFormatRGB10_422_2P";
      v5 = "RGB10_422_2P";
      goto LABEL_287;
    case 0x221uLL:
      v4 = "MTLPixelFormatRGB10_444_2P";
      v5 = "RGB10_444_2P";
      goto LABEL_287;
    case 0x222uLL:
      v4 = "MTLPixelFormatRGB10_420_2P_PACKED";
      v5 = "RGB10_420_2P_PACKED";
      goto LABEL_287;
    case 0x223uLL:
      v4 = "MTLPixelFormatRGB10_422_2P_PACKED";
      v5 = "RGB10_422_2P_PACKED";
      goto LABEL_287;
    case 0x224uLL:
      v4 = "MTLPixelFormatRGB10_444_2P_PACKED";
      v5 = "RGB10_444_2P_PACKED";
      goto LABEL_287;
    case 0x226uLL:
      v4 = "MTLPixelFormatRGB10A8_2P_XR10";
      v5 = "RGB10A8_2P_XR10";
      goto LABEL_287;
    case 0x227uLL:
      v4 = "MTLPixelFormatRGB10A8_2P_XR10_sRGB";
      v5 = "RGB10A8_2P_XR10_sRGB";
      goto LABEL_287;
    case 0x228uLL:
      v4 = "MTLPixelFormatBGRA10_XR";
      v5 = "BGRA10_XR";
      goto LABEL_287;
    case 0x229uLL:
      v4 = "MTLPixelFormatBGRA10_XR_sRGB";
      v5 = "BGRA10_XR_sRGB";
      goto LABEL_287;
    case 0x22AuLL:
      v4 = "MTLPixelFormatBGR10_XR";
      v5 = "BGR10_XR";
      goto LABEL_287;
    case 0x22BuLL:
      v4 = "MTLPixelFormatBGR10_XR_sRGB";
      v5 = "BGR10_XR_sRGB";
      goto LABEL_287;
    case 0x22CuLL:
      v4 = "MTLPixelFormatRGBA16Float_XR";
      v5 = "RGBA16Float_XR";
      goto LABEL_287;
    case 0x230uLL:
      v4 = "MTLPixelFormatYCBCRA8_444_1P";
      v5 = "YCBCRA8_444_1P";
      goto LABEL_287;
    case 0x232uLL:
      v4 = "MTLPixelFormatYCBCR8_422_1P_REV";
      v5 = "YCBCR8_422_1P_REV";
      goto LABEL_287;
    case 0x233uLL:
      v4 = "MTLPixelFormatYCBCR10_444_1P_PQ";
      v5 = "YCBCR10_444_1P_PQ";
      goto LABEL_287;
    case 0x234uLL:
      v4 = "MTLPixelFormatYCBCR10_420_2P_PQ";
      v5 = "YCBCR10_420_2P_PQ";
      goto LABEL_287;
    case 0x235uLL:
      v4 = "MTLPixelFormatYCBCR10_422_2P_PQ";
      v5 = "YCBCR10_422_2P_PQ";
      goto LABEL_287;
    case 0x236uLL:
      v4 = "MTLPixelFormatYCBCR10_444_2P_PQ";
      v5 = "YCBCR10_444_2P_PQ";
      goto LABEL_287;
    case 0x237uLL:
      v4 = "MTLPixelFormatYCBCR10_420_2P_PACKED_PQ";
      v5 = "YCBCR10_420_2P_PACKED_PQ";
      goto LABEL_287;
    case 0x238uLL:
      v4 = "MTLPixelFormatYCBCR10_422_2P_PACKED_PQ";
      v5 = "YCBCR10_422_2P_PACKED_PQ";
      goto LABEL_287;
    case 0x239uLL:
      v4 = "MTLPixelFormatYCBCR10_444_2P_PACKED_PQ";
      v5 = "YCBCR10_444_2P_PACKED_PQ";
      goto LABEL_287;
    case 0x23AuLL:
      v4 = "MTLPixelFormatYCBCR12_420_2P";
      v5 = "YCBCR12_420_2P";
      goto LABEL_287;
    case 0x23BuLL:
      v4 = "MTLPixelFormatYCBCR12_422_2P";
      v5 = "YCBCR12_422_2P";
      goto LABEL_287;
    case 0x23CuLL:
      v4 = "MTLPixelFormatYCBCR12_444_2P";
      v5 = "YCBCR12_444_2P";
      goto LABEL_287;
    case 0x23DuLL:
      v4 = "MTLPixelFormatYCBCR12_420_2P_PQ";
      v5 = "YCBCR12_420_2P_PQ";
      goto LABEL_287;
    case 0x23EuLL:
      v4 = "MTLPixelFormatYCBCR12_422_2P_PQ";
      v5 = "YCBCR12_422_2P_PQ";
      goto LABEL_287;
    case 0x23FuLL:
      v4 = "MTLPixelFormatYCBCR12_444_2P_PQ";
      v5 = "YCBCR12_444_2P_PQ";
      goto LABEL_287;
    case 0x240uLL:
      v4 = "MTLPixelFormatR10Unorm_X6";
      v5 = "R10Unorm_X6";
      goto LABEL_287;
    case 0x241uLL:
      v4 = "MTLPixelFormatR10Unorm_X6_sRGB";
      v5 = "R10Unorm_X6_sRGB";
      goto LABEL_287;
    case 0x242uLL:
      v4 = "MTLPixelFormatRG10Unorm_X12";
      v5 = "RG10Unorm_X12";
      goto LABEL_287;
    case 0x243uLL:
      v4 = "MTLPixelFormatRG10Unorm_X12_sRGB";
      v5 = "RG10Unorm_X12_sRGB";
      goto LABEL_287;
    case 0x244uLL:
      v4 = "MTLPixelFormatYCBCR12_420_2P_PACKED";
      v5 = "YCBCR12_420_2P_PACKED";
      goto LABEL_287;
    case 0x245uLL:
      v4 = "MTLPixelFormatYCBCR12_422_2P_PACKED";
      v5 = "YCBCR12_422_2P_PACKED";
      goto LABEL_287;
    case 0x246uLL:
      v4 = "MTLPixelFormatYCBCR12_444_2P_PACKED";
      v5 = "YCBCR12_444_2P_PACKED";
      goto LABEL_287;
    case 0x247uLL:
      v4 = "MTLPixelFormatYCBCR12_420_2P_PACKED_PQ";
      v5 = "YCBCR12_420_2P_PACKED_PQ";
      goto LABEL_287;
    case 0x248uLL:
      v4 = "MTLPixelFormatYCBCR12_422_2P_PACKED_PQ";
      v5 = "YCBCR12_422_2P_PACKED_PQ";
      goto LABEL_287;
    case 0x249uLL:
      v4 = "MTLPixelFormatYCBCR12_444_2P_PACKED_PQ";
      v5 = "YCBCR12_444_2P_PACKED_PQ";
      goto LABEL_287;
    case 0x24AuLL:
      v4 = "MTLPixelFormatRGB10A2Unorm_sRGB";
      v5 = "RGB10A2Unorm_sRGB";
      goto LABEL_287;
    case 0x24BuLL:
      v4 = "MTLPixelFormatRGB10A2Unorm_PQ";
      v5 = "RGB10A2Unorm_PQ";
      goto LABEL_287;
    case 0x24CuLL:
      v4 = "MTLPixelFormatR10Unorm_PACKED";
      v5 = "R10Unorm_PACKED";
      goto LABEL_287;
    case 0x24DuLL:
      v4 = "MTLPixelFormatRG10Unorm_PACKED";
      v5 = "RG10Unorm_PACKED";
      goto LABEL_287;
    case 0x24EuLL:
      v4 = "MTLPixelFormatYCBCR10_444_1P_XR";
      v5 = "YCBCR10_444_1P_XR";
      goto LABEL_287;
    case 0x24FuLL:
      v4 = "MTLPixelFormatYCBCR10_420_2P_XR";
      v5 = "YCBCR10_420_2P_XR";
      goto LABEL_287;
    case 0x250uLL:
      v4 = "MTLPixelFormatYCBCR10_422_2P_XR";
      v5 = "YCBCR10_422_2P_XR";
      goto LABEL_287;
    case 0x251uLL:
      v4 = "MTLPixelFormatYCBCR10_444_2P_XR";
      v5 = "YCBCR10_444_2P_XR";
      goto LABEL_287;
    case 0x252uLL:
      v4 = "MTLPixelFormatYCBCR10_420_2P_PACKED_XR";
      v5 = "YCBCR10_420_2P_PACKED_XR";
      goto LABEL_287;
    case 0x253uLL:
      v4 = "MTLPixelFormatYCBCR10_422_2P_PACKED_XR";
      v5 = "YCBCR10_422_2P_PACKED_XR";
      goto LABEL_287;
    case 0x254uLL:
      v4 = "MTLPixelFormatYCBCR10_444_2P_PACKED_XR";
      v5 = "YCBCR10_444_2P_PACKED_XR";
      goto LABEL_287;
    case 0x255uLL:
      v4 = "MTLPixelFormatYCBCR12_420_2P_XR";
      v5 = "YCBCR12_420_2P_XR";
      goto LABEL_287;
    case 0x256uLL:
      v4 = "MTLPixelFormatYCBCR12_422_2P_XR";
      v5 = "YCBCR12_422_2P_XR";
      goto LABEL_287;
    case 0x257uLL:
      v4 = "MTLPixelFormatYCBCR12_444_2P_XR";
      v5 = "YCBCR12_444_2P_XR";
      goto LABEL_287;
    case 0x258uLL:
      v4 = "MTLPixelFormatYCBCR12_420_2P_PACKED_XR";
      v5 = "YCBCR12_420_2P_PACKED_XR";
      goto LABEL_287;
    case 0x259uLL:
      v4 = "MTLPixelFormatYCBCR12_422_2P_PACKED_XR";
      v5 = "YCBCR12_422_2P_PACKED_XR";
      goto LABEL_287;
    case 0x25AuLL:
      v4 = "MTLPixelFormatYCBCR12_444_2P_PACKED_XR";
      v5 = "YCBCR12_444_2P_PACKED_XR";
      goto LABEL_287;
    case 0x25BuLL:
      v4 = "MTLPixelFormatR12Unorm_X4";
      v5 = "R12Unorm_X4";
      goto LABEL_287;
    case 0x25CuLL:
      v4 = "MTLPixelFormatR12Unorm_X4_PQ";
      v5 = "R12Unorm_X4_PQ";
      goto LABEL_287;
    case 0x25DuLL:
      v4 = "MTLPixelFormatRG12Unorm_X8";
      v5 = "RG12Unorm_X8";
      goto LABEL_287;
    case 0x25EuLL:
      v4 = "MTLPixelFormatR10Unorm_X6_PQ";
      v5 = "R10Unorm_X6_PQ";
      goto LABEL_287;
    case 0x25FuLL:
      v4 = "MTLPixelFormatYCBCR10_444_1P_HLG";
      v5 = "YCBCR10_444_1P_HLG";
      goto LABEL_287;
    case 0x260uLL:
      v4 = "MTLPixelFormatYCBCR10_420_2P_HLG";
      v5 = "YCBCR10_420_2P_HLG";
      goto LABEL_287;
    case 0x261uLL:
      v4 = "MTLPixelFormatYCBCR10_422_2P_HLG";
      v5 = "YCBCR10_422_2P_HLG";
      goto LABEL_287;
    case 0x262uLL:
      v4 = "MTLPixelFormatYCBCR10_444_2P_HLG";
      v5 = "YCBCR10_444_2P_HLG";
      goto LABEL_287;
    case 0x263uLL:
      v4 = "MTLPixelFormatYCBCR10_420_2P_PACKED_HLG";
      v5 = "YCBCR10_420_2P_PACKED_HLG";
      goto LABEL_287;
    case 0x264uLL:
      v4 = "MTLPixelFormatYCBCR10_422_2P_PACKED_HLG";
      v5 = "YCBCR10_422_2P_PACKED_HLG";
      goto LABEL_287;
    case 0x265uLL:
      v4 = "MTLPixelFormatYCBCR10_444_2P_PACKED_HLG";
      v5 = "YCBCR10_444_2P_PACKED_HLG";
      goto LABEL_287;
    case 0x267uLL:
      v4 = "MTLPixelFormatYCBCR12_420_2P_HLG";
      v5 = "YCBCR12_420_2P_HLG";
      goto LABEL_287;
    case 0x268uLL:
      v4 = "MTLPixelFormatYCBCR12_422_2P_HLG";
      v5 = "YCBCR12_422_2P_HLG";
      goto LABEL_287;
    case 0x269uLL:
      v4 = "MTLPixelFormatYCBCR12_444_2P_HLG";
      v5 = "YCBCR12_444_2P_HLG";
      goto LABEL_287;
    case 0x26AuLL:
      v4 = "MTLPixelFormatYCBCR12_420_2P_PACKED_HLG";
      v5 = "YCBCR12_420_2P_PACKED_HLG";
      goto LABEL_287;
    case 0x26BuLL:
      v4 = "MTLPixelFormatYCBCR12_422_2P_PACKED_HLG";
      v5 = "YCBCR12_422_2P_PACKED_HLG";
      goto LABEL_287;
    case 0x26CuLL:
      v4 = "MTLPixelFormatYCBCR12_444_2P_PACKED_HLG";
      v5 = "YCBCR12_444_2P_PACKED_HLG";
      goto LABEL_287;
    case 0x26DuLL:
      v4 = "MTLPixelFormatR10Unorm_X6_HLG";
      v5 = "R10Unorm_X6_HLG";
      goto LABEL_287;
    case 0x26EuLL:
      v4 = "MTLPixelFormatR12Unorm_X4_HLG";
      v5 = "R12Unorm_X4_HLG";
      goto LABEL_287;
    case 0x26FuLL:
      v4 = "MTLPixelFormatRGB10A2Unorm_HLG";
      v5 = "RGB10A2Unorm_HLG";
      goto LABEL_287;
    case 0x270uLL:
      v4 = "MTLPixelFormatRGB10A8_2P";
      v5 = "RGB10A8_2P";
      goto LABEL_287;
    case 0x271uLL:
      v4 = "MTLPixelFormatRGB10A8_2P_sRGB";
      v5 = "RGB10A8_2P_sRGB";
      goto LABEL_287;
    case 0x272uLL:
      v4 = "MTLPixelFormatRGB10A8_2P_PQ";
      v5 = "RGB10A8_2P_PQ";
      goto LABEL_287;
    case 0x273uLL:
      v4 = "MTLPixelFormatRGB10A8_2P_HLG";
      v5 = "RGB10A8_2P_HLG";
      goto LABEL_287;
    case 0x274uLL:
      v4 = "MTLPixelFormatBGR10A2Unorm_sRGB";
      v5 = "BGR10A2Unorm_sRGB";
      goto LABEL_287;
    case 0x275uLL:
      v4 = "MTLPixelFormatBGR10A2Unorm_PQ";
      v5 = "BGR10A2Unorm_PQ";
      goto LABEL_287;
    case 0x276uLL:
      v4 = "MTLPixelFormatBGRA10Uint_PACKED";
      v5 = "BGRA10Uint_PACKED";
      goto LABEL_287;
    case 0x277uLL:
      v4 = "MTLPixelFormatBGRA10_XR_PACKED";
      v5 = "BGRA10_XR_PACKED";
      goto LABEL_287;
    case 0x278uLL:
      v4 = "MTLPixelFormatBGRA10_XR_PACKED_sRGB";
      v5 = "BGRA10_XR_PACKED_sRGB";
      goto LABEL_287;
    case 0x279uLL:
      v4 = "MTLPixelFormatBGRA10Unorm_PACKED";
      v5 = "BGRA10Unorm_PACKED";
      goto LABEL_287;
    case 0x27AuLL:
      v4 = "MTLPixelFormatBGRA10Unorm_PACKED_sRGB";
      v5 = "BGRA10Unorm_PACKED_sRGB";
      goto LABEL_287;
    case 0x27BuLL:
      v4 = "MTLPixelFormatBGRA10Unorm_PACKED_HLG";
      v5 = "BGRA10Unorm_PACKED_HLG";
      goto LABEL_287;
    case 0x27CuLL:
      v4 = "MTLPixelFormatBGRA10Unorm_PACKED_PQ";
      v5 = "BGRA10Unorm_PACKED_PQ";
      goto LABEL_287;
    case 0x27DuLL:
      v4 = "MTLPixelFormatBGRA10Uint";
      v5 = "BGRA10Uint";
      goto LABEL_287;
    case 0x27EuLL:
      v4 = "MTLPixelFormatBGRA10Unorm";
      v5 = "BGRA10Unorm";
      goto LABEL_287;
    case 0x27FuLL:
      v4 = "MTLPixelFormatBGRA10Unorm_sRGB";
      v5 = "BGRA10Unorm_sRGB";
      goto LABEL_287;
    case 0x280uLL:
      v4 = "MTLPixelFormatBGRA10Unorm_HLG";
      v5 = "BGRA10Unorm_HLG";
      goto LABEL_287;
    case 0x281uLL:
      v4 = "MTLPixelFormatBGRA10Unorm_PQ";
      v5 = "BGRA10Unorm_PQ";
      goto LABEL_287;
    case 0x282uLL:
      v4 = "MTLPixelFormatR10Uint_X6";
      v5 = "R10Uint_X6";
      goto LABEL_287;
    case 0x283uLL:
      v4 = "MTLPixelFormatR10Uint_PACKED";
      v5 = "R10Uint_PACKED";
      goto LABEL_287;
    case 0x284uLL:
      v4 = "MTLPixelFormatRG10Uint_X12";
      v5 = "RG10Uint_X12";
      goto LABEL_287;
    case 0x285uLL:
      v4 = "MTLPixelFormatRG10Uint_PACKED";
      v5 = "RG10Uint_PACKED";
      goto LABEL_287;
    case 0x286uLL:
      v4 = "MTLPixelFormatR12Uint_X4";
      v5 = "R12Uint_X4";
      goto LABEL_287;
    case 0x287uLL:
      v4 = "MTLPixelFormatR12Uint_PACKED";
      v5 = "R12Uint_PACKED";
      goto LABEL_287;
    case 0x288uLL:
      v4 = "MTLPixelFormatRG12Uint_X8";
      v5 = "RG12Uint_X8";
      goto LABEL_287;
    case 0x289uLL:
      v4 = "MTLPixelFormatRG12Uint_PACKED";
      v5 = "RG12Uint_PACKED";
      goto LABEL_287;
    case 0x28AuLL:
      v4 = "MTLPixelFormatRGB10A8Uint_2P";
      v5 = "RGB10A8Uint_2P";
LABEL_287:
      if (a2)
      {
        result = v5;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      return result;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLPixelFormatFlagsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this < 0x8000)
  {
    if (this > 127)
    {
      if (this <= 2047)
      {
        v3 = "MTLPixelFormatFlagsIsRestrictedFormatAccess";
        if (a2)
        {
          v3 = "IsRestrictedFormatAccess";
        }

        v4 = "MTLPixelFormatFlagsIsCompressed";
        if (a2)
        {
          v4 = "IsCompressed";
        }

        if (this != 1024)
        {
          v4 = "Unknown";
        }

        if (this != 512)
        {
          v3 = v4;
        }

        v5 = "MTLPixelFormatFlagsIsAllowedForMSAAResolve";
        if (a2)
        {
          v5 = "IsAllowedForMSAAResolve";
        }

        v6 = "MTLPixelFormatFlagsIsMSAACapable";
        if (a2)
        {
          v6 = "IsMSAACapable";
        }

        if (this == 256)
        {
          v2 = v6;
        }

        if (this == 128)
        {
          v2 = v5;
        }

        v7 = this <= 511;
LABEL_48:
        if (v7)
        {
          return v2;
        }

        else
        {
          return v3;
        }
      }

      v15 = "MTLPixelFormatFlagsIsPVRTC";
      if (a2)
      {
        v15 = "IsPVRTC";
      }

      v20 = "MTLPixelFormatFlagsIs422";
      if (a2)
      {
        v20 = "Is422";
      }

      if (this != 0x4000)
      {
        v20 = "Unknown";
      }

      if (this != 0x2000)
      {
        v15 = v20;
      }

      v21 = "MTLPixelFormatFlagsIsSRGB";
      if (a2)
      {
        v21 = "IsSRGB";
      }

      v22 = "MTLPixelFormatFlagsIsASTC";
      if (a2)
      {
        v22 = "IsASTC";
      }

      if (this == 4096)
      {
        v2 = v22;
      }

      if (this == 2048)
      {
        v2 = v21;
      }

      v19 = this < 0x2000;
      goto LABEL_86;
    }

    if (this > 7)
    {
      v3 = "MTLPixelFormatFlagsIsDepthRenderable";
      if (a2)
      {
        v3 = "IsDepthRenderable";
      }

      v11 = "MTLPixelFormatFlagsIsStencilRenderable";
      if (a2)
      {
        v11 = "IsStencilRenderable";
      }

      if (this != 64)
      {
        v11 = "Unknown";
      }

      if (this != 32)
      {
        v3 = v11;
      }

      v12 = "MTLPixelFormatFlagsIsBlendable";
      if (a2)
      {
        v12 = "IsBlendable";
      }

      v13 = "MTLPixelFormatFlagsIsColorRenderable";
      if (a2)
      {
        v13 = "IsColorRenderable";
      }

      if (this == 16)
      {
        v2 = v13;
      }

      if (this == 8)
      {
        v2 = v12;
      }

      v7 = this <= 31;
      goto LABEL_48;
    }

    v8 = "MTLPixelFormatFlagsIsValid";
    if (a2)
    {
      v8 = "IsValid";
    }

    v28 = "MTLPixelFormatFlagsIsWriteable";
    if (a2)
    {
      v28 = "IsWriteable";
    }

    v29 = "MTLPixelFormatFlagsIsFilterable";
    if (a2)
    {
      v29 = "IsFilterable";
    }

    if (this == 4)
    {
      v2 = v29;
    }

    if (this == 2)
    {
      v2 = v28;
    }

    v10 = this == 1;
    goto LABEL_115;
  }

  if (this < 0x400000)
  {
    if (this >= 0x40000)
    {
      v15 = "MTLPixelFormatFlagsIsShortCompatible";
      if (a2)
      {
        v15 = "IsShortCompatible";
      }

      v16 = "MTLPixelFormatFlagsIsUShortCompatible";
      if (a2)
      {
        v16 = "IsUShortCompatible";
      }

      if (this != 0x200000)
      {
        v16 = "Unknown";
      }

      if (this != 0x100000)
      {
        v15 = v16;
      }

      v17 = "MTLPixelFormatFlagsIsIntCompatible";
      if (a2)
      {
        v17 = "IsIntCompatible";
      }

      v18 = "MTLPixelFormatFlagsIsUIntCompatible";
      if (a2)
      {
        v18 = "IsUIntCompatible";
      }

      if (this == 0x80000)
      {
        v2 = v18;
      }

      if (this == 0x40000)
      {
        v2 = v17;
      }

      v19 = this < 0x100000;
LABEL_86:
      if (v19)
      {
        return v2;
      }

      else
      {
        return v15;
      }
    }

    v8 = "MTLPixelFormatFlagsIsFullMaskRequired";
    if (a2)
    {
      v8 = "IsFullMaskRequired";
    }

    v30 = "MTLPixelFormatFlagsIsFloatCompatible";
    if (a2)
    {
      v30 = "IsFloatCompatible";
    }

    v31 = "MTLPixelFormatFlagsIsHalfCompatible";
    if (a2)
    {
      v31 = "IsHalfCompatible";
    }

    if (this == 0x20000)
    {
      v2 = v31;
    }

    if (this == 0x10000)
    {
      v2 = v30;
    }

    v10 = this == 0x8000;
    goto LABEL_115;
  }

  if (this > 0x3FFFFFF)
  {
    if (this > 0xFFFFFFF)
    {
      v23 = 0x10000000;
      v24 = "MTLPixelFormatFlagsIsHLG";
      if (a2)
      {
        v24 = "IsHLG";
      }

      v25 = 0x20000000;
      v26 = "MTLPixelFormatFlagsIsULongCompatible";
      v27 = "IsULongCompatible";
    }

    else
    {
      v23 = 0x4000000;
      v24 = "MTLPixelFormatFlagsIsLossyLevel3Compatible";
      if (a2)
      {
        v24 = "IsLossyLevel3Compatible";
      }

      v25 = 0x8000000;
      v26 = "MTLPixelFormatFlagsIsPQ";
      v27 = "IsPQ";
    }
  }

  else
  {
    if (this <= 0xFFFFFF)
    {
      v8 = "MTLPixelFormatFlagsIsBC";
      if (a2)
      {
        v8 = "IsBC";
        v9 = "IsDualPlane";
      }

      else
      {
        v9 = "MTLPixelFormatFlagsIsDualPlane";
      }

      if (this == 0x800000)
      {
        v2 = v9;
      }

      v10 = this == 0x400000;
LABEL_115:
      if (v10)
      {
        return v8;
      }

      else
      {
        return v2;
      }
    }

    v23 = 0x1000000;
    v24 = "MTLPixelFormatFlagsIsLossyLevel1Compatible";
    if (a2)
    {
      v24 = "IsLossyLevel1Compatible";
    }

    v25 = 0x2000000;
    v26 = "MTLPixelFormatFlagsIsLossyLevel2Compatible";
    v27 = "IsLossyLevel2Compatible";
  }

  if (a2)
  {
    v26 = v27;
  }

  if (this == v25)
  {
    v2 = v26;
  }

  if (this == v23)
  {
    return v24;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLPrecompiledDataTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 4)
  {
    v3 = "MTLPrecompiledDataTypeTileFunction";
    if (a2)
    {
      v3 = "TileFunction";
    }

    v9 = "MTLPrecompiledDataTypeTileReflectionData";
    if (a2)
    {
      v9 = "TileReflectionData";
    }

    v10 = "MTLPrecompiledDataTypeCustomStart";
    if (a2)
    {
      v10 = "CustomStart";
    }

    if (this != 256)
    {
      v10 = "Unknown";
    }

    if (this != 8)
    {
      v9 = v10;
    }

    if (this != 7)
    {
      v3 = v9;
    }

    v11 = "MTLPrecompiledDataTypeFragmentReflectionData";
    if (a2)
    {
      v11 = "FragmentReflectionData";
    }

    v12 = "MTLPrecompiledDataTypeComputeReflectionData";
    if (a2)
    {
      v12 = "ComputeReflectionData";
    }

    if (this == 6)
    {
      v2 = v12;
    }

    if (this == 5)
    {
      v2 = v11;
    }

    v8 = this <= 6;
  }

  else
  {
    v3 = "MTLPrecompiledDataTypeFragmentFunction";
    if (a2)
    {
      v3 = "FragmentFunction";
    }

    v4 = "MTLPrecompiledDataTypeComputeFunction";
    if (a2)
    {
      v4 = "ComputeFunction";
    }

    v5 = "MTLPrecompiledDataTypeVertexReflectionData";
    if (a2)
    {
      v5 = "VertexReflectionData";
    }

    if (this != 4)
    {
      v5 = "Unknown";
    }

    if (this != 3)
    {
      v4 = v5;
    }

    if (this != 2)
    {
      v3 = v4;
    }

    v6 = "MTLPrecompiledDataTypePipelineData";
    if (a2)
    {
      v6 = "PipelineData";
    }

    v7 = "MTLPrecompiledDataTypeVertexFunction";
    if (a2)
    {
      v7 = "VertexFunction";
    }

    if (this == 1)
    {
      v2 = v7;
    }

    if (!this)
    {
      v2 = v6;
    }

    v8 = this <= 1;
  }

  if (v8)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLPrimitiveKindAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLPrimitiveKindCurve";
  if (a2)
  {
    v3 = "Curve";
    v4 = "BoundingBox";
  }

  else
  {
    v4 = "MTLPrimitiveKindBoundingBox";
  }

  if (this != 2)
  {
    v4 = "Unknown";
  }

  if (this != 3)
  {
    v3 = v4;
  }

  v5 = "MTLPrimitiveKindNone";
  if (a2)
  {
    v5 = "None";
  }

  v6 = "MTLPrimitiveKindTriangle";
  if (a2)
  {
    v6 = "Triangle";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLPrimitiveTopologyClassAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLPrimitiveTopologyClassTriangle";
  if (a2)
  {
    v3 = "Triangle";
    v4 = "Line";
  }

  else
  {
    v4 = "MTLPrimitiveTopologyClassLine";
  }

  if (this != 2)
  {
    v4 = "Unknown";
  }

  if (this != 3)
  {
    v3 = v4;
  }

  v5 = "MTLPrimitiveTopologyClassUnspecified";
  if (a2)
  {
    v5 = "Unspecified";
  }

  v6 = "MTLPrimitiveTopologyClassPoint";
  if (a2)
  {
    v6 = "Point";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLPrimitiveTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 4)
  {
    v3 = "MTLPrimitiveTypeQuad";
    if (a2)
    {
      v3 = "Quad";
    }

    v9 = "MTLPrimitiveTypeQuadStrip";
    if (a2)
    {
      v9 = "QuadStrip";
    }

    v10 = "MTLPrimitiveTypePolygon";
    if (a2)
    {
      v10 = "Polygon";
    }

    if (this != 9)
    {
      v10 = "Unknown";
    }

    if (this != 8)
    {
      v9 = v10;
    }

    if (this != 7)
    {
      v3 = v9;
    }

    v11 = "MTLPrimitiveTypeLineLoop";
    if (a2)
    {
      v11 = "LineLoop";
    }

    v12 = "MTLPrimitiveTypeTriangleFan";
    if (a2)
    {
      v12 = "TriangleFan";
    }

    if (this == 6)
    {
      v2 = v12;
    }

    if (this == 5)
    {
      v2 = v11;
    }

    v8 = this <= 6;
  }

  else
  {
    v3 = "MTLPrimitiveTypeLineStrip";
    if (a2)
    {
      v3 = "LineStrip";
    }

    v4 = "MTLPrimitiveTypeTriangle";
    if (a2)
    {
      v4 = "Triangle";
    }

    v5 = "MTLPrimitiveTypeTriangleStrip";
    if (a2)
    {
      v5 = "TriangleStrip";
    }

    if (this != 4)
    {
      v5 = "Unknown";
    }

    if (this != 3)
    {
      v4 = v5;
    }

    if (this != 2)
    {
      v3 = v4;
    }

    v6 = "MTLPrimitiveTypePoint";
    if (a2)
    {
      v6 = "Point";
    }

    v7 = "MTLPrimitiveTypeLine";
    if (a2)
    {
      v7 = "Line";
    }

    if (this == 1)
    {
      v2 = v7;
    }

    if (!this)
    {
      v2 = v6;
    }

    v8 = this <= 1;
  }

  if (v8)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLProvokingVertexModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLProvokingVertexModeSecond";
  if (a2)
  {
    v3 = "Second";
  }

  v4 = "MTLProvokingVertexModeLast";
  if (a2)
  {
    v4 = "Last";
  }

  v5 = "First";
  if (!a2)
  {
    v5 = "MTLProvokingVertexModeFirst";
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLPurgeableStateAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLPurgeableStateVolatile";
  if (a2)
  {
    v3 = "Volatile";
  }

  v4 = "MTLPurgeableStateMakeResident";
  if (a2)
  {
    v4 = "MakeResident";
  }

  v5 = "MTLPurgeableStateEmpty";
  if (a2)
  {
    v5 = "Empty";
  }

  if (this != 4)
  {
    v5 = "Unknown";
  }

  if (this != 256)
  {
    v4 = v5;
  }

  if (this != 3)
  {
    v3 = v4;
  }

  v6 = "MTLPurgeableStateKeepCurrent";
  if (a2)
  {
    v6 = "KeepCurrent";
  }

  v7 = "MTLPurgeableStateNonVolatile";
  if (a2)
  {
    v7 = "NonVolatile";
  }

  if (this == 2)
  {
    v2 = v7;
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (this <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLQosLevelAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLQosMedium";
  if (a2)
  {
    v3 = "Medium";
  }

  v4 = "MTLQosLow";
  if (a2)
  {
    v4 = "Low";
  }

  v5 = "MTLQosOpportunistic";
  if (a2)
  {
    v5 = "Opportunistic";
  }

  if (this != 4)
  {
    v5 = "Unknown";
  }

  if (this != 3)
  {
    v4 = v5;
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v6 = "MTLQosExclusive";
  if (a2)
  {
    v6 = "Exclusive";
  }

  v7 = "MTLQosHigh";
  if (a2)
  {
    v7 = "High";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLReadWriteTextureTierAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLReadWriteTextureTierNone";
  if (a2)
  {
    v3 = "None";
  }

  v4 = "MTLReadWriteTextureTier2";
  if (a2)
  {
    v4 = "2";
  }

  v5 = "1";
  if (!a2)
  {
    v5 = "MTLReadWriteTextureTier1";
  }

  if (this == 1)
  {
    v2 = v5;
  }

  if (this == 2)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLRenderCommandEncoderSplitReasonAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLRenderCommandEncoderSplitReasonRenderPassCommitAndReset";
  if (a2)
  {
    v3 = "RenderPassCommitAndReset";
  }

  v4 = "InsertMemoryBarrier";
  if (!a2)
  {
    v4 = "MTLRenderCommandEncoderSplitReasonInsertMemoryBarrier";
  }

  v5 = "MTLRenderCommandEncoderSplitReasonForcedManually";
  if (a2)
  {
    v5 = "ForcedManually";
  }

  if (this != 8)
  {
    v5 = "Unknown";
  }

  if (this != 16)
  {
    v4 = v5;
  }

  if (this != 32)
  {
    v3 = v4;
  }

  v6 = "MTLRenderCommandEncoderSplitReasonTooManyResources";
  if (a2)
  {
    v6 = "TooManyResources";
  }

  v7 = "MTLRenderCommandEncoderSplitReasonTooManyScissorEmits";
  if (a2)
  {
    v7 = "TooManyScissorEmits";
    v8 = "TooManyDepthBiasEmits";
  }

  else
  {
    v8 = "MTLRenderCommandEncoderSplitReasonTooManyDepthBiasEmits";
  }

  if (this == 4)
  {
    v2 = v8;
  }

  if (this == 2)
  {
    v2 = v7;
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (this <= 7)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLRenderStagesAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLRenderStageTile";
  if (a2)
  {
    v3 = "Tile";
  }

  v4 = "MTLRenderStageObject";
  if (a2)
  {
    v4 = "Object";
  }

  v5 = "MTLRenderStageMesh";
  if (a2)
  {
    v5 = "Mesh";
  }

  if (this != 16)
  {
    v5 = "Unknown";
  }

  if (this != 8)
  {
    v4 = v5;
  }

  if (this != 4)
  {
    v3 = v4;
  }

  v6 = "MTLRenderStageVertex";
  if (a2)
  {
    v6 = "Vertex";
  }

  v7 = "MTLRenderStageFragment";
  if (a2)
  {
    v7 = "Fragment";
  }

  if (this == 2)
  {
    v2 = v7;
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (this <= 3)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLResourceGroupCacheHintAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLResourceGroupCacheHintInvalidate";
  if (a2)
  {
    v3 = "Invalidate";
  }

  v4 = "MTLResourceGroupCacheHintFlush";
  if (a2)
  {
    v4 = "Flush";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLResourceOptionsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 47)
  {
    v3 = "MTLResourceHazardTrackingModeTracked";
    if (a2)
    {
      v3 = "HazardTrackingModeTracked";
    }

    v8 = "MTLResourceHazardTrackingModeGrouped";
    if (a2)
    {
      v8 = "HazardTrackingModeGrouped";
    }

    if (this != 2048)
    {
      v8 = "Unknown";
    }

    if (this != 512)
    {
      v3 = v8;
    }

    v9 = "MTLResourceStorageModeMemoryless";
    if (a2)
    {
      v9 = "StorageModeMemoryless";
    }

    v10 = "MTLResourceHazardTrackingModeUntracked";
    if (a2)
    {
      v10 = "HazardTrackingModeUntracked";
    }

    if (this == 256)
    {
      v2 = v10;
    }

    if (this == 48)
    {
      v2 = v9;
    }

    v7 = this <= 511;
  }

  else
  {
    v3 = "MTLResourceStorageModeManaged";
    if (a2)
    {
      v3 = "StorageModeManaged";
    }

    v4 = "MTLResourceStorageModePrivate";
    if (a2)
    {
      v4 = "StorageModePrivate";
    }

    if (this != 32)
    {
      v4 = "Unknown";
    }

    if (this != 16)
    {
      v3 = v4;
    }

    v5 = "MTLResourceCPUCacheModeDefaultCache";
    if (a2)
    {
      v5 = "CPUCacheModeDefaultCache";
    }

    v6 = "MTLResourceCPUCacheModeWriteCombined";
    if (a2)
    {
      v6 = "CPUCacheModeWriteCombined";
    }

    if (this == 1)
    {
      v2 = v6;
    }

    if (!this)
    {
      v2 = v5;
    }

    v7 = this <= 15;
  }

  if (v7)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLResourceUsageAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLResourceUsageSample";
  if (a2)
  {
    v3 = "Sample";
  }

  v4 = "MTLResourceUsageWrite";
  if (a2)
  {
    v4 = "Write";
  }

  v5 = "Read";
  if (!a2)
  {
    v5 = "MTLResourceUsageRead";
  }

  if (this == 1)
  {
    v2 = v5;
  }

  if (this == 2)
  {
    v2 = v4;
  }

  if (this == 4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLRoundingModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLRoundingModeRTNE";
  if (a2)
  {
    v3 = "RTNE";
  }

  v4 = "MTLRoundingModeRTZ";
  if (a2)
  {
    v4 = "RTZ";
  }

  v5 = "Default";
  if (!a2)
  {
    v5 = "MTLRoundingModeDefault";
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLSamplerAddressModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this <= 2)
  {
    v8 = "MTLSamplerAddressModeClampToEdge";
    if (a2)
    {
      v8 = "ClampToEdge";
    }

    v9 = "MTLSamplerAddressModeMirrorClampToEdge";
    if (a2)
    {
      v9 = "MirrorClampToEdge";
    }

    v10 = "MTLSamplerAddressModeRepeat";
    if (a2)
    {
      v10 = "Repeat";
    }

    if (this == 2)
    {
      v2 = v10;
    }

    if (this == 1)
    {
      v2 = v9;
    }

    if (this)
    {
      return v2;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v3 = "MTLSamplerAddressModeClampToHalfBorderColor";
    if (a2)
    {
      v3 = "ClampToHalfBorderColor";
    }

    v4 = "MTLSamplerAddressModeClampToBorderColor";
    if (a2)
    {
      v4 = "ClampToBorderColor";
    }

    if (this != 5)
    {
      v4 = "Unknown";
    }

    if (this != 6)
    {
      v3 = v4;
    }

    v5 = "MTLSamplerAddressModeMirrorRepeat";
    if (a2)
    {
      v5 = "MirrorRepeat";
    }

    v6 = "MTLSamplerAddressModeClampToZero";
    if (a2)
    {
      v6 = "ClampToZero";
    }

    if (this == 4)
    {
      v2 = v6;
    }

    if (this == 3)
    {
      v2 = v5;
    }

    if (this <= 4)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

const char *GPUTools::MTL::GetMTLSamplerBorderColorAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLSamplerBorderColorOpaqueWhite";
  if (a2)
  {
    v3 = "OpaqueWhite";
    v4 = "SPICustom";
  }

  else
  {
    v4 = "MTLSamplerBorderColorSPICustom";
  }

  if (this != 3)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLSamplerBorderColorTransparentBlack";
  if (a2)
  {
    v5 = "TransparentBlack";
  }

  v6 = "MTLSamplerBorderColorOpaqueBlack";
  if (a2)
  {
    v6 = "OpaqueBlack";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLSamplerMinMagFilterAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLSamplerMinMagFilterNearest";
  if (a2)
  {
    v3 = "Nearest";
  }

  v4 = "MTLSamplerMinMagFilterLinear";
  if (a2)
  {
    v4 = "Linear";
  }

  v5 = "Cubic";
  if (!a2)
  {
    v5 = "MTLSamplerMinMagFilterCubic";
  }

  if (this == 2)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLSamplerMipFilterAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLSamplerMipFilterNotMipmapped";
  if (a2)
  {
    v3 = "NotMipmapped";
  }

  v4 = "MTLSamplerMipFilterNearest";
  if (a2)
  {
    v4 = "Nearest";
  }

  v5 = "Linear";
  if (!a2)
  {
    v5 = "MTLSamplerMipFilterLinear";
  }

  if (this == 2)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLSamplerReductionModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLSamplerReductionModeWeightedAverage";
  if (a2)
  {
    v3 = "WeightedAverage";
  }

  v4 = "MTLSamplerReductionModeMinimum";
  if (a2)
  {
    v4 = "Minimum";
  }

  v5 = "Maximum";
  if (!a2)
  {
    v5 = "MTLSamplerReductionModeMaximum";
  }

  if (this == 2)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLSamplerReductionModeSupportAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLSamplerReductionModeSupportNone";
  if (a2)
  {
    v3 = "None";
  }

  v4 = "MTLSamplerReductionModeSupportSingleChannel";
  if (a2)
  {
    v4 = "SingleChannel";
  }

  v5 = "AllChannels";
  if (!a2)
  {
    v5 = "MTLSamplerReductionModeSupportAllChannels";
  }

  if (this == 2)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLShaderValidationAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLShaderValidationDisabled";
  if (a2)
  {
    v3 = "Disabled";
  }

  v4 = "MTLShaderValidationEnabled";
  if (a2)
  {
    v4 = "Enabled";
  }

  v5 = "Default";
  if (!a2)
  {
    v5 = "MTLShaderValidationDefault";
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLSourceLanguageAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLSourceLanguageOpenCL";
  if (a2)
  {
    v3 = "OpenCL";
  }

  v4 = "MTLSourceLanguageMetal";
  if (a2)
  {
    v4 = "Metal";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLSparsePageSizeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLSparsePageSize256";
  if (a2)
  {
    v3 = "256";
  }

  v4 = "MTLSparsePageSize64";
  if (a2)
  {
    v4 = "64";
  }

  v5 = "16";
  if (!a2)
  {
    v5 = "MTLSparsePageSize16";
  }

  if (this == 101)
  {
    v2 = v5;
  }

  if (this == 102)
  {
    v2 = v4;
  }

  if (this == 103)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLSparseTextureMappingModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLSparseTextureMappingModeUnmap";
  if (a2)
  {
    v3 = "Unmap";
  }

  v4 = "MTLSparseTextureMappingModeMap";
  if (a2)
  {
    v4 = "Map";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLSparseTextureRegionAlignmentModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLSparseTextureRegionAlignmentModeOutward";
  if (a2)
  {
    v3 = "Outward";
  }

  v4 = "MTLSparseTextureRegionAlignmentModeInward";
  if (a2)
  {
    v4 = "Inward";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLSparseTexturesTierAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLSparseTexturesTier2";
  if (a2)
  {
    v3 = "2";
    v4 = "3";
  }

  else
  {
    v4 = "MTLSparseTexturesTier3";
  }

  if (this != 3)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLSparseTexturesTierNone";
  if (a2)
  {
    v5 = "None";
  }

  v6 = "MTLSparseTexturesTier1";
  if (a2)
  {
    v6 = "1";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLStencilOperationAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 3)
  {
    v3 = "MTLStencilOperationIncrementWrap";
    if (a2)
    {
      v3 = "IncrementWrap";
    }

    v8 = "MTLStencilOperationDecrementWrap";
    if (a2)
    {
      v8 = "DecrementWrap";
    }

    if (this != 7)
    {
      v8 = "Unknown";
    }

    if (this != 6)
    {
      v3 = v8;
    }

    v9 = "MTLStencilOperationDecrementClamp";
    if (a2)
    {
      v9 = "DecrementClamp";
    }

    v10 = "MTLStencilOperationInvert";
    if (a2)
    {
      v10 = "Invert";
    }

    if (this == 5)
    {
      v2 = v10;
    }

    if (this == 4)
    {
      v2 = v9;
    }

    v7 = this <= 5;
  }

  else
  {
    v3 = "MTLStencilOperationReplace";
    if (a2)
    {
      v3 = "Replace";
    }

    v4 = "MTLStencilOperationIncrementClamp";
    if (a2)
    {
      v4 = "IncrementClamp";
    }

    if (this != 3)
    {
      v4 = "Unknown";
    }

    if (this != 2)
    {
      v3 = v4;
    }

    v5 = "MTLStencilOperationKeep";
    if (a2)
    {
      v5 = "Keep";
    }

    v6 = "MTLStencilOperationZero";
    if (a2)
    {
      v6 = "Zero";
    }

    if (this == 1)
    {
      v2 = v6;
    }

    if (!this)
    {
      v2 = v5;
    }

    v7 = this <= 1;
  }

  if (v7)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLStepFunctionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this <= 3)
  {
    v3 = "MTLStepFunctionPerInstance";
    if (a2)
    {
      v3 = "PerInstance";
    }

    v9 = "MTLStepFunctionPerPatch";
    if (a2)
    {
      v9 = "PerPatch";
    }

    if (this != 3)
    {
      v9 = "Unknown";
    }

    if (this != 2)
    {
      v3 = v9;
    }

    v10 = "MTLStepFunctionConstant";
    if (a2)
    {
      v10 = "Constant";
    }

    v11 = "MTLStepFunctionPerVertex";
    if (a2)
    {
      v11 = "PerVertex";
    }

    if (this == 1)
    {
      v2 = v11;
    }

    if (!this)
    {
      v2 = v10;
    }

    v8 = this <= 1;
  }

  else
  {
    v3 = "MTLStepFunctionThreadPositionInGridY";
    if (a2)
    {
      v3 = "ThreadPositionInGridY";
    }

    v4 = "MTLStepFunctionThreadPositionInGridXIndexed";
    if (a2)
    {
      v4 = "ThreadPositionInGridXIndexed";
    }

    v5 = "MTLStepFunctionThreadPositionInGridYIndexed";
    if (a2)
    {
      v5 = "ThreadPositionInGridYIndexed";
    }

    if (this != 8)
    {
      v5 = "Unknown";
    }

    if (this != 7)
    {
      v4 = v5;
    }

    if (this != 6)
    {
      v3 = v4;
    }

    v6 = "MTLStepFunctionPerPatchControlPoint";
    if (a2)
    {
      v6 = "PerPatchControlPoint";
    }

    v7 = "MTLStepFunctionThreadPositionInGridX";
    if (a2)
    {
      v7 = "ThreadPositionInGridX";
    }

    if (this == 5)
    {
      v2 = v7;
    }

    if (this == 4)
    {
      v2 = v6;
    }

    v8 = this <= 5;
  }

  if (v8)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLStitchedLibraryOptionsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLStitchedLibraryOptionStoreLibraryInMetalScript";
  if (a2)
  {
    v3 = "StoreLibraryInMetalScript";
    v4 = "AllowBadLegacyDAGs";
  }

  else
  {
    v4 = "MTLStitchedLibraryOptionAllowBadLegacyDAGs";
  }

  if (this != 4)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLStitchedLibraryOptionNone";
  if (a2)
  {
    v5 = "None";
  }

  v6 = "MTLStitchedLibraryOptionFailOnBinaryArchiveMiss";
  if (a2)
  {
    v6 = "FailOnBinaryArchiveMiss";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLStorageModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLStorageModePrivate";
  if (a2)
  {
    v3 = "Private";
    v4 = "Memoryless";
  }

  else
  {
    v4 = "MTLStorageModeMemoryless";
  }

  if (this != 3)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLStorageModeShared";
  if (a2)
  {
    v5 = "Shared";
  }

  v6 = "MTLStorageModeManaged";
  if (a2)
  {
    v6 = "Managed";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLStoreActionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLStoreActionStoreAndMultisampleResolve";
  if (a2)
  {
    v3 = "StoreAndMultisampleResolve";
  }

  v4 = "MTLStoreActionUnknown";
  if (a2)
  {
    v4 = "Unknown";
  }

  v5 = "MTLStoreActionCustomSampleDepthStore";
  if (a2)
  {
    v5 = "CustomSampleDepthStore";
  }

  if (this != 5)
  {
    v5 = "Unknown";
  }

  if (this != 4)
  {
    v4 = v5;
  }

  if (this != 3)
  {
    v3 = v4;
  }

  v6 = "MTLStoreActionDontCare";
  if (a2)
  {
    v6 = "DontCare";
  }

  v7 = "MTLStoreActionStore";
  if (a2)
  {
    v7 = "Store";
    v8 = "MultisampleResolve";
  }

  else
  {
    v8 = "MTLStoreActionMultisampleResolve";
  }

  if (this == 2)
  {
    v2 = v8;
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLStoreActionOptionsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLStoreActionOptionNone";
  if (a2)
  {
    v3 = "None";
  }

  v4 = "MTLStoreActionOptionCustomSamplePositions";
  if (a2)
  {
    v4 = "CustomSamplePositions";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLTagTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this <= 3)
  {
    v3 = "MTLTagTypeTriangleData";
    if (a2)
    {
      v3 = "TriangleData";
    }

    v9 = "MTLTagTypeWorldSpaceData";
    if (a2)
    {
      v9 = "WorldSpaceData";
    }

    if (this != 3)
    {
      v9 = "Unknown";
    }

    if (this != 2)
    {
      v3 = v9;
    }

    v10 = "MTLTagTypeNone";
    if (a2)
    {
      v10 = "None";
    }

    v11 = "MTLTagTypeInstancing";
    if (a2)
    {
      v11 = "Instancing";
    }

    if (this == 1)
    {
      v2 = v11;
    }

    if (!this)
    {
      v2 = v10;
    }

    v8 = this <= 1;
  }

  else
  {
    v3 = "MTLTagTypeExtendedLimits";
    if (a2)
    {
      v3 = "ExtendedLimits";
    }

    v4 = "MTLTagTypeMaxLevels";
    if (a2)
    {
      v4 = "MaxLevels";
    }

    v5 = "MTLTagTypeCurveData";
    if (a2)
    {
      v5 = "CurveData";
    }

    if (this != 7)
    {
      v5 = "Unknown";
    }

    if (this != 8)
    {
      v4 = v5;
    }

    if (this != 6)
    {
      v3 = v4;
    }

    v6 = "MTLTagTypeInstanceMotion";
    if (a2)
    {
      v6 = "InstanceMotion";
    }

    v7 = "MTLTagTypePrimitiveMotion";
    if (a2)
    {
      v7 = "PrimitiveMotion";
    }

    if (this == 5)
    {
      v2 = v7;
    }

    if (this == 4)
    {
      v2 = v6;
    }

    v8 = this <= 5;
  }

  if (v8)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLTessellationControlPointIndexTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLTessellationControlPointIndexTypeUInt32";
  if (a2)
  {
    v3 = "UInt32";
  }

  v4 = "MTLTessellationControlPointIndexTypeUInt16";
  if (a2)
  {
    v4 = "UInt16";
  }

  v5 = "None";
  if (!a2)
  {
    v5 = "MTLTessellationControlPointIndexTypeNone";
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLTessellationFactorFormatAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLTessellationFactorFormatHalf";
  if (a2)
  {
    v3 = "Half";
  }

  v4 = "MTLTessellationFactorFormatFloat_SPI";
  if (a2)
  {
    v4 = "Float_SPI";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLTessellationFactorStepFunctionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLTessellationFactorStepFunctionPerInstance";
  if (a2)
  {
    v3 = "PerInstance";
    v4 = "PerPatchAndPerInstance";
  }

  else
  {
    v4 = "MTLTessellationFactorStepFunctionPerPatchAndPerInstance";
  }

  if (this != 3)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLTessellationFactorStepFunctionConstant";
  if (a2)
  {
    v5 = "Constant";
  }

  v6 = "MTLTessellationFactorStepFunctionPerPatch";
  if (a2)
  {
    v6 = "PerPatch";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLTessellationPartitionModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLTessellationPartitionModeFractionalOdd";
  if (a2)
  {
    v3 = "FractionalOdd";
    v4 = "FractionalEven";
  }

  else
  {
    v4 = "MTLTessellationPartitionModeFractionalEven";
  }

  if (this != 3)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLTessellationPartitionModePow2";
  if (a2)
  {
    v5 = "Pow2";
  }

  v6 = "MTLTessellationPartitionModeInteger";
  if (a2)
  {
    v6 = "Integer";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLTextureColorSpaceConversionMatrixAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this <= 4)
  {
    v7 = "MTLTextureColorSpaceConversionMatrixUtil2";
    if (a2)
    {
      v7 = "Util2";
    }

    v8 = "MTLTextureColorSpaceConversionMatrixUtil3";
    if (a2)
    {
      v8 = "Util3";
    }

    v9 = "MTLTextureColorSpaceConversionMatrixUtil4";
    if (a2)
    {
      v9 = "Util4";
    }

    if (this != 4)
    {
      v9 = "Unknown";
    }

    if (this != 3)
    {
      v8 = v9;
    }

    if (this != 2)
    {
      v7 = v8;
    }

    v10 = "MTLTextureColorSpaceConversionMatrixDefault";
    if (a2)
    {
      v10 = "Default";
    }

    v11 = "MTLTextureColorSpaceConversionMatrixUtil1";
    if (a2)
    {
      v11 = "Util1";
    }

    if (this == 1)
    {
      v2 = v11;
    }

    if (!this)
    {
      v2 = v10;
    }

    if (this <= 1)
    {
      return v2;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if (this > 7)
    {
      v3 = "MTLTextureColorSpaceConversionMatrixBT709Full";
      if (a2)
      {
        v3 = "BT709Full";
      }

      v13 = "MTLTextureColorSpaceConversionMatrixBT2020Video";
      if (a2)
      {
        v13 = "BT2020Video";
      }

      v14 = "MTLTextureColorSpaceConversionMatrixBT2020Full";
      if (a2)
      {
        v14 = "BT2020Full";
      }

      if (this == 10)
      {
        v2 = v14;
      }

      if (this == 9)
      {
        v2 = v13;
      }

      v6 = this == 8;
    }

    else
    {
      v3 = "MTLTextureColorSpaceConversionMatrixBT601Video";
      if (a2)
      {
        v3 = "BT601Video";
      }

      v4 = "MTLTextureColorSpaceConversionMatrixBT601Full";
      if (a2)
      {
        v4 = "BT601Full";
      }

      v5 = "MTLTextureColorSpaceConversionMatrixBT709Video";
      if (a2)
      {
        v5 = "BT709Video";
      }

      if (this == 7)
      {
        v2 = v5;
      }

      if (this == 6)
      {
        v2 = v4;
      }

      v6 = this == 5;
    }

    if (v6)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

const char *GPUTools::MTL::GetMTLTextureCompressionFeedbackAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this <= 31)
  {
    if (this > 3)
    {
      v8 = "MTLTextureCompressionFeedbackUnsupportedDevice";
      if (a2)
      {
        v8 = "UnsupportedDevice";
      }

      v14 = "MTLTextureCompressionFeedbackUnsupportedPixelFormat";
      if (a2)
      {
        v14 = "UnsupportedPixelFormat";
      }

      v15 = "MTLTextureCompressionFeedbackUnsupportedTextureUsageShaderWrite";
      if (a2)
      {
        v15 = "UnsupportedTextureUsageShaderWrite";
      }

      if (this == 16)
      {
        v2 = v15;
      }

      if (this == 8)
      {
        v2 = v14;
      }

      v11 = this == 4;
    }

    else
    {
      v8 = "MTLTextureCompressionFeedbackUnknown";
      if (a2)
      {
        v8 = "Unknown";
      }

      v9 = "MTLTextureCompressionFeedbackSupported";
      if (a2)
      {
        v9 = "Supported";
      }

      v10 = "MTLTextureCompressionFeedbackUnsupported";
      if (a2)
      {
        v10 = "Unsupported";
      }

      if (this == 2)
      {
        v2 = v10;
      }

      if (this == 1)
      {
        v2 = v9;
      }

      v11 = this == 0;
    }

    goto LABEL_56;
  }

  if (this <= 255)
  {
    v8 = "MTLTextureCompressionFeedbackUnsupportedTextureUsagePixelFormatView";
    if (a2)
    {
      v8 = "UnsupportedTextureUsagePixelFormatView";
    }

    v12 = "MTLTextureCompressionFeedbackUnsupportedTextureType";
    if (a2)
    {
      v12 = "UnsupportedTextureType";
    }

    v13 = "MTLTextureCompressionFeedbackUnsupportedHeapTypeSparse";
    if (a2)
    {
      v13 = "UnsupportedHeapTypeSparse";
    }

    if (this == 128)
    {
      v2 = v13;
    }

    if (this == 64)
    {
      v2 = v12;
    }

    v11 = this == 32;
LABEL_56:
    if (v11)
    {
      return v8;
    }

    else
    {
      return v2;
    }
  }

  v3 = "MTLTextureCompressionFeedbackUnsupportedSmallTexture";
  if (a2)
  {
    v3 = "UnsupportedSmallTexture";
  }

  v4 = "MTLTextureCompressionFeedbackUnsupportedTextureUsageShaderAtomic";
  if (a2)
  {
    v4 = "UnsupportedTextureUsageShaderAtomic";
  }

  if (this != 2048)
  {
    v4 = "Unknown";
  }

  if (this != 1024)
  {
    v3 = v4;
  }

  v5 = "MTLTextureCompressionFeedbackUnsupportedLinearLayout";
  if (a2)
  {
    v5 = "UnsupportedLinearLayout";
  }

  v6 = "MTLTextureCompressionFeedbackUnsupportedOptOut";
  if (a2)
  {
    v6 = "UnsupportedOptOut";
  }

  if (this == 512)
  {
    v2 = v6;
  }

  if (this == 256)
  {
    v2 = v5;
  }

  if (this <= 1023)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLTextureCompressionFootprintAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLTextureCompressionFootprintLevel2";
  if (a2)
  {
    v3 = "Level2";
    v4 = "Level3";
  }

  else
  {
    v4 = "MTLTextureCompressionFootprintLevel3";
  }

  if (this != 3)
  {
    v4 = "Unknown";
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v5 = "MTLTextureCompressionFootprintLossless";
  if (a2)
  {
    v5 = "Lossless";
  }

  v6 = "MTLTextureCompressionFootprintLevel1";
  if (a2)
  {
    v6 = "Level1";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLTextureCompressionModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLTextureCompressionModeOptOut";
  if (a2)
  {
    v3 = "OptOut";
  }

  v4 = "MTLTextureCompressionModeOptIn";
  if (a2)
  {
    v4 = "OptIn";
  }

  v5 = "Default";
  if (!a2)
  {
    v5 = "MTLTextureCompressionModeDefault";
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLTextureCompressionTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLTextureCompressionTypeLossy";
  if (a2)
  {
    v3 = "Lossy";
  }

  v4 = "MTLTextureCompressionTypeLossless";
  if (a2)
  {
    v4 = "Lossless";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLTextureRotationAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLTextureRotation180DegreesClockwise";
  if (a2)
  {
    v3 = "180DegreesClockwise";
  }

  v4 = "MTLTextureRotation270DegreesClockwise";
  if (a2)
  {
    v4 = "270DegreesClockwise";
  }

  v5 = "MTLTextureRotationTranspose";
  if (a2)
  {
    v5 = "Transpose";
  }

  if (this != 4)
  {
    v5 = "Unknown";
  }

  if (this != 3)
  {
    v4 = v5;
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v6 = "MTLTextureRotation0Degrees";
  if (a2)
  {
    v6 = "0Degrees";
  }

  v7 = "MTLTextureRotation90DegreesClockwise";
  if (a2)
  {
    v7 = "90DegreesClockwise";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLTextureSwizzleAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLTextureSwizzleGreen";
  if (a2)
  {
    v3 = "Green";
  }

  v4 = "Blue";
  if (!a2)
  {
    v4 = "MTLTextureSwizzleBlue";
  }

  v5 = "MTLTextureSwizzleAlpha";
  if (a2)
  {
    v5 = "Alpha";
  }

  if (this != 5)
  {
    v5 = "Unknown";
  }

  if (this != 4)
  {
    v4 = v5;
  }

  if (this != 3)
  {
    v3 = v4;
  }

  v6 = "MTLTextureSwizzleZero";
  if (a2)
  {
    v6 = "Zero";
  }

  v7 = "MTLTextureSwizzleOne";
  if (a2)
  {
    v7 = "One";
    v8 = "Red";
  }

  else
  {
    v8 = "MTLTextureSwizzleRed";
  }

  if (this == 2)
  {
    v2 = v8;
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLTextureSwizzleShiftAsString(GPUTools::MTL *this, int a2)
{
  v2 = __ROR8__(this, 3);
  v3 = "Unknown";
  v4 = "MTLTextureSwizzleShiftBlue";
  if (a2)
  {
    v4 = "Blue";
    v5 = "Alpha";
  }

  else
  {
    v5 = "MTLTextureSwizzleShiftAlpha";
  }

  if (v2 != 3)
  {
    v5 = "Unknown";
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  v6 = "MTLTextureSwizzleShiftRed";
  if (a2)
  {
    v6 = "Red";
  }

  v7 = "MTLTextureSwizzleShiftGreen";
  if (a2)
  {
    v7 = "Green";
  }

  if (v2 == 1)
  {
    v3 = v7;
  }

  if (!v2)
  {
    v3 = v6;
  }

  if (v2 <= 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

const char *GPUTools::MTL::GetMTLTextureTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 4)
  {
    v3 = "MTLTextureType3D";
    if (a2)
    {
      v3 = "3D";
    }

    v9 = "MTLTextureType2DMultisampleArray";
    if (a2)
    {
      v9 = "2DMultisampleArray";
    }

    v10 = "MTLTextureTypeTextureBuffer";
    if (a2)
    {
      v10 = "TextureBuffer";
    }

    if (this != 9)
    {
      v10 = "Unknown";
    }

    if (this != 8)
    {
      v9 = v10;
    }

    if (this != 7)
    {
      v3 = v9;
    }

    v11 = "MTLTextureTypeCube";
    if (a2)
    {
      v11 = "Cube";
    }

    v12 = "MTLTextureTypeCubeArray";
    if (a2)
    {
      v12 = "CubeArray";
    }

    if (this == 6)
    {
      v2 = v12;
    }

    if (this == 5)
    {
      v2 = v11;
    }

    v8 = this <= 6;
  }

  else
  {
    v3 = "MTLTextureType2D";
    if (a2)
    {
      v3 = "2D";
    }

    v4 = "MTLTextureType2DArray";
    if (a2)
    {
      v4 = "2DArray";
    }

    v5 = "MTLTextureType2DMultisample";
    if (a2)
    {
      v5 = "2DMultisample";
    }

    if (this != 4)
    {
      v5 = "Unknown";
    }

    if (this != 3)
    {
      v4 = v5;
    }

    if (this != 2)
    {
      v3 = v4;
    }

    v6 = "MTLTextureType1D";
    if (a2)
    {
      v6 = "1D";
    }

    v7 = "MTLTextureType1DArray";
    if (a2)
    {
      v7 = "1DArray";
    }

    if (this == 1)
    {
      v2 = v7;
    }

    if (!this)
    {
      v2 = v6;
    }

    v8 = this <= 1;
  }

  if (v8)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLTextureUsageAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this <= 15)
  {
    v9 = "MTLTextureUsageShaderWrite";
    if (a2)
    {
      v9 = "ShaderWrite";
    }

    v10 = "MTLTextureUsageRenderTarget";
    if (a2)
    {
      v10 = "RenderTarget";
    }

    if (this != 4)
    {
      v10 = "Unknown";
    }

    if (this != 2)
    {
      v9 = v10;
    }

    v11 = "MTLTextureUsageUnknown";
    if (a2)
    {
      v11 = "Unknown";
    }

    v12 = "MTLTextureUsageShaderRead";
    if (a2)
    {
      v12 = "ShaderRead";
    }

    if (this == 1)
    {
      v2 = v12;
    }

    if (!this)
    {
      v2 = v11;
    }

    if (this <= 1)
    {
      return v2;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v3 = "MTLTextureUsageNoConcurrentAccess";
    if (a2)
    {
      v3 = "NoConcurrentAccess";
    }

    v4 = "MTLTextureUsageVideo";
    if (a2)
    {
      v4 = "Video";
    }

    v5 = "MTLTextureUsageBlockWritesOnly";
    if (a2)
    {
      v5 = "BlockWritesOnly";
    }

    if (this != 0x10000)
    {
      v5 = "Unknown";
    }

    if (this != 0x8000)
    {
      v4 = v5;
    }

    if (this != 0x4000)
    {
      v3 = v4;
    }

    v6 = "MTLTextureUsagePixelFormatView";
    if (a2)
    {
      v6 = "PixelFormatView";
    }

    v7 = "MTLTextureUsageShaderAtomic";
    if (a2)
    {
      v7 = "ShaderAtomic";
    }

    if (this == 32)
    {
      v2 = v7;
    }

    if (this == 16)
    {
      v2 = v6;
    }

    if (this < 0x4000)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

const char *GPUTools::MTL::GetMTLThreadgroupDistributionModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLThreadgroupDistributionModeSingleClusterGroup";
  if (a2)
  {
    v3 = "SingleClusterGroup";
  }

  v4 = "MTLThreadgroupDistributionModeSingleCluster";
  if (a2)
  {
    v4 = "SingleCluster";
  }

  v5 = "Default";
  if (!a2)
  {
    v5 = "MTLThreadgroupDistributionModeDefault";
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLTransformFeedbackStateAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLTransformFeedbackInactive";
  if (a2)
  {
    v3 = "Inactive";
  }

  v4 = "MTLTransformFeedbackActive";
  if (a2)
  {
    v4 = "Active";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLTransformTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLTransformTypePackedFloat4x3";
  if (a2)
  {
    v3 = "PackedFloat4x3";
  }

  v4 = "MTLTransformTypeComponent";
  if (a2)
  {
    v4 = "Component";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLTriangleFillModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLTriangleFillModePoint";
  if (a2)
  {
    v3 = "Point";
  }

  v4 = "MTLTriangleFillModeLines";
  if (a2)
  {
    v4 = "Lines";
  }

  v5 = "Fill";
  if (!a2)
  {
    v5 = "MTLTriangleFillModeFill";
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLUnmappedDepthValueAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLUnmappedDepthValueZero";
  if (a2)
  {
    v3 = "Zero";
  }

  v4 = "MTLUnmappedDepthValueOne";
  if (a2)
  {
    v4 = "One";
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLVREyeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLVREyeRight";
  if (a2)
  {
    v3 = "Right";
  }

  v4 = "MTLVREyeLeft";
  if (a2)
  {
    v4 = "Left";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLVRSubmitFlagsAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLVRSubmitLensDistortionApplied";
  if (a2)
  {
    v3 = "LensDistortionApplied";
  }

  v4 = "MTLVRSubmitDefault";
  if (a2)
  {
    v4 = "Default";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLValidationCodeAsString(GPUTools::MTL *this, int a2)
{
  switch(this)
  {
    case 0uLL:
      v2 = "MTLValidationCodeTextureDescriptor";
      v3 = "TextureDescriptor";
      goto LABEL_42;
    case 1uLL:
      v2 = "MTLValidationCodeComputePipelineDescriptor";
      v3 = "ComputePipelineDescriptor";
      goto LABEL_42;
    case 2uLL:
      v2 = "MTLValidationCodeHeapDescriptor";
      v3 = "HeapDescriptor";
      goto LABEL_42;
    case 3uLL:
      v2 = "MTLValidationCodeRenderPipelineDescriptor";
      v3 = "RenderPipelineDescriptor";
      goto LABEL_42;
    case 4uLL:
      v2 = "MTLValidationCodeVertexDescriptor";
      v3 = "VertexDescriptor";
      goto LABEL_42;
    case 5uLL:
      v2 = "MTLValidationCodeNewSerializedDescriptor";
      v3 = "NewSerializedDescriptor";
      goto LABEL_42;
    case 6uLL:
      v2 = "MTLValidationCodeSamplerDescriptor";
      v3 = "SamplerDescriptor";
      goto LABEL_42;
    case 7uLL:
      v2 = "MTLValidationCodeArgumentEncoder";
      v3 = "ArgumentEncoder";
      goto LABEL_42;
    case 8uLL:
      v2 = "MTLValidationCodeFramebuffer";
      v3 = "Framebuffer";
      goto LABEL_42;
    case 9uLL:
      v2 = "MTLValidationCodeTileRenderPipelineDescriptor";
      v3 = "TileRenderPipelineDescriptor";
      goto LABEL_42;
    case 0xAuLL:
      v2 = "MTLValidationCodeDepthStencilState";
      v3 = "DepthStencilState";
      goto LABEL_42;
    case 0xBuLL:
      v2 = "MTLValidationCodeRenderPassDescriptor";
      v3 = "RenderPassDescriptor";
      goto LABEL_42;
    case 0xCuLL:
      v2 = "MTLValidationCodeNewSamplerState";
      v3 = "NewSamplerState";
      goto LABEL_42;
    case 0xDuLL:
      v2 = "MTLValidationCodeCommandQueue";
      v3 = "CommandQueue";
      goto LABEL_42;
    case 0xEuLL:
      v2 = "MTLValidationCodeCommandEncoder";
      v3 = "CommandEncoder";
      goto LABEL_42;
    case 0xFuLL:
      v2 = "MTLValidationCodeViewport";
      v3 = "Viewport";
      goto LABEL_42;
    case 0x10uLL:
      v2 = "MTLValidationCodeIndirectCommandBuffer";
      v3 = "IndirectCommandBuffer";
      goto LABEL_42;
    case 0x11uLL:
      v2 = "MTLValidationCodeBuffer";
      v3 = "Buffer";
      goto LABEL_42;
    case 0x12uLL:
      v2 = "MTLValidationCodeResource";
      v3 = "Resource";
      goto LABEL_42;
    case 0x13uLL:
      v2 = "MTLValidationCodePipelineState";
      v3 = "PipelineState";
      goto LABEL_42;
    case 0x14uLL:
      v2 = "MTLValidationCodeDraw";
      v3 = "Draw";
      goto LABEL_42;
    case 0x15uLL:
      v2 = "MTLValidationCodeBlitCommandEncoder";
      v3 = "BlitCommandEncoder";
      goto LABEL_42;
    case 0x16uLL:
      v2 = "MTLValidationCodeTexture";
      v3 = "Texture";
      goto LABEL_42;
    case 0x17uLL:
      v2 = "MTLValidationCodeBinaryArchive";
      v3 = "BinaryArchive";
      goto LABEL_42;
    case 0x18uLL:
      v2 = "MTLValidationCodeLibrary";
      v3 = "Library";
      goto LABEL_42;
    case 0x19uLL:
      v2 = "MTLValidationCodePixelFormat";
      v3 = "PixelFormat";
      goto LABEL_42;
    case 0x1AuLL:
      v2 = "MTLValidationCodeRasterizationRateMap";
      v3 = "RasterizationRateMap";
      goto LABEL_42;
    case 0x1BuLL:
      v2 = "MTLValidationCodeMotionEstimation";
      v3 = "MotionEstimation";
      goto LABEL_42;
    case 0x1CuLL:
      v2 = "MTLValidationCodeRenderCommandEncoder";
      v3 = "RenderCommandEncoder";
      goto LABEL_42;
    case 0x1DuLL:
      v2 = "MTLValidationCodeAcelerationStructureCommandEncoder";
      v3 = "AcelerationStructureCommandEncoder";
      goto LABEL_42;
    case 0x1EuLL:
      v2 = "MTLValidationCodeEvent";
      v3 = "Event";
      goto LABEL_42;
    case 0x1FuLL:
      v2 = "MTLValidationCodeMeshPipelineDescriptor";
      v3 = "MeshPipelineDescriptor";
      goto LABEL_42;
    case 0x20uLL:
      v2 = "MTLValidationCodeIOHandle";
      v3 = "IOHandle";
      goto LABEL_42;
    case 0x21uLL:
      v2 = "MTLValidationCodeIOCommandQueue";
      v3 = "IOCommandQueue";
      goto LABEL_42;
    case 0x22uLL:
      v2 = "MTLValidationCodeIOCommandBuffer";
      v3 = "IOCommandBuffer";
      goto LABEL_42;
    case 0x23uLL:
      v2 = "MTLValidationCodeResourceStateCommandEncoder";
      v3 = "ResourceStateCommandEncoder";
      goto LABEL_42;
    case 0x24uLL:
      v2 = "MTLValidationCodeResourceStateCommandEncoderMoveMappings";
      v3 = "ResourceStateCommandEncoderMoveMappings";
      goto LABEL_42;
    case 0x25uLL:
      v2 = "MTLValidationCodeSamplerArgumentBufferEncoding";
      v3 = "SamplerArgumentBufferEncoding";
      goto LABEL_42;
    case 0x26uLL:
      v2 = "MTLValidationCodeCount";
      v3 = "Count";
LABEL_42:
      if (a2)
      {
        result = v3;
      }

      else
      {
        result = v2;
      }

      break;
    default:
      result = "Unknown";
      break;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLVertexAmplificationModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLVertexAmplificationModeMask";
  if (a2)
  {
    v3 = "Mask";
  }

  v4 = "MTLVertexAmplificationModeCount";
  if (a2)
  {
    v4 = "Count";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLVertexFormatAsString(GPUTools::MTL *this, int a2)
{
  result = "Unknown";
  switch(this)
  {
    case 0uLL:
      v4 = "MTLVertexFormatInvalid";
      v5 = "Invalid";
      goto LABEL_56;
    case 1uLL:
      v4 = "MTLVertexFormatUChar2";
      v5 = "UChar2";
      goto LABEL_56;
    case 2uLL:
      v4 = "MTLVertexFormatUChar3";
      v5 = "UChar3";
      goto LABEL_56;
    case 3uLL:
      v4 = "MTLVertexFormatUChar4";
      v5 = "UChar4";
      goto LABEL_56;
    case 4uLL:
      v4 = "MTLVertexFormatChar2";
      v5 = "Char2";
      goto LABEL_56;
    case 5uLL:
      v4 = "MTLVertexFormatChar3";
      v5 = "Char3";
      goto LABEL_56;
    case 6uLL:
      v4 = "MTLVertexFormatChar4";
      v5 = "Char4";
      goto LABEL_56;
    case 7uLL:
      v4 = "MTLVertexFormatUChar2Normalized";
      v5 = "UChar2Normalized";
      goto LABEL_56;
    case 8uLL:
      v4 = "MTLVertexFormatUChar3Normalized";
      v5 = "UChar3Normalized";
      goto LABEL_56;
    case 9uLL:
      v4 = "MTLVertexFormatUChar4Normalized";
      v5 = "UChar4Normalized";
      goto LABEL_56;
    case 0xAuLL:
      v4 = "MTLVertexFormatChar2Normalized";
      v5 = "Char2Normalized";
      goto LABEL_56;
    case 0xBuLL:
      v4 = "MTLVertexFormatChar3Normalized";
      v5 = "Char3Normalized";
      goto LABEL_56;
    case 0xCuLL:
      v4 = "MTLVertexFormatChar4Normalized";
      v5 = "Char4Normalized";
      goto LABEL_56;
    case 0xDuLL:
      v4 = "MTLVertexFormatUShort2";
      v5 = "UShort2";
      goto LABEL_56;
    case 0xEuLL:
      v4 = "MTLVertexFormatUShort3";
      v5 = "UShort3";
      goto LABEL_56;
    case 0xFuLL:
      v4 = "MTLVertexFormatUShort4";
      v5 = "UShort4";
      goto LABEL_56;
    case 0x10uLL:
      v4 = "MTLVertexFormatShort2";
      v5 = "Short2";
      goto LABEL_56;
    case 0x11uLL:
      v4 = "MTLVertexFormatShort3";
      v5 = "Short3";
      goto LABEL_56;
    case 0x12uLL:
      v4 = "MTLVertexFormatShort4";
      v5 = "Short4";
      goto LABEL_56;
    case 0x13uLL:
      v4 = "MTLVertexFormatUShort2Normalized";
      v5 = "UShort2Normalized";
      goto LABEL_56;
    case 0x14uLL:
      v4 = "MTLVertexFormatUShort3Normalized";
      v5 = "UShort3Normalized";
      goto LABEL_56;
    case 0x15uLL:
      v4 = "MTLVertexFormatUShort4Normalized";
      v5 = "UShort4Normalized";
      goto LABEL_56;
    case 0x16uLL:
      v4 = "MTLVertexFormatShort2Normalized";
      v5 = "Short2Normalized";
      goto LABEL_56;
    case 0x17uLL:
      v4 = "MTLVertexFormatShort3Normalized";
      v5 = "Short3Normalized";
      goto LABEL_56;
    case 0x18uLL:
      v4 = "MTLVertexFormatShort4Normalized";
      v5 = "Short4Normalized";
      goto LABEL_56;
    case 0x19uLL:
      v4 = "MTLVertexFormatHalf2";
      v5 = "Half2";
      goto LABEL_56;
    case 0x1AuLL:
      v4 = "MTLVertexFormatHalf3";
      v5 = "Half3";
      goto LABEL_56;
    case 0x1BuLL:
      v4 = "MTLVertexFormatHalf4";
      v5 = "Half4";
      goto LABEL_56;
    case 0x1CuLL:
      v4 = "MTLVertexFormatFloat";
      v5 = "Float";
      goto LABEL_56;
    case 0x1DuLL:
      v4 = "MTLVertexFormatFloat2";
      v5 = "Float2";
      goto LABEL_56;
    case 0x1EuLL:
      v4 = "MTLVertexFormatFloat3";
      v5 = "Float3";
      goto LABEL_56;
    case 0x1FuLL:
      v4 = "MTLVertexFormatFloat4";
      v5 = "Float4";
      goto LABEL_56;
    case 0x20uLL:
      v4 = "MTLVertexFormatInt";
      v5 = "Int";
      goto LABEL_56;
    case 0x21uLL:
      v4 = "MTLVertexFormatInt2";
      v5 = "Int2";
      goto LABEL_56;
    case 0x22uLL:
      v4 = "MTLVertexFormatInt3";
      v5 = "Int3";
      goto LABEL_56;
    case 0x23uLL:
      v4 = "MTLVertexFormatInt4";
      v5 = "Int4";
      goto LABEL_56;
    case 0x24uLL:
      v4 = "MTLVertexFormatUInt";
      v5 = "UInt";
      goto LABEL_56;
    case 0x25uLL:
      v4 = "MTLVertexFormatUInt2";
      v5 = "UInt2";
      goto LABEL_56;
    case 0x26uLL:
      v4 = "MTLVertexFormatUInt3";
      v5 = "UInt3";
      goto LABEL_56;
    case 0x27uLL:
      v4 = "MTLVertexFormatUInt4";
      v5 = "UInt4";
      goto LABEL_56;
    case 0x28uLL:
      v4 = "MTLVertexFormatInt1010102Normalized";
      v5 = "Int1010102Normalized";
      goto LABEL_56;
    case 0x29uLL:
      v4 = "MTLVertexFormatUInt1010102Normalized";
      v5 = "UInt1010102Normalized";
      goto LABEL_56;
    case 0x2AuLL:
      v4 = "MTLVertexFormatUChar4Normalized_BGRA";
      v5 = "UChar4Normalized_BGRA";
      goto LABEL_56;
    case 0x2DuLL:
      v4 = "MTLVertexFormatUChar";
      v5 = "UChar";
      goto LABEL_56;
    case 0x2EuLL:
      v4 = "MTLVertexFormatChar";
      v5 = "Char";
      goto LABEL_56;
    case 0x2FuLL:
      v4 = "MTLVertexFormatUCharNormalized";
      v5 = "UCharNormalized";
      goto LABEL_56;
    case 0x30uLL:
      v4 = "MTLVertexFormatCharNormalized";
      v5 = "CharNormalized";
      goto LABEL_56;
    case 0x31uLL:
      v4 = "MTLVertexFormatUShort";
      v5 = "UShort";
      goto LABEL_56;
    case 0x32uLL:
      v4 = "MTLVertexFormatShort";
      v5 = "Short";
      goto LABEL_56;
    case 0x33uLL:
      v4 = "MTLVertexFormatUShortNormalized";
      v5 = "UShortNormalized";
      goto LABEL_56;
    case 0x34uLL:
      v4 = "MTLVertexFormatShortNormalized";
      v5 = "ShortNormalized";
      goto LABEL_56;
    case 0x35uLL:
      v4 = "MTLVertexFormatHalf";
      v5 = "Half";
      goto LABEL_56;
    case 0x36uLL:
      v4 = "MTLVertexFormatFloatRG11B10";
      v5 = "FloatRG11B10";
      goto LABEL_56;
    case 0x37uLL:
      v4 = "MTLVertexFormatFloatRGB9E5";
      v5 = "FloatRGB9E5";
LABEL_56:
      if (a2)
      {
        result = v5;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      return result;
  }

  return result;
}

const char *GPUTools::MTL::GetMTLVertexStepFunctionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLVertexStepFunctionPerInstance";
  if (a2)
  {
    v3 = "PerInstance";
  }

  v4 = "MTLVertexStepFunctionPerPatch";
  if (a2)
  {
    v4 = "PerPatch";
  }

  v5 = "MTLVertexStepFunctionPerPatchControlPoint";
  if (a2)
  {
    v5 = "PerPatchControlPoint";
  }

  if (this != 4)
  {
    v5 = "Unknown";
  }

  if (this != 3)
  {
    v4 = v5;
  }

  if (this != 2)
  {
    v3 = v4;
  }

  v6 = "MTLVertexStepFunctionConstant";
  if (a2)
  {
    v6 = "Constant";
  }

  v7 = "MTLVertexStepFunctionPerVertex";
  if (a2)
  {
    v7 = "PerVertex";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLVisibilityResultModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLVisibilityResultModeDisabled";
  if (a2)
  {
    v3 = "Disabled";
  }

  v4 = "MTLVisibilityResultModeCounting";
  if (a2)
  {
    v4 = "Counting";
  }

  v5 = "Boolean";
  if (!a2)
  {
    v5 = "MTLVisibilityResultModeBoolean";
  }

  if (this == 1)
  {
    v2 = v5;
  }

  if (this == 2)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLWindingAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLWindingCounterClockwise";
  if (a2)
  {
    v3 = "CounterClockwise";
  }

  v4 = "MTLWindingClockwise";
  if (a2)
  {
    v4 = "Clockwise";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::Get_MTLArgumentBufferPatchingTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "_MTLArgumentBufferPatchingTypeNone";
  if (a2)
  {
    v3 = "None";
  }

  v4 = "_MTLArgumentBufferPatchingTypeReplace";
  if (a2)
  {
    v4 = "Replace";
  }

  v5 = "Indexed";
  if (!a2)
  {
    v5 = "_MTLArgumentBufferPatchingTypeIndexed";
  }

  if (this == 1)
  {
    v2 = v5;
  }

  if (this == 2)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::Get_MTLArgumentBufferResourceTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  if (this > 4)
  {
    v3 = "_MTLArgumentBufferResourceTypeIntersectionFunctionTable";
    if (a2)
    {
      v3 = "IntersectionFunctionTable";
    }

    v9 = "_MTLArgumentBufferResourceTypeCount";
    if (a2)
    {
      v9 = "Count";
    }

    v10 = "_MTLArgumentBufferResourceTypeAccelerationStructure";
    if (a2)
    {
      v10 = "AccelerationStructure";
    }

    if (this != 8)
    {
      v10 = "Unknown";
    }

    if (this != 9)
    {
      v9 = v10;
    }

    if (this != 7)
    {
      v3 = v9;
    }

    v11 = "_MTLArgumentBufferResourceTypeIndirectCommandBuffer";
    if (a2)
    {
      v11 = "IndirectCommandBuffer";
    }

    v12 = "_MTLArgumentBufferResourceTypeVisibleFunctionTable";
    if (a2)
    {
      v12 = "VisibleFunctionTable";
    }

    if (this == 6)
    {
      v2 = v12;
    }

    if (this == 5)
    {
      v2 = v11;
    }

    v8 = this <= 6;
  }

  else
  {
    v3 = "_MTLArgumentBufferResourceTypeConstant";
    if (a2)
    {
      v3 = "Constant";
    }

    v4 = "_MTLArgumentBufferResourceTypeBuffer";
    if (a2)
    {
      v4 = "Buffer";
    }

    v5 = "_MTLArgumentBufferResourceTypePipelineState";
    if (a2)
    {
      v5 = "PipelineState";
    }

    if (this != 4)
    {
      v5 = "Unknown";
    }

    if (this != 3)
    {
      v4 = v5;
    }

    if (this != 2)
    {
      v3 = v4;
    }

    v6 = "_MTLArgumentBufferResourceTypeTexture";
    if (a2)
    {
      v6 = "Texture";
    }

    v7 = "_MTLArgumentBufferResourceTypeSampler";
    if (a2)
    {
      v7 = "Sampler";
    }

    if (this == 1)
    {
      v2 = v7;
    }

    if (!this)
    {
      v2 = v6;
    }

    v8 = this <= 1;
  }

  if (v8)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::Get_MTLMachOTypeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "_MTLMachOTypeIntelGPU";
  if (a2)
  {
    v3 = "IntelGPU";
  }

  v4 = "_MTLMachOTypeAIR";
  if (a2)
  {
    v4 = "AIR";
  }

  if (this != 16777239)
  {
    v4 = "Unknown";
  }

  if (this == 16777237)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = "_MTLMachOTypeAppleGPU";
  if (a2)
  {
    v6 = "AppleGPU";
  }

  v7 = "_MTLMachOTypeAMDGPU";
  if (a2)
  {
    v7 = "AMDGPU";
  }

  if (this == 16777236)
  {
    v2 = v7;
  }

  if (this == 16777235)
  {
    v2 = v6;
  }

  if (this <= 16777236)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

const char *GPUTools::MTL::GetMTLFXSpatialScalerColorProcessingModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLFXSpatialScalerColorProcessingModePerceptual";
  if (a2)
  {
    v3 = "Perceptual";
  }

  v4 = "MTLFXSpatialScalerColorProcessingModeLinear";
  if (a2)
  {
    v4 = "Linear";
  }

  v5 = "HDR";
  if (!a2)
  {
    v5 = "MTLFXSpatialScalerColorProcessingModeHDR";
  }

  if (this == 2)
  {
    v2 = v5;
  }

  if (this == 1)
  {
    v2 = v4;
  }

  if (this)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLFXSpatialScalerVersionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLFXSpatialScalerVersionPrivate_Bicubic";
  if (a2)
  {
    v3 = "Private_Bicubic";
  }

  v4 = "MTLFXSpatialScalerVersionPrivate_v1";
  if (a2)
  {
    v4 = "Private_v1";
  }

  v5 = "MTLFXSpatialScalerVersionPrivate_ASE";
  if (a2)
  {
    v5 = "Private_ASE";
  }

  if (this != 65538)
  {
    v5 = "Unknown";
  }

  if (this != 65537)
  {
    v4 = v5;
  }

  if (this != 0x10000)
  {
    v3 = v4;
  }

  v6 = "MTLFXSpatialScalerVersion_v1";
  if (a2)
  {
    v6 = "_v1";
  }

  v7 = "MTLFXSpatialScalerVersion_End";
  if (a2)
  {
    v7 = "_End";
  }

  if (this == 1)
  {
    v2 = v7;
  }

  if (!this)
  {
    v2 = v6;
  }

  if (this < 0x10000)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

const char *GPUTools::MTL::GetMTLFXTemporalScalerExecutionModeAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLFXTemporalScalerExecutionModeGPU";
  if (a2)
  {
    v3 = "GPU";
  }

  v4 = "MTLFXTemporalScalerExecutionModeANE";
  if (a2)
  {
    v4 = "ANE";
  }

  if (!this)
  {
    v2 = v4;
  }

  if (this == 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

const char *GPUTools::MTL::GetMTLFXTemporalScalerVersionAsString(GPUTools::MTL *this, int a2)
{
  v2 = "Unknown";
  v3 = "MTLFXTemporalScalerVersionPrivate_TAAU";
  if (a2)
  {
    v3 = "Private_TAAU";
  }

  v4 = "MTLFXTemporalScalerVersionPrivate_BRNet3";
  if (a2)
  {
    v4 = "Private_BRNet3";
  }

  if (this != 0x10000)
  {
    v4 = "Unknown";
  }

  if (this != 65537)
  {
    v3 = v4;
  }

  v5 = "MTLFXTemporalScalerVersion_v1";
  if (a2)
  {
    v5 = "_v1";
  }

  v6 = "MTLFXTemporalScalerVersion_End";
  if (a2)
  {
    v6 = "_End";
  }

  if (this == 1)
  {
    v2 = v6;
  }

  if (!this)
  {
    v2 = v5;
  }

  if (this < 0x10000)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void GPUTools::MTL::InstallMTLFuncEnumsStringTable(GPUTools::MTL *this)
{
  if (GPUTools::MTL::InstallMTLFuncEnumsStringTable(void)::sOnce != -1)
  {
    GPUTools::MTL::InstallMTLFuncEnumsStringTable();
  }
}

uint64_t ___ZN8GPUTools3MTL30InstallMTLFuncEnumsStringTableEv_block_invoke()
{
  dy_add_fenum_string_tables();
  dy_add_fenum_string_tables();
  dy_add_fenum_string_tables();
  dy_add_fenum_string_tables();
  dy_add_fenum_string_tables();
  dy_add_fenum_string_tables();
  dy_add_fenum_string_tables();

  return dy_add_fenum_string_tables();
}

uint64_t GPUTools::MTL::GetFuncEnumReceiverType(GPUTools::MTL *this)
{
  if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_257AB71E0, vaddq_s32(vdupq_n_s32(this), xmmword_257AB71D0)))) & 1) == 0 && (this + 6656) >= 5 && (this + 6144) >= 0x32 && (this & 0xFFFFFFFE) != 0xFFFFCF00 && (this & 0xFFFFFFF0) != 0xFFFFE400)
  {
    return 0;
  }

  if (this > -12545)
  {
    if (this > -7169)
    {
      if (this <= -6654)
      {
        if (this > -6657)
        {
          if (this != -6656 && this != -6655)
          {
            v3 = -6654;
LABEL_77:
            if (this != v3)
            {
              return 0;
            }
          }

          return 84;
        }

        else
        {
          switch(this)
          {
            case 0xFFFFE400:
            case 0xFFFFE402:
            case 0xFFFFE403:
            case 0xFFFFE404:
            case 0xFFFFE405:
            case 0xFFFFE406:
            case 0xFFFFE408:
            case 0xFFFFE409:
            case 0xFFFFE40E:
            case 0xFFFFE40F:
              result = 3;
              break;
            case 0xFFFFE401:
            case 0xFFFFE407:
            case 0xFFFFE40A:
            case 0xFFFFE40B:
            case 0xFFFFE40C:
              result = 2;
              break;
            case 0xFFFFE40D:
              result = 85;
              break;
            default:
              return 0;
          }
        }
      }

      else
      {
        switch(this)
        {
          case 0xFFFFE800:
          case 0xFFFFE80C:
          case 0xFFFFE80E:
          case 0xFFFFE827:
          case 0xFFFFE82B:
            result = 10;
            break;
          case 0xFFFFE801:
          case 0xFFFFE803:
          case 0xFFFFE80A:
          case 0xFFFFE80B:
          case 0xFFFFE80D:
          case 0xFFFFE80F:
          case 0xFFFFE816:
          case 0xFFFFE819:
          case 0xFFFFE81C:
          case 0xFFFFE821:
          case 0xFFFFE822:
          case 0xFFFFE823:
          case 0xFFFFE830:
          case 0xFFFFE831:
LABEL_10:
            result = 36;
            break;
          case 0xFFFFE802:
          case 0xFFFFE812:
          case 0xFFFFE817:
            result = 7;
            break;
          case 0xFFFFE804:
          case 0xFFFFE807:
            result = 11;
            break;
          case 0xFFFFE805:
            result = 15;
            break;
          case 0xFFFFE806:
          case 0xFFFFE809:
          case 0xFFFFE81B:
          case 0xFFFFE81D:
            result = 8;
            break;
          case 0xFFFFE808:
          case 0xFFFFE818:
          case 0xFFFFE820:
          case 0xFFFFE824:
          case 0xFFFFE826:
            result = 5;
            break;
          case 0xFFFFE810:
          case 0xFFFFE814:
          case 0xFFFFE828:
          case 0xFFFFE829:
            result = 9;
            break;
          case 0xFFFFE811:
          case 0xFFFFE81E:
          case 0xFFFFE81F:
          case 0xFFFFE825:
            result = 6;
            break;
          case 0xFFFFE813:
          case 0xFFFFE815:
          case 0xFFFFE81A:
            result = 4;
            break;
          case 0xFFFFE82A:
          case 0xFFFFE82C:
            result = 14;
            break;
          case 0xFFFFE82D:
          case 0xFFFFE82E:
            result = 13;
            break;
          case 0xFFFFE82F:
            result = 12;
            break;
          default:
            if (this == -6653)
            {
              return 84;
            }

            v3 = -6652;
            goto LABEL_77;
        }
      }
    }

    else
    {
      v2 = this + 10240;
      result = 1;
      switch(v2)
      {
        case 0:
        case 11:
        case 15:
LABEL_19:
          result = 25;
          break;
        case 1:
        case 3:
        case 7:
        case 10:
          goto LABEL_10;
        case 2:
        case 4:
        case 6:
        case 8:
        case 9:
        case 13:
        case 18:
        case 28:
        case 35:
        case 36:
        case 39:
        case 42:
        case 55:
        case 76:
LABEL_14:
          result = 80;
          break;
        case 5:
        case 12:
        case 17:
        case 19:
        case 30:
        case 37:
        case 40:
        case 53:
        case 54:
LABEL_24:
          result = 22;
          break;
        case 14:
        case 77:
LABEL_56:
          result = 75;
          break;
        case 20:
        case 41:
        case 48:
        case 56:
        case 68:
        case 75:
LABEL_22:
          result = 71;
          break;
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 31:
        case 38:
        case 74:
LABEL_32:
          result = 57;
          break;
        case 26:
        case 49:
        case 69:
        case 78:
LABEL_41:
          result = 29;
          break;
        case 27:
LABEL_43:
          result = 74;
          break;
        case 29:
        case 32:
        case 33:
LABEL_38:
          result = 50;
          break;
        case 34:
          result = 77;
          break;
        case 43:
        case 44:
        case 45:
        case 46:
        case 50:
        case 58:
        case 59:
        case 67:
        case 70:
        case 71:
        case 73:
        case 81:
        case 84:
LABEL_31:
          result = 16;
          break;
        case 47:
        case 62:
        case 63:
        case 66:
        case 80:
        case 87:
LABEL_33:
          result = 83;
          break;
        case 51:
LABEL_57:
          result = 37;
          break;
        case 52:
        case 57:
LABEL_39:
          result = 62;
          break;
        case 60:
        case 61:
        case 64:
        case 65:
        case 79:
        case 88:
LABEL_26:
          result = 60;
          break;
        case 72:
          return result;
        case 82:
        case 85:
        case 86:
LABEL_21:
          result = 17;
          break;
        case 83:
LABEL_45:
          result = 43;
          break;
        case 89:
LABEL_46:
          result = 23;
          break;
        default:
          return 0;
      }
    }
  }

  else if (this <= -18431)
  {
    switch(this)
    {
      case 0xFFFFB000:
      case 0xFFFFB001:
      case 0xFFFFB002:
      case 0xFFFFB003:
      case 0xFFFFB004:
      case 0xFFFFB005:
      case 0xFFFFB006:
        result = 39;
        break;
      case 0xFFFFB007:
      case 0xFFFFB008:
      case 0xFFFFB009:
      case 0xFFFFB00A:
      case 0xFFFFB00B:
      case 0xFFFFB00C:
      case 0xFFFFB00D:
      case 0xFFFFB00E:
      case 0xFFFFB00F:
      case 0xFFFFB010:
      case 0xFFFFB011:
      case 0xFFFFB012:
      case 0xFFFFB013:
      case 0xFFFFB014:
      case 0xFFFFB015:
      case 0xFFFFB016:
      case 0xFFFFB017:
      case 0xFFFFB018:
LABEL_30:
        result = 40;
        break;
      default:
        if (this != -18432 && this != -18431)
        {
          return 0;
        }

        goto LABEL_10;
    }
  }

  else
  {
    switch(this)
    {
      case 0xFFFFC000:
      case 0xFFFFC001:
      case 0xFFFFC002:
      case 0xFFFFC003:
      case 0xFFFFC004:
      case 0xFFFFC005:
      case 0xFFFFC006:
      case 0xFFFFC007:
      case 0xFFFFC008:
      case 0xFFFFC009:
      case 0xFFFFC00A:
      case 0xFFFFC00B:
      case 0xFFFFC09A:
      case 0xFFFFC09B:
      case 0xFFFFC0AB:
      case 0xFFFFC0AC:
      case 0xFFFFC0AD:
      case 0xFFFFC0AE:
      case 0xFFFFC0AF:
      case 0xFFFFC0FD:
      case 0xFFFFC104:
      case 0xFFFFC185:
      case 0xFFFFC186:
      case 0xFFFFC187:
      case 0xFFFFC188:
      case 0xFFFFC197:
      case 0xFFFFC198:
      case 0xFFFFC1A8:
      case 0xFFFFC1A9:
      case 0xFFFFC1AA:
      case 0xFFFFC1FA:
      case 0xFFFFC1FB:
      case 0xFFFFC1FC:
      case 0xFFFFC1FD:
      case 0xFFFFC246:
      case 0xFFFFC248:
      case 0xFFFFC24A:
      case 0xFFFFC274:
      case 0xFFFFC275:
      case 0xFFFFC38E:
      case 0xFFFFC38F:
      case 0xFFFFC390:
      case 0xFFFFC391:
      case 0xFFFFC392:
      case 0xFFFFC393:
        result = 21;
        break;
      case 0xFFFFC00C:
      case 0xFFFFC00D:
      case 0xFFFFC00E:
      case 0xFFFFC00F:
      case 0xFFFFC010:
      case 0xFFFFC011:
      case 0xFFFFC012:
      case 0xFFFFC09C:
      case 0xFFFFC0B0:
      case 0xFFFFC106:
      case 0xFFFFC10F:
      case 0xFFFFC118:
      case 0xFFFFC119:
      case 0xFFFFC11A:
      case 0xFFFFC11E:
      case 0xFFFFC1D6:
      case 0xFFFFC1E0:
      case 0xFFFFC1FE:
      case 0xFFFFC268:
      case 0xFFFFC269:
      case 0xFFFFC36F:
      case 0xFFFFC370:
      case 0xFFFFC403:
        goto LABEL_24;
      case 0xFFFFC013:
      case 0xFFFFC014:
      case 0xFFFFC015:
      case 0xFFFFC016:
      case 0xFFFFC017:
      case 0xFFFFC018:
      case 0xFFFFC019:
      case 0xFFFFC01A:
      case 0xFFFFC01B:
      case 0xFFFFC01C:
      case 0xFFFFC01D:
      case 0xFFFFC01E:
      case 0xFFFFC01F:
      case 0xFFFFC020:
      case 0xFFFFC021:
      case 0xFFFFC022:
      case 0xFFFFC0B6:
      case 0xFFFFC0BD:
      case 0xFFFFC0DC:
      case 0xFFFFC0E9:
      case 0xFFFFC0FB:
      case 0xFFFFC13F:
      case 0xFFFFC140:
      case 0xFFFFC172:
      case 0xFFFFC173:
      case 0xFFFFC174:
      case 0xFFFFC189:
      case 0xFFFFC18A:
      case 0xFFFFC1A1:
      case 0xFFFFC1A2:
      case 0xFFFFC1DC:
      case 0xFFFFC1E5:
      case 0xFFFFC1E6:
      case 0xFFFFC1E7:
      case 0xFFFFC1FF:
      case 0xFFFFC200:
      case 0xFFFFC201:
      case 0xFFFFC202:
      case 0xFFFFC27B:
      case 0xFFFFC2A0:
      case 0xFFFFC2A9:
      case 0xFFFFC2C7:
      case 0xFFFFC31D:
      case 0xFFFFC31E:
      case 0xFFFFC31F:
      case 0xFFFFC320:
      case 0xFFFFC353:
      case 0xFFFFC373:
      case 0xFFFFC374:
      case 0xFFFFC3CE:
      case 0xFFFFC3FC:
      case 0xFFFFC422:
      case 0xFFFFC42A:
      case 0xFFFFC42C:
      case 0xFFFFC44A:
      case 0xFFFFC44B:
      case 0xFFFFC468:
      case 0xFFFFC469:
      case 0xFFFFC46A:
      case 0xFFFFC46B:
      case 0xFFFFC48F:
      case 0xFFFFC490:
      case 0xFFFFC491:
        goto LABEL_19;
      case 0xFFFFC023:
      case 0xFFFFC024:
      case 0xFFFFC025:
      case 0xFFFFC026:
      case 0xFFFFC027:
      case 0xFFFFC028:
      case 0xFFFFC029:
      case 0xFFFFC02A:
      case 0xFFFFC02B:
      case 0xFFFFC02C:
      case 0xFFFFC0FA:
      case 0xFFFFC23D:
      case 0xFFFFC23E:
      case 0xFFFFC23F:
      case 0xFFFFC240:
      case 0xFFFFC241:
      case 0xFFFFC242:
      case 0xFFFFC243:
      case 0xFFFFC244:
      case 0xFFFFC2AB:
      case 0xFFFFC2F8:
      case 0xFFFFC46C:
      case 0xFFFFC46D:
      case 0xFFFFC46E:
      case 0xFFFFC46F:
        result = 27;
        break;
      case 0xFFFFC02D:
      case 0xFFFFC02E:
      case 0xFFFFC02F:
      case 0xFFFFC030:
      case 0xFFFFC031:
      case 0xFFFFC032:
      case 0xFFFFC033:
      case 0xFFFFC034:
      case 0xFFFFC035:
      case 0xFFFFC036:
      case 0xFFFFC037:
      case 0xFFFFC038:
      case 0xFFFFC039:
      case 0xFFFFC03A:
      case 0xFFFFC03B:
      case 0xFFFFC03C:
      case 0xFFFFC03D:
      case 0xFFFFC03E:
      case 0xFFFFC09D:
      case 0xFFFFC09E:
      case 0xFFFFC0A4:
      case 0xFFFFC0B1:
      case 0xFFFFC0EA:
      case 0xFFFFC0EB:
      case 0xFFFFC0FE:
      case 0xFFFFC0FF:
      case 0xFFFFC11C:
      case 0xFFFFC131:
      case 0xFFFFC132:
      case 0xFFFFC151:
      case 0xFFFFC152:
      case 0xFFFFC153:
      case 0xFFFFC154:
      case 0xFFFFC16F:
      case 0xFFFFC175:
      case 0xFFFFC176:
      case 0xFFFFC177:
      case 0xFFFFC178:
      case 0xFFFFC1A3:
      case 0xFFFFC1A4:
      case 0xFFFFC1A5:
      case 0xFFFFC203:
      case 0xFFFFC276:
      case 0xFFFFC28C:
      case 0xFFFFC2A1:
      case 0xFFFFC2A2:
      case 0xFFFFC2A3:
      case 0xFFFFC2F9:
      case 0xFFFFC2FA:
      case 0xFFFFC2FB:
      case 0xFFFFC321:
      case 0xFFFFC322:
      case 0xFFFFC323:
      case 0xFFFFC324:
      case 0xFFFFC362:
      case 0xFFFFC363:
      case 0xFFFFC364:
      case 0xFFFFC365:
      case 0xFFFFC366:
      case 0xFFFFC367:
      case 0xFFFFC368:
      case 0xFFFFC369:
      case 0xFFFFC36A:
      case 0xFFFFC371:
      case 0xFFFFC44C:
      case 0xFFFFC44D:
      case 0xFFFFC44E:
      case 0xFFFFC44F:
      case 0xFFFFC450:
      case 0xFFFFC451:
      case 0xFFFFC452:
      case 0xFFFFC470:
      case 0xFFFFC471:
        result = 28;
        break;
      case 0xFFFFC03F:
      case 0xFFFFC124:
      case 0xFFFFC18B:
      case 0xFFFFC204:
      case 0xFFFFC2AC:
      case 0xFFFFC2AD:
      case 0xFFFFC2FC:
      case 0xFFFFC2FD:
      case 0xFFFFC2FE:
      case 0xFFFFC325:
      case 0xFFFFC326:
      case 0xFFFFC34B:
      case 0xFFFFC34C:
        goto LABEL_41;
      case 0xFFFFC040:
        result = 34;
        break;
      case 0xFFFFC041:
      case 0xFFFFC042:
      case 0xFFFFC043:
      case 0xFFFFC044:
      case 0xFFFFC045:
      case 0xFFFFC046:
      case 0xFFFFC047:
      case 0xFFFFC048:
      case 0xFFFFC049:
      case 0xFFFFC04A:
      case 0xFFFFC04B:
      case 0xFFFFC04C:
      case 0xFFFFC04D:
      case 0xFFFFC04E:
      case 0xFFFFC04F:
      case 0xFFFFC050:
      case 0xFFFFC051:
      case 0xFFFFC052:
      case 0xFFFFC053:
      case 0xFFFFC054:
      case 0xFFFFC055:
      case 0xFFFFC056:
      case 0xFFFFC057:
      case 0xFFFFC058:
      case 0xFFFFC059:
      case 0xFFFFC05A:
      case 0xFFFFC0B2:
      case 0xFFFFC0B3:
      case 0xFFFFC0B8:
      case 0xFFFFC0B9:
      case 0xFFFFC0BA:
      case 0xFFFFC0BB:
      case 0xFFFFC0DA:
      case 0xFFFFC0DB:
      case 0xFFFFC0DD:
      case 0xFFFFC100:
      case 0xFFFFC107:
      case 0xFFFFC108:
      case 0xFFFFC110:
      case 0xFFFFC111:
      case 0xFFFFC11B:
      case 0xFFFFC11D:
      case 0xFFFFC120:
      case 0xFFFFC121:
      case 0xFFFFC123:
      case 0xFFFFC125:
      case 0xFFFFC126:
      case 0xFFFFC127:
      case 0xFFFFC128:
      case 0xFFFFC135:
      case 0xFFFFC13E:
      case 0xFFFFC14E:
      case 0xFFFFC14F:
      case 0xFFFFC150:
      case 0xFFFFC159:
      case 0xFFFFC15B:
      case 0xFFFFC15C:
      case 0xFFFFC15D:
      case 0xFFFFC161:
      case 0xFFFFC162:
      case 0xFFFFC163:
      case 0xFFFFC16E:
      case 0xFFFFC170:
      case 0xFFFFC171:
      case 0xFFFFC182:
      case 0xFFFFC183:
      case 0xFFFFC184:
      case 0xFFFFC194:
      case 0xFFFFC195:
      case 0xFFFFC196:
      case 0xFFFFC19C:
      case 0xFFFFC19D:
      case 0xFFFFC19F:
      case 0xFFFFC1A0:
      case 0xFFFFC1D8:
      case 0xFFFFC1DB:
      case 0xFFFFC1E2:
      case 0xFFFFC1E3:
      case 0xFFFFC1E4:
      case 0xFFFFC1EC:
      case 0xFFFFC1ED:
      case 0xFFFFC208:
      case 0xFFFFC209:
      case 0xFFFFC20A:
      case 0xFFFFC20B:
      case 0xFFFFC20C:
      case 0xFFFFC20D:
      case 0xFFFFC20E:
      case 0xFFFFC20F:
      case 0xFFFFC210:
      case 0xFFFFC211:
      case 0xFFFFC212:
      case 0xFFFFC213:
      case 0xFFFFC214:
      case 0xFFFFC215:
      case 0xFFFFC216:
      case 0xFFFFC217:
      case 0xFFFFC218:
      case 0xFFFFC219:
      case 0xFFFFC21A:
      case 0xFFFFC21B:
      case 0xFFFFC21C:
      case 0xFFFFC21D:
      case 0xFFFFC21E:
      case 0xFFFFC21F:
      case 0xFFFFC220:
      case 0xFFFFC221:
      case 0xFFFFC222:
      case 0xFFFFC223:
      case 0xFFFFC224:
      case 0xFFFFC225:
      case 0xFFFFC226:
      case 0xFFFFC227:
      case 0xFFFFC228:
      case 0xFFFFC229:
      case 0xFFFFC23A:
      case 0xFFFFC23B:
      case 0xFFFFC24C:
      case 0xFFFFC24F:
      case 0xFFFFC251:
      case 0xFFFFC25C:
      case 0xFFFFC25D:
      case 0xFFFFC262:
      case 0xFFFFC271:
      case 0xFFFFC272:
      case 0xFFFFC273:
      case 0xFFFFC279:
      case 0xFFFFC27D:
      case 0xFFFFC27E:
      case 0xFFFFC287:
      case 0xFFFFC28D:
      case 0xFFFFC28E:
      case 0xFFFFC299:
      case 0xFFFFC29A:
      case 0xFFFFC29B:
      case 0xFFFFC29C:
      case 0xFFFFC2A4:
      case 0xFFFFC2A5:
      case 0xFFFFC2A6:
      case 0xFFFFC2A7:
      case 0xFFFFC2A8:
      case 0xFFFFC2AE:
      case 0xFFFFC2AF:
      case 0xFFFFC2B0:
      case 0xFFFFC2B1:
      case 0xFFFFC2B2:
      case 0xFFFFC2B3:
      case 0xFFFFC2C8:
      case 0xFFFFC2C9:
      case 0xFFFFC2FF:
      case 0xFFFFC300:
      case 0xFFFFC301:
      case 0xFFFFC302:
      case 0xFFFFC303:
      case 0xFFFFC304:
      case 0xFFFFC327:
      case 0xFFFFC328:
      case 0xFFFFC329:
      case 0xFFFFC351:
      case 0xFFFFC354:
      case 0xFFFFC355:
      case 0xFFFFC36B:
      case 0xFFFFC36E:
      case 0xFFFFC375:
      case 0xFFFFC376:
      case 0xFFFFC377:
      case 0xFFFFC378:
      case 0xFFFFC38D:
      case 0xFFFFC394:
      case 0xFFFFC395:
      case 0xFFFFC398:
      case 0xFFFFC3B5:
      case 0xFFFFC3B6:
      case 0xFFFFC3B7:
      case 0xFFFFC3B8:
      case 0xFFFFC3B9:
      case 0xFFFFC3BA:
      case 0xFFFFC3BB:
      case 0xFFFFC3BC:
      case 0xFFFFC3BD:
      case 0xFFFFC3BF:
      case 0xFFFFC3C3:
      case 0xFFFFC3C4:
      case 0xFFFFC3C5:
      case 0xFFFFC3C6:
      case 0xFFFFC3C7:
      case 0xFFFFC3D2:
      case 0xFFFFC3D3:
      case 0xFFFFC3D4:
      case 0xFFFFC3D5:
      case 0xFFFFC3D6:
      case 0xFFFFC3FD:
      case 0xFFFFC3FE:
      case 0xFFFFC3FF:
      case 0xFFFFC400:
      case 0xFFFFC401:
      case 0xFFFFC402:
      case 0xFFFFC40A:
      case 0xFFFFC40B:
      case 0xFFFFC40C:
      case 0xFFFFC40D:
      case 0xFFFFC42B:
      case 0xFFFFC42D:
      case 0xFFFFC42E:
      case 0xFFFFC43E:
      case 0xFFFFC440:
      case 0xFFFFC45A:
      case 0xFFFFC45B:
      case 0xFFFFC45C:
      case 0xFFFFC45D:
      case 0xFFFFC463:
      case 0xFFFFC464:
      case 0xFFFFC465:
      case 0xFFFFC472:
      case 0xFFFFC473:
      case 0xFFFFC492:
        goto LABEL_10;
      case 0xFFFFC05B:
      case 0xFFFFC0F9:
      case 0xFFFFC105:
      case 0xFFFFC14C:
      case 0xFFFFC14D:
      case 0xFFFFC22A:
      case 0xFFFFC29D:
      case 0xFFFFC29E:
      case 0xFFFFC29F:
      case 0xFFFFC2CA:
      case 0xFFFFC2CB:
        goto LABEL_45;
      case 0xFFFFC05C:
      case 0xFFFFC05D:
      case 0xFFFFC05E:
      case 0xFFFFC115:
      case 0xFFFFC116:
      case 0xFFFFC12D:
      case 0xFFFFC12E:
      case 0xFFFFC12F:
      case 0xFFFFC15A:
      case 0xFFFFC264:
      case 0xFFFFC307:
      case 0xFFFFC308:
      case 0xFFFFC341:
      case 0xFFFFC342:
      case 0xFFFFC381:
      case 0xFFFFC3C1:
      case 0xFFFFC425:
      case 0xFFFFC426:
        goto LABEL_39;
      case 0xFFFFC05F:
      case 0xFFFFC060:
      case 0xFFFFC061:
      case 0xFFFFC062:
      case 0xFFFFC063:
      case 0xFFFFC064:
      case 0xFFFFC065:
      case 0xFFFFC066:
      case 0xFFFFC0DE:
      case 0xFFFFC0DF:
      case 0xFFFFC0E0:
      case 0xFFFFC164:
      case 0xFFFFC165:
      case 0xFFFFC166:
        result = 65;
        break;
      case 0xFFFFC067:
      case 0xFFFFC068:
      case 0xFFFFC069:
      case 0xFFFFC06A:
      case 0xFFFFC06B:
      case 0xFFFFC06C:
      case 0xFFFFC06D:
      case 0xFFFFC06E:
      case 0xFFFFC06F:
      case 0xFFFFC070:
      case 0xFFFFC071:
      case 0xFFFFC072:
      case 0xFFFFC073:
      case 0xFFFFC074:
      case 0xFFFFC075:
      case 0xFFFFC076:
      case 0xFFFFC077:
      case 0xFFFFC078:
      case 0xFFFFC079:
      case 0xFFFFC07A:
      case 0xFFFFC07B:
      case 0xFFFFC07C:
      case 0xFFFFC07D:
      case 0xFFFFC07E:
      case 0xFFFFC07F:
      case 0xFFFFC080:
      case 0xFFFFC081:
      case 0xFFFFC082:
      case 0xFFFFC083:
      case 0xFFFFC084:
      case 0xFFFFC085:
      case 0xFFFFC086:
      case 0xFFFFC087:
      case 0xFFFFC088:
      case 0xFFFFC089:
      case 0xFFFFC08A:
      case 0xFFFFC08B:
      case 0xFFFFC08C:
      case 0xFFFFC08D:
      case 0xFFFFC09F:
      case 0xFFFFC0A0:
      case 0xFFFFC0A1:
      case 0xFFFFC0A2:
      case 0xFFFFC0A5:
      case 0xFFFFC0A6:
      case 0xFFFFC0A7:
      case 0xFFFFC0A8:
      case 0xFFFFC0A9:
      case 0xFFFFC0AA:
      case 0xFFFFC0B4:
      case 0xFFFFC0B5:
      case 0xFFFFC0B7:
      case 0xFFFFC0E1:
      case 0xFFFFC0E2:
      case 0xFFFFC0E3:
      case 0xFFFFC0E4:
      case 0xFFFFC0E5:
      case 0xFFFFC0EC:
      case 0xFFFFC0ED:
      case 0xFFFFC0EE:
      case 0xFFFFC0EF:
      case 0xFFFFC0F0:
      case 0xFFFFC0F1:
      case 0xFFFFC0F2:
      case 0xFFFFC0F3:
      case 0xFFFFC0F4:
      case 0xFFFFC0F5:
      case 0xFFFFC0F6:
      case 0xFFFFC0F7:
      case 0xFFFFC0FC:
      case 0xFFFFC102:
      case 0xFFFFC103:
      case 0xFFFFC129:
      case 0xFFFFC12A:
      case 0xFFFFC12B:
      case 0xFFFFC12C:
      case 0xFFFFC130:
      case 0xFFFFC133:
      case 0xFFFFC134:
      case 0xFFFFC136:
      case 0xFFFFC155:
      case 0xFFFFC156:
      case 0xFFFFC157:
      case 0xFFFFC158:
      case 0xFFFFC16A:
      case 0xFFFFC16B:
      case 0xFFFFC16C:
      case 0xFFFFC179:
      case 0xFFFFC17A:
      case 0xFFFFC17B:
      case 0xFFFFC17C:
      case 0xFFFFC17D:
      case 0xFFFFC18C:
      case 0xFFFFC18D:
      case 0xFFFFC18E:
      case 0xFFFFC18F:
      case 0xFFFFC190:
      case 0xFFFFC19E:
      case 0xFFFFC1A6:
      case 0xFFFFC1A7:
      case 0xFFFFC231:
      case 0xFFFFC232:
      case 0xFFFFC233:
      case 0xFFFFC234:
      case 0xFFFFC235:
      case 0xFFFFC236:
      case 0xFFFFC23C:
      case 0xFFFFC27A:
      case 0xFFFFC28F:
      case 0xFFFFC290:
      case 0xFFFFC291:
      case 0xFFFFC292:
      case 0xFFFFC293:
      case 0xFFFFC294:
      case 0xFFFFC295:
      case 0xFFFFC296:
      case 0xFFFFC297:
      case 0xFFFFC298:
      case 0xFFFFC36D:
      case 0xFFFFC382:
      case 0xFFFFC383:
      case 0xFFFFC384:
      case 0xFFFFC385:
      case 0xFFFFC386:
      case 0xFFFFC387:
      case 0xFFFFC388:
      case 0xFFFFC389:
      case 0xFFFFC38A:
      case 0xFFFFC38B:
      case 0xFFFFC38C:
      case 0xFFFFC39D:
      case 0xFFFFC39E:
      case 0xFFFFC39F:
      case 0xFFFFC3A0:
      case 0xFFFFC3A1:
      case 0xFFFFC3A2:
      case 0xFFFFC3A3:
      case 0xFFFFC3A4:
      case 0xFFFFC3A5:
      case 0xFFFFC3A6:
      case 0xFFFFC3A7:
      case 0xFFFFC3A8:
      case 0xFFFFC3A9:
      case 0xFFFFC3AA:
      case 0xFFFFC3AB:
      case 0xFFFFC3C8:
      case 0xFFFFC3C9:
      case 0xFFFFC3CA:
      case 0xFFFFC3D7:
      case 0xFFFFC3D8:
      case 0xFFFFC3D9:
      case 0xFFFFC3DA:
      case 0xFFFFC3DB:
      case 0xFFFFC3DC:
      case 0xFFFFC3DD:
      case 0xFFFFC3DE:
      case 0xFFFFC3DF:
      case 0xFFFFC3E0:
      case 0xFFFFC3E1:
      case 0xFFFFC3E2:
      case 0xFFFFC3E3:
      case 0xFFFFC3E4:
      case 0xFFFFC3E5:
      case 0xFFFFC3E6:
      case 0xFFFFC3E7:
      case 0xFFFFC3E8:
      case 0xFFFFC3E9:
      case 0xFFFFC3EA:
      case 0xFFFFC3EB:
      case 0xFFFFC43F:
      case 0xFFFFC455:
      case 0xFFFFC456:
      case 0xFFFFC457:
      case 0xFFFFC458:
      case 0xFFFFC474:
      case 0xFFFFC475:
        result = 70;
        break;
      case 0xFFFFC08E:
      case 0xFFFFC237:
      case 0xFFFFC399:
      case 0xFFFFC39A:
      case 0xFFFFC39B:
      case 0xFFFFC39C:
      case 0xFFFFC3AC:
      case 0xFFFFC3AD:
      case 0xFFFFC3AE:
      case 0xFFFFC3AF:
      case 0xFFFFC3B0:
      case 0xFFFFC3B1:
      case 0xFFFFC3B2:
      case 0xFFFFC3B3:
      case 0xFFFFC3B4:
      case 0xFFFFC3CB:
      case 0xFFFFC3EC:
      case 0xFFFFC3ED:
      case 0xFFFFC3EE:
      case 0xFFFFC3EF:
      case 0xFFFFC3F0:
      case 0xFFFFC3F1:
      case 0xFFFFC3F2:
      case 0xFFFFC3F3:
      case 0xFFFFC3F4:
      case 0xFFFFC3F5:
      case 0xFFFFC3F6:
      case 0xFFFFC3F7:
      case 0xFFFFC3F8:
      case 0xFFFFC3F9:
      case 0xFFFFC429:
      case 0xFFFFC448:
        goto LABEL_22;
      case 0xFFFFC08F:
      case 0xFFFFC191:
      case 0xFFFFC238:
        goto LABEL_56;
      case 0xFFFFC090:
      case 0xFFFFC091:
      case 0xFFFFC092:
      case 0xFFFFC093:
      case 0xFFFFC094:
      case 0xFFFFC095:
      case 0xFFFFC096:
      case 0xFFFFC097:
      case 0xFFFFC098:
      case 0xFFFFC099:
      case 0xFFFFC0A3:
      case 0xFFFFC0BC:
      case 0xFFFFC10E:
      case 0xFFFFC114:
      case 0xFFFFC122:
      case 0xFFFFC193:
      case 0xFFFFC1D7:
      case 0xFFFFC1DA:
      case 0xFFFFC1E1:
      case 0xFFFFC1EA:
      case 0xFFFFC239:
      case 0xFFFFC261:
      case 0xFFFFC26F:
      case 0xFFFFC270:
      case 0xFFFFC2B6:
      case 0xFFFFC2B7:
      case 0xFFFFC2B8:
      case 0xFFFFC352:
        goto LABEL_14;
      case 0xFFFFC0BE:
      case 0xFFFFC0BF:
      case 0xFFFFC0C0:
      case 0xFFFFC0C1:
      case 0xFFFFC0C2:
      case 0xFFFFC0C3:
      case 0xFFFFC0C4:
      case 0xFFFFC0C5:
      case 0xFFFFC0C6:
      case 0xFFFFC0C7:
      case 0xFFFFC0C8:
      case 0xFFFFC0C9:
      case 0xFFFFC0CA:
      case 0xFFFFC0CB:
      case 0xFFFFC0CC:
      case 0xFFFFC0CD:
      case 0xFFFFC0CE:
      case 0xFFFFC0CF:
      case 0xFFFFC0D0:
      case 0xFFFFC0D1:
      case 0xFFFFC0D2:
      case 0xFFFFC0D3:
      case 0xFFFFC0D4:
      case 0xFFFFC0D5:
      case 0xFFFFC0D6:
      case 0xFFFFC0D7:
      case 0xFFFFC0D8:
      case 0xFFFFC0D9:
      case 0xFFFFC0E6:
      case 0xFFFFC0E7:
      case 0xFFFFC0E8:
      case 0xFFFFC167:
      case 0xFFFFC168:
      case 0xFFFFC169:
        result = 42;
        break;
      case 0xFFFFC0F8:
      case 0xFFFFC101:
        result = 41;
        break;
      case 0xFFFFC109:
      case 0xFFFFC10A:
      case 0xFFFFC10B:
      case 0xFFFFC10C:
      case 0xFFFFC10D:
      case 0xFFFFC112:
      case 0xFFFFC113:
      case 0xFFFFC117:
      case 0xFFFFC22B:
      case 0xFFFFC22C:
      case 0xFFFFC25E:
      case 0xFFFFC25F:
      case 0xFFFFC404:
      case 0xFFFFC405:
      case 0xFFFFC406:
      case 0xFFFFC407:
      case 0xFFFFC408:
      case 0xFFFFC409:
        goto LABEL_38;
      case 0xFFFFC11F:
      case 0xFFFFC160:
        result = 81;
        break;
      case 0xFFFFC137:
      case 0xFFFFC138:
      case 0xFFFFC139:
      case 0xFFFFC13A:
        result = 24;
        break;
      case 0xFFFFC13B:
      case 0xFFFFC13C:
      case 0xFFFFC13D:
      case 0xFFFFC15E:
      case 0xFFFFC16D:
      case 0xFFFFC288:
      case 0xFFFFC289:
      case 0xFFFFC28A:
      case 0xFFFFC28B:
        goto LABEL_46;
      case 0xFFFFC141:
      case 0xFFFFC142:
      case 0xFFFFC143:
      case 0xFFFFC144:
      case 0xFFFFC145:
      case 0xFFFFC146:
      case 0xFFFFC147:
      case 0xFFFFC148:
      case 0xFFFFC149:
      case 0xFFFFC14A:
      case 0xFFFFC14B:
      case 0xFFFFC15F:
      case 0xFFFFC17E:
      case 0xFFFFC17F:
      case 0xFFFFC180:
      case 0xFFFFC181:
      case 0xFFFFC1D4:
      case 0xFFFFC1D5:
      case 0xFFFFC2F5:
      case 0xFFFFC2F6:
      case 0xFFFFC2F7:
      case 0xFFFFC343:
      case 0xFFFFC344:
      case 0xFFFFC345:
      case 0xFFFFC346:
      case 0xFFFFC34D:
      case 0xFFFFC34E:
      case 0xFFFFC34F:
      case 0xFFFFC350:
        result = 18;
        break;
      case 0xFFFFC192:
        result = 78;
        break;
      case 0xFFFFC199:
      case 0xFFFFC19A:
      case 0xFFFFC19B:
      case 0xFFFFC1D9:
      case 0xFFFFC1DD:
      case 0xFFFFC3C2:
      case 0xFFFFC427:
        result = 76;
        break;
      case 0xFFFFC1AB:
      case 0xFFFFC1AC:
      case 0xFFFFC1AD:
      case 0xFFFFC1AE:
      case 0xFFFFC1AF:
      case 0xFFFFC1B0:
      case 0xFFFFC1B1:
      case 0xFFFFC1B2:
      case 0xFFFFC1B3:
      case 0xFFFFC1B4:
      case 0xFFFFC1B5:
      case 0xFFFFC1B6:
      case 0xFFFFC1B7:
      case 0xFFFFC1B8:
      case 0xFFFFC1B9:
      case 0xFFFFC1BA:
      case 0xFFFFC1BB:
      case 0xFFFFC1BC:
      case 0xFFFFC1BD:
      case 0xFFFFC1BE:
      case 0xFFFFC1BF:
      case 0xFFFFC1C0:
      case 0xFFFFC1DE:
      case 0xFFFFC454:
      case 0xFFFFC45E:
      case 0xFFFFC45F:
      case 0xFFFFC460:
      case 0xFFFFC461:
      case 0xFFFFC462:
        result = 59;
        break;
      case 0xFFFFC1C1:
      case 0xFFFFC1C2:
      case 0xFFFFC1C3:
      case 0xFFFFC1C4:
      case 0xFFFFC1C5:
      case 0xFFFFC1C6:
      case 0xFFFFC1C7:
      case 0xFFFFC1C8:
      case 0xFFFFC1C9:
      case 0xFFFFC1CA:
      case 0xFFFFC1DF:
      case 0xFFFFC22D:
      case 0xFFFFC22E:
      case 0xFFFFC22F:
      case 0xFFFFC230:
      case 0xFFFFC263:
      case 0xFFFFC453:
        result = 58;
        break;
      case 0xFFFFC1CB:
      case 0xFFFFC1CC:
      case 0xFFFFC1CD:
      case 0xFFFFC1CE:
      case 0xFFFFC1CF:
      case 0xFFFFC1D0:
      case 0xFFFFC1D1:
      case 0xFFFFC1D2:
      case 0xFFFFC1D3:
      case 0xFFFFC1E8:
      case 0xFFFFC1E9:
      case 0xFFFFC26A:
      case 0xFFFFC26B:
      case 0xFFFFC26C:
      case 0xFFFFC26D:
      case 0xFFFFC26E:
        goto LABEL_32;
      case 0xFFFFC1EB:
        result = 64;
        break;
      case 0xFFFFC1EE:
      case 0xFFFFC1EF:
      case 0xFFFFC1F0:
      case 0xFFFFC1F1:
      case 0xFFFFC1F2:
      case 0xFFFFC1F3:
      case 0xFFFFC1F4:
      case 0xFFFFC1F5:
      case 0xFFFFC1F6:
      case 0xFFFFC1F7:
        result = 82;
        break;
      case 0xFFFFC1F8:
      case 0xFFFFC1F9:
      case 0xFFFFC423:
        result = 38;
        break;
      case 0xFFFFC205:
      case 0xFFFFC277:
        result = 31;
        break;
      case 0xFFFFC206:
      case 0xFFFFC207:
        result = 35;
        break;
      case 0xFFFFC245:
      case 0xFFFFC247:
      case 0xFFFFC249:
      case 0xFFFFC24B:
      case 0xFFFFC24D:
      case 0xFFFFC260:
      case 0xFFFFC265:
      case 0xFFFFC266:
      case 0xFFFFC3CC:
      case 0xFFFFC3CD:
        result = 68;
        break;
      case 0xFFFFC24E:
      case 0xFFFFC250:
      case 0xFFFFC252:
      case 0xFFFFC253:
      case 0xFFFFC254:
      case 0xFFFFC255:
      case 0xFFFFC256:
      case 0xFFFFC257:
      case 0xFFFFC258:
      case 0xFFFFC259:
      case 0xFFFFC25A:
      case 0xFFFFC25B:
      case 0xFFFFC459:
        goto LABEL_43;
      case 0xFFFFC267:
        result = 73;
        break;
      case 0xFFFFC278:
        result = 32;
        break;
      case 0xFFFFC27C:
        result = 30;
        break;
      case 0xFFFFC27F:
        result = 66;
        break;
      case 0xFFFFC280:
      case 0xFFFFC281:
      case 0xFFFFC282:
      case 0xFFFFC283:
      case 0xFFFFC284:
      case 0xFFFFC285:
      case 0xFFFFC286:
        result = 67;
        break;
      case 0xFFFFC2AA:
        result = 26;
        break;
      case 0xFFFFC2B4:
        result = 45;
        break;
      case 0xFFFFC2B5:
        result = 79;
        break;
      case 0xFFFFC2B9:
      case 0xFFFFC2BA:
      case 0xFFFFC2BB:
      case 0xFFFFC2BC:
      case 0xFFFFC2CC:
      case 0xFFFFC2CD:
      case 0xFFFFC2CE:
      case 0xFFFFC2CF:
      case 0xFFFFC2D0:
      case 0xFFFFC2D1:
      case 0xFFFFC2D2:
      case 0xFFFFC33D:
      case 0xFFFFC33E:
      case 0xFFFFC33F:
      case 0xFFFFC3BE:
      case 0xFFFFC3CF:
      case 0xFFFFC3D0:
      case 0xFFFFC3D1:
      case 0xFFFFC421:
        result = 19;
        break;
      case 0xFFFFC2BD:
      case 0xFFFFC2BE:
      case 0xFFFFC2BF:
      case 0xFFFFC2C0:
      case 0xFFFFC2C1:
      case 0xFFFFC2C2:
      case 0xFFFFC2C3:
        result = 20;
        break;
      case 0xFFFFC2C4:
      case 0xFFFFC2C5:
      case 0xFFFFC2C6:
      case 0xFFFFC305:
        goto LABEL_57;
      case 0xFFFFC2D3:
      case 0xFFFFC2D4:
      case 0xFFFFC2D5:
      case 0xFFFFC2D6:
      case 0xFFFFC2D7:
      case 0xFFFFC2D8:
      case 0xFFFFC2D9:
      case 0xFFFFC2DA:
      case 0xFFFFC2DB:
      case 0xFFFFC2DC:
      case 0xFFFFC2DD:
      case 0xFFFFC2DE:
      case 0xFFFFC2DF:
      case 0xFFFFC340:
        goto LABEL_31;
      case 0xFFFFC2E0:
      case 0xFFFFC2E1:
      case 0xFFFFC2E2:
      case 0xFFFFC2E3:
      case 0xFFFFC2E4:
      case 0xFFFFC2E5:
      case 0xFFFFC2E6:
      case 0xFFFFC2E7:
      case 0xFFFFC2E8:
      case 0xFFFFC2E9:
      case 0xFFFFC2EA:
      case 0xFFFFC2EB:
      case 0xFFFFC2EC:
      case 0xFFFFC2ED:
      case 0xFFFFC2EE:
      case 0xFFFFC2EF:
      case 0xFFFFC2F0:
      case 0xFFFFC2F1:
      case 0xFFFFC2F2:
      case 0xFFFFC2F3:
      case 0xFFFFC2F4:
      case 0xFFFFC315:
      case 0xFFFFC316:
      case 0xFFFFC317:
      case 0xFFFFC318:
      case 0xFFFFC319:
      case 0xFFFFC31A:
      case 0xFFFFC31B:
      case 0xFFFFC31C:
      case 0xFFFFC35C:
      case 0xFFFFC35D:
      case 0xFFFFC35E:
      case 0xFFFFC35F:
      case 0xFFFFC360:
      case 0xFFFFC361:
      case 0xFFFFC372:
      case 0xFFFFC396:
      case 0xFFFFC397:
      case 0xFFFFC3FA:
      case 0xFFFFC3FB:
      case 0xFFFFC449:
        goto LABEL_21;
      case 0xFFFFC306:
        result = 44;
        break;
      case 0xFFFFC309:
      case 0xFFFFC30A:
      case 0xFFFFC30B:
      case 0xFFFFC30C:
      case 0xFFFFC30D:
      case 0xFFFFC30E:
      case 0xFFFFC30F:
      case 0xFFFFC310:
      case 0xFFFFC311:
      case 0xFFFFC312:
      case 0xFFFFC313:
      case 0xFFFFC314:
      case 0xFFFFC32A:
      case 0xFFFFC32B:
      case 0xFFFFC349:
      case 0xFFFFC34A:
      case 0xFFFFC358:
      case 0xFFFFC359:
        goto LABEL_33;
      case 0xFFFFC32C:
      case 0xFFFFC32D:
      case 0xFFFFC32E:
      case 0xFFFFC32F:
      case 0xFFFFC330:
      case 0xFFFFC331:
      case 0xFFFFC332:
      case 0xFFFFC333:
      case 0xFFFFC334:
      case 0xFFFFC335:
      case 0xFFFFC336:
      case 0xFFFFC337:
      case 0xFFFFC338:
      case 0xFFFFC339:
      case 0xFFFFC33A:
      case 0xFFFFC33B:
      case 0xFFFFC33C:
      case 0xFFFFC347:
      case 0xFFFFC348:
      case 0xFFFFC356:
      case 0xFFFFC357:
      case 0xFFFFC35A:
      case 0xFFFFC35B:
      case 0xFFFFC466:
      case 0xFFFFC467:
        goto LABEL_26;
      case 0xFFFFC36C:
        result = 69;
        break;
      case 0xFFFFC379:
        result = 46;
        break;
      case 0xFFFFC37A:
        result = 47;
        break;
      case 0xFFFFC37B:
        result = 48;
        break;
      case 0xFFFFC37C:
        result = 49;
        break;
      case 0xFFFFC37D:
      case 0xFFFFC37E:
      case 0xFFFFC37F:
      case 0xFFFFC380:
      case 0xFFFFC3C0:
      case 0xFFFFC424:
        result = 61;
        break;
      case 0xFFFFC40E:
      case 0xFFFFC40F:
      case 0xFFFFC410:
      case 0xFFFFC411:
      case 0xFFFFC412:
      case 0xFFFFC413:
      case 0xFFFFC414:
      case 0xFFFFC415:
      case 0xFFFFC416:
      case 0xFFFFC417:
      case 0xFFFFC418:
      case 0xFFFFC419:
      case 0xFFFFC42F:
      case 0xFFFFC430:
      case 0xFFFFC431:
      case 0xFFFFC432:
      case 0xFFFFC433:
      case 0xFFFFC434:
      case 0xFFFFC441:
      case 0xFFFFC442:
      case 0xFFFFC443:
      case 0xFFFFC444:
        result = 51;
        break;
      case 0xFFFFC41A:
      case 0xFFFFC41B:
      case 0xFFFFC41C:
      case 0xFFFFC435:
      case 0xFFFFC436:
      case 0xFFFFC445:
        result = 52;
        break;
      case 0xFFFFC41D:
        result = 55;
        break;
      case 0xFFFFC41E:
      case 0xFFFFC41F:
      case 0xFFFFC43D:
        result = 56;
        break;
      case 0xFFFFC420:
      case 0xFFFFC437:
      case 0xFFFFC438:
      case 0xFFFFC439:
      case 0xFFFFC43A:
      case 0xFFFFC43B:
      case 0xFFFFC43C:
        result = 54;
        break;
      case 0xFFFFC428:
        result = 33;
        break;
      case 0xFFFFC446:
      case 0xFFFFC447:
        result = 53;
        break;
      case 0xFFFFC476:
      case 0xFFFFC477:
      case 0xFFFFC478:
      case 0xFFFFC479:
      case 0xFFFFC47A:
      case 0xFFFFC47B:
      case 0xFFFFC47C:
      case 0xFFFFC47D:
      case 0xFFFFC47E:
      case 0xFFFFC47F:
      case 0xFFFFC480:
      case 0xFFFFC481:
      case 0xFFFFC482:
      case 0xFFFFC483:
      case 0xFFFFC484:
      case 0xFFFFC485:
      case 0xFFFFC486:
      case 0xFFFFC487:
      case 0xFFFFC488:
      case 0xFFFFC489:
      case 0xFFFFC48A:
      case 0xFFFFC48B:
      case 0xFFFFC48C:
      case 0xFFFFC48D:
      case 0xFFFFC48E:
      case 0xFFFFC494:
      case 0xFFFFC495:
      case 0xFFFFC496:
      case 0xFFFFC497:
      case 0xFFFFC498:
      case 0xFFFFC499:
      case 0xFFFFC49A:
        result = 72;
        break;
      case 0xFFFFC493:
        result = 63;
        break;
      default:
        if (this != -18430)
        {
          return 0;
        }

        goto LABEL_30;
    }
  }

  return result;
}

BOOL GPUTools::MTL::GetConstructorForReceiverType(int a1, void *a2)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::clear(a2);
  if ((a1 - 1) > 0x54)
  {
    return 0;
  }

  switch(a1)
  {
    case 2:
      v7 = -7166;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -6655;
      goto LABEL_67;
    case 5:
      v7 = -6143;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -6131;
      goto LABEL_67;
    case 6:
      v4 = -6111;
      goto LABEL_67;
    case 7:
      v4 = -6109;
      goto LABEL_67;
    case 8:
      v7 = -6116;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -6129;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -6133;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -6141;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -6119;
      goto LABEL_67;
    case 9:
      v4 = -6110;
      goto LABEL_67;
    case 10:
      v4 = -6122;
      goto LABEL_67;
    case 11:
      v4 = -6134;
      goto LABEL_67;
    case 12:
      v4 = -6095;
      goto LABEL_67;
    case 14:
      v4 = -6096;
      goto LABEL_67;
    case 16:
      v7 = -15464;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15359;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15615;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15614;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15506;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15358;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15356;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15355;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15354;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15353;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15352;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15351;
      goto LABEL_67;
    case 17:
      v7 = -15673;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15364;
      goto LABEL_67;
    case 18:
      v7 = -16053;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16037;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16050;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15261;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16048;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16052;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15715;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16051;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15670;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15714;
      goto LABEL_67;
    case 19:
      v4 = -15717;
      goto LABEL_67;
    case 20:
      v4 = -15697;
      goto LABEL_67;
    case 21:
      v7 = -16354;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15587;
      goto LABEL_67;
    case 22:
      v7 = -15914;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -10237;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15850;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16312;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15706;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16313;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15851;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15707;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15509;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16163;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16314;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15849;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15705;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15972;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16117;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15829;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15778;
      goto LABEL_67;
    case 24:
      v7 = -15733;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15734;
      goto LABEL_67;
    case 25:
      v7 = -16343;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15701;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16342;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -12544;
      goto LABEL_67;
    case 27:
      v7 = -16316;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16165;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -16315;
      goto LABEL_67;
    case 28:
      v7 = -16352;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15586;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16014;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15712;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15584;
      goto LABEL_67;
    case 29:
      v7 = -15579;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15541;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15618;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16198;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16200;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16197;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16199;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16297;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16299;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16296;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16298;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16101;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15740;
      goto LABEL_67;
    case 31:
      v4 = -15848;
      goto LABEL_67;
    case 33:
      v4 = -15317;
      goto LABEL_67;
    case 34:
      v4 = -16311;
      goto LABEL_67;
    case 37:
      v7 = -15498;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15497;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15694;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15613;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15531;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15696;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15695;
      goto LABEL_67;
    case 38:
      v7 = -15997;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15269;
      goto LABEL_67;
    case 39:
      v4 = -18432;
      goto LABEL_67;
    case 40:
      v4 = -18431;
      goto LABEL_67;
    case 41:
      v4 = -16128;
      goto LABEL_67;
    case 43:
      v7 = -15430;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15429;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15428;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15427;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15731;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15730;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15830;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16038;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15609;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15608;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16290;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16106;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16107;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15772;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16081;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16082;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15550;
      goto LABEL_67;
    case 44:
      v7 = -15620;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15444;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15463;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15437;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15436;
      goto LABEL_67;
    case 50:
      v4 = -16120;
      goto LABEL_67;
    case 51:
      v7 = -15333;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15306;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -12543;
      goto LABEL_67;
    case 52:
      v4 = -15350;
      goto LABEL_67;
    case 53:
      v7 = -15260;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15259;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v6 = -15296;
      goto LABEL_60;
    case 54:
      v7 = -15296;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v6 = -15349;
LABEL_60:
      v7 = v6;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15348;
      goto LABEL_67;
    case 55:
      v4 = -15299;
      goto LABEL_67;
    case 57:
      v7 = -15969;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15972;
      goto LABEL_67;
    case 58:
      v7 = -16015;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15921;
      goto LABEL_67;
    case 59:
      v7 = -16016;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15922;
      goto LABEL_67;
    case 60:
      v7 = -15540;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15577;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15443;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15462;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15442;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15441;
      goto LABEL_67;
    case 61:
      v4 = -15496;
      goto LABEL_67;
    case 62:
      v7 = -16308;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16095;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16018;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16029;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15693;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16306;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15434;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15425;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15435;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16307;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15467;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15468;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15847;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16304;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16305;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15419;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15421;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15420;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -16039;
      goto LABEL_67;
    case 63:
      v4 = -15214;
      goto LABEL_67;
    case 64:
      v4 = -15891;
      goto LABEL_67;
    case 65:
      v4 = -16351;
      goto LABEL_67;
    case 67:
      v4 = -16075;
      goto LABEL_67;
    case 68:
      v7 = -15793;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15846;
      goto LABEL_67;
    case 70:
      v7 = -16353;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -16286;
      goto LABEL_67;
    case 71:
      v7 = -16301;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16303;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16300;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16302;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15406;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15405;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15404;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15403;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16089;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16091;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16088;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16090;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15738;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15461;
      goto LABEL_67;
    case 72:
      v4 = -15245;
      goto LABEL_67;
    case 73:
      v4 = -15900;
      goto LABEL_67;
    case 74:
      v7 = -15870;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15585;
      goto LABEL_67;
    case 75:
      v4 = -16309;
      goto LABEL_67;
    case 76:
      v7 = -15996;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15909;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15912;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15268;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15488;
      goto LABEL_67;
    case 77:
      v7 = -15488;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15907;
      goto LABEL_67;
    case 78:
      v4 = -15910;
      goto LABEL_67;
    case 80:
      v7 = -16098;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16368;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16104;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15980;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15979;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16099;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16096;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16310;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16294;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16030;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16031;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -16116;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15828;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15777;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15913;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15690;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15689;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15688;
      goto LABEL_67;
    case 81:
      v4 = -16099;
      goto LABEL_67;
    case 82:
      v4 = -16013;
      goto LABEL_67;
    case 83:
      v7 = -15578;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15612;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15440;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15369;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15368;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15439;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v7 = -15438;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      v4 = -15460;
LABEL_67:
      v7 = v4;
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, &v7);
      break;
    default:
      return a2[3] != 0;
  }

  return a2[3] != 0;
}