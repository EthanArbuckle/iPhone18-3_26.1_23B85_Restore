uint64_t GTFenum_isDestructor(int a1)
{
  result = 1;
  if (a1 <= -15802)
  {
    if (a1 <= -16294)
    {
      if (a1 <= -16384)
      {
        if ((a1 + 20475) <= 0x36 && ((1 << (a1 - 5)) & 0x40000020020001) != 0)
        {
          return result;
        }

        v6 = a1 + 20407;
        if (v6 <= 0x37)
        {
          v4 = 1 << v6;
          v5 = 0x80001000000101;
          goto LABEL_47;
        }

        return 0;
      }

      if ((a1 + 16370) <= 0x35 && ((1 << (a1 - 14)) & 0x26000104000081) != 0)
      {
        return result;
      }

      v7 = -16383;
    }

    else
    {
      if (a1 > -16119)
      {
        if ((a1 + 15973) <= 0x32 && ((1 << (a1 + 101)) & 0x4004000010001) != 0 || (a1 + 15893) <= 0x1A && ((1 << (a1 + 21)) & 0x4004011) != 0)
        {
          return result;
        }

        v9 = a1 + 16118;
        if (v9 <= 0x38)
        {
          v4 = 1 << v9;
          v5 = 0x100000000200001;
LABEL_47:
          if ((v4 & v5) != 0)
          {
            return result;
          }

          return 0;
        }

        return 0;
      }

      if ((a1 + 16293) <= 0x37 && ((1 << (a1 - 91)) & 0x98000000002045) != 0)
      {
        return result;
      }

      v7 = -16127;
    }

LABEL_57:
    if (a1 == v7)
    {
      return result;
    }

    return 0;
  }

  if (a1 > -15232)
  {
    if (a1 > -14949)
    {
      if (a1 <= -10207)
      {
        if (a1 == -14948 || a1 == -14894)
        {
          return result;
        }

        v7 = -14825;
      }

      else if (a1 > -6653)
      {
        if (a1 == -6652)
        {
          return result;
        }

        v7 = -6139;
      }

      else
      {
        if (a1 == -10206)
        {
          return result;
        }

        v7 = -7161;
      }
    }

    else if (a1 > -15110)
    {
      if (a1 == -15109 || a1 == -15060)
      {
        return result;
      }

      v7 = -14972;
    }

    else
    {
      if ((a1 + 15182) <= 0x1B && ((1 << (a1 + 78)) & 0x8001081) != 0)
      {
        return result;
      }

      v7 = -15231;
    }

    goto LABEL_57;
  }

  if (a1 > -15496)
  {
    if ((a1 + 15341) > 0x34 || ((1 << (a1 - 19)) & 0x10000000201601) == 0)
    {
      v8 = a1 + 15495;
      if (v8 > 6 || ((1 << v8) & 0x43) == 0)
      {
        return 0;
      }
    }
  }

  else if (((a1 + 15801) > 0x3B || ((1 << (a1 - 71)) & 0x800000100000801) == 0) && ((a1 + 15685) > 0x29 || ((1 << (a1 + 69)) & 0x20004000401) == 0))
  {
    v3 = a1 + 15610;
    if (v3 > 0x2A)
    {
      return 0;
    }

    v4 = 1 << v3;
    v5 = 0x40000000021;
    goto LABEL_47;
  }

  return result;
}

uint64_t GTFenum_isDrawCall(int a1)
{
  result = 1;
  if (a1 <= -15417)
  {
    if (((a1 + 16251) > 0x24 || ((1 << (a1 + 123)) & 0x1E0000000FLL) == 0) && (a1 + 16147) >= 4)
    {
      return 0;
    }
  }

  else if ((a1 + 15058) >= 0xB && (a1 + 15416) >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t GTFenum_isComputeCall(int a1)
{
  result = 1;
  if (a1 > -15109)
  {
    if ((a1 + 15108) >= 4)
    {
      return 0;
    }
  }

  else if ((a1 + 16079) >= 2 && a1 != -16327 && a1 != -16220)
  {
    return 0;
  }

  return result;
}

BOOL GTFenum_isSampledBlitCallAGX(int a1)
{
  result = 1;
  if (((a1 + 15995) > 0x25 || ((1 << (a1 + 123)) & 0x38000C000FLL) == 0) && ((a1 + 15802) > 4 || ((1 << (a1 - 70)) & 0x15) == 0))
  {
    return (a1 + 15470) < 2;
  }

  return result;
}

uint64_t GTFenum_isGPUCommandCall(int a1)
{
  if ((GTFenum_isDrawCall(a1) & 1) != 0 || (GTFenum_isComputeCall(a1) & 1) != 0 || GTFenum_isSampledBlitCall(a1) || GTFenum_isSampledBlitCallAGX(a1))
  {
    return 1;
  }

  result = 1;
  if (a1 > -15298)
  {
    if (a1 == -15297)
    {
      return result;
    }

    v3 = -15059;
  }

  else
  {
    if (a1 == -16137)
    {
      return result;
    }

    v3 = -15486;
  }

  if (a1 != v3)
  {
    LODWORD(result) = GTFenum_isMeshCall(a1);
    if (a1 == -14893)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t GTFenum_isPushDebugGroup(int a1)
{
  result = 1;
  if (a1 <= -15787)
  {
    if (a1 > -16245)
    {
      if (a1 != -16244 && a1 != -16065)
      {
        v3 = -15882;
LABEL_18:
        if (a1 != v3)
        {
          return 0;
        }
      }
    }

    else if (a1 != -16374 && a1 != -16323)
    {
      v3 = -16283;
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 > -15168)
    {
      if (a1 > -15043)
      {
        if (a1 == -15042)
        {
          return result;
        }

        v3 = -14889;
      }

      else
      {
        if (a1 == -15167)
        {
          return result;
        }

        v3 = -15088;
      }

      goto LABEL_18;
    }

    if (a1 != -15786 && a1 != -15639)
    {
      v3 = -15292;
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t GTFenum_isPopDebugGroup(int a1)
{
  result = 1;
  if (a1 <= -15788)
  {
    if (a1 > -16244)
    {
      if (a1 != -16243 && a1 != -16064)
      {
        v3 = -15881;
LABEL_18:
        if (a1 != v3)
        {
          return 0;
        }
      }
    }

    else if (a1 != -16373 && a1 != -16322)
    {
      v3 = -16282;
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 > -15169)
    {
      if (a1 > -15044)
      {
        if (a1 == -15043)
        {
          return result;
        }

        v3 = -14890;
      }

      else
      {
        if (a1 == -15168)
        {
          return result;
        }

        v3 = -15089;
      }

      goto LABEL_18;
    }

    if (a1 != -15787 && a1 != -15640)
    {
      v3 = -15293;
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t GTFenum_isEndEncoding(int a1)
{
  result = 1;
  if (a1 > -15790)
  {
    if (a1 <= -15105)
    {
      if (a1 == -15789)
      {
        return result;
      }

      v3 = -15642;
      goto LABEL_14;
    }

    if (a1 != -15104 && a1 != -15047)
    {
      v3 = -14892;
LABEL_14:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a1 <= -16286)
    {
      if (a1 == -16376)
      {
        return result;
      }

      v3 = -16325;
      goto LABEL_14;
    }

    if (a1 != -16285 && a1 != -16246)
    {
      v3 = -15884;
      goto LABEL_14;
    }
  }

  return result;
}

BOOL GTFenum_isMTLCommandEncoder(int a1)
{
  result = 1;
  if ((a1 - 21) > 0x3D || ((1 << (a1 - 21)) & 0x2022100000000081) == 0)
  {
    return a1 == 17;
  }

  return result;
}

uint64_t GTFenum_isUseResourceCall(int a1)
{
  result = 1;
  if (a1 <= -15822)
  {
    if ((a1 + 16047) < 8)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= -15635)
  {
    if ((a1 + 15821) < 4)
    {
      return result;
    }

    return 0;
  }

  if ((a1 + 15634) >= 4 && a1 != -15510 && a1 != -15507)
  {
    return 0;
  }

  return result;
}

const char *GetFuncEnumAsString(int a1)
{
  if (a1 > -12544)
  {
    if (a1 > -6657)
    {
      if (a1 <= -6654)
      {
        if (a1 == -6656)
        {
          return "kDYFENSHMDMetalSession_setDrawablePixelFormat";
        }

        else if (a1 == -6655)
        {
          return "kDYFENSHMDMetalSession_nextDrawable";
        }

        else
        {
          return "kDYFENSHMDMetalSession_initWithMetalDevice_deviceReference_hmdName";
        }
      }

      else
      {
        switch(a1)
        {
          case -6144:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset";
            break;
          case -6143:
            result = "kDYFEMPSPlugin_newCNNConvolutionWithDescriptor_convolutionData";
            break;
          case -6142:
            result = "kDYFEMPSExternalCNNPoolingAverage_encodeBatchToCommandBuffer_computeCommandEncoder_options_sourceTextures_sourceInfo_destinationTextures_destinationInfo_zeroPadSizeX_zeroPadSizeY_predicationBuffer_predicationOffset";
            break;
          case -6141:
            result = "kDYFEMPSPlugin_newCNNPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY";
            break;
          case -6140:
            result = "kDYFEMPSExternalMatrixVectorMultiplication_encodeToCommandBuffer_encoder_options_batchSize_matrix_matrixStructure_vector_vectorStructure_result_resultStructure_predicationBuffer_predicationOffset";
            break;
          case -6139:
            result = "kDYFEMPSExternalPluginBase_dealloc";
            break;
          case -6138:
            result = "kDYFEMPSExternalCNNUnary_maxBatchSize";
            break;
          case -6137:
            result = "kDYFEMPSExternalMatrixVectorMultiplication_encodeToCommandBuffer_encoder_options_batchSize_matrix_matrixStructure_vector_vectorStructure_result_resultStructure";
            break;
          case -6136:
            result = "kDYFEMPSExternalCNNConvolution_reloadWeightsAndBiasesWithCommandBuffer_encoder_weights_biases_predicationBuffer_predicationOffset";
            break;
          case -6135:
            result = "kDYFEMPSExternalCNNUnary_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo";
            break;
          case -6134:
            result = "kDYFEMPSPlugin_newMatrixVectorMultiplicationWithTranspose_rows_columns_alpha_beta";
            break;
          case -6133:
            result = "kDYFEMPSPlugin_newCNNNeuronWithNeuronType_neuronParameterA_neuronParameterB_neuronParameterC";
            break;
          case -6132:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo";
            break;
          case -6131:
            result = "kDYFEMPSPlugin_newCNNConvolutionWithDescriptor_dataSource_fullyConnected";
            break;
          case -6130:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_A_aInfo_B_bInfo_C_cInfo";
            break;
          case -6129:
            result = "kDYFEMPSPlugin_newCNNNeuronWithNeuronType_neuronParameterAArray_count";
            break;
          case -6128:
            result = "kDYFEMPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_options_batchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectors_inputFeatureChannels_outputFeatureChannels_neuronType_neuronParameterA_neuronParameterB_neuronParameterC";
            break;
          case -6127:
            result = "kDYFEMPSExternalCNNConvolutionGradient_reloadWeights";
            break;
          case -6126:
            result = "kDYFEMPSExternalCNNPoolingAverage_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo";
            break;
          case -6125:
            result = "kDYFEMPSExternalCNNBinary_encodeToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTexture_primaryInfo_secondaryTexture_secondaryInfo_destinationTexture_destinationInfo";
            break;
          case -6124:
            result = "kDYFEMPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_options_batchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectors_inputFeatureChannels_outputFeatureChannels_neuronType_neuronParameterA_neuronParameterB_neuronParameterC_predicationBuffer_predicationOffset";
            break;
          case -6123:
            result = "kDYFEMPSExternalCNNBinary_maxBatchSize";
            break;
          case -6122:
            result = "kDYFEMPSPlugin_newMatrixMultiplicationWithTransposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta";
            break;
          case -6121:
            result = "kDYFEMPSExternalCNNPoolingAverage_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo_zeroPadSizeX_zeroPadSizeY";
            break;
          case -6120:
            result = "kDYFEMPSExternalCNNConvolution_reloadWeightsAndBiases";
            break;
          case -6119:
            result = "kDYFEMPSPlugin_newCNNSoftMax";
            break;
          case -6118:
            result = "kDYFEMPSExternalCNNBinary_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTextures_primaryInfo_secondaryTextures_secondaryInfo_destinationTextures_destinationInfo_predicationBuffer_predicationOffset";
            break;
          case -6117:
            result = "kDYFEMPSExternalCNNUnary_encodeToCommandBuffer_computeCommandEncoder_options_pluginOptions_sourceTexture_sourceInfo_destinationTexture_destinationInfo";
            break;
          case -6116:
            result = "kDYFEMPSPlugin_newCNNDilatedPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_dilationRateX_dilationRateY";
            break;
          case -6115:
            result = "kDYFEMPSExternalCNNUnary_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_sourceTextures_sourceInfo_destinationTextures_destinationInfo_predicationBuffer_predicationOffset";
            break;
          case -6114:
            result = "kDYFEMPSExternalCNNConvolutionGradient_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTextures_primaryInfo_secondaryTextures_secondaryInfo_weightsGradient_biasesGradient_accumulate_predicationBuffer_predicationOffset";
            break;
          case -6113:
            result = "kDYFEMPSExternalCNNConvolutionGradient_reloadWeightsWithCommandBuffer_encoder_weights_predicationBuffer_predicationOffset";
            break;
          case -6112:
            result = "kDYFEMPSExternalCNNConvolution_exportWeightsAndBiasesWithCommandBuffer_encoder_weights_biases_predicationBuffer_predicationOffset";
            break;
          case -6111:
            result = "kDYFEMPSPlugin_newCNNConvolutionGradientWithDescriptor_convolutionData";
            break;
          case -6110:
            result = "kDYFEMPSPlugin_newMatrixFullyConnected";
            break;
          case -6109:
            result = "kDYFEMPSPlugin_newCNNPoolingAverageWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY";
            break;
          case -6108:
            result = "kDYFEMPSExternalCNNConvolution_reloadWeightsAndBiasesWithCommandBuffer_encoder_weights_weightsDataType_biases_predicationBuffer_predicationOffset";
            break;
          case -6107:
            result = "kDYFEMPSExternalCNNConvolutionGradient_reloadWeightsWithCommandBuffer_encoder_weights_weightsDataType_predicationBuffer_predicationOffset";
            break;
          case -6106:
            result = "kDYFEMPSExternalCNNConvolution_exportWeightsAndBiasesWithCommandBuffer_encoder_weights_weightsDataType_biases_predicationBuffer_predicationOffset";
            break;
          case -6105:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRowsAndResultColumnsAndInteriorColumns_alphaAndBeta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset";
            break;
          case -6104:
            result = "kDYFEMPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_optionsAndBatchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectorsAndInputFeatureChannelsAndOutputFeatureChannels_neuronType_neuronParameters";
            break;
          case -6103:
            result = "kDYFEMPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_optionsAndBatchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectorsAndInputFeatureChannelsAndOutputFeatureChannelsAndNeuronTypeAndPredicationOffset_neuronParameters_predicationBuffer";
            break;
          case -6102:
            result = "kDYFEMPSExternalNDArrayConvolution2DGradient_encodePrimaryGradientToCommandBuffer_encoder_options_pluginOptions_primary_primaryInfo_secondary_secondaryInfo_gradient_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset";
            break;
          case -6101:
            result = "kDYFEMPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset_transA_transB";
            break;
          case -6100:
            result = "kDYFEMPSExternalNDArrayConvolution2DGradient_encodeSecondaryGradientToCommandBuffer_encoder_options_pluginOptions_primary_primaryInfo_secondary_secondaryInfo_gradient_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset";
            break;
          case -6099:
            result = "kDYFEMPSExternalNDArrayBinaryGradient_encodePrimaryGradientToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_gradientBuffer_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset";
            break;
          case -6098:
            result = "kDYFEMPSExternalNDArrayBinaryGradient_encodeSecondaryGradientToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_gradientBuffer_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset";
            break;
          case -6097:
            result = "kDYFEMPSExternalNDArrayBinary_encodeToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_destinationBuffer_destinationInfo_predicationBuffer_predicationOffset";
            break;
          case -6096:
            result = "kDYFEMPSPlugin_newNDArrayConvolution2DGradientWithDescriptor";
            break;
          case -6095:
            result = "kDYFEMPSPlugin_newNDArrayConvolution2DWithDescriptor";
            break;
          default:
            if (a1 == -6653)
            {
              result = "kDYFENSHMDMetalSession_setDrawableSize";
            }

            else if (a1 == -6652)
            {
              result = "kDYFENSHMDMetalSession_dealloc";
            }

            else
            {
LABEL_76:
              result = 0;
            }

            break;
        }
      }
    }

    else
    {
      switch(a1)
      {
        case -10240:
          result = "kDYFEMTLCommandBuffer_restoreMTLBufferContents";
          break;
        case -10239:
          result = "kDYFEMTLDevice_deviceReference";
          break;
        case -10238:
          result = "kDYFEMTLTexture_harvested_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage";
          break;
        case -10237:
          result = "kDYFEMTLDevice_harvested_newBufferWithBytes_length_options";
          break;
        case -10236:
          result = "kDYFEMTLTexture_harvested_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_totalBytes";
          break;
        case -10235:
          result = "kDYFEMTLBuffer_resourceUsage";
          break;
        case -10234:
          result = "kDYFEMTLTexture_resourceUsage";
          break;
        case -10233:
          result = "kDYFEMTLDevice_setSelectedCommandQueueAddress";
          break;
        case -10232:
          result = "kDYFEMTLTexture_restoreIOSurfaceData_length_forPlane";
          break;
        case -10231:
          result = "kDYFEMTLTexture_mipmapInfo";
          break;
        case -10230:
          result = "kDYFEMTLDevice_setCapturingCommandQueueAddress";
          break;
        case -10229:
          result = "kDYFEMTLCommandBuffer_indirectArgumentBufferData";
          break;
        case -10228:
          result = "kDYFEMTLBuffer_gpuVirtualAddress";
          break;
        case -10227:
          result = "kDYFEMTLTexture_uniqueIdentifier";
          break;
        case -10226:
          result = "kDYFEMTLSamplerState_uniqueIdentifier";
          break;
        case -10225:
          result = "kDYFEMTLCommandBuffer_encodeIndirectArgumentsForBuffer_data";
          break;
        case -10224:
          result = "kDYFEFrameEnd";
          break;
        case -10223:
          result = "kDYFEMTLBuffer_allocatedSize";
          break;
        case -10222:
          result = "kDYFEMTLTexture_allocatedSize";
          break;
        case -10221:
          result = "kDYFEMTLBuffer_indirectCommandBufferData";
          break;
        case -10220:
          result = "kDYFEMTLRenderPipelineState_uniqueIdentifier";
          break;
        case -10219:
          result = "kDYFEMTLIndirectCommandBuffer_restoreData";
          break;
        case -10218:
          result = "kDYFEMTLIndirectCommandBuffer_uniqueIdentifier";
          break;
        case -10217:
          result = "kDYFEMTLIndirectCommandBuffer_indirectCommandNop";
          break;
        case -10216:
          result = "kDYFEMTLIndirectCommandBuffer_restoreOptimizedRanges";
          break;
        case -10215:
          result = "kDYFEMTLIndirectCommandBuffer_allocatedSize";
          break;
        case -10214:
          result = "kDYFEMTLComputePipelineState_uniqueIdentifier";
          break;
        case -10213:
          result = "kDYFEMTLResourceStateCommandEncoder_harvested_updateTextureMapping_mode_region_mipLevel_slice";
          break;
        case -10212:
          result = "kDYFEMTLTexture_timeSinceTouched";
          break;
        case -10211:
          result = "kDYFEMTLHeap_timeSinceTouched";
          break;
        case -10210:
          result = "kDYFEMTLBuffer_timeSinceTouched";
          break;
        case -10209:
          result = "kDYFEMTLIndirectCommandBuffer_timeSinceTouched";
          break;
        case -10208:
          result = "kDYFEMTLHeap_usedSize";
          break;
        case -10207:
          result = "kDYFEMTLHeap_currentAllocatedSize";
          break;
        case -10206:
          result = "kDYFEMTLSharedEventHandle_dealloc";
          break;
        case -10205:
          result = "kDYFEMTLTexture_compressionFeedback";
          break;
        case -10204:
          result = "kDYFEMTLTexture_allocationID";
          break;
        case -10203:
          result = "kDYFEMTLBuffer_allocationID";
          break;
        case -10202:
          result = "kDYFEMTLIndirectCommandBuffer_allocationID";
          break;
        case -10201:
          result = "kDYFEMTLTexture_saveSlice_level_zPlane_normalize_blitOption_toPath";
          break;
        case -10200:
          result = "kDYFEMTLBuffer_saveContentsToPath";
          break;
        case -10199:
          result = "kDYFEMTLRenderPipelineState_resourceIndex";
          break;
        case -10198:
          result = "kDYFEMTLTexture_resourceIndex";
          break;
        case -10197:
          result = "kDYFEMTLAccelerationStructure_allocationID";
          break;
        case -10196:
          result = "kDYFEMTLAccelerationStructure_allocatedSize";
          break;
        case -10195:
          result = "kDYFEMTLAccelerationStructure_resourceUsage";
          break;
        case -10194:
          result = "kDYFEMTLAccelerationStructure_restoreMTLAccelerationStructure";
          break;
        case -10193:
          result = "kDYFEMTLVisibleFunctionTable_uniqueIdentifier";
          break;
        case -10192:
          result = "kDYFEMTLRenderPipelineState_allocatedSize";
          break;
        case -10191:
          result = "kDYFEMTLComputePipelineState_allocatedSize";
          break;
        case -10190:
          result = "kDYFEMTLAccelerationStructure_restoreMTLAccelerationStructure_instance";
          break;
        case -10189:
          result = "kDYFEMTLDynamicLibrary_installName";
          break;
        case -10188:
          result = "kDYFEMTLLibrary_libraryIdentifier";
          break;
        case -10187:
          result = "kDYFEMTLBuffer_heapOffset";
          break;
        case -10186:
          result = "kDYFEMTLBuffer_parentGPUAddress_parentGPUSize";
          break;
        case -10185:
          result = "kDYFEMTLTexture_heapOffset";
          break;
        case -10184:
          result = "kDYFEMTLRenderPipelineState_imageblockSampleLength";
          break;
        case -10183:
          result = "kDYFEMTLLibrary_type";
          break;
        case -10182:
          result = "kDYFEMTLAccelerationStructure_allocationInfo";
          break;
        case -10181:
          result = "kDYFEMTLAccelerationStructure_uniqueIdentifier";
          break;
        case -10180:
          result = "kDYFEMTLIntersectionFunctionTable_timeSinceTouched";
          break;
        case -10179:
          result = "kDYFEMTLIntersectionFunctionTable_allocatedSize";
          break;
        case -10178:
          result = "kDYFEMTLVisibleFunctionTable_timeSinceTouched";
          break;
        case -10177:
          result = "kDYFEMTLVisibleFunctionTable_allocationID";
          break;
        case -10176:
          result = "kDYFEMTLIntersectionFunctionTable_allocationID";
          break;
        case -10175:
          result = "kDYFEMTLIntersectionFunctionTable_uniqueIdentifier";
          break;
        case -10174:
          result = "kDYFEMTLVisibleFunctionTable_allocatedSize";
          break;
        case -10173:
          result = "kDYFEMTLAccelerationStructure_timeSinceTouched";
          break;
        case -10172:
          result = "kDYFEMTLRenderPipelineState_timeSinceTouched";
          break;
        case -10171:
          result = "kDYFEMTLComputePipelineState_timeSinceTouched";
          break;
        case -10170:
          result = "kDYFEMTLAccelerationStructure_resourceIndex";
          break;
        case -10169:
          result = "kDYFEMTLAccelerationStructure_heapOffset";
          break;
        case -10168:
          result = "kDYFEBoundary_Frame";
          break;
        case -10167:
          result = "kDYFEMTLAccelerationStructure_gpuResourceID";
          break;
        case -10166:
          result = "kDYFEMTLIndirectCommandBuffer_gpuResourceID";
          break;
        case -10165:
          result = "kDYFEMTLRenderPipelineState_gpuResourceID";
          break;
        case -10164:
          result = "kDYFEMTLTexture_gpuResourceID";
          break;
        case -10163:
          result = "kDYFEMTLSamplerState_gpuResourceID";
          break;
        case -10162:
          result = "kDYFEMTLComputePipelineState_gpuResourceID";
          break;
        case -10161:
          result = "kDYFEMTLIntersectionFunctionTable_gpuResourceID";
          break;
        case -10160:
          result = "kDYFEMTLVisibleFunctionTable_gpuResourceID";
          break;
        case -10159:
          result = "kDYFEMTLAccelerationStructure_state";
          break;
        case -10158:
          result = "kDYFEMTLAccelerationStructureCommandEncoder_setAccelerationStructureState";
          break;
        case -10157:
          result = "kDYFEMTLFunction_setDescriptor_library";
          break;
        case -10156:
          result = "kDYFEMTLAccelerationStructure_children";
          break;
        case -10155:
          result = "kDYFEMTLAccelerationStructureCommandEncoder_setAccelerationStructureChildren";
          break;
        case -10154:
          result = "kDYFEMTLAccelerationStructureCommandEncoder_setAccelerationStructureDescriptor";
          break;
        case -10153:
          result = "kDYFEMTLVisibleFunctionTable_gpuAddress";
          break;
        case -10152:
          result = "kDYFEMTLIntersectionFunctionTable_setBuffers";
          break;
        case -10151:
          result = "kDYFEMTLCaptureManager_sharedCaptureManager";
          break;
        case -10150:
          result = "kDYFEMTLDepthStencilState_uniqueIdentifier";
          break;
        case -10149:
          result = "kDYFEMTLDepthStencilState_gpuResourceID";
          break;
        case -10148:
          result = "kDYFEMTLTensor_allocatedSize";
          break;
        case -10147:
          result = "kDYFEMTLTensor_allocationID";
          break;
        case -10146:
          result = "kDYFEMTLTensor_gpuResourceID";
          break;
        case -10145:
          result = "kDYFEMTLTensor_resourceIndex";
          break;
        case -10144:
          result = "kDYFEMTLTensor_uniqueIdentifier";
          break;
        case -10143:
          result = "kDYFEMTLTensor_timeSinceTouched";
          break;
        case -10142:
          result = "kDYFEMTLTensor_harvested_replaceSliceOrigin_sliceDimensions_withBytes_strides";
          break;
        case -10141:
          result = "kDYFEMTLFunctionHandle_resourceIndex";
          break;
        case -10140:
          result = "kDYFEMTLFunctionHandle_gpuResourceID";
          break;
        case -10139:
          result = "kDYFEMTL4ComputeCommandEncoder_setAccelerationStructureDescriptor";
          break;
        case -10138:
          result = "kDYFEMTL4ComputeCommandEncoder_setAccelerationStructureState";
          break;
        default:
          switch(a1)
          {
            case -7168:
              result = "kDYFECAMetalLayer_setPresentsWithTransaction";
              break;
            case -7167:
              result = "kDYFECAMetalDrawable_texture";
              break;
            case -7166:
              result = "kDYFECAMetalLayer_nextDrawable";
              break;
            case -7165:
              result = "kDYFECAMetalLayer_setPixelFormat";
              break;
            case -7164:
              result = "kDYFECAMetalLayer_setDrawableSize";
              break;
            case -7163:
              result = "kDYFECAMetalLayer_setDevice";
              break;
            case -7162:
              result = "kDYFECAMetalLayer_setBounds_contentsScale";
              break;
            case -7161:
              result = "kDYFECAMetalDrawable_dealloc";
              break;
            case -7160:
              result = "kDYFECAMetalLayer_setFramebufferOnly";
              break;
            case -7159:
              result = "kDYFECAMetalLayer_setBounds_contentsScale_windowBounds_windowProperties";
              break;
            case -7158:
              result = "kDYFECAMetalDrawable_present";
              break;
            case -7157:
              result = "kDYFECAMetalDrawable_presentAtTime";
              break;
            case -7156:
              result = "kDYFECAMetalDrawable_presentAfterMinimumDuration";
              break;
            case -7155:
              result = "kDYFEUIScreen_setInterfaceOrientation";
              break;
            case -7154:
              result = "kDYFECAMetalLayer_setWantsExtendedDynamicRangeContent";
              break;
            case -7153:
              result = "kDYFECAMetalLayer_setColorspace";
              break;
            default:
              if (a1 != -12543)
              {
                goto LABEL_76;
              }

              result = "kDYFEMTLIOCommandQueue_continueCommandBuffer_retainReferences";
              break;
          }

          break;
      }
    }
  }

  else
  {
    v1 = a1 + 18432;
    result = "kDYFEMTLBlitCommandEncoder_setLabel";
    switch(v1)
    {
      case 0:
        result = "kDYFEMTLDevice_newSpatialScalerWithDescriptor";
        break;
      case 1:
        result = "kDYFEMTLDevice_newTemporalScalerWithDescriptor";
        break;
      case 2:
        result = "kDYFEMTLFXTemporalScaler_executionMode";
        break;
      case 3:
        result = "kDYFEMTLDevice_newFrameInterpolatorWithDescriptor";
        break;
      case 4:
        result = "kDYFEMTLDevice_newTemporalDenoisedScalerWithDescriptor";
        break;
      case 5:
        result = "kDYFEMTLDevice_newMTL4SpatialScalerWithDescriptor_compiler";
        break;
      case 6:
        result = "kDYFEMTLDevice_newMTL4TemporalScalerWithDescriptor_compiler";
        break;
      case 7:
        result = "kDYFEMTLDevice_newMTL4FrameInterpolatorWithDescriptor_compiler";
        break;
      case 8:
        result = "kDYFEMTLDevice_newMTL4TemporalDenoisedScalerWithDescriptor_compiler";
        break;
      case 9:
        result = "kDYFEMTL4FXTemporalScaler_executionMode";
        break;
      case 10:
        result = "kDYFEMTLFXTemporalDenoisedScaler_executionMode";
        break;
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 175:
      case 176:
      case 177:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 238:
      case 239:
      case 240:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
      case 250:
      case 251:
      case 252:
      case 253:
      case 254:
      case 255:
      case 256:
      case 257:
      case 258:
      case 259:
      case 260:
      case 261:
      case 262:
      case 263:
      case 264:
      case 265:
      case 266:
      case 267:
      case 268:
      case 269:
      case 270:
      case 271:
      case 272:
      case 273:
      case 274:
      case 275:
      case 276:
      case 277:
      case 278:
      case 279:
      case 280:
      case 281:
      case 282:
      case 283:
      case 284:
      case 285:
      case 286:
      case 287:
      case 288:
      case 289:
      case 290:
      case 291:
      case 292:
      case 293:
      case 294:
      case 295:
      case 296:
      case 297:
      case 298:
      case 299:
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
      case 305:
      case 306:
      case 307:
      case 308:
      case 309:
      case 310:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      case 317:
      case 318:
      case 319:
      case 320:
      case 321:
      case 322:
      case 323:
      case 324:
      case 325:
      case 326:
      case 327:
      case 328:
      case 329:
      case 330:
      case 331:
      case 332:
      case 333:
      case 334:
      case 335:
      case 336:
      case 337:
      case 338:
      case 339:
      case 340:
      case 341:
      case 342:
      case 343:
      case 344:
      case 345:
      case 346:
      case 347:
      case 348:
      case 349:
      case 350:
      case 351:
      case 352:
      case 353:
      case 354:
      case 355:
      case 356:
      case 357:
      case 358:
      case 359:
      case 360:
      case 361:
      case 362:
      case 363:
      case 364:
      case 365:
      case 366:
      case 367:
      case 368:
      case 369:
      case 370:
      case 371:
      case 372:
      case 373:
      case 374:
      case 375:
      case 376:
      case 377:
      case 378:
      case 379:
      case 380:
      case 381:
      case 382:
      case 383:
      case 384:
      case 385:
      case 386:
      case 387:
      case 388:
      case 389:
      case 390:
      case 391:
      case 392:
      case 393:
      case 394:
      case 395:
      case 396:
      case 397:
      case 398:
      case 399:
      case 400:
      case 401:
      case 402:
      case 403:
      case 404:
      case 405:
      case 406:
      case 407:
      case 408:
      case 409:
      case 410:
      case 411:
      case 412:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 420:
      case 421:
      case 422:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 452:
      case 453:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
      case 500:
      case 501:
      case 502:
      case 503:
      case 504:
      case 505:
      case 506:
      case 507:
      case 508:
      case 509:
      case 510:
      case 511:
      case 512:
      case 513:
      case 514:
      case 515:
      case 516:
      case 517:
      case 518:
      case 519:
      case 520:
      case 521:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 528:
      case 529:
      case 530:
      case 531:
      case 532:
      case 533:
      case 534:
      case 535:
      case 536:
      case 537:
      case 538:
      case 539:
      case 540:
      case 541:
      case 542:
      case 543:
      case 544:
      case 545:
      case 546:
      case 547:
      case 548:
      case 549:
      case 550:
      case 551:
      case 552:
      case 553:
      case 554:
      case 555:
      case 556:
      case 557:
      case 558:
      case 559:
      case 560:
      case 561:
      case 562:
      case 563:
      case 564:
      case 565:
      case 566:
      case 567:
      case 568:
      case 569:
      case 570:
      case 571:
      case 572:
      case 573:
      case 574:
      case 575:
      case 576:
      case 577:
      case 578:
      case 579:
      case 580:
      case 581:
      case 582:
      case 583:
      case 584:
      case 585:
      case 586:
      case 587:
      case 588:
      case 589:
      case 590:
      case 591:
      case 592:
      case 593:
      case 594:
      case 595:
      case 596:
      case 597:
      case 598:
      case 599:
      case 600:
      case 601:
      case 602:
      case 603:
      case 604:
      case 605:
      case 606:
      case 607:
      case 608:
      case 609:
      case 610:
      case 611:
      case 612:
      case 613:
      case 614:
      case 615:
      case 616:
      case 617:
      case 618:
      case 619:
      case 620:
      case 621:
      case 622:
      case 623:
      case 624:
      case 625:
      case 626:
      case 627:
      case 628:
      case 629:
      case 630:
      case 631:
      case 632:
      case 633:
      case 634:
      case 635:
      case 636:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
      case 642:
      case 643:
      case 644:
      case 645:
      case 646:
      case 647:
      case 648:
      case 649:
      case 650:
      case 651:
      case 652:
      case 653:
      case 654:
      case 655:
      case 656:
      case 657:
      case 658:
      case 659:
      case 660:
      case 661:
      case 662:
      case 663:
      case 664:
      case 665:
      case 666:
      case 667:
      case 668:
      case 669:
      case 670:
      case 671:
      case 672:
      case 673:
      case 674:
      case 675:
      case 676:
      case 677:
      case 678:
      case 679:
      case 680:
      case 681:
      case 682:
      case 683:
      case 684:
      case 685:
      case 686:
      case 687:
      case 688:
      case 689:
      case 690:
      case 691:
      case 692:
      case 693:
      case 694:
      case 695:
      case 696:
      case 697:
      case 698:
      case 699:
      case 700:
      case 701:
      case 702:
      case 703:
      case 704:
      case 705:
      case 706:
      case 707:
      case 708:
      case 709:
      case 710:
      case 711:
      case 712:
      case 713:
      case 714:
      case 715:
      case 716:
      case 717:
      case 718:
      case 719:
      case 720:
      case 721:
      case 722:
      case 723:
      case 724:
      case 725:
      case 726:
      case 727:
      case 728:
      case 729:
      case 730:
      case 731:
      case 732:
      case 733:
      case 734:
      case 735:
      case 736:
      case 737:
      case 738:
      case 739:
      case 740:
      case 741:
      case 742:
      case 743:
      case 744:
      case 745:
      case 746:
      case 747:
      case 748:
      case 749:
      case 750:
      case 751:
      case 752:
      case 753:
      case 754:
      case 755:
      case 756:
      case 757:
      case 758:
      case 759:
      case 760:
      case 761:
      case 762:
      case 763:
      case 764:
      case 765:
      case 766:
      case 767:
      case 768:
      case 769:
      case 770:
      case 771:
      case 772:
      case 773:
      case 774:
      case 775:
      case 776:
      case 777:
      case 778:
      case 779:
      case 780:
      case 781:
      case 782:
      case 783:
      case 784:
      case 785:
      case 786:
      case 787:
      case 788:
      case 789:
      case 790:
      case 791:
      case 792:
      case 793:
      case 794:
      case 795:
      case 796:
      case 797:
      case 798:
      case 799:
      case 800:
      case 801:
      case 802:
      case 803:
      case 804:
      case 805:
      case 806:
      case 807:
      case 808:
      case 809:
      case 810:
      case 811:
      case 812:
      case 813:
      case 814:
      case 815:
      case 816:
      case 817:
      case 818:
      case 819:
      case 820:
      case 821:
      case 822:
      case 823:
      case 824:
      case 825:
      case 826:
      case 827:
      case 828:
      case 829:
      case 830:
      case 831:
      case 832:
      case 833:
      case 834:
      case 835:
      case 836:
      case 837:
      case 838:
      case 839:
      case 840:
      case 841:
      case 842:
      case 843:
      case 844:
      case 845:
      case 846:
      case 847:
      case 848:
      case 849:
      case 850:
      case 851:
      case 852:
      case 853:
      case 854:
      case 855:
      case 856:
      case 857:
      case 858:
      case 859:
      case 860:
      case 861:
      case 862:
      case 863:
      case 864:
      case 865:
      case 866:
      case 867:
      case 868:
      case 869:
      case 870:
      case 871:
      case 872:
      case 873:
      case 874:
      case 875:
      case 876:
      case 877:
      case 878:
      case 879:
      case 880:
      case 881:
      case 882:
      case 883:
      case 884:
      case 885:
      case 886:
      case 887:
      case 888:
      case 889:
      case 890:
      case 891:
      case 892:
      case 893:
      case 894:
      case 895:
      case 896:
      case 897:
      case 898:
      case 899:
      case 900:
      case 901:
      case 902:
      case 903:
      case 904:
      case 905:
      case 906:
      case 907:
      case 908:
      case 909:
      case 910:
      case 911:
      case 912:
      case 913:
      case 914:
      case 915:
      case 916:
      case 917:
      case 918:
      case 919:
      case 920:
      case 921:
      case 922:
      case 923:
      case 924:
      case 925:
      case 926:
      case 927:
      case 928:
      case 929:
      case 930:
      case 931:
      case 932:
      case 933:
      case 934:
      case 935:
      case 936:
      case 937:
      case 938:
      case 939:
      case 940:
      case 941:
      case 942:
      case 943:
      case 944:
      case 945:
      case 946:
      case 947:
      case 948:
      case 949:
      case 950:
      case 951:
      case 952:
      case 953:
      case 954:
      case 955:
      case 956:
      case 957:
      case 958:
      case 959:
      case 960:
      case 961:
      case 962:
      case 963:
      case 964:
      case 965:
      case 966:
      case 967:
      case 968:
      case 969:
      case 970:
      case 971:
      case 972:
      case 973:
      case 974:
      case 975:
      case 976:
      case 977:
      case 978:
      case 979:
      case 980:
      case 981:
      case 982:
      case 983:
      case 984:
      case 985:
      case 986:
      case 987:
      case 988:
      case 989:
      case 990:
      case 991:
      case 992:
      case 993:
      case 994:
      case 995:
      case 996:
      case 997:
      case 998:
      case 999:
      case 1000:
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1010:
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1020:
      case 1021:
      case 1022:
      case 1023:
      case 1024:
      case 1025:
      case 1026:
      case 1027:
      case 1028:
      case 1029:
      case 1030:
      case 1031:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
      case 1049:
      case 1050:
      case 1051:
      case 1052:
      case 1053:
      case 1054:
      case 1055:
      case 1056:
      case 1057:
      case 1058:
      case 1059:
      case 1060:
      case 1061:
      case 1062:
      case 1063:
      case 1064:
      case 1065:
      case 1066:
      case 1067:
      case 1068:
      case 1069:
      case 1070:
      case 1071:
      case 1072:
      case 1073:
      case 1074:
      case 1075:
      case 1076:
      case 1077:
      case 1078:
      case 1079:
      case 1080:
      case 1081:
      case 1082:
      case 1083:
      case 1084:
      case 1085:
      case 1086:
      case 1087:
      case 1088:
      case 1089:
      case 1090:
      case 1091:
      case 1092:
      case 1093:
      case 1094:
      case 1095:
      case 1096:
      case 1097:
      case 1098:
      case 1099:
      case 1100:
      case 1101:
      case 1102:
      case 1103:
      case 1104:
      case 1105:
      case 1106:
      case 1107:
      case 1108:
      case 1109:
      case 1110:
      case 1111:
      case 1112:
      case 1113:
      case 1114:
      case 1115:
      case 1116:
      case 1117:
      case 1118:
      case 1119:
      case 1120:
      case 1121:
      case 1122:
      case 1123:
      case 1124:
      case 1125:
      case 1126:
      case 1127:
      case 1128:
      case 1129:
      case 1130:
      case 1131:
      case 1132:
      case 1133:
      case 1134:
      case 1135:
      case 1136:
      case 1137:
      case 1138:
      case 1139:
      case 1140:
      case 1141:
      case 1142:
      case 1143:
      case 1144:
      case 1145:
      case 1146:
      case 1147:
      case 1148:
      case 1149:
      case 1150:
      case 1151:
      case 1152:
      case 1153:
      case 1154:
      case 1155:
      case 1156:
      case 1157:
      case 1158:
      case 1159:
      case 1160:
      case 1161:
      case 1162:
      case 1163:
      case 1164:
      case 1165:
      case 1166:
      case 1167:
      case 1168:
      case 1169:
      case 1170:
      case 1171:
      case 1172:
      case 1173:
      case 1174:
      case 1175:
      case 1176:
      case 1177:
      case 1178:
      case 1179:
      case 1180:
      case 1181:
      case 1182:
      case 1183:
      case 1184:
      case 1185:
      case 1186:
      case 1187:
      case 1188:
      case 1189:
      case 1190:
      case 1191:
      case 1192:
      case 1193:
      case 1194:
      case 1195:
      case 1196:
      case 1197:
      case 1198:
      case 1199:
      case 1200:
      case 1201:
      case 1202:
      case 1203:
      case 1204:
      case 1205:
      case 1206:
      case 1207:
      case 1208:
      case 1209:
      case 1210:
      case 1211:
      case 1212:
      case 1213:
      case 1214:
      case 1215:
      case 1216:
      case 1217:
      case 1218:
      case 1219:
      case 1220:
      case 1221:
      case 1222:
      case 1223:
      case 1224:
      case 1225:
      case 1226:
      case 1227:
      case 1228:
      case 1229:
      case 1230:
      case 1231:
      case 1232:
      case 1233:
      case 1234:
      case 1235:
      case 1236:
      case 1237:
      case 1238:
      case 1239:
      case 1240:
      case 1241:
      case 1242:
      case 1243:
      case 1244:
      case 1245:
      case 1246:
      case 1247:
      case 1248:
      case 1249:
      case 1250:
      case 1251:
      case 1252:
      case 1253:
      case 1254:
      case 1255:
      case 1256:
      case 1257:
      case 1258:
      case 1259:
      case 1260:
      case 1261:
      case 1262:
      case 1263:
      case 1264:
      case 1265:
      case 1266:
      case 1267:
      case 1268:
      case 1269:
      case 1270:
      case 1271:
      case 1272:
      case 1273:
      case 1274:
      case 1275:
      case 1276:
      case 1277:
      case 1278:
      case 1279:
      case 1280:
      case 1281:
      case 1282:
      case 1283:
      case 1284:
      case 1285:
      case 1286:
      case 1287:
      case 1288:
      case 1289:
      case 1290:
      case 1291:
      case 1292:
      case 1293:
      case 1294:
      case 1295:
      case 1296:
      case 1297:
      case 1298:
      case 1299:
      case 1300:
      case 1301:
      case 1302:
      case 1303:
      case 1304:
      case 1305:
      case 1306:
      case 1307:
      case 1308:
      case 1309:
      case 1310:
      case 1311:
      case 1312:
      case 1313:
      case 1314:
      case 1315:
      case 1316:
      case 1317:
      case 1318:
      case 1319:
      case 1320:
      case 1321:
      case 1322:
      case 1323:
      case 1324:
      case 1325:
      case 1326:
      case 1327:
      case 1328:
      case 1329:
      case 1330:
      case 1331:
      case 1332:
      case 1333:
      case 1334:
      case 1335:
      case 1336:
      case 1337:
      case 1338:
      case 1339:
      case 1340:
      case 1341:
      case 1342:
      case 1343:
      case 1344:
      case 1345:
      case 1346:
      case 1347:
      case 1348:
      case 1349:
      case 1350:
      case 1351:
      case 1352:
      case 1353:
      case 1354:
      case 1355:
      case 1356:
      case 1357:
      case 1358:
      case 1359:
      case 1360:
      case 1361:
      case 1362:
      case 1363:
      case 1364:
      case 1365:
      case 1366:
      case 1367:
      case 1368:
      case 1369:
      case 1370:
      case 1371:
      case 1372:
      case 1373:
      case 1374:
      case 1375:
      case 1376:
      case 1377:
      case 1378:
      case 1379:
      case 1380:
      case 1381:
      case 1382:
      case 1383:
      case 1384:
      case 1385:
      case 1386:
      case 1387:
      case 1388:
      case 1389:
      case 1390:
      case 1391:
      case 1392:
      case 1393:
      case 1394:
      case 1395:
      case 1396:
      case 1397:
      case 1398:
      case 1399:
      case 1400:
      case 1401:
      case 1402:
      case 1403:
      case 1404:
      case 1405:
      case 1406:
      case 1407:
      case 1408:
      case 1409:
      case 1410:
      case 1411:
      case 1412:
      case 1413:
      case 1414:
      case 1415:
      case 1416:
      case 1417:
      case 1418:
      case 1419:
      case 1420:
      case 1421:
      case 1422:
      case 1423:
      case 1424:
      case 1425:
      case 1426:
      case 1427:
      case 1428:
      case 1429:
      case 1430:
      case 1431:
      case 1432:
      case 1433:
      case 1434:
      case 1435:
      case 1436:
      case 1437:
      case 1438:
      case 1439:
      case 1440:
      case 1441:
      case 1442:
      case 1443:
      case 1444:
      case 1445:
      case 1446:
      case 1447:
      case 1448:
      case 1449:
      case 1450:
      case 1451:
      case 1452:
      case 1453:
      case 1454:
      case 1455:
      case 1456:
      case 1457:
      case 1458:
      case 1459:
      case 1460:
      case 1461:
      case 1462:
      case 1463:
      case 1464:
      case 1465:
      case 1466:
      case 1467:
      case 1468:
      case 1469:
      case 1470:
      case 1471:
      case 1472:
      case 1473:
      case 1474:
      case 1475:
      case 1476:
      case 1477:
      case 1478:
      case 1479:
      case 1480:
      case 1481:
      case 1482:
      case 1483:
      case 1484:
      case 1485:
      case 1486:
      case 1487:
      case 1488:
      case 1489:
      case 1490:
      case 1491:
      case 1492:
      case 1493:
      case 1494:
      case 1495:
      case 1496:
      case 1497:
      case 1498:
      case 1499:
      case 1500:
      case 1501:
      case 1502:
      case 1503:
      case 1504:
      case 1505:
      case 1506:
      case 1507:
      case 1508:
      case 1509:
      case 1510:
      case 1511:
      case 1512:
      case 1513:
      case 1514:
      case 1515:
      case 1516:
      case 1517:
      case 1518:
      case 1519:
      case 1520:
      case 1521:
      case 1522:
      case 1523:
      case 1524:
      case 1525:
      case 1526:
      case 1527:
      case 1528:
      case 1529:
      case 1530:
      case 1531:
      case 1532:
      case 1533:
      case 1534:
      case 1535:
      case 1536:
      case 1537:
      case 1538:
      case 1539:
      case 1540:
      case 1541:
      case 1542:
      case 1543:
      case 1544:
      case 1545:
      case 1546:
      case 1547:
      case 1548:
      case 1549:
      case 1550:
      case 1551:
      case 1552:
      case 1553:
      case 1554:
      case 1555:
      case 1556:
      case 1557:
      case 1558:
      case 1559:
      case 1560:
      case 1561:
      case 1562:
      case 1563:
      case 1564:
      case 1565:
      case 1566:
      case 1567:
      case 1568:
      case 1569:
      case 1570:
      case 1571:
      case 1572:
      case 1573:
      case 1574:
      case 1575:
      case 1576:
      case 1577:
      case 1578:
      case 1579:
      case 1580:
      case 1581:
      case 1582:
      case 1583:
      case 1584:
      case 1585:
      case 1586:
      case 1587:
      case 1588:
      case 1589:
      case 1590:
      case 1591:
      case 1592:
      case 1593:
      case 1594:
      case 1595:
      case 1596:
      case 1597:
      case 1598:
      case 1599:
      case 1600:
      case 1601:
      case 1602:
      case 1603:
      case 1604:
      case 1605:
      case 1606:
      case 1607:
      case 1608:
      case 1609:
      case 1610:
      case 1611:
      case 1612:
      case 1613:
      case 1614:
      case 1615:
      case 1616:
      case 1617:
      case 1618:
      case 1619:
      case 1620:
      case 1621:
      case 1622:
      case 1623:
      case 1624:
      case 1625:
      case 1626:
      case 1627:
      case 1628:
      case 1629:
      case 1630:
      case 1631:
      case 1632:
      case 1633:
      case 1634:
      case 1635:
      case 1636:
      case 1637:
      case 1638:
      case 1639:
      case 1640:
      case 1641:
      case 1642:
      case 1643:
      case 1644:
      case 1645:
      case 1646:
      case 1647:
      case 1648:
      case 1649:
      case 1650:
      case 1651:
      case 1652:
      case 1653:
      case 1654:
      case 1655:
      case 1656:
      case 1657:
      case 1658:
      case 1659:
      case 1660:
      case 1661:
      case 1662:
      case 1663:
      case 1664:
      case 1665:
      case 1666:
      case 1667:
      case 1668:
      case 1669:
      case 1670:
      case 1671:
      case 1672:
      case 1673:
      case 1674:
      case 1675:
      case 1676:
      case 1677:
      case 1678:
      case 1679:
      case 1680:
      case 1681:
      case 1682:
      case 1683:
      case 1684:
      case 1685:
      case 1686:
      case 1687:
      case 1688:
      case 1689:
      case 1690:
      case 1691:
      case 1692:
      case 1693:
      case 1694:
      case 1695:
      case 1696:
      case 1697:
      case 1698:
      case 1699:
      case 1700:
      case 1701:
      case 1702:
      case 1703:
      case 1704:
      case 1705:
      case 1706:
      case 1707:
      case 1708:
      case 1709:
      case 1710:
      case 1711:
      case 1712:
      case 1713:
      case 1714:
      case 1715:
      case 1716:
      case 1717:
      case 1718:
      case 1719:
      case 1720:
      case 1721:
      case 1722:
      case 1723:
      case 1724:
      case 1725:
      case 1726:
      case 1727:
      case 1728:
      case 1729:
      case 1730:
      case 1731:
      case 1732:
      case 1733:
      case 1734:
      case 1735:
      case 1736:
      case 1737:
      case 1738:
      case 1739:
      case 1740:
      case 1741:
      case 1742:
      case 1743:
      case 1744:
      case 1745:
      case 1746:
      case 1747:
      case 1748:
      case 1749:
      case 1750:
      case 1751:
      case 1752:
      case 1753:
      case 1754:
      case 1755:
      case 1756:
      case 1757:
      case 1758:
      case 1759:
      case 1760:
      case 1761:
      case 1762:
      case 1763:
      case 1764:
      case 1765:
      case 1766:
      case 1767:
      case 1768:
      case 1769:
      case 1770:
      case 1771:
      case 1772:
      case 1773:
      case 1774:
      case 1775:
      case 1776:
      case 1777:
      case 1778:
      case 1779:
      case 1780:
      case 1781:
      case 1782:
      case 1783:
      case 1784:
      case 1785:
      case 1786:
      case 1787:
      case 1788:
      case 1789:
      case 1790:
      case 1791:
      case 1792:
      case 1793:
      case 1794:
      case 1795:
      case 1796:
      case 1797:
      case 1798:
      case 1799:
      case 1800:
      case 1801:
      case 1802:
      case 1803:
      case 1804:
      case 1805:
      case 1806:
      case 1807:
      case 1808:
      case 1809:
      case 1810:
      case 1811:
      case 1812:
      case 1813:
      case 1814:
      case 1815:
      case 1816:
      case 1817:
      case 1818:
      case 1819:
      case 1820:
      case 1821:
      case 1822:
      case 1823:
      case 1824:
      case 1825:
      case 1826:
      case 1827:
      case 1828:
      case 1829:
      case 1830:
      case 1831:
      case 1832:
      case 1833:
      case 1834:
      case 1835:
      case 1836:
      case 1837:
      case 1838:
      case 1839:
      case 1840:
      case 1841:
      case 1842:
      case 1843:
      case 1844:
      case 1845:
      case 1846:
      case 1847:
      case 1848:
      case 1849:
      case 1850:
      case 1851:
      case 1852:
      case 1853:
      case 1854:
      case 1855:
      case 1856:
      case 1857:
      case 1858:
      case 1859:
      case 1860:
      case 1861:
      case 1862:
      case 1863:
      case 1864:
      case 1865:
      case 1866:
      case 1867:
      case 1868:
      case 1869:
      case 1870:
      case 1871:
      case 1872:
      case 1873:
      case 1874:
      case 1875:
      case 1876:
      case 1877:
      case 1878:
      case 1879:
      case 1880:
      case 1881:
      case 1882:
      case 1883:
      case 1884:
      case 1885:
      case 1886:
      case 1887:
      case 1888:
      case 1889:
      case 1890:
      case 1891:
      case 1892:
      case 1893:
      case 1894:
      case 1895:
      case 1896:
      case 1897:
      case 1898:
      case 1899:
      case 1900:
      case 1901:
      case 1902:
      case 1903:
      case 1904:
      case 1905:
      case 1906:
      case 1907:
      case 1908:
      case 1909:
      case 1910:
      case 1911:
      case 1912:
      case 1913:
      case 1914:
      case 1915:
      case 1916:
      case 1917:
      case 1918:
      case 1919:
      case 1920:
      case 1921:
      case 1922:
      case 1923:
      case 1924:
      case 1925:
      case 1926:
      case 1927:
      case 1928:
      case 1929:
      case 1930:
      case 1931:
      case 1932:
      case 1933:
      case 1934:
      case 1935:
      case 1936:
      case 1937:
      case 1938:
      case 1939:
      case 1940:
      case 1941:
      case 1942:
      case 1943:
      case 1944:
      case 1945:
      case 1946:
      case 1947:
      case 1948:
      case 1949:
      case 1950:
      case 1951:
      case 1952:
      case 1953:
      case 1954:
      case 1955:
      case 1956:
      case 1957:
      case 1958:
      case 1959:
      case 1960:
      case 1961:
      case 1962:
      case 1963:
      case 1964:
      case 1965:
      case 1966:
      case 1967:
      case 1968:
      case 1969:
      case 1970:
      case 1971:
      case 1972:
      case 1973:
      case 1974:
      case 1975:
      case 1976:
      case 1977:
      case 1978:
      case 1979:
      case 1980:
      case 1981:
      case 1982:
      case 1983:
      case 1984:
      case 1985:
      case 1986:
      case 1987:
      case 1988:
      case 1989:
      case 1990:
      case 1991:
      case 1992:
      case 1993:
      case 1994:
      case 1995:
      case 1996:
      case 1997:
      case 1998:
      case 1999:
      case 2000:
      case 2001:
      case 2002:
      case 2003:
      case 2004:
      case 2005:
      case 2006:
      case 2007:
      case 2008:
      case 2009:
      case 2010:
      case 2011:
      case 2012:
      case 2013:
      case 2014:
      case 2015:
      case 2016:
      case 2017:
      case 2018:
      case 2019:
      case 2020:
      case 2021:
      case 2022:
      case 2023:
      case 2024:
      case 2025:
      case 2026:
      case 2027:
      case 2028:
      case 2029:
      case 2030:
      case 2031:
      case 2032:
      case 2033:
      case 2034:
      case 2035:
      case 2036:
      case 2037:
      case 2038:
      case 2039:
      case 2040:
      case 2041:
      case 2042:
      case 2043:
      case 2044:
      case 2045:
      case 2046:
      case 2047:
        goto LABEL_76;
      case 2048:
        return result;
      case 2049:
        result = "kDYFEMTLBlitCommandEncoder_dealloc";
        break;
      case 2050:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 2051:
        result = "kDYFEMTLBlitCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 2052:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage";
        break;
      case 2053:
        result = "kDYFEMTLBlitCommandEncoder_generateMipmapsForTexture";
        break;
      case 2054:
        result = "kDYFEMTLBlitCommandEncoder_fillBuffer_range_value";
        break;
      case 2055:
        result = "kDYFEMTLBlitCommandEncoder_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size";
        break;
      case 2056:
        result = "kDYFEMTLBlitCommandEncoder_endEncoding";
        break;
      case 2057:
        result = "kDYFEMTLBlitCommandEncoder_insertDebugSignpost";
        break;
      case 2058:
        result = "kDYFEMTLBlitCommandEncoder_pushDebugGroup";
        break;
      case 2059:
        result = "kDYFEMTLBlitCommandEncoder_popDebugGroup";
        break;
      case 2060:
        result = "kDYFEMTLBuffer_setLabel";
        break;
      case 2061:
        result = "kDYFEMTLBuffer_setResponsibleProcess";
        break;
      case 2062:
        result = "kDYFEMTLBuffer_dealloc";
        break;
      case 2063:
        result = "kDYFEMTLBuffer_contents";
        break;
      case 2064:
        result = "kDYFEMTLBuffer_newTextureWithDescriptor_offset_bytesPerRow";
        break;
      case 2065:
        result = "kDYFEMTLBuffer_setPurgeableState";
        break;
      case 2066:
        result = "kDYFEMTLBuffer_isPurgeable";
        break;
      case 2067:
        result = "kDYFEMTLCommandBuffer_setLabel";
        break;
      case 2068:
        result = "kDYFEMTLCommandBuffer_setProfilingEnabled";
        break;
      case 2069:
        result = "kDYFEMTLCommandBuffer_dealloc";
        break;
      case 2070:
        result = "kDYFEMTLCommandBuffer_enqueue";
        break;
      case 2071:
        result = "kDYFEMTLCommandBuffer_commit";
        break;
      case 2072:
        result = "kDYFEMTLCommandBuffer_addScheduledHandler";
        break;
      case 2073:
        result = "kDYFEMTLCommandBuffer_presentDrawable";
        break;
      case 2074:
        result = "kDYFEMTLCommandBuffer_presentDrawable_atTime";
        break;
      case 2075:
        result = "kDYFEMTLCommandBuffer_waitUntilScheduled";
        break;
      case 2076:
        result = "kDYFEMTLCommandBuffer_addCompletedHandler";
        break;
      case 2077:
        result = "kDYFEMTLCommandBuffer_waitUntilCompleted";
        break;
      case 2078:
        result = "kDYFEMTLCommandBuffer_blitCommandEncoder";
        break;
      case 2079:
        result = "kDYFEMTLCommandBuffer_renderCommandEncoderWithDescriptor";
        break;
      case 2080:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoder";
        break;
      case 2081:
        result = "kDYFEMTLCommandBuffer_parallelRenderCommandEncoderWithDescriptor";
        break;
      case 2082:
        result = "kDYFEMTLCommandBuffer_debugCommandEncoder";
        break;
      case 2083:
        result = "kDYFEMTLCommandQueue_setLabel";
        break;
      case 2084:
        result = "kDYFEMTLCommandQueue_setBackgroundTrackingPID";
        break;
      case 2085:
        result = "kDYFEMTLCommandQueue_setSkipRender";
        break;
      case 2086:
        result = "kDYFEMTLCommandQueue_setExecutionEnabled";
        break;
      case 2087:
        result = "kDYFEMTLCommandQueue_setProfilingEnabled";
        break;
      case 2088:
        result = "kDYFEMTLCommandQueue_dealloc";
        break;
      case 2089:
        result = "kDYFEMTLCommandQueue_commandBuffer";
        break;
      case 2090:
        result = "kDYFEMTLCommandQueue_commandBufferWithUnretainedReferences";
        break;
      case 2091:
        result = "kDYFEMTLCommandQueue_insertDebugCaptureBoundary";
        break;
      case 2092:
        result = "kDYFEMTLCommandQueue_finish";
        break;
      case 2093:
        result = "kDYFEMTLComputeCommandEncoder_setLabel";
        break;
      case 2094:
        result = "kDYFEMTLComputeCommandEncoder_dealloc";
        break;
      case 2095:
        result = "kDYFEMTLComputeCommandEncoder_setComputePipelineState";
        break;
      case 2096:
        result = "kDYFEMTLComputeCommandEncoder_setBuffer_offset_atIndex";
        break;
      case 2097:
        result = "kDYFEMTLComputeCommandEncoder_setBuffers_offsets_withRange";
        break;
      case 2098:
        result = "kDYFEMTLComputeCommandEncoder_setTexture_atIndex";
        break;
      case 2099:
        result = "kDYFEMTLComputeCommandEncoder_setTextures_withRange";
        break;
      case 2100:
        result = "kDYFEMTLComputeCommandEncoder_setSamplerState_atIndex";
        break;
      case 2101:
        result = "kDYFEMTLComputeCommandEncoder_setSamplerStates_withRange";
        break;
      case 2102:
        result = "kDYFEMTLComputeCommandEncoder_setSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 2103:
        result = "kDYFEMTLComputeCommandEncoder_setSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 2104:
        result = "kDYFEMTLComputeCommandEncoder_setThreadgroupMemoryLength_atIndex";
        break;
      case 2105:
        result = "kDYFEMTLComputeCommandEncoder_dispatchThreadgroups_threadsPerThreadgroup";
        break;
      case 2106:
        result = "kDYFEMTLComputeCommandEncoder_executeBarrier";
        break;
      case 2107:
        result = "kDYFEMTLComputeCommandEncoder_endEncoding";
        break;
      case 2108:
        result = "kDYFEMTLComputeCommandEncoder_insertDebugSignpost";
        break;
      case 2109:
        result = "kDYFEMTLComputeCommandEncoder_pushDebugGroup";
        break;
      case 2110:
        result = "kDYFEMTLComputeCommandEncoder_popDebugGroup";
        break;
      case 2111:
        result = "kDYFEMTLComputePipelineState_dealloc";
        break;
      case 2112:
        result = "kDYFEMTLDepthStencilState_dealloc";
        break;
      case 2113:
        result = "kDYFEMTLDevice_setShaderDebugInfoCaching";
        break;
      case 2114:
        result = "kDYFEMTLDevice_setMetalAssertionsEnabled";
        break;
      case 2115:
        result = "kDYFEMTLDevice_dealloc";
        break;
      case 2116:
        result = "kDYFEMTLDevice_newCommandQueue";
        break;
      case 2117:
        result = "kDYFEMTLDevice_newCommandQueueWithMaxCommandBufferCount";
        break;
      case 2118:
        result = "kDYFEMTLDevice_newBufferWithLength_options";
        break;
      case 2119:
        result = "kDYFEMTLDevice_newBufferWithBytes_length_options";
        break;
      case 2120:
        result = "kDYFEMTLDevice_newBufferWithBytesNoCopy_length_options_deallocator";
        break;
      case 2121:
        result = "kDYFEMTLDevice_newDepthStencilStateWithDescriptor";
        break;
      case 2122:
        result = "kDYFEMTLDevice_newTextureWithDescriptor";
        break;
      case 2123:
        result = "kDYFEMTLDevice_newSamplerStateWithDescriptor";
        break;
      case 2124:
        result = "kDYFEMTLDevice_newDefaultLibrary";
        break;
      case 2125:
        result = "kDYFEMTLDevice_newLibraryWithFile_error";
        break;
      case 2126:
        result = "kDYFEMTLDevice_newLibraryWithData_error";
        break;
      case 2127:
        result = "kDYFEMTLDevice_newLibraryWithSource_options_error";
        break;
      case 2128:
        result = "kDYFEMTLDevice_newLibraryWithSource_options_completionHandler";
        break;
      case 2129:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithDescriptor_error";
        break;
      case 2130:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithDescriptor_options_reflection_error";
        break;
      case 2131:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithDescriptor_completionHandler";
        break;
      case 2132:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithDescriptor_options_completionHandler";
        break;
      case 2133:
        result = "kDYFEMTLDevice_newComputePipelineStateWithFunction_error";
        break;
      case 2134:
        result = "kDYFEMTLDevice_newComputePipelineStateWithFunction_options_reflection_error";
        break;
      case 2135:
        result = "kDYFEMTLDevice_newComputePipelineStateWithFunction_completionHandler";
        break;
      case 2136:
        result = "kDYFEMTLDevice_newComputePipelineStateWithFunction_options_completionHandler";
        break;
      case 2137:
        result = "kDYFEMTLDevice_unmapShaderSampleBuffer";
        break;
      case 2138:
        result = "kDYFEMTLDevice_newTextureWithDescriptor_iosurface_plane";
        break;
      case 2139:
        result = "kDYFEMTLFunction_dealloc";
        break;
      case 2140:
        result = "kDYFEMTLLibrary_setLabel";
        break;
      case 2141:
        result = "kDYFEMTLLibrary_dealloc";
        break;
      case 2142:
        result = "kDYFEMTLLibrary_newFunctionWithName";
        break;
      case 2143:
        result = "kDYFEMTLParallelRenderCommandEncoder_setSeparateCommits";
        break;
      case 2144:
        result = "kDYFEMTLParallelRenderCommandEncoder_setLabel";
        break;
      case 2145:
        result = "kDYFEMTLParallelRenderCommandEncoder_dealloc";
        break;
      case 2146:
        result = "kDYFEMTLParallelRenderCommandEncoder_renderCommandEncoder";
        break;
      case 2147:
        result = "kDYFEMTLParallelRenderCommandEncoder_endEncoding";
        break;
      case 2148:
        result = "kDYFEMTLParallelRenderCommandEncoder_insertDebugSignpost";
        break;
      case 2149:
        result = "kDYFEMTLParallelRenderCommandEncoder_pushDebugGroup";
        break;
      case 2150:
        result = "kDYFEMTLParallelRenderCommandEncoder_popDebugGroup";
        break;
      case 2151:
        result = "kDYFEMTLRenderCommandEncoder_setLabel";
        break;
      case 2152:
        result = "kDYFEMTLRenderCommandEncoder_dealloc";
        break;
      case 2153:
        result = "kDYFEMTLRenderCommandEncoder_setRenderPipelineState";
        break;
      case 2154:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBuffer_offset_atIndex";
        break;
      case 2155:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBuffers_offsets_withRange";
        break;
      case 2156:
        result = "kDYFEMTLRenderCommandEncoder_setVertexTexture_atIndex";
        break;
      case 2157:
        result = "kDYFEMTLRenderCommandEncoder_setVertexTextures_withRange";
        break;
      case 2158:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerState_atIndex";
        break;
      case 2159:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerStates_withRange";
        break;
      case 2160:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 2161:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 2162:
        result = "kDYFEMTLRenderCommandEncoder_setViewport";
        break;
      case 2163:
        result = "kDYFEMTLRenderCommandEncoder_setFrontFacingWinding";
        break;
      case 2164:
        result = "kDYFEMTLRenderCommandEncoder_setCullMode";
        break;
      case 2165:
        result = "kDYFEMTLRenderCommandEncoder_setDepthClipMode";
        break;
      case 2166:
        result = "kDYFEMTLRenderCommandEncoder_setDepthBias_slopeScale_clamp";
        break;
      case 2167:
        result = "kDYFEMTLRenderCommandEncoder_setScissorRect";
        break;
      case 2168:
        result = "kDYFEMTLRenderCommandEncoder_setTriangleFillMode";
        break;
      case 2169:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentBuffer_offset_atIndex";
        break;
      case 2170:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentBuffers_offsets_withRange";
        break;
      case 2171:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentTexture_atIndex";
        break;
      case 2172:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentTextures_withRange";
        break;
      case 2173:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerState_atIndex";
        break;
      case 2174:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerStates_withRange";
        break;
      case 2175:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 2176:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 2177:
        result = "kDYFEMTLRenderCommandEncoder_setBlendColorRed_green_blue_alpha";
        break;
      case 2178:
        result = "kDYFEMTLRenderCommandEncoder_setDepthStencilState";
        break;
      case 2179:
        result = "kDYFEMTLRenderCommandEncoder_setStencilReferenceValue";
        break;
      case 2180:
        result = "kDYFEMTLRenderCommandEncoder_setVisibilityResultMode_offset";
        break;
      case 2181:
        result = "kDYFEMTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount";
        break;
      case 2182:
        result = "kDYFEMTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount";
        break;
      case 2183:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount";
        break;
      case 2184:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset";
        break;
      case 2185:
        result = "kDYFEMTLRenderCommandEncoder_setLineWidth";
        break;
      case 2186:
        result = "kDYFEMTLRenderCommandEncoder_endEncoding";
        break;
      case 2187:
        result = "kDYFEMTLRenderCommandEncoder_insertDebugSignpost";
        break;
      case 2188:
        result = "kDYFEMTLRenderCommandEncoder_pushDebugGroup";
        break;
      case 2189:
        result = "kDYFEMTLRenderCommandEncoder_popDebugGroup";
        break;
      case 2190:
        result = "kDYFEMTLRenderPipelineState_dealloc";
        break;
      case 2191:
        result = "kDYFEMTLSamplerState_dealloc";
        break;
      case 2192:
        result = "kDYFEMTLTexture_setLabel";
        break;
      case 2193:
        result = "kDYFEMTLTexture_setResponsibleProcess";
        break;
      case 2194:
        result = "kDYFEMTLTexture_dealloc";
        break;
      case 2195:
        result = "kDYFEMTLTexture_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice";
        break;
      case 2196:
        result = "kDYFEMTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage";
        break;
      case 2197:
        result = "kDYFEMTLTexture_getBytes_bytesPerRow_fromRegion_mipmapLevel";
        break;
      case 2198:
        result = "kDYFEMTLTexture_replaceRegion_mipmapLevel_withBytes_bytesPerRow";
        break;
      case 2199:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat";
        break;
      case 2200:
        result = "kDYFEMTLTexture_setPurgeableState";
        break;
      case 2201:
        result = "kDYFEMTLTexture_isPurgeable";
        break;
      case 2202:
        result = "kDYFEMTLBlitCommandEncoder_flushResource";
        break;
      case 2203:
        result = "kDYFEMTLBlitCommandEncoder_flushTexture_slice_mipmapLevel";
        break;
      case 2204:
        result = "kDYFEMTLBuffer_invalidateRange";
        break;
      case 2205:
        result = "kDYFEMTLComputeCommandEncoder_setBytes_length_atIndex";
        break;
      case 2206:
        result = "kDYFEMTLComputeCommandEncoder_setBufferOffset_atIndex";
        break;
      case 2207:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBytes_length_atIndex";
        break;
      case 2208:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBufferOffset_atIndex";
        break;
      case 2209:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentBytes_length_atIndex";
        break;
      case 2210:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentBufferOffset_atIndex";
        break;
      case 2211:
        result = "kDYFEMTLTexture_invalidateRegion";
        break;
      case 2212:
        result = "kDYFEMTLComputeCommandEncoder_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup";
        break;
      case 2213:
        result = "kDYFEMTLRenderCommandEncoder_setStencilFrontReferenceValue_backReferenceValue";
        break;
      case 2214:
        result = "kDYFEMTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance";
        break;
      case 2215:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance";
        break;
      case 2216:
        result = "kDYFEMTLRenderCommandEncoder_drawPrimitives_indirectBuffer_indirectBufferOffset";
        break;
      case 2217:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset";
        break;
      case 2218:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex";
        break;
      case 2219:
        result = "kDYFEMTLBlitCommandEncoder_synchronizeResource";
        break;
      case 2220:
        result = "kDYFEMTLBlitCommandEncoder_synchronizeTexture_slice_level";
        break;
      case 2221:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options";
        break;
      case 2222:
        result = "kDYFEMTLBlitCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options";
        break;
      case 2223:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_options";
        break;
      case 2224:
        result = "kDYFEMTLBuffer_didModifyRange";
        break;
      case 2225:
        result = "kDYFEMTLComputeCommandEncoder_setTexture_baseLevel_atIndex";
        break;
      case 2226:
        result = "kDYFEMTLDevice_supportsFeatureSet";
        break;
      case 2227:
        result = "kDYFEMTLDevice_supportsSampleCount";
        break;
      case 2228:
        result = "kDYFEMTLRenderCommandEncoder_setVertexTexture_baseLevel_atIndex";
        break;
      case 2229:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentTexture_baseLevel_atIndex";
        break;
      case 2230:
        result = "kDYFEMTLCommandBuffer_commitAndHold";
        break;
      case 2231:
        result = "kDYFEMTLRenderCommandEncoder_textureBarrier";
        break;
      case 2232:
        result = "kDYFEMTLDevice_newComputePipelineStateWithDescriptor_error";
        break;
      case 2233:
        result = "kDYFEMTLDevice_newComputePipelineStateWithDescriptor_options_reflection_error";
        break;
      case 2234:
        result = "kDYFEMTLDevice_newComputePipelineStateWithDescriptor_completionHandler";
        break;
      case 2235:
        result = "kDYFEMTLDevice_newComputePipelineStateWithDescriptor_options_completionHandler";
        break;
      case 2236:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices";
        break;
      case 2237:
        result = "kDYFEMTLCommandBuffer_fragmentRenderCommandEncoderWithDescriptor";
        break;
      case 2238:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setLabel";
        break;
      case 2239:
        result = "kDYFEMTLFragmentRenderCommandEncoder_dealloc";
        break;
      case 2240:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setRenderPipelineState";
        break;
      case 2241:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setDepthBias_slopeScale_clamp";
        break;
      case 2242:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setScissorRect";
        break;
      case 2243:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentBytes_length_atIndex";
        break;
      case 2244:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentBuffer_offset_atIndex";
        break;
      case 2245:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentBufferOffset_atIndex";
        break;
      case 2246:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentBuffers_offsets_withRange";
        break;
      case 2247:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentTexture_atIndex";
        break;
      case 2248:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentTextures_withRange";
        break;
      case 2249:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentTexture_baseLevel_atIndex";
        break;
      case 2250:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex";
        break;
      case 2251:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentSamplerState_atIndex";
        break;
      case 2252:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentSamplerStates_withRange";
        break;
      case 2253:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 2254:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setFragmentSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 2255:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setBlendColorRed_green_blue_alpha";
        break;
      case 2256:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setDepthStencilState";
        break;
      case 2257:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setStencilReferenceValue";
        break;
      case 2258:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setStencilFrontReferenceValue_backReferenceValue";
        break;
      case 2259:
        result = "kDYFEMTLFragmentRenderCommandEncoder_drawTrianglesWithPositions_vertexCount_triangleIndices_triangleCount";
        break;
      case 2260:
        result = "kDYFEMTLFragmentRenderCommandEncoder_drawTrianglesWithPositions_vertexCount_vertexVaryings_varyingCountPerVertex_triangleIndices_triangleCount";
        break;
      case 2261:
        result = "kDYFEMTLFragmentRenderCommandEncoder_drawTrianglesWithPositions_vertexCount_vertexVaryings_varyingCountPerVertex";
        break;
      case 2262:
        result = "kDYFEMTLFragmentRenderCommandEncoder_endEncoding";
        break;
      case 2263:
        result = "kDYFEMTLFragmentRenderCommandEncoder_insertDebugSignpost";
        break;
      case 2264:
        result = "kDYFEMTLFragmentRenderCommandEncoder_pushDebugGroup";
        break;
      case 2265:
        result = "kDYFEMTLFragmentRenderCommandEncoder_popDebugGroup";
        break;
      case 2266:
        result = "kDYFEMTLDevice_supportsTextureSampleCount";
        break;
      case 2267:
        result = "kDYFEMTLDevice_newCommandQueueWithDescriptor";
        break;
      case 2268:
        result = "kDYFEMTLCommandBuffer_setListIndex";
        break;
      case 2269:
        result = "kDYFEMTLDevice_newBufferWithIOSurface";
        break;
      case 2270:
        result = "kDYFEMTLParallelRenderCommandEncoder_setColorStoreAction_atIndex";
        break;
      case 2271:
        result = "kDYFEMTLParallelRenderCommandEncoder_setDepthStoreAction";
        break;
      case 2272:
        result = "kDYFEMTLParallelRenderCommandEncoder_setStencilStoreAction";
        break;
      case 2273:
        result = "kDYFEMTLRenderCommandEncoder_setColorStoreAction_atIndex";
        break;
      case 2274:
        result = "kDYFEMTLRenderCommandEncoder_setDepthStoreAction";
        break;
      case 2275:
        result = "kDYFEMTLRenderCommandEncoder_setStencilStoreAction";
        break;
      case 2276:
        result = "kDYFEMTLRenderCommandEncoder_setColorResolveTexture_slice_depthPlane_level_atIndex";
        break;
      case 2277:
        result = "kDYFEMTLRenderCommandEncoder_setDepthResolveTexture_slice_depthPlane_level";
        break;
      case 2278:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setColorStoreAction_atIndex";
        break;
      case 2279:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setDepthStoreAction";
        break;
      case 2280:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setStencilStoreAction";
        break;
      case 2281:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoderWithParallelExecution";
        break;
      case 2282:
        result = "kDYFEMTLComputeCommandEncoder_dispatchBarrier";
        break;
      case 2283:
        result = "kDYFEMTLComputeCommandEncoder_setImageblockWidth_height";
        break;
      case 2284:
        result = "kDYFEMTLRenderCommandEncoder_setTessellationFactorBuffer_offset_instanceStride";
        break;
      case 2285:
        result = "kDYFEMTLRenderCommandEncoder_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance";
        break;
      case 2286:
        result = "kDYFEMTLRenderCommandEncoder_drawPatches_patchIndexBuffer_patchIndexBufferOffset_indirectBuffer_indirectBufferOffset";
        break;
      case 2287:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance";
        break;
      case 2288:
        result = "kDYFEMTLRenderCommandEncoder_drawIndexedPatches_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_indirectBuffer_indirectBufferOffset";
        break;
      case 2289:
        result = "kDYFEMTLRenderCommandEncoder_setTileBytes_length_atIndex";
        break;
      case 2290:
        result = "kDYFEMTLRenderCommandEncoder_setTileBuffer_offset_atIndex";
        break;
      case 2291:
        result = "kDYFEMTLRenderCommandEncoder_setTileBufferOffset_atIndex";
        break;
      case 2292:
        result = "kDYFEMTLRenderCommandEncoder_setTileTexture_atIndex";
        break;
      case 2293:
        result = "kDYFEMTLRenderCommandEncoder_setTileSamplerState_atIndex";
        break;
      case 2294:
        result = "kDYFEMTLRenderCommandEncoder_setTileSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 2295:
        result = "kDYFEMTLRenderCommandEncoder_dispatchThreadsPerTile";
        break;
      case 2296:
        result = "kDYFEMTLFence_setLabel";
        break;
      case 2297:
        result = "kDYFEMTLFunction_functionConstantIndexByName_type";
        break;
      case 2298:
        result = "kDYFEMTLCommandQueue_setIsOpenGLQueue";
        break;
      case 2299:
        result = "kDYFEMTLCommandBuffer_presentDrawable_afterMinimumDuration";
        break;
      case 2300:
        result = "kDYFEMTLRenderCommandEncoder_setTessellationFactorScale";
        break;
      case 2301:
        result = "kDYFEMTLBlitCommandEncoder_waitForFence";
        break;
      case 2302:
        result = "kDYFEMTLComputeCommandEncoder_updateFence";
        break;
      case 2303:
        result = "kDYFEMTLComputeCommandEncoder_waitForFence";
        break;
      case 2304:
        result = "kDYFEMTLDevice_newFence";
        break;
      case 2305:
        result = "kDYFEMTLFence_dealloc";
        break;
      case 2306:
        result = "kDYFEMTLRenderCommandEncoder_updateFence_afterStages";
        break;
      case 2307:
        result = "kDYFEMTLRenderCommandEncoder_waitForFence_beforeStages";
        break;
      case 2308:
        result = "kDYFEMTLBlitCommandEncoder_updateFence";
        break;
      case 2309:
        result = "kDYFEMTLFunction_setLabel";
        break;
      case 2310:
        result = "kDYFEMTLBuffer_makeAliasable";
        break;
      case 2311:
        result = "kDYFEMTLDevice_heapTextureSizeWithDescriptor";
        break;
      case 2312:
        result = "kDYFEMTLDevice_newHeapWithDescriptor";
        break;
      case 2313:
        result = "kDYFEMTLHeap_setLabel";
        break;
      case 2314:
        result = "kDYFEMTLHeap_dealloc";
        break;
      case 2315:
        result = "kDYFEMTLHeap_newBufferWithLength_options";
        break;
      case 2316:
        result = "kDYFEMTLHeap_newTextureWithDescriptor";
        break;
      case 2317:
        result = "kDYFEMTLHeap_setPurgeableState";
        break;
      case 2318:
        result = "kDYFEMTLTexture_makeAliasable";
        break;
      case 2319:
        result = "kDYFEMTLBuffer_isAliasable";
        break;
      case 2320:
        result = "kDYFEMTLDevice_heapTextureSizeAndAlignWithDescriptor";
        break;
      case 2321:
        result = "kDYFEMTLDevice_heapBufferSizeAndAlignWithLength_options";
        break;
      case 2322:
        result = "kDYFEMTLHeap_setResponsibleProcess";
        break;
      case 2323:
        result = "kDYFEMTLHeap_isPurgeable";
        break;
      case 2324:
        result = "kDYFEMTLTexture_isAliasable";
        break;
      case 2325:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_error";
        break;
      case 2326:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_completionHandler";
        break;
      case 2327:
        result = "kDYFEMTLHeap_maxAvailableSizeWithAlignment";
        break;
      case 2328:
        result = "kDYFEMTLBuffer_newTiledTextureWithDescriptor_offset_bytesPerRow";
        break;
      case 2329:
        result = "kDYFEMTLBuffer_addDebugMarker_range";
        break;
      case 2330:
        result = "kDYFEMTLBuffer_removeAllDebugMarkers";
        break;
      case 2331:
        result = "kDYFEMTLDevice_newComputePipelineStateWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error";
        break;
      case 2332:
        result = "kDYFEMTLComputeCommandEncoder_setStageInRegion";
        break;
      case 2333:
        result = "kDYFEMTLDevice_newTextureLayoutWithDescriptor_isHeapOrBufferBacked";
        break;
      case 2334:
        result = "kDYFEMTLBuffer_newLinearTextureWithDescriptor_offset_bytesPerRow_bytesPerImage";
        break;
      case 2335:
        result = "kDYFEMTLTextureLayout_dealloc";
        break;
      case 2336:
        result = "kDYFEMTLDevice_newTextureWithBytesNoCopy_length_descriptor_deallocator";
        break;
      case 2337:
        result = "kDYFEMTLDevice_newDefaultLibraryWithBundle_error";
        break;
      case 2338:
        result = "kDYFEMTLTexture_formattedDescription";
        break;
      case 2339:
        result = "kDYFEMTLDevice_minLinearTextureAlignmentForPixelFormat";
        break;
      case 2340:
        result = "kDYFEMTLComputePipelineState_getComputeKernelTelemetryID";
        break;
      case 2341:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithTileDescriptor_error";
        break;
      case 2342:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithTileDescriptor_options_reflection_error";
        break;
      case 2343:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithTileDescriptor_completionHandler";
        break;
      case 2344:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler";
        break;
      case 2345:
        result = "kDYFEMTLRenderCommandEncoder_setTileBuffers_offsets_withRange";
        break;
      case 2346:
        result = "kDYFEMTLRenderCommandEncoder_setTileTextures_withRange";
        break;
      case 2347:
        result = "kDYFEMTLRenderCommandEncoder_setTileSamplerStates_withRange";
        break;
      case 2348:
        result = "kDYFEMTLRenderCommandEncoder_setTileSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 2349:
        result = "kDYFEMTLLibrary_setOverrideTriple";
        break;
      case 2350:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_error";
        break;
      case 2351:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler";
        break;
      case 2352:
        result = "kDYFEMTLRenderCommandEncoder_setThreadgroupMemoryLength_atIndex";
        break;
      case 2353:
        result = "kDYFEMTLComputeCommandEncoder_dispatchThreadsWithIndirectBuffer_indirectBufferOffset";
        break;
      case 2354:
        result = "kDYFEMTLComputeCommandEncoder_dispatchThreads_threadsPerThreadgroup";
        break;
      case 2355:
        result = "kDYFEMTLRenderCommandEncoder_setViewports_count";
        break;
      case 2356:
        result = "kDYFEMTLRenderCommandEncoder_setScissorRects_count";
        break;
      case 2357:
        result = "kDYFEMTLDevice_newPipelineLibraryWithFilePath_error";
        break;
      case 2358:
        result = "kDYFEMTLRenderCommandEncoder_setThreadgroupMemoryLength_offset_atIndex";
        break;
      case 2359:
        result = "kDYFEMTLCaptureScope_setLabel";
        break;
      case 2360:
        result = "kDYFEMTLCaptureScope_dealloc";
        break;
      case 2361:
        result = "kDYFEMTLCaptureScope_beginScope";
        break;
      case 2362:
        result = "kDYFEMTLCaptureScope_endScope";
        break;
      case 2363:
        result = "kDYFEMTLCaptureManager_startCaptureWithDevice";
        break;
      case 2364:
        result = "kDYFEMTLCaptureManager_startCaptureWithCommandQueue";
        break;
      case 2365:
        result = "kDYFEMTLCaptureManager_stopCapture";
        break;
      case 2366:
        result = "kDYFEMTLDevice_startCollectingPipelineDescriptors";
        break;
      case 2367:
        result = "kDYFEMTLCommandBuffer_pushDebugGroup";
        break;
      case 2368:
        result = "kDYFEMTLCommandBuffer_popDebugGroup";
        break;
      case 2369:
        result = "kDYFEMTLArgumentEncoder_setLabel";
        break;
      case 2370:
        result = "kDYFEMTLArgumentEncoder_dealloc";
        break;
      case 2371:
        result = "kDYFEMTLArgumentEncoder_setArgumentBuffer_offset";
        break;
      case 2372:
        result = "kDYFEMTLArgumentEncoder_setBuffer_offset_atIndex";
        break;
      case 2373:
        result = "kDYFEMTLArgumentEncoder_setBuffers_offsets_withRange";
        break;
      case 2374:
        result = "kDYFEMTLArgumentEncoder_setTexture_atIndex";
        break;
      case 2375:
        result = "kDYFEMTLArgumentEncoder_setTextures_withRange";
        break;
      case 2376:
        result = "kDYFEMTLArgumentEncoder_setSamplerState_atIndex";
        break;
      case 2377:
        result = "kDYFEMTLArgumentEncoder_setSamplerStates_withRange";
        break;
      case 2378:
        result = "kDYFEMTLArgumentEncoder_constantDataAtIndex";
        break;
      case 2379:
        result = "kDYFEMTLArgumentEncoder_newArgumentEncoderForBufferAtIndex";
        break;
      case 2380:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex";
        break;
      case 2381:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_reflection";
        break;
      case 2382:
        result = "kDYFEMTLDevice_newArgumentEncoderWithArguments_count";
        break;
      case 2383:
        result = "kDYFEMTLDevice_newArgumentBufferLayoutWithStructType";
        break;
      case 2384:
        result = "kDYFEMTLDevice_newArgumentEncoderWithLayout";
        break;
      case 2385:
        result = "kDYFEMTLComputeCommandEncoder_useResource_usage";
        break;
      case 2386:
        result = "kDYFEMTLComputeCommandEncoder_useResources_count_usage";
        break;
      case 2387:
        result = "kDYFEMTLComputeCommandEncoder_useHeap";
        break;
      case 2388:
        result = "kDYFEMTLComputeCommandEncoder_useHeaps_count";
        break;
      case 2389:
        result = "kDYFEMTLRenderCommandEncoder_useResource_usage";
        break;
      case 2390:
        result = "kDYFEMTLRenderCommandEncoder_useResources_count_usage";
        break;
      case 2391:
        result = "kDYFEMTLRenderCommandEncoder_useHeap";
        break;
      case 2392:
        result = "kDYFEMTLRenderCommandEncoder_useHeaps_count";
        break;
      case 2393:
        result = "kDYFEMTLDevice_newLibraryWithURL_error";
        break;
      case 2394:
        result = "kDYFEMTLLibrary_newExternFunctionWithName";
        break;
      case 2395:
        result = "kDYFEMTLDevice_newArgumentEncoderWithArguments";
        break;
      case 2396:
        result = "kDYFEMTLDevice_indirectArgumentBufferDecodingData";
        break;
      case 2397:
        result = "kDYFEMTLDevice_setIndirectArgumentBufferDecodingData";
        break;
      case 2398:
        result = "kDYFEMTLCaptureManager_notifySubmissionForEyeSPI_iosurface_bounds_submitFlags";
        break;
      case 2399:
        result = "kDYFEMTLArgumentEncoder_setArgumentBuffer_startOffset_arrayElement";
        break;
      case 2400:
        result = "kDYFEMTLTextureLayout_initializeTextureMemory";
        break;
      case 2401:
        result = "kDYFEMTLDevice_newTiledTextureWithBytesNoCopy_length_descriptor_offset_bytesPerRow";
        break;
      case 2402:
        result = "kDYFEMTLDevice_newTiledTextureWithBytesNoCopy_length_deallocator_descriptor_offset_bytesPerRow";
        break;
      case 2403:
        result = "kDYFEMTLDevice_newLibraryWithCIFilters_imageFilterFunctionInfo_error";
        break;
      case 2404:
        result = "kDYFEMTLParallelRenderCommandEncoder_setColorStoreActionOptions_atIndex";
        break;
      case 2405:
        result = "kDYFEMTLParallelRenderCommandEncoder_setDepthStoreActionOptions";
        break;
      case 2406:
        result = "kDYFEMTLParallelRenderCommandEncoder_setStencilStoreActionOptions";
        break;
      case 2407:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setColorStoreActionOptions_atIndex";
        break;
      case 2408:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setDepthStoreActionOptions";
        break;
      case 2409:
        result = "kDYFEMTLFragmentRenderCommandEncoder_setStencilStoreActionOptions";
        break;
      case 2410:
        result = "kDYFEMTLRenderCommandEncoder_setColorStoreActionOptions_atIndex";
        break;
      case 2411:
        result = "kDYFEMTLRenderCommandEncoder_setDepthStoreActionOptions";
        break;
      case 2412:
        result = "kDYFEMTLRenderCommandEncoder_setStencilStoreActionOptions";
        break;
      case 2413:
        result = "kDYFEMTLCaptureManager_notifyPostPresentHandoffSPI";
        break;
      case 2414:
        result = "kDYFEMTLDevice_newLibraryWithCIFiltersForComputePipeline_imageFilterFunctionInfo_error";
        break;
      case 2415:
        result = "kDYFEMTLComputeCommandEncoder_setStageInRegionWithIndirectBuffer_indirectBufferOffset";
        break;
      case 2416:
        result = "kDYFEMTLDevice_newIndirectRenderCommandEncoderWithBuffer";
        break;
      case 2417:
        result = "kDYFEMTLDevice_newIndirectComputeCommandEncoderWithBuffer";
        break;
      case 2418:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoderWithDispatchType";
        break;
      case 2419:
        result = "kDYFEMTLCommandBuffer_videoCommandEncoder";
        break;
      case 2420:
        result = "kDYFEMTLCommandBuffer_doCorruptCBSPI";
        break;
      case 2421:
        result = "kDYFEMTLComputeCommandEncoder_useComputePipelineState";
        break;
      case 2422:
        result = "kDYFEMTLComputeCommandEncoder_useComputePipelineStates_count";
        break;
      case 2423:
        result = "kDYFEMTLComputeCommandEncoder_memoryBarrierWithScope";
        break;
      case 2424:
        result = "kDYFEMTLComputeCommandEncoder_memoryBarrierWithResources_count";
        break;
      case 2425:
        result = "kDYFEMTLRenderCommandEncoder_useRenderPipelineState";
        break;
      case 2426:
        result = "kDYFEMTLRenderCommandEncoder_useRenderPipelineStates_count";
        break;
      case 2427:
        result = "kDYFEMTLRenderCommandEncoder_executeCommandsInBuffer_startIndex";
        break;
      case 2428:
        result = "kDYFEMTLRenderCommandEncoder_memoryBarrierWithScope_afterStages_beforeStages";
        break;
      case 2429:
        result = "kDYFEMTLRenderCommandEncoder_memoryBarrierWithResources_count_afterStages_beforeStages";
        break;
      case 2430:
        result = "kDYFEMTLArgumentEncoder_setRenderPipelineState_atIndex";
        break;
      case 2431:
        result = "kDYFEMTLArgumentEncoder_setRenderPipelineStates_withRange";
        break;
      case 2432:
        result = "kDYFEMTLArgumentEncoder_setComputePipelineState_atIndex";
        break;
      case 2433:
        result = "kDYFEMTLArgumentEncoder_setComputePipelineStates_withRange";
        break;
      case 2434:
        result = "kDYFEMTLDevice_minimumTextureBufferAlignmentForPixelFormat";
        break;
      case 2435:
        result = "kDYFEMTLDevice_newEvent";
        break;
      case 2436:
        result = "kDYFEMTLDevice_newSharedEvent";
        break;
      case 2437:
        result = "kDYFEMTLBlitCommandEncoder_optimizeContentsForGPUAccess";
        break;
      case 2438:
        result = "kDYFEMTLBlitCommandEncoder_optimizeContentsForGPUAccess_slice_level";
        break;
      case 2439:
        result = "kDYFEMTLBlitCommandEncoder_optimizeContentsForCPUAccess";
        break;
      case 2440:
        result = "kDYFEMTLBlitCommandEncoder_optimizeContentsForCPUAccess_slice_level";
        break;
      case 2441:
        result = "kDYFEMTLCommandBuffer_encodeWaitForEvent_value";
        break;
      case 2442:
        result = "kDYFEMTLCommandBuffer_encodeSignalEvent_value";
        break;
      case 2443:
        result = "kDYFEMTLComputePipelineState_resourceIndex";
        break;
      case 2444:
        result = "kDYFEMTLRenderCommandEncoder_setPointSize";
        break;
      case 2445:
        result = "kDYFEMTLRenderCommandEncoder_setClipPlane_p2_p3_p4_atIndex";
        break;
      case 2446:
        result = "kDYFEMTLRenderCommandEncoder_setVertexSamplerState_lodMinClamp_lodMaxClamp_lodBias_atIndex";
        break;
      case 2447:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentSamplerState_lodMinClamp_lodMaxClamp_lodBias_atIndex";
        break;
      case 2448:
        result = "kDYFEMTLRenderCommandEncoder_setPrimitiveRestartEnabled_index";
        break;
      case 2449:
        result = "kDYFEMTLSamplerState_resourceIndex";
        break;
      case 2450:
        result = "kDYFEMTLSharedTextureHandle_dealloc";
        break;
      case 2451:
        result = "kDYFEMTLTexture_newSharedHandle";
        break;
      case 2452:
        result = "kDYFEMTLDevice_newSharedTextureWithDescriptor";
        break;
      case 2453:
        result = "kDYFEMTLDevice_newSharedTextureWithHandle";
        break;
      case 2454:
        result = "kDYFEMTLDevice_tileSizeWithTextureType_pixelFormat_sampleCount";
        break;
      case 2455:
        result = "kDYFEMTLBlitCommandEncoder_getTextureAccessCounters_region_mipLevel_slice_resetCounters_countersBuffer_countersBufferOffset";
        break;
      case 2456:
        result = "kDYFEMTLBlitCommandEncoder_resetTextureAccessCounters_region_mipLevel_slice";
        break;
      case 2457:
        result = "kDYFEMTLSharedEvent_setSignaledValue";
        break;
      case 2458:
        result = "kDYFEMTLSharedEvent_setLabel";
        break;
      case 2459:
        result = "kDYFEMTLSharedEvent_dealloc";
        break;
      case 2460:
        result = "kDYFEMTLDevice_newIndirectCommandBufferWithDescriptor_maxCount_options";
        break;
      case 2461:
        result = "kDYFEMTLDevice_reserveResourceIndicesForResourceType_indices_indexCount";
        break;
      case 2462:
        result = "kDYFEMTLRenderCommandEncoder_setPrimitiveRestartEnabled";
        break;
      case 2463:
        result = "kDYFEMTLDevice_newIndirectCommandBufferWithDescriptor_maxCommandCount_options";
        break;
      case 2464:
        result = "kDYFEMTLDevice_getIndirectCommandBufferHeaderSize";
        break;
      case 2465:
        result = "kDYFEMTLCommandBuffer_addPurgedResource";
        break;
      case 2466:
        result = "kDYFEMTLCommandBuffer_addPurgedHeap";
        break;
      case 2467:
        result = "kDYFEMTLComputeCommandEncoder_executeCommandsInBuffer_startIndex";
        break;
      case 2468:
        result = "kDYFEMTLComputeCommandEncoder_executeCommandsInBuffer_withRange";
        break;
      case 2469:
        result = "kDYFEMTLComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset";
        break;
      case 2470:
        result = "kDYFEMTLRenderCommandEncoder_executeCommandsInBuffer_withRange";
        break;
      case 2471:
        result = "kDYFEMTLRenderCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset";
        break;
      case 2472:
        result = "kDYFEMTLBlitCommandEncoder_resetCommandsInBuffer_withRange";
        break;
      case 2473:
        result = "kDYFEMTLBlitCommandEncoder_copyIndirectCommandBuffer_sourceRange_destination_destinationIndex";
        break;
      case 2474:
        result = "kDYFEMTLBlitCommandEncoder_optimizeIndirectCommandBuffer_withRange";
        break;
      case 2475:
        result = "kDYFEMTLIndirectRenderCommand_dealloc";
        break;
      case 2476:
        result = "kDYFEMTLIndirectRenderCommand_setRenderPipelineState";
        break;
      case 2477:
        result = "kDYFEMTLIndirectRenderCommand_setVertexBuffer_offset_atIndex";
        break;
      case 2478:
        result = "kDYFEMTLIndirectRenderCommand_setFragmentBuffer_offset_atIndex";
        break;
      case 2479:
        result = "kDYFEMTLIndirectRenderCommand_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride_tessellationFactorBufferScale";
        break;
      case 2480:
        result = "kDYFEMTLIndirectRenderCommand_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride";
        break;
      case 2481:
        result = "kDYFEMTLIndirectRenderCommand_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride_tessellationFactorBufferScale";
        break;
      case 2482:
        result = "kDYFEMTLIndirectRenderCommand_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride";
        break;
      case 2483:
        result = "kDYFEMTLIndirectRenderCommand_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance";
        break;
      case 2484:
        result = "kDYFEMTLIndirectRenderCommand_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance";
        break;
      case 2485:
        result = "kDYFEMTLIndirectRenderCommand_nop";
        break;
      case 2486:
        result = "kDYFEMTLIndirectRenderCommand_end";
        break;
      case 2487:
        result = "kDYFEMTLIndirectRenderCommand_setTessellationFactorBuffer_offset_instanceStride";
        break;
      case 2488:
        result = "kDYFEMTLIndirectRenderCommand_setTessellationFactorScale";
        break;
      case 2489:
        result = "kDYFEMTLIndirectRenderCommand_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance";
        break;
      case 2490:
        result = "kDYFEMTLIndirectRenderCommand_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance";
        break;
      case 2491:
        result = "kDYFEMTLIndirectRenderCommand_dispatchThreadsPerTile";
        break;
      case 2492:
        result = "kDYFEMTLIndirectRenderCommand_setVertexArgument_offset_atIndex";
        break;
      case 2493:
        result = "kDYFEMTLIndirectRenderCommand_setFragmentArgument_offset_atIndex";
        break;
      case 2494:
        result = "kDYFEMTLIndirectRenderCommand_setTileArgument_offset_atIndex";
        break;
      case 2495:
        result = "kDYFEMTLIndirectRenderCommand_setThreadgroupMemoryLength_offset_atIndex";
        break;
      case 2496:
        result = "kDYFEMTLIndirectRenderCommand_endIndirectCommandBuffer";
        break;
      case 2497:
        result = "kDYFEMTLIndirectComputeCommand_dealloc";
        break;
      case 2498:
        result = "kDYFEMTLIndirectComputeCommand_setComputePipelineState";
        break;
      case 2499:
        result = "kDYFEMTLIndirectComputeCommand_setKernelBuffer_offset_atIndex";
        break;
      case 2500:
        result = "kDYFEMTLIndirectComputeCommand_dispatchThreadgroups_threadsPerThreadgroup";
        break;
      case 2501:
        result = "kDYFEMTLIndirectComputeCommand_concurrentDispatchThreadgroups_threadsPerThreadgroup";
        break;
      case 2502:
        result = "kDYFEMTLIndirectComputeCommand_nop";
        break;
      case 2503:
        result = "kDYFEMTLIndirectComputeCommand_endIndirectCommandBuffer";
        break;
      case 2504:
        result = "kDYFEMTLIndirectComputeCommand_setKernelArgument_offset_atIndex";
        break;
      case 2505:
        result = "kDYFEMTLIndirectComputeCommand_setThreadgroupMemoryLength_atIndex";
        break;
      case 2506:
        result = "kDYFEMTLIndirectComputeCommand_setStageInRegion";
        break;
      case 2507:
        result = "kDYFEMTLIndirectCommandBuffer_setLabel";
        break;
      case 2508:
        result = "kDYFEMTLIndirectCommandBuffer_setResponsibleProcess";
        break;
      case 2509:
        result = "kDYFEMTLIndirectCommandBuffer_dealloc";
        break;
      case 2510:
        result = "kDYFEMTLIndirectCommandBuffer_indirectRenderCommandAtIndex";
        break;
      case 2511:
        result = "kDYFEMTLIndirectCommandBuffer_indirectComputeCommandAtIndex";
        break;
      case 2512:
        result = "kDYFEMTLIndirectCommandBuffer_setPurgeableState";
        break;
      case 2513:
        result = "kDYFEMTLIndirectCommandBuffer_makeAliasable";
        break;
      case 2514:
        result = "kDYFEMTLIndirectCommandBuffer_isAliasable";
        break;
      case 2515:
        result = "kDYFEMTLIndirectCommandBuffer_isPurgeable";
        break;
      case 2516:
        result = "kDYFEMTLArgumentEncoder_setIndirectCommandBuffer_atIndex";
        break;
      case 2517:
        result = "kDYFEMTLArgumentEncoder_setIndirectCommandBuffers_withRange";
        break;
      case 2518:
        result = "kDYFEMTLBuffer_newRemoteBufferViewForDevice";
        break;
      case 2519:
        result = "kDYFEMTLTexture_newRemoteTextureViewForDevice";
        break;
      case 2520:
        result = "kDYFEMTLDevice_newSharedEventWithMachPort";
        break;
      case 2521:
        result = "kDYFEMTLSharedEvent_eventPort";
        break;
      case 2522:
        result = "kDYFEMTLTexture_newSharedTextureHandle";
        break;
      case 2523:
        result = "kDYFEMTLDevice_newSharedEventWithHandle";
        break;
      case 2524:
        result = "kDYFEMTLCommandBuffer_commitAndWaitUntilSubmitted";
        break;
      case 2525:
        result = "kDYFEMTLSharedEvent_newSharedEventHandle";
        break;
      case 2526:
        result = "kDYFEMTLIndirectRenderCommand_reset";
        break;
      case 2527:
        result = "kDYFEMTLIndirectComputeCommand_reset";
        break;
      case 2528:
        result = "kDYFEMTLBuffer_containsResource";
        break;
      case 2529:
        result = "kDYFEMTLTexture_containsResource";
        break;
      case 2530:
        result = "kDYFEMTLDevice_supportsPrimitiveType";
        break;
      case 2531:
        result = "kDYFEMTLDevice_startCollectingPipelineDescriptorsUsingPrefixForNames";
        break;
      case 2532:
        result = "kDYFEMTLDevice_newResourceGroupFromResources_count";
        break;
      case 2533:
        result = "kDYFEMTLCommandBuffer_sampledComputeCommandEncoderWithDispatchType_programInfoBuffer_capacity";
        break;
      case 2534:
        result = "kDYFEMTLCommandBuffer_setResourceGroups_count";
        break;
      case 2535:
        result = "kDYFEMTLCommandBuffer_dropResourceGroups_count";
        break;
      case 2536:
        result = "kDYFEMTLIndirectCommandBuffer_resetWithRange";
        break;
      case 2537:
        result = "kDYFEMTLIndirectCommandBuffer_containsResource";
        break;
      case 2538:
        result = "kDYFEMTLTexture_isShareable";
        break;
      case 2539:
        result = "kDYFEMTLMotionEstimationPipeline_dealloc";
        break;
      case 2540:
        result = "kDYFEMTLDevice_motionEstimatorCapabilities";
        break;
      case 2541:
        result = "kDYFEMTLDevice_newMotionEstimationPipelineWithDescriptor";
        break;
      case 2542:
        result = "kDYFEMTLVideoCommandEncoder_setLabel";
        break;
      case 2543:
        result = "kDYFEMTLVideoCommandEncoder_dealloc";
        break;
      case 2544:
        result = "kDYFEMTLVideoCommandEncoder_setMotionEstimationPipeline";
        break;
      case 2545:
        result = "kDYFEMTLVideoCommandEncoder_generateMotionVectorsForTexture_previousTexture_resultBuffer_bufferOffset";
        break;
      case 2546:
        result = "kDYFEMTLVideoCommandEncoder_waitForFence";
        break;
      case 2547:
        result = "kDYFEMTLVideoCommandEncoder_updateFence";
        break;
      case 2548:
        result = "kDYFEMTLVideoCommandEncoder_endEncoding";
        break;
      case 2549:
        result = "kDYFEMTLVideoCommandEncoder_insertDebugSignpost";
        break;
      case 2550:
        result = "kDYFEMTLVideoCommandEncoder_pushDebugGroup";
        break;
      case 2551:
        result = "kDYFEMTLVideoCommandEncoder_popDebugGroup";
        break;
      case 2552:
        result = "kDYFEMTLEvent_setLabel";
        break;
      case 2553:
        result = "kDYFEMTLEvent_dealloc";
        break;
      case 2554:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount";
        break;
      case 2555:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTexture_toTexture";
        break;
      case 2556:
        result = "kDYFEMTLBlitCommandEncoder_resolveCountersWithIndexRange_sampleBuffer_resolvedBuffer";
        break;
      case 2557:
        result = "kDYFEMTLBlitCommandEncoder_sampleCountersInBuffer_atIndex_allowOverlap";
        break;
      case 2558:
        result = "kDYFEMTLBuffer_setResourceIndex";
        break;
      case 2559:
        result = "kDYFEMTLCommandBuffer_debugBufferContentsWithLength";
        break;
      case 2560:
        result = "kDYFEMTLCommandBuffer_encodeCacheControlFinalizeOperation_resourceGroups_count";
        break;
      case 2561:
        result = "kDYFEMTLCommandBuffer_encodeCacheControlTagOperation_resourceGroups_count";
        break;
      case 2562:
        result = "kDYFEMTLCommandBuffer_resourceStateCommandEncoder";
        break;
      case 2563:
        result = "kDYFEMTLComputeCommandEncoder_sampleCountersInBuffer_atIndex_allowOverlap";
        break;
      case 2564:
        result = "kDYFEMTLComputePipelineState_setResourceIndex";
        break;
      case 2565:
        result = "kDYFEMTLCounterSampleBuffer_dealloc";
        break;
      case 2566:
        result = "kDYFEMTLDeserializationContext_dealloc";
        break;
      case 2567:
        result = "kDYFEMTLDeserializationContext_functionWithFunctionRef";
        break;
      case 2568:
        result = "kDYFEMTLDevice_setCurrentUtilityBufferIndex";
        break;
      case 2569:
        result = "kDYFEMTLDevice_setResourceIndirectionEnabled";
        break;
      case 2570:
        result = "kDYFEMTLDevice_setUtilityBuffers";
        break;
      case 2571:
        result = "kDYFEMTLDevice_addBufferToGlobalResourceTable";
        break;
      case 2572:
        result = "kDYFEMTLDevice_addComputePipelineStateToGlobalResourceTable";
        break;
      case 2573:
        result = "kDYFEMTLDevice_addIndirectCommandBufferToGlobalResourceTable";
        break;
      case 2574:
        result = "kDYFEMTLDevice_addRenderPipelineStateToGlobalResourceTable";
        break;
      case 2575:
        result = "kDYFEMTLDevice_addSamplerStateToGlobalResourceTable";
        break;
      case 2576:
        result = "kDYFEMTLDevice_addTextureToGlobalResourceTable";
        break;
      case 2577:
        result = "kDYFEMTLDevice_allowLibrariesFromOtherPlatforms";
        break;
      case 2578:
        result = "kDYFEMTLDevice_createNewUtilityBuffer";
        break;
      case 2579:
        result = "kDYFEMTLDevice_describeCounter";
        break;
      case 2580:
        result = "kDYFEMTLDevice_indirectBufferAddressForResourceIndex_offset";
        break;
      case 2581:
        result = "kDYFEMTLDevice_newBufferWithBytes_length_options_atResourceIndex";
        break;
      case 2582:
        result = "kDYFEMTLDevice_newBufferWithBytesNoCopy_length_options_atResourceIndex_deallocator";
        break;
      case 2583:
        result = "kDYFEMTLDevice_newBufferWithLength_options_atResourceIndex";
        break;
      case 2584:
        result = "kDYFEMTLDevice_newCounterSampleBufferWithDescriptor_error";
        break;
      case 2585:
        result = "kDYFEMTLDevice_newLibraryWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error";
        break;
      case 2586:
        result = "kDYFEMTLDevice_newRasterizationRateMapWithScreenSize_layerCount_layers";
        break;
      case 2587:
        result = "kDYFEMTLDevice_newRenderPipelineDescriptorWithSerializedData_deserializationContext";
        break;
      case 2588:
        result = "kDYFEMTLDevice_offsetFromIndirectBufferAddress";
        break;
      case 2589:
        result = "kDYFEMTLDevice_pollSampleBuffer_resolvedBuffer";
        break;
      case 2590:
        result = "kDYFEMTLDevice_removeResourceFromGlobalResourceTable_resourceType";
        break;
      case 2591:
        result = "kDYFEMTLDevice_requiresIndirectionForAllResourceTypes";
        break;
      case 2592:
        result = "kDYFEMTLDevice_resolveCountersWithIndexRange_sampleBuffer";
        break;
      case 2593:
        result = "kDYFEMTLDevice_resourceIndexFromIndirectBufferAddress";
        break;
      case 2594:
        result = "kDYFEMTLDevice_sampleCountersAtInterval_sampleBuffer_error";
        break;
      case 2595:
        result = "kDYFEMTLDevice_sampleTimeStamps_gpuTimeStamp";
        break;
      case 2596:
        result = "kDYFEMTLDevice_serializeRenderPipelineDescriptor";
        break;
      case 2597:
        result = "kDYFEMTLDevice_setGPUAssertionsEnabled";
        break;
      case 2598:
        result = "kDYFEMTLDevice_setResourcesPurgeableState_newState_oldState_count";
        break;
      case 2599:
        result = "kDYFEMTLDevice_useDeviceResourceTableForType";
        break;
      case 2600:
        result = "kDYFEMTLDevice_utilityBufferForComputeCommandEncoder";
        break;
      case 2601:
        result = "kDYFEMTLDevice_utilityBufferForRenderCommandEncoder";
        break;
      case 2602:
        result = "kDYFEMTLFunction_newFunctionWithPluginData_bitcodeType";
        break;
      case 2603:
        result = "kDYFEMTLHeap_newBufferWithLength_options_atOffset";
        break;
      case 2604:
        result = "kDYFEMTLHeap_newTextureWithDescriptor_atOffset";
        break;
      case 2605:
        result = "kDYFEMTLIndirectComputeCommand_clearBarrier";
        break;
      case 2606:
        result = "kDYFEMTLIndirectComputeCommand_concurrentDispatchThreads_threadsPerThreadgroup";
        break;
      case 2607:
        result = "kDYFEMTLIndirectComputeCommand_setBarrier";
        break;
      case 2608:
        result = "kDYFEMTLIndirectComputeCommand_setImageBlockWidth_height";
        break;
      case 2609:
        result = "kDYFEMTLRenderCommandEncoder_sampleCountersInBuffer_atIndex_allowOverlap";
        break;
      case 2610:
        result = "kDYFEMTLRenderCommandEncoder_setVertexAmplificationCount_viewMappings";
        break;
      case 2611:
        result = "kDYFEMTLRenderCommandEncoder_useHeap_stages";
        break;
      case 2612:
        result = "kDYFEMTLRenderCommandEncoder_useHeaps_count_stages";
        break;
      case 2613:
        result = "kDYFEMTLRenderCommandEncoder_useResource_usage_stages";
        break;
      case 2614:
        result = "kDYFEMTLRenderCommandEncoder_useResources_count_usage_stages";
        break;
      case 2615:
        result = "kDYFEMTLRenderPipelineState_setResourceIndex";
        break;
      case 2616:
        result = "kDYFEMTLSamplerState_setResourceIndex";
        break;
      case 2617:
        result = "kDYFEMTLTexture_setResourceIndex";
        break;
      case 2618:
        result = "kDYFEMTLDevice_newComputePipelineDescriptorWithSerializedData_deserializationContext";
        break;
      case 2619:
        result = "kDYFEMTLDevice_serializeComputePipelineDescriptor";
        break;
      case 2620:
        result = "kDYFEMTLRenderCommandEncoder_setVertexAmplificationMode_value";
        break;
      case 2621:
        result = "kDYFEMTLCommandQueue_getBackgroundGPUPriority";
        break;
      case 2622:
        result = "kDYFEMTLCommandQueue_getGPUPriority";
        break;
      case 2623:
        result = "kDYFEMTLCommandQueue_setBackgroundGPUPriority";
        break;
      case 2624:
        result = "kDYFEMTLCommandQueue_setBackgroundGPUPriority_offset";
        break;
      case 2625:
        result = "kDYFEMTLCommandQueue_setCompletionQueue";
        break;
      case 2626:
        result = "kDYFEMTLCommandQueue_setGPUPriority";
        break;
      case 2627:
        result = "kDYFEMTLCommandQueue_setGPUPriority_offset";
        break;
      case 2628:
        result = "kDYFEMTLCommandQueue_setSubmissionQueue";
        break;
      case 2629:
        result = "kDYFEMTLRasterizationRateMap_copyParameterDataToBuffer_atOffset";
        break;
      case 2630:
        result = "kDYFEMTLBlitCommandEncoder_updateTextureMapping_mode_indirectBuffer_indirectBufferOffset";
        break;
      case 2631:
        result = "kDYFEMTLRasterizationRateMap_dealloc";
        break;
      case 2632:
        result = "kDYFEMTLBlitCommandEncoder_updateTextureMapping_mode_region_mipLevel_slice";
        break;
      case 2633:
        result = "kDYFEMTLRasterizationRateMap_physicalCoordinate_forLayer";
        break;
      case 2634:
        result = "kDYFEMTLBlitCommandEncoder_updateTextureMappings_mode_regions_mipLevels_slices_numRegions";
        break;
      case 2635:
        result = "kDYFEMTLRasterizationRateMap_physicalSizeForLayer";
        break;
      case 2636:
        result = "kDYFEMTLDevice_tileSizeWithSparsePageSize_textureType_pixelFormat_sampleCount";
        break;
      case 2637:
        result = "kDYFEMTLRasterizationRateMap_screenCoordinate_forLayer";
        break;
      case 2638:
        result = "kDYFEMTLResourceStateCommandEncoder_setLabel";
        break;
      case 2639:
        result = "kDYFEMTLDevice_newRasterizationRateMapWithDescriptor";
        break;
      case 2640:
        result = "kDYFEMTLResourceStateCommandEncoder_copyMappingStateFromTexture_mipLevel_slice_toBuffer_offset_numTiles";
        break;
      case 2641:
        result = "kDYFEMTLDevice_supportsRasterizationRateMapWithLayerCount";
        break;
      case 2642:
        result = "kDYFEMTLResourceStateCommandEncoder_dealloc";
        break;
      case 2643:
        result = "kDYFEMTLResourceStateCommandEncoder_endEncoding";
        break;
      case 2644:
        result = "kDYFEMTLResourceStateCommandEncoder_insertDebugSignpost";
        break;
      case 2645:
        result = "kDYFEMTLResourceStateCommandEncoder_popDebugGroup";
        break;
      case 2646:
        result = "kDYFEMTLResourceStateCommandEncoder_pushDebugGroup";
        break;
      case 2647:
        result = "kDYFEMTLResourceStateCommandEncoder_updateFence";
        break;
      case 2648:
        result = "kDYFEMTLResourceStateCommandEncoder_updateTextureMapping_mode_indirectBuffer_indirectBufferOffset";
        break;
      case 2649:
        result = "kDYFEMTLResourceStateCommandEncoder_updateTextureMapping_mode_region_mipLevel_slice";
        break;
      case 2650:
        result = "kDYFEMTLResourceStateCommandEncoder_updateTextureMappings_mode_regions_mipLevels_slices_numRegions";
        break;
      case 2651:
        result = "kDYFEMTLResourceStateCommandEncoder_waitForFence";
        break;
      case 2652:
        result = "kDYFEMTLDevice_supportsFamily";
        break;
      case 2653:
        result = "kDYFEMTLDevice_supportsVersion";
        break;
      case 2654:
        result = "kDYFEMTLHeap_newBufferWithLength_options_offset";
        break;
      case 2655:
        result = "kDYFEMTLHeap_newTextureWithDescriptor_offset";
        break;
      case 2656:
        result = "kDYFEMTLRasterizationRateMap_copyParameterDataToBuffer_offset";
        break;
      case 2657:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle";
        break;
      case 2658:
        result = "kDYFEMTLDevice_newPrecompiledComputePipelineStateWithDescriptor_options_pipelineCache_completionHandler";
        break;
      case 2659:
        result = "kDYFEMTLIndirectComputeCommand_setImageblockWidth_height";
        break;
      case 2660:
        result = "kDYFEMTLLibrary_newFunctionWithName_constantValues_functionCache_error";
        break;
      case 2661:
        result = "kDYFEMTLRasterizationRateMap_mapPhysicalToScreenCoordinates_forLayer";
        break;
      case 2662:
        result = "kDYFEMTLRasterizationRateMap_mapScreenToPhysicalCoordinates_forLayer";
        break;
      case 2663:
        result = "kDYFEMTLResourceGroup_dealloc";
        break;
      case 2664:
        result = "kDYFEMTLBuffer_isComplete";
        break;
      case 2665:
        result = "kDYFEMTLBuffer_waitUntilComplete";
        break;
      case 2666:
        result = "kDYFEMTLIndirectCommandBuffer_doesAliasAllResources_count";
        break;
      case 2667:
        result = "kDYFEMTLIndirectCommandBuffer_doesAliasAnyResources_count";
        break;
      case 2668:
        result = "kDYFEMTLIndirectCommandBuffer_doesAliasResource";
        break;
      case 2669:
        result = "kDYFEMTLIndirectCommandBuffer_isComplete";
        break;
      case 2670:
        result = "kDYFEMTLIndirectCommandBuffer_waitUntilComplete";
        break;
      case 2671:
        result = "kDYFEMTLTexture_isComplete";
        break;
      case 2672:
        result = "kDYFEMTLTexture_waitUntilComplete";
        break;
      case 2673:
        result = "kDYFEMTLDevice_convertSparsePixelRegions_toTileRegions_withTileSize_alignmentMode_numRegions";
        break;
      case 2674:
        result = "kDYFEMTLDevice_convertSparseTileRegions_toPixelRegions_withTileSize_numRegions";
        break;
      case 2675:
        result = "kDYFEMTLDevice_supportsVertexAmplificationCount";
        break;
      case 2676:
        result = "kDYFEMTLBlitCommandEncoder_resolveCounters_inRange_destinationBuffer_destinationOffset";
        break;
      case 2677:
        result = "kDYFEMTLBlitCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier";
        break;
      case 2678:
        result = "kDYFEMTLComputeCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier";
        break;
      case 2679:
        result = "kDYFEMTLCounterSampleBuffer_resolveCounterRange";
        break;
      case 2680:
        result = "kDYFEMTLCounterSet_dealloc";
        break;
      case 2681:
        result = "kDYFEMTLDevice_sampleTimestamps_gpuTimestamp";
        break;
      case 2682:
        result = "kDYFEMTLRenderCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier";
        break;
      case 2683:
        result = "kDYFEMTLCommandBuffer_encodeWaitForEvent_value_timeout";
        break;
      case 2684:
        result = "kDYFEMTLCounter_dealloc";
        break;
      case 2685:
        result = "kDYFEMTLDevice_copyShaderCacheToPath";
        break;
      case 2686:
        result = "kDYFEMTLDevice_serializeStructType_version";
        break;
      case 2687:
        result = "kDYFEMTLPipelineCache_dealloc";
        break;
      case 2688:
        result = "kDYFEMTLPipelineLibrary_setDisableRunTimeCompilation";
        break;
      case 2689:
        result = "kDYFEMTLPipelineLibrary_setLabel";
        break;
      case 2690:
        result = "kDYFEMTLPipelineLibrary_dealloc";
        break;
      case 2691:
        result = "kDYFEMTLPipelineLibrary_newComputePipelineDescriptorWithName_error";
        break;
      case 2692:
        result = "kDYFEMTLPipelineLibrary_newComputePipelineStateWithName_options_reflection_error";
        break;
      case 2693:
        result = "kDYFEMTLPipelineLibrary_newRenderPipelineDescriptorWithName_error";
        break;
      case 2694:
        result = "kDYFEMTLPipelineLibrary_newRenderPipelineStateWithName_options_reflection_error";
        break;
      case 2695:
        result = "kDYFEMTLDevice_sparseTileSizeWithTextureType_pixelFormat_sampleCount";
        break;
      case 2696:
        result = "kDYFEMTLCaptureManager_startCaptureWithDescriptor_error";
        break;
      case 2697:
        result = "kDYFEMTLCaptureManager_startCaptureWithScope";
        break;
      case 2698:
        result = "kDYFEMTLCaptureManager_newCaptureScopeWithDevice";
        break;
      case 2699:
        result = "kDYFEMTLCaptureManager_newCaptureScopeWithCommandQueue";
        break;
      case 2700:
        result = "kDYFEMTLComputeCommandEncoder_enableNullBufferBinds";
        break;
      case 2701:
        result = "kDYFEMTLDevice_newFunctionWithGLIR_functionType";
        break;
      case 2702:
        result = "kDYFEMTLDevice_newFunctionWithGLIR_inputsDescription_functionType";
        break;
      case 2703:
        result = "kDYFEMTLRenderCommandEncoder_setAlphaTestReferenceValue";
        break;
      case 2704:
        result = "kDYFEMTLRenderCommandEncoder_setColorResolveTexture_slice_depthPlane_level_yInvert_atIndex";
        break;
      case 2705:
        result = "kDYFEMTLRenderCommandEncoder_setDepthCleared";
        break;
      case 2706:
        result = "kDYFEMTLRenderCommandEncoder_setDepthResolveTexture_slice_depthPlane_level_yInvert";
        break;
      case 2707:
        result = "kDYFEMTLRenderCommandEncoder_setProvokingVertexMode";
        break;
      case 2708:
        result = "kDYFEMTLRenderCommandEncoder_setStencilCleared";
        break;
      case 2709:
        result = "kDYFEMTLRenderCommandEncoder_setStencilResolveTexture_slice_depthPlane_level";
        break;
      case 2710:
        result = "kDYFEMTLRenderCommandEncoder_setStencilResolveTexture_slice_depthPlane_level_yInvert";
        break;
      case 2711:
        result = "kDYFEMTLRenderCommandEncoder_setTriangleFrontFillMode_backFillMode";
        break;
      case 2712:
        result = "kDYFEMTLRenderCommandEncoder_setViewportTransformEnabled";
        break;
      case 2713:
        result = "kDYFEMTLDevice_minLinearTextureBaseAddressAlignmentForDescriptor";
        break;
      case 2714:
        result = "kDYFEMTLDevice_minLinearTexturePitchAlignmentForDescriptor_mustMatchExactly";
        break;
      case 2715:
        result = "kDYFEMTLDevice_newBinaryArchiveWithDescriptor_error";
        break;
      case 2716:
        result = "kDYFEMTLDevice_requiredLinearTextureBytesPerRowForDescriptor";
        break;
      case 2717:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_pipelineLibrary";
        break;
      case 2718:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_reflection_pipelineLibrary";
        break;
      case 2719:
        result = "kDYFEMTLFunction_reflectionWithOptions_pipelineLibrary";
        break;
      case 2720:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoderWithDispatchType_substreamCount";
        break;
      case 2721:
        result = "kDYFEMTLComputeCommandEncoder_setSubstream";
        break;
      case 2722:
        result = "kDYFEMTLComputeCommandEncoder_signalProgress";
        break;
      case 2723:
        result = "kDYFEMTLComputeCommandEncoder_waitForProgress";
        break;
      case 2724:
        result = "kDYFEMTLDevice_maximumComputeSubstreams";
        break;
      case 2725:
        result = "kDYFEMTLDevice_newBufferWithBytes_length_options_gpuAddress";
        break;
      case 2726:
        result = "kDYFEMTLDevice_newBufferWithBytesNoCopy_length_options_gpuAddress_deallocator";
        break;
      case 2727:
        result = "kDYFEMTLDevice_newBufferWithLength_options_gpuAddress";
        break;
      case 2728:
        result = "kDYFEMTLDevice_reserveGPUAddressRange";
        break;
      case 2729:
        result = "kDYFEMTLCommandBuffer_addLoggingForType_handler";
        break;
      case 2730:
        result = "kDYFEMTLCommandBufferEncoderInfo_dealloc";
        break;
      case 2731:
        result = "kDYFEMTLCommandQueue_commandBufferWithDescriptor";
        break;
      case 2732:
        result = "kDYFEMTLComputePipelineState_functionPointerHandleWithFunction";
        break;
      case 2733:
        result = "kDYFEMTLComputePipelineState_functionPointerHandlesWithFunctions_range";
        break;
      case 2734:
        result = "kDYFEMTLDevice_setCommandBufferErrorOptions";
        break;
      case 2735:
        result = "kDYFEMTLDevice_newBinaryLibraryWithOptions_url_error";
        break;
      case 2736:
        result = "kDYFEMTLDevice_newDynamicLibrary_computeDescriptor_error";
        break;
      case 2737:
        result = "kDYFEMTLDevice_newDynamicLibrary_error";
        break;
      case 2738:
        result = "kDYFEMTLDevice_newDynamicLibraryFromURL_error";
        break;
      case 2739:
        result = "kDYFEMTLDevice_newLibraryWithDAG_functions_error";
        break;
      case 2740:
        result = "kDYFEMTLFunctionLog_dealloc";
        break;
      case 2741:
        result = "kDYFEMTLStackTraceEntry_dealloc";
        break;
      case 2742:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_resourceIndex";
        break;
      case 2743:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_resourceIndex";
        break;
      case 2744:
        result = "kDYFEMTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle_resourceIndex";
        break;
      case 2745:
        result = "kDYFEMTLBinaryArchive_addComputePipelineStateWithDescriptor_error";
        break;
      case 2746:
        result = "kDYFEMTLBinaryArchive_addLibrary_computePipelineDescriptor_error";
        break;
      case 2747:
        result = "kDYFEMTLBinaryArchive_dealloc";
        break;
      case 2748:
        result = "kDYFEMTLBinaryArchive_writeToURL_error";
        break;
      case 2749:
        result = "kDYFEMTLBinaryLibrary_setLabel";
        break;
      case 2750:
        result = "kDYFEMTLBinaryLibrary_addBinaryEntry";
        break;
      case 2751:
        result = "kDYFEMTLBinaryLibrary_addComputePipelineFunctionsWithDescriptor_error";
        break;
      case 2752:
        result = "kDYFEMTLBinaryLibrary_dealloc";
        break;
      case 2753:
        result = "kDYFEMTLBinaryLibrary_getBinaryDataWithKey";
        break;
      case 2754:
        result = "kDYFEMTLBinaryLibrary_removeComputePipelineFunctionsWithDescriptor_error";
        break;
      case 2755:
        result = "kDYFEMTLBinaryLibrary_serializeToURL_error";
        break;
      case 2756:
        result = "kDYFEMTLDynamicLibrary_setLabel";
        break;
      case 2757:
        result = "kDYFEMTLDynamicLibrary_dealloc";
        break;
      case 2758:
        result = "kDYFEMTLDynamicLibrary_serializeToURL_error";
        break;
      case 2759:
        result = "kDYFEMTLCommandBuffer_accelerationStructureCommandEncoder";
        break;
      case 2760:
        result = "kDYFEMTLDevice_accelerationStructureSizesWithDescriptor";
        break;
      case 2761:
        result = "kDYFEMTLDevice_loadDynamicLibrariesForComputeDescriptor_error";
        break;
      case 2762:
        result = "kDYFEMTLFunction_newArgumentEncoderWithBufferIndex_reflection_binaryArchives";
        break;
      case 2763:
        result = "kDYFEMTLFunction_reflectionWithOptions_binaryArchives";
        break;
      case 2764:
        result = "kDYFEMTLBinaryArchive_setLabel";
        break;
      case 2765:
        result = "kDYFEMTLBinaryArchive_addBinaryEntry_forKey";
        break;
      case 2766:
        result = "kDYFEMTLBinaryArchive_addComputePipelineFunctionsWithDescriptor_error";
        break;
      case 2767:
        result = "kDYFEMTLBinaryArchive_addRenderPipelineFunctionsWithDescriptor_error";
        break;
      case 2768:
        result = "kDYFEMTLBinaryArchive_addTileRenderPipelineFunctionsWithDescriptor_error";
        break;
      case 2769:
        result = "kDYFEMTLBinaryArchive_getBinaryDataForKey";
        break;
      case 2770:
        result = "kDYFEMTLBinaryArchive_serializeToURL_error";
        break;
      case 2771:
        result = "kDYFEMTLAccelerationStructure_setLabel";
        break;
      case 2772:
        result = "kDYFEMTLAccelerationStructure_setResponsibleProcess";
        break;
      case 2773:
        result = "kDYFEMTLAccelerationStructure_dealloc";
        break;
      case 2774:
        result = "kDYFEMTLAccelerationStructure_doesAliasAllResources_count";
        break;
      case 2775:
        result = "kDYFEMTLAccelerationStructure_doesAliasAnyResources_count";
        break;
      case 2776:
        result = "kDYFEMTLAccelerationStructure_doesAliasResource";
        break;
      case 2777:
        result = "kDYFEMTLAccelerationStructure_isAliasable";
        break;
      case 2778:
        result = "kDYFEMTLAccelerationStructure_isComplete";
        break;
      case 2779:
        result = "kDYFEMTLAccelerationStructure_isPurgeable";
        break;
      case 2780:
        result = "kDYFEMTLAccelerationStructure_isWriteComplete";
        break;
      case 2781:
        result = "kDYFEMTLAccelerationStructure_makeAliasable";
        break;
      case 2782:
        result = "kDYFEMTLAccelerationStructure_setPurgeableState";
        break;
      case 2783:
        result = "kDYFEMTLAccelerationStructure_waitUntilComplete";
        break;
      case 2784:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_setLabel";
        break;
      case 2785:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset";
        break;
      case 2786:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_copyAccelerationStructure_toAccelerationStructure";
        break;
      case 2787:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_copyAndCompactAccelerationStructure_toAccelerationStructure";
        break;
      case 2788:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_dealloc";
        break;
      case 2789:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeAccelerationStructure_fromBuffer_offset";
        break;
      case 2790:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_endEncoding";
        break;
      case 2791:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_insertDebugSignpost";
        break;
      case 2792:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_popDebugGroup";
        break;
      case 2793:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_pushDebugGroup";
        break;
      case 2794:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset";
        break;
      case 2795:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier";
        break;
      case 2796:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_serializeAccelerationStructure_toBuffer_offset";
        break;
      case 2797:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_updateFence";
        break;
      case 2798:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_useHeap";
        break;
      case 2799:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_useHeaps_count";
        break;
      case 2800:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_useResource_usage";
        break;
      case 2801:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_useResources_count_usage";
        break;
      case 2802:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_waitForFence";
        break;
      case 2803:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset";
        break;
      case 2804:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeSerializedAccelerationStructureSize_toBuffer_offset";
        break;
      case 2805:
        result = "kDYFEMTLArgumentEncoder_setAccelerationStructure_atIndex";
        break;
      case 2806:
        result = "kDYFEMTLArgumentEncoder_setFunctionTable_atIndex";
        break;
      case 2807:
        result = "kDYFEMTLArgumentEncoder_setFunctionTables_withRange";
        break;
      case 2808:
        result = "kDYFEMTLCommandQueue_getSPIStats";
        break;
      case 2809:
        result = "kDYFEMTLComputeCommandEncoder_setAccelerationStructure_atBufferIndex";
        break;
      case 2810:
        result = "kDYFEMTLComputeCommandEncoder_setFunctionTable_atIndex";
        break;
      case 2811:
        result = "kDYFEMTLComputeCommandEncoder_setFunctionTables_withRange";
        break;
      case 2812:
        result = "kDYFEMTLComputePipelineState_functionHandleWithFunction";
        break;
      case 2813:
        result = "kDYFEMTLComputePipelineState_functionHandlesWithFunctions";
        break;
      case 2814:
        result = "kDYFEMTLComputePipelineState_newComputePipelineStateWithAdditionalDynamicFunctions";
        break;
      case 2815:
        result = "kDYFEMTLDevice_compileVisibleFunction_withDescriptor_completionHandler";
        break;
      case 2816:
        result = "kDYFEMTLDevice_compileVisibleFunction_withDescriptor_error";
        break;
      case 2817:
        result = "kDYFEMTLDevice_newAccelerationStructureWithDescriptor";
        break;
      case 2818:
        result = "kDYFEMTLDevice_newAccelerationStructureWithSize";
        break;
      case 2819:
        result = "kDYFEMTLDevice_newDynamicLibraryWithURL_error";
        break;
      case 2820:
        result = "kDYFEMTLDevice_newVisibleFunctionTableWithDescriptor";
        break;
      case 2821:
        result = "kDYFEMTLDynamicLibrary_serializeToURL_options_error";
        break;
      case 2822:
        result = "kDYFEMTLFunctionHandle_dealloc";
        break;
      case 2823:
        result = "kDYFEMTLLibrary_newFunctionWithDescriptor_completionHandler";
        break;
      case 2824:
        result = "kDYFEMTLLibrary_newFunctionWithDescriptor_error";
        break;
      case 2825:
        result = "kDYFEMTLVisibleFunctionTable_setLabel";
        break;
      case 2826:
        result = "kDYFEMTLVisibleFunctionTable_setResponsibleProcess";
        break;
      case 2827:
        result = "kDYFEMTLVisibleFunctionTable_dealloc";
        break;
      case 2828:
        result = "kDYFEMTLVisibleFunctionTable_doesAliasAllResources_count";
        break;
      case 2829:
        result = "kDYFEMTLVisibleFunctionTable_doesAliasAnyResources_count";
        break;
      case 2830:
        result = "kDYFEMTLVisibleFunctionTable_doesAliasResource";
        break;
      case 2831:
        result = "kDYFEMTLVisibleFunctionTable_isAliasable";
        break;
      case 2832:
        result = "kDYFEMTLVisibleFunctionTable_isPurgeable";
        break;
      case 2833:
        result = "kDYFEMTLVisibleFunctionTable_makeAliasable";
        break;
      case 2834:
        result = "kDYFEMTLVisibleFunctionTable_setFunction_atIndex";
        break;
      case 2835:
        result = "kDYFEMTLVisibleFunctionTable_setFunctions_withRange";
        break;
      case 2836:
        result = "kDYFEMTLVisibleFunctionTable_setPurgeableState";
        break;
      case 2837:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeAccelerationStructure_fromBuffer_serializedBufferOffset";
        break;
      case 2838:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset";
        break;
      case 2839:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_serializeAccelerationStructure_toBuffer_serializedBufferOffset";
        break;
      case 2840:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeDeserializedAccelerationStructureSize_serializedOffset_toBuffer_sizeBufferOffset";
        break;
      case 2841:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeDeserializedPrimitiveAccelerationStructureSizes_serializedOffset_toBuffer_sizesBufferOffset";
        break;
      case 2842:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeGeometryOfAccelerationStructure_toBuffer_geometryBufferOffset";
        break;
      case 2843:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeGeometrySizeOfAccelerationStructure_toBuffer_sizeBufferOffset";
        break;
      case 2844:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeSerializedAccelerationStructureSize_toBuffer_sizeBufferOffset";
        break;
      case 2845:
        result = "kDYFEMTLCommandBuffer_blitCommandEncoderWithDescriptor";
        break;
      case 2846:
        result = "kDYFEMTLCommandBuffer_computeCommandEncoderWithDescriptor";
        break;
      case 2847:
        result = "kDYFEMTLCommandBuffer_resourceStateCommandEncoderWithDescriptor";
        break;
      case 2848:
        result = "kDYFEMTLCommandBuffer_sampledComputeCommandEncoderWithDescriptor_programInfoBuffer_capacity";
        break;
      case 2849:
        result = "kDYFEMTLComputeCommandEncoder_setIntersectionFunctionTable_atBufferIndex";
        break;
      case 2850:
        result = "kDYFEMTLComputeCommandEncoder_setIntersectionFunctionTables_withBufferRange";
        break;
      case 2851:
        result = "kDYFEMTLComputeCommandEncoder_setVisibleFunctionTable_atBufferIndex";
        break;
      case 2852:
        result = "kDYFEMTLComputeCommandEncoder_setVisibleFunctionTables_withBufferRange";
        break;
      case 2853:
        result = "kDYFEMTLComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions";
        break;
      case 2854:
        result = "kDYFEMTLComputePipelineState_newVisibleFunctionTableWithDescriptor";
        break;
      case 2855:
        result = "kDYFEMTLDevice_newIntersectionFunctionTableWithDescriptor";
        break;
      case 2856:
        result = "kDYFEMTLDevice_supportsCounterSampling";
        break;
      case 2857:
        result = "kDYFEMTLDevice_supportsTextureWriteFPRoundingMode";
        break;
      case 2858:
        result = "kDYFEMTLVisibleFunctionTable_setGlobalBuffer";
        break;
      case 2859:
        result = "kDYFEMTLVisibleFunctionTable_setGlobalBufferOffset";
        break;
      case 2860:
        result = "kDYFEMTLIntersectionFunctionTable_setGlobalBuffer";
        break;
      case 2861:
        result = "kDYFEMTLIntersectionFunctionTable_setGlobalBufferOffset";
        break;
      case 2862:
        result = "kDYFEMTLIntersectionFunctionTable_setLabel";
        break;
      case 2863:
        result = "kDYFEMTLIntersectionFunctionTable_setResponsibleProcess";
        break;
      case 2864:
        result = "kDYFEMTLIntersectionFunctionTable_dealloc";
        break;
      case 2865:
        result = "kDYFEMTLIntersectionFunctionTable_doesAliasAllResources_count";
        break;
      case 2866:
        result = "kDYFEMTLIntersectionFunctionTable_doesAliasAnyResources_count";
        break;
      case 2867:
        result = "kDYFEMTLIntersectionFunctionTable_doesAliasResource";
        break;
      case 2868:
        result = "kDYFEMTLIntersectionFunctionTable_isAliasable";
        break;
      case 2869:
        result = "kDYFEMTLIntersectionFunctionTable_isComplete";
        break;
      case 2870:
        result = "kDYFEMTLIntersectionFunctionTable_isPurgeable";
        break;
      case 2871:
        result = "kDYFEMTLIntersectionFunctionTable_isWriteComplete";
        break;
      case 2872:
        result = "kDYFEMTLIntersectionFunctionTable_makeAliasable";
        break;
      case 2873:
        result = "kDYFEMTLIntersectionFunctionTable_setFunction_atIndex";
        break;
      case 2874:
        result = "kDYFEMTLIntersectionFunctionTable_setFunctions_withRange";
        break;
      case 2875:
        result = "kDYFEMTLIntersectionFunctionTable_setPurgeableState";
        break;
      case 2876:
        result = "kDYFEMTLIntersectionFunctionTable_waitUntilComplete";
        break;
      case 2877:
        result = "kDYFEMTLBinaryArchive_addComputePipelineFunctionsWithDescriptor_options_error";
        break;
      case 2878:
        result = "kDYFEMTLBinaryArchive_addRenderPipelineFunctionsWithDescriptor_options_error";
        break;
      case 2879:
        result = "kDYFEMTLBinaryArchive_addTileRenderPipelineFunctionsWithDescriptor_options_error";
        break;
      case 2880:
        result = "kDYFEMTLAccelerationStructure_setDescriptor";
        break;
      case 2881:
        result = "kDYFEMTLLibrary_newIntersectionFunctionWithDescriptor_completionHandler";
        break;
      case 2882:
        result = "kDYFEMTLLibrary_newIntersectionFunctionWithDescriptor_error";
        break;
      case 2883:
        result = "kDYFEMTLArgumentEncoder_setIntersectionFunctionTable_atBufferIndex";
        break;
      case 2884:
        result = "kDYFEMTLArgumentEncoder_setIntersectionFunctionTables_withBufferRange";
        break;
      case 2885:
        result = "kDYFEMTLArgumentEncoder_setVisibleFunctionTable_atBufferIndex";
        break;
      case 2886:
        result = "kDYFEMTLArgumentEncoder_setVisibleFunctionTables_withBufferRange";
        break;
      case 2887:
        result = "kDYFEMTLIntersectionFunctionTable_setBuffer_offset_atIndex";
        break;
      case 2888:
        result = "kDYFEMTLIntersectionFunctionTable_setBuffers_offsets_withRange";
        break;
      case 2889:
        result = "kDYFEMTLVisibleFunctionTable_setBuffer_offset_atIndex";
        break;
      case 2890:
        result = "kDYFEMTLVisibleFunctionTable_setBuffers_offsets_withRange";
        break;
      case 2891:
        result = "kDYFEMTLComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions_error";
        break;
      case 2892:
        result = "kDYFEMTLComputePipelineState_newIntersectionFunctionTableWithDescriptor";
        break;
      case 2893:
        result = "kDYFEMTLArgumentEncoder_setIntersectionFunctionTable_atIndex";
        break;
      case 2894:
        result = "kDYFEMTLArgumentEncoder_setIntersectionFunctionTables_withRange";
        break;
      case 2895:
        result = "kDYFEMTLArgumentEncoder_setVisibleFunctionTable_atIndex";
        break;
      case 2896:
        result = "kDYFEMTLArgumentEncoder_setVisibleFunctionTables_withRange";
        break;
      case 2897:
        result = "kDYFEMTLDevice_supportsTextureWriteRoundingMode";
        break;
      case 2898:
        result = "kDYFEMTLTexture_didModifyData";
        break;
      case 2899:
        result = "kDYFEMTLCommandBuffer_setSharedIndirectionTable";
        break;
      case 2900:
        result = "kDYFEMTLDevice_newPrecompiledRenderPipelineStateWithDescriptor_options_pipelineCache_completionHandler";
        break;
      case 2901:
        result = "kDYFEMTLDevice_newDynamicLibraryWithURL_options_error";
        break;
      case 2902:
        result = "kDYFEMTLIntersectionFunctionTable_setOpaqueTriangleIntersectionFunctionWithSignature_atIndex";
        break;
      case 2903:
        result = "kDYFEMTLIntersectionFunctionTable_setOpaqueTriangleIntersectionFunctionWithSignature_withRange";
        break;
      case 2904:
        result = "kDYFEMTLVisibleFunctionTable_setValue_atIndex";
        break;
      case 2905:
        result = "kDYFEMTLVisibleFunctionTable_setValue_withRange";
        break;
      case 2906:
        result = "kDYFEMTLIntersectionFunctionTable_setVisibleFunctionTable_atBufferIndex";
        break;
      case 2907:
        result = "kDYFEMTLIntersectionFunctionTable_setVisibleFunctionTables_withBufferRange";
        break;
      case 2908:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset";
        break;
      case 2909:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset";
        break;
      case 2910:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_serializeInstanceAccelerationStructure_primitiveAccelerationStructures_toBuffer_serializedBufferOffset";
        break;
      case 2911:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_serializePrimitiveAccelerationStructure_toBuffer_serializedBufferOffset";
        break;
      case 2912:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset";
        break;
      case 2913:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeGenericBVHStructureSizesOfAccelerationStructure_toBuffer_sizesBufferOffset";
        break;
      case 2914:
        result = "kDYFEMTLComputeCommandEncoder_encodeEndDoWhile_offset_comparison_referenceValue";
        break;
      case 2915:
        result = "kDYFEMTLComputeCommandEncoder_encodeEndIf";
        break;
      case 2916:
        result = "kDYFEMTLComputeCommandEncoder_encodeEndWhile";
        break;
      case 2917:
        result = "kDYFEMTLComputeCommandEncoder_encodeStartDoWhile";
        break;
      case 2918:
        result = "kDYFEMTLComputeCommandEncoder_encodeStartElse";
        break;
      case 2919:
        result = "kDYFEMTLComputeCommandEncoder_encodeStartIf_offset_comparison_referenceValue";
        break;
      case 2920:
        result = "kDYFEMTLComputeCommandEncoder_encodeStartWhile_offset_comparison_referenceValue";
        break;
      case 2921:
        result = "kDYFEMTLComputeCommandEncoder_insertCompressedTextureReinterpretationFlush";
        break;
      case 2922:
        result = "kDYFEMTLComputeCommandEncoder_useResourceGroup_usage";
        break;
      case 2923:
        result = "kDYFEMTLDevice_newBufferWithDescriptor";
        break;
      case 2924:
        result = "kDYFEMTLRelocation_dealloc";
        break;
      case 2925:
        result = "kDYFEMTLRenderCommandEncoder_useResourceGroup_usage_stages";
        break;
      case 2926:
        result = "kDYFEMTLDevice_newAccelerationStructureWithSize_resourceIndex";
        break;
      case 2927:
        result = "kDYFEMTLBuffer_setParentGPUAddress";
        break;
      case 2928:
        result = "kDYFEMTLBuffer_setParentGPUSize";
        break;
      case 2929:
        result = "kDYFEMTLComputeCommandEncoder_insertUncompressedToCompressedFlush";
        break;
      case 2930:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType";
        break;
      case 2931:
        result = "kDYFEMTLCommandBuffer_encodeDashboardFinalizeForResourceGroup_dashboard_value_forIndex";
        break;
      case 2932:
        result = "kDYFEMTLCommandBuffer_encodeDashboardTagForResourceGroup";
        break;
      case 2933:
        result = "kDYFEMTLDevice_setPluginData";
        break;
      case 2934:
        result = "kDYFEMTLDevice_loadDynamicLibrariesForComputeDescriptor_options_error";
        break;
      case 2935:
        result = "kDYFEMTLDevice_loadDynamicLibrariesForFunction_insertLibraries_options_error";
        break;
      case 2936:
        result = "kDYFEMTLDevice_newLateEvalEvent";
        break;
      case 2937:
        result = "kDYFEMTLFunctionPointerHandle_dealloc";
        break;
      case 2938:
        result = "kDYFEMTLFunctionPrivateArgument_dealloc";
        break;
      case 2939:
        result = "kDYFEMTLFunctionStitchingAttribute_dealloc";
        break;
      case 2940:
        result = "kDYFEMTLFunctionStitchingNode_dealloc";
        break;
      case 2941:
        result = "kDYFEMTLLateEvalEvent_setLabel";
        break;
      case 2942:
        result = "kDYFEMTLLateEvalEvent_setSignaledValue";
        break;
      case 2943:
        result = "kDYFEMTLLateEvalEvent_dealloc";
        break;
      case 2944:
        result = "kDYFEMTLLateEvalEvent_newSharedEventHandle";
        break;
      case 2945:
        result = "kDYFEMTLLibrary_setShaderValidationEnabled";
        break;
      case 2946:
        result = "kDYFEMTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion";
        break;
      case 2947:
        result = "kDYFEMTLRenderCommandEncoder_setMeshAccelerationStructure_atBufferIndex";
        break;
      case 2948:
        result = "kDYFEMTLRenderCommandEncoder_setMeshIntersectionFunctionTable_atBufferIndex";
        break;
      case 2949:
        result = "kDYFEMTLRenderCommandEncoder_setMeshIntersectionFunctionTables_withBufferRange";
        break;
      case 2950:
        result = "kDYFEMTLRenderCommandEncoder_setMeshVisibleFunctionTable_atBufferIndex";
        break;
      case 2951:
        result = "kDYFEMTLRenderCommandEncoder_setMeshVisibleFunctionTables_withBufferRange";
        break;
      case 2952:
        result = "kDYFEMTLRenderCommandEncoder_setObjectAccelerationStructure_atBufferIndex";
        break;
      case 2953:
        result = "kDYFEMTLRenderCommandEncoder_setObjectIntersectionFunctionTable_atBufferIndex";
        break;
      case 2954:
        result = "kDYFEMTLRenderCommandEncoder_setObjectIntersectionFunctionTables_withBufferRange";
        break;
      case 2955:
        result = "kDYFEMTLRenderCommandEncoder_setObjectVisibleFunctionTable_atBufferIndex";
        break;
      case 2956:
        result = "kDYFEMTLRenderCommandEncoder_setObjectVisibleFunctionTables_withBufferRange";
        break;
      case 2957:
        result = "kDYFEMTLDevice_compileVisibleFunction_withDescriptor_destinationBinaryArchive_error";
        break;
      case 2958:
        result = "kDYFEMTLBlitCommandEncoder_fillBuffer_range_pattern4";
        break;
      case 2959:
        result = "kDYFEMTLBlitCommandEncoder_fillTexture_level_slice_region_bytes_length";
        break;
      case 2960:
        result = "kDYFEMTLBlitCommandEncoder_fillTexture_level_slice_region_color";
        break;
      case 2961:
        result = "kDYFEMTLBlitCommandEncoder_fillTexture_level_slice_region_color_pixelFormat";
        break;
      case 2962:
        result = "kDYFEMTLBlitCommandEncoder_invalidateCompressedTexture";
        break;
      case 2963:
        result = "kDYFEMTLBlitCommandEncoder_invalidateCompressedTexture_slice_level";
        break;
      case 2964:
        result = "kDYFEMTLDevice_newLibraryWithGraphs_functions_error";
        break;
      case 2965:
        result = "kDYFEMTLDevice_newLibraryWithGraphsSPI_functions_error";
        break;
      case 2966:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset_withDescriptor";
        break;
      case 2967:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor";
        break;
      case 2968:
        result = "kDYFEMTLDevice_newAccelerationStructureWithBuffer_offset";
        break;
      case 2969:
        result = "kDYFEMTLRenderPipelineState_functionHandleWithFunction_stage";
        break;
      case 2970:
        result = "kDYFEMTLRenderPipelineState_newIntersectionFunctionTableWithDescriptor_stage";
        break;
      case 2971:
        result = "kDYFEMTLRenderPipelineState_newRenderPipelineStateWithAdditionalBinaryFunctions_error";
        break;
      case 2972:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableWithDescriptor_stage";
        break;
      case 2973:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentAccelerationStructure_atBufferIndex";
        break;
      case 2974:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentIntersectionFunctionTable_atBufferIndex";
        break;
      case 2975:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentIntersectionFunctionTables_withBufferRange";
        break;
      case 2976:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentVisibleFunctionTable_atBufferIndex";
        break;
      case 2977:
        result = "kDYFEMTLRenderCommandEncoder_setFragmentVisibleFunctionTables_withBufferRange";
        break;
      case 2978:
        result = "kDYFEMTLRenderCommandEncoder_setTileAccelerationStructure_atBufferIndex";
        break;
      case 2979:
        result = "kDYFEMTLRenderCommandEncoder_setTileIntersectionFunctionTable_atBufferIndex";
        break;
      case 2980:
        result = "kDYFEMTLRenderCommandEncoder_setTileIntersectionFunctionTables_withBufferRange";
        break;
      case 2981:
        result = "kDYFEMTLRenderCommandEncoder_setTileVisibleFunctionTable_atBufferIndex";
        break;
      case 2982:
        result = "kDYFEMTLRenderCommandEncoder_setTileVisibleFunctionTables_withBufferRange";
        break;
      case 2983:
        result = "kDYFEMTLRenderCommandEncoder_setVertexAccelerationStructure_atBufferIndex";
        break;
      case 2984:
        result = "kDYFEMTLRenderCommandEncoder_setVertexIntersectionFunctionTable_atBufferIndex";
        break;
      case 2985:
        result = "kDYFEMTLRenderCommandEncoder_setVertexIntersectionFunctionTables_withBufferRange";
        break;
      case 2986:
        result = "kDYFEMTLRenderCommandEncoder_setVertexVisibleFunctionTable_atBufferIndex";
        break;
      case 2987:
        result = "kDYFEMTLRenderCommandEncoder_setVertexVisibleFunctionTables_withBufferRange";
        break;
      case 2988:
        result = "kDYFEMTLRenderPipelineState_fragmentFunctionHandleWithFunction";
        break;
      case 2989:
        result = "kDYFEMTLRenderPipelineState_newFragmentIntersectionFunctionTableWithDescriptor";
        break;
      case 2990:
        result = "kDYFEMTLRenderPipelineState_newTileIntersectionFunctionTableWithDescriptor";
        break;
      case 2991:
        result = "kDYFEMTLRenderPipelineState_newVertexIntersectionFunctionTableWithDescriptor";
        break;
      case 2992:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromFragmentStageWithDescriptor";
        break;
      case 2993:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromTileStageWithDescriptor";
        break;
      case 2994:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromVertexStageWithDescriptor";
        break;
      case 2995:
        result = "kDYFEMTLRenderPipelineState_tileFunctionHandleWithFunction";
        break;
      case 2996:
        result = "kDYFEMTLRenderPipelineState_vertexFunctionHandleWithFunction";
        break;
      case 2997:
        result = "kDYFEMTLDevice_newLibraryWithDescriptor_error";
        break;
      case 2998:
        result = "kDYFEMTLDevice_newLibraryWithDescriptorSPI_error";
        break;
      case 2999:
        result = "kDYFEMTLDevice_getBVHBuilderLock";
        break;
      case 3000:
        result = "kDYFEMTLDevice_getRawBVHBuilderPtr";
        break;
      case 3001:
        result = "kDYFEMTLDevice_setRawBVHBuilderPtr";
        break;
      case 3002:
        result = "kDYFEMTLDevice_newFunctionWithGLCoreIR_functionType";
        break;
      case 3003:
        result = "kDYFEMTLDevice_newFunctionWithGLCoreIR_inputsDescription_functionType";
        break;
      case 3004:
        result = "kDYFEMTLDevice_newFunctionWithGLESIR_functionType";
        break;
      case 3005:
        result = "kDYFEMTLDevice_newFunctionWithGLESIR_inputsDescription_functionType";
        break;
      case 3006:
        result = "kDYFEMTLBinaryArchive_addLibraryWithDescriptor_error";
        break;
      case 3007:
        result = "kDYFEMTLDevice_newLibraryWithDescriptor_completionHandler";
        break;
      case 3008:
        result = "kDYFEMTLLateEvalEvent_waitUntilSignaledValue_timeoutMS";
        break;
      case 3009:
        result = "kDYFEMTLLibrary_serializeToURL_error";
        break;
      case 3010:
        result = "kDYFEMTLSharedEvent_waitUntilSignaledValue_timeoutMS";
        break;
      case 3011:
        result = "kDYFEMTLDevice_newLibraryWithStitchedDescriptor_completionHandler";
        break;
      case 3012:
        result = "kDYFEMTLDevice_newLibraryWithStitchedDescriptor_error";
        break;
      case 3013:
        result = "kDYFEMTLDevice_newLibraryWithStitchedDescriptorSPI_error";
        break;
      case 3014:
        result = "kDYFEMTLDevice_deserializeInstanceAccelerationStructureFromBytes_primitiveAccelerationStructures_withDescriptor";
        break;
      case 3015:
        result = "kDYFEMTLDevice_deserializePrimitiveAccelerationStructureFromBytes_withDescriptor";
        break;
      case 3016:
        result = "kDYFEMTLRenderCommandEncoder_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3017:
        result = "kDYFEMTLRenderCommandEncoder_drawMeshThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3018:
        result = "kDYFEMTLRenderCommandEncoder_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3019:
        result = "kDYFEMTLRenderPipelineState_setUsesMeshShaderEmulation";
        break;
      case 3020:
        result = "kDYFEMTLRasterizationRateMap_formattedDescription";
        break;
      case 3021:
        result = "kDYFEMTLRasterizationRateMap_resetUsingDescriptor";
        break;
      case 3022:
        result = "kDYFEMTLCommandBuffer_encodeDashboardFinalizeForResourceGroup_dashboard_values_indices_count";
        break;
      case 3023:
        result = "kDYFEMTLBinaryArchive_addMeshRenderPipelineFunctionsWithDescriptor_error";
        break;
      case 3024:
        result = "kDYFEMTLBinaryArchive_addMeshRenderPipelineFunctionsWithDescriptor_options_error";
        break;
      case 3025:
        result = "kDYFEMTLBinaryArchive_storeMeshRenderPipelineDescriptor";
        break;
      case 3026:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler";
        break;
      case 3027:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithMeshDescriptor_error";
        break;
      case 3028:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler";
        break;
      case 3029:
        result = "kDYFEMTLDevice_newRenderPipelineStateWithMeshDescriptor_options_reflection_error";
        break;
      case 3030:
        result = "kDYFEMTLDevice_writeMeshShaderEmulatorDataStructureHeader_meshShaderPSO_scalingFactor";
        break;
      case 3031:
        result = "kDYFEMTLRenderCommandEncoder_setMeshBuffer_offset_atIndex";
        break;
      case 3032:
        result = "kDYFEMTLRenderCommandEncoder_setMeshBufferOffset_atIndex";
        break;
      case 3033:
        result = "kDYFEMTLRenderCommandEncoder_setMeshBuffers_offsets_withRange";
        break;
      case 3034:
        result = "kDYFEMTLRenderCommandEncoder_setMeshBytes_length_atIndex";
        break;
      case 3035:
        result = "kDYFEMTLRenderCommandEncoder_setMeshSamplerState_atIndex";
        break;
      case 3036:
        result = "kDYFEMTLRenderCommandEncoder_setMeshSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 3037:
        result = "kDYFEMTLRenderCommandEncoder_setMeshSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 3038:
        result = "kDYFEMTLRenderCommandEncoder_setMeshSamplerStates_withRange";
        break;
      case 3039:
        result = "kDYFEMTLRenderCommandEncoder_setMeshTexture_atIndex";
        break;
      case 3040:
        result = "kDYFEMTLRenderCommandEncoder_setMeshTextures_withRange";
        break;
      case 3041:
        result = "kDYFEMTLRenderCommandEncoder_setObjectBuffer_offset_atIndex";
        break;
      case 3042:
        result = "kDYFEMTLRenderCommandEncoder_setObjectBufferOffset_atIndex";
        break;
      case 3043:
        result = "kDYFEMTLRenderCommandEncoder_setObjectBuffers_offsets_withRange";
        break;
      case 3044:
        result = "kDYFEMTLRenderCommandEncoder_setObjectBytes_length_atIndex";
        break;
      case 3045:
        result = "kDYFEMTLRenderCommandEncoder_setObjectSamplerState_atIndex";
        break;
      case 3046:
        result = "kDYFEMTLRenderCommandEncoder_setObjectSamplerState_lodMinClamp_lodMaxClamp_atIndex";
        break;
      case 3047:
        result = "kDYFEMTLRenderCommandEncoder_setObjectSamplerStates_lodMinClamps_lodMaxClamps_withRange";
        break;
      case 3048:
        result = "kDYFEMTLRenderCommandEncoder_setObjectSamplerStates_withRange";
        break;
      case 3049:
        result = "kDYFEMTLRenderCommandEncoder_setObjectTexture_atIndex";
        break;
      case 3050:
        result = "kDYFEMTLRenderCommandEncoder_setObjectTextures_withRange";
        break;
      case 3051:
        result = "kDYFEMTLRenderCommandEncoder_setObjectThreadgroupMemoryLength_atIndex";
        break;
      case 3052:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshMaxPrimitiveCount";
        break;
      case 3053:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshMaxVertexCount";
        break;
      case 3054:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshShaderIntermediateBufferSlot";
        break;
      case 3055:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshShaderPSO";
        break;
      case 3056:
        result = "kDYFEMTLRenderPipelineState_setEmulationMeshSize";
        break;
      case 3057:
        result = "kDYFEMTLRenderPipelineState_setEmulationObjectShaderIntermediateBufferSlot";
        break;
      case 3058:
        result = "kDYFEMTLRenderPipelineState_setEmulationObjectShaderPSO";
        break;
      case 3059:
        result = "kDYFEMTLRenderPipelineState_setEmulationVertexShaderIntermediateBufferSlot";
        break;
      case 3060:
        result = "kDYFEMTLRenderPipelineState_meshFunctionHandleWithFunction";
        break;
      case 3061:
        result = "kDYFEMTLRenderPipelineState_newMeshIntersectionFunctionTableWithDescriptor";
        break;
      case 3062:
        result = "kDYFEMTLRenderPipelineState_newObjectIntersectionFunctionTableWithDescriptor";
        break;
      case 3063:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromMeshStageWithDescriptor";
        break;
      case 3064:
        result = "kDYFEMTLRenderPipelineState_newVisibleFunctionTableFromObjectStageWithDescriptor";
        break;
      case 3065:
        result = "kDYFEMTLRenderPipelineState_objectFunctionHandleWithFunction";
        break;
      case 3066:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options";
        break;
      case 3067:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeAccelerationStructureSerializationData_toBuffer_offset";
        break;
      case 3068:
        result = "kDYFEMTLCommandBuffer_accelerationStructureCommandEncoderWithDescriptor";
        break;
      case 3069:
        result = "kDYFEMTLDevice_deserializeInstanceAccelerationStructure_fromBytes_primitiveAccelerationStructures_withDescriptor";
        break;
      case 3070:
        result = "kDYFEMTLDevice_deserializePrimitiveAccelerationStructure_fromBytes_withDescriptor";
        break;
      case 3071:
        result = "kDYFEMTLDevice_heapAccelerationStructureSizeAndAlignWithDescriptor";
        break;
      case 3072:
        result = "kDYFEMTLDevice_heapAccelerationStructureSizeAndAlignWithSize";
        break;
      case 3073:
        result = "kDYFEMTLDevice_newAccelerationStructureWithBuffer_offset_resourceIndex";
        break;
      case 3074:
        result = "kDYFEMTLDevice_newAccelerationStructureWithSize_withDescriptor";
        break;
      case 3075:
        result = "kDYFEMTLBuffer__aneIOSurface";
        break;
      case 3076:
        result = "kDYFEMTLHeap_newAccelerationStructureWithDescriptor";
        break;
      case 3077:
        result = "kDYFEMTLHeap_newAccelerationStructureWithDescriptor_offset";
        break;
      case 3078:
        result = "kDYFEMTLHeap_newAccelerationStructureWithSize";
        break;
      case 3079:
        result = "kDYFEMTLHeap_newAccelerationStructureWithSize_offset";
        break;
      case 3080:
        result = "kDYFEMTLHeap_newAccelerationStructureWithSize_offset_resourceIndex";
        break;
      case 3081:
        result = "kDYFEMTLHeap_newAccelerationStructureWithSize_resourceIndex";
        break;
      case 3082:
        result = "kDYFEMTLDevice_newIOCommandQueueWithDescriptor_error";
        break;
      case 3083:
        result = "kDYFEMTLDevice_newIOHandleWithURL_compressionType_error";
        break;
      case 3084:
        result = "kDYFEMTLDevice_newIOHandleWithURL_error";
        break;
      case 3085:
        result = "kDYFEMTLDevice_newPerformanceStateAssertion_error";
        break;
      case 3086:
        result = "kDYFEMTLIOCommandBuffer_setStatus";
        break;
      case 3087:
        result = "kDYFEMTLIOCommandBuffer_addCompletedHandler";
        break;
      case 3088:
        result = "kDYFEMTLIOCommandBuffer_barrier";
        break;
      case 3089:
        result = "kDYFEMTLIOCommandBuffer_commit";
        break;
      case 3090:
        result = "kDYFEMTLIOCommandBuffer_copyStatusToBuffer_offset";
        break;
      case 3091:
        result = "kDYFEMTLIOCommandBuffer_dealloc";
        break;
      case 3092:
        result = "kDYFEMTLIOCommandBuffer_encodeSignalEvent_value";
        break;
      case 3093:
        result = "kDYFEMTLIOCommandBuffer_encodeWaitForEvent_value";
        break;
      case 3094:
        result = "kDYFEMTLIOCommandBuffer_loadBuffer_offset_size_handle_handleOffset";
        break;
      case 3095:
        result = "kDYFEMTLIOCommandBuffer_loadTexture_slice_level_size_bytesPerRow_bytesPerImage_dstOrigin_handle_handleOffset";
        break;
      case 3096:
        result = "kDYFEMTLIOCommandBuffer_tryCancel";
        break;
      case 3097:
        result = "kDYFEMTLIOCommandBuffer_waitUntilCompleted";
        break;
      case 3098:
        result = "kDYFEMTLIOCommandQueue_barrier";
        break;
      case 3099:
        result = "kDYFEMTLIOCommandQueue_commandBuffer";
        break;
      case 3100:
        result = "kDYFEMTLIOCommandQueue_dealloc";
        break;
      case 3101:
        result = "kDYFEMTLIOScratchBuffer_dealloc";
        break;
      case 3102:
        result = "kDYFEMTLIOScratchBufferAllocator_allocateScratchBufferWithMinimumSize";
        break;
      case 3103:
        result = "kDYFEMTLIOScratchBufferAllocator_dealloc";
        break;
      case 3104:
        result = "kDYFEMTLIOHandle_dealloc";
        break;
      case 3105:
        result = "kDYFEMTLBinaryArchive_getArchiveIDWithError";
        break;
      case 3106:
        result = "kDYFEMTLCommandBuffer_presentDrawable_options";
        break;
      case 3107:
        result = "kDYFEMTLEvent_setEnableBarrier";
        break;
      case 3108:
        result = "kDYFEMTLLateEvalEvent_setEnableBarrier";
        break;
      case 3109:
        result = "kDYFEMTLLibrary_bitCodeListForFunctions";
        break;
      case 3110:
        result = "kDYFEMTLLibrary_bitCodeWithHash";
        break;
      case 3111:
        result = "kDYFEMTLSharedEvent_setEnableBarrier";
        break;
      case 3112:
        result = "kDYFEMTLDeadlineProfile_dealloc";
        break;
      case 3113:
        result = "kDYFEMTLRenderPipelineState_setEmulationPrimitiveTopology";
        break;
      case 3114:
        result = "kDYFEMTLCommandBuffer_commitWithDeadline";
        break;
      case 3115:
        result = "kDYFEMTLDevice_newProfileWithExecutionSize";
        break;
      case 3116:
        result = "kDYFEMTLCommandBuffer_commitAndWaitUntilSubmittedWithDeadline";
        break;
      case 3117:
        result = "kDYFEMTLDevice_sparseTileSizeInBytesForSparsePageSize";
        break;
      case 3118:
        result = "kDYFEMTLDevice_sparseTileSizeWithTextureType_pixelFormat_sampleCount_sparsePageSize";
        break;
      case 3119:
        result = "kDYFEMTLIOCommandBuffer_setLabel";
        break;
      case 3120:
        result = "kDYFEMTLIOCommandBuffer_enqueue";
        break;
      case 3121:
        result = "kDYFEMTLIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset";
        break;
      case 3122:
        result = "kDYFEMTLIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset";
        break;
      case 3123:
        result = "kDYFEMTLIOCommandBuffer_signalEvent_value";
        break;
      case 3124:
        result = "kDYFEMTLIOCommandBuffer_waitForEvent_value";
        break;
      case 3125:
        result = "kDYFEMTLIOCommandQueue_setLabel";
        break;
      case 3126:
        result = "kDYFEMTLIOCommandQueue_commandBufferWithUnretainedReferences";
        break;
      case 3127:
        result = "kDYFEMTLIOHandle_setLabel";
        break;
      case 3128:
        result = "kDYFEMTLIOHandle_decompress_size_offset_stagingBuffer_stagingBufferSize";
        break;
      case 3129:
        result = "kDYFEMTLIOHandle_getHandleOffset_offset";
        break;
      case 3130:
        result = "kDYFEMTLIOHandle_read_size_offset_stagingBuffer_stagingBufferSize";
        break;
      case 3131:
        result = "kDYFEMTLIOHandle_readIntoStagingBuffer_offset_stagingBuffer_stagingBufferSize";
        break;
      case 3132:
        result = "kDYFEMTLIOHandle_stagingBufferSize_offset";
        break;
      case 3133:
        result = "kDYFEMTLIOScratchBufferAllocator_newScratchBufferWithMinimumSize";
        break;
      case 3134:
        result = "kDYFEMTLDevice_getMostCompatibleArchitecture";
        break;
      case 3135:
        result = "kDYFEMTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion_withRenderTargetArrayIndex";
        break;
      case 3136:
        result = "kDYFEMTLDevice_newIOHandleWithURL_compressionMethod_error";
        break;
      case 3137:
        result = "kDYFEMTLIOCommandBuffer_addBarrier";
        break;
      case 3138:
        result = "kDYFEMTLIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset";
        break;
      case 3139:
        result = "kDYFEMTLIOCommandBuffer_popDebugGroup";
        break;
      case 3140:
        result = "kDYFEMTLIOCommandBuffer_pushDebugGroup";
        break;
      case 3141:
        result = "kDYFEMTLIOCommandQueue_enqueueBarrier";
        break;
      case 3142:
        result = "kDYFEMTLIOFileHandle_setLabel";
        break;
      case 3143:
        result = "kDYFEMTLIOFileHandle_dealloc";
        break;
      case 3144:
        result = "kDYFEMTLRenderPipelineState_setEmulationPayloadMemoryLength";
        break;
      case 3145:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_writeAccelerationStructureTraversalDepth_toBuffer_offset";
        break;
      case 3146:
        result = "kDYFEMTLCommandBuffer_encodeConditionalAbortEvent";
        break;
      case 3147:
        result = "kDYFEMTLCommandBuffer_encodeSignalEvent_value_agentMask";
        break;
      case 3148:
        result = "kDYFEMTLComputeCommandEncoder_setBuffer_offset_attributeStride_atIndex";
        break;
      case 3149:
        result = "kDYFEMTLComputeCommandEncoder_setBufferOffset_attributeStride_atIndex";
        break;
      case 3150:
        result = "kDYFEMTLComputeCommandEncoder_setBuffers_offsets_attributeStrides_withRange";
        break;
      case 3151:
        result = "kDYFEMTLComputeCommandEncoder_setBytes_length_attributeStride_atIndex";
        break;
      case 3152:
        result = "kDYFEMTLComputeCommandEncoder_setThreadgroupDistributionMode";
        break;
      case 3153:
        result = "kDYFEMTLComputeCommandEncoder_setThreadgroupDistributionModeWithClusterGroupIndex";
        break;
      case 3154:
        result = "kDYFEMTLComputeCommandEncoder_setThreadgroupPackingDisabled";
        break;
      case 3155:
        result = "kDYFEMTLIndirectComputeCommand_setKernelBuffer_offset_attributeStride_atIndex";
        break;
      case 3156:
        result = "kDYFEMTLIndirectRenderCommand_setVertexBuffer_offset_attributeStride_atIndex";
        break;
      case 3157:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBuffer_offset_attributeStride_atIndex";
        break;
      case 3158:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBufferOffset_attributeStride_atIndex";
        break;
      case 3159:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBuffers_offsets_attributeStrides_withRange";
        break;
      case 3160:
        result = "kDYFEMTLRenderCommandEncoder_setVertexBytes_length_attributeStride_atIndex";
        break;
      case 3161:
        result = "kDYFEMTLResourceStateCommandEncoder_moveTextureMappingsFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 3162:
        result = "kDYFEMTLDevice_setShouldMaximizeConcurrentCompilation";
        break;
      case 3163:
        result = "kDYFEMTLDevice_newEventWithOptions";
        break;
      case 3164:
        result = "kDYFEMTLDevice_newSharedEventWithOptions";
        break;
      case 3165:
        result = "kDYFEMTLDevice_setCompilerProcessesCount";
        break;
      case 3166:
        result = "kDYFEMTLIndirectRenderCommand_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3167:
        result = "kDYFEMTLIndirectRenderCommand_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3168:
        result = "kDYFEMTLIndirectRenderCommand_setMeshBuffer_offset_atIndex";
        break;
      case 3169:
        result = "kDYFEMTLIndirectRenderCommand_setObjectBuffer_offset_atIndex";
        break;
      case 3170:
        result = "kDYFEMTLIndirectRenderCommand_setObjectThreadgroupMemoryLength_atIndex";
        break;
      case 3171:
        result = "kDYFEMTLDevice_newArgumentEncoderWithBufferBinding";
        break;
      case 3172:
        result = "kDYFEMTLDevice_newIOFileHandleWithURL_compressionMethod_error";
        break;
      case 3173:
        result = "kDYFEMTLDevice_newIOFileHandleWithURL_error";
        break;
      case 3174:
        result = "kDYFEMTLIntersectionFunctionTable_setOpaqueCurveIntersectionFunctionWithSignature_atIndex";
        break;
      case 3175:
        result = "kDYFEMTLIntersectionFunctionTable_setOpaqueCurveIntersectionFunctionWithSignature_withRange";
        break;
      case 3176:
        result = "kDYFEMTLCommandBuffer_setPrivateLoggingBuffer";
        break;
      case 3177:
        result = "kDYFEMTLCommandBuffer_setResponsibleTaskIDs_count";
        break;
      case 3178:
        result = "kDYFEMTLCommandBuffer_useResidencySet";
        break;
      case 3179:
        result = "kDYFEMTLCommandBuffer_useResidencySets_count";
        break;
      case 3180:
        result = "kDYFEMTLCommandQueue_addResidencySet";
        break;
      case 3181:
        result = "kDYFEMTLCommandQueue_addResidencySets_count";
        break;
      case 3182:
        result = "kDYFEMTLCommandQueue_removeResidencySet";
        break;
      case 3183:
        result = "kDYFEMTLCommandQueue_removeResidencySets_count";
        break;
      case 3184:
        result = "kDYFEMTLComputeCommandEncoder_useResidencySet";
        break;
      case 3185:
        result = "kDYFEMTLComputeCommandEncoder_useResidencySets_count";
        break;
      case 3186:
        result = "kDYFEMTLDevice_setWritableHeapsEnabled";
        break;
      case 3187:
        result = "kDYFEMTLDevice_newResidencySetWithDescriptor_error";
        break;
      case 3188:
        result = "kDYFEMTLRenderCommandEncoder_useResidencySet";
        break;
      case 3189:
        result = "kDYFEMTLRenderCommandEncoder_useResidencySets_count";
        break;
      case 3190:
        result = "kDYFEMTLResidencySet_addHeap";
        break;
      case 3191:
        result = "kDYFEMTLResidencySet_addHeaps_count";
        break;
      case 3192:
        result = "kDYFEMTLResidencySet_addResource";
        break;
      case 3193:
        result = "kDYFEMTLResidencySet_addResources_count";
        break;
      case 3194:
        result = "kDYFEMTLResidencySet_commitAdds";
        break;
      case 3195:
        result = "kDYFEMTLResidencySet_commitRemoves";
        break;
      case 3196:
        result = "kDYFEMTLResidencySet_commitResidency";
        break;
      case 3197:
        result = "kDYFEMTLResidencySet_containsHeap";
        break;
      case 3198:
        result = "kDYFEMTLResidencySet_containsResource";
        break;
      case 3199:
        result = "kDYFEMTLResidencySet_countForHeap";
        break;
      case 3200:
        result = "kDYFEMTLResidencySet_countForResource";
        break;
      case 3201:
        result = "kDYFEMTLResidencySet_dealloc";
        break;
      case 3202:
        result = "kDYFEMTLResidencySet_endResidency";
        break;
      case 3203:
        result = "kDYFEMTLResidencySet_removeAllHeaps";
        break;
      case 3204:
        result = "kDYFEMTLResidencySet_removeAllResources";
        break;
      case 3205:
        result = "kDYFEMTLResidencySet_removeHeap";
        break;
      case 3206:
        result = "kDYFEMTLResidencySet_removeHeaps_count";
        break;
      case 3207:
        result = "kDYFEMTLResidencySet_removeResource";
        break;
      case 3208:
        result = "kDYFEMTLResidencySet_removeResources_count";
        break;
      case 3209:
        result = "kDYFEMTLResidencySet_requestResidency";
        break;
      case 3210:
        result = "kDYFEMTLResidencySet_setCurrentGeneration";
        break;
      case 3211:
        result = "kDYFEMTLResidencySet_setExpiredGeneration";
        break;
      case 3212:
        result = "kDYFEMTLResidencySet_commit";
        break;
      case 3213:
        result = "kDYFEMTLResidencySet_generationForHeap";
        break;
      case 3214:
        result = "kDYFEMTLResidencySet_generationForResource";
        break;
      case 3215:
        result = "kDYFEMTLCommandBuffer_encodeSignalEventScheduled_value";
        break;
      case 3216:
        result = "kDYFEMTLCommandBuffer_setPrivateData";
        break;
      case 3217:
        result = "kDYFEMTLCommandBuffer_setPrivateDataOffset";
        break;
      case 3218:
        result = "kDYFEMTLDevice_newLogStateWithDescriptor_error";
        break;
      case 3219:
        result = "kDYFEMTLLogState_dealloc";
        break;
      case 3220:
        result = "kDYFEMTLResidencySet_addAllocation";
        break;
      case 3221:
        result = "kDYFEMTLResidencySet_addAllocations_count";
        break;
      case 3222:
        result = "kDYFEMTLResidencySet_containsAllocation";
        break;
      case 3223:
        result = "kDYFEMTLResidencySet_generationForAllocation";
        break;
      case 3224:
        result = "kDYFEMTLResidencySet_removeAllAllocations";
        break;
      case 3225:
        result = "kDYFEMTLResidencySet_removeAllocation";
        break;
      case 3226:
        result = "kDYFEMTLResidencySet_removeAllocations_count";
        break;
      case 3227:
        result = "kDYFEMTLArgumentEncoder_setDepthStencilState_atIndex";
        break;
      case 3228:
        result = "kDYFEMTLArgumentEncoder_setDepthStencilStates_withRange";
        break;
      case 3229:
        result = "kDYFEMTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion_withRenderTargetArrayIndex_withCondition";
        break;
      case 3230:
        result = "kDYFEMTLDevice_functionHandleWithBinaryFunction";
        break;
      case 3231:
        result = "kDYFEMTLDevice_newArchiveWithURL_error";
        break;
      case 3232:
        result = "kDYFEMTLDevice_newArgumentTableWithDescriptor_error";
        break;
      case 3233:
        result = "kDYFEMTLDevice_newBufferWithLength_options_placementSparsePageSize";
        break;
      case 3234:
        result = "kDYFEMTLDevice_newCommandAllocator";
        break;
      case 3235:
        result = "kDYFEMTLDevice_newCommandAllocatorWithDescriptor_error";
        break;
      case 3236:
        result = "kDYFEMTLDevice_newCommandBuffer";
        break;
      case 3237:
        result = "kDYFEMTLDevice_newCommandQueue4";
        break;
      case 3238:
        result = "kDYFEMTLDevice_newCompilerWithDescriptor_error";
        break;
      case 3239:
        result = "kDYFEMTLDevice_newPipelineDataSetSerializerWithDescriptor";
        break;
      case 3240:
        result = "kDYFEMTLDevice_newLibraryWithData_name_error";
        break;
      case 3241:
        result = "kDYFEMTLDevice_newLibraryWithURL_name_error";
        break;
      case 3242:
        result = "kDYFEMTLDevice_newMTL4CommandQueue";
        break;
      case 3243:
        result = "kDYFEMTLDevice_newTextureViewPoolWithDescriptor_error";
        break;
      case 3244:
        result = "kDYFEMTL4Archive_setLabel";
        break;
      case 3245:
        result = "kDYFEMTL4Archive_dealloc";
        break;
      case 3246:
        result = "kDYFEMTL4Archive_newComputePipelineStateWithDescriptor_error";
        break;
      case 3247:
        result = "kDYFEMTL4Archive_newComputePipelineStateWithName_error";
        break;
      case 3248:
        result = "kDYFEMTL4Archive_newRenderPipelineStateWithDescriptor_error";
        break;
      case 3249:
        result = "kDYFEMTL4Archive_newRenderPipelineStateWithName_error";
        break;
      case 3250:
        result = "kDYFEMTL4ArgumentTable_dealloc";
        break;
      case 3251:
        result = "kDYFEMTL4ArgumentTable_setAddress_atIndex";
        break;
      case 3252:
        result = "kDYFEMTL4ArgumentTable_setResource_atBufferIndex";
        break;
      case 3253:
        result = "kDYFEMTL4ArgumentTable_setSamplerState_atIndex";
        break;
      case 3254:
        result = "kDYFEMTL4ArgumentTable_setTexture_atIndex";
        break;
      case 3255:
        result = "kDYFEMTL4BinaryFunction_dealloc";
        break;
      case 3256:
        result = "kDYFEMTL4CommandAllocator_allocatedSize";
        break;
      case 3257:
        result = "kDYFEMTL4CommandAllocator_dealloc";
        break;
      case 3258:
        result = "kDYFEMTL4CommandAllocator_reset";
        break;
      case 3259:
        result = "kDYFEMTL4CommandBuffer_beginCommandBufferWithAllocator";
        break;
      case 3260:
        result = "kDYFEMTL4CommandBuffer_beginCommandBufferWithAllocator_options";
        break;
      case 3261:
        result = "kDYFEMTL4CommandBuffer_computeCommandEncoder";
        break;
      case 3262:
        result = "kDYFEMTL4CommandBuffer_dealloc";
        break;
      case 3263:
        result = "kDYFEMTL4CommandBuffer_endCommandBuffer";
        break;
      case 3264:
        result = "kDYFEMTL4CommandBuffer_popDebugGroup";
        break;
      case 3265:
        result = "kDYFEMTL4CommandBuffer_pushDebugGroup";
        break;
      case 3266:
        result = "kDYFEMTL4CommandBuffer_renderCommandEncoderWithDescriptor";
        break;
      case 3267:
        result = "kDYFEMTL4CommandBuffer_renderCommandEncoderWithDescriptor_options";
        break;
      case 3268:
        result = "kDYFEMTL4CommandBuffer_status";
        break;
      case 3269:
        result = "kDYFEMTL4CommandBuffer_useResidencySet";
        break;
      case 3270:
        result = "kDYFEMTL4CommandBuffer_useResidencySets_count";
        break;
      case 3271:
        result = "kDYFEMTL4CommandQueue_addResidencySet";
        break;
      case 3272:
        result = "kDYFEMTL4CommandQueue_addResidencySets_count";
        break;
      case 3273:
        result = "kDYFEMTL4CommandQueue_barrierAfterQueueStages_beforeQueueStages_scope_error";
        break;
      case 3274:
        result = "kDYFEMTL4CommandQueue_commit_count_error";
        break;
      case 3275:
        result = "kDYFEMTL4CommandQueue_copyBufferMappingsFromBuffer_sourceOffsets_sourceLengths_numLengths_toBuffer_destinationOffsets";
        break;
      case 3276:
        result = "kDYFEMTL4CommandQueue_copyTextureMappingsFromTexture_sourceSlices_sourceLevels_sourceOrigins_sourceSizes_numSizes_toTexture_destinationSlices_destinationLevels_destinationOrigins";
        break;
      case 3277:
        result = "kDYFEMTL4CommandQueue_dealloc";
        break;
      case 3278:
        result = "kDYFEMTL4CommandQueue_presentDrawable";
        break;
      case 3279:
        result = "kDYFEMTL4CommandQueue_presentDrawable_afterMinimumDuration";
        break;
      case 3280:
        result = "kDYFEMTL4CommandQueue_presentDrawable_atTime";
        break;
      case 3281:
        result = "kDYFEMTL4CommandQueue_removeResidencySet";
        break;
      case 3282:
        result = "kDYFEMTL4CommandQueue_removeResidencySets_count";
        break;
      case 3283:
        result = "kDYFEMTL4CommandQueue_signalEvent_value_error";
        break;
      case 3284:
        result = "kDYFEMTL4CommandQueue_updateBufferMappings_numRegions_regions_heap_rangeModes_rangeOffsets";
        break;
      case 3285:
        result = "kDYFEMTL4CommandQueue_updateTextureMappings_numRegions_regions_levels_slices_heap_rangeModes_rangeOffsets";
        break;
      case 3286:
        result = "kDYFEMTL4CommandQueue_waitEvent_value_error";
        break;
      case 3287:
        result = "kDYFEMTL4Compiler_cancel";
        break;
      case 3288:
        result = "kDYFEMTL4Compiler_dealloc";
        break;
      case 3289:
        result = "kDYFEMTL4Compiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_completionHandler";
        break;
      case 3290:
        result = "kDYFEMTL4Compiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_error";
        break;
      case 3291:
        result = "kDYFEMTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler";
        break;
      case 3292:
        result = "kDYFEMTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_error";
        break;
      case 3293:
        result = "kDYFEMTL4Compiler_newDynamicLibrary_completionHandler";
        break;
      case 3294:
        result = "kDYFEMTL4Compiler_newDynamicLibrary_error";
        break;
      case 3295:
        result = "kDYFEMTL4Compiler_newDynamicLibraryWithURL_completionHandler";
        break;
      case 3296:
        result = "kDYFEMTL4Compiler_newDynamicLibraryWithURL_error";
        break;
      case 3297:
        result = "kDYFEMTL4Compiler_newLibraryWithDescriptor_completionHandler";
        break;
      case 3298:
        result = "kDYFEMTL4Compiler_newLibraryWithDescriptor_error";
        break;
      case 3299:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandler";
        break;
      case 3300:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_error";
        break;
      case 3301:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler";
        break;
      case 3302:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_error";
        break;
      case 3303:
        result = "kDYFEMTL4CompilerTask_dealloc";
        break;
      case 3304:
        result = "kDYFEMTL4CompilerTask_waitUntilComplete";
        break;
      case 3305:
        result = "kDYFEMTL4ComputeCommandEncoder_setLabel";
        break;
      case 3306:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_scope";
        break;
      case 3307:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterQueueStages_beforeStages_scope";
        break;
      case 3308:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterStages_beforeQueueStages_scope";
        break;
      case 3309:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierUpdate_afterEncoderStages_scope";
        break;
      case 3310:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierUpdate_afterQueueStages_scope";
        break;
      case 3311:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierWait_beforeEncoderStages_scope";
        break;
      case 3312:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierWait_beforeQueueStages_scope";
        break;
      case 3313:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 3314:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options";
        break;
      case 3315:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size";
        break;
      case 3316:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTensor_sourceSlice_toTensor_destinationSlice";
        break;
      case 3317:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage";
        break;
      case 3318:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_options";
        break;
      case 3319:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin";
        break;
      case 3320:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount";
        break;
      case 3321:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTexture_toTexture";
        break;
      case 3322:
        result = "kDYFEMTL4ComputeCommandEncoder_copyIndirectCommandBuffer_sourceRange_destination_destinationIndex";
        break;
      case 3323:
        result = "kDYFEMTL4ComputeCommandEncoder_dealloc";
        break;
      case 3324:
        result = "kDYFEMTL4ComputeCommandEncoder_dispatchThreadgroups_threadsPerThreadgroup";
        break;
      case 3325:
        result = "kDYFEMTL4ComputeCommandEncoder_dispatchThreadgroupsWithIndirectBuffer_threadsPerThreadgroup";
        break;
      case 3326:
        result = "kDYFEMTL4ComputeCommandEncoder_dispatchThreads_threadsPerThreadgroup";
        break;
      case 3327:
        result = "kDYFEMTL4ComputeCommandEncoder_dispatchThreadsWithIndirectBuffer";
        break;
      case 3328:
        result = "kDYFEMTL4ComputeCommandEncoder_endEncoding";
        break;
      case 3329:
        result = "kDYFEMTL4ComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer";
        break;
      case 3330:
        result = "kDYFEMTL4ComputeCommandEncoder_executeCommandsInBuffer_withRange";
        break;
      case 3331:
        result = "kDYFEMTL4ComputeCommandEncoder_fillBuffer_range_pattern4";
        break;
      case 3332:
        result = "kDYFEMTL4ComputeCommandEncoder_fillBuffer_range_value";
        break;
      case 3333:
        result = "kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_bytes_length";
        break;
      case 3334:
        result = "kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_color";
        break;
      case 3335:
        result = "kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_color_pixelFormat";
        break;
      case 3336:
        result = "kDYFEMTL4ComputeCommandEncoder_generateMipmapsForTexture";
        break;
      case 3337:
        result = "kDYFEMTL4ComputeCommandEncoder_insertDebugSignpost";
        break;
      case 3338:
        result = "kDYFEMTL4ComputeCommandEncoder_optimizeContentsForCPUAccess";
        break;
      case 3339:
        result = "kDYFEMTL4ComputeCommandEncoder_optimizeContentsForCPUAccess_slice_level";
        break;
      case 3340:
        result = "kDYFEMTL4ComputeCommandEncoder_optimizeContentsForGPUAccess";
        break;
      case 3341:
        result = "kDYFEMTL4ComputeCommandEncoder_optimizeContentsForGPUAccess_slice_level";
        break;
      case 3342:
        result = "kDYFEMTL4ComputeCommandEncoder_optimizeIndirectCommandBuffer_withRange";
        break;
      case 3343:
        result = "kDYFEMTL4ComputeCommandEncoder_popDebugGroup";
        break;
      case 3344:
        result = "kDYFEMTL4ComputeCommandEncoder_pushDebugGroup";
        break;
      case 3345:
        result = "kDYFEMTL4ComputeCommandEncoder_resetCommandsInBuffer_withRange";
        break;
      case 3346:
        result = "kDYFEMTL4ComputeCommandEncoder_setArgumentTable";
        break;
      case 3347:
        result = "kDYFEMTL4ComputeCommandEncoder_setComputePipelineState";
        break;
      case 3348:
        result = "kDYFEMTL4ComputeCommandEncoder_setImageblockWidth_height";
        break;
      case 3349:
        result = "kDYFEMTL4ComputeCommandEncoder_setThreadgroupMemoryLength_atIndex";
        break;
      case 3350:
        result = "kDYFEMTL4ComputeCommandEncoder_updateFence_afterEncoderStages";
        break;
      case 3351:
        result = "kDYFEMTL4ComputeCommandEncoder_waitForFence_beforeEncoderStages";
        break;
      case 3352:
        result = "kDYFEMTL4ComputePipelineState_dealloc";
        break;
      case 3353:
        result = "kDYFEMTL4ComputePipelineState_functionHandleWithBinaryFunction";
        break;
      case 3354:
        result = "kDYFEMTL4ComputePipelineState_functionHandleWithFunction";
        break;
      case 3355:
        result = "kDYFEMTL4ComputePipelineState_functionHandleWithName";
        break;
      case 3356:
        result = "kDYFEMTL4ComputePipelineState_getComputeKernelTelemetryID";
        break;
      case 3357:
        result = "kDYFEMTL4ComputePipelineState_imageblockMemoryLengthForDimensions";
        break;
      case 3358:
        result = "kDYFEMTL4ComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions_error";
        break;
      case 3359:
        result = "kDYFEMTL4ComputePipelineState_newIntersectionFunctionTableWithDescriptor";
        break;
      case 3360:
        result = "kDYFEMTL4ComputePipelineState_newVisibleFunctionTableWithDescriptor";
        break;
      case 3361:
        result = "kDYFEMTL4PipelineDataSetSerializer_dealloc";
        break;
      case 3362:
        result = "kDYFEMTL4PipelineDataSetSerializer_serializeAsArchiveAndFlushToURL_error";
        break;
      case 3363:
        result = "kDYFEMTL4PipelineDataSetSerializer_serializeAsPipelinesScriptWithError";
        break;
      case 3364:
        result = "kDYFEMTL4RenderCommandEncoder_setLabel";
        break;
      case 3365:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_scope";
        break;
      case 3366:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterQueueStages_beforeStages_scope";
        break;
      case 3367:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterStages_beforeQueueStages_scope";
        break;
      case 3368:
        result = "kDYFEMTL4RenderCommandEncoder_barrierUpdate_afterEncoderStages_scope";
        break;
      case 3369:
        result = "kDYFEMTL4RenderCommandEncoder_barrierUpdate_afterQueueStages_scope";
        break;
      case 3370:
        result = "kDYFEMTL4RenderCommandEncoder_barrierWait_beforeEncoderStages_scope";
        break;
      case 3371:
        result = "kDYFEMTL4RenderCommandEncoder_barrierWait_beforeQueueStages_scope";
        break;
      case 3372:
        result = "kDYFEMTL4RenderCommandEncoder_dealloc";
        break;
      case 3373:
        result = "kDYFEMTL4RenderCommandEncoder_dispatchThreadsPerTile";
        break;
      case 3374:
        result = "kDYFEMTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength";
        break;
      case 3375:
        result = "kDYFEMTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength_instanceCount";
        break;
      case 3376:
        result = "kDYFEMTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength_instanceCount_baseVertex_baseInstance";
        break;
      case 3377:
        result = "kDYFEMTL4RenderCommandEncoder_drawIndexedPrimitives_indexType_indexBuffer_indexBufferLength_indirectBuffer";
        break;
      case 3378:
        result = "kDYFEMTL4RenderCommandEncoder_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3379:
        result = "kDYFEMTL4RenderCommandEncoder_drawMeshThreadgroupsWithIndirectBuffer_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3380:
        result = "kDYFEMTL4RenderCommandEncoder_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup";
        break;
      case 3381:
        result = "kDYFEMTL4RenderCommandEncoder_drawPrimitives_indirectBuffer";
        break;
      case 3382:
        result = "kDYFEMTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount";
        break;
      case 3383:
        result = "kDYFEMTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount";
        break;
      case 3384:
        result = "kDYFEMTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance";
        break;
      case 3385:
        result = "kDYFEMTL4RenderCommandEncoder_endEncoding";
        break;
      case 3386:
        result = "kDYFEMTL4RenderCommandEncoder_executeCommandsInBuffer_indirectBuffer";
        break;
      case 3387:
        result = "kDYFEMTL4RenderCommandEncoder_executeCommandsInBuffer_withRange";
        break;
      case 3388:
        result = "kDYFEMTL4RenderCommandEncoder_insertDebugSignpost";
        break;
      case 3389:
        result = "kDYFEMTL4RenderCommandEncoder_popDebugGroup";
        break;
      case 3390:
        result = "kDYFEMTL4RenderCommandEncoder_pushDebugGroup";
        break;
      case 3391:
        result = "kDYFEMTL4RenderCommandEncoder_setArgumentTable_atStages";
        break;
      case 3392:
        result = "kDYFEMTL4RenderCommandEncoder_setBlendColorRed_green_blue_alpha";
        break;
      case 3393:
        result = "kDYFEMTL4RenderCommandEncoder_setColorStoreAction_atIndex";
        break;
      case 3394:
        result = "kDYFEMTL4RenderCommandEncoder_setCullMode";
        break;
      case 3395:
        result = "kDYFEMTL4RenderCommandEncoder_setDepthBias_slopeScale_clamp";
        break;
      case 3396:
        result = "kDYFEMTL4RenderCommandEncoder_setDepthClipMode";
        break;
      case 3397:
        result = "kDYFEMTL4RenderCommandEncoder_setDepthStencilState";
        break;
      case 3398:
        result = "kDYFEMTL4RenderCommandEncoder_setDepthStoreAction";
        break;
      case 3399:
        result = "kDYFEMTL4RenderCommandEncoder_setFrontFacingWinding";
        break;
      case 3400:
        result = "kDYFEMTL4RenderCommandEncoder_setLineWidth";
        break;
      case 3401:
        result = "kDYFEMTL4RenderCommandEncoder_setObjectThreadgroupMemoryLength_atIndex";
        break;
      case 3402:
        result = "kDYFEMTL4RenderCommandEncoder_setRenderPipelineState";
        break;
      case 3403:
        result = "kDYFEMTL4RenderCommandEncoder_setColorAttachmentMap";
        break;
      case 3404:
        result = "kDYFEMTL4RenderCommandEncoder_setScissorRect";
        break;
      case 3405:
        result = "kDYFEMTL4RenderCommandEncoder_setScissorRects_count";
        break;
      case 3406:
        result = "kDYFEMTL4RenderCommandEncoder_setStencilFrontReferenceValue_backReferenceValue";
        break;
      case 3407:
        result = "kDYFEMTL4RenderCommandEncoder_setStencilReferenceValue";
        break;
      case 3408:
        result = "kDYFEMTL4RenderCommandEncoder_setStencilStoreAction";
        break;
      case 3409:
        result = "kDYFEMTL4RenderCommandEncoder_setThreadgroupMemoryLength_offset_atIndex";
        break;
      case 3410:
        result = "kDYFEMTL4RenderCommandEncoder_setTriangleFillMode";
        break;
      case 3411:
        result = "kDYFEMTL4RenderCommandEncoder_setVertexAmplificationCount_viewMappings";
        break;
      case 3412:
        result = "kDYFEMTL4RenderCommandEncoder_setViewport";
        break;
      case 3413:
        result = "kDYFEMTL4RenderCommandEncoder_setViewports_count";
        break;
      case 3414:
        result = "kDYFEMTL4RenderCommandEncoder_setVisibilityResultMode_offset";
        break;
      case 3415:
        result = "kDYFEMTL4RenderCommandEncoder_updateFence_afterEncoderStages";
        break;
      case 3416:
        result = "kDYFEMTL4RenderCommandEncoder_waitForFence_beforeEncoderStages";
        break;
      case 3417:
        result = "kDYFEMTL4RenderPipelineState_setEmulationMeshMaxPrimitiveCount";
        break;
      case 3418:
        result = "kDYFEMTL4RenderPipelineState_setEmulationMeshMaxVertexCount";
        break;
      case 3419:
        result = "kDYFEMTL4RenderPipelineState_setEmulationMeshShaderIntermediateBufferSlot";
        break;
      case 3420:
        result = "kDYFEMTL4RenderPipelineState_setEmulationMeshShaderPSO";
        break;
      case 3421:
        result = "kDYFEMTL4RenderPipelineState_setEmulationMeshSize";
        break;
      case 3422:
        result = "kDYFEMTL4RenderPipelineState_setEmulationObjectShaderIntermediateBufferSlot";
        break;
      case 3423:
        result = "kDYFEMTL4RenderPipelineState_setEmulationObjectShaderPSO";
        break;
      case 3424:
        result = "kDYFEMTL4RenderPipelineState_setEmulationPayloadMemoryLength";
        break;
      case 3425:
        result = "kDYFEMTL4RenderPipelineState_setEmulationPrimitiveTopology";
        break;
      case 3426:
        result = "kDYFEMTL4RenderPipelineState_setEmulationVertexShaderIntermediateBufferSlot";
        break;
      case 3427:
        result = "kDYFEMTL4RenderPipelineState_setUsesMeshShaderEmulation";
        break;
      case 3428:
        result = "kDYFEMTL4RenderPipelineState_dealloc";
        break;
      case 3429:
        result = "kDYFEMTL4RenderPipelineState_fragmentFunctionHandleWithFunction";
        break;
      case 3430:
        result = "kDYFEMTL4RenderPipelineState_functionHandleWithBinaryFunction_stage";
        break;
      case 3431:
        result = "kDYFEMTL4RenderPipelineState_functionHandleWithFunction_stage";
        break;
      case 3432:
        result = "kDYFEMTL4RenderPipelineState_functionHandleWithName_stage";
        break;
      case 3433:
        result = "kDYFEMTL4RenderPipelineState_getFragmentShaderTelemetryID";
        break;
      case 3434:
        result = "kDYFEMTL4RenderPipelineState_getVertexShaderTelemetryID";
        break;
      case 3435:
        result = "kDYFEMTL4RenderPipelineState_imageblockMemoryLengthForDimensions";
        break;
      case 3436:
        result = "kDYFEMTL4RenderPipelineState_meshFunctionHandleWithFunction";
        break;
      case 3437:
        result = "kDYFEMTL4RenderPipelineState_newFragmentIntersectionFunctionTableWithDescriptor";
        break;
      case 3438:
        result = "kDYFEMTL4RenderPipelineState_newFragmentShaderDebugInfo";
        break;
      case 3439:
        result = "kDYFEMTL4RenderPipelineState_newIntersectionFunctionTableWithDescriptor_stage";
        break;
      case 3440:
        result = "kDYFEMTL4RenderPipelineState_newMeshIntersectionFunctionTableWithDescriptor";
        break;
      case 3441:
        result = "kDYFEMTL4RenderPipelineState_newObjectIntersectionFunctionTableWithDescriptor";
        break;
      case 3442:
        result = "kDYFEMTL4RenderPipelineState_newRenderPipelineDescriptorForSpecialization";
        break;
      case 3443:
        result = "kDYFEMTL4RenderPipelineState_newRenderPipelineStateWithAdditionalBinaryFunctions_error";
        break;
      case 3444:
        result = "kDYFEMTL4RenderPipelineState_newRenderPipelineStateWithAdditionalBinaryFunctions_fragmentAdditionalBinaryFunctions_error";
        break;
      case 3445:
        result = "kDYFEMTL4RenderPipelineState_newTileIntersectionFunctionTableWithDescriptor";
        break;
      case 3446:
        result = "kDYFEMTL4RenderPipelineState_newTileRenderPipelineStateWithAdditionalBinaryFunctions_error";
        break;
      case 3447:
        result = "kDYFEMTL4RenderPipelineState_newVertexIntersectionFunctionTableWithDescriptor";
        break;
      case 3448:
        result = "kDYFEMTL4RenderPipelineState_newVertexShaderDebugInfo";
        break;
      case 3449:
        result = "kDYFEMTL4RenderPipelineState_newVisibleFunctionTableFromFragmentStageWithDescriptor";
        break;
      case 3450:
        result = "kDYFEMTL4RenderPipelineState_newVisibleFunctionTableFromMeshStageWithDescriptor";
        break;
      case 3451:
        result = "kDYFEMTL4RenderPipelineState_newVisibleFunctionTableFromObjectStageWithDescriptor";
        break;
      case 3452:
        result = "kDYFEMTL4RenderPipelineState_newVisibleFunctionTableFromTileStageWithDescriptor";
        break;
      case 3453:
        result = "kDYFEMTL4RenderPipelineState_newVisibleFunctionTableFromVertexStageWithDescriptor";
        break;
      case 3454:
        result = "kDYFEMTL4RenderPipelineState_newVisibleFunctionTableWithDescriptor_stage";
        break;
      case 3455:
        result = "kDYFEMTL4RenderPipelineState_objectFunctionHandleWithFunction";
        break;
      case 3456:
        result = "kDYFEMTL4RenderPipelineState_reflectionForFunctionDescriptor";
        break;
      case 3457:
        result = "kDYFEMTL4RenderPipelineState_tileFunctionHandleWithFunction";
        break;
      case 3458:
        result = "kDYFEMTL4RenderPipelineState_vertexFunctionHandleWithFunction";
        break;
      case 3459:
        result = "kDYFEMTLTextureViewPool_copyResourceStatesFromPool_sourceRange_destinationIndex";
        break;
      case 3460:
        result = "kDYFEMTLTextureViewPool_dealloc";
        break;
      case 3461:
        result = "kDYFEMTLTextureViewPool_setBufferView_descriptor_offset_bytesPerRow_atIndex";
        break;
      case 3462:
        result = "kDYFEMTLTextureViewPool_setTextureView_atIndex";
        break;
      case 3463:
        result = "kDYFEMTLTextureViewPool_setTextureView_descriptor_atIndex";
        break;
      case 3464:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3465:
        result = "kDYFEMTLAccelerationStructureCommandEncoder_insertSplit";
        break;
      case 3466:
        result = "kDYFEMTLBlitCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3467:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTensor_sourceSlice_toTensor_destinationSlice";
        break;
      case 3468:
        result = "kDYFEMTLBlitCommandEncoder_insertSplit";
        break;
      case 3469:
        result = "kDYFEMTLComputeCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3470:
        result = "kDYFEMTLComputeCommandEncoder_insertSplit";
        break;
      case 3471:
        result = "kDYFEMTLDevice_functionHandleWithFunction_resourceIndex";
        break;
      case 3472:
        result = "kDYFEMTLDevice_newTensorWithBuffer_descriptor_offset_strides_error";
        break;
      case 3473:
        result = "kDYFEMTLDevice_newTensorWithDescriptor_error";
        break;
      case 3474:
        result = "kDYFEMTLDevice_newTensorWithIOSurface_descriptor_plane_offset_strides_error";
        break;
      case 3475:
        result = "kDYFEMTLDevice_tensorSizeAndAlignWithDescriptor";
        break;
      case 3476:
        result = "kDYFEMTLParallelRenderCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3477:
        result = "kDYFEMTLParallelRenderCommandEncoder_insertSplit";
        break;
      case 3478:
        result = "kDYFEMTLRenderCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3479:
        result = "kDYFEMTLRenderCommandEncoder_insertSplit";
        break;
      case 3480:
        result = "kDYFEMTLResourceStateCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3481:
        result = "kDYFEMTLResourceStateCommandEncoder_insertSplit";
        break;
      case 3482:
        result = "kDYFEMTLTensor_setLabel";
        break;
      case 3483:
        result = "kDYFEMTLTensor_setResponsibleProcess";
        break;
      case 3484:
        result = "kDYFEMTLTensor_dealloc";
        break;
      case 3485:
        result = "kDYFEMTLTensor_doesAliasAllResources_count";
        break;
      case 3486:
        result = "kDYFEMTLTensor_doesAliasAnyResources_count";
        break;
      case 3487:
        result = "kDYFEMTLTensor_doesAliasResource";
        break;
      case 3488:
        result = "kDYFEMTLTensor_getBytes_strides_fromSlice";
        break;
      case 3489:
        result = "kDYFEMTLTensor_isAliasable";
        break;
      case 3490:
        result = "kDYFEMTLTensor_isComplete";
        break;
      case 3491:
        result = "kDYFEMTLTensor_isPurgeable";
        break;
      case 3492:
        result = "kDYFEMTLTensor_isTensorViewableWithReshapedDescriptor";
        break;
      case 3493:
        result = "kDYFEMTLTensor_isWriteComplete";
        break;
      case 3494:
        result = "kDYFEMTLTensor_makeAliasable";
        break;
      case 3495:
        result = "kDYFEMTLTensor_newTensorViewWithReshapedDescriptor_error";
        break;
      case 3496:
        result = "kDYFEMTLTensor_newTensorViewWithSlice_error";
        break;
      case 3497:
        result = "kDYFEMTLTensor_replaceSlice_withBytes_strides";
        break;
      case 3498:
        result = "kDYFEMTLTensor_setOwnerWithIdentity";
        break;
      case 3499:
        result = "kDYFEMTLTensor_setPurgeableState";
        break;
      case 3500:
        result = "kDYFEMTLTensor_waitUntilComplete";
        break;
      case 3501:
        result = "kDYFEMTLTensorBinding_dealloc";
        break;
      case 3502:
        result = "kDYFEMTLVideoCommandEncoder_barrierAfterQueueStages_beforeStages";
        break;
      case 3503:
        result = "kDYFEMTLVideoCommandEncoder_insertSplit";
        break;
      case 3504:
        result = "kDYFEMTLIndirectRenderCommand_setBlendColorRed_green_blue_alpha";
        break;
      case 3505:
        result = "kDYFEMTLIndirectRenderCommand_setCullMode";
        break;
      case 3506:
        result = "kDYFEMTLIndirectRenderCommand_setDepthBias_slopeScale_clamp";
        break;
      case 3507:
        result = "kDYFEMTLIndirectRenderCommand_setDepthClipMode";
        break;
      case 3508:
        result = "kDYFEMTLIndirectRenderCommand_setDepthStencilState";
        break;
      case 3509:
        result = "kDYFEMTLIndirectRenderCommand_setDepthTestMinBound_maxBound";
        break;
      case 3510:
        result = "kDYFEMTLIndirectRenderCommand_setFrontFacingWinding";
        break;
      case 3511:
        result = "kDYFEMTLIndirectRenderCommand_setScissorRect";
        break;
      case 3512:
        result = "kDYFEMTLIndirectRenderCommand_setScissorRects_count";
        break;
      case 3513:
        result = "kDYFEMTLIndirectRenderCommand_setStencilFrontReferenceValue_backReferenceValue";
        break;
      case 3514:
        result = "kDYFEMTLIndirectRenderCommand_setStencilReferenceValue";
        break;
      case 3515:
        result = "kDYFEMTLIndirectRenderCommand_setTriangleFillMode";
        break;
      case 3516:
        result = "kDYFEMTLIndirectRenderCommand_setViewport";
        break;
      case 3517:
        result = "kDYFEMTLIndirectRenderCommand_setViewports_count";
        break;
      case 3518:
        result = "kDYFEMTLRenderCommandEncoder_setDepthTestMinBound_maxBound";
        break;
      case 3519:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_options";
        break;
      case 3520:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterQueueStages_beforeStages_options";
        break;
      case 3521:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterStages_beforeQueueStages_options";
        break;
      case 3522:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_options";
        break;
      case 3523:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterQueueStages_beforeStages_options";
        break;
      case 3524:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterStages_beforeQueueStages_options";
        break;
      case 3525:
        result = "kDYFEMTL4CommandBuffer_setLabel";
        break;
      case 3526:
        result = "kDYFEMTL4CommandQueue_waitForEvent_value_error";
        break;
      case 3527:
        result = "kDYFEMTL4MachineLearningCommandEncoder_setLabel";
        break;
      case 3528:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_options";
        break;
      case 3529:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_scope";
        break;
      case 3530:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterQueueStages_beforeStages_options";
        break;
      case 3531:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterQueueStages_beforeStages_scope";
        break;
      case 3532:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterStages_beforeQueueStages_options";
        break;
      case 3533:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterStages_beforeQueueStages_scope";
        break;
      case 3534:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierUpdate_afterEncoderStages_scope";
        break;
      case 3535:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierUpdate_afterQueueStages_scope";
        break;
      case 3536:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierWait_beforeEncoderStages_scope";
        break;
      case 3537:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierWait_beforeQueueStages_scope";
        break;
      case 3538:
        result = "kDYFEMTL4MachineLearningCommandEncoder_dealloc";
        break;
      case 3539:
        result = "kDYFEMTL4MachineLearningCommandEncoder_dispatchNetworkWithIntermediatesHeap";
        break;
      case 3540:
        result = "kDYFEMTL4MachineLearningCommandEncoder_endEncoding";
        break;
      case 3541:
        result = "kDYFEMTL4MachineLearningCommandEncoder_insertDebugSignpost";
        break;
      case 3542:
        result = "kDYFEMTL4MachineLearningCommandEncoder_popDebugGroup";
        break;
      case 3543:
        result = "kDYFEMTL4MachineLearningCommandEncoder_pushDebugGroup";
        break;
      case 3544:
        result = "kDYFEMTL4MachineLearningCommandEncoder_setArgumentTable";
        break;
      case 3545:
        result = "kDYFEMTL4MachineLearningCommandEncoder_setPipelineState";
        break;
      case 3546:
        result = "kDYFEMTL4MachineLearningCommandEncoder_updateFence_afterEncoderStages";
        break;
      case 3547:
        result = "kDYFEMTL4MachineLearningCommandEncoder_waitForFence_beforeEncoderStages";
        break;
      case 3548:
        result = "kDYFEMTL4CommandBuffer_machineLearningCommandEncoder";
        break;
      case 3549:
        result = "kDYFEMTLComputePipelineState_functionHandleWithBinaryFunction";
        break;
      case 3550:
        result = "kDYFEMTLComputePipelineState_functionHandleWithName";
        break;
      case 3551:
        result = "kDYFEMTLRenderPipelineState_functionHandleWithBinaryFunction_stage";
        break;
      case 3552:
        result = "kDYFEMTLRenderPipelineState_functionHandleWithName_stage";
        break;
      case 3553:
        result = "kDYFEMTL4Archive_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_error";
        break;
      case 3554:
        result = "kDYFEMTL4Archive_newComputePipelineStateWithName_dynamicLinkingDescriptor_error";
        break;
      case 3555:
        result = "kDYFEMTL4Archive_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_error";
        break;
      case 3556:
        result = "kDYFEMTL4Archive_newRenderPipelineStateWithName_dynamicLinkingDescriptor_error";
        break;
      case 3557:
        result = "kDYFEMTL4CommandBuffer_resolveCounterHeap_withRange_intoBuffer_atOffset_waitFence_updateFence";
        break;
      case 3558:
        result = "kDYFEMTL4CommandBuffer_writeTimestampIntoHeap_atIndex";
        break;
      case 3559:
        result = "kDYFEMTL4CommandQueue_signalDrawable_error";
        break;
      case 3560:
        result = "kDYFEMTL4CommandQueue_waitForDrawable_error";
        break;
      case 3561:
        result = "kDYFEMTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler";
        break;
      case 3562:
        result = "kDYFEMTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error";
        break;
      case 3563:
        result = "kDYFEMTL4Compiler_newMachineLearningPipelineStateWithDescriptor_completionHandler";
        break;
      case 3564:
        result = "kDYFEMTL4Compiler_newMachineLearningPipelineStateWithDescriptor_error";
        break;
      case 3565:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error";
        break;
      case 3566:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateWithDescriptor_linkingDescriptor_compilerTaskOptions_completionHandler";
        break;
      case 3567:
        result = "kDYFEMTL4ComputeCommandEncoder_commandBatchIdOffset";
        break;
      case 3568:
        result = "kDYFEMTL4ComputeCommandEncoder_commandBatchIdRangeMin_max";
        break;
      case 3569:
        result = "kDYFEMTL4ComputeCommandEncoder_setToolsDispatchBufferSPI_atIndex";
        break;
      case 3570:
        result = "kDYFEMTL4ComputeCommandEncoder_writeTimestampWithGranularity_intoHeap_atIndex";
        break;
      case 3571:
        result = "kDYFEMTL4MachineLearningCommandEncoder_commandBatchIdOffset";
        break;
      case 3572:
        result = "kDYFEMTL4MachineLearningCommandEncoder_commandBatchIdRangeMin_max";
        break;
      case 3573:
        result = "kDYFEMTL4RenderCommandEncoder_commandBatchIdOffset";
        break;
      case 3574:
        result = "kDYFEMTL4RenderCommandEncoder_commandBatchIdRangeMin_max";
        break;
      case 3575:
        result = "kDYFEMTL4RenderCommandEncoder_setToolsDispatchBufferSPI_atIndex_stages";
        break;
      case 3576:
        result = "kDYFEMTL4RenderCommandEncoder_writeTimestampWithGranularity_afterStage_intoHeap_atIndex";
        break;
      case 3577:
        result = "kDYFEMTLTextureViewPool_copyResourceViewsFromPool_sourceRange_destinationIndex";
        break;
      case 3578:
        result = "kDYFEMTLComputeCommandEncoder_setToolsDispatchBufferSPI_atIndex";
        break;
      case 3579:
        result = "kDYFEMTLDevice_newCounterHeapWithDescriptor_error";
        break;
      case 3580:
        result = "kDYFEMTLDevice_queryTimestampFrequency";
        break;
      case 3581:
        result = "kDYFEMTLDevice_sizeOfCounterHeapEntry";
        break;
      case 3582:
        result = "kDYFEMTLLibrary_reflectionForFunctionWithName";
        break;
      case 3583:
        result = "kDYFEMTLRenderCommandEncoder_setColorAttachmentMap";
        break;
      case 3584:
        result = "kDYFEMTL4ArgumentTable_setAddress_attributeStride_atIndex";
        break;
      case 3585:
        result = "kDYFEMTL4CommandQueue_commit_count";
        break;
      case 3586:
        result = "kDYFEMTL4CommandQueue_commit_count_options";
        break;
      case 3587:
        result = "kDYFEMTL4CommandQueue_signalDrawable";
        break;
      case 3588:
        result = "kDYFEMTL4CommandQueue_signalEvent_value";
        break;
      case 3589:
        result = "kDYFEMTL4CommandQueue_waitForDrawable";
        break;
      case 3590:
        result = "kDYFEMTL4CommandQueue_waitForEvent_value";
        break;
      case 3591:
        result = "kDYFEMTL4ComputeCommandEncoder_stages";
        break;
      case 3592:
        result = "kDYFEMTLBuffer_newTensorWithDescriptor_offset_error";
        break;
      case 3593:
        result = "kDYFEMTLComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions_resourceIndices_error";
        break;
      case 3594:
        result = "kDYFEMTLDevice_mtlTensorFromGpuResourceID";
        break;
      case 3595:
        result = "kDYFEMTLIndirectRenderCommand_setToolsDispatchBufferSPI_atIndex_stages";
        break;
      case 3596:
        result = "kDYFEMTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler";
        break;
      case 3597:
        result = "kDYFEMTLDevice_functionHandleWithFunction";
        break;
      case 3598:
        result = "kDYFEMTLDevice_newMTL4CommandQueueWithDescriptor_error";
        break;
      case 3599:
        result = "kDYFEMTL4CommandQueue_commit_count_options_error";
        break;
      case 3600:
        result = "kDYFEMTL4ComputeCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer";
        break;
      case 3601:
        result = "kDYFEMTL4ComputeCommandEncoder_copyAccelerationStructure_toAccelerationStructure";
        break;
      case 3602:
        result = "kDYFEMTL4ComputeCommandEncoder_copyAndCompactAccelerationStructure_toAccelerationStructure";
        break;
      case 3603:
        result = "kDYFEMTL4ComputeCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer";
        break;
      case 3604:
        result = "kDYFEMTL4ComputeCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_options";
        break;
      case 3605:
        result = "kDYFEMTL4ComputeCommandEncoder_writeAccelerationStructureTraversalDepth_toBuffer";
        break;
      case 3606:
        result = "kDYFEMTL4ComputeCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer";
        break;
      case 3607:
        result = "kDYFEMTL4MachineLearningPipelineState_dealloc";
        break;
      case 3608:
        result = "kDYFEMTL4Archive_newBinaryFunctionWithDescriptor_functionType_error";
        break;
      case 3609:
        result = "kDYFEMTL4CommandQueue_copyBufferMappingsFromBuffer_toBuffer_operations_count";
        break;
      case 3610:
        result = "kDYFEMTL4CommandQueue_copyTextureMappingsFromTexture_toTexture_operations_count";
        break;
      case 3611:
        result = "kDYFEMTL4CommandQueue_updateBufferMappings_heap_operations_count";
        break;
      case 3612:
        result = "kDYFEMTL4CommandQueue_updateTextureMappings_heap_operations_count";
        break;
      case 3613:
        result = "kDYFEMTL4Compiler_newBinaryFunctionWithDescriptor_functionType_compilerTaskOptions_completionHandler";
        break;
      case 3614:
        result = "kDYFEMTL4Compiler_newBinaryFunctionWithDescriptor_functionType_compilerTaskOptions_error";
        break;
      case 3615:
        result = "kDYFEMTL4Archive_newBinaryFunctionWithDescriptor_error";
        break;
      case 3616:
        result = "kDYFEMTL4CompilerTask_waitUntilCompleted";
        break;
      case 3617:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions";
        break;
      case 3618:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions";
        break;
      case 3619:
        result = "kDYFEMTL4ComputeCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions";
        break;
      case 3620:
        result = "kDYFEMTL4ComputeCommandEncoder_copyFromTensor_sourceOrigin_sourceDimensions_toTensor_destinationOrigin_destinationDimensions";
        break;
      case 3621:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions";
        break;
      case 3622:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions";
        break;
      case 3623:
        result = "kDYFEMTL4MachineLearningCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions";
        break;
      case 3624:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions";
        break;
      case 3625:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions";
        break;
      case 3626:
        result = "kDYFEMTL4RenderCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions";
        break;
      case 3627:
        result = "kDYFEMTL4RenderCommandEncoder_setDepthTestMinBound_maxBound";
        break;
      case 3628:
        result = "kDYFEMTLBlitCommandEncoder_copyFromTensor_sourceOrigin_sourceDimensions_toTensor_destinationOrigin_destinationDimensions";
        break;
      case 3629:
        result = "kDYFEMTLTensor_replaceSliceOrigin_sliceDimensions_withBytes_strides";
        break;
      case 3630:
        result = "kDYFEMTLTextureViewPool_setTextureViewFromBuffer_descriptor_offset_bytesPerRow_atIndex";
        break;
      case 3631:
        result = "kDYFEMTLTexture_newTextureViewWithDescriptor";
        break;
      case 3632:
        result = "kDYFEMTLCommandBuffer___waitUntilCompletedAsync";
        break;
      case 3633:
        result = "kDYFEMTLCommandBuffer___waitUntilScheduledAsync";
        break;
      case 3634:
        result = "kDYFEMTL4CommandBuffer_resolveCounterHeap_withRange_intoBuffer_waitFence_updateFence";
        break;
      case 3635:
        result = "kDYFEMTLDevice_setRequiresLegacyCompilerProcessesCount";
        break;
      case 3636:
        result = "kDYFEMTLDevice_defaultCompilerProcessesCount";
        break;
      case 3637:
        result = "kDYFEMTLDevice_maximumCompilerProcessesCount";
        break;
      case 3638:
        result = "kDYFEMTLDevice_threadsPerCompilerProcess";
        break;
      default:
        switch("kDYFEMTLBlitCommandEncoder_setLabel")
        {
          case 0xFFFFB000:
            result = "kDYFEMTLFXSpatialScaler_setColorTexture";
            break;
          case 0xFFFFB001:
            result = "kDYFEMTLFXSpatialScaler_setFence";
            break;
          case 0xFFFFB002:
            result = "kDYFEMTLFXSpatialScaler_setInputContentHeight";
            break;
          case 0xFFFFB003:
            result = "kDYFEMTLFXSpatialScaler_setInputContentWidth";
            break;
          case 0xFFFFB004:
            result = "kDYFEMTLFXSpatialScaler_setOutputTexture";
            break;
          case 0xFFFFB005:
            result = "kDYFEMTLFXSpatialScaler_dealloc";
            break;
          case 0xFFFFB006:
            result = "kDYFEMTLFXSpatialScaler_encodeToCommandBuffer";
            break;
          case 0xFFFFB007:
            result = "kDYFEMTLFXTemporalScaler_setColorTexture";
            break;
          case 0xFFFFB008:
            result = "kDYFEMTLFXTemporalScaler_setDepthReversed";
            break;
          case 0xFFFFB009:
            result = "kDYFEMTLFXTemporalScaler_setDepthTexture";
            break;
          case 0xFFFFB00A:
            result = "kDYFEMTLFXTemporalScaler_setExposureTexture";
            break;
          case 0xFFFFB00B:
            result = "kDYFEMTLFXTemporalScaler_setFence";
            break;
          case 0xFFFFB00C:
            result = "kDYFEMTLFXTemporalScaler_setInputContentHeight";
            break;
          case 0xFFFFB00D:
            result = "kDYFEMTLFXTemporalScaler_setInputContentWidth";
            break;
          case 0xFFFFB00E:
            result = "kDYFEMTLFXTemporalScaler_setJitterOffsetX";
            break;
          case 0xFFFFB00F:
            result = "kDYFEMTLFXTemporalScaler_setJitterOffsetY";
            break;
          case 0xFFFFB010:
            result = "kDYFEMTLFXTemporalScaler_setMotionTexture";
            break;
          case 0xFFFFB011:
            result = "kDYFEMTLFXTemporalScaler_setMotionVectorScaleX";
            break;
          case 0xFFFFB012:
            result = "kDYFEMTLFXTemporalScaler_setMotionVectorScaleY";
            break;
          case 0xFFFFB013:
            result = "kDYFEMTLFXTemporalScaler_setOutputTexture";
            break;
          case 0xFFFFB014:
            result = "kDYFEMTLFXTemporalScaler_setPreExposure";
            break;
          case 0xFFFFB015:
            result = "kDYFEMTLFXTemporalScaler_setReset";
            break;
          case 0xFFFFB016:
            result = "kDYFEMTLFXTemporalScaler_dealloc";
            break;
          case 0xFFFFB017:
            result = "kDYFEMTLFXTemporalScaler_encodeToCommandBuffer";
            break;
          case 0xFFFFB018:
            result = "kDYFEMTLFXTemporalScaler_setReactiveMaskTexture";
            break;
          case 0xFFFFB019:
            result = "kDYFEMTLFXFrameInterpolator_setColorTexture";
            break;
          case 0xFFFFB01A:
            result = "kDYFEMTLFXFrameInterpolator_setDepthTexture";
            break;
          case 0xFFFFB01B:
            result = "kDYFEMTLFXFrameInterpolator_setFence";
            break;
          case 0xFFFFB01C:
            result = "kDYFEMTLFXFrameInterpolator_setMotionTexture";
            break;
          case 0xFFFFB01D:
            result = "kDYFEMTLFXFrameInterpolator_setMotionVectorScaleX";
            break;
          case 0xFFFFB01E:
            result = "kDYFEMTLFXFrameInterpolator_setMotionVectorScaleY";
            break;
          case 0xFFFFB01F:
            result = "kDYFEMTLFXFrameInterpolator_setOutputTexture";
            break;
          case 0xFFFFB020:
            result = "kDYFEMTLFXFrameInterpolator_setPrevColorTexture";
            break;
          case 0xFFFFB021:
            result = "kDYFEMTLFXFrameInterpolator_setReset";
            break;
          case 0xFFFFB022:
            result = "kDYFEMTLFXFrameInterpolator_dealloc";
            break;
          case 0xFFFFB023:
            result = "kDYFEMTLFXFrameInterpolator_encodeToCommandBuffer";
            break;
          case 0xFFFFB024:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setColorTexture";
            break;
          case 0xFFFFB025:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setDepthReversed";
            break;
          case 0xFFFFB026:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setDepthTexture";
            break;
          case 0xFFFFB027:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setDiffuseAlbedoTexture";
            break;
          case 0xFFFFB028:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setExposureTexture";
            break;
          case 0xFFFFB029:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setFence";
            break;
          case 0xFFFFB02A:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setInputContentHeight";
            break;
          case 0xFFFFB02B:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setInputContentWidth";
            break;
          case 0xFFFFB02C:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setJitterOffsetX";
            break;
          case 0xFFFFB02D:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setJitterOffsetY";
            break;
          case 0xFFFFB02E:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setMotionTexture";
            break;
          case 0xFFFFB02F:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setMotionVectorScaleX";
            break;
          case 0xFFFFB030:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setMotionVectorScaleY";
            break;
          case 0xFFFFB031:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setNormalTexture";
            break;
          case 0xFFFFB032:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setOutputTexture";
            break;
          case 0xFFFFB033:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setPreExposure";
            break;
          case 0xFFFFB034:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setReactiveMaskTexture";
            break;
          case 0xFFFFB035:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setReset";
            break;
          case 0xFFFFB036:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setRoughnessTexture";
            break;
          case 0xFFFFB037:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setSpecularAlbedoTexture";
            break;
          case 0xFFFFB038:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setSpecularHitDistanceTexture";
            break;
          case 0xFFFFB039:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setViewToClipMatrix";
            break;
          case 0xFFFFB03A:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setWorldToViewMatrix";
            break;
          case 0xFFFFB03B:
            result = "kDYFEMTLFXTemporalDenoisedScaler_dealloc";
            break;
          case 0xFFFFB03C:
            result = "kDYFEMTLFXTemporalDenoisedScaler_encodeToCommandBuffer";
            break;
          case 0xFFFFB03D:
            result = "kDYFEMTL4FXFrameInterpolator_setColorTexture";
            break;
          case 0xFFFFB03E:
            result = "kDYFEMTL4FXFrameInterpolator_setDepthReversed";
            break;
          case 0xFFFFB03F:
            result = "kDYFEMTL4FXFrameInterpolator_setDepthTexture";
            break;
          case 0xFFFFB040:
            result = "kDYFEMTL4FXFrameInterpolator_setFence";
            break;
          case 0xFFFFB041:
            result = "kDYFEMTL4FXFrameInterpolator_setMaskTexture";
            break;
          case 0xFFFFB042:
            result = "kDYFEMTL4FXFrameInterpolator_setMotionTexture";
            break;
          case 0xFFFFB043:
            result = "kDYFEMTL4FXFrameInterpolator_setMotionVectorScaleX";
            break;
          case 0xFFFFB044:
            result = "kDYFEMTL4FXFrameInterpolator_setMotionVectorScaleY";
            break;
          case 0xFFFFB045:
            result = "kDYFEMTL4FXFrameInterpolator_setOutputTexture";
            break;
          case 0xFFFFB046:
            result = "kDYFEMTL4FXFrameInterpolator_setOutputTextureBarrierStages";
            break;
          case 0xFFFFB047:
            result = "kDYFEMTL4FXFrameInterpolator_setPrevColorTexture";
            break;
          case 0xFFFFB048:
            result = "kDYFEMTL4FXFrameInterpolator_setReset";
            break;
          case 0xFFFFB049:
            result = "kDYFEMTL4FXFrameInterpolator_dealloc";
            break;
          case 0xFFFFB04A:
            result = "kDYFEMTL4FXFrameInterpolator_encodeToCommandBuffer";
            break;
          case 0xFFFFB04B:
            result = "kDYFEMTL4FXSpatialScaler_setColorTexture";
            break;
          case 0xFFFFB04C:
            result = "kDYFEMTL4FXSpatialScaler_setFence";
            break;
          case 0xFFFFB04D:
            result = "kDYFEMTL4FXSpatialScaler_setInputContentHeight";
            break;
          case 0xFFFFB04E:
            result = "kDYFEMTL4FXSpatialScaler_setInputContentWidth";
            break;
          case 0xFFFFB04F:
            result = "kDYFEMTL4FXSpatialScaler_setOutputTexture";
            break;
          case 0xFFFFB050:
            result = "kDYFEMTL4FXSpatialScaler_setOutputTextureBarrierStages";
            break;
          case 0xFFFFB051:
            result = "kDYFEMTL4FXSpatialScaler_dealloc";
            break;
          case 0xFFFFB052:
            result = "kDYFEMTL4FXSpatialScaler_encodeToCommandBuffer";
            break;
          case 0xFFFFB053:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setColorTexture";
            break;
          case 0xFFFFB054:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setDenoiseStrengthMaskTexture";
            break;
          case 0xFFFFB055:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setDepthReversed";
            break;
          case 0xFFFFB056:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setDepthTexture";
            break;
          case 0xFFFFB057:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setDiffuseAlbedoTexture";
            break;
          case 0xFFFFB058:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setExposureTexture";
            break;
          case 0xFFFFB059:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setFence";
            break;
          case 0xFFFFB05A:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setInputContentHeight";
            break;
          case 0xFFFFB05B:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setInputContentWidth";
            break;
          case 0xFFFFB05C:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setJitterOffsetX";
            break;
          case 0xFFFFB05D:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setJitterOffsetY";
            break;
          case 0xFFFFB05E:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setMotionTexture";
            break;
          case 0xFFFFB05F:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setMotionVectorScaleX";
            break;
          case 0xFFFFB060:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setMotionVectorScaleY";
            break;
          case 0xFFFFB061:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setNormalTexture";
            break;
          case 0xFFFFB062:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setOutputTexture";
            break;
          case 0xFFFFB063:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setOutputTextureBarrierStages";
            break;
          case 0xFFFFB064:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setPreExposure";
            break;
          case 0xFFFFB065:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setPreUpscaleComposeTexture";
            break;
          case 0xFFFFB066:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setReactiveMaskTexture";
            break;
          case 0xFFFFB067:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setReset";
            break;
          case 0xFFFFB068:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setRoughnessTexture";
            break;
          case 0xFFFFB069:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setSpecularAlbedoTexture";
            break;
          case 0xFFFFB06A:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setSpecularHitDistanceTexture";
            break;
          case 0xFFFFB06B:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setViewToClipMatrix";
            break;
          case 0xFFFFB06C:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setWorldToViewMatrix";
            break;
          case 0xFFFFB06D:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_dealloc";
            break;
          case 0xFFFFB06E:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_encodeToCommandBuffer";
            break;
          case 0xFFFFB06F:
            result = "kDYFEMTL4FXTemporalScaler_setColorTexture";
            break;
          case 0xFFFFB070:
            result = "kDYFEMTL4FXTemporalScaler_setDepthReversed";
            break;
          case 0xFFFFB071:
            result = "kDYFEMTL4FXTemporalScaler_setDepthTexture";
            break;
          case 0xFFFFB072:
            result = "kDYFEMTL4FXTemporalScaler_setExposureTexture";
            break;
          case 0xFFFFB073:
            result = "kDYFEMTL4FXTemporalScaler_setFence";
            break;
          case 0xFFFFB074:
            result = "kDYFEMTL4FXTemporalScaler_setInputContentHeight";
            break;
          case 0xFFFFB075:
            result = "kDYFEMTL4FXTemporalScaler_setInputContentWidth";
            break;
          case 0xFFFFB076:
            result = "kDYFEMTL4FXTemporalScaler_setJitterOffsetX";
            break;
          case 0xFFFFB077:
            result = "kDYFEMTL4FXTemporalScaler_setJitterOffsetY";
            break;
          case 0xFFFFB078:
            result = "kDYFEMTL4FXTemporalScaler_setMotionTexture";
            break;
          case 0xFFFFB079:
            result = "kDYFEMTL4FXTemporalScaler_setMotionVectorScaleX";
            break;
          case 0xFFFFB07A:
            result = "kDYFEMTL4FXTemporalScaler_setMotionVectorScaleY";
            break;
          case 0xFFFFB07B:
            result = "kDYFEMTL4FXTemporalScaler_setOutputTexture";
            break;
          case 0xFFFFB07C:
            result = "kDYFEMTL4FXTemporalScaler_setOutputTextureBarrierStages";
            break;
          case 0xFFFFB07D:
            result = "kDYFEMTL4FXTemporalScaler_setPreExposure";
            break;
          case 0xFFFFB07E:
            result = "kDYFEMTL4FXTemporalScaler_setReactiveMaskTexture";
            break;
          case 0xFFFFB07F:
            result = "kDYFEMTL4FXTemporalScaler_setReset";
            break;
          case 0xFFFFB080:
            result = "kDYFEMTL4FXTemporalScaler_dealloc";
            break;
          case 0xFFFFB081:
            result = "kDYFEMTL4FXTemporalScaler_encodeToCommandBuffer";
            break;
          case 0xFFFFB082:
            result = "kDYFEMTLFXFrameInterpolator_setDepthReversed";
            break;
          case 0xFFFFB083:
            result = "kDYFEMTLFXFrameInterpolator_setMaskTexture";
            break;
          case 0xFFFFB084:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setDenoiseStrengthMaskTexture";
            break;
          case 0xFFFFB085:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setPreUpscaleComposeTexture";
            break;
          case 0xFFFFB086:
            result = "kDYFEMTLFXTemporalDenoisedScaler_encodeToCommandQueue";
            break;
          case 0xFFFFB087:
            result = "kDYFEMTL4FXFrameInterpolator_setAspectRatio";
            break;
          case 0xFFFFB088:
            result = "kDYFEMTL4FXFrameInterpolator_setDeltaTime";
            break;
          case 0xFFFFB089:
            result = "kDYFEMTL4FXFrameInterpolator_setFarPlane";
            break;
          case 0xFFFFB08A:
            result = "kDYFEMTL4FXFrameInterpolator_setFieldOfView";
            break;
          case 0xFFFFB08B:
            result = "kDYFEMTL4FXFrameInterpolator_setJitterOffsetX";
            break;
          case 0xFFFFB08C:
            result = "kDYFEMTL4FXFrameInterpolator_setJitterOffsetY";
            break;
          case 0xFFFFB08D:
            result = "kDYFEMTL4FXFrameInterpolator_setNearPlane";
            break;
          case 0xFFFFB08E:
            result = "kDYFEMTL4FXFrameInterpolator_setIsUITextureComposited";
            break;
          case 0xFFFFB08F:
            result = "kDYFEMTL4FXFrameInterpolator_setUITexture";
            break;
          case 0xFFFFB090:
            result = "kDYFEMTLFXFrameInterpolator_setAspectRatio";
            break;
          case 0xFFFFB091:
            result = "kDYFEMTLFXFrameInterpolator_setDeltaTime";
            break;
          case 0xFFFFB092:
            result = "kDYFEMTLFXFrameInterpolator_setFarPlane";
            break;
          case 0xFFFFB093:
            result = "kDYFEMTLFXFrameInterpolator_setFieldOfView";
            break;
          case 0xFFFFB094:
            result = "kDYFEMTLFXFrameInterpolator_setJitterOffsetX";
            break;
          case 0xFFFFB095:
            result = "kDYFEMTLFXFrameInterpolator_setJitterOffsetY";
            break;
          case 0xFFFFB096:
            result = "kDYFEMTLFXFrameInterpolator_setNearPlane";
            break;
          case 0xFFFFB097:
            result = "kDYFEMTLFXFrameInterpolator_setIsUITextureComposited";
            break;
          case 0xFFFFB098:
            result = "kDYFEMTLFXFrameInterpolator_setUITexture";
            break;
          case 0xFFFFB099:
            result = "kDYFEMTL4FXFrameInterpolator_setColorTextureBarrierStages";
            break;
          case 0xFFFFB09A:
            result = "kDYFEMTL4FXSpatialScaler_setColorTextureBarrierStages";
            break;
          case 0xFFFFB09B:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setColorTextureBarrierStages";
            break;
          case 0xFFFFB09C:
            result = "kDYFEMTL4FXTemporalScaler_setColorTextureBarrierStages";
            break;
          case 0xFFFFB09D:
            result = "kDYFEMTL4FXFrameInterpolator_setResetHistory";
            break;
          case 0xFFFFB09E:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setResetHistory";
            break;
          case 0xFFFFB09F:
            result = "kDYFEMTLFXFrameInterpolator_setResetHistory";
            break;
          case 0xFFFFB0A0:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setResetHistory";
            break;
          case 0xFFFFB0A1:
            result = "kDYFEMTL4FXFrameInterpolator_setShouldResetHistory";
            break;
          case 0xFFFFB0A2:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setShouldResetHistory";
            break;
          case 0xFFFFB0A3:
            result = "kDYFEMTL4FXTemporalDenoisedScaler_setTransparencyOverlayTexture";
            break;
          case 0xFFFFB0A4:
            result = "kDYFEMTLFXFrameInterpolator_setShouldResetHistory";
            break;
          case 0xFFFFB0A5:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setShouldResetHistory";
            break;
          case 0xFFFFB0A6:
            result = "kDYFEMTLFXTemporalDenoisedScaler_setTransparencyOverlayTexture";
            break;
          default:
            if ("kDYFEMTLBlitCommandEncoder_setLabel" != -12544)
            {
              goto LABEL_76;
            }

            result = "kDYFEMTLCommandQueue_continueCommandBuffer_retainReferences";
            break;
        }

        break;
    }
  }

  return result;
}

uint64_t GTFenum_getReceiverType(int a1)
{
  if (a1 > -12544)
  {
    if (a1 > -6657)
    {
      if (a1 <= -6654)
      {
        if (a1 == -6656 || a1 == -6655)
        {
          return 84;
        }

        v3 = -6654;
LABEL_84:
        if (a1 == v3)
        {
          return 84;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        switch(a1)
        {
          case -6144:
          case -6132:
          case -6130:
          case -6105:
          case -6101:
            result = 10;
            break;
          case -6143:
          case -6141:
          case -6134:
          case -6133:
          case -6131:
          case -6129:
          case -6122:
          case -6119:
          case -6116:
          case -6111:
          case -6110:
          case -6109:
          case -6096:
          case -6095:
LABEL_3:
            result = 36;
            break;
          case -6142:
          case -6126:
          case -6121:
            result = 7;
            break;
          case -6140:
          case -6137:
            result = 11;
            break;
          case -6139:
            result = 15;
            break;
          case -6138:
          case -6135:
          case -6117:
          case -6115:
            result = 8;
            break;
          case -6136:
          case -6120:
          case -6112:
          case -6108:
          case -6106:
            result = 5;
            break;
          case -6128:
          case -6124:
          case -6104:
          case -6103:
            result = 9;
            break;
          case -6127:
          case -6114:
          case -6113:
          case -6107:
            result = 6;
            break;
          case -6125:
          case -6123:
          case -6118:
            result = 4;
            break;
          case -6102:
          case -6100:
            result = 14;
            break;
          case -6099:
          case -6098:
            result = 13;
            break;
          case -6097:
            result = 12;
            break;
          default:
            if (a1 == -6653)
            {
              return 84;
            }

            v3 = -6652;
            goto LABEL_84;
        }
      }
    }

    else
    {
      v2 = a1 + 10240;
      result = 1;
      switch(v2)
      {
        case 0:
        case 11:
        case 15:
LABEL_15:
          result = 25;
          break;
        case 1:
        case 3:
        case 7:
        case 10:
          goto LABEL_3;
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
LABEL_7:
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
LABEL_25:
          result = 22;
          break;
        case 14:
        case 77:
LABEL_71:
          result = 75;
          break;
        case 20:
        case 41:
        case 48:
        case 56:
        case 68:
        case 75:
LABEL_21:
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
LABEL_36:
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
LABEL_47:
          result = 74;
          break;
        case 29:
        case 32:
        case 33:
LABEL_40:
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
LABEL_32:
          result = 16;
          break;
        case 47:
        case 62:
        case 63:
        case 66:
        case 80:
        case 87:
LABEL_35:
          result = 83;
          break;
        case 51:
LABEL_70:
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
LABEL_27:
          result = 60;
          break;
        case 72:
          return result;
        case 82:
        case 85:
        case 86:
LABEL_18:
          result = 17;
          break;
        case 83:
LABEL_50:
          result = 43;
          break;
        case 89:
LABEL_52:
          result = 23;
          break;
        case 90:
        case 91:
LABEL_81:
          result = 34;
          break;
        case 92:
        case 93:
        case 94:
        case 95:
        case 96:
        case 97:
        case 98:
LABEL_29:
          result = 101;
          break;
        case 99:
        case 100:
LABEL_80:
          result = 44;
          break;
        case 101:
        case 102:
LABEL_14:
          result = 95;
          break;
        default:
          return 0;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case -18432:
      case -18431:
      case -18429:
      case -18428:
      case -18427:
      case -18426:
      case -18425:
      case -18424:
      case -16319:
      case -16318:
      case -16317:
      case -16316:
      case -16315:
      case -16314:
      case -16313:
      case -16312:
      case -16311:
      case -16310:
      case -16309:
      case -16308:
      case -16307:
      case -16306:
      case -16305:
      case -16304:
      case -16303:
      case -16302:
      case -16301:
      case -16300:
      case -16299:
      case -16298:
      case -16297:
      case -16296:
      case -16295:
      case -16294:
      case -16206:
      case -16205:
      case -16200:
      case -16199:
      case -16198:
      case -16197:
      case -16166:
      case -16165:
      case -16163:
      case -16128:
      case -16121:
      case -16120:
      case -16112:
      case -16111:
      case -16101:
      case -16099:
      case -16096:
      case -16095:
      case -16093:
      case -16091:
      case -16090:
      case -16089:
      case -16088:
      case -16075:
      case -16066:
      case -16050:
      case -16049:
      case -16048:
      case -16039:
      case -16037:
      case -16036:
      case -16035:
      case -16031:
      case -16030:
      case -16029:
      case -16018:
      case -16016:
      case -16015:
      case -15998:
      case -15997:
      case -15996:
      case -15980:
      case -15979:
      case -15978:
      case -15972:
      case -15971:
      case -15969:
      case -15968:
      case -15912:
      case -15909:
      case -15902:
      case -15901:
      case -15900:
      case -15892:
      case -15891:
      case -15864:
      case -15863:
      case -15862:
      case -15861:
      case -15860:
      case -15859:
      case -15858:
      case -15857:
      case -15856:
      case -15855:
      case -15854:
      case -15853:
      case -15852:
      case -15851:
      case -15850:
      case -15849:
      case -15848:
      case -15847:
      case -15846:
      case -15845:
      case -15844:
      case -15843:
      case -15842:
      case -15841:
      case -15840:
      case -15839:
      case -15838:
      case -15837:
      case -15836:
      case -15835:
      case -15834:
      case -15833:
      case -15832:
      case -15831:
      case -15814:
      case -15813:
      case -15796:
      case -15793:
      case -15791:
      case -15780:
      case -15779:
      case -15774:
      case -15759:
      case -15758:
      case -15757:
      case -15751:
      case -15747:
      case -15746:
      case -15737:
      case -15731:
      case -15730:
      case -15719:
      case -15718:
      case -15717:
      case -15716:
      case -15708:
      case -15707:
      case -15706:
      case -15705:
      case -15704:
      case -15698:
      case -15697:
      case -15696:
      case -15695:
      case -15694:
      case -15693:
      case -15672:
      case -15671:
      case -15617:
      case -15616:
      case -15615:
      case -15614:
      case -15613:
      case -15612:
      case -15577:
      case -15576:
      case -15575:
      case -15535:
      case -15532:
      case -15531:
      case -15509:
      case -15506:
      case -15499:
      case -15498:
      case -15497:
      case -15496:
      case -15475:
      case -15468:
      case -15467:
      case -15464:
      case -15435:
      case -15434:
      case -15433:
      case -15432:
      case -15431:
      case -15430:
      case -15429:
      case -15428:
      case -15427:
      case -15425:
      case -15421:
      case -15420:
      case -15419:
      case -15418:
      case -15417:
      case -15406:
      case -15405:
      case -15404:
      case -15403:
      case -15402:
      case -15363:
      case -15362:
      case -15361:
      case -15360:
      case -15359:
      case -15358:
      case -15350:
      case -15349:
      case -15348:
      case -15347:
      case -15317:
      case -15315:
      case -15314:
      case -15298:
      case -15296:
      case -15270:
      case -15269:
      case -15268:
      case -15267:
      case -15261:
      case -15260:
      case -15259:
      case -15246:
      case -15245:
      case -15214:
      case -15202:
      case -15201:
      case -15200:
      case -15199:
      case -15198:
      case -15197:
      case -15196:
      case -15195:
      case -15194:
      case -15193:
      case -15192:
      case -15191:
      case -15190:
      case -15189:
      case -14961:
      case -14960:
      case -14959:
      case -14958:
      case -14957:
      case -14853:
      case -14852:
      case -14851:
      case -14838:
      case -14835:
      case -14834:
      case -14797:
      case -14796:
      case -14795:
      case -14794:
        goto LABEL_3;
      case -18430:
LABEL_43:
        result = 40;
        break;
      case -18423:
LABEL_38:
        result = 109;
        break;
      case -18422:
LABEL_24:
        result = 104;
        break;
      case -18421:
      case -18420:
      case -18419:
      case -18418:
      case -18417:
      case -18416:
      case -18415:
      case -18414:
      case -18413:
      case -18412:
      case -18411:
      case -18410:
      case -18409:
      case -18408:
      case -18407:
      case -18406:
      case -18405:
      case -18404:
      case -18403:
      case -18402:
      case -18401:
      case -18400:
      case -18399:
      case -18398:
      case -18397:
      case -18396:
      case -18395:
      case -18394:
      case -18393:
      case -18392:
      case -18391:
      case -18390:
      case -18389:
      case -18388:
      case -18387:
      case -18386:
      case -18385:
      case -18384:
      case -18383:
      case -18382:
      case -18381:
      case -18380:
      case -18379:
      case -18378:
      case -18377:
      case -18376:
      case -18375:
      case -18374:
      case -18373:
      case -18372:
      case -18371:
      case -18370:
      case -18369:
      case -18368:
      case -18367:
      case -18366:
      case -18365:
      case -18364:
      case -18363:
      case -18362:
      case -18361:
      case -18360:
      case -18359:
      case -18358:
      case -18357:
      case -18356:
      case -18355:
      case -18354:
      case -18353:
      case -18352:
      case -18351:
      case -18350:
      case -18349:
      case -18348:
      case -18347:
      case -18346:
      case -18345:
      case -18344:
      case -18343:
      case -18342:
      case -18341:
      case -18340:
      case -18339:
      case -18338:
      case -18337:
      case -18336:
      case -18335:
      case -18334:
      case -18333:
      case -18332:
      case -18331:
      case -18330:
      case -18329:
      case -18328:
      case -18327:
      case -18326:
      case -18325:
      case -18324:
      case -18323:
      case -18322:
      case -18321:
      case -18320:
      case -18319:
      case -18318:
      case -18317:
      case -18316:
      case -18315:
      case -18314:
      case -18313:
      case -18312:
      case -18311:
      case -18310:
      case -18309:
      case -18308:
      case -18307:
      case -18306:
      case -18305:
      case -18304:
      case -18303:
      case -18302:
      case -18301:
      case -18300:
      case -18299:
      case -18298:
      case -18297:
      case -18296:
      case -18295:
      case -18294:
      case -18293:
      case -18292:
      case -18291:
      case -18290:
      case -18289:
      case -18288:
      case -18287:
      case -18286:
      case -18285:
      case -18284:
      case -18283:
      case -18282:
      case -18281:
      case -18280:
      case -18279:
      case -18278:
      case -18277:
      case -18276:
      case -18275:
      case -18274:
      case -18273:
      case -18272:
      case -18271:
      case -18270:
      case -18269:
      case -18268:
      case -18267:
      case -18266:
      case -18265:
      case -18264:
      case -18263:
      case -18262:
      case -18261:
      case -18260:
      case -18259:
      case -18258:
      case -18257:
      case -18256:
      case -18255:
      case -18254:
      case -18253:
      case -18252:
      case -18251:
      case -18250:
      case -18249:
      case -18248:
      case -18247:
      case -18246:
      case -18245:
      case -18244:
      case -18243:
      case -18242:
      case -18241:
      case -18240:
      case -18239:
      case -18238:
      case -18237:
      case -18236:
      case -18235:
      case -18234:
      case -18233:
      case -18232:
      case -18231:
      case -18230:
      case -18229:
      case -18228:
      case -18227:
      case -18226:
      case -18225:
      case -18224:
      case -18223:
      case -18222:
      case -18221:
      case -18220:
      case -18219:
      case -18218:
      case -18217:
      case -18216:
      case -18215:
      case -18214:
      case -18213:
      case -18212:
      case -18211:
      case -18210:
      case -18209:
      case -18208:
      case -18207:
      case -18206:
      case -18205:
      case -18204:
      case -18203:
      case -18202:
      case -18201:
      case -18200:
      case -18199:
      case -18198:
      case -18197:
      case -18196:
      case -18195:
      case -18194:
      case -18193:
      case -18192:
      case -18191:
      case -18190:
      case -18189:
      case -18188:
      case -18187:
      case -18186:
      case -18185:
      case -18184:
      case -18183:
      case -18182:
      case -18181:
      case -18180:
      case -18179:
      case -18178:
      case -18177:
      case -18176:
      case -18175:
      case -18174:
      case -18173:
      case -18172:
      case -18171:
      case -18170:
      case -18169:
      case -18168:
      case -18167:
      case -18166:
      case -18165:
      case -18164:
      case -18163:
      case -18162:
      case -18161:
      case -18160:
      case -18159:
      case -18158:
      case -18157:
      case -18156:
      case -18155:
      case -18154:
      case -18153:
      case -18152:
      case -18151:
      case -18150:
      case -18149:
      case -18148:
      case -18147:
      case -18146:
      case -18145:
      case -18144:
      case -18143:
      case -18142:
      case -18141:
      case -18140:
      case -18139:
      case -18138:
      case -18137:
      case -18136:
      case -18135:
      case -18134:
      case -18133:
      case -18132:
      case -18131:
      case -18130:
      case -18129:
      case -18128:
      case -18127:
      case -18126:
      case -18125:
      case -18124:
      case -18123:
      case -18122:
      case -18121:
      case -18120:
      case -18119:
      case -18118:
      case -18117:
      case -18116:
      case -18115:
      case -18114:
      case -18113:
      case -18112:
      case -18111:
      case -18110:
      case -18109:
      case -18108:
      case -18107:
      case -18106:
      case -18105:
      case -18104:
      case -18103:
      case -18102:
      case -18101:
      case -18100:
      case -18099:
      case -18098:
      case -18097:
      case -18096:
      case -18095:
      case -18094:
      case -18093:
      case -18092:
      case -18091:
      case -18090:
      case -18089:
      case -18088:
      case -18087:
      case -18086:
      case -18085:
      case -18084:
      case -18083:
      case -18082:
      case -18081:
      case -18080:
      case -18079:
      case -18078:
      case -18077:
      case -18076:
      case -18075:
      case -18074:
      case -18073:
      case -18072:
      case -18071:
      case -18070:
      case -18069:
      case -18068:
      case -18067:
      case -18066:
      case -18065:
      case -18064:
      case -18063:
      case -18062:
      case -18061:
      case -18060:
      case -18059:
      case -18058:
      case -18057:
      case -18056:
      case -18055:
      case -18054:
      case -18053:
      case -18052:
      case -18051:
      case -18050:
      case -18049:
      case -18048:
      case -18047:
      case -18046:
      case -18045:
      case -18044:
      case -18043:
      case -18042:
      case -18041:
      case -18040:
      case -18039:
      case -18038:
      case -18037:
      case -18036:
      case -18035:
      case -18034:
      case -18033:
      case -18032:
      case -18031:
      case -18030:
      case -18029:
      case -18028:
      case -18027:
      case -18026:
      case -18025:
      case -18024:
      case -18023:
      case -18022:
      case -18021:
      case -18020:
      case -18019:
      case -18018:
      case -18017:
      case -18016:
      case -18015:
      case -18014:
      case -18013:
      case -18012:
      case -18011:
      case -18010:
      case -18009:
      case -18008:
      case -18007:
      case -18006:
      case -18005:
      case -18004:
      case -18003:
      case -18002:
      case -18001:
      case -18000:
      case -17999:
      case -17998:
      case -17997:
      case -17996:
      case -17995:
      case -17994:
      case -17993:
      case -17992:
      case -17991:
      case -17990:
      case -17989:
      case -17988:
      case -17987:
      case -17986:
      case -17985:
      case -17984:
      case -17983:
      case -17982:
      case -17981:
      case -17980:
      case -17979:
      case -17978:
      case -17977:
      case -17976:
      case -17975:
      case -17974:
      case -17973:
      case -17972:
      case -17971:
      case -17970:
      case -17969:
      case -17968:
      case -17967:
      case -17966:
      case -17965:
      case -17964:
      case -17963:
      case -17962:
      case -17961:
      case -17960:
      case -17959:
      case -17958:
      case -17957:
      case -17956:
      case -17955:
      case -17954:
      case -17953:
      case -17952:
      case -17951:
      case -17950:
      case -17949:
      case -17948:
      case -17947:
      case -17946:
      case -17945:
      case -17944:
      case -17943:
      case -17942:
      case -17941:
      case -17940:
      case -17939:
      case -17938:
      case -17937:
      case -17936:
      case -17935:
      case -17934:
      case -17933:
      case -17932:
      case -17931:
      case -17930:
      case -17929:
      case -17928:
      case -17927:
      case -17926:
      case -17925:
      case -17924:
      case -17923:
      case -17922:
      case -17921:
      case -17920:
      case -17919:
      case -17918:
      case -17917:
      case -17916:
      case -17915:
      case -17914:
      case -17913:
      case -17912:
      case -17911:
      case -17910:
      case -17909:
      case -17908:
      case -17907:
      case -17906:
      case -17905:
      case -17904:
      case -17903:
      case -17902:
      case -17901:
      case -17900:
      case -17899:
      case -17898:
      case -17897:
      case -17896:
      case -17895:
      case -17894:
      case -17893:
      case -17892:
      case -17891:
      case -17890:
      case -17889:
      case -17888:
      case -17887:
      case -17886:
      case -17885:
      case -17884:
      case -17883:
      case -17882:
      case -17881:
      case -17880:
      case -17879:
      case -17878:
      case -17877:
      case -17876:
      case -17875:
      case -17874:
      case -17873:
      case -17872:
      case -17871:
      case -17870:
      case -17869:
      case -17868:
      case -17867:
      case -17866:
      case -17865:
      case -17864:
      case -17863:
      case -17862:
      case -17861:
      case -17860:
      case -17859:
      case -17858:
      case -17857:
      case -17856:
      case -17855:
      case -17854:
      case -17853:
      case -17852:
      case -17851:
      case -17850:
      case -17849:
      case -17848:
      case -17847:
      case -17846:
      case -17845:
      case -17844:
      case -17843:
      case -17842:
      case -17841:
      case -17840:
      case -17839:
      case -17838:
      case -17837:
      case -17836:
      case -17835:
      case -17834:
      case -17833:
      case -17832:
      case -17831:
      case -17830:
      case -17829:
      case -17828:
      case -17827:
      case -17826:
      case -17825:
      case -17824:
      case -17823:
      case -17822:
      case -17821:
      case -17820:
      case -17819:
      case -17818:
      case -17817:
      case -17816:
      case -17815:
      case -17814:
      case -17813:
      case -17812:
      case -17811:
      case -17810:
      case -17809:
      case -17808:
      case -17807:
      case -17806:
      case -17805:
      case -17804:
      case -17803:
      case -17802:
      case -17801:
      case -17800:
      case -17799:
      case -17798:
      case -17797:
      case -17796:
      case -17795:
      case -17794:
      case -17793:
      case -17792:
      case -17791:
      case -17790:
      case -17789:
      case -17788:
      case -17787:
      case -17786:
      case -17785:
      case -17784:
      case -17783:
      case -17782:
      case -17781:
      case -17780:
      case -17779:
      case -17778:
      case -17777:
      case -17776:
      case -17775:
      case -17774:
      case -17773:
      case -17772:
      case -17771:
      case -17770:
      case -17769:
      case -17768:
      case -17767:
      case -17766:
      case -17765:
      case -17764:
      case -17763:
      case -17762:
      case -17761:
      case -17760:
      case -17759:
      case -17758:
      case -17757:
      case -17756:
      case -17755:
      case -17754:
      case -17753:
      case -17752:
      case -17751:
      case -17750:
      case -17749:
      case -17748:
      case -17747:
      case -17746:
      case -17745:
      case -17744:
      case -17743:
      case -17742:
      case -17741:
      case -17740:
      case -17739:
      case -17738:
      case -17737:
      case -17736:
      case -17735:
      case -17734:
      case -17733:
      case -17732:
      case -17731:
      case -17730:
      case -17729:
      case -17728:
      case -17727:
      case -17726:
      case -17725:
      case -17724:
      case -17723:
      case -17722:
      case -17721:
      case -17720:
      case -17719:
      case -17718:
      case -17717:
      case -17716:
      case -17715:
      case -17714:
      case -17713:
      case -17712:
      case -17711:
      case -17710:
      case -17709:
      case -17708:
      case -17707:
      case -17706:
      case -17705:
      case -17704:
      case -17703:
      case -17702:
      case -17701:
      case -17700:
      case -17699:
      case -17698:
      case -17697:
      case -17696:
      case -17695:
      case -17694:
      case -17693:
      case -17692:
      case -17691:
      case -17690:
      case -17689:
      case -17688:
      case -17687:
      case -17686:
      case -17685:
      case -17684:
      case -17683:
      case -17682:
      case -17681:
      case -17680:
      case -17679:
      case -17678:
      case -17677:
      case -17676:
      case -17675:
      case -17674:
      case -17673:
      case -17672:
      case -17671:
      case -17670:
      case -17669:
      case -17668:
      case -17667:
      case -17666:
      case -17665:
      case -17664:
      case -17663:
      case -17662:
      case -17661:
      case -17660:
      case -17659:
      case -17658:
      case -17657:
      case -17656:
      case -17655:
      case -17654:
      case -17653:
      case -17652:
      case -17651:
      case -17650:
      case -17649:
      case -17648:
      case -17647:
      case -17646:
      case -17645:
      case -17644:
      case -17643:
      case -17642:
      case -17641:
      case -17640:
      case -17639:
      case -17638:
      case -17637:
      case -17636:
      case -17635:
      case -17634:
      case -17633:
      case -17632:
      case -17631:
      case -17630:
      case -17629:
      case -17628:
      case -17627:
      case -17626:
      case -17625:
      case -17624:
      case -17623:
      case -17622:
      case -17621:
      case -17620:
      case -17619:
      case -17618:
      case -17617:
      case -17616:
      case -17615:
      case -17614:
      case -17613:
      case -17612:
      case -17611:
      case -17610:
      case -17609:
      case -17608:
      case -17607:
      case -17606:
      case -17605:
      case -17604:
      case -17603:
      case -17602:
      case -17601:
      case -17600:
      case -17599:
      case -17598:
      case -17597:
      case -17596:
      case -17595:
      case -17594:
      case -17593:
      case -17592:
      case -17591:
      case -17590:
      case -17589:
      case -17588:
      case -17587:
      case -17586:
      case -17585:
      case -17584:
      case -17583:
      case -17582:
      case -17581:
      case -17580:
      case -17579:
      case -17578:
      case -17577:
      case -17576:
      case -17575:
      case -17574:
      case -17573:
      case -17572:
      case -17571:
      case -17570:
      case -17569:
      case -17568:
      case -17567:
      case -17566:
      case -17565:
      case -17564:
      case -17563:
      case -17562:
      case -17561:
      case -17560:
      case -17559:
      case -17558:
      case -17557:
      case -17556:
      case -17555:
      case -17554:
      case -17553:
      case -17552:
      case -17551:
      case -17550:
      case -17549:
      case -17548:
      case -17547:
      case -17546:
      case -17545:
      case -17544:
      case -17543:
      case -17542:
      case -17541:
      case -17540:
      case -17539:
      case -17538:
      case -17537:
      case -17536:
      case -17535:
      case -17534:
      case -17533:
      case -17532:
      case -17531:
      case -17530:
      case -17529:
      case -17528:
      case -17527:
      case -17526:
      case -17525:
      case -17524:
      case -17523:
      case -17522:
      case -17521:
      case -17520:
      case -17519:
      case -17518:
      case -17517:
      case -17516:
      case -17515:
      case -17514:
      case -17513:
      case -17512:
      case -17511:
      case -17510:
      case -17509:
      case -17508:
      case -17507:
      case -17506:
      case -17505:
      case -17504:
      case -17503:
      case -17502:
      case -17501:
      case -17500:
      case -17499:
      case -17498:
      case -17497:
      case -17496:
      case -17495:
      case -17494:
      case -17493:
      case -17492:
      case -17491:
      case -17490:
      case -17489:
      case -17488:
      case -17487:
      case -17486:
      case -17485:
      case -17484:
      case -17483:
      case -17482:
      case -17481:
      case -17480:
      case -17479:
      case -17478:
      case -17477:
      case -17476:
      case -17475:
      case -17474:
      case -17473:
      case -17472:
      case -17471:
      case -17470:
      case -17469:
      case -17468:
      case -17467:
      case -17466:
      case -17465:
      case -17464:
      case -17463:
      case -17462:
      case -17461:
      case -17460:
      case -17459:
      case -17458:
      case -17457:
      case -17456:
      case -17455:
      case -17454:
      case -17453:
      case -17452:
      case -17451:
      case -17450:
      case -17449:
      case -17448:
      case -17447:
      case -17446:
      case -17445:
      case -17444:
      case -17443:
      case -17442:
      case -17441:
      case -17440:
      case -17439:
      case -17438:
      case -17437:
      case -17436:
      case -17435:
      case -17434:
      case -17433:
      case -17432:
      case -17431:
      case -17430:
      case -17429:
      case -17428:
      case -17427:
      case -17426:
      case -17425:
      case -17424:
      case -17423:
      case -17422:
      case -17421:
      case -17420:
      case -17419:
      case -17418:
      case -17417:
      case -17416:
      case -17415:
      case -17414:
      case -17413:
      case -17412:
      case -17411:
      case -17410:
      case -17409:
      case -17408:
      case -17407:
      case -17406:
      case -17405:
      case -17404:
      case -17403:
      case -17402:
      case -17401:
      case -17400:
      case -17399:
      case -17398:
      case -17397:
      case -17396:
      case -17395:
      case -17394:
      case -17393:
      case -17392:
      case -17391:
      case -17390:
      case -17389:
      case -17388:
      case -17387:
      case -17386:
      case -17385:
      case -17384:
      case -17383:
      case -17382:
      case -17381:
      case -17380:
      case -17379:
      case -17378:
      case -17377:
      case -17376:
      case -17375:
      case -17374:
      case -17373:
      case -17372:
      case -17371:
      case -17370:
      case -17369:
      case -17368:
      case -17367:
      case -17366:
      case -17365:
      case -17364:
      case -17363:
      case -17362:
      case -17361:
      case -17360:
      case -17359:
      case -17358:
      case -17357:
      case -17356:
      case -17355:
      case -17354:
      case -17353:
      case -17352:
      case -17351:
      case -17350:
      case -17349:
      case -17348:
      case -17347:
      case -17346:
      case -17345:
      case -17344:
      case -17343:
      case -17342:
      case -17341:
      case -17340:
      case -17339:
      case -17338:
      case -17337:
      case -17336:
      case -17335:
      case -17334:
      case -17333:
      case -17332:
      case -17331:
      case -17330:
      case -17329:
      case -17328:
      case -17327:
      case -17326:
      case -17325:
      case -17324:
      case -17323:
      case -17322:
      case -17321:
      case -17320:
      case -17319:
      case -17318:
      case -17317:
      case -17316:
      case -17315:
      case -17314:
      case -17313:
      case -17312:
      case -17311:
      case -17310:
      case -17309:
      case -17308:
      case -17307:
      case -17306:
      case -17305:
      case -17304:
      case -17303:
      case -17302:
      case -17301:
      case -17300:
      case -17299:
      case -17298:
      case -17297:
      case -17296:
      case -17295:
      case -17294:
      case -17293:
      case -17292:
      case -17291:
      case -17290:
      case -17289:
      case -17288:
      case -17287:
      case -17286:
      case -17285:
      case -17284:
      case -17283:
      case -17282:
      case -17281:
      case -17280:
      case -17279:
      case -17278:
      case -17277:
      case -17276:
      case -17275:
      case -17274:
      case -17273:
      case -17272:
      case -17271:
      case -17270:
      case -17269:
      case -17268:
      case -17267:
      case -17266:
      case -17265:
      case -17264:
      case -17263:
      case -17262:
      case -17261:
      case -17260:
      case -17259:
      case -17258:
      case -17257:
      case -17256:
      case -17255:
      case -17254:
      case -17253:
      case -17252:
      case -17251:
      case -17250:
      case -17249:
      case -17248:
      case -17247:
      case -17246:
      case -17245:
      case -17244:
      case -17243:
      case -17242:
      case -17241:
      case -17240:
      case -17239:
      case -17238:
      case -17237:
      case -17236:
      case -17235:
      case -17234:
      case -17233:
      case -17232:
      case -17231:
      case -17230:
      case -17229:
      case -17228:
      case -17227:
      case -17226:
      case -17225:
      case -17224:
      case -17223:
      case -17222:
      case -17221:
      case -17220:
      case -17219:
      case -17218:
      case -17217:
      case -17216:
      case -17215:
      case -17214:
      case -17213:
      case -17212:
      case -17211:
      case -17210:
      case -17209:
      case -17208:
      case -17207:
      case -17206:
      case -17205:
      case -17204:
      case -17203:
      case -17202:
      case -17201:
      case -17200:
      case -17199:
      case -17198:
      case -17197:
      case -17196:
      case -17195:
      case -17194:
      case -17193:
      case -17192:
      case -17191:
      case -17190:
      case -17189:
      case -17188:
      case -17187:
      case -17186:
      case -17185:
      case -17184:
      case -17183:
      case -17182:
      case -17181:
      case -17180:
      case -17179:
      case -17178:
      case -17177:
      case -17176:
      case -17175:
      case -17174:
      case -17173:
      case -17172:
      case -17171:
      case -17170:
      case -17169:
      case -17168:
      case -17167:
      case -17166:
      case -17165:
      case -17164:
      case -17163:
      case -17162:
      case -17161:
      case -17160:
      case -17159:
      case -17158:
      case -17157:
      case -17156:
      case -17155:
      case -17154:
      case -17153:
      case -17152:
      case -17151:
      case -17150:
      case -17149:
      case -17148:
      case -17147:
      case -17146:
      case -17145:
      case -17144:
      case -17143:
      case -17142:
      case -17141:
      case -17140:
      case -17139:
      case -17138:
      case -17137:
      case -17136:
      case -17135:
      case -17134:
      case -17133:
      case -17132:
      case -17131:
      case -17130:
      case -17129:
      case -17128:
      case -17127:
      case -17126:
      case -17125:
      case -17124:
      case -17123:
      case -17122:
      case -17121:
      case -17120:
      case -17119:
      case -17118:
      case -17117:
      case -17116:
      case -17115:
      case -17114:
      case -17113:
      case -17112:
      case -17111:
      case -17110:
      case -17109:
      case -17108:
      case -17107:
      case -17106:
      case -17105:
      case -17104:
      case -17103:
      case -17102:
      case -17101:
      case -17100:
      case -17099:
      case -17098:
      case -17097:
      case -17096:
      case -17095:
      case -17094:
      case -17093:
      case -17092:
      case -17091:
      case -17090:
      case -17089:
      case -17088:
      case -17087:
      case -17086:
      case -17085:
      case -17084:
      case -17083:
      case -17082:
      case -17081:
      case -17080:
      case -17079:
      case -17078:
      case -17077:
      case -17076:
      case -17075:
      case -17074:
      case -17073:
      case -17072:
      case -17071:
      case -17070:
      case -17069:
      case -17068:
      case -17067:
      case -17066:
      case -17065:
      case -17064:
      case -17063:
      case -17062:
      case -17061:
      case -17060:
      case -17059:
      case -17058:
      case -17057:
      case -17056:
      case -17055:
      case -17054:
      case -17053:
      case -17052:
      case -17051:
      case -17050:
      case -17049:
      case -17048:
      case -17047:
      case -17046:
      case -17045:
      case -17044:
      case -17043:
      case -17042:
      case -17041:
      case -17040:
      case -17039:
      case -17038:
      case -17037:
      case -17036:
      case -17035:
      case -17034:
      case -17033:
      case -17032:
      case -17031:
      case -17030:
      case -17029:
      case -17028:
      case -17027:
      case -17026:
      case -17025:
      case -17024:
      case -17023:
      case -17022:
      case -17021:
      case -17020:
      case -17019:
      case -17018:
      case -17017:
      case -17016:
      case -17015:
      case -17014:
      case -17013:
      case -17012:
      case -17011:
      case -17010:
      case -17009:
      case -17008:
      case -17007:
      case -17006:
      case -17005:
      case -17004:
      case -17003:
      case -17002:
      case -17001:
      case -17000:
      case -16999:
      case -16998:
      case -16997:
      case -16996:
      case -16995:
      case -16994:
      case -16993:
      case -16992:
      case -16991:
      case -16990:
      case -16989:
      case -16988:
      case -16987:
      case -16986:
      case -16985:
      case -16984:
      case -16983:
      case -16982:
      case -16981:
      case -16980:
      case -16979:
      case -16978:
      case -16977:
      case -16976:
      case -16975:
      case -16974:
      case -16973:
      case -16972:
      case -16971:
      case -16970:
      case -16969:
      case -16968:
      case -16967:
      case -16966:
      case -16965:
      case -16964:
      case -16963:
      case -16962:
      case -16961:
      case -16960:
      case -16959:
      case -16958:
      case -16957:
      case -16956:
      case -16955:
      case -16954:
      case -16953:
      case -16952:
      case -16951:
      case -16950:
      case -16949:
      case -16948:
      case -16947:
      case -16946:
      case -16945:
      case -16944:
      case -16943:
      case -16942:
      case -16941:
      case -16940:
      case -16939:
      case -16938:
      case -16937:
      case -16936:
      case -16935:
      case -16934:
      case -16933:
      case -16932:
      case -16931:
      case -16930:
      case -16929:
      case -16928:
      case -16927:
      case -16926:
      case -16925:
      case -16924:
      case -16923:
      case -16922:
      case -16921:
      case -16920:
      case -16919:
      case -16918:
      case -16917:
      case -16916:
      case -16915:
      case -16914:
      case -16913:
      case -16912:
      case -16911:
      case -16910:
      case -16909:
      case -16908:
      case -16907:
      case -16906:
      case -16905:
      case -16904:
      case -16903:
      case -16902:
      case -16901:
      case -16900:
      case -16899:
      case -16898:
      case -16897:
      case -16896:
      case -16895:
      case -16894:
      case -16893:
      case -16892:
      case -16891:
      case -16890:
      case -16889:
      case -16888:
      case -16887:
      case -16886:
      case -16885:
      case -16884:
      case -16883:
      case -16882:
      case -16881:
      case -16880:
      case -16879:
      case -16878:
      case -16877:
      case -16876:
      case -16875:
      case -16874:
      case -16873:
      case -16872:
      case -16871:
      case -16870:
      case -16869:
      case -16868:
      case -16867:
      case -16866:
      case -16865:
      case -16864:
      case -16863:
      case -16862:
      case -16861:
      case -16860:
      case -16859:
      case -16858:
      case -16857:
      case -16856:
      case -16855:
      case -16854:
      case -16853:
      case -16852:
      case -16851:
      case -16850:
      case -16849:
      case -16848:
      case -16847:
      case -16846:
      case -16845:
      case -16844:
      case -16843:
      case -16842:
      case -16841:
      case -16840:
      case -16839:
      case -16838:
      case -16837:
      case -16836:
      case -16835:
      case -16834:
      case -16833:
      case -16832:
      case -16831:
      case -16830:
      case -16829:
      case -16828:
      case -16827:
      case -16826:
      case -16825:
      case -16824:
      case -16823:
      case -16822:
      case -16821:
      case -16820:
      case -16819:
      case -16818:
      case -16817:
      case -16816:
      case -16815:
      case -16814:
      case -16813:
      case -16812:
      case -16811:
      case -16810:
      case -16809:
      case -16808:
      case -16807:
      case -16806:
      case -16805:
      case -16804:
      case -16803:
      case -16802:
      case -16801:
      case -16800:
      case -16799:
      case -16798:
      case -16797:
      case -16796:
      case -16795:
      case -16794:
      case -16793:
      case -16792:
      case -16791:
      case -16790:
      case -16789:
      case -16788:
      case -16787:
      case -16786:
      case -16785:
      case -16784:
      case -16783:
      case -16782:
      case -16781:
      case -16780:
      case -16779:
      case -16778:
      case -16777:
      case -16776:
      case -16775:
      case -16774:
      case -16773:
      case -16772:
      case -16771:
      case -16770:
      case -16769:
      case -16768:
      case -16767:
      case -16766:
      case -16765:
      case -16764:
      case -16763:
      case -16762:
      case -16761:
      case -16760:
      case -16759:
      case -16758:
      case -16757:
      case -16756:
      case -16755:
      case -16754:
      case -16753:
      case -16752:
      case -16751:
      case -16750:
      case -16749:
      case -16748:
      case -16747:
      case -16746:
      case -16745:
      case -16744:
      case -16743:
      case -16742:
      case -16741:
      case -16740:
      case -16739:
      case -16738:
      case -16737:
      case -16736:
      case -16735:
      case -16734:
      case -16733:
      case -16732:
      case -16731:
      case -16730:
      case -16729:
      case -16728:
      case -16727:
      case -16726:
      case -16725:
      case -16724:
      case -16723:
      case -16722:
      case -16721:
      case -16720:
      case -16719:
      case -16718:
      case -16717:
      case -16716:
      case -16715:
      case -16714:
      case -16713:
      case -16712:
      case -16711:
      case -16710:
      case -16709:
      case -16708:
      case -16707:
      case -16706:
      case -16705:
      case -16704:
      case -16703:
      case -16702:
      case -16701:
      case -16700:
      case -16699:
      case -16698:
      case -16697:
      case -16696:
      case -16695:
      case -16694:
      case -16693:
      case -16692:
      case -16691:
      case -16690:
      case -16689:
      case -16688:
      case -16687:
      case -16686:
      case -16685:
      case -16684:
      case -16683:
      case -16682:
      case -16681:
      case -16680:
      case -16679:
      case -16678:
      case -16677:
      case -16676:
      case -16675:
      case -16674:
      case -16673:
      case -16672:
      case -16671:
      case -16670:
      case -16669:
      case -16668:
      case -16667:
      case -16666:
      case -16665:
      case -16664:
      case -16663:
      case -16662:
      case -16661:
      case -16660:
      case -16659:
      case -16658:
      case -16657:
      case -16656:
      case -16655:
      case -16654:
      case -16653:
      case -16652:
      case -16651:
      case -16650:
      case -16649:
      case -16648:
      case -16647:
      case -16646:
      case -16645:
      case -16644:
      case -16643:
      case -16642:
      case -16641:
      case -16640:
      case -16639:
      case -16638:
      case -16637:
      case -16636:
      case -16635:
      case -16634:
      case -16633:
      case -16632:
      case -16631:
      case -16630:
      case -16629:
      case -16628:
      case -16627:
      case -16626:
      case -16625:
      case -16624:
      case -16623:
      case -16622:
      case -16621:
      case -16620:
      case -16619:
      case -16618:
      case -16617:
      case -16616:
      case -16615:
      case -16614:
      case -16613:
      case -16612:
      case -16611:
      case -16610:
      case -16609:
      case -16608:
      case -16607:
      case -16606:
      case -16605:
      case -16604:
      case -16603:
      case -16602:
      case -16601:
      case -16600:
      case -16599:
      case -16598:
      case -16597:
      case -16596:
      case -16595:
      case -16594:
      case -16593:
      case -16592:
      case -16591:
      case -16590:
      case -16589:
      case -16588:
      case -16587:
      case -16586:
      case -16585:
      case -16584:
      case -16583:
      case -16582:
      case -16581:
      case -16580:
      case -16579:
      case -16578:
      case -16577:
      case -16576:
      case -16575:
      case -16574:
      case -16573:
      case -16572:
      case -16571:
      case -16570:
      case -16569:
      case -16568:
      case -16567:
      case -16566:
      case -16565:
      case -16564:
      case -16563:
      case -16562:
      case -16561:
      case -16560:
      case -16559:
      case -16558:
      case -16557:
      case -16556:
      case -16555:
      case -16554:
      case -16553:
      case -16552:
      case -16551:
      case -16550:
      case -16549:
      case -16548:
      case -16547:
      case -16546:
      case -16545:
      case -16544:
      case -16543:
      case -16542:
      case -16541:
      case -16540:
      case -16539:
      case -16538:
      case -16537:
      case -16536:
      case -16535:
      case -16534:
      case -16533:
      case -16532:
      case -16531:
      case -16530:
      case -16529:
      case -16528:
      case -16527:
      case -16526:
      case -16525:
      case -16524:
      case -16523:
      case -16522:
      case -16521:
      case -16520:
      case -16519:
      case -16518:
      case -16517:
      case -16516:
      case -16515:
      case -16514:
      case -16513:
      case -16512:
      case -16511:
      case -16510:
      case -16509:
      case -16508:
      case -16507:
      case -16506:
      case -16505:
      case -16504:
      case -16503:
      case -16502:
      case -16501:
      case -16500:
      case -16499:
      case -16498:
      case -16497:
      case -16496:
      case -16495:
      case -16494:
      case -16493:
      case -16492:
      case -16491:
      case -16490:
      case -16489:
      case -16488:
      case -16487:
      case -16486:
      case -16485:
      case -16484:
      case -16483:
      case -16482:
      case -16481:
      case -16480:
      case -16479:
      case -16478:
      case -16477:
      case -16476:
      case -16475:
      case -16474:
      case -16473:
      case -16472:
      case -16471:
      case -16470:
      case -16469:
      case -16468:
      case -16467:
      case -16466:
      case -16465:
      case -16464:
      case -16463:
      case -16462:
      case -16461:
      case -16460:
      case -16459:
      case -16458:
      case -16457:
      case -16456:
      case -16455:
      case -16454:
      case -16453:
      case -16452:
      case -16451:
      case -16450:
      case -16449:
      case -16448:
      case -16447:
      case -16446:
      case -16445:
      case -16444:
      case -16443:
      case -16442:
      case -16441:
      case -16440:
      case -16439:
      case -16438:
      case -16437:
      case -16436:
      case -16435:
      case -16434:
      case -16433:
      case -16432:
      case -16431:
      case -16430:
      case -16429:
      case -16428:
      case -16427:
      case -16426:
      case -16425:
      case -16424:
      case -16423:
      case -16422:
      case -16421:
      case -16420:
      case -16419:
      case -16418:
      case -16417:
      case -16416:
      case -16415:
      case -16414:
      case -16413:
      case -16412:
      case -16411:
      case -16410:
      case -16409:
      case -16408:
      case -16407:
      case -16406:
      case -16405:
      case -16404:
      case -16403:
      case -16402:
      case -16401:
      case -16400:
      case -16399:
      case -16398:
      case -16397:
      case -16396:
      case -16395:
      case -16394:
      case -16393:
      case -16392:
      case -16391:
      case -16390:
      case -16389:
      case -16388:
      case -16387:
      case -16386:
      case -16385:
        return 0;
      case -16384:
      case -16383:
      case -16382:
      case -16381:
      case -16380:
      case -16379:
      case -16378:
      case -16377:
      case -16376:
      case -16375:
      case -16374:
      case -16373:
      case -16230:
      case -16229:
      case -16213:
      case -16212:
      case -16211:
      case -16210:
      case -16209:
      case -16131:
      case -16124:
      case -15995:
      case -15994:
      case -15993:
      case -15992:
      case -15977:
      case -15976:
      case -15960:
      case -15959:
      case -15958:
      case -15878:
      case -15877:
      case -15876:
      case -15875:
      case -15802:
      case -15800:
      case -15798:
      case -15756:
      case -15755:
      case -15474:
      case -15473:
      case -15472:
      case -15471:
      case -15470:
      case -15469:
      case -14966:
      case -14965:
      case -14964:
      case -14804:
        result = 21;
        break;
      case -16372:
      case -16371:
      case -16370:
      case -16369:
      case -16368:
      case -16367:
      case -16366:
      case -16228:
      case -16208:
      case -16122:
      case -16113:
      case -16104:
      case -16103:
      case -16102:
      case -16098:
      case -15914:
      case -15904:
      case -15874:
      case -15768:
      case -15767:
      case -15505:
      case -15504:
      case -15357:
      case -14840:
        goto LABEL_25;
      case -16365:
      case -16364:
      case -16363:
      case -16362:
      case -16361:
      case -16360:
      case -16359:
      case -16358:
      case -16357:
      case -16356:
      case -16355:
      case -16354:
      case -16353:
      case -16352:
      case -16351:
      case -16350:
      case -16202:
      case -16195:
      case -16164:
      case -16151:
      case -16133:
      case -16065:
      case -16064:
      case -16014:
      case -16013:
      case -16012:
      case -15991:
      case -15990:
      case -15967:
      case -15966:
      case -15908:
      case -15899:
      case -15898:
      case -15897:
      case -15873:
      case -15872:
      case -15871:
      case -15870:
      case -15749:
      case -15712:
      case -15703:
      case -15673:
      case -15587:
      case -15586:
      case -15585:
      case -15584:
      case -15533:
      case -15501:
      case -15500:
      case -15410:
      case -15364:
      case -15326:
      case -15318:
      case -15316:
      case -15286:
      case -15285:
      case -15256:
      case -15255:
      case -15254:
      case -15253:
      case -15217:
      case -15216:
      case -15215:
      case -14800:
      case -14799:
        goto LABEL_15;
      case -16349:
      case -16348:
      case -16347:
      case -16346:
      case -16345:
      case -16344:
      case -16343:
      case -16342:
      case -16341:
      case -16340:
      case -16134:
      case -15811:
      case -15810:
      case -15809:
      case -15808:
      case -15807:
      case -15806:
      case -15805:
      case -15804:
      case -15701:
      case -15624:
      case -15252:
      case -15251:
      case -15250:
      case -15249:
LABEL_95:
        result = 27;
        break;
      case -16339:
      case -16338:
      case -16337:
      case -16336:
      case -16335:
      case -16334:
      case -16333:
      case -16332:
      case -16331:
      case -16330:
      case -16329:
      case -16328:
      case -16327:
      case -16326:
      case -16325:
      case -16324:
      case -16323:
      case -16322:
      case -16227:
      case -16226:
      case -16220:
      case -16207:
      case -16150:
      case -16149:
      case -16130:
      case -16129:
      case -16100:
      case -16079:
      case -16078:
      case -16047:
      case -16046:
      case -16045:
      case -16044:
      case -16017:
      case -16011:
      case -16010:
      case -16009:
      case -16008:
      case -15965:
      case -15964:
      case -15963:
      case -15869:
      case -15754:
      case -15732:
      case -15711:
      case -15710:
      case -15709:
      case -15623:
      case -15622:
      case -15621:
      case -15583:
      case -15582:
      case -15581:
      case -15580:
      case -15518:
      case -15517:
      case -15516:
      case -15515:
      case -15514:
      case -15513:
      case -15512:
      case -15511:
      case -15510:
      case -15503:
      case -15284:
      case -15283:
      case -15282:
      case -15281:
      case -15280:
      case -15279:
      case -15278:
      case -15248:
      case -15247:
      case -14963:
      case -14962:
      case -14854:
        result = 28;
        break;
      case -16321:
      case -16092:
      case -15989:
      case -15868:
      case -15700:
      case -15699:
      case -15620:
      case -15619:
      case -15618:
      case -15579:
      case -15578:
      case -15541:
      case -15540:
      case -14883:
      case -14882:
      case -14839:
        goto LABEL_41;
      case -16320:
        goto LABEL_81;
      case -16293:
      case -16135:
      case -16123:
      case -16052:
      case -16051:
      case -15830:
      case -15715:
      case -15714:
      case -15713:
      case -15670:
      case -15669:
        goto LABEL_50;
      case -16292:
      case -16291:
      case -16290:
      case -16107:
      case -16106:
      case -16083:
      case -16082:
      case -16081:
      case -16038:
      case -15772:
      case -15609:
      case -15608:
      case -15551:
      case -15550:
      case -15487:
      case -15423:
      case -15323:
      case -15322:
      case -14850:
        goto LABEL_39;
      case -16289:
      case -16288:
      case -16287:
      case -16286:
      case -16285:
      case -16284:
      case -16283:
      case -16282:
      case -16162:
      case -16161:
      case -16160:
      case -16028:
      case -16027:
      case -16026:
      case -14956:
      case -14955:
        result = 65;
        break;
      case -16281:
      case -16280:
      case -16279:
      case -16278:
      case -16277:
      case -16276:
      case -16275:
      case -16274:
      case -16273:
      case -16272:
      case -16271:
      case -16270:
      case -16269:
      case -16268:
      case -16267:
      case -16266:
      case -16265:
      case -16264:
      case -16263:
      case -16262:
      case -16261:
      case -16260:
      case -16259:
      case -16258:
      case -16257:
      case -16256:
      case -16255:
      case -16254:
      case -16253:
      case -16252:
      case -16251:
      case -16250:
      case -16249:
      case -16248:
      case -16247:
      case -16246:
      case -16245:
      case -16244:
      case -16243:
      case -16225:
      case -16224:
      case -16223:
      case -16222:
      case -16219:
      case -16218:
      case -16217:
      case -16216:
      case -16215:
      case -16214:
      case -16204:
      case -16203:
      case -16201:
      case -16159:
      case -16158:
      case -16157:
      case -16156:
      case -16155:
      case -16148:
      case -16147:
      case -16146:
      case -16145:
      case -16144:
      case -16143:
      case -16142:
      case -16141:
      case -16140:
      case -16139:
      case -16138:
      case -16137:
      case -16132:
      case -16126:
      case -16125:
      case -16087:
      case -16086:
      case -16085:
      case -16084:
      case -16080:
      case -16077:
      case -16076:
      case -16074:
      case -16043:
      case -16042:
      case -16041:
      case -16040:
      case -16022:
      case -16021:
      case -16020:
      case -16007:
      case -16006:
      case -16005:
      case -16004:
      case -16003:
      case -15988:
      case -15987:
      case -15986:
      case -15985:
      case -15984:
      case -15970:
      case -15962:
      case -15961:
      case -15823:
      case -15822:
      case -15821:
      case -15820:
      case -15819:
      case -15818:
      case -15812:
      case -15750:
      case -15729:
      case -15728:
      case -15727:
      case -15726:
      case -15725:
      case -15724:
      case -15723:
      case -15722:
      case -15721:
      case -15720:
      case -15507:
      case -15486:
      case -15485:
      case -15484:
      case -15483:
      case -15482:
      case -15481:
      case -15480:
      case -15479:
      case -15478:
      case -15477:
      case -15476:
      case -15459:
      case -15458:
      case -15457:
      case -15456:
      case -15455:
      case -15454:
      case -15453:
      case -15452:
      case -15451:
      case -15450:
      case -15449:
      case -15448:
      case -15447:
      case -15446:
      case -15445:
      case -15416:
      case -15415:
      case -15414:
      case -15401:
      case -15400:
      case -15399:
      case -15398:
      case -15397:
      case -15396:
      case -15395:
      case -15394:
      case -15393:
      case -15392:
      case -15391:
      case -15390:
      case -15389:
      case -15388:
      case -15387:
      case -15386:
      case -15385:
      case -15384:
      case -15383:
      case -15382:
      case -15381:
      case -15297:
      case -15275:
      case -15274:
      case -15273:
      case -15272:
      case -15244:
      case -15243:
      case -15203:
      case -14954:
      case -14953:
      case -14914:
      case -14849:
        result = 70;
        break;
      case -16242:
      case -15817:
      case -15463:
      case -15462:
      case -15461:
      case -15460:
      case -15444:
      case -15443:
      case -15442:
      case -15441:
      case -15440:
      case -15439:
      case -15438:
      case -15437:
      case -15436:
      case -15413:
      case -15380:
      case -15379:
      case -15378:
      case -15377:
      case -15376:
      case -15375:
      case -15374:
      case -15373:
      case -15372:
      case -15371:
      case -15370:
      case -15369:
      case -15368:
      case -15367:
      case -15319:
      case -15288:
      case -14881:
      case -14880:
        goto LABEL_21;
      case -16241:
      case -15983:
      case -15816:
        goto LABEL_71;
      case -16240:
      case -16239:
      case -16238:
      case -16237:
      case -16236:
      case -16235:
      case -16234:
      case -16233:
      case -16232:
      case -16231:
      case -16221:
      case -16196:
      case -16114:
      case -16108:
      case -16094:
      case -15981:
      case -15913:
      case -15910:
      case -15903:
      case -15894:
      case -15815:
      case -15775:
      case -15761:
      case -15760:
      case -15690:
      case -15689:
      case -15688:
      case -15534:
      case -14801:
        goto LABEL_7;
      case -16194:
      case -16193:
      case -16192:
      case -16191:
      case -16190:
      case -16189:
      case -16188:
      case -16187:
      case -16186:
      case -16185:
      case -16184:
      case -16183:
      case -16182:
      case -16181:
      case -16180:
      case -16179:
      case -16178:
      case -16177:
      case -16176:
      case -16175:
      case -16174:
      case -16173:
      case -16172:
      case -16171:
      case -16170:
      case -16169:
      case -16168:
      case -16167:
      case -16154:
      case -16153:
      case -16152:
      case -16025:
      case -16024:
      case -16023:
        result = 42;
        break;
      case -16136:
      case -16127:
        result = 41;
        break;
      case -16119:
      case -16118:
      case -16117:
      case -16116:
      case -16115:
      case -16110:
      case -16109:
      case -16105:
      case -15829:
      case -15828:
      case -15778:
      case -15777:
      case -15356:
      case -15355:
      case -15354:
      case -15353:
      case -15352:
      case -15351:
        goto LABEL_40;
      case -16097:
      case -16032:
        result = 81;
        break;
      case -16073:
      case -16072:
      case -16071:
      case -16070:
        result = 24;
        break;
      case -16069:
      case -16068:
      case -16067:
      case -16034:
      case -16019:
      case -15736:
      case -15735:
      case -15734:
      case -15733:
        goto LABEL_52;
      case -16063:
      case -16062:
      case -16061:
      case -16060:
      case -16059:
      case -16058:
      case -16057:
      case -16056:
      case -16055:
      case -16054:
      case -16053:
      case -16033:
      case -16002:
      case -16001:
      case -16000:
      case -15999:
      case -15916:
      case -15915:
      case -15627:
      case -15626:
      case -15625:
      case -15549:
      case -15548:
      case -15547:
      case -15546:
      case -15539:
      case -15538:
      case -15537:
      case -15536:
      case -15205:
      case -15204:
        result = 18;
        break;
      case -15982:
        result = 78;
        break;
      case -15975:
      case -15974:
      case -15973:
      case -15911:
      case -15907:
      case -15422:
      case -15321:
        result = 76;
        break;
      case -15957:
      case -15956:
      case -15955:
      case -15954:
      case -15953:
      case -15952:
      case -15951:
      case -15950:
      case -15949:
      case -15948:
      case -15947:
      case -15946:
      case -15945:
      case -15944:
      case -15943:
      case -15942:
      case -15941:
      case -15940:
      case -15939:
      case -15938:
      case -15937:
      case -15936:
      case -15906:
      case -15276:
      case -15266:
      case -15265:
      case -15264:
      case -15263:
      case -15262:
      case -14928:
      case -14927:
      case -14926:
      case -14925:
      case -14924:
      case -14923:
      case -14922:
      case -14921:
      case -14920:
      case -14919:
      case -14918:
      case -14917:
      case -14916:
      case -14915:
      case -14837:
        result = 59;
        break;
      case -15935:
      case -15934:
      case -15933:
      case -15932:
      case -15931:
      case -15930:
      case -15929:
      case -15928:
      case -15927:
      case -15926:
      case -15905:
      case -15827:
      case -15826:
      case -15825:
      case -15824:
      case -15773:
      case -15277:
        result = 58;
        break;
      case -15925:
      case -15924:
      case -15923:
      case -15922:
      case -15921:
      case -15920:
      case -15919:
      case -15918:
      case -15917:
      case -15896:
      case -15895:
      case -15766:
      case -15765:
      case -15764:
      case -15763:
      case -15762:
        goto LABEL_36;
      case -15893:
        result = 64;
        break;
      case -15890:
      case -15889:
      case -15888:
      case -15887:
      case -15886:
      case -15885:
      case -15884:
      case -15883:
      case -15882:
      case -15881:
      case -14930:
      case -14929:
        result = 82;
        break;
      case -15880:
      case -15879:
      case -15325:
        result = 38;
        break;
      case -15867:
      case -15753:
        result = 31;
        break;
      case -15866:
      case -15865:
        result = 35;
        break;
      case -15803:
      case -15801:
      case -15799:
      case -15797:
      case -15795:
      case -15776:
      case -15771:
      case -15770:
      case -15412:
      case -15411:
        result = 68;
        break;
      case -15794:
      case -15792:
      case -15790:
      case -15789:
      case -15788:
      case -15787:
      case -15786:
      case -15785:
      case -15784:
      case -15783:
      case -15782:
      case -15781:
      case -15271:
      case -14952:
      case -14951:
        goto LABEL_47;
      case -15769:
        result = 73;
        break;
      case -15752:
        result = 32;
        break;
      case -15748:
        result = 30;
        break;
      case -15745:
        result = 66;
        break;
      case -15744:
      case -15743:
      case -15742:
      case -15741:
      case -15740:
      case -15739:
      case -15738:
        result = 67;
        break;
      case -15702:
        result = 26;
        break;
      case -15692:
        result = 45;
        break;
      case -15691:
        result = 79;
        break;
      case -15687:
      case -15686:
      case -15685:
      case -15684:
      case -15668:
      case -15667:
      case -15666:
      case -15665:
      case -15664:
      case -15663:
      case -15662:
      case -15555:
      case -15554:
      case -15553:
      case -15426:
      case -15409:
      case -15408:
      case -15407:
      case -15327:
        result = 19;
        break;
      case -15683:
      case -15682:
      case -15681:
      case -15680:
      case -15679:
      case -15678:
      case -15677:
        result = 20;
        break;
      case -15676:
      case -15675:
      case -15674:
      case -15611:
        goto LABEL_70;
      case -15661:
      case -15660:
      case -15659:
      case -15658:
      case -15657:
      case -15656:
      case -15655:
      case -15654:
      case -15653:
      case -15652:
      case -15651:
      case -15650:
      case -15649:
      case -15552:
        goto LABEL_32;
      case -15648:
      case -15647:
      case -15646:
      case -15645:
      case -15644:
      case -15643:
      case -15642:
      case -15641:
      case -15640:
      case -15639:
      case -15638:
      case -15637:
      case -15636:
      case -15635:
      case -15634:
      case -15633:
      case -15632:
      case -15631:
      case -15630:
      case -15629:
      case -15628:
      case -15595:
      case -15594:
      case -15593:
      case -15592:
      case -15591:
      case -15590:
      case -15589:
      case -15588:
      case -15524:
      case -15523:
      case -15522:
      case -15521:
      case -15520:
      case -15519:
      case -15502:
      case -15466:
      case -15465:
      case -15366:
      case -15365:
      case -15287:
      case -14968:
      case -14967:
        goto LABEL_18;
      case -15610:
        goto LABEL_80;
      case -15607:
      case -15606:
      case -15605:
      case -15604:
      case -15603:
      case -15602:
      case -15601:
      case -15600:
      case -15599:
      case -15598:
      case -15597:
      case -15596:
      case -15574:
      case -15573:
      case -15543:
      case -15542:
      case -15528:
      case -15527:
        goto LABEL_35;
      case -15572:
      case -15571:
      case -15570:
      case -15569:
      case -15568:
      case -15567:
      case -15566:
      case -15565:
      case -15564:
      case -15563:
      case -15562:
      case -15561:
      case -15560:
      case -15559:
      case -15558:
      case -15557:
      case -15556:
      case -15545:
      case -15544:
      case -15530:
      case -15529:
      case -15526:
      case -15525:
      case -15258:
      case -15257:
        goto LABEL_27;
      case -15508:
        result = 69;
        break;
      case -15495:
        result = 46;
        break;
      case -15494:
        result = 47;
        break;
      case -15493:
        result = 48;
        break;
      case -15492:
        result = 49;
        break;
      case -15491:
      case -15490:
      case -15489:
      case -15488:
      case -15424:
      case -15324:
        result = 61;
        break;
      case -15346:
      case -15345:
      case -15344:
      case -15343:
      case -15342:
      case -15341:
      case -15340:
      case -15339:
      case -15338:
      case -15337:
      case -15336:
      case -15335:
      case -15313:
      case -15312:
      case -15311:
      case -15310:
      case -15309:
      case -15308:
      case -15295:
      case -15294:
      case -15293:
      case -15292:
        result = 51;
        break;
      case -15334:
      case -15333:
      case -15332:
      case -15307:
      case -15306:
      case -15291:
        result = 52;
        break;
      case -15331:
        result = 55;
        break;
      case -15330:
      case -15329:
      case -15299:
        result = 56;
        break;
      case -15328:
      case -15305:
      case -15304:
      case -15303:
      case -15302:
      case -15301:
      case -15300:
        result = 54;
        break;
      case -15320:
        result = 33;
        break;
      case -15290:
      case -15289:
        result = 53;
        break;
      case -15242:
      case -15241:
      case -15240:
      case -15239:
      case -15238:
      case -15237:
      case -15236:
      case -15235:
      case -15234:
      case -15233:
      case -15232:
      case -15231:
      case -15230:
      case -15229:
      case -15228:
      case -15227:
      case -15226:
      case -15225:
      case -15224:
      case -15223:
      case -15222:
      case -15221:
      case -15220:
      case -15219:
      case -15218:
      case -15212:
      case -15211:
      case -15210:
      case -15209:
      case -15208:
      case -15207:
      case -15206:
        result = 72;
        break;
      case -15213:
        result = 63;
        break;
      case -15188:
      case -15187:
      case -15186:
      case -15185:
      case -15184:
      case -15183:
      case -14879:
      case -14878:
      case -14877:
      case -14876:
      case -14824:
      case -14817:
        result = 87;
        break;
      case -15182:
      case -15181:
      case -15180:
      case -15179:
      case -15178:
      case -14848:
        result = 88;
        break;
      case -15177:
        result = 89;
        break;
      case -15176:
      case -15175:
      case -15174:
        result = 90;
        break;
      case -15173:
      case -15172:
      case -15171:
      case -15170:
      case -15169:
      case -15168:
      case -15167:
      case -15166:
      case -15165:
      case -15164:
      case -15163:
      case -15162:
      case -14907:
      case -14884:
      case -14875:
      case -14874:
      case -14798:
        result = 91;
        break;
      case -15161:
      case -15160:
      case -15159:
      case -15158:
      case -15157:
      case -15156:
      case -15155:
      case -15154:
      case -15153:
      case -15152:
      case -15151:
      case -15150:
      case -15149:
      case -15148:
      case -15147:
      case -15146:
      case -14906:
      case -14873:
      case -14872:
      case -14847:
      case -14846:
      case -14845:
      case -14844:
      case -14843:
      case -14842:
      case -14833:
      case -14823:
      case -14822:
      case -14821:
      case -14820:
        result = 92;
        break;
      case -15145:
      case -15144:
      case -15143:
      case -15142:
      case -15141:
      case -15140:
      case -15139:
      case -15138:
      case -15137:
      case -15136:
      case -15135:
      case -15134:
      case -15133:
      case -15132:
      case -15131:
      case -15130:
      case -14871:
      case -14870:
      case -14869:
      case -14868:
      case -14867:
      case -14866:
      case -14836:
      case -14819:
      case -14818:
        result = 93;
        break;
      case -15129:
      case -15128:
      case -14816:
        result = 94;
        break;
      case -15127:
      case -15126:
      case -15125:
      case -15124:
      case -15123:
      case -15122:
      case -15121:
      case -15120:
      case -15119:
      case -15118:
      case -15117:
      case -15116:
      case -15115:
      case -15114:
      case -15113:
      case -15112:
      case -15111:
      case -15110:
      case -15109:
      case -15108:
      case -15107:
      case -15106:
      case -15105:
      case -15104:
      case -15103:
      case -15102:
      case -15101:
      case -15100:
      case -15099:
      case -15098:
      case -15097:
      case -15096:
      case -15095:
      case -15094:
      case -15093:
      case -15092:
      case -15091:
      case -15090:
      case -15089:
      case -15088:
      case -15087:
      case -15086:
      case -15085:
      case -15084:
      case -15083:
      case -15082:
      case -15081:
      case -14913:
      case -14912:
      case -14911:
      case -14865:
      case -14864:
      case -14863:
      case -14862:
      case -14841:
      case -14832:
      case -14831:
      case -14830:
      case -14829:
      case -14828:
      case -14827:
      case -14826:
      case -14815:
      case -14814:
      case -14813:
      case -14812:
        goto LABEL_14;
      case -15080:
      case -15079:
      case -15078:
      case -15077:
      case -15076:
      case -15075:
      case -15074:
      case -15073:
      case -15072:
        result = 96;
        break;
      case -15071:
      case -15070:
      case -15069:
        result = 97;
        break;
      case -15068:
      case -15067:
      case -15066:
      case -15065:
      case -15064:
      case -15063:
      case -15062:
      case -15061:
      case -15060:
      case -15059:
      case -15058:
      case -15057:
      case -15056:
      case -15055:
      case -15054:
      case -15053:
      case -15052:
      case -15051:
      case -15050:
      case -15049:
      case -15048:
      case -15047:
      case -15046:
      case -15045:
      case -15044:
      case -15043:
      case -15042:
      case -15041:
      case -15040:
      case -15039:
      case -15038:
      case -15037:
      case -15036:
      case -15035:
      case -15034:
      case -15033:
      case -15032:
      case -15031:
      case -15030:
      case -15029:
      case -15028:
      case -15027:
      case -15026:
      case -15025:
      case -15024:
      case -15023:
      case -15022:
      case -15021:
      case -15020:
      case -15019:
      case -15018:
      case -15017:
      case -15016:
      case -14910:
      case -14909:
      case -14908:
      case -14859:
      case -14858:
      case -14857:
      case -14856:
      case -14808:
      case -14807:
      case -14806:
      case -14805:
        result = 98;
        break;
      case -15015:
      case -15014:
      case -15013:
      case -15012:
      case -15011:
      case -15010:
      case -15009:
      case -15008:
      case -15007:
      case -15006:
      case -15005:
      case -15004:
      case -15003:
      case -15002:
      case -15001:
      case -15000:
      case -14999:
      case -14998:
      case -14997:
      case -14996:
      case -14995:
      case -14994:
      case -14993:
      case -14992:
      case -14991:
      case -14990:
      case -14989:
      case -14988:
      case -14987:
      case -14986:
      case -14985:
      case -14984:
      case -14983:
      case -14982:
      case -14981:
      case -14980:
      case -14979:
      case -14978:
      case -14977:
      case -14976:
      case -14975:
      case -14974:
        result = 99;
        break;
      case -14973:
      case -14972:
      case -14971:
      case -14970:
      case -14969:
      case -14855:
      case -14802:
        result = 100;
        break;
      case -14950:
      case -14949:
      case -14948:
      case -14947:
      case -14946:
      case -14945:
      case -14944:
      case -14943:
      case -14942:
      case -14941:
      case -14940:
      case -14939:
      case -14938:
      case -14937:
      case -14936:
      case -14935:
      case -14934:
      case -14933:
      case -14932:
      case -14803:
        goto LABEL_29;
      case -14931:
        result = 102;
        break;
      case -14905:
      case -14904:
      case -14903:
      case -14902:
      case -14901:
      case -14900:
      case -14899:
      case -14898:
      case -14897:
      case -14896:
      case -14895:
      case -14894:
      case -14893:
      case -14892:
      case -14891:
      case -14890:
      case -14889:
      case -14888:
      case -14887:
      case -14886:
      case -14885:
      case -14861:
      case -14860:
      case -14811:
      case -14810:
      case -14809:
        result = 105;
        break;
      case -14825:
        result = 106;
        break;
      default:
        switch(a1)
        {
          case -20480:
          case -20479:
          case -20478:
          case -20477:
          case -20476:
          case -20475:
          case -20474:
            result = 39;
            break;
          case -20473:
          case -20472:
          case -20471:
          case -20470:
          case -20469:
          case -20468:
          case -20467:
          case -20466:
          case -20465:
          case -20464:
          case -20463:
          case -20462:
          case -20461:
          case -20460:
          case -20459:
          case -20458:
          case -20457:
          case -20456:
            goto LABEL_43;
          case -20455:
          case -20454:
          case -20453:
          case -20452:
          case -20451:
          case -20450:
          case -20449:
          case -20448:
          case -20447:
          case -20446:
          case -20445:
          case -20350:
          case -20349:
          case -20336:
          case -20335:
          case -20334:
          case -20333:
          case -20332:
          case -20331:
          case -20330:
          case -20329:
          case -20328:
          case -20321:
          case -20316:
            result = 103;
            break;
          case -20444:
          case -20443:
          case -20442:
          case -20441:
          case -20440:
          case -20439:
          case -20438:
          case -20437:
          case -20436:
          case -20435:
          case -20434:
          case -20433:
          case -20432:
          case -20431:
          case -20430:
          case -20429:
          case -20428:
          case -20427:
          case -20426:
          case -20425:
          case -20424:
          case -20423:
          case -20422:
          case -20421:
          case -20420:
          case -20348:
          case -20347:
          case -20346:
          case -20320:
          case -20315:
          case -20314:
            goto LABEL_24;
          case -20419:
          case -20418:
          case -20417:
          case -20416:
          case -20415:
          case -20414:
          case -20413:
          case -20412:
          case -20411:
          case -20410:
          case -20409:
          case -20408:
          case -20407:
          case -20406:
          case -20345:
          case -20344:
          case -20343:
          case -20342:
          case -20341:
          case -20340:
          case -20339:
          case -20338:
          case -20337:
          case -20327:
          case -20323:
          case -20319:
            result = 107;
            break;
          case -20405:
          case -20404:
          case -20403:
          case -20402:
          case -20401:
          case -20400:
          case -20399:
          case -20398:
          case -20326:
            result = 108;
            break;
          case -20397:
          case -20396:
          case -20395:
          case -20394:
          case -20393:
          case -20392:
          case -20391:
          case -20390:
          case -20389:
          case -20388:
          case -20387:
          case -20386:
          case -20385:
          case -20384:
          case -20383:
          case -20382:
          case -20381:
          case -20380:
          case -20379:
          case -20378:
          case -20377:
          case -20376:
          case -20375:
          case -20374:
          case -20373:
          case -20372:
          case -20371:
          case -20370:
          case -20325:
          case -20322:
          case -20318:
          case -20317:
            result = 110;
            break;
          case -20369:
          case -20368:
          case -20367:
          case -20366:
          case -20365:
          case -20364:
          case -20363:
          case -20362:
          case -20361:
          case -20360:
          case -20359:
          case -20358:
          case -20357:
          case -20356:
          case -20355:
          case -20354:
          case -20353:
          case -20352:
          case -20351:
          case -20324:
            goto LABEL_38;
          default:
            if (a1 == -12544)
            {
              goto LABEL_95;
            }

            return 0;
        }

        break;
    }
  }

  return result;
}