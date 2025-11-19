id MakeMTLStitchedLibraryDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLStitchedLibraryDescriptor);
  [v4 setOptions:*(a1 + 48)];
  v5 = MakeMTLFunctionStitchingGraphArray(a1);
  [v4 setFunctionGraphs:v5];

  v6 = CreateObjectArrayWithMap(*(a1 + 16), *(a1 + 40), v3);

  [v4 setFunctions:v6];

  return v4;
}

id MakeMTLFunctionStitchingGraphArray(void *a1)
{
  v26 = objc_opt_new();
  v25 = [[NSMutableArray alloc] initWithCapacity:a1[4]];
  if (a1[4])
  {
    v2 = 0;
    while (1)
    {
      v3 = *a1 + 56 * v2;
      v28 = [NSString stringWithUTF8String:*v3, v25];
      v4 = MakeMTLFunctionStitchingFunctionNodeArray(*(v3 + 8), *(v3 + 16), a1, v26);
      v5 = v4;
      v6 = &__NSArray0__struct;
      if (v4)
      {
        v6 = v4;
      }

      v27 = v6;

      v7 = MakeMTLFunctionStitchingFunctionNode(a1, *(v3 + 24), v26);
      v8 = *(v3 + 40);
      if (v8)
      {
        v9 = *(v3 + 32);
        v10 = [[NSMutableArray alloc] initWithCapacity:v8];
        while (1)
        {
          v12 = *v9;
          v9 += 8;
          v11 = v12;
          if (v12 == 1)
          {
            break;
          }

          if (v11 == 2)
          {
            v13 = MTLFunctionStitchingAttributeKernel_ptr;
LABEL_11:
            v14 = objc_alloc_init(*v13);
            [v10 addObject:v14];
          }

          if (!--v8)
          {
            v15 = [v10 copy];

            goto LABEL_15;
          }
        }

        v13 = MTLFunctionStitchingAttributeAlwaysInline_ptr;
        goto LABEL_11;
      }

      v15 = 0;
LABEL_15:
      v16 = &__NSArray0__struct;
      if (v15)
      {
        v16 = v15;
      }

      v17 = v16;

      v18 = *(v3 + 48);
      if (v18 == 2)
      {
        break;
      }

      v19 = v28;
      if (v18 == 1)
      {
        v20 = MTLFunctionStitchingGraph_ptr;
LABEL_21:
        v21 = [objc_alloc(*v20) initWithFunctionName:v19 nodes:v27 outputNode:v7 attributes:v17];
        [v25 addObject:v21];
      }

      if (++v2 >= a1[4])
      {
        goto LABEL_23;
      }
    }

    v20 = MTLFunctionStitchingGraphSPI_ptr;
    v19 = v28;
    goto LABEL_21;
  }

LABEL_23:
  v22 = v25;
  v23 = [v25 copy];

  return v23;
}

id MakeMTLFunctionStitchingFunctionNodeArray(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:a2];
    do
    {
      v10 = *a1++;
      v9 = v10;
      v11 = [NSNumber numberWithUnsignedLongLong:v10];
      v12 = [v7 objectForKeyedSubscript:v11];

      if (!v12)
      {
        v12 = MakeMTLFunctionStitchingFunctionNode(a3, v9, v7);
      }

      [v8 addObject:v12];

      --a2;
    }

    while (a2);
    v13 = [v8 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id MakeMTLFunctionStitchingFunctionNode(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2 || *(a1 + 24) < a2)
  {
    v6 = 0;
    goto LABEL_62;
  }

  v7 = [NSNumber numberWithUnsignedLongLong:a2];
  v8 = [v5 objectForKeyedSubscript:v7];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v6 = v9;
    goto LABEL_61;
  }

  v10 = *(a1 + 8) + 56 * a2;
  v8 = [NSString stringWithUTF8String:*(v10 - 48)];
  v11 = *(v10 - 40);
  v12 = *(v10 - 24);
  v13 = v5;
  if (v12)
  {
    v38 = v10;
    v39 = v8;
    v40 = v5;
    v14 = [[NSMutableArray alloc] initWithCapacity:v12];
    while (1)
    {
      v16 = *v11++;
      v15 = v16;
      v17 = v13;
      if (v16 && *(a1 + 24) >= v15)
      {
        v19 = [NSNumber numberWithUnsignedLongLong:v15];
        v18 = [v17 objectForKeyedSubscript:v19];

        if (!v18)
        {
          v20 = *(a1 + 8) + 56 * v15;
          v21 = *(v20 - 56);
          if (v21 > 6)
          {
            if (*(v20 - 56) > 9u)
            {
              switch(v21)
              {
                case 0xAu:
                  v24 = MTLFunctionStitchingBuiltinThreadPositionInGrid;
                  goto LABEL_40;
                case 0xBu:
                  v24 = MTLFunctionStitchingBuiltinThreadPositionInThreadgroup;
LABEL_40:
                  v22 = objc_alloc_init(v24);
LABEL_41:
                  v18 = v22;
                  v25 = [NSNumber numberWithUnsignedLongLong:v15];
                  [v17 setObject:v18 forKeyedSubscript:v25];

                  break;
                case 0xCu:
LABEL_32:
                  v18 = MakeMTLFunctionStitchingFunctionNode(a1, v15, v17);
                  break;
              }
            }

            else
            {
              switch(v21)
              {
                case 7u:
                  v23 = MTLFunctionStitchingInputSampler;
LABEL_37:
                  v22 = [[v23 alloc] initWithBindIndex:*(v20 - 40)];
                  goto LABEL_41;
                case 8u:
                  v23 = MTLFunctionStitchingInputThreadgroup;
                  goto LABEL_37;
                case 9u:
                  v23 = MTLFunctionStitchingInputImageblock;
                  goto LABEL_37;
              }
            }
          }

          else if (*(v20 - 56) > 3u)
          {
            switch(v21)
            {
              case 4u:
                v23 = MTLFunctionStitchingInputBuffer;
                goto LABEL_37;
              case 5u:
                v22 = [[MTLFunctionStitchingInputBufferAddress alloc] initWithBindIndex:*(v20 - 40) byteOffset:*(v20 - 48) dereference:*(v20 - 38) != 0];
                goto LABEL_41;
              case 6u:
                v23 = MTLFunctionStitchingInputTexture;
                goto LABEL_37;
            }
          }

          else
          {
            if (v21 - 1 < 2)
            {
              goto LABEL_32;
            }

            if (v21 == 3)
            {
              v22 = [[MTLFunctionStitchingInputNode alloc] initWithArgumentIndex:*(v20 - 40)];
              goto LABEL_41;
            }
          }
        }
      }

      else
      {
        v18 = 0;
      }

      [v14 addObject:v18];
      if (!--v12)
      {
        v26 = [v14 copy];

        v8 = v39;
        v5 = v40;
        v10 = v38;
        goto LABEL_45;
      }
    }
  }

  v26 = 0;
LABEL_45:

  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = &__NSArray0__struct;
  }

  v28 = v27;

  v29 = MakeMTLFunctionStitchingFunctionNodeArray(*(v10 - 32), *(v10 - 16), a1, v13);
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = &__NSArray0__struct;
  }

  v32 = v31;

  v33 = *(v10 - 56);
  if (v33 == 1)
  {
    v35 = MTLFunctionStitchingFunctionNode;
    goto LABEL_57;
  }

  if (v33 == 12)
  {
    v35 = MTLFunctionStitchingEarlyReturnNode;
LABEL_57:
    v34 = [[v35 alloc] initWithName:v8 arguments:v28 controlDependencies:v32];
    goto LABEL_58;
  }

  if (v33 != 2)
  {
    v6 = 0;
    goto LABEL_60;
  }

  v34 = [[MTLFunctionStitchingFunctionNodeSPI alloc] initWithName:v8 arguments:v28 controlDependencies:v32 isEarlyReturn:*(v10 - 8) != 0];
LABEL_58:
  v6 = v34;
  v36 = [NSNumber numberWithUnsignedLongLong:a2];
  [v13 setObject:v6 forKeyedSubscript:v36];

LABEL_60:
LABEL_61:

LABEL_62:

  return v6;
}

id MakeMTLStitchedLibraryDescriptorSPI(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTLStitchedLibraryDescriptorSPI);
  [v4 setOptions:*(a1 + 48)];
  v5 = MakeMTLFunctionStitchingGraphArray(a1);
  [v4 setFunctionGraphs:v5];

  v6 = CreateObjectArrayWithMap(*(a1 + 16), *(a1 + 40), v3);

  [v4 setFunctions:v6];

  return v4;
}

void TranslateGTMTLFXSpatialScalerDescriptor(void *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 384);
  *(a2 + 384) = v3 + 40;
  if (a3)
  {
    v4 = a1;
    *v3 = [v4 inputWidth];
    *(v3 + 8) = [v4 inputHeight];
    *(v3 + 16) = [v4 outputWidth];
    *(v3 + 24) = [v4 outputHeight];
    *(v3 + 32) = [v4 colorTextureFormat];
    *(v3 + 34) = [v4 outputTextureFormat];
    v5 = [v4 colorProcessingMode];

    *(v3 + 36) = v5;
  }
}

id MakeMTLFXSpatialScalerDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MTLFXSpatialScalerDescriptor);
  [v2 setInputWidth:*a1];
  [v2 setInputHeight:*(a1 + 8)];
  [v2 setOutputWidth:*(a1 + 16)];
  [v2 setOutputHeight:*(a1 + 24)];
  [v2 setColorTextureFormat:*(a1 + 32)];
  [v2 setOutputTextureFormat:*(a1 + 34)];
  [v2 setColorProcessingMode:*(a1 + 36)];

  return v2;
}

void TranslateGTMTLFXTemporalScalerDescriptor(void *a1, uint64_t a2, int a3)
{
  v8 = a1;
  v5 = *(a2 + 392);
  *(a2 + 392) = v5 + 64;
  if (a3)
  {
    *v5 = [v8 colorTextureFormat];
    *(v5 + 2) = [v8 depthTextureFormat];
    *(v5 + 4) = [v8 motionTextureFormat];
    if (objc_opt_respondsToSelector())
    {
      *(v5 + 58) = [v8 isReactiveMaskTextureEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 8) = [v8 reactiveMaskTextureFormat];
    }

    *(v5 + 6) = [v8 outputTextureFormat];
    *(v5 + 16) = [v8 inputWidth];
    *(v5 + 24) = [v8 inputHeight];
    *(v5 + 32) = [v8 outputWidth];
    *(v5 + 40) = [v8 outputHeight];
    [v8 inputContentMinScale];
    *(v5 + 48) = v6;
    [v8 inputContentMaxScale];
    *(v5 + 52) = v7;
    *(v5 + 56) = [v8 isAutoExposureEnabled];
    *(v5 + 57) = [v8 isInputContentPropertiesEnabled];
    if (objc_opt_respondsToSelector())
    {
      *(v5 + 59) = [v8 requiresSynchronousInitialization];
    }
  }
}

id MakeMTLFXTemporalScalerDescriptor(unsigned __int16 *a1)
{
  v2 = objc_alloc_init(MTLFXTemporalScalerDescriptor);
  [v2 setColorTextureFormat:*a1];
  [v2 setDepthTextureFormat:a1[1]];
  [v2 setMotionTextureFormat:a1[2]];
  if (objc_opt_respondsToSelector())
  {
    [v2 setReactiveMaskTextureEnabled:*(a1 + 58) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setReactiveMaskTextureFormat:a1[4]];
  }

  [v2 setOutputTextureFormat:a1[3]];
  [v2 setInputWidth:*(a1 + 2)];
  [v2 setInputHeight:*(a1 + 3)];
  [v2 setOutputWidth:*(a1 + 4)];
  [v2 setOutputHeight:*(a1 + 5)];
  LODWORD(v3) = *(a1 + 12);
  [v2 setInputContentMinScale:v3];
  LODWORD(v4) = *(a1 + 13);
  [v2 setInputContentMaxScale:v4];
  [v2 setAutoExposureEnabled:*(a1 + 56) != 0];
  [v2 setInputContentPropertiesEnabled:*(a1 + 57) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v2 setRequiresSynchronousInitialization:*(a1 + 59) != 0];
  }

  return v2;
}

void TranslateGTMTLFXFrameInterpolatorDescriptor(void *a1, uint64_t a2, int a3)
{
  v7 = a1;
  v5 = *(a2 + 400);
  *(a2 + 400) = v5 + 56;
  if (a3)
  {
    if (objc_opt_respondsToSelector())
    {
      *v5 = [v7 inputWidth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 8) = [v7 inputHeight];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 16) = [v7 outputWidth];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 24) = [v7 outputHeight];
    }

    *(v5 + 40) = [v7 colorTextureFormat];
    *(v5 + 46) = [v7 outputTextureFormat];
    *(v5 + 44) = [v7 motionTextureFormat];
    *(v5 + 42) = [v7 depthTextureFormat];
    if (objc_opt_respondsToSelector())
    {
      *(v5 + 48) = [v7 uiTextureFormat];
    }

    v6 = [v7 scaler];
    *(v5 + 32) = [v6 streamReference];
  }
}

id MakeMTLFXFrameInterpolatorDescriptor(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a2;
  v13 = objc_alloc_init(MTLFXFrameInterpolatorDescriptor);
  if (objc_opt_respondsToSelector())
  {
    [v13 setInputWidth:*a1];
  }

  if (objc_opt_respondsToSelector())
  {
    [v13 setInputHeight:*(a1 + 8)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v13 setOutputWidth:*(a1 + 16)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v13 setOutputHeight:*(a1 + 24)];
  }

  [v13 setColorTextureFormat:*(a1 + 40)];
  [v13 setOutputTextureFormat:*(a1 + 46)];
  [v13 setMotionTextureFormat:*(a1 + 44)];
  [v13 setDepthTextureFormat:*(a1 + 42)];
  if (objc_opt_respondsToSelector())
  {
    [v13 setUITextureFormat:*(a1 + 48)];
  }

  v14 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  v15 = [v12 objectForKeyedSubscript:v14];

  if (v15)
  {
    [v13 setScaler:v15];
  }

  else
  {
    v16 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
    v17 = [v9 objectForKeyedSubscript:v16];
    if (v17)
    {
      [v13 setScaler:v17];
    }

    else
    {
      v23 = v11;
      v22 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
      v18 = [v10 objectForKeyedSubscript:?];
      if (v18)
      {
        [v13 setScaler:v18];
      }

      else
      {
        v19 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
        v20 = [v23 objectForKeyedSubscript:v19];
        [v13 setScaler:v20];
      }

      v11 = v23;
    }
  }

  return v13;
}

void TranslateGTMTLFXTemporalDenoisedScalerDescriptor(void *a1, uint64_t a2, int a3)
{
  v8 = a1;
  v5 = *(a2 + 408);
  *(a2 + 408) = v5 + 72;
  if (a3)
  {
    *v5 = [v8 colorTextureFormat];
    *(v5 + 2) = [v8 depthTextureFormat];
    *(v5 + 4) = [v8 motionTextureFormat];
    *(v5 + 6) = [v8 diffuseAlbedoTextureFormat];
    *(v5 + 8) = [v8 specularAlbedoTextureFormat];
    *(v5 + 10) = [v8 normalTextureFormat];
    *(v5 + 12) = [v8 roughnessTextureFormat];
    *(v5 + 14) = [v8 specularHitDistanceTextureFormat];
    if (objc_opt_respondsToSelector())
    {
      *(v5 + 16) = [v8 denoiseStrengthMaskTextureFormat];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 69) = [v8 isDenoiseStrengthMaskTextureEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 14) = [v8 specularHitDistanceTextureFormat];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 68) = [v8 isSpecularHitDistanceTextureEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 18) = [v8 transparencyOverlayTextureFormat];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 70) = [v8 isTransparencyOverlayTextureEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 66) = [v8 isReactiveMaskTextureEnabled];
    }

    if (objc_opt_respondsToSelector())
    {
      *(v5 + 22) = [v8 reactiveMaskTextureFormat];
    }

    *(v5 + 20) = [v8 outputTextureFormat];
    *(v5 + 24) = [v8 inputWidth];
    *(v5 + 32) = [v8 inputHeight];
    *(v5 + 40) = [v8 outputWidth];
    *(v5 + 48) = [v8 outputHeight];
    [v8 inputContentMinScale];
    *(v5 + 56) = v6;
    [v8 inputContentMaxScale];
    *(v5 + 60) = v7;
    *(v5 + 64) = [v8 isAutoExposureEnabled];
    *(v5 + 65) = [v8 isInputContentPropertiesEnabled];
  }
}

id MakeMTLFXTemporalDenoisedScalerDescriptor(unsigned __int16 *a1)
{
  v2 = objc_alloc_init(MTLFXTemporalDenoisedScalerDescriptor);
  [v2 setColorTextureFormat:*a1];
  [v2 setDepthTextureFormat:a1[1]];
  [v2 setMotionTextureFormat:a1[2]];
  [v2 setDiffuseAlbedoTextureFormat:a1[3]];
  [v2 setSpecularAlbedoTextureFormat:a1[4]];
  [v2 setNormalTextureFormat:a1[5]];
  [v2 setRoughnessTextureFormat:a1[6]];
  [v2 setSpecularHitDistanceTextureFormat:a1[7]];
  if (objc_opt_respondsToSelector())
  {
    [v2 setDenoiseStrengthMaskTextureFormat:a1[8]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setDenoiseStrengthMaskTextureEnabled:*(a1 + 69) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSpecularHitDistanceTextureFormat:a1[7]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSpecularHitDistanceTextureEnabled:*(a1 + 68) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setTransparencyOverlayTextureFormat:a1[9]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setTransparencyOverlayTextureEnabled:*(a1 + 70) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setReactiveMaskTextureEnabled:*(a1 + 66) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setReactiveMaskTextureFormat:a1[11]];
  }

  [v2 setOutputTextureFormat:a1[10]];
  [v2 setInputWidth:*(a1 + 3)];
  [v2 setInputHeight:*(a1 + 4)];
  [v2 setOutputWidth:*(a1 + 5)];
  [v2 setOutputHeight:*(a1 + 6)];
  LODWORD(v3) = *(a1 + 14);
  [v2 setInputContentMinScale:v3];
  LODWORD(v4) = *(a1 + 15);
  [v2 setInputContentMaxScale:v4];
  [v2 setAutoExposureEnabled:*(a1 + 64) != 0];
  [v2 setInputContentPropertiesEnabled:*(a1 + 65) != 0];

  return v2;
}

uint64_t DumpResourceToStateMirrorType(int a1)
{
  if ((a1 + 1) > 0x33)
  {
    return 2;
  }

  else
  {
    return dword_29BBBC[(a1 + 1)];
  }
}

uint64_t StateMirrorToDumpResourceType(int a1)
{
  if ((a1 - 2) > 0x6C)
  {
    return -1;
  }

  else
  {
    return byte_29BC8C[a1 - 2];
  }
}

uint64_t GTMTLSMBuilder_commitObject(uint64_t a1, uint64_t a2)
{
  v4 = *find_entry(*(a1 + 32), (a2 + 8), 8uLL, 0);
  if (v4)
  {
    v4 = *(v4 + 32);
  }

  *(a2 + 32) = v4;
  apr_hash_set(*(a1 + 32), (a2 + 8), 8, a2);
  return a2;
}

BOOL GTMTLSMBuilder_streamIntersectionRange(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a3 + 32);
  if (v5 && (*(v5 + 79) & 8) != 0)
  {
    v6 = (v5 + 64);
  }

  else
  {
    v6 = 0;
  }

  Func = GTTraceStream_lastFunc(a3);
  if (*v6 >= a1 + a2)
  {
    return 0;
  }

  v9 = Func;
  return !GTFenum_isDestructor(*(Func + 8)) || a1 <= *v9;
}

uint64_t GTMTLSMBuilder_getStreamObjectType(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0 && (*(v1 + 79) & 8) != 0)
  {
    return GTFenum_getConstructorType(*(v1 + 72));
  }

  else
  {
    return 0;
  }
}

void GTMTLSMBuilder_buffer(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v48 = 0u;
  *&v49 = 0;
  v54 = 0u;
  *&v55 = 0;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v52 = 0u;
  v50 = 0u;
  v51 = 0u;
  LODWORD(v48) = 22;
  *(&v49 + 1) = -1;
  WORD5(v54) = 2;
  v53 = 0xFFFFFFFFFFFFFFFFLL;
  *(&v55 + 1) = -1;
  *(&v50 + 1) = *a1;
  ++*(a1 + 48);
  if (a2 && (v4 = *(a2 + 32)) != 0 && (*(v4 + 79) & 8) != 0)
  {
    v5 = (v4 + 64);
  }

  else
  {
    v5 = 0;
  }

  GTMTLSMBuffer_processTraceFuncWithMap(&v48, *(a1 + 40), v5);
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = atomic_load((v6 + 4));
      v9 = v7 + (v8 >> 6) - 1;
      if (v9 > 1)
      {
        break;
      }

      v6 = *(v6 + 40);
      v7 = v9;
      if (!v6)
      {
        v7 = v9;
LABEL_13:
        v10 = v7 | (v9 << 32);
        goto LABEL_14;
      }
    }

    v9 = 1;
    goto LABEL_13;
  }

  v10 = 0;
  while (1)
  {
LABEL_14:
    if (!v6 || (v11 = v6 + 64 + ((HIDWORD(v10) - v10) << 6), (*(v11 + 15) & 8) == 0) || (v12 = *(a1 + 8), v13 = *v11, *v11 >= *(a1 + 16) + v12))
    {
      v29 = apr_palloc(*(a1 + 24), 0xA8uLL);
      v31 = v49;
      v30 = v50;
      *v29 = v48;
      v29[1] = v31;
      v29[2] = v30;
      v32 = v54;
      v34 = v51;
      v33 = v52;
      v29[5] = v53;
      v29[6] = v32;
      v29[3] = v34;
      v29[4] = v33;
      v36 = v56;
      v35 = v57;
      v37 = v55;
      *(v29 + 20) = v58;
      v29[8] = v36;
      v29[9] = v35;
      v29[7] = v37;
      v38 = *find_entry(*(a1 + 32), v29 + 8, 8uLL, 0);
      if (v38)
      {
        v38 = *(v38 + 32);
      }

      *(v29 + 4) = v38;
      apr_hash_set(*(a1 + 32), v29 + 8, 8, v29);
      v13 = -1;
      goto LABEL_34;
    }

    v14 = *(v11 + 8);
    if (v14 > -16368)
    {
      if (v14 != -16122 && v14 != -16367)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    if (v14 != -16372)
    {
      break;
    }

LABEL_24:
    if (v12 <= v13)
    {
      v16 = apr_palloc(*(a1 + 24), 0xA8uLL);
      v18 = v49;
      v17 = v50;
      *v16 = v48;
      *(v16 + 1) = v18;
      *(v16 + 2) = v17;
      v19 = v54;
      v21 = v51;
      v20 = v52;
      *(v16 + 5) = v53;
      *(v16 + 6) = v19;
      *(v16 + 3) = v21;
      *(v16 + 4) = v20;
      v23 = v56;
      v22 = v57;
      v24 = v55;
      v16[20] = v58;
      *(v16 + 8) = v23;
      *(v16 + 9) = v22;
      *(v16 + 7) = v24;
      v25 = *find_entry(*(a1 + 32), v16 + 8, 8uLL, 0);
      if (v25)
      {
        v25 = *(v25 + 32);
      }

      v16[4] = v25;
      apr_hash_set(*(a1 + 32), v16 + 1, 8, v16);
      v16[3] = v13;
    }

LABEL_29:
    GTMTLSMBuffer_processTraceFuncWithMap(&v48, *(a1 + 40), (v6 + 64 + ((HIDWORD(v10) - v10) << 6)));
    v26 = atomic_load((v6 + 4));
    v27 = v10 + (v26 >> 6);
    v28 = (HIDWORD(v10) + 1);
    v10 = (v28 << 32) | v10;
    if (v28 == v27 - 1)
    {
      v10 = (v28 << 32) | v28;
      v6 = *(v6 + 40);
    }
  }

  if (v14 != -16370)
  {
    goto LABEL_29;
  }

  if (v12 <= v13)
  {
    v29 = apr_palloc(*(a1 + 24), 0xA8uLL);
    v40 = v49;
    v39 = v50;
    *v29 = v48;
    v29[1] = v40;
    v29[2] = v39;
    v41 = v54;
    v43 = v51;
    v42 = v52;
    v29[5] = v53;
    v29[6] = v41;
    v29[3] = v43;
    v29[4] = v42;
    v45 = v56;
    v44 = v57;
    v46 = v55;
    *(v29 + 20) = v58;
    v29[8] = v45;
    v29[9] = v44;
    v29[7] = v46;
    v47 = *find_entry(*(a1 + 32), v29 + 8, 8uLL, 0);
    if (v47)
    {
      v47 = *(v47 + 32);
    }

    *(v29 + 4) = v47;
    apr_hash_set(*(a1 + 32), v29 + 8, 8, v29);
LABEL_34:
    *(v29 + 3) = v13;
  }
}

void GTMTLSMBuilder_tensor(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  memset(&v24[6], 0, 224);
  memset(&v24[2], 0, 48);
  memset(v24, 0, 24);
  LODWORD(v24[0]) = 101;
  *(&v24[1] + 1) = -1;
  WORD5(v24[6]) = 2;
  v24[5] = 0xFFFFFFFFFFFFFFFFLL;
  *(&v24[2] + 1) = *a1;
  ++*(a1 + 52);
  if (a2 && (v4 = *(a2 + 32)) != 0 && (*(v4 + 79) & 8) != 0)
  {
    v5 = (v4 + 64);
  }

  else
  {
    v5 = 0;
  }

  GTMTLSMTensor_processTraceFuncWithMap(v24, *(a1 + 40), v5);
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = atomic_load((v6 + 4));
      v9 = v7 + (v8 >> 6) - 1;
      if (v9 > 1)
      {
        break;
      }

      v6 = *(v6 + 40);
      v7 = v9;
      if (!v6)
      {
        v7 = v9;
LABEL_13:
        v10 = v7 | (v9 << 32);
        goto LABEL_14;
      }
    }

    v9 = 1;
    goto LABEL_13;
  }

  v10 = 0;
  while (1)
  {
LABEL_14:
    if (!v6 || (v11 = v6 + 64 + ((HIDWORD(v10) - v10) << 6), (*(v11 + 15) & 8) == 0) || (v12 = *(a1 + 8), v13 = *v11, *v11 >= *(a1 + 16) + v12))
    {
      v21 = apr_palloc(*(a1 + 24), 0x140uLL);
      memcpy(v21, v24, 0x140uLL);
      v22 = *find_entry(*(a1 + 32), v21 + 8, 8uLL, 0);
      if (v22)
      {
        v22 = *(v22 + 32);
      }

      *(v21 + 4) = v22;
      apr_hash_set(*(a1 + 32), v21 + 8, 8, v21);
      v13 = -1;
      goto LABEL_34;
    }

    v14 = *(v11 + 8);
    if (v14 > -14939)
    {
      if (v14 != -14938 && v14 != -14933)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    if (v14 != -14950)
    {
      break;
    }

LABEL_24:
    if (v12 <= v13)
    {
      v16 = apr_palloc(*(a1 + 24), 0x140uLL);
      memcpy(v16, v24, 0x140uLL);
      v17 = *find_entry(*(a1 + 32), v16 + 8, 8uLL, 0);
      if (v17)
      {
        v17 = *(v17 + 32);
      }

      *(v16 + 4) = v17;
      apr_hash_set(*(a1 + 32), v16 + 8, 8, v16);
      *(v16 + 3) = v13;
    }

LABEL_29:
    GTMTLSMTensor_processTraceFuncWithMap(v24, *(a1 + 40), (v6 + 64 + ((HIDWORD(v10) - v10) << 6)));
    v18 = atomic_load((v6 + 4));
    v19 = v10 + (v18 >> 6);
    v20 = (HIDWORD(v10) + 1);
    v10 = (v20 << 32) | v10;
    if (v20 == v19 - 1)
    {
      v10 = (v20 << 32) | v20;
      v6 = *(v6 + 40);
    }
  }

  if (v14 != -14948)
  {
    goto LABEL_29;
  }

  if (v12 <= v13)
  {
    v21 = apr_palloc(*(a1 + 24), 0x140uLL);
    memcpy(v21, v24, 0x140uLL);
    v23 = *find_entry(*(a1 + 32), v21 + 8, 8uLL, 0);
    if (v23)
    {
      v23 = *(v23 + 32);
    }

    *(v21 + 4) = v23;
    apr_hash_set(*(a1 + 32), v21 + 8, 8, v21);
LABEL_34:
    *(v21 + 3) = v13;
  }
}

void GTMTLSMBuilder_texture(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v57 = 0u;
  *&v58 = 0;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57.i32[0] = 80;
  *(&v58 + 1) = -1;
  WORD5(v63) = 2;
  v62 = 0xFFFFFFFFFFFFFFFFLL;
  v71 = 0xFFFFFFFFLL;
  *(&v59 + 1) = *a1;
  ++*(a1 + 56);
  if (a2 && (v4 = *(a2 + 32)) != 0 && (*(v4 + 79) & 8) != 0)
  {
    v5 = v4 + 64;
  }

  else
  {
    v5 = 0;
  }

  GTMTLSMTexture_processTraceFuncWithMap(&v57, *(a1 + 40), v5);
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = atomic_load((v6 + 4));
      v9 = v7 + (v8 >> 6) - 1;
      if (v9 > 1)
      {
        break;
      }

      v6 = *(v6 + 40);
      v7 = v9;
      if (!v6)
      {
        v7 = v9;
LABEL_13:
        v10 = v7 | (v9 << 32);
        goto LABEL_14;
      }
    }

    v9 = 1;
    goto LABEL_13;
  }

  v10 = 0;
  while (1)
  {
LABEL_14:
    if (!v6 || (v11 = v6 + 64 + ((HIDWORD(v10) - v10) << 6), (*(v11 + 15) & 8) == 0) || (v12 = *(a1 + 8), v13 = *v11, *v11 >= *(a1 + 16) + v12))
    {
      v32 = apr_palloc(*(a1 + 24), 0xE8uLL);
      v34 = v58;
      v33 = v59;
      *v32 = v57;
      v32[1] = v34;
      v32[2] = v33;
      v35 = v63;
      v37 = v60;
      v36 = v61;
      v32[5] = v62;
      v32[6] = v35;
      v32[3] = v37;
      v32[4] = v36;
      v38 = v67;
      v40 = v64;
      v39 = v65;
      v32[9] = v66;
      v32[10] = v38;
      v32[7] = v40;
      v32[8] = v39;
      v42 = v69;
      v41 = v70;
      v43 = v68;
      *(v32 + 28) = v71;
      v32[12] = v42;
      v32[13] = v41;
      v32[11] = v43;
      v44 = *find_entry(*(a1 + 32), v32 + 8, 8uLL, 0);
      if (v44)
      {
        v44 = *(v44 + 32);
      }

      *(v32 + 4) = v44;
      apr_hash_set(*(a1 + 32), v32 + 8, 8, v32);
      v13 = -1;
      goto LABEL_34;
    }

    v14 = *(v11 + 8);
    if (v14 > -16233)
    {
      if (v14 != -16232 && v14 != -16114)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    if (v14 != -16240)
    {
      break;
    }

LABEL_24:
    if (v12 <= v13)
    {
      v16 = apr_palloc(*(a1 + 24), 0xE8uLL);
      v18 = v58;
      v17 = v59;
      *v16 = v57;
      *(v16 + 1) = v18;
      *(v16 + 2) = v17;
      v19 = v63;
      v21 = v60;
      v20 = v61;
      *(v16 + 5) = v62;
      *(v16 + 6) = v19;
      *(v16 + 3) = v21;
      *(v16 + 4) = v20;
      v22 = v67;
      v24 = v64;
      v23 = v65;
      *(v16 + 9) = v66;
      *(v16 + 10) = v22;
      *(v16 + 7) = v24;
      *(v16 + 8) = v23;
      v26 = v69;
      v25 = v70;
      v27 = v68;
      v16[28] = v71;
      *(v16 + 12) = v26;
      *(v16 + 13) = v25;
      *(v16 + 11) = v27;
      v28 = *find_entry(*(a1 + 32), v16 + 8, 8uLL, 0);
      if (v28)
      {
        v28 = *(v28 + 32);
      }

      v16[4] = v28;
      apr_hash_set(*(a1 + 32), v16 + 1, 8, v16);
      v16[3] = v13;
    }

LABEL_29:
    GTMTLSMTexture_processTraceFuncWithMap(&v57, *(a1 + 40), v6 + 64 + ((HIDWORD(v10) - v10) << 6));
    v29 = atomic_load((v6 + 4));
    v30 = v10 + (v29 >> 6);
    v31 = (HIDWORD(v10) + 1);
    v10 = (v31 << 32) | v10;
    if (v31 == v30 - 1)
    {
      v10 = (v31 << 32) | v31;
      v6 = *(v6 + 40);
    }
  }

  if (v14 != -16238)
  {
    goto LABEL_29;
  }

  if (v12 <= v13)
  {
    v32 = apr_palloc(*(a1 + 24), 0xE8uLL);
    v46 = v58;
    v45 = v59;
    *v32 = v57;
    v32[1] = v46;
    v32[2] = v45;
    v47 = v63;
    v49 = v60;
    v48 = v61;
    v32[5] = v62;
    v32[6] = v47;
    v32[3] = v49;
    v32[4] = v48;
    v50 = v67;
    v52 = v64;
    v51 = v65;
    v32[9] = v66;
    v32[10] = v50;
    v32[7] = v52;
    v32[8] = v51;
    v54 = v69;
    v53 = v70;
    v55 = v68;
    *(v32 + 28) = v71;
    v32[12] = v54;
    v32[13] = v53;
    v32[11] = v55;
    v56 = *find_entry(*(a1 + 32), v32 + 8, 8uLL, 0);
    if (v56)
    {
      v56 = *(v56 + 32);
    }

    *(v32 + 4) = v56;
    apr_hash_set(*(a1 + 32), v32 + 8, 8, v32);
LABEL_34:
    *(v32 + 3) = v13;
  }
}

void GTMTLSMBuilder_counterSampleBuffer(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v20 = 0u;
    *&v21 = 0;
    v22 = 0u;
    LODWORD(v20) = 31;
    *(&v21 + 1) = -1;
    *(&v22 + 1) = *a1;
    v23 = 0;
    ++*(a1 + 132);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x38uLL);
        v16 = v21;
        *v15 = v20;
        v15[1] = v16;
        v15[2] = v22;
        *(v15 + 6) = v23;
        v17 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v17)
        {
          v17 = *(v17 + 32);
        }

        *(v15 + 4) = v17;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -15867)
      {
        break;
      }

      GTMTLSMCounterSampleBuffer_processTraceFuncWithMap(&v20, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x38uLL);
      v18 = v21;
      *v15 = v20;
      v15[1] = v18;
      v15[2] = v22;
      *(v15 + 6) = v23;
      v19 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v19)
      {
        v19 = *(v19 + 32);
      }

      *(v15 + 4) = v19;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_indirectCommandBuffer(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v34 = 0u;
  *&v35 = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v34.i32[0] = 57;
  *(&v35 + 1) = -1;
  WORD5(v40) = 2;
  v39 = 0xFFFFFFFFFFFFFFFFLL;
  ++*(a1 + 72);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  while (1)
  {
LABEL_10:
    if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
    {
      v23 = apr_palloc(*(a1 + 24), 0x98uLL);
      v24 = v41;
      v23[6] = v40;
      v23[7] = v24;
      v23[8] = v42;
      *(v23 + 18) = v43;
      v25 = v37;
      v23[2] = v36;
      v23[3] = v25;
      v26 = v39;
      v23[4] = v38;
      v23[5] = v26;
      v27 = v35;
      *v23 = v34;
      v23[1] = v27;
      v28 = *find_entry(*(a1 + 32), v23 + 8, 8uLL, 0);
      if (v28)
      {
        v28 = *(v28 + 32);
      }

      *(v23 + 4) = v28;
      apr_hash_set(*(a1 + 32), v23 + 8, 8, v23);
      v11 = -1;
      goto LABEL_28;
    }

    v12 = *(v9 + 8);
    if (v12 != -15925 && v12 != -15919)
    {
      break;
    }

    if (v10 <= v11)
    {
      v14 = apr_palloc(*(a1 + 24), 0x98uLL);
      v15 = v41;
      *(v14 + 6) = v40;
      *(v14 + 7) = v15;
      *(v14 + 8) = v42;
      v14[18] = v43;
      v16 = v37;
      *(v14 + 2) = v36;
      *(v14 + 3) = v16;
      v17 = v39;
      *(v14 + 4) = v38;
      *(v14 + 5) = v17;
      v18 = v35;
      *v14 = v34;
      *(v14 + 1) = v18;
      v19 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
      if (v19)
      {
        v19 = *(v19 + 32);
      }

      v14[4] = v19;
      apr_hash_set(*(a1 + 32), v14 + 1, 8, v14);
      v14[3] = v11;
    }

LABEL_23:
    GTMTLSMIndirectCommandBuffer_processTraceFuncWithMap(&v34, *(a1 + 40), v4 + 64 + ((HIDWORD(v8) - v8) << 6));
    v20 = atomic_load((v4 + 4));
    v21 = v8 + (v20 >> 6);
    v22 = (HIDWORD(v8) + 1);
    v8 = (v22 << 32) | v8;
    if (v22 == v21 - 1)
    {
      v8 = (v22 << 32) | v22;
      v4 = *(v4 + 40);
    }
  }

  if (v12 != -15923)
  {
    goto LABEL_23;
  }

  if (v10 <= v11)
  {
    v23 = apr_palloc(*(a1 + 24), 0x98uLL);
    v29 = v41;
    v23[6] = v40;
    v23[7] = v29;
    v23[8] = v42;
    *(v23 + 18) = v43;
    v30 = v37;
    v23[2] = v36;
    v23[3] = v30;
    v31 = v39;
    v23[4] = v38;
    v23[5] = v31;
    v32 = v35;
    *v23 = v34;
    v23[1] = v32;
    v33 = *find_entry(*(a1 + 32), v23 + 8, 8uLL, 0);
    if (v33)
    {
      v33 = *(v33 + 32);
    }

    *(v23 + 4) = v33;
    apr_hash_set(*(a1 + 32), v23 + 8, 8, v23);
LABEL_28:
    *(v23 + 3) = v11;
  }
}

void GTMTL4SMBuilder_commandBuffer(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v27 = 0u;
  *&v28 = 0;
  v29 = 0u;
  v30 = 0u;
  LODWORD(v27) = 91;
  *(&v28 + 1) = -1;
  ++*(a1 + 204);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  while (1)
  {
LABEL_10:
    if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
    {
      v20 = apr_palloc(*(a1 + 24), 0x40uLL);
      v21 = v28;
      *v20 = v27;
      v20[1] = v21;
      v22 = v30;
      v20[2] = v29;
      v20[3] = v22;
      v23 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
      if (v23)
      {
        v23 = *(v23 + 32);
      }

      *(v20 + 4) = v23;
      apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
      v11 = -1;
      goto LABEL_25;
    }

    v12 = *(v9 + 8);
    if (v12 != -14907)
    {
      break;
    }

    if (v10 <= v11)
    {
      v13 = apr_palloc(*(a1 + 24), 0x40uLL);
      v14 = v28;
      *v13 = v27;
      *(v13 + 1) = v14;
      v15 = v30;
      *(v13 + 2) = v29;
      *(v13 + 3) = v15;
      v16 = *find_entry(*(a1 + 32), v13 + 8, 8uLL, 0);
      if (v16)
      {
        v16 = *(v16 + 32);
      }

      v13[4] = v16;
      apr_hash_set(*(a1 + 32), v13 + 1, 8, v13);
      v13[3] = v11;
    }

LABEL_20:
    GTMTL4SMCommandBuffer_processTraceFunc(&v27, (v4 + 64 + ((HIDWORD(v8) - v8) << 6)), *(a1 + 40));
    v17 = atomic_load((v4 + 4));
    v18 = v8 + (v17 >> 6);
    v19 = (HIDWORD(v8) + 1);
    v8 = (v19 << 32) | v8;
    if (v19 == v18 - 1)
    {
      v8 = (v19 << 32) | v19;
      v4 = *(v4 + 40);
    }
  }

  if ((v12 + 15170) > 1)
  {
    goto LABEL_20;
  }

  if (v10 <= v11)
  {
    v20 = apr_palloc(*(a1 + 24), 0x40uLL);
    v24 = v28;
    *v20 = v27;
    v20[1] = v24;
    v25 = v30;
    v20[2] = v29;
    v20[3] = v25;
    v26 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
    if (v26)
    {
      v26 = *(v26 + 32);
    }

    *(v20 + 4) = v26;
    apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
LABEL_25:
    *(v20 + 3) = v11;
  }
}

void GTMTL4SMBuilder_commandAllocator(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v20 = 0u;
    *&v21 = 0;
    v23 = 0;
    v22 = 0u;
    LODWORD(v20) = 90;
    *(&v21 + 1) = -1;
    ++*(a1 + 208);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x38uLL);
        v16 = v21;
        *v15 = v20;
        v15[1] = v16;
        v15[2] = v22;
        *(v15 + 6) = v23;
        v17 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v17)
        {
          v17 = *(v17 + 32);
        }

        *(v15 + 4) = v17;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -15175)
      {
        break;
      }

      GTMTL4SMCommandAllocator_processTraceFuncWithMap(&v20, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x38uLL);
      v18 = v21;
      *v15 = v20;
      v15[1] = v18;
      v15[2] = v22;
      *(v15 + 6) = v23;
      v19 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v19)
      {
        v19 = *(v19 + 32);
      }

      *(v15 + 4) = v19;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTL4SMBuilder_argumentTable(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  bzero(v22, 0x6B8uLL);
  LODWORD(v22[0]) = 88;
  v22[3] = -1;
  ++*(a1 + 212);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  while (1)
  {
LABEL_10:
    if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
    {
      v19 = apr_palloc(*(a1 + 24), 0x6B8uLL);
      memcpy(v19, v22, 0x6B8uLL);
      v20 = *find_entry(*(a1 + 32), v19 + 8, 8uLL, 0);
      if (v20)
      {
        v20 = *(v20 + 32);
      }

      *(v19 + 4) = v20;
      apr_hash_set(*(a1 + 32), v19 + 8, 8, v19);
      v11 = -1;
      goto LABEL_28;
    }

    v12 = *(v9 + 8);
    if ((v12 + 15181) >= 4 && v12 != -14848)
    {
      break;
    }

    if (v10 <= v11)
    {
      v14 = apr_palloc(*(a1 + 24), 0x6B8uLL);
      memcpy(v14, v22, 0x6B8uLL);
      v15 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
      if (v15)
      {
        v15 = *(v15 + 32);
      }

      *(v14 + 4) = v15;
      apr_hash_set(*(a1 + 32), v14 + 8, 8, v14);
      *(v14 + 3) = v11;
    }

LABEL_23:
    GTMTL4SMArgumentTable_processTraceFuncWithMap(v22, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v16 = atomic_load((v4 + 4));
    v17 = v8 + (v16 >> 6);
    v18 = (HIDWORD(v8) + 1);
    v8 = (v18 << 32) | v8;
    if (v18 == v17 - 1)
    {
      v8 = (v18 << 32) | v18;
      v4 = *(v4 + 40);
    }
  }

  if (v12 != -15182)
  {
    goto LABEL_23;
  }

  if (v10 <= v11)
  {
    v19 = apr_palloc(*(a1 + 24), 0x6B8uLL);
    memcpy(v19, v22, 0x6B8uLL);
    v21 = *find_entry(*(a1 + 32), v19 + 8, 8uLL, 0);
    if (v21)
    {
      v21 = *(v21 + 32);
    }

    *(v19 + 4) = v21;
    apr_hash_set(*(a1 + 32), v19 + 8, 8, v19);
LABEL_28:
    *(v19 + 3) = v11;
  }
}

void GTMTL4SMBuilder_compiler(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v22 = 0u;
    *&v23 = 0;
    v24 = 0u;
    v25 = 0u;
    LODWORD(v22) = 93;
    *(&v23 + 1) = -1;
    ++*(a1 + 224);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
          goto LABEL_9;
        }
      }

      v7 = 0;
LABEL_9:
      v8 = v5 | (v7 << 32);
    }

    else
    {
      v8 = 0;
    }

    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      v10 = *v9;
      if (*v9 >= *(a1 + 16) + *(a1 + 8))
      {
        break;
      }

      if (*(v9 + 8) == -15144)
      {
        v11 = apr_palloc(*(a1 + 24), 0x40uLL);
        v12 = v23;
        *v11 = v22;
        *(v11 + 1) = v12;
        v13 = v25;
        *(v11 + 2) = v24;
        *(v11 + 3) = v13;
        v14 = *find_entry(*(a1 + 32), v11 + 8, 8uLL, 0);
        if (v14)
        {
          v14 = *(v14 + 32);
        }

        v11[4] = v14;
        apr_hash_set(*(a1 + 32), v11 + 1, 8, v11);
        v11[3] = v10;
      }

      GTMTL4SMCompiler_processTraceFuncWithMap(&v22, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
      v15 = atomic_load((v4 + 4));
      v16 = v8 + (v15 >> 6);
      v17 = (HIDWORD(v8) + 1);
      v8 = (v17 << 32) | v8;
      if (v17 == v16 - 1)
      {
        v8 = (v17 << 32) | v17;
        v4 = *(v4 + 40);
      }
    }

    v18 = apr_palloc(*(a1 + 24), 0x40uLL);
    v19 = v23;
    *v18 = v22;
    *(v18 + 1) = v19;
    v20 = v25;
    *(v18 + 2) = v24;
    *(v18 + 3) = v20;
    v21 = *find_entry(*(a1 + 32), v18 + 8, 8uLL, 0);
    if (v21)
    {
      v21 = *(v21 + 32);
    }

    v18[4] = v21;
    apr_hash_set(*(a1 + 32), v18 + 1, 8, v18);
    v18[3] = -1;
  }
}

void GTMTLSMBuilder_heap(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v31 = 0u;
  *&v32 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  LODWORD(v31) = 50;
  *(&v32 + 1) = -1;
  WORD4(v36) = 2;
  ++*(a1 + 96);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  while (1)
  {
LABEL_10:
    if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
    {
      v22 = apr_palloc(*(a1 + 24), 0x60uLL);
      v23 = v34;
      v22[2] = v33;
      v22[3] = v23;
      v24 = v36;
      v22[4] = v35;
      v22[5] = v24;
      v25 = v32;
      *v22 = v31;
      v22[1] = v25;
      v26 = *find_entry(*(a1 + 32), v22 + 8, 8uLL, 0);
      if (v26)
      {
        v26 = *(v26 + 32);
      }

      *(v22 + 4) = v26;
      apr_hash_set(*(a1 + 32), v22 + 8, 8, v22);
      v11 = -1;
      goto LABEL_30;
    }

    v12 = *(v9 + 8);
    if (v12 > -10209)
    {
      if ((v12 + 10208) >= 2)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }

    if (v12 != -16119 && v12 != -16115)
    {
      break;
    }

LABEL_21:
    if (v10 <= v11)
    {
      v14 = apr_palloc(*(a1 + 24), 0x60uLL);
      v15 = v34;
      *(v14 + 2) = v33;
      *(v14 + 3) = v15;
      v16 = v36;
      *(v14 + 4) = v35;
      *(v14 + 5) = v16;
      v17 = v32;
      *v14 = v31;
      *(v14 + 1) = v17;
      v18 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
      if (v18)
      {
        v18 = *(v18 + 32);
      }

      v14[4] = v18;
      apr_hash_set(*(a1 + 32), v14 + 1, 8, v14);
      v14[3] = v11;
    }

LABEL_25:
    GTMTLSMHeap_processTraceFuncWithMap(&v31, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v19 = atomic_load((v4 + 4));
    v20 = v8 + (v19 >> 6);
    v21 = (HIDWORD(v8) + 1);
    v8 = (v21 << 32) | v8;
    if (v21 == v20 - 1)
    {
      v8 = (v21 << 32) | v21;
      v4 = *(v4 + 40);
    }
  }

  if (v12 != -16118)
  {
    goto LABEL_25;
  }

  if (v10 <= v11)
  {
    v22 = apr_palloc(*(a1 + 24), 0x60uLL);
    v27 = v34;
    v22[2] = v33;
    v22[3] = v27;
    v28 = v36;
    v22[4] = v35;
    v22[5] = v28;
    v29 = v32;
    *v22 = v31;
    v22[1] = v29;
    v30 = *find_entry(*(a1 + 32), v22 + 8, 8uLL, 0);
    if (v30)
    {
      v30 = *(v30 + 32);
    }

    *(v22 + 4) = v30;
    apr_hash_set(*(a1 + 32), v22 + 8, 8, v22);
LABEL_30:
    *(v22 + 3) = v11;
  }
}

void GTMTLSMBuilder_depthStencilState(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v22 = 0u;
    *&v23 = 0;
    v25 = 0u;
    v24 = 0u;
    LODWORD(v22) = 34;
    *(&v23 + 1) = -1;
    v26 = 0xFFFFFFFFFFFFFFFFLL;
    ++*(a1 + 88);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x50uLL);
        v16 = v25;
        v15[2] = v24;
        v15[3] = v16;
        v15[4] = v26;
        v17 = v23;
        *v15 = v22;
        v15[1] = v17;
        v18 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v18)
        {
          v18 = *(v18 + 32);
        }

        *(v15 + 4) = v18;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -16320)
      {
        break;
      }

      GTMTLSMDepthStencilState_processTraceFuncWithMap(&v22, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x50uLL);
      v19 = v25;
      v15[2] = v24;
      v15[3] = v19;
      v15[4] = v26;
      v20 = v23;
      *v15 = v22;
      v15[1] = v20;
      v21 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v21)
      {
        v21 = *(v21 + 32);
      }

      *(v15 + 4) = v21;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_samplerState(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v22 = 0u;
    *&v23 = 0;
    v25 = 0u;
    v24 = 0u;
    LODWORD(v22) = 75;
    *(&v23 + 1) = -1;
    v27 = 0;
    v26 = 0xFFFFFFFFFFFFFFFFLL;
    ++*(a1 + 60);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x58uLL);
        v16 = v25;
        v15[2] = v24;
        v15[3] = v16;
        v15[4] = v26;
        *(v15 + 10) = v27;
        v17 = v23;
        *v15 = v22;
        v15[1] = v17;
        v18 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v18)
        {
          v18 = *(v18 + 32);
        }

        *(v15 + 4) = v18;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -16241)
      {
        break;
      }

      GTMTLSMSamplerState_processTraceFuncWithMap(&v22, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x58uLL);
      v19 = v25;
      v15[2] = v24;
      v15[3] = v19;
      v15[4] = v26;
      *(v15 + 10) = v27;
      v20 = v23;
      *v15 = v22;
      v15[1] = v20;
      v21 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v21)
      {
        v21 = *(v21 + 32);
      }

      *(v15 + 4) = v21;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_event(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v24 = 0u;
  *&v25 = 0;
  v27 = 0;
  v26 = 0u;
  LODWORD(v24) = 38;
  *(&v25 + 1) = -1;
  ++*(a1 + 116);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  while (1)
  {
LABEL_10:
    if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
    {
      v19 = apr_palloc(*(a1 + 24), 0x38uLL);
      v20 = v25;
      *v19 = v24;
      v19[1] = v20;
      v19[2] = v26;
      *(v19 + 6) = v27;
      v21 = *find_entry(*(a1 + 32), v19 + 8, 8uLL, 0);
      if (v21)
      {
        v21 = *(v21 + 32);
      }

      *(v19 + 4) = v21;
      apr_hash_set(*(a1 + 32), v19 + 8, 8, v19);
      v11 = -1;
      goto LABEL_25;
    }

    v12 = *(v9 + 8);
    if (v12 != -15880)
    {
      break;
    }

    if (v10 <= v11)
    {
      v13 = apr_palloc(*(a1 + 24), 0x38uLL);
      v14 = v25;
      *v13 = v24;
      *(v13 + 1) = v14;
      *(v13 + 2) = v26;
      v13[6] = v27;
      v15 = *find_entry(*(a1 + 32), v13 + 8, 8uLL, 0);
      if (v15)
      {
        v15 = *(v15 + 32);
      }

      v13[4] = v15;
      apr_hash_set(*(a1 + 32), v13 + 1, 8, v13);
      v13[3] = v11;
    }

LABEL_20:
    GTMTLSMEvent_processTraceFuncWithMap(&v24, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v16 = atomic_load((v4 + 4));
    v17 = v8 + (v16 >> 6);
    v18 = (HIDWORD(v8) + 1);
    v8 = (v18 << 32) | v8;
    if (v18 == v17 - 1)
    {
      v8 = (v18 << 32) | v18;
      v4 = *(v4 + 40);
    }
  }

  if (v12 != -15879)
  {
    goto LABEL_20;
  }

  if (v10 <= v11)
  {
    v19 = apr_palloc(*(a1 + 24), 0x38uLL);
    v22 = v25;
    *v19 = v24;
    v19[1] = v22;
    v19[2] = v26;
    *(v19 + 6) = v27;
    v23 = *find_entry(*(a1 + 32), v19 + 8, 8uLL, 0);
    if (v23)
    {
      v23 = *(v23 + 32);
    }

    *(v19 + 4) = v23;
    apr_hash_set(*(a1 + 32), v19 + 8, 8, v19);
LABEL_25:
    *(v19 + 3) = v11;
  }
}

void GTMTLSMBuilder_sharedEvent(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v27 = 0u;
  *&v28 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  LODWORD(v27) = 76;
  *(&v28 + 1) = -1;
  ++*(a1 + 120);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  while (1)
  {
LABEL_10:
    if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
    {
      v20 = apr_palloc(*(a1 + 24), 0x50uLL);
      v21 = v30;
      v20[2] = v29;
      v20[3] = v21;
      v20[4] = v31;
      v22 = v28;
      *v20 = v27;
      v20[1] = v22;
      v23 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
      if (v23)
      {
        v23 = *(v23 + 32);
      }

      *(v20 + 4) = v23;
      apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
      v11 = -1;
      goto LABEL_24;
    }

    v12 = *(v9 + 8);
    if ((v12 + 15975) >= 2)
    {
      break;
    }

    if (v10 <= v11)
    {
      v13 = apr_palloc(*(a1 + 24), 0x50uLL);
      v14 = v30;
      *(v13 + 2) = v29;
      *(v13 + 3) = v14;
      *(v13 + 4) = v31;
      v15 = v28;
      *v13 = v27;
      *(v13 + 1) = v15;
      v16 = *find_entry(*(a1 + 32), v13 + 8, 8uLL, 0);
      if (v16)
      {
        v16 = *(v16 + 32);
      }

      v13[4] = v16;
      apr_hash_set(*(a1 + 32), v13 + 1, 8, v13);
      v13[3] = v11;
    }

LABEL_19:
    GTMTLSMSharedEvent_processTraceFuncWithMap(&v27, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v17 = atomic_load((v4 + 4));
    v18 = v8 + (v17 >> 6);
    v19 = (HIDWORD(v8) + 1);
    v8 = (v19 << 32) | v8;
    if (v19 == v18 - 1)
    {
      v8 = (v19 << 32) | v19;
      v4 = *(v4 + 40);
    }
  }

  if (v12 != -15973)
  {
    goto LABEL_19;
  }

  if (v10 <= v11)
  {
    v20 = apr_palloc(*(a1 + 24), 0x50uLL);
    v24 = v30;
    v20[2] = v29;
    v20[3] = v24;
    v20[4] = v31;
    v25 = v28;
    *v20 = v27;
    v20[1] = v25;
    v26 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
    if (v26)
    {
      v26 = *(v26 + 32);
    }

    *(v20 + 4) = v26;
    apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
LABEL_24:
    *(v20 + 3) = v11;
  }
}

void GTMTLSMBuilder_lateEvalEvent(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v27 = 0u;
  *&v28 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  LODWORD(v27) = 61;
  *(&v28 + 1) = -1;
  ++*(a1 + 124);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  while (1)
  {
LABEL_10:
    if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
    {
      v20 = apr_palloc(*(a1 + 24), 0x50uLL);
      v21 = v30;
      v20[2] = v29;
      v20[3] = v21;
      v20[4] = v31;
      v22 = v28;
      *v20 = v27;
      v20[1] = v22;
      v23 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
      if (v23)
      {
        v23 = *(v23 + 32);
      }

      *(v20 + 4) = v23;
      apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
      v11 = -1;
      goto LABEL_24;
    }

    v12 = *(v9 + 8);
    if ((v12 + 15491) >= 2)
    {
      break;
    }

    if (v10 <= v11)
    {
      v13 = apr_palloc(*(a1 + 24), 0x50uLL);
      v14 = v30;
      *(v13 + 2) = v29;
      *(v13 + 3) = v14;
      *(v13 + 4) = v31;
      v15 = v28;
      *v13 = v27;
      *(v13 + 1) = v15;
      v16 = *find_entry(*(a1 + 32), v13 + 8, 8uLL, 0);
      if (v16)
      {
        v16 = *(v16 + 32);
      }

      v13[4] = v16;
      apr_hash_set(*(a1 + 32), v13 + 1, 8, v13);
      v13[3] = v11;
    }

LABEL_19:
    GTMTLSMLateEvalEvent_processTraceFuncWithMap(&v27, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v17 = atomic_load((v4 + 4));
    v18 = v8 + (v17 >> 6);
    v19 = (HIDWORD(v8) + 1);
    v8 = (v19 << 32) | v8;
    if (v19 == v18 - 1)
    {
      v8 = (v19 << 32) | v19;
      v4 = *(v4 + 40);
    }
  }

  if (v12 != -15489)
  {
    goto LABEL_19;
  }

  if (v10 <= v11)
  {
    v20 = apr_palloc(*(a1 + 24), 0x50uLL);
    v24 = v30;
    v20[2] = v29;
    v20[3] = v24;
    v20[4] = v31;
    v25 = v28;
    *v20 = v27;
    v20[1] = v25;
    v26 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
    if (v26)
    {
      v26 = *(v26 + 32);
    }

    *(v20 + 4) = v26;
    apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
LABEL_24:
    *(v20 + 3) = v11;
  }
}

void GTMTLSMBuilder_fence(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v20 = 0u;
    *&v21 = 0;
    v23 = 0;
    v22 = 0u;
    LODWORD(v20) = 41;
    *(&v21 + 1) = -1;
    ++*(a1 + 112);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x38uLL);
        v16 = v21;
        *v15 = v20;
        v15[1] = v16;
        v15[2] = v22;
        *(v15 + 6) = v23;
        v17 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v17)
        {
          v17 = *(v17 + 32);
        }

        *(v15 + 4) = v17;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -16127)
      {
        break;
      }

      GTMTLSMFence_processTraceFuncWithMap(&v20, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x38uLL);
      v18 = v21;
      *v15 = v20;
      v15[1] = v18;
      v15[2] = v22;
      *(v15 + 6) = v23;
      v19 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v19)
      {
        v19 = *(v19 + 32);
      }

      *(v15 + 4) = v19;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_renderPipelineState(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    memset(&v18[8], 0, 312);
    memset(&v18[2], 0, 88);
    memset(v18, 0, 24);
    LODWORD(v18[0]) = 71;
    *(&v18[1] + 1) = -1;
    *(&v18[7] + 1) = -1;
    ++*(a1 + 64);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x1B8uLL);
        memcpy(v15, v18, 0x1B8uLL);
        v16 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v16)
        {
          v16 = *(v16 + 32);
        }

        *(v15 + 4) = v16;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -16242)
      {
        break;
      }

      GTMTLSMRenderPipelineState_processTraceFuncWithMap(v18, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x1B8uLL);
      memcpy(v15, v18, 0x1B8uLL);
      v17 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v17)
      {
        v17 = *(v17 + 32);
      }

      *(v15 + 4) = v17;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_computePipelineState(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v38 = 0u;
    *&v39 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    *&v45 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    LODWORD(v38) = 29;
    *(&v39 + 1) = -1;
    *(&v45 + 1) = -1;
    ++*(a1 + 68);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0xE0uLL);
        v16 = v39;
        *v15 = v38;
        v15[1] = v16;
        v17 = v43;
        v19 = v40;
        v18 = v41;
        v15[4] = v42;
        v15[5] = v17;
        v15[2] = v19;
        v15[3] = v18;
        v20 = v47;
        v22 = v44;
        v21 = v45;
        v15[8] = v46;
        v15[9] = v20;
        v15[6] = v22;
        v15[7] = v21;
        v23 = v51;
        v25 = v48;
        v24 = v49;
        v15[12] = v50;
        v15[13] = v23;
        v15[10] = v25;
        v15[11] = v24;
        v26 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v26)
        {
          v26 = *(v26 + 32);
        }

        *(v15 + 4) = v26;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -16321)
      {
        break;
      }

      GTMTLSMComputePipelineState_processTraceFuncWithMap(&v38, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0xE0uLL);
      v27 = v39;
      *v15 = v38;
      v15[1] = v27;
      v28 = v43;
      v30 = v40;
      v29 = v41;
      v15[4] = v42;
      v15[5] = v28;
      v15[2] = v30;
      v15[3] = v29;
      v31 = v47;
      v33 = v44;
      v32 = v45;
      v15[8] = v46;
      v15[9] = v31;
      v15[6] = v33;
      v15[7] = v32;
      v34 = v51;
      v36 = v48;
      v35 = v49;
      v15[12] = v50;
      v15[13] = v34;
      v15[10] = v36;
      v15[11] = v35;
      v37 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v37)
      {
        v37 = *(v37 + 32);
      }

      *(v15 + 4) = v37;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTL4SMBuilder_machineLearningPipelineState(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v22 = 0u;
    *&v23 = 0;
    v24 = 0u;
    v25 = 0u;
    LODWORD(v22) = 106;
    *(&v23 + 1) = -1;
    ++*(a1 + 228);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x40uLL);
        v16 = v23;
        *v15 = v22;
        v15[1] = v16;
        v17 = v25;
        v15[2] = v24;
        v15[3] = v17;
        v18 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v18)
        {
          v18 = *(v18 + 32);
        }

        *(v15 + 4) = v18;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -14825)
      {
        break;
      }

      GTMTL4SMMachineLearningPipelineState_processTraceFuncWithMap(&v22, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x40uLL);
      v19 = v23;
      *v15 = v22;
      v15[1] = v19;
      v20 = v25;
      v15[2] = v24;
      v15[3] = v20;
      v21 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v21)
      {
        v21 = *(v21 + 32);
      }

      *(v15 + 4) = v21;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_function(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v40 = 0u;
    *&v41 = 0;
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    LODWORD(v40) = 43;
    *(&v41 + 1) = -1;
    ++*(a1 + 164);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
LABEL_10:
    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      v10 = *(a1 + 8);
      v11 = *v9;
      if (*v9 >= *(a1 + 16) + v10)
      {
        break;
      }

      v12 = *(v9 + 8);
      if (v12 == -16123 || v12 == -10157)
      {
        if (v10 <= v11)
        {
          v14 = apr_palloc(*(a1 + 24), 0x88uLL);
          *v14 = v40;
          v15 = v44;
          v17 = v41;
          v16 = v42;
          *(v14 + 3) = v43;
          *(v14 + 4) = v15;
          *(v14 + 1) = v17;
          *(v14 + 2) = v16;
          v19 = v46;
          v18 = v47;
          v20 = v45;
          v14[16] = v48;
          *(v14 + 6) = v19;
          *(v14 + 7) = v18;
          *(v14 + 5) = v20;
          v21 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
          if (v21)
          {
            v21 = *(v21 + 32);
          }

          v14[4] = v21;
          apr_hash_set(*(a1 + 32), v14 + 1, 8, v14);
          v14[3] = v11;
        }
      }

      else if (v12 == -16293)
      {
        v25 = apr_palloc(*(a1 + 24), 0x88uLL);
        *v25 = v40;
        v33 = v44;
        v35 = v41;
        v34 = v42;
        v25[3] = v43;
        v25[4] = v33;
        v25[1] = v35;
        v25[2] = v34;
        v37 = v46;
        v36 = v47;
        v38 = v45;
        *(v25 + 16) = v48;
        v25[6] = v37;
        v25[7] = v36;
        v25[5] = v38;
        v39 = *find_entry(*(a1 + 32), v25 + 8, 8uLL, 0);
        if (v39)
        {
          v39 = *(v39 + 32);
        }

        *(v25 + 4) = v39;
        apr_hash_set(*(a1 + 32), v25 + 8, 8, v25);
        goto LABEL_28;
      }

      GTMTLSMFunction_processTraceFuncWithMap(&v40, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
      v22 = atomic_load((v4 + 4));
      v23 = v8 + (v22 >> 6);
      v24 = (HIDWORD(v8) + 1);
      v8 = (v24 << 32) | v8;
      if (v24 == v23 - 1)
      {
        v8 = (v24 << 32) | v24;
        v4 = *(v4 + 40);
      }
    }

    v25 = apr_palloc(*(a1 + 24), 0x88uLL);
    *v25 = v40;
    v26 = v44;
    v28 = v41;
    v27 = v42;
    v25[3] = v43;
    v25[4] = v26;
    v25[1] = v28;
    v25[2] = v27;
    v30 = v46;
    v29 = v47;
    v31 = v45;
    *(v25 + 16) = v48;
    v25[6] = v30;
    v25[7] = v29;
    v25[5] = v31;
    v32 = *find_entry(*(a1 + 32), v25 + 8, 8uLL, 0);
    if (v32)
    {
      v32 = *(v32 + 32);
    }

    *(v25 + 4) = v32;
    apr_hash_set(*(a1 + 32), v25 + 8, 8, v25);
    v11 = -1;
LABEL_28:
    *(v25 + 3) = v11;
  }
}

void GTMTLSMBuilder_library(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v49 = 0u;
    *&v50 = 0;
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    LODWORD(v49) = 62;
    *(&v50 + 1) = -1;
    ++*(a1 + 100);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
LABEL_10:
    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      v10 = *(a1 + 8);
      v11 = *v9;
      if (*v9 >= *(a1 + 16) + v10)
      {
        break;
      }

      v12 = *(v9 + 8);
      if (v12 == -16292)
      {
        if (v10 <= v11)
        {
          v13 = apr_palloc(*(a1 + 24), 0xB8uLL);
          v14 = v52;
          v16 = v49;
          v15 = v50;
          *(v13 + 2) = v51;
          *(v13 + 3) = v14;
          *v13 = v16;
          *(v13 + 1) = v15;
          v17 = v56;
          v19 = v53;
          v18 = v54;
          *(v13 + 6) = v55;
          *(v13 + 7) = v17;
          *(v13 + 4) = v19;
          *(v13 + 5) = v18;
          v21 = v58;
          v20 = v59;
          v22 = v57;
          v13[22] = v60;
          *(v13 + 9) = v21;
          *(v13 + 10) = v20;
          *(v13 + 8) = v22;
          v23 = *find_entry(*(a1 + 32), v13 + 8, 8uLL, 0);
          if (v23)
          {
            v23 = *(v23 + 32);
          }

          v13[4] = v23;
          apr_hash_set(*(a1 + 32), v13 + 1, 8, v13);
          v13[3] = v11;
        }
      }

      else if (v12 == -16291)
      {
        v37 = apr_palloc(*(a1 + 24), 0xB8uLL);
        v38 = v52;
        v40 = v49;
        v39 = v50;
        v37[2] = v51;
        v37[3] = v38;
        *v37 = v40;
        v37[1] = v39;
        v41 = v56;
        v43 = v53;
        v42 = v54;
        v37[6] = v55;
        v37[7] = v41;
        v37[4] = v43;
        v37[5] = v42;
        v45 = v58;
        v44 = v59;
        v46 = v57;
        *(v37 + 22) = v60;
        v37[9] = v45;
        v37[10] = v44;
        v37[8] = v46;
        entry = find_entry(*(a1 + 32), v37 + 8, 8uLL, 0);
        v48 = *entry;
        if (*entry)
        {
          v48 = *(v48 + 32);
        }

        *(v37 + 4) = v48;
        apr_hash_set(*(a1 + 32), v37 + 8, 8, v37);
        goto LABEL_25;
      }

      GTMTLSMLibrary_processTraceFuncWithMap(&v49, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
      v24 = atomic_load((v4 + 4));
      v25 = v8 + (v24 >> 6);
      v26 = (HIDWORD(v8) + 1);
      v8 = (v26 << 32) | v8;
      if (v26 == v25 - 1)
      {
        v8 = (v26 << 32) | v26;
        v4 = *(v4 + 40);
      }
    }

    v37 = apr_palloc(*(a1 + 24), 0xB8uLL);
    v27 = v52;
    v29 = v49;
    v28 = v50;
    v37[2] = v51;
    v37[3] = v27;
    *v37 = v29;
    v37[1] = v28;
    v30 = v56;
    v32 = v53;
    v31 = v54;
    v37[6] = v55;
    v37[7] = v30;
    v37[4] = v32;
    v37[5] = v31;
    v34 = v58;
    v33 = v59;
    v35 = v57;
    *(v37 + 22) = v60;
    v37[9] = v34;
    v37[10] = v33;
    v37[8] = v35;
    v36 = *find_entry(*(a1 + 32), v37 + 8, 8uLL, 0);
    if (v36)
    {
      v36 = *(v36 + 32);
    }

    *(v37 + 4) = v36;
    apr_hash_set(*(a1 + 32), v37 + 8, 8, v37);
    v11 = -1;
LABEL_25:
    *(v37 + 3) = v11;
  }
}

void GTMTLSMBuilder_dynamicLibrary(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v31 = 0u;
    *&v32 = 0;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    LODWORD(v31) = 37;
    *(&v32 + 1) = -1;
    ++*(a1 + 104);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
LABEL_10:
    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      v10 = *(a1 + 8);
      v11 = *v9;
      if (*v9 >= *(a1 + 16) + v10)
      {
        break;
      }

      v12 = *(v9 + 8);
      if (v12 == -15676)
      {
        if (v10 <= v11)
        {
          v13 = apr_palloc(*(a1 + 24), 0x78uLL);
          v14 = v36;
          *(v13 + 4) = v35;
          *(v13 + 5) = v14;
          *(v13 + 6) = v37;
          v13[14] = v38;
          v15 = v32;
          *v13 = v31;
          *(v13 + 1) = v15;
          v16 = v34;
          *(v13 + 2) = v33;
          *(v13 + 3) = v16;
          v17 = *find_entry(*(a1 + 32), v13 + 8, 8uLL, 0);
          if (v17)
          {
            v17 = *(v17 + 32);
          }

          v13[4] = v17;
          apr_hash_set(*(a1 + 32), v13 + 1, 8, v13);
          v13[3] = v11;
        }
      }

      else if (v12 == -15675)
      {
        v25 = apr_palloc(*(a1 + 24), 0x78uLL);
        v26 = v36;
        v25[4] = v35;
        v25[5] = v26;
        v25[6] = v37;
        *(v25 + 14) = v38;
        v27 = v32;
        *v25 = v31;
        v25[1] = v27;
        v28 = v34;
        v25[2] = v33;
        v25[3] = v28;
        entry = find_entry(*(a1 + 32), v25 + 8, 8uLL, 0);
        v30 = *entry;
        if (*entry)
        {
          v30 = *(v30 + 32);
        }

        *(v25 + 4) = v30;
        apr_hash_set(*(a1 + 32), v25 + 8, 8, v25);
        goto LABEL_25;
      }

      GTMTLSMDynamicLibrary_processTraceFuncWithMap(&v31, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
      v18 = atomic_load((v4 + 4));
      v19 = v8 + (v18 >> 6);
      v20 = (HIDWORD(v8) + 1);
      v8 = (v20 << 32) | v8;
      if (v20 == v19 - 1)
      {
        v8 = (v20 << 32) | v20;
        v4 = *(v4 + 40);
      }
    }

    v25 = apr_palloc(*(a1 + 24), 0x78uLL);
    v21 = v36;
    v25[4] = v35;
    v25[5] = v21;
    v25[6] = v37;
    *(v25 + 14) = v38;
    v22 = v32;
    *v25 = v31;
    v25[1] = v22;
    v23 = v34;
    v25[2] = v33;
    v25[3] = v23;
    v24 = *find_entry(*(a1 + 32), v25 + 8, 8uLL, 0);
    if (v24)
    {
      v24 = *(v24 + 32);
    }

    *(v25 + 4) = v24;
    apr_hash_set(*(a1 + 32), v25 + 8, 8, v25);
    v11 = -1;
LABEL_25:
    *(v25 + 3) = v11;
  }
}

void GTMTLSMBuilder_pipelineLibrary(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v27 = 0u;
  *&v28 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  LODWORD(v27) = 67;
  *(&v28 + 1) = -1;
  ++*(a1 + 108);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  while (1)
  {
LABEL_10:
    if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
    {
      v20 = apr_palloc(*(a1 + 24), 0x58uLL);
      v21 = v30;
      v20[2] = v29;
      v20[3] = v21;
      v20[4] = v31;
      *(v20 + 10) = v32;
      v22 = v28;
      *v20 = v27;
      v20[1] = v22;
      v23 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
      if (v23)
      {
        v23 = *(v23 + 32);
      }

      *(v20 + 4) = v23;
      apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
      v11 = -1;
      goto LABEL_25;
    }

    v12 = *(v9 + 8);
    if (v12 != -15743)
    {
      break;
    }

    if (v10 <= v11)
    {
      v13 = apr_palloc(*(a1 + 24), 0x58uLL);
      v14 = v30;
      *(v13 + 2) = v29;
      *(v13 + 3) = v14;
      *(v13 + 4) = v31;
      v13[10] = v32;
      v15 = v28;
      *v13 = v27;
      *(v13 + 1) = v15;
      v16 = *find_entry(*(a1 + 32), v13 + 8, 8uLL, 0);
      if (v16)
      {
        v16 = *(v16 + 32);
      }

      v13[4] = v16;
      apr_hash_set(*(a1 + 32), v13 + 1, 8, v13);
      v13[3] = v11;
    }

LABEL_20:
    GTMTLSMPipelineLibrary_processTraceFuncWithMap(&v27, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v17 = atomic_load((v4 + 4));
    v18 = v8 + (v17 >> 6);
    v19 = (HIDWORD(v8) + 1);
    v8 = (v19 << 32) | v8;
    if (v19 == v18 - 1)
    {
      v8 = (v19 << 32) | v19;
      v4 = *(v4 + 40);
    }
  }

  if (v12 != -15742)
  {
    goto LABEL_20;
  }

  if (v10 <= v11)
  {
    v20 = apr_palloc(*(a1 + 24), 0x58uLL);
    v24 = v30;
    v20[2] = v29;
    v20[3] = v24;
    v20[4] = v31;
    *(v20 + 10) = v32;
    v25 = v28;
    *v20 = v27;
    v20[1] = v25;
    v26 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
    if (v26)
    {
      v26 = *(v26 + 32);
    }

    *(v20 + 4) = v26;
    apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
LABEL_25:
    *(v20 + 3) = v11;
  }
}

void GTMTLSMBuilder_ioCommandQueue(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v22 = 0u;
    *&v23 = 0;
    v24 = 0u;
    v25 = 0u;
    LODWORD(v22) = 52;
    *(&v23 + 1) = -1;
    ++*(a1 + 148);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x40uLL);
        v16 = v23;
        *v15 = v22;
        v15[1] = v16;
        v17 = v25;
        v15[2] = v24;
        v15[3] = v17;
        v18 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v18)
        {
          v18 = *(v18 + 32);
        }

        *(v15 + 4) = v18;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -15332)
      {
        break;
      }

      GTMTLSMIOCommandQueue_processTraceFuncWithMap(&v22, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x40uLL);
      v19 = v23;
      *v15 = v22;
      v15[1] = v19;
      v20 = v25;
      v15[2] = v24;
      v15[3] = v20;
      v21 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v21)
      {
        v21 = *(v21 + 32);
      }

      *(v15 + 4) = v21;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_commandQueue(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v27 = 0u;
  *&v28 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  LODWORD(v27) = 27;
  *(&v28 + 1) = -1;
  BYTE12(v31) = 1;
  WORD4(v31) = 769;
  ++*(a1 + 144);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  while (1)
  {
LABEL_10:
    if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
    {
      v20 = apr_palloc(*(a1 + 24), 0x50uLL);
      v21 = v30;
      v20[2] = v29;
      v20[3] = v21;
      v20[4] = v31;
      v22 = v28;
      *v20 = v27;
      v20[1] = v22;
      v23 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
      if (v23)
      {
        v23 = *(v23 + 32);
      }

      *(v20 + 4) = v23;
      apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
      v11 = -1;
      goto LABEL_24;
    }

    v12 = *(v9 + 8);
    if ((v12 + 16349) >= 5)
    {
      break;
    }

    if (v10 <= v11)
    {
      v13 = apr_palloc(*(a1 + 24), 0x50uLL);
      v14 = v30;
      *(v13 + 2) = v29;
      *(v13 + 3) = v14;
      *(v13 + 4) = v31;
      v15 = v28;
      *v13 = v27;
      *(v13 + 1) = v15;
      v16 = *find_entry(*(a1 + 32), v13 + 8, 8uLL, 0);
      if (v16)
      {
        v16 = *(v16 + 32);
      }

      v13[4] = v16;
      apr_hash_set(*(a1 + 32), v13 + 1, 8, v13);
      v13[3] = v11;
    }

LABEL_19:
    GTMTLSMCommandQueue_processTraceFuncWithMap(&v27, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v17 = atomic_load((v4 + 4));
    v18 = v8 + (v17 >> 6);
    v19 = (HIDWORD(v8) + 1);
    v8 = (v19 << 32) | v8;
    if (v19 == v18 - 1)
    {
      v8 = (v19 << 32) | v19;
      v4 = *(v4 + 40);
    }
  }

  if (v12 != -16344)
  {
    goto LABEL_19;
  }

  if (v10 <= v11)
  {
    v20 = apr_palloc(*(a1 + 24), 0x50uLL);
    v24 = v30;
    v20[2] = v29;
    v20[3] = v24;
    v20[4] = v31;
    v25 = v28;
    *v20 = v27;
    v20[1] = v25;
    v26 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
    if (v26)
    {
      v26 = *(v26 + 32);
    }

    *(v20 + 4) = v26;
    apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
LABEL_24:
    *(v20 + 3) = v11;
  }
}

void GTMTL4SMBuilder_commandQueue(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v20 = 0u;
    *&v21 = 0;
    v23 = 0;
    v22 = 0u;
    LODWORD(v20) = 92;
    *(&v21 + 1) = -1;
    ++*(a1 + 200);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x38uLL);
        v16 = v21;
        *v15 = v20;
        v15[1] = v16;
        v15[2] = v22;
        *(v15 + 6) = v23;
        v17 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v17)
        {
          v17 = *(v17 + 32);
        }

        *(v15 + 4) = v17;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -16344)
      {
        break;
      }

      GTMTL4SMCommandQueue_processTraceFuncWithMap(&v20, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x38uLL);
      v18 = v21;
      *v15 = v20;
      v15[1] = v18;
      v15[2] = v22;
      *(v15 + 6) = v23;
      v19 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v19)
      {
        v19 = *(v19 + 32);
      }

      *(v15 + 4) = v19;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_rasterizationRateMap(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v27 = 0u;
  *&v28 = 0;
  v29 = 0u;
  v30 = 0u;
  LODWORD(v27) = 68;
  *(&v28 + 1) = -1;
  ++*(a1 + 152);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  while (1)
  {
LABEL_10:
    if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
    {
      v20 = apr_palloc(*(a1 + 24), 0x40uLL);
      v21 = v28;
      *v20 = v27;
      v20[1] = v21;
      v22 = v30;
      v20[2] = v29;
      v20[3] = v22;
      v23 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
      if (v23)
      {
        v23 = *(v23 + 32);
      }

      *(v20 + 4) = v23;
      apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
      v11 = -1;
      goto LABEL_25;
    }

    v12 = *(v9 + 8);
    if (v12 != -15411)
    {
      break;
    }

    if (v10 <= v11)
    {
      v13 = apr_palloc(*(a1 + 24), 0x40uLL);
      v14 = v28;
      *v13 = v27;
      *(v13 + 1) = v14;
      v15 = v30;
      *(v13 + 2) = v29;
      *(v13 + 3) = v15;
      v16 = *find_entry(*(a1 + 32), v13 + 8, 8uLL, 0);
      if (v16)
      {
        v16 = *(v16 + 32);
      }

      v13[4] = v16;
      apr_hash_set(*(a1 + 32), v13 + 1, 8, v13);
      v13[3] = v11;
    }

LABEL_20:
    GTMTLSMRasterizationRateMap_processTraceFuncWithMap(&v27, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v17 = atomic_load((v4 + 4));
    v18 = v8 + (v17 >> 6);
    v19 = (HIDWORD(v8) + 1);
    v8 = (v19 << 32) | v8;
    if (v19 == v18 - 1)
    {
      v8 = (v19 << 32) | v19;
      v4 = *(v4 + 40);
    }
  }

  if (v12 != -15801)
  {
    goto LABEL_20;
  }

  if (v10 <= v11)
  {
    v20 = apr_palloc(*(a1 + 24), 0x40uLL);
    v24 = v28;
    *v20 = v27;
    v20[1] = v24;
    v25 = v30;
    v20[2] = v29;
    v20[3] = v25;
    v26 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
    if (v26)
    {
      v26 = *(v26 + 32);
    }

    *(v20 + 4) = v26;
    apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
LABEL_25:
    *(v20 + 3) = v11;
  }
}

void GTMTLSMBuilder_resourceGroup(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v22 = 0u;
    *&v23 = 0;
    v24 = 0u;
    v25 = 0u;
    LODWORD(v22) = 73;
    *(&v23 + 1) = -1;
    ++*(a1 + 156);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x40uLL);
        v16 = v23;
        *v15 = v22;
        v15[1] = v16;
        v17 = v25;
        v15[2] = v24;
        v15[3] = v17;
        v18 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v18)
        {
          v18 = *(v18 + 32);
        }

        *(v15 + 4) = v18;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -15769)
      {
        break;
      }

      GTMTLSMResourceGroup_processTraceFuncWithMap(&v22, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x40uLL);
      v19 = v23;
      *v15 = v22;
      v15[1] = v19;
      v20 = v25;
      v15[2] = v24;
      v15[3] = v20;
      v21 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v21)
      {
        v21 = *(v21 + 32);
      }

      *(v15 + 4) = v21;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_filter(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v28 = 0u;
    *&v29 = 0;
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    LODWORD(v28) = 15;
    *(&v29 + 1) = -1;
    ++*(a1 + 160);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x68uLL);
        v17 = v29;
        v16 = v30;
        *v15 = v28;
        v15[1] = v17;
        v15[2] = v16;
        v19 = v32;
        v18 = v33;
        v20 = v31;
        *(v15 + 12) = v34;
        v15[4] = v19;
        v15[5] = v18;
        v15[3] = v20;
        v21 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v21)
        {
          v21 = *(v21 + 32);
        }

        *(v15 + 4) = v21;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -6139)
      {
        break;
      }

      GTMTLSMFilter_processTraceFuncWithMap(&v28, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x68uLL);
      v23 = v29;
      v22 = v30;
      *v15 = v28;
      v15[1] = v23;
      v15[2] = v22;
      v25 = v32;
      v24 = v33;
      v26 = v31;
      *(v15 + 12) = v34;
      v15[4] = v25;
      v15[5] = v24;
      v15[3] = v26;
      v27 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v27)
      {
        v27 = *(v27 + 32);
      }

      *(v15 + 4) = v27;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_indirectComputeCommand(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v20 = 0u;
    *&v21 = 0;
    v23 = 0;
    v22 = 0u;
    LODWORD(v20) = 58;
    *(&v21 + 1) = -1;
    ++*(a1 + 140);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x38uLL);
        v16 = v21;
        *v15 = v20;
        v15[1] = v16;
        v15[2] = v22;
        *(v15 + 6) = v23;
        v17 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v17)
        {
          v17 = *(v17 + 32);
        }

        *(v15 + 4) = v17;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -15935)
      {
        break;
      }

      GTMTLSMIndirectComputeCommand_processTraceFuncWithMap(&v20, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x38uLL);
      v18 = v21;
      *v15 = v20;
      v15[1] = v18;
      v15[2] = v22;
      *(v15 + 6) = v23;
      v19 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v19)
      {
        v19 = *(v19 + 32);
      }

      *(v15 + 4) = v19;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_indirectRenderCommand(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v20 = 0u;
    *&v21 = 0;
    v23 = 0;
    v22 = 0u;
    LODWORD(v20) = 59;
    *(&v21 + 1) = -1;
    ++*(a1 + 136);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x38uLL);
        v16 = v21;
        *v15 = v20;
        v15[1] = v16;
        v15[2] = v22;
        *(v15 + 6) = v23;
        v17 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v17)
        {
          v17 = *(v17 + 32);
        }

        *(v15 + 4) = v17;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -15957)
      {
        break;
      }

      GTMTLSMIndirectRenderCommand_processTraceFuncWithMap(&v20, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x38uLL);
      v18 = v21;
      *v15 = v20;
      v15[1] = v18;
      v15[2] = v22;
      *(v15 + 6) = v23;
      v19 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v19)
      {
        v19 = *(v19 + 32);
      }

      *(v15 + 4) = v19;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_drawable(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v20 = 0u;
    *&v21 = 0;
    v23 = 0;
    v22 = 0u;
    LODWORD(v20) = 2;
    *(&v21 + 1) = -1;
    ++*(a1 + 172);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x38uLL);
        v16 = v21;
        *v15 = v20;
        v15[1] = v16;
        v15[2] = v22;
        *(v15 + 6) = v23;
        v17 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v17)
        {
          v17 = *(v17 + 32);
        }

        *(v15 + 4) = v17;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -7161)
      {
        break;
      }

      GTMTLSMDrawable_processTraceFuncWithMap(&v20, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x38uLL);
      v18 = v21;
      *v15 = v20;
      v15[1] = v18;
      v15[2] = v22;
      *(v15 + 6) = v23;
      v19 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v19)
      {
        v19 = *(v19 + 32);
      }

      *(v15 + 4) = v19;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_layer(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  memset(&v22[2], 0, 248);
  memset(v22, 0, 24);
  LODWORD(v22[0]) = 3;
  *(&v22[1] + 1) = -1;
  ++*(a1 + 176);
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:
  while (v4)
  {
    v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
    if ((*(v9 + 15) & 8) == 0)
    {
      break;
    }

    v10 = *(a1 + 8);
    v11 = *v9;
    if (*v9 >= *(a1 + 16) + v10)
    {
      break;
    }

    v12 = *(v9 + 8);
    if ((v12 + 7165) > 0xB)
    {
      goto LABEL_22;
    }

    if (((1 << (v12 - 3)) & 0x86B) == 0)
    {
      if (v12 == -7163)
      {
        if (v10 > v11 || *(&v22[0] + 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

LABEL_22:
      if (v12 != -8183 && v12 != -8181)
      {
        goto LABEL_31;
      }
    }

    if (v10 > v11)
    {
      goto LABEL_31;
    }

LABEL_28:
    v15 = apr_palloc(*(a1 + 24), 0x118uLL);
    memcpy(v15, v22, 0x118uLL);
    v16 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
    if (v16)
    {
      v16 = *(v16 + 32);
    }

    *(v15 + 4) = v16;
    apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
    *(v15 + 3) = v11;
LABEL_31:
    GTMTLSMLayer_processTraceFuncWithMap(v22, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v17 = atomic_load((v4 + 4));
    v18 = v8 + (v17 >> 6);
    v19 = (HIDWORD(v8) + 1);
    v8 = (v19 << 32) | v8;
    if (v19 == v18 - 1)
    {
      v8 = (v19 << 32) | v19;
      v4 = *(v4 + 40);
    }
  }

  v20 = apr_palloc(*(a1 + 24), 0x118uLL);
  memcpy(v20, v22, 0x118uLL);
  v21 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
  if (v21)
  {
    v21 = *(v21 + 32);
  }

  *(v20 + 4) = v21;
  apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
  *(v20 + 3) = -1;
}

void GTMTLSMBuilder_motionEstimationPipeline(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v20 = 0u;
    *&v21 = 0;
    v23 = 0;
    v22 = 0u;
    LODWORD(v20) = 64;
    *(&v21 + 1) = -1;
    ++*(a1 + 128);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x38uLL);
        v16 = v21;
        *v15 = v20;
        v15[1] = v16;
        v15[2] = v22;
        *(v15 + 6) = v23;
        v17 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v17)
        {
          v17 = *(v17 + 32);
        }

        *(v15 + 4) = v17;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -15893)
      {
        break;
      }

      GTMTLSMMotionEstimationPipelineState_processTraceFuncWithMap(&v20, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x38uLL);
      v18 = v21;
      *v15 = v20;
      v15[1] = v18;
      v15[2] = v22;
      *(v15 + 6) = v23;
      v19 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v19)
      {
        v19 = *(v19 + 32);
      }

      *(v15 + 4) = v19;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_accelerationStructure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v52 = 0u;
  *&v53 = 0;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  LODWORD(v52) = 16;
  *(&v53 + 1) = -1;
  WORD5(v58) = 2;
  v57 = 0xFFFFFFFFFFFFFFFFLL;
  ++*(a1 + 84);
  if (a2 && (v6 = *(a2 + 32)) != 0 && (*(v6 + 79) & 8) != 0)
  {
    v7 = (v6 + 64);
  }

  else
  {
    v7 = 0;
  }

  GTMTLSMAccelerationStructure_processTraceFuncWithMap(&v52, *(a1 + 40), v7);
  v8 = *(a3 + 24);
  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = atomic_load((v9 + 4));
      v12 = v10 + (v11 >> 6) - 1;
      if (v12 > 1)
      {
        break;
      }

      v9 = *(v9 + 40);
      v10 = v12;
      if (!v9)
      {
        v10 = v12;
        goto LABEL_13;
      }
    }

    v12 = 1;
LABEL_13:
    v13 = v10 | (v12 << 32);
  }

  else
  {
    v13 = 0;
  }

  v14 = &v8[8 * *(a3 + 12)];
  while (1)
  {
    do
    {
      if (v9 && (v15 = v9 + ((0xFFFFFFFF00000001 * v13) >> 32 << 6), (*(v15 + 79) & 8) != 0))
      {
        v16 = v15 + 64;
      }

      else
      {
        v16 = 0;
      }

      if (v8 >= v14)
      {
        if (!v16)
        {
          goto LABEL_54;
        }

        v17 = HIDWORD(v13);
        if (v9 && (v18 = v9 + ((HIDWORD(v13) - v13) << 6), (*(v18 + 79) & 8) != 0))
        {
          v16 = v18 + 64;
        }

        else
        {
          v16 = 0;
        }

        v21 = atomic_load((v9 + 4));
        v20 = v13 + (v21 >> 6);
      }

      else
      {
        if (!v16)
        {
          goto LABEL_28;
        }

        if (*v8 == *v16)
        {
          v8 += 8;
        }

        else if (*v8 < *v16)
        {
LABEL_28:
          v16 = v8;
          v8 += 8;
          goto LABEL_35;
        }

        v19 = atomic_load((v9 + 4));
        v20 = v13 + (v19 >> 6);
        v17 = HIDWORD(v13);
      }

      v22 = (v17 + 1);
      if (v22 == v20 - 1)
      {
        v13 = (v22 << 32) | v22;
        v9 = *(v9 + 40);
      }

      else
      {
        v13 = (v22 << 32) | v13;
      }

LABEL_35:
      if (*v16 >= *(a1 + 16) + *(a1 + 8))
      {
LABEL_54:
        v39 = -1;
        goto LABEL_55;
      }

      v23 = *(v16 + 8);
      if (v23 == -10154 || v23 == -10158)
      {
        v24 = *(GTTraceFunc_argumentBytesWithMap(v16, *(v16 + 13), *(a1 + 40)) + 1);
      }

      else
      {
        v24 = GTTraceFunc_targetContext(v16, *(a1 + 40));
      }
    }

    while (v24 != *(&v52 + 1));
    v25 = *(v16 + 8);
    if (v25 > -15553)
    {
      if (v25 != -15552 && v25 != -10154 && v25 != -10158)
      {
        goto LABEL_53;
      }

      goto LABEL_49;
    }

    if ((v25 + 15651) >= 2 && v25 != -15661)
    {
      break;
    }

LABEL_49:
    v26 = *v16;
    if (*(a1 + 8) <= *v16)
    {
      v27 = apr_palloc(*(a1 + 24), 0xD8uLL);
      v28 = v53;
      *v27 = v52;
      *(v27 + 1) = v28;
      v29 = v57;
      v31 = v54;
      v30 = v55;
      *(v27 + 4) = v56;
      *(v27 + 5) = v29;
      *(v27 + 2) = v31;
      *(v27 + 3) = v30;
      v32 = v61;
      v34 = v58;
      v33 = v59;
      *(v27 + 8) = v60;
      *(v27 + 9) = v32;
      *(v27 + 6) = v34;
      *(v27 + 7) = v33;
      v36 = v63;
      v35 = v64;
      v37 = v62;
      v27[26] = v65;
      *(v27 + 11) = v36;
      *(v27 + 12) = v35;
      *(v27 + 10) = v37;
      v38 = *find_entry(*(a1 + 32), v27 + 8, 8uLL, 0);
      if (v38)
      {
        v38 = *(v38 + 32);
      }

      v27[4] = v38;
      apr_hash_set(*(a1 + 32), v27 + 1, 8, v27);
      v27[3] = v26;
    }

LABEL_53:
    GTMTLSMAccelerationStructure_processTraceFuncWithMap(&v52, *(a1 + 40), v16);
  }

  if (v25 != -15659)
  {
    goto LABEL_53;
  }

  v39 = *v16;
  if (*(a1 + 8) > *v16)
  {
    return;
  }

LABEL_55:
  v40 = apr_palloc(*(a1 + 24), 0xD8uLL);
  v41 = v53;
  *v40 = v52;
  *(v40 + 1) = v41;
  v42 = v57;
  v44 = v54;
  v43 = v55;
  *(v40 + 4) = v56;
  *(v40 + 5) = v42;
  *(v40 + 2) = v44;
  *(v40 + 3) = v43;
  v45 = v61;
  v47 = v58;
  v46 = v59;
  *(v40 + 8) = v60;
  *(v40 + 9) = v45;
  *(v40 + 6) = v47;
  *(v40 + 7) = v46;
  v49 = v63;
  v48 = v64;
  v50 = v62;
  v40[26] = v65;
  *(v40 + 11) = v49;
  *(v40 + 12) = v48;
  *(v40 + 10) = v50;
  v51 = *find_entry(*(a1 + 32), v40 + 8, 8uLL, 0);
  if (v51)
  {
    v51 = *(v51 + 32);
  }

  v40[4] = v51;
  apr_hash_set(*(a1 + 32), v40 + 1, 8, v40);
  v40[3] = v39;
}

void GTMTLSMBuilder_intersectionFunctionTable(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  v48 = 0u;
  *&v49 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  LODWORD(v48) = 60;
  *(&v49 + 1) = -1;
  WORD5(v54) = 2;
  v53 = 0xFFFFFFFFFFFFFFFFLL;
  ++*(a1 + 80);
  if (a2 && (v4 = *(a2 + 32)) != 0 && (*(v4 + 79) & 8) != 0)
  {
    v5 = v4 + 64;
  }

  else
  {
    v5 = 0;
  }

  GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(&v48, *(a1 + 40), v5);
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = atomic_load((v6 + 4));
      v9 = v7 + (v8 >> 6) - 1;
      if (v9 > 1)
      {
        break;
      }

      v6 = *(v6 + 40);
      v7 = v9;
      if (!v6)
      {
        v7 = v9;
LABEL_13:
        v10 = v7 | (v9 << 32);
        goto LABEL_14;
      }
    }

    v9 = 1;
    goto LABEL_13;
  }

  v10 = 0;
  while (1)
  {
LABEL_14:
    if (!v6 || (v11 = v6 + 64 + ((HIDWORD(v10) - v10) << 6), (*(v11 + 15) & 8) == 0) || (v12 = *(a1 + 8), v13 = *v11, *v11 >= *(a1 + 16) + v12))
    {
      v29 = apr_palloc(*(a1 + 24), 0xB0uLL);
      v31 = v49;
      v30 = v50;
      *v29 = v48;
      v29[1] = v31;
      v29[2] = v30;
      v32 = v54;
      v34 = v51;
      v33 = v52;
      v29[5] = v53;
      v29[6] = v32;
      v29[3] = v34;
      v29[4] = v33;
      v35 = v58;
      v37 = v55;
      v36 = v56;
      v29[9] = v57;
      v29[10] = v35;
      v29[7] = v37;
      v29[8] = v36;
      v38 = *find_entry(*(a1 + 32), v29 + 8, 8uLL, 0);
      if (v38)
      {
        v38 = *(v38 + 32);
      }

      *(v29 + 4) = v38;
      apr_hash_set(*(a1 + 32), v29 + 8, 8, v29);
      v13 = -1;
      goto LABEL_34;
    }

    v14 = *(v11 + 8);
    if (v14 > -15561)
    {
      if (v14 != -15557 && v14 != -15560)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    if (v14 != -15570)
    {
      break;
    }

LABEL_24:
    if (v12 <= v13)
    {
      v16 = apr_palloc(*(a1 + 24), 0xB0uLL);
      v18 = v49;
      v17 = v50;
      *v16 = v48;
      *(v16 + 1) = v18;
      *(v16 + 2) = v17;
      v19 = v54;
      v21 = v51;
      v20 = v52;
      *(v16 + 5) = v53;
      *(v16 + 6) = v19;
      *(v16 + 3) = v21;
      *(v16 + 4) = v20;
      v22 = v58;
      v24 = v55;
      v23 = v56;
      *(v16 + 9) = v57;
      *(v16 + 10) = v22;
      *(v16 + 7) = v24;
      *(v16 + 8) = v23;
      v25 = *find_entry(*(a1 + 32), v16 + 8, 8uLL, 0);
      if (v25)
      {
        v25 = *(v25 + 32);
      }

      v16[4] = v25;
      apr_hash_set(*(a1 + 32), v16 + 1, 8, v16);
      v16[3] = v13;
    }

LABEL_29:
    GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(&v48, *(a1 + 40), v6 + 64 + ((HIDWORD(v10) - v10) << 6));
    v26 = atomic_load((v6 + 4));
    v27 = v10 + (v26 >> 6);
    v28 = (HIDWORD(v10) + 1);
    v10 = (v28 << 32) | v10;
    if (v28 == v27 - 1)
    {
      v10 = (v28 << 32) | v28;
      v6 = *(v6 + 40);
    }
  }

  if (v14 != -15568)
  {
    goto LABEL_29;
  }

  if (v12 <= v13)
  {
    v29 = apr_palloc(*(a1 + 24), 0xB0uLL);
    v40 = v49;
    v39 = v50;
    *v29 = v48;
    v29[1] = v40;
    v29[2] = v39;
    v41 = v54;
    v43 = v51;
    v42 = v52;
    v29[5] = v53;
    v29[6] = v41;
    v29[3] = v43;
    v29[4] = v42;
    v44 = v58;
    v46 = v55;
    v45 = v56;
    v29[9] = v57;
    v29[10] = v44;
    v29[7] = v46;
    v29[8] = v45;
    v47 = *find_entry(*(a1 + 32), v29 + 8, 8uLL, 0);
    if (v47)
    {
      v47 = *(v47 + 32);
    }

    *(v29 + 4) = v47;
    apr_hash_set(*(a1 + 32), v29 + 8, 8, v29);
LABEL_34:
    *(v29 + 3) = v13;
  }
}

void GTMTLSMBuilder_functionHandle(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v23 = 0u;
    *&v24 = 0;
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23.i32[0] = 44;
    *(&v24 + 1) = -1;
    ++*(a1 + 180);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
LABEL_10:
    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      v10 = *v9;
      if (*v9 >= *(a1 + 16) + *(a1 + 8))
      {
        break;
      }

      if (*(v9 + 8) == -15610)
      {
        v14 = apr_palloc(*(a1 + 24), 0x68uLL);
        v19 = v28;
        v14[4] = v27;
        v14[5] = v19;
        *(v14 + 12) = v29;
        v20 = v24;
        *v14 = v23;
        v14[1] = v20;
        v21 = v26;
        v14[2] = v25;
        v14[3] = v21;
        v22 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
        if (v22)
        {
          v22 = *(v22 + 32);
        }

        *(v14 + 4) = v22;
        apr_hash_set(*(a1 + 32), v14 + 8, 8, v14);
        goto LABEL_22;
      }

      GTMTLSMFunctionHandle_processTraceFuncWithMap(&v23, *(a1 + 40), v9);
      v11 = atomic_load((v4 + 4));
      v12 = v8 + (v11 >> 6);
      v13 = (HIDWORD(v8) + 1);
      v8 = (v13 << 32) | v8;
      if (v13 == v12 - 1)
      {
        v8 = (v13 << 32) | v13;
        v4 = *(v4 + 40);
      }
    }

    v14 = apr_palloc(*(a1 + 24), 0x68uLL);
    v15 = v28;
    v14[4] = v27;
    v14[5] = v15;
    *(v14 + 12) = v29;
    v16 = v24;
    *v14 = v23;
    v14[1] = v16;
    v17 = v26;
    v14[2] = v25;
    v14[3] = v17;
    v18 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
    if (v18)
    {
      v18 = *(v18 + 32);
    }

    *(v14 + 4) = v18;
    apr_hash_set(*(a1 + 32), v14 + 8, 8, v14);
    v10 = -1;
LABEL_22:
    *(v14 + 3) = v10;
  }
}

void GTMTLSMBuilder_visibleFunctionTable(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  ++*(a1 + 76);
  v49 = 0u;
  *&v50 = 0;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  LODWORD(v49) = 83;
  *(&v50 + 1) = -1;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:
  while (v4)
  {
    v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
    if ((*(v9 + 15) & 8) == 0)
    {
      break;
    }

    v10 = *(a1 + 8);
    v11 = *v9;
    if (*v9 >= *(a1 + 16) + v10)
    {
      break;
    }

    v12 = *(v9 + 8);
    if (v12 > -15600)
    {
      if (v12 != -15596 && v12 != -15599)
      {
        goto LABEL_25;
      }

LABEL_20:
      if (v10 <= v11)
      {
        v14 = apr_palloc(*(a1 + 24), 0xB8uLL);
        v15 = v52;
        v17 = v49;
        v16 = v50;
        *(v14 + 2) = v51;
        *(v14 + 3) = v15;
        *v14 = v17;
        *(v14 + 1) = v16;
        v18 = v56;
        v20 = v53;
        v19 = v54;
        *(v14 + 6) = v55;
        *(v14 + 7) = v18;
        *(v14 + 4) = v20;
        *(v14 + 5) = v19;
        v22 = v58;
        v21 = v59;
        v23 = v57;
        v14[22] = v60;
        *(v14 + 9) = v22;
        *(v14 + 10) = v21;
        *(v14 + 8) = v23;
        v24 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
        if (v24)
        {
          v24 = *(v24 + 32);
        }

        v14[4] = v24;
        apr_hash_set(*(a1 + 32), v14 + 1, 8, v14);
        v14[3] = v11;
      }

      goto LABEL_25;
    }

    if (v12 == -15607)
    {
      goto LABEL_20;
    }

    if (v12 == -15605)
    {
      v28 = apr_palloc(*(a1 + 24), 0xB8uLL);
      v39 = v52;
      v41 = v49;
      v40 = v50;
      v28[2] = v51;
      v28[3] = v39;
      *v28 = v41;
      v28[1] = v40;
      v42 = v56;
      v44 = v53;
      v43 = v54;
      v28[6] = v55;
      v28[7] = v42;
      v28[4] = v44;
      v28[5] = v43;
      v46 = v58;
      v45 = v59;
      v47 = v57;
      *(v28 + 22) = v60;
      v28[9] = v46;
      v28[10] = v45;
      v28[8] = v47;
      v48 = *find_entry(*(a1 + 32), v28 + 8, 8uLL, 0);
      if (v48)
      {
        v48 = *(v48 + 32);
      }

      *(v28 + 4) = v48;
      apr_hash_set(*(a1 + 32), v28 + 8, 8, v28);
      goto LABEL_30;
    }

LABEL_25:
    GTMTLSMVisibleFunctionTable_processTraceFuncWithMap(&v49, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v25 = atomic_load((v4 + 4));
    v26 = v8 + (v25 >> 6);
    v27 = (HIDWORD(v8) + 1);
    v8 = (v27 << 32) | v8;
    if (v27 == v26 - 1)
    {
      v8 = (v27 << 32) | v27;
      v4 = *(v4 + 40);
    }
  }

  v28 = apr_palloc(*(a1 + 24), 0xB8uLL);
  v29 = v52;
  v31 = v49;
  v30 = v50;
  v28[2] = v51;
  v28[3] = v29;
  *v28 = v31;
  v28[1] = v30;
  v32 = v56;
  v34 = v53;
  v33 = v54;
  v28[6] = v55;
  v28[7] = v32;
  v28[4] = v34;
  v28[5] = v33;
  v36 = v58;
  v35 = v59;
  v37 = v57;
  *(v28 + 22) = v60;
  v28[9] = v36;
  v28[10] = v35;
  v28[8] = v37;
  v38 = *find_entry(*(a1 + 32), v28 + 8, 8uLL, 0);
  if (v38)
  {
    v38 = *(v38 + 32);
  }

  *(v28 + 4) = v38;
  apr_hash_set(*(a1 + 32), v28 + 8, 8, v28);
  v11 = -1;
LABEL_30:
  *(v28 + 3) = v11;
}

void GTMTLSMBuilder_device(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    v20 = 0u;
    *&v21 = 0;
    v22 = 0u;
    LODWORD(v20) = 36;
    *(&v21 + 1) = -1;
    ++*(a1 + 168);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
    while (1)
    {
LABEL_10:
      if (!v4 || (v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6), (*(v9 + 15) & 8) == 0) || (v10 = *(a1 + 8), v11 = *v9, *v9 >= *(a1 + 16) + v10))
      {
        v15 = apr_palloc(*(a1 + 24), 0x30uLL);
        v16 = v21;
        *v15 = v20;
        v15[1] = v16;
        v15[2] = v22;
        v17 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v17)
        {
          v17 = *(v17 + 32);
        }

        *(v15 + 4) = v17;
        apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
        v11 = -1;
        goto LABEL_19;
      }

      if (*(v9 + 8) == -16317)
      {
        break;
      }

      GTMTLSMDevice_processTraceFuncWithMap(&v20, *(a1 + 40), v9);
      v12 = atomic_load((v4 + 4));
      v13 = v8 + (v12 >> 6);
      v14 = (HIDWORD(v8) + 1);
      v8 = (v14 << 32) | v8;
      if (v14 == v13 - 1)
      {
        v8 = (v14 << 32) | v14;
        v4 = *(v4 + 40);
      }
    }

    if (v10 <= v11)
    {
      v15 = apr_palloc(*(a1 + 24), 0x30uLL);
      v18 = v21;
      *v15 = v20;
      v15[1] = v18;
      v15[2] = v22;
      v19 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
      if (v19)
      {
        v19 = *(v19 + 32);
      }

      *(v15 + 4) = v19;
      apr_hash_set(*(a1 + 32), v15 + 8, 8, v15);
LABEL_19:
      *(v15 + 3) = v11;
    }
  }
}

void GTMTLSMBuilder_spatialScaler(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    ++*(a1 + 184);
    v30 = 0u;
    *&v31 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    LODWORD(v30) = 39;
    *(&v31 + 1) = -1;
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
LABEL_10:
    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      v10 = *(a1 + 8);
      v11 = *v9;
      if (*v9 >= *(a1 + 16) + v10)
      {
        break;
      }

      v12 = *(v9 + 8);
      if ((v12 + 20480) >= 5)
      {
        if (v12 == -20475)
        {
          v21 = apr_palloc(*(a1 + 24), 0x60uLL);
          v26 = v33;
          v21[2] = v32;
          v21[3] = v26;
          v27 = v35;
          v21[4] = v34;
          v21[5] = v27;
          v28 = v31;
          *v21 = v30;
          v21[1] = v28;
          v29 = *find_entry(*(a1 + 32), v21 + 8, 8uLL, 0);
          if (v29)
          {
            v29 = *(v29 + 32);
          }

          *(v21 + 4) = v29;
          apr_hash_set(*(a1 + 32), v21 + 8, 8, v21);
          goto LABEL_24;
        }
      }

      else if (v10 <= v11)
      {
        v13 = apr_palloc(*(a1 + 24), 0x60uLL);
        v14 = v33;
        *(v13 + 2) = v32;
        *(v13 + 3) = v14;
        v15 = v35;
        *(v13 + 4) = v34;
        *(v13 + 5) = v15;
        v16 = v31;
        *v13 = v30;
        *(v13 + 1) = v16;
        v17 = *find_entry(*(a1 + 32), v13 + 8, 8uLL, 0);
        if (v17)
        {
          v17 = *(v17 + 32);
        }

        v13[4] = v17;
        apr_hash_set(*(a1 + 32), v13 + 1, 8, v13);
        v13[3] = v11;
      }

      GTMTLFXSMSpatialScaler_processTraceFuncWithMap(&v30, *(a1 + 40), v4 + 64 + ((HIDWORD(v8) - v8) << 6));
      v18 = atomic_load((v4 + 4));
      v19 = v8 + (v18 >> 6);
      v20 = (HIDWORD(v8) + 1);
      v8 = (v20 << 32) | v8;
      if (v20 == v19 - 1)
      {
        v8 = (v20 << 32) | v20;
        v4 = *(v4 + 40);
      }
    }

    v21 = apr_palloc(*(a1 + 24), 0x60uLL);
    v22 = v33;
    v21[2] = v32;
    v21[3] = v22;
    v23 = v35;
    v21[4] = v34;
    v21[5] = v23;
    v24 = v31;
    *v21 = v30;
    v21[1] = v24;
    v25 = *find_entry(*(a1 + 32), v21 + 8, 8uLL, 0);
    if (v25)
    {
      v25 = *(v25 + 32);
    }

    *(v21 + 4) = v25;
    apr_hash_set(*(a1 + 32), v21 + 8, 8, v21);
    v11 = -1;
LABEL_24:
    *(v21 + 3) = v11;
  }
}

void GTMTLSMBuilder_temporalScaler(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    ++*(a1 + 188);
    v36 = 0u;
    *&v37 = 0;
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    LODWORD(v36) = 40;
    *(&v37 + 1) = -1;
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
LABEL_10:
    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      v10 = *(a1 + 8);
      v11 = *v9;
      if (*v9 >= *(a1 + 16) + v10)
      {
        break;
      }

      v12 = *(v9 + 8);
      if ((v12 + 20473) < 0xF || (v12 + 20457) < 2 || v12 == -18430)
      {
        if (v10 <= v11)
        {
          v15 = apr_palloc(*(a1 + 24), 0x98uLL);
          v16 = v43;
          *(v15 + 6) = v42;
          *(v15 + 7) = v16;
          *(v15 + 8) = v44;
          v15[18] = v45;
          v17 = v39;
          *(v15 + 2) = v38;
          *(v15 + 3) = v17;
          v18 = v41;
          *(v15 + 4) = v40;
          *(v15 + 5) = v18;
          v19 = v37;
          *v15 = v36;
          *(v15 + 1) = v19;
          v20 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
          if (v20)
          {
            v20 = *(v20 + 32);
          }

          v15[4] = v20;
          apr_hash_set(*(a1 + 32), v15 + 1, 8, v15);
          v15[3] = v11;
        }
      }

      else if (v12 == -20458)
      {
        v29 = apr_palloc(*(a1 + 24), 0x98uLL);
        v30 = v43;
        v29[6] = v42;
        v29[7] = v30;
        v29[8] = v44;
        *(v29 + 18) = v45;
        v31 = v39;
        v29[2] = v38;
        v29[3] = v31;
        v32 = v41;
        v29[4] = v40;
        v29[5] = v32;
        v33 = v37;
        *v29 = v36;
        v29[1] = v33;
        entry = find_entry(*(a1 + 32), v29 + 8, 8uLL, 0);
        v35 = *entry;
        if (*entry)
        {
          v35 = *(v35 + 32);
        }

        *(v29 + 4) = v35;
        apr_hash_set(*(a1 + 32), v29 + 8, 8, v29);
        goto LABEL_32;
      }

      GTMTLFXSMTemporalScaler_processTraceFuncWithMap(&v36, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
      v21 = atomic_load((v4 + 4));
      v22 = v8 + (v21 >> 6);
      v23 = (HIDWORD(v8) + 1);
      v8 = (v23 << 32) | v8;
      if (v23 == v22 - 1)
      {
        v8 = (v23 << 32) | v23;
        v4 = *(v4 + 40);
      }
    }

    v29 = apr_palloc(*(a1 + 24), 0x98uLL);
    v24 = v43;
    v29[6] = v42;
    v29[7] = v24;
    v29[8] = v44;
    *(v29 + 18) = v45;
    v25 = v39;
    v29[2] = v38;
    v29[3] = v25;
    v26 = v41;
    v29[4] = v40;
    v29[5] = v26;
    v27 = v37;
    *v29 = v36;
    v29[1] = v27;
    v28 = *find_entry(*(a1 + 32), v29 + 8, 8uLL, 0);
    if (v28)
    {
      v28 = *(v28 + 32);
    }

    *(v29 + 4) = v28;
    apr_hash_set(*(a1 + 32), v29 + 8, 8, v29);
    v11 = -1;
LABEL_32:
    *(v29 + 3) = v11;
  }
}

void GTMTLSMBuilder_frameInterpolator(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    ++*(a1 + 216);
    v36 = 0u;
    *&v37 = 0;
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    LODWORD(v36) = 103;
    *(&v37 + 1) = -1;
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
LABEL_10:
    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      v10 = *(a1 + 8);
      v11 = *v9;
      if (*v9 >= *(a1 + 16) + v10)
      {
        break;
      }

      v12 = *(v9 + 8);
      if (((v12 + 20349) > 0x15 || ((1 << (v12 + 125)) & 0x3FE001) == 0) && (v12 + 20455) >= 9)
      {
        if (v12 == -20446)
        {
          v29 = apr_palloc(*(a1 + 24), 0x98uLL);
          v30 = v43;
          v29[6] = v42;
          v29[7] = v30;
          v29[8] = v44;
          *(v29 + 18) = v45;
          v31 = v39;
          v29[2] = v38;
          v29[3] = v31;
          v32 = v41;
          v29[4] = v40;
          v29[5] = v32;
          v33 = v37;
          *v29 = v36;
          v29[1] = v33;
          entry = find_entry(*(a1 + 32), v29 + 8, 8uLL, 0);
          v35 = *entry;
          if (*entry)
          {
            v35 = *(v35 + 32);
          }

          *(v29 + 4) = v35;
          apr_hash_set(*(a1 + 32), v29 + 8, 8, v29);
          goto LABEL_31;
        }
      }

      else if (v10 <= v11)
      {
        v15 = apr_palloc(*(a1 + 24), 0x98uLL);
        v16 = v43;
        *(v15 + 6) = v42;
        *(v15 + 7) = v16;
        *(v15 + 8) = v44;
        v15[18] = v45;
        v17 = v39;
        *(v15 + 2) = v38;
        *(v15 + 3) = v17;
        v18 = v41;
        *(v15 + 4) = v40;
        *(v15 + 5) = v18;
        v19 = v37;
        *v15 = v36;
        *(v15 + 1) = v19;
        v20 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v20)
        {
          v20 = *(v20 + 32);
        }

        v15[4] = v20;
        apr_hash_set(*(a1 + 32), v15 + 1, 8, v15);
        v15[3] = v11;
      }

      GTMTLFXSMFrameInterpolator_processTraceFuncWithMap(&v36, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
      v21 = atomic_load((v4 + 4));
      v22 = v8 + (v21 >> 6);
      v23 = (HIDWORD(v8) + 1);
      v8 = (v23 << 32) | v8;
      if (v23 == v22 - 1)
      {
        v8 = (v23 << 32) | v23;
        v4 = *(v4 + 40);
      }
    }

    v29 = apr_palloc(*(a1 + 24), 0x98uLL);
    v24 = v43;
    v29[6] = v42;
    v29[7] = v24;
    v29[8] = v44;
    *(v29 + 18) = v45;
    v25 = v39;
    v29[2] = v38;
    v29[3] = v25;
    v26 = v41;
    v29[4] = v40;
    v29[5] = v26;
    v27 = v37;
    *v29 = v36;
    v29[1] = v27;
    v28 = *find_entry(*(a1 + 32), v29 + 8, 8uLL, 0);
    if (v28)
    {
      v28 = *(v28 + 32);
    }

    *(v29 + 4) = v28;
    apr_hash_set(*(a1 + 32), v29 + 8, 8, v29);
    v11 = -1;
LABEL_31:
    *(v29 + 3) = v11;
  }
}

void GTMTLSMBuilder_temporalDenoisedScaler(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  ++*(a1 + 220);
  memset(&v23[2], 0, 304);
  memset(v23, 0, 24);
  LODWORD(v23[0]) = 104;
  *(&v23[1] + 1) = -1;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:
  while (v4)
  {
    v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
    if ((*(v9 + 15) & 8) == 0)
    {
      break;
    }

    v10 = *(a1 + 8);
    v11 = *v9;
    if (*v9 >= *(a1 + 16) + v10)
    {
      break;
    }

    v12 = *(v9 + 8);
    if ((v12 + 20444) < 0x17)
    {
      goto LABEL_14;
    }

    if (v12 > -20349)
    {
      if ((v12 + 20348) >= 2 && v12 != -18422)
      {
        goto LABEL_18;
      }

LABEL_14:
      if (v10 <= v11)
      {
        v13 = apr_palloc(*(a1 + 24), 0x150uLL);
        memcpy(v13, v23, 0x150uLL);
        v14 = *find_entry(*(a1 + 32), v13 + 8, 8uLL, 0);
        if (v14)
        {
          v14 = *(v14 + 32);
        }

        *(v13 + 4) = v14;
        apr_hash_set(*(a1 + 32), v13 + 8, 8, v13);
        *(v13 + 3) = v11;
      }

      goto LABEL_18;
    }

    if (v12 == -20420)
    {
      goto LABEL_14;
    }

    if (v12 == -20421)
    {
      v20 = apr_palloc(*(a1 + 24), 0x150uLL);
      memcpy(v20, v23, 0x150uLL);
      entry = find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
      v22 = *entry;
      if (*entry)
      {
        v22 = *(v22 + 32);
      }

      *(v20 + 4) = v22;
      apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
      goto LABEL_32;
    }

LABEL_18:
    GTMTLFXSMTemporalDenoisedScaler_processTraceFuncWithMap(v23, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v15 = atomic_load((v4 + 4));
    v16 = v8 + (v15 >> 6);
    v17 = (HIDWORD(v8) + 1);
    v8 = (v17 << 32) | v8;
    if (v17 == v16 - 1)
    {
      v8 = (v17 << 32) | v17;
      v4 = *(v4 + 40);
    }
  }

  v20 = apr_palloc(*(a1 + 24), 0x150uLL);
  memcpy(v20, v23, 0x150uLL);
  v19 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
  if (v19)
  {
    v19 = *(v19 + 32);
  }

  *(v20 + 4) = v19;
  apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
  v11 = -1;
LABEL_32:
  *(v20 + 3) = v11;
}

void GTMTLSMBuilder_mtl4SpatialScaler(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    ++*(a1 + 232);
    v31 = 0u;
    *&v32 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    LODWORD(v31) = 108;
    *(&v32 + 1) = -1;
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
LABEL_10:
    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      v10 = *(a1 + 8);
      v11 = *v9;
      if (*v9 >= *(a1 + 16) + v10)
      {
        break;
      }

      v12 = *(v9 + 8);
      if ((v12 + 20405) < 5 || v12 == -20326)
      {
        if (v10 <= v11)
        {
          v14 = apr_palloc(*(a1 + 24), 0x70uLL);
          v15 = v36;
          *(v14 + 4) = v35;
          *(v14 + 5) = v15;
          *(v14 + 6) = v37;
          v16 = v32;
          *v14 = v31;
          *(v14 + 1) = v16;
          v17 = v34;
          *(v14 + 2) = v33;
          *(v14 + 3) = v17;
          v18 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
          if (v18)
          {
            v18 = *(v18 + 32);
          }

          v14[4] = v18;
          apr_hash_set(*(a1 + 32), v14 + 1, 8, v14);
          v14[3] = v11;
        }
      }

      else if (v12 == -20399)
      {
        v22 = apr_palloc(*(a1 + 24), 0x70uLL);
        v27 = v36;
        v22[4] = v35;
        v22[5] = v27;
        v22[6] = v37;
        v28 = v32;
        *v22 = v31;
        v22[1] = v28;
        v29 = v34;
        v22[2] = v33;
        v22[3] = v29;
        v30 = *find_entry(*(a1 + 32), v22 + 8, 8uLL, 0);
        if (v30)
        {
          v30 = *(v30 + 32);
        }

        *(v22 + 4) = v30;
        apr_hash_set(*(a1 + 32), v22 + 8, 8, v22);
        goto LABEL_28;
      }

      GTMTL4FXSMSpatialScaler_processTraceFuncWithMap(&v31, *(a1 + 40), v4 + 64 + ((HIDWORD(v8) - v8) << 6));
      v19 = atomic_load((v4 + 4));
      v20 = v8 + (v19 >> 6);
      v21 = (HIDWORD(v8) + 1);
      v8 = (v21 << 32) | v8;
      if (v21 == v20 - 1)
      {
        v8 = (v21 << 32) | v21;
        v4 = *(v4 + 40);
      }
    }

    v22 = apr_palloc(*(a1 + 24), 0x70uLL);
    v23 = v36;
    v22[4] = v35;
    v22[5] = v23;
    v22[6] = v37;
    v24 = v32;
    *v22 = v31;
    v22[1] = v24;
    v25 = v34;
    v22[2] = v33;
    v22[3] = v25;
    v26 = *find_entry(*(a1 + 32), v22 + 8, 8uLL, 0);
    if (v26)
    {
      v26 = *(v26 + 32);
    }

    *(v22 + 4) = v26;
    apr_hash_set(*(a1 + 32), v22 + 8, 8, v22);
    v11 = -1;
LABEL_28:
    *(v22 + 3) = v11;
  }
}

void GTMTLSMBuilder_mtl4TemporalScaler(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  ++*(a1 + 236);
  v37 = 0u;
  *&v38 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  LODWORD(v37) = 109;
  *(&v38 + 1) = -1;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:
  while (v4)
  {
    v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
    if ((*(v9 + 15) & 8) == 0)
    {
      break;
    }

    v10 = *(a1 + 8);
    v11 = *v9;
    if (*v9 >= *(a1 + 16) + v10)
    {
      break;
    }

    v12 = *(v9 + 8);
    v13 = (v12 + 20369);
    if (v13 > 0x2D)
    {
      goto LABEL_22;
    }

    if (((1 << (v12 - 111)) & 0x20000005DFFFLL) == 0)
    {
      if (v13 == 17)
      {
        v24 = apr_palloc(*(a1 + 24), 0xA8uLL);
        v31 = v46;
        v24[8] = v45;
        v24[9] = v31;
        *(v24 + 20) = v47;
        v32 = v42;
        v24[4] = v41;
        v24[5] = v32;
        v33 = v44;
        v24[6] = v43;
        v24[7] = v33;
        v34 = v38;
        *v24 = v37;
        v24[1] = v34;
        v35 = v40;
        v24[2] = v39;
        v24[3] = v35;
        v36 = *find_entry(*(a1 + 32), v24 + 8, 8uLL, 0);
        if (v36)
        {
          v36 = *(v36 + 32);
        }

        *(v24 + 4) = v36;
        apr_hash_set(*(a1 + 32), v24 + 8, 8, v24);
        goto LABEL_27;
      }

LABEL_22:
      if (v12 != -18423)
      {
        goto LABEL_19;
      }
    }

    if (v10 <= v11)
    {
      v14 = apr_palloc(*(a1 + 24), 0xA8uLL);
      v15 = v46;
      *(v14 + 8) = v45;
      *(v14 + 9) = v15;
      v14[20] = v47;
      v16 = v42;
      *(v14 + 4) = v41;
      *(v14 + 5) = v16;
      v17 = v44;
      *(v14 + 6) = v43;
      *(v14 + 7) = v17;
      v18 = v38;
      *v14 = v37;
      *(v14 + 1) = v18;
      v19 = v40;
      *(v14 + 2) = v39;
      *(v14 + 3) = v19;
      v20 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
      if (v20)
      {
        v20 = *(v20 + 32);
      }

      v14[4] = v20;
      apr_hash_set(*(a1 + 32), v14 + 1, 8, v14);
      v14[3] = v11;
    }

LABEL_19:
    GTMTL4FXSMTemporalScaler_processTraceFuncWithMap(&v37, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v21 = atomic_load((v4 + 4));
    v22 = v8 + (v21 >> 6);
    v23 = (HIDWORD(v8) + 1);
    v8 = (v23 << 32) | v8;
    if (v23 == v22 - 1)
    {
      v8 = (v23 << 32) | v23;
      v4 = *(v4 + 40);
    }
  }

  v24 = apr_palloc(*(a1 + 24), 0xA8uLL);
  v25 = v46;
  v24[8] = v45;
  v24[9] = v25;
  *(v24 + 20) = v47;
  v26 = v42;
  v24[4] = v41;
  v24[5] = v26;
  v27 = v44;
  v24[6] = v43;
  v24[7] = v27;
  v28 = v38;
  *v24 = v37;
  v24[1] = v28;
  v29 = v40;
  v24[2] = v39;
  v24[3] = v29;
  v30 = *find_entry(*(a1 + 32), v24 + 8, 8uLL, 0);
  if (v30)
  {
    v30 = *(v30 + 32);
  }

  *(v24 + 4) = v30;
  apr_hash_set(*(a1 + 32), v24 + 8, 8, v24);
  v11 = -1;
LABEL_27:
  *(v24 + 3) = v11;
}

void GTMTLSMBuilder_mtl4FrameInterpolator(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    ++*(a1 + 216);
    v39 = 0u;
    *&v40 = 0;
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    LODWORD(v39) = 107;
    *(&v40 + 1) = -1;
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
LABEL_10:
    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      v10 = *(a1 + 8);
      v11 = *v9;
      if (*v9 >= *(a1 + 16) + v10)
      {
        break;
      }

      v12 = *(v9 + 8);
      v13 = (v12 + 20419) > 0xB || ((1 << (v12 - 61)) & 0xDFD) == 0;
      if (v13 && ((v12 + 20345) <= 0x12 ? (v14 = ((1 << (v12 + 121)) & 0x401FF) == 0) : (v14 = 1), v14))
      {
        if (v12 == -20475)
        {
          v31 = apr_palloc(*(a1 + 24), 0xA8uLL);
          v32 = v48;
          v31[8] = v47;
          v31[9] = v32;
          *(v31 + 20) = v49;
          v33 = v44;
          v31[4] = v43;
          v31[5] = v33;
          v34 = v46;
          v31[6] = v45;
          v31[7] = v34;
          v35 = v40;
          *v31 = v39;
          v31[1] = v35;
          v36 = v42;
          v31[2] = v41;
          v31[3] = v36;
          entry = find_entry(*(a1 + 32), v31 + 8, 8uLL, 0);
          v38 = *entry;
          if (*entry)
          {
            v38 = *(v38 + 32);
          }

          *(v31 + 4) = v38;
          apr_hash_set(*(a1 + 32), v31 + 8, 8, v31);
          goto LABEL_33;
        }
      }

      else if (v10 <= v11)
      {
        v15 = apr_palloc(*(a1 + 24), 0xA8uLL);
        v16 = v48;
        *(v15 + 8) = v47;
        *(v15 + 9) = v16;
        v15[20] = v49;
        v17 = v44;
        *(v15 + 4) = v43;
        *(v15 + 5) = v17;
        v18 = v46;
        *(v15 + 6) = v45;
        *(v15 + 7) = v18;
        v19 = v40;
        *v15 = v39;
        *(v15 + 1) = v19;
        v20 = v42;
        *(v15 + 2) = v41;
        *(v15 + 3) = v20;
        v21 = *find_entry(*(a1 + 32), v15 + 8, 8uLL, 0);
        if (v21)
        {
          v21 = *(v21 + 32);
        }

        v15[4] = v21;
        apr_hash_set(*(a1 + 32), v15 + 1, 8, v15);
        v15[3] = v11;
      }

      GTMTL4FXSMFrameInterpolator_processTraceFuncWithMap(&v39, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
      v22 = atomic_load((v4 + 4));
      v23 = v8 + (v22 >> 6);
      v24 = (HIDWORD(v8) + 1);
      v8 = (v24 << 32) | v8;
      if (v24 == v23 - 1)
      {
        v8 = (v24 << 32) | v24;
        v4 = *(v4 + 40);
      }
    }

    v31 = apr_palloc(*(a1 + 24), 0xA8uLL);
    v25 = v48;
    v31[8] = v47;
    v31[9] = v25;
    *(v31 + 20) = v49;
    v26 = v44;
    v31[4] = v43;
    v31[5] = v26;
    v27 = v46;
    v31[6] = v45;
    v31[7] = v27;
    v28 = v40;
    *v31 = v39;
    v31[1] = v28;
    v29 = v42;
    v31[2] = v41;
    v31[3] = v29;
    v30 = *find_entry(*(a1 + 32), v31 + 8, 8uLL, 0);
    if (v30)
    {
      v30 = *(v30 + 32);
    }

    *(v31 + 4) = v30;
    apr_hash_set(*(a1 + 32), v31 + 8, 8, v31);
    v11 = -1;
LABEL_33:
    *(v31 + 3) = v11;
  }
}

void GTMTLSMBuilder_mtl4TemporalDenoisedScaler(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  ++*(a1 + 244);
  memset(&v23[2], 0, 320);
  memset(v23, 0, 24);
  LODWORD(v23[0]) = 110;
  *(&v23[1] + 1) = -1;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:
  while (v4)
  {
    v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
    if ((*(v9 + 15) & 8) == 0)
    {
      break;
    }

    v10 = *(a1 + 8);
    v11 = *v9;
    if (*v9 >= *(a1 + 16) + v10)
    {
      break;
    }

    v12 = *(v9 + 8);
    if ((v12 + 20397) < 0x10)
    {
      goto LABEL_16;
    }

    v13 = (v12 + 20380);
    if (v13 > 0x37)
    {
      goto LABEL_20;
    }

    if (((1 << v13) & 0x800000000005FFLL) != 0)
    {
LABEL_16:
      if (v10 <= v11)
      {
        v14 = apr_palloc(*(a1 + 24), 0x160uLL);
        memcpy(v14, v23, 0x160uLL);
        v15 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
        if (v15)
        {
          v15 = *(v15 + 32);
        }

        *(v14 + 4) = v15;
        apr_hash_set(*(a1 + 32), v14 + 8, 8, v14);
        *(v14 + 3) = v11;
      }
    }

    else if (v13 == 9)
    {
      v20 = apr_palloc(*(a1 + 24), 0x160uLL);
      memcpy(v20, v23, 0x160uLL);
      entry = find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
      v22 = *entry;
      if (*entry)
      {
        v22 = *(v22 + 32);
      }

      *(v20 + 4) = v22;
      apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
      goto LABEL_27;
    }

LABEL_20:
    GTMTL4FXSMTemporalDenoisedScaler_processTraceFuncWithMap(v23, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v16 = atomic_load((v4 + 4));
    v17 = v8 + (v16 >> 6);
    v18 = (HIDWORD(v8) + 1);
    v8 = (v18 << 32) | v8;
    if (v18 == v17 - 1)
    {
      v8 = (v18 << 32) | v18;
      v4 = *(v4 + 40);
    }
  }

  v20 = apr_palloc(*(a1 + 24), 0x160uLL);
  memcpy(v20, v23, 0x160uLL);
  v19 = *find_entry(*(a1 + 32), v20 + 8, 8uLL, 0);
  if (v19)
  {
    v19 = *(v19 + 32);
  }

  *(v20 + 4) = v19;
  apr_hash_set(*(a1 + 32), v20 + 8, 8, v20);
  v11 = -1;
LABEL_27:
  *(v20 + 3) = v11;
}

void GTMTLSMBuilder_residencySet(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    ++*(a1 + 192);
    v19 = 0u;
    *&v20 = 0;
    v22 = 0;
    v21 = 0u;
    LODWORD(v19) = 72;
    *(&v20 + 1) = -1;
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
LABEL_10:
    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      v10 = *v9;
      if (*v9 >= *(a1 + 16) + *(a1 + 8))
      {
        break;
      }

      if (*(v9 + 8) == -15231)
      {
        v14 = apr_palloc(*(a1 + 24), 0x38uLL);
        v17 = v20;
        *v14 = v19;
        v14[1] = v17;
        v14[2] = v21;
        *(v14 + 6) = v22;
        v18 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
        if (v18)
        {
          v18 = *(v18 + 32);
        }

        *(v14 + 4) = v18;
        apr_hash_set(*(a1 + 32), v14 + 8, 8, v14);
        goto LABEL_22;
      }

      GTMTLSMResidencySet_processTraceFuncWithMap(&v19, *(a1 + 40), v9);
      v11 = atomic_load((v4 + 4));
      v12 = v8 + (v11 >> 6);
      v13 = (HIDWORD(v8) + 1);
      v8 = (v13 << 32) | v8;
      if (v13 == v12 - 1)
      {
        v8 = (v13 << 32) | v13;
        v4 = *(v4 + 40);
      }
    }

    v14 = apr_palloc(*(a1 + 24), 0x38uLL);
    v15 = v20;
    *v14 = v19;
    v14[1] = v15;
    v14[2] = v21;
    *(v14 + 6) = v22;
    v16 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
    if (v16)
    {
      v16 = *(v16 + 32);
    }

    *(v14 + 4) = v16;
    apr_hash_set(*(a1 + 32), v14 + 8, 8, v14);
    v10 = -1;
LABEL_22:
    *(v14 + 3) = v10;
  }
}

void GTMTLSMBuilder_ioFileHandle(uint64_t a1, uint64_t a2)
{
  if (GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    ++*(a1 + 196);
    v19 = 0u;
    *&v20 = 0;
    v22 = 0;
    v21 = 0u;
    LODWORD(v19) = 53;
    *(&v20 + 1) = -1;
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = atomic_load((v4 + 4));
        v7 = v5 + (v6 >> 6) - 1;
        if (v7 > 0)
        {
          break;
        }

        v4 = *(v4 + 40);
        v5 = v7;
        if (!v4)
        {
          v5 = v7;
LABEL_9:
          v8 = v5 | (v7 << 32);
          goto LABEL_10;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    v8 = 0;
LABEL_10:
    while (v4)
    {
      v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
      if ((*(v9 + 15) & 8) == 0)
      {
        break;
      }

      v10 = *v9;
      if (*v9 >= *(a1 + 16) + *(a1 + 8))
      {
        break;
      }

      if (*(v9 + 8) == -15328)
      {
        v14 = apr_palloc(*(a1 + 24), 0x38uLL);
        v17 = v20;
        *v14 = v19;
        v14[1] = v17;
        v14[2] = v21;
        *(v14 + 6) = v22;
        v18 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
        if (v18)
        {
          v18 = *(v18 + 32);
        }

        *(v14 + 4) = v18;
        apr_hash_set(*(a1 + 32), v14 + 8, 8, v14);
        goto LABEL_22;
      }

      GTMTLSMIOHandle_processTraceFuncWithMap(&v19, *(a1 + 40), v9);
      v11 = atomic_load((v4 + 4));
      v12 = v8 + (v11 >> 6);
      v13 = (HIDWORD(v8) + 1);
      v8 = (v13 << 32) | v8;
      if (v13 == v12 - 1)
      {
        v8 = (v13 << 32) | v13;
        v4 = *(v4 + 40);
      }
    }

    v14 = apr_palloc(*(a1 + 24), 0x38uLL);
    v15 = v20;
    *v14 = v19;
    v14[1] = v15;
    v14[2] = v21;
    *(v14 + 6) = v22;
    v16 = *find_entry(*(a1 + 32), v14 + 8, 8uLL, 0);
    if (v16)
    {
      v16 = *(v16 + 32);
    }

    *(v14 + 4) = v16;
    apr_hash_set(*(a1 + 32), v14 + 8, 8, v14);
    v10 = -1;
LABEL_22:
    *(v14 + 3) = v10;
  }
}

void GTMTLSMBuilder_textureViewPool(uint64_t a1, uint64_t a2)
{
  if (!GTMTLSMBuilder_streamIntersectionRange(*(a1 + 8), *(a1 + 16), a2))
  {
    return;
  }

  ++*(a1 + 92);
  v31 = 0u;
  *&v32 = 0;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  LODWORD(v31) = 100;
  *(&v32 + 1) = -1;
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_9:
        v8 = v5 | (v7 << 32);
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:
  while (v4)
  {
    v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
    if ((*(v9 + 15) & 8) == 0)
    {
      break;
    }

    v10 = *v9;
    if (*v9 >= *(a1 + 16) + *(a1 + 8))
    {
      break;
    }

    v11 = *(v9 + 8);
    if (v11 > -14856)
    {
      if (v11 != -14802 && v11 != -14855)
      {
        goto LABEL_25;
      }

LABEL_22:
      v13 = apr_palloc(*(a1 + 24), 0x68uLL);
      v14 = v36;
      *(v13 + 4) = v35;
      *(v13 + 5) = v14;
      v13[12] = v37;
      v15 = v32;
      *v13 = v31;
      *(v13 + 1) = v15;
      v16 = v34;
      *(v13 + 2) = v33;
      *(v13 + 3) = v16;
      v17 = *find_entry(*(a1 + 32), v13 + 8, 8uLL, 0);
      if (v17)
      {
        v17 = *(v17 + 32);
      }

      v13[4] = v17;
      apr_hash_set(*(a1 + 32), v13 + 1, 8, v13);
      v13[3] = v10;
      goto LABEL_25;
    }

    if ((v11 + 14970) < 2)
    {
      goto LABEL_22;
    }

    if (v11 == -14972)
    {
      v25 = apr_palloc(*(a1 + 24), 0x68uLL);
      v26 = v36;
      v25[4] = v35;
      v25[5] = v26;
      *(v25 + 12) = v37;
      v27 = v32;
      *v25 = v31;
      v25[1] = v27;
      v28 = v34;
      v25[2] = v33;
      v25[3] = v28;
      entry = find_entry(*(a1 + 32), v25 + 8, 8uLL, 0);
      v30 = *entry;
      if (*entry)
      {
        v30 = *(v30 + 32);
      }

      *(v25 + 4) = v30;
      apr_hash_set(*(a1 + 32), v25 + 8, 8, v25);
      goto LABEL_30;
    }

LABEL_25:
    GTMTLSMTextureViewPool_processTraceFuncWithMap(&v31, *(a1 + 40), (v4 + 64 + ((HIDWORD(v8) - v8) << 6)));
    v18 = atomic_load((v4 + 4));
    v19 = v8 + (v18 >> 6);
    v20 = (HIDWORD(v8) + 1);
    v8 = (v20 << 32) | v8;
    if (v20 == v19 - 1)
    {
      v8 = (v20 << 32) | v20;
      v4 = *(v4 + 40);
    }
  }

  v25 = apr_palloc(*(a1 + 24), 0x68uLL);
  v21 = v36;
  v25[4] = v35;
  v25[5] = v21;
  *(v25 + 12) = v37;
  v22 = v32;
  *v25 = v31;
  v25[1] = v22;
  v23 = v34;
  v25[2] = v33;
  v25[3] = v23;
  v24 = *find_entry(*(a1 + 32), v25 + 8, 8uLL, 0);
  if (v24)
  {
    v24 = *(v24 + 32);
  }

  *(v25 + 4) = v24;
  apr_hash_set(*(a1 + 32), v25 + 8, 8, v25);
  v10 = -1;
LABEL_30:
  *(v25 + 3) = v10;
}

uint64_t GTMTLSMBuilder_compareStreams(void **a1, void **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *v2;
  }

  v3 = *a2;
  if (*a2)
  {
    v3 = *v3;
  }

  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t *GTMTLSMContext_buildDeviceMirrorWithIgnoreFlags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, apr_pool_t *pool, int a8, int *a9)
{
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  v75[0] = a4;
  v75[1] = a5;
  v75[2] = a6;
  v75[3] = pool;
  v76 = apr_hash_make(pool);
  v77 = a2;
  v14 = apr_array_make(pool, *(a1 + 48), 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a1;
  *(a1 + 40) = 0;
  v15 = apr_hash_next((a1 + 16));
  if (v15)
  {
    v16 = v15;
    do
    {
      v17 = *(*(v16 + 1) + 32);
      *apr_array_push(v14) = v17;
      v16 = apr_hash_next(v16);
    }

    while (v16);
  }

  qsort(v14->elts, v14->nelts, v14->elt_size, GTMTLSMBuilder_compareStreams);
  v74 = 0;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  __key = &v70;
  v70 = a4;
  v18 = bsearch(&__key, v14->elts, v14->nelts, v14->elt_size, GTMTLSMBuilder_compareStreams);
  elts = v14->elts;
  nelts = v14->nelts;
  v21 = &elts[8 * nelts];
  if (v18)
  {
    v22 = *(*(*v18 + 32) + 72);
    if (a9 && v22 != -10239)
    {
      LODWORD(v80) = *a9;
      HIDWORD(v80) = 500;
      v81 = "func->fenum == kDYFEMTLDevice_deviceReference";
      v82 = 0u;
      v83 = 0u;
      GTError_addError(a9, &v80);
      return 0;
    }

    if (v22 != -10239)
    {
      return 0;
    }

    v65 = a8;
    v23 = v18 + 1;
    GTMTLSMBuilder_device(v75, *v18);
  }

  else
  {
    v65 = a8;
    v23 = &elts[8 * nelts];
  }

  newpool = 0;
  apr_pool_create_ex(&newpool, pool, 0, 0);
  if (*(a3 + 12) <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = *(a3 + 12);
  }

  p = newpool;
  v25 = apr_array_make(newpool, v24, 64);
  v26 = *(a3 + 12);
  if (v26 >= 1)
  {
    v27 = 0;
    for (i = 0; i < v26; ++i)
    {
      v29 = (*(a3 + 24) + v27);
      if ((*(v29 + 2) | 4) == 0xFFFFD856)
      {
        v30 = apr_array_push(v25);
        v31 = *v29;
        v32 = v29[1];
        v33 = v29[3];
        v30[2] = v29[2];
        v30[3] = v33;
        *v30 = v31;
        v30[1] = v32;
        v26 = *(a3 + 12);
      }

      v27 += 64;
    }
  }

  for (; v23 != v21; ++v23)
  {
    v34 = *v23;
    if (*v23)
    {
      v35 = *(v34 + 32);
      if (v35)
      {
        v36 = *(v35 + 79);
        if ((v36 & 8) != 0 && (v36 & v65) == 0)
        {
          v37 = *(v35 + 72);
          if (v37 == -7163)
          {
            v38 = 32;
            v39 = GTTraceFunc_argumentBytesWithPool((v35 + 64), *(v35 + 77), *(v34 + 24)) + 8;
          }

          else
          {
            v40 = GTFenum_getConstructorType(*(v35 + 72)) - 2;
            if (v40 > 0x6C)
            {
              v38 = -1;
            }

            else
            {
              v38 = byte_29BC8C[v40];
            }

            v41 = GTTraceFunc_argumentBytesWithPool((v35 + 64), *(v35 + 77), *(v34 + 24));
            v39 = v41 + 16;
            if (v37 == -15914)
            {
              v42 = v41 + 16;
            }

            else
            {
              v42 = v41;
            }

            if (v37 != -15913)
            {
              v39 = v42;
            }
          }

          v43 = *v39;
          v80 = v43;
          if (v38 == 31 || v43 == a4 || (entry = find_entry(v76, &v80, 8uLL, 0), *entry) && *(*entry + 32))
          {
            switch(v38)
            {
              case 0:
                GTMTLSMBuilder_buffer(v75, v34);
                break;
              case 1:
                GTMTLSMBuilder_tensor(v75, v34);
                break;
              case 2:
                GTMTLSMBuilder_texture(v75, v34);
                break;
              case 3:
                GTMTLSMBuilder_samplerState(v75, v34);
                break;
              case 4:
                GTMTLSMBuilder_renderPipelineState(v75, v34);
                break;
              case 5:
                GTMTLSMBuilder_computePipelineState(v75, v34);
                break;
              case 6:
                GTMTLSMBuilder_indirectCommandBuffer(v75, v34);
                break;
              case 7:
                GTMTLSMBuilder_visibleFunctionTable(v75, v34);
                break;
              case 8:
                GTMTLSMBuilder_intersectionFunctionTable(v75, v34);
                break;
              case 9:
                GTMTLSMBuilder_accelerationStructure(v75, v34, v25);
                break;
              case 10:
                GTMTLSMBuilder_depthStencilState(v75, v34);
                break;
              case 11:
                GTMTLSMBuilder_textureViewPool(v75, v34);
                break;
              case 12:
                GTMTLSMBuilder_heap(v75, v34);
                break;
              case 13:
                GTMTLSMBuilder_library(v75, v34);
                break;
              case 14:
                GTMTLSMBuilder_dynamicLibrary(v75, v34);
                break;
              case 15:
                GTMTLSMBuilder_pipelineLibrary(v75, v34);
                break;
              case 16:
                GTMTLSMBuilder_fence(v75, v34);
                break;
              case 17:
                GTMTLSMBuilder_event(v75, v34);
                break;
              case 18:
                GTMTLSMBuilder_sharedEvent(v75, v34);
                break;
              case 19:
                GTMTLSMBuilder_lateEvalEvent(v75, v34);
                break;
              case 20:
                GTMTLSMBuilder_motionEstimationPipeline(v75, v34);
                break;
              case 21:
                GTMTLSMBuilder_counterSampleBuffer(v75, v34);
                break;
              case 22:
                GTMTLSMBuilder_indirectRenderCommand(v75, v34);
                break;
              case 23:
                GTMTLSMBuilder_indirectComputeCommand(v75, v34);
                break;
              case 24:
                GTMTLSMBuilder_commandQueue(v75, v34);
                break;
              case 25:
                GTMTLSMBuilder_ioCommandQueue(v75, v34);
                break;
              case 26:
                GTMTLSMBuilder_rasterizationRateMap(v75, v34);
                break;
              case 27:
                GTMTLSMBuilder_resourceGroup(v75, v34);
                break;
              case 28:
                GTMTLSMBuilder_filter(v75, v34);
                break;
              case 29:
                GTMTLSMBuilder_function(v75, v34);
                break;
              case 31:
                GTMTLSMBuilder_drawable(v75, v34);
                break;
              case 32:
                GTMTLSMBuilder_layer(v75, v34);
                break;
              case 33:
                GTMTLSMBuilder_functionHandle(v75, v34);
                break;
              case 34:
                GTMTLSMBuilder_spatialScaler(v75, v34);
                break;
              case 35:
                GTMTLSMBuilder_temporalScaler(v75, v34);
                break;
              case 36:
                GTMTLSMBuilder_residencySet(v75, v34);
                break;
              case 37:
                GTMTLSMBuilder_ioFileHandle(v75, v34);
                break;
              case 38:
                GTMTL4SMBuilder_commandQueue(v75, v34);
                break;
              case 39:
                GTMTL4SMBuilder_commandBuffer(v75, v34);
                break;
              case 40:
                GTMTL4SMBuilder_commandAllocator(v75, v34);
                break;
              case 41:
                GTMTL4SMBuilder_argumentTable(v75, v34);
                break;
              case 42:
                GTMTLSMBuilder_frameInterpolator(v75, v34);
                break;
              case 43:
                GTMTLSMBuilder_temporalDenoisedScaler(v75, v34);
                break;
              case 44:
                GTMTL4SMBuilder_compiler(v75, v34);
                break;
              case 45:
                GTMTL4SMBuilder_machineLearningPipelineState(v75, v34);
                break;
              case 46:
                GTMTLSMBuilder_mtl4SpatialScaler(v75, v34);
                break;
              case 47:
                GTMTLSMBuilder_mtl4TemporalScaler(v75, v34);
                break;
              case 48:
                GTMTLSMBuilder_mtl4FrameInterpolator(v75, v34);
                break;
              case 49:
                GTMTLSMBuilder_mtl4TemporalDenoisedScaler(v75, v34);
                break;
              default:
                continue;
            }
          }
        }
      }
    }
  }

  v45 = v78;
  v46 = apr_palloc(pool, 0x198uLL);
  v47 = v46;
  if (v46)
  {
    *(v46 + 8) = 0u;
    *(v46 + 376) = 0u;
    *(v46 + 392) = 0u;
    *(v46 + 344) = 0u;
    *(v46 + 360) = 0u;
    *(v46 + 312) = 0u;
    *(v46 + 328) = 0u;
    *(v46 + 280) = 0u;
    *(v46 + 296) = 0u;
    *(v46 + 248) = 0u;
    *(v46 + 264) = 0u;
    *(v46 + 216) = 0u;
    *(v46 + 232) = 0u;
    *(v46 + 184) = 0u;
    *(v46 + 200) = 0u;
    *(v46 + 152) = 0u;
    *(v46 + 168) = 0u;
    *(v46 + 120) = 0u;
    *(v46 + 136) = 0u;
    *(v46 + 88) = 0u;
    *(v46 + 104) = 0u;
    *(v46 + 56) = 0u;
    *(v46 + 72) = 0u;
    *(v46 + 24) = 0u;
    *(v46 + 40) = 0u;
  }

  *v46 = v76;
  for (j = 1; j != 51; ++j)
  {
    v49 = *v45++;
    v47[j] = apr_array_make(pool, v49, 8);
  }

  v50 = *v47;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v50;
  *(v50 + 40) = 0;
  v51 = apr_hash_next((v50 + 16));
  if (v51)
  {
    v52 = v51;
    do
    {
      v53 = *(*(v52 + 1) + 32);
      v54 = *v53 - 2;
      if (v54 <= 0x6C)
      {
        v55 = byte_29BC8C[v54];
        if (v55 != -1)
        {
          *apr_array_push(v47[v55 + 1]) = v53;
        }
      }

      v52 = apr_hash_next(v52);
    }

    while (v52);
  }

  v56 = v47[32];
  v57 = *(v56 + 12);
  if (v57 > 0)
  {
    v58 = v57 - 1;
    do
    {
      v59 = *(*(v56 + 24) + 8 * v58);
      if (a9 && !v59[5])
      {
        LODWORD(v80) = *a9;
        HIDWORD(v80) = 500;
        v81 = "smDrawable->layer";
        v82 = 0u;
        v83 = 0u;
        GTError_addError(a9, &v80);
      }

      v80 = v59[6];
      v60 = *find_entry(*v47, &v80, 8uLL, 0);
      if (!v60 || !*(v60 + 32))
      {
        apr_hash_set(*v47, v59 + 1, 8, 0);
        v61 = *(v56 + 12);
        *(*(v56 + 24) + 8 * v58) = *(*(v56 + 24) + 8 * v61 - 8);
        if (v61)
        {
          *(v56 + 12) = v61 - 1;
        }
      }

      v62 = v58-- + 1;
    }

    while (v62 > 1);
  }

  for (k = 1; k != 51; ++k)
  {
    qsort(*(v47[k] + 24), *(v47[k] + 12), *(v47[k] + 8), GTMTLSMObject_compare);
  }

  apr_pool_destroy(p);
  return v47;
}

char *GTMTLSMIOCommandBuffer_processTraceFunc(char *result, uint64_t *a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a2 + 2);
  switch(v5)
  {
    case -15343:
      *(result + 3) = *a2;
      break;
    case -15313:
      v9 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      result = GTTraceFunc_argumentBytesWithMap(a2, v9[8], a3);
      *(v4 + 7) = result;
      break;
    case -15333:
      result = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      v7 = *(result + 1);
      if (v7)
      {
        *v4 = 51;
        v8 = *a2;
        *(v4 + 1) = v7;
        *(v4 + 2) = v8;
        *(v4 + 3) = -1;
        v4[73] = 1;
        *(v4 + 6) = *result;
      }

      break;
  }

  return result;
}

char *GTMTLSMCommandBuffer_processTraceFunc(char *result, uint64_t *a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a2 + 2);
  if (v6 > -16203)
  {
    if (v6 <= -15702)
    {
      v9 = v6 == -16202;
      v10 = -15908;
    }

    else
    {
      if (v6 == -15701)
      {
        result = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *v5 = 0u;
        *(v5 + 1) = 0u;
        *(v5 + 2) = 0u;
        *(v5 + 3) = 0u;
        *(v5 + 4) = 0u;
        v13 = *(result + 1);
        if (v13)
        {
          *v5 = 25;
          v14 = *a2;
          *(v5 + 1) = v13;
          *(v5 + 2) = v14;
          *(v5 + 3) = -1;
          *(v5 + 6) = *result;
          result = GTTraceFunc_argumentBytesWithMap(a2, result[16], a3);
          *(v5 + 8) = result;
          if (result)
          {
            v5[73] = result[9];
          }
        }

        return result;
      }

      v9 = v6 == -15318;
      v10 = -15316;
    }

    if (!v9 && v6 != v10)
    {
      return result;
    }

LABEL_20:
    *(result + 3) = *a2;
    return result;
  }

  if (v6 <= -16362)
  {
    if (v6 == -16365)
    {
      v12 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      result = GTTraceFunc_argumentBytesWithMap(a2, v12[8], a3);
      *(v5 + 7) = result;
    }

    else if (v6 == -16364)
    {
      result = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v5[72] = *(result + 2);
    }

    return result;
  }

  switch(v6)
  {
    case -16361:
      goto LABEL_20;
    case -16343:
      result = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *(v5 + 4) = 0u;
      v15 = *(result + 1);
      if (v15)
      {
        *v5 = 25;
        v16 = *a2;
        *(v5 + 1) = v15;
        *(v5 + 2) = v16;
        *(v5 + 3) = -1;
        v5[73] = 1;
        goto LABEL_28;
      }

      break;
    case -16342:
      result = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *(v5 + 4) = 0u;
      v7 = *(result + 1);
      if (v7)
      {
        *v5 = 25;
        v8 = *a2;
        *(v5 + 1) = v7;
        *(v5 + 2) = v8;
        *(v5 + 3) = -1;
LABEL_28:
        *(v5 + 6) = *result;
      }

      break;
  }

  return result;
}

void GTMTLSMCommandEncoder_processTraceFunc(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1 + 8616;
  v7 = *(a2 + 2);
  if (v7 > -16078)
  {
    if (v7 > -15460)
    {
      if (v7 <= -15365)
      {
        switch(v7)
        {
          case -15459:
          case -15458:
          case -15456:
            v11 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v12 = *(v11 + 2);
            v13 = 1 << v12;
            v14 = a1 + 8 * (v12 >> 6);
            *(v14 + 1976) &= ~v13;
            *(a1 + 8 * *(v11 + 2) + 1984) = *(v11 + 1);
            return;
          case -15457:
            v472 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v473 = v472;
            v474 = *(v472 + 1);
            v475 = *(v472 + 2) + v474;
            if (v475 >= 0x40)
            {
              v475 = 64;
            }

            v476 = v475 - v474;
            if (v475 < v474)
            {
              v476 = 0;
            }

            v477 = ~(-1 << v476);
            if (v474 <= v475)
            {
              v478 = v474 & 0x3F;
            }

            else
            {
              v478 = 0;
            }

            *(a1 + 1976) &= ~(v477 << v478);
            v479 = *(v472 + 1);
            v480 = GTTraceFunc_argumentBytesWithMap(a2, v472[24], a3);
            if (*(v473 + 2) >= 1)
            {
              v481 = (a1 + 8 * v479 + 1984);
              v482 = *(v473 + 2) & 0x7FFFFFFFLL;
              do
              {
                v483 = *v480;
                v480 += 8;
                *v481++ = v483;
                --v482;
              }

              while (v482);
            }

            return;
          case -15455:
            v460 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v461 = v460;
            v462 = *(v460 + 1);
            v463 = *(v460 + 2) + v462;
            if (v463 >= 0x40)
            {
              v463 = 64;
            }

            v464 = v463 - v462;
            if (v463 < v462)
            {
              v464 = 0;
            }

            v465 = ~(-1 << v464);
            if (v462 <= v463)
            {
              v466 = v462 & 0x3F;
            }

            else
            {
              v466 = 0;
            }

            *(a1 + 1976) &= ~(v465 << v466);
            v467 = *(v460 + 1);
            v468 = GTTraceFunc_argumentBytesWithMap(a2, v460[24], a3);
            if (*(v461 + 2) >= 1)
            {
              v469 = (a1 + 8 * v467 + 1984);
              v470 = *(v461 + 2) & 0x7FFFFFFFLL;
              do
              {
                v471 = *v468;
                v468 += 8;
                *v469++ = v471;
                --v470;
              }

              while (v470);
            }

            return;
          case -15454:
          case -15453:
          case -15451:
            v89 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v90 = *(v89 + 2);
            v91 = 1 << v90;
            v92 = a1 + 8 * (v90 >> 6);
            *(v92 + 6944) &= ~v91;
            *(a1 + 8 * *(v89 + 2) + 6952) = *(v89 + 1);
            return;
          case -15452:
            v448 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v449 = v448;
            v450 = *(v448 + 1);
            v451 = *(v448 + 2) + v450;
            if (v451 >= 0x40)
            {
              v451 = 64;
            }

            v452 = v451 - v450;
            if (v451 < v450)
            {
              v452 = 0;
            }

            v453 = ~(-1 << v452);
            if (v450 <= v451)
            {
              v454 = v450 & 0x3F;
            }

            else
            {
              v454 = 0;
            }

            *(a1 + 6944) &= ~(v453 << v454);
            v455 = *(v448 + 1);
            v456 = GTTraceFunc_argumentBytesWithMap(a2, v448[24], a3);
            if (*(v449 + 2) >= 1)
            {
              v457 = (a1 + 8 * v455 + 6952);
              v458 = *(v449 + 2) & 0x7FFFFFFFLL;
              do
              {
                v459 = *v456;
                v456 += 8;
                *v457++ = v459;
                --v458;
              }

              while (v458);
            }

            return;
          case -15450:
            v434 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v435 = v434;
            v436 = *(v434 + 1);
            v437 = *(v434 + 2) + v436;
            if (v437 >= 0x40)
            {
              v437 = 64;
            }

            v438 = v437 - v436;
            if (v437 < v436)
            {
              v438 = 0;
            }

            v439 = ~(-1 << v438);
            if (v436 <= v437)
            {
              v440 = v436 & 0x3F;
            }

            else
            {
              v440 = 0;
            }

            *(a1 + 6944) &= ~(v439 << v440);
            v441 = *(v434 + 1);
            v442 = GTTraceFunc_argumentBytesWithMap(a2, v434[24], a3);
            if (*(v435 + 2) >= 1)
            {
              v443 = (a1 + 8 * v441 + 6952);
              v444 = *(v435 + 2) & 0x7FFFFFFFLL;
              do
              {
                v445 = *v442;
                v442 += 8;
                *v443++ = v445;
                --v444;
              }

              while (v444);
            }

            return;
          case -15449:
          case -15448:
          case -15446:
            v82 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v83 = *(v82 + 2);
            v84 = 1 << v83;
            v85 = a1 + 8 * (v83 >> 6);
            *(v85 + 64) &= ~v84;
            *(a1 + 8 * *(v82 + 2) + 80) = *(v82 + 1);
            v86 = *(v82 + 2);
            v87 = 1 << v86;
            v88 = a1 + 8 * (v86 >> 6);
            *(v88 + 72) &= ~v87;
            return;
          case -15447:
            v416 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v417 = v416;
            v418 = *(v416 + 1);
            v419 = *(v416 + 2) + v418;
            if (v419 >= 0x40)
            {
              v419 = 64;
            }

            v420 = v419 - v418;
            if (v419 < v418)
            {
              v420 = 0;
            }

            v421 = ~(-1 << v420);
            if (v418 <= v419)
            {
              v422 = v418 & 0x3F;
            }

            else
            {
              v422 = 0;
            }

            v423 = *(a1 + 72);
            *(a1 + 64) &= ~(v421 << v422);
            v424 = *(v416 + 1);
            v425 = *(v416 + 2) + v424;
            if (v425 >= 0x40)
            {
              v425 = 64;
            }

            v426 = v425 - v424;
            if (v425 < v424)
            {
              v426 = 0;
            }

            v427 = ~(-1 << v426);
            if (v424 <= v425)
            {
              v428 = v424 & 0x3F;
            }

            else
            {
              v428 = 0;
            }

            *(a1 + 72) = v423 & ~(v427 << v428);
            v429 = *(v416 + 1);
            v430 = GTTraceFunc_argumentBytesWithMap(a2, v416[24], a3);
            if (*(v417 + 2) >= 1)
            {
              v431 = (a1 + 8 * v429 + 80);
              v432 = *(v417 + 2) & 0x7FFFFFFFLL;
              do
              {
                v433 = *v430;
                v430 += 8;
                *v431++ = v433;
                --v432;
              }

              while (v432);
            }

            return;
          case -15445:
            v392 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v393 = v392;
            v394 = *(v392 + 1);
            v395 = *(v392 + 2) + v394;
            if (v395 >= 0x40)
            {
              v395 = 64;
            }

            v396 = v395 - v394;
            if (v395 < v394)
            {
              v396 = 0;
            }

            v397 = ~(-1 << v396);
            if (v394 <= v395)
            {
              v398 = v394 & 0x3F;
            }

            else
            {
              v398 = 0;
            }

            v399 = *(a1 + 72);
            *(a1 + 64) &= ~(v397 << v398);
            v400 = *(v392 + 1);
            v401 = *(v392 + 2) + v400;
            if (v401 >= 0x40)
            {
              v401 = 64;
            }

            v402 = v401 - v400;
            if (v401 < v400)
            {
              v402 = 0;
            }

            v403 = ~(-1 << v402);
            if (v400 <= v401)
            {
              v404 = v400 & 0x3F;
            }

            else
            {
              v404 = 0;
            }

            *(a1 + 72) = v399 & ~(v403 << v404);
            v405 = *(v392 + 1);
            v406 = GTTraceFunc_argumentBytesWithMap(a2, v392[24], a3);
            if (*(v393 + 2) >= 1)
            {
              v407 = (a1 + 8 * v405 + 80);
              v408 = *(v393 + 2) & 0x7FFFFFFFLL;
              do
              {
                v409 = *v406;
                v406 += 8;
                *v407++ = v409;
                --v408;
              }

              while (v408);
            }

            return;
          case -15401:
            v386 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v387 = *(v386 + 3);
            v388 = 1 << v387;
            v389 = a1 + 8 * (v387 >> 6);
            *(v389 + 5288) &= ~v388;
            *(a1 + 8 * *(v386 + 3) + 5296) = *(v386 + 1);
            v390 = *(v386 + 2);
            v391 = *(v386 + 3);
            goto LABEL_464;
          case -15400:
            v497 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v390 = *(v497 + 1);
            v391 = *(v497 + 2);
            goto LABEL_464;
          case -15399:
            v485 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v94 = v485;
            v486 = *(v485 + 1);
            v487 = *(v485 + 2) + v486;
            if (v487 >= 0x40)
            {
              v487 = 64;
            }

            v488 = v487 - v486;
            if (v487 < v486)
            {
              v488 = 0;
            }

            v489 = ~(-1 << v488);
            if (v486 <= v487)
            {
              v490 = v486 & 0x3F;
            }

            else
            {
              v490 = 0;
            }

            *(a1 + 5288) &= ~(v489 << v490);
            v491 = *(v485 + 1);
            v492 = GTTraceFunc_argumentBytesWithMap(a2, v485[24], a3);
            if (*(v94 + 2) >= 1)
            {
              v493 = (a1 + 8 * v491 + 5296);
              v494 = *(v94 + 2) & 0x7FFFFFFFLL;
              do
              {
                v495 = *v492;
                v492 += 8;
                *v493++ = v495;
                --v494;
              }

              while (v494);
            }

            v69 = a1 + 8 * *(v94 + 1);
            v70 = 5544;
            goto LABEL_452;
          case -15398:
            v511 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v512 = *(v511 + 2);
            v513 = 1 << v512;
            v514 = a1 + 8 * (v512 >> 6);
            *(v514 + 5288) |= v513;
            *(a1 + 8 * *(v511 + 2) + 5296) = GTTraceFunc_argumentBytesWithMap(a2, v511[24], a3);
            v390 = *(v511 + 1);
            v391 = *(v511 + 2);
LABEL_464:
            *(a1 + 8 * v391 + 5544) = v390;
            return;
          case -15397:
            v484 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v484 + 2) + 6816) = *(v484 + 1);
            return;
          case -15396:
            v521 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v521 + 2) + 6816) = *(v521 + 1);
            *(a1 + 4 * *(v521 + 2) + 10492) = *(v521 + 6);
            *(a1 + 4 * *(v521 + 2) + 10556) = *(v521 + 7);
            return;
          case -15395:
            v61 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v504 = *(v61 + 1);
            v505 = GTTraceFunc_argumentBytesWithMap(a2, v61[24], a3);
            if (*(v61 + 2) >= 1)
            {
              v506 = (a1 + 8 * v504 + 6816);
              v507 = *(v61 + 2) & 0x7FFFFFFFLL;
              do
              {
                v508 = *v505;
                v505 += 8;
                *v506++ = v508;
                --v507;
              }

              while (v507);
            }

            v509 = a1 + 4 * *(v61 + 1);
            v510 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
            memcpy((v509 + 10492), v510, 4 * *(v61 + 2));
            v69 = a1 + 4 * *(v61 + 1);
            v70 = 10556;
            goto LABEL_482;
          case -15394:
            v526 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v527 = *(v526 + 1);
            v528 = GTTraceFunc_argumentBytesWithMap(a2, v526[24], a3);
            if (*(v526 + 2) >= 1)
            {
              v529 = (a1 + 8 * v527 + 6816);
              v530 = *(v526 + 2) & 0x7FFFFFFFLL;
              do
              {
                v531 = *v528;
                v528 += 8;
                *v529++ = v531;
                --v530;
              }

              while (v530);
            }

            return;
          case -15393:
            v447 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v447 + 2) + 5792) = *(v447 + 1);
            return;
          case -15392:
            v498 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v499 = *(v498 + 1);
            v500 = GTTraceFunc_argumentBytesWithMap(a2, v498[24], a3);
            if (*(v498 + 2) >= 1)
            {
              v501 = (a1 + 8 * v499 + 5792);
              v502 = *(v498 + 2) & 0x7FFFFFFFLL;
              do
              {
                v503 = *v500;
                v500 += 8;
                *v501++ = v503;
                --v502;
              }

              while (v502);
            }

            return;
          case -15391:
            v522 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v523 = *(v522 + 3);
            v524 = 1 << v523;
            v525 = a1 + 8 * (v523 >> 6);
            *(v525 + 3632) &= ~v524;
            *(a1 + 8 * *(v522 + 3) + 3640) = *(v522 + 1);
            v414 = *(v522 + 2);
            v415 = *(v522 + 3);
            goto LABEL_477;
          case -15390:
            v533 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v414 = *(v533 + 1);
            v415 = *(v533 + 2);
            goto LABEL_477;
          case -15389:
            v373 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v374 = v373;
            v375 = *(v373 + 1);
            v376 = *(v373 + 2) + v375;
            if (v376 >= 0x40)
            {
              v376 = 64;
            }

            v377 = v376 - v375;
            if (v376 < v375)
            {
              v377 = 0;
            }

            v378 = ~(-1 << v377);
            if (v375 <= v376)
            {
              v379 = v375 & 0x3F;
            }

            else
            {
              v379 = 0;
            }

            *(a1 + 3632) &= ~(v378 << v379);
            v380 = *(v373 + 1);
            v381 = GTTraceFunc_argumentBytesWithMap(a2, v373[24], a3);
            if (*(v374 + 2) >= 1)
            {
              v382 = (a1 + 8 * v380 + 3640);
              v383 = *(v374 + 2) & 0x7FFFFFFFLL;
              do
              {
                v384 = *v381;
                v381 += 8;
                *v382++ = v384;
                --v383;
              }

              while (v383);
            }

            v385 = a1 + 8 * *(v374 + 1);
            v35 = GTTraceFunc_argumentBytesWithMap(a2, v374[25], a3);
            v37 = 8 * *(v374 + 2);
            v59 = (v385 + 3888);
            goto LABEL_556;
          case -15388:
            v410 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v411 = *(v410 + 2);
            v412 = 1 << v411;
            v413 = a1 + 8 * (v411 >> 6);
            *(v413 + 3632) |= v412;
            *(a1 + 8 * *(v410 + 2) + 3640) = GTTraceFunc_argumentBytesWithMap(a2, v410[24], a3);
            v414 = *(v410 + 1);
            v415 = *(v410 + 2);
LABEL_477:
            *(a1 + 8 * v415 + 3888) = v414;
            break;
          case -15387:
            v532 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v532 + 2) + 5160) = *(v532 + 1);
            break;
          case -15386:
            v496 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v496 + 2) + 5160) = *(v496 + 1);
            *(a1 + 4 * *(v496 + 2) + 10364) = *(v496 + 6);
            *(a1 + 4 * *(v496 + 2) + 10428) = *(v496 + 7);
            break;
          case -15385:
            v61 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v534 = *(v61 + 1);
            v535 = GTTraceFunc_argumentBytesWithMap(a2, v61[24], a3);
            if (*(v61 + 2) >= 1)
            {
              v536 = (a1 + 8 * v534 + 5160);
              v537 = *(v61 + 2) & 0x7FFFFFFFLL;
              do
              {
                v538 = *v535;
                v535 += 8;
                *v536++ = v538;
                --v537;
              }

              while (v537);
            }

            v539 = a1 + 4 * *(v61 + 1);
            v540 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
            memcpy((v539 + 10364), v540, 4 * *(v61 + 2));
            v69 = a1 + 4 * *(v61 + 1);
            v70 = 10428;
            goto LABEL_482;
          case -15384:
            v515 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v516 = *(v515 + 1);
            v517 = GTTraceFunc_argumentBytesWithMap(a2, v515[24], a3);
            if (*(v515 + 2) >= 1)
            {
              v518 = (a1 + 8 * v516 + 5160);
              v519 = *(v515 + 2) & 0x7FFFFFFFLL;
              do
              {
                v520 = *v517;
                v517 += 8;
                *v518++ = v520;
                --v519;
              }

              while (v519);
            }

            break;
          case -15383:
            v547 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v547 + 2) + 4136) = *(v547 + 1);
            break;
          case -15382:
            v541 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v542 = *(v541 + 1);
            v543 = GTTraceFunc_argumentBytesWithMap(a2, v541[24], a3);
            if (*(v541 + 2) >= 1)
            {
              v544 = (a1 + 8 * v542 + 4136);
              v545 = *(v541 + 2) & 0x7FFFFFFFLL;
              do
              {
                v546 = *v543;
                v543 += 8;
                *v544++ = v546;
                --v545;
              }

              while (v545);
            }

            break;
          case -15381:
            v446 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 4 * *(v446 + 2) + 11016) = *(v446 + 1);
            break;
          default:
            return;
        }

        return;
      }

      if (v7 > -15276)
      {
        if (v7 > -15273)
        {
          if (v7 != -15272)
          {
            if (v7 == -14914)
            {
              v596 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              *(a1 + 10076) = *(v596 + 2);
              *(a1 + 10080) = *(v596 + 3);
            }

            else if (v7 == -14849)
            {
              *(a1 + 10056) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
            }

            return;
          }

          v604 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          v605 = *(v604 + 3);
          v606 = 1 << v605;
          v607 = a1 + 8 * (v605 >> 6);
          *(v607 + 64) |= v606;
          *(a1 + 8 * *(v604 + 3) + 80) = GTTraceFunc_argumentBytesWithMap(a2, v604[32], a3);
          v608 = *(v604 + 3);
          v609 = 1 << v608;
          v610 = a1 + 8 * (v608 >> 6);
          *(v610 + 72) |= v609;
          *(a1 + 8 * *(v604 + 3) + 328) = *(v604 + 1);
          v594 = *(v604 + 2);
          v595 = *(v604 + 3);
        }

        else if (v7 == -15275)
        {
          v597 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          v598 = *(v597 + 4);
          v599 = 1 << v598;
          v600 = a1 + 8 * (v598 >> 6);
          *(v600 + 64) &= ~v599;
          *(a1 + 8 * *(v597 + 4) + 80) = *(v597 + 1);
          v601 = *(v597 + 4);
          v602 = 1 << v601;
          v603 = a1 + 8 * (v601 >> 6);
          *(v603 + 72) |= v602;
          *(a1 + 8 * *(v597 + 4) + 328) = *(v597 + 2);
          v594 = *(v597 + 3);
          v595 = *(v597 + 4);
        }

        else
        {
          if (v7 != -15274)
          {
            v38 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v39 = v38;
            v40 = *(v38 + 1);
            v41 = *(v38 + 2) + v40;
            if (v41 >= 0x40)
            {
              v41 = 64;
            }

            v42 = v41 - v40;
            if (v41 < v40)
            {
              v42 = 0;
            }

            v43 = ~(-1 << v42);
            if (v40 <= v41)
            {
              v44 = v40 & 0x3F;
            }

            else
            {
              v44 = 0;
            }

            v45 = *(a1 + 72);
            *(a1 + 64) &= ~(v43 << v44);
            v46 = *(v38 + 1);
            v47 = *(v38 + 2) + v46;
            if (v47 >= 0x40)
            {
              v47 = 64;
            }

            v48 = v47 - v46;
            if (v47 < v46)
            {
              v48 = 0;
            }

            v49 = ~(-1 << v48);
            if (v46 <= v47)
            {
              v50 = v46 & 0x3F;
            }

            else
            {
              v50 = 0;
            }

            *(a1 + 72) = (v49 << v50) | v45;
            v51 = *(v38 + 1);
            v52 = GTTraceFunc_argumentBytesWithMap(a2, v38[24], a3);
            if (*(v39 + 2) >= 1)
            {
              v53 = (a1 + 8 * v51 + 80);
              v54 = *(v39 + 2) & 0x7FFFFFFFLL;
              do
              {
                v55 = *v52;
                v52 += 8;
                *v53++ = v55;
                --v54;
              }

              while (v54);
            }

            v56 = a1 + 8 * *(v39 + 1);
            v57 = GTTraceFunc_argumentBytesWithMap(a2, v39[25], a3);
            memcpy((v56 + 328), v57, 8 * *(v39 + 2));
            v58 = a1 + 8 * *(v39 + 1);
            v35 = GTTraceFunc_argumentBytesWithMap(a2, v39[26], a3);
            v37 = 8 * *(v39 + 2);
            v59 = (v58 + 576);
            goto LABEL_556;
          }

          v593 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          *(a1 + 8 * *(v593 + 3) + 328) = *(v593 + 1);
          v594 = *(v593 + 2);
          v595 = *(v593 + 3);
        }

        *(a1 + 8 * v595 + 576) = v594;
        return;
      }

      if (v7 > -15284)
      {
        switch(v7)
        {
          case -15283:
            v633 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v633 + 3) + 336) = *(v633 + 1);
            v78 = *(v633 + 2);
            v79 = *(v633 + 3);
            break;
          case -15282:
            v611 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v612 = v611;
            v613 = *(v611 + 1);
            v614 = *(v611 + 2) + v613;
            if (v614 >= 0x40)
            {
              v614 = 64;
            }

            v615 = v614 - v613;
            if (v614 < v613)
            {
              v615 = 0;
            }

            v616 = ~(-1 << v615);
            if (v613 <= v614)
            {
              v617 = v613 & 0x3F;
            }

            else
            {
              v617 = 0;
            }

            v618 = *(a1 + 80);
            *(a1 + 72) &= ~(v616 << v617);
            v619 = *(v611 + 1);
            v620 = *(v611 + 2) + v619;
            if (v620 >= 0x40)
            {
              v620 = 64;
            }

            v621 = v620 - v619;
            if (v620 < v619)
            {
              v621 = 0;
            }

            v622 = ~(-1 << v621);
            if (v619 <= v620)
            {
              v623 = v619 & 0x3F;
            }

            else
            {
              v623 = 0;
            }

            *(a1 + 80) = (v622 << v623) | v618;
            v624 = *(v611 + 1);
            v625 = GTTraceFunc_argumentBytesWithMap(a2, v611[24], a3);
            if (*(v612 + 2) >= 1)
            {
              v626 = (a1 + 8 * v624 + 88);
              v627 = *(v612 + 2) & 0x7FFFFFFFLL;
              do
              {
                v628 = *v625;
                v625 += 8;
                *v626++ = v628;
                --v627;
              }

              while (v627);
            }

            v629 = a1 + 8 * *(v612 + 1);
            v630 = GTTraceFunc_argumentBytesWithMap(a2, v612[25], a3);
            memcpy((v629 + 336), v630, 8 * *(v612 + 2));
            v631 = a1 + 8 * *(v612 + 1);
            v35 = GTTraceFunc_argumentBytesWithMap(a2, v612[26], a3);
            v37 = 8 * *(v612 + 2);
            v59 = (v631 + 584);
            goto LABEL_556;
          case -15281:
            v71 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v72 = *(v71 + 3);
            v73 = 1 << v72;
            v74 = a1 + 8 * (v72 >> 6);
            *(v74 + 72) |= v73;
            *(a1 + 8 * *(v71 + 3) + 88) = GTTraceFunc_argumentBytesWithMap(a2, v71[32], a3);
            v75 = *(v71 + 3);
            v76 = 1 << v75;
            v77 = a1 + 8 * (v75 >> 6);
            *(v77 + 80) |= v76;
            *(a1 + 8 * *(v71 + 3) + 336) = *(v71 + 1);
            v78 = *(v71 + 2);
            v79 = *(v71 + 3);
            break;
          default:
            return;
        }

LABEL_564:
        *(a1 + 8 * v79 + 584) = v78;
        return;
      }

      if (v7 != -15364)
      {
        if (v7 != -15284)
        {
          return;
        }

        v105 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v106 = *(v105 + 4);
        v107 = 1 << v106;
        v108 = a1 + 8 * (v106 >> 6);
        *(v108 + 72) &= ~v107;
        *(a1 + 8 * *(v105 + 4) + 88) = *(v105 + 1);
        v109 = *(v105 + 4);
        v110 = 1 << v109;
        v111 = a1 + 8 * (v109 >> 6);
        *(v111 + 80) |= v110;
        *(a1 + 8 * *(v105 + 4) + 336) = *(v105 + 2);
        v78 = *(v105 + 3);
        v79 = *(v105 + 4);
        goto LABEL_564;
      }

      v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      bzero(a1, 0x2BA0uLL);
      v556 = *(v113 + 1);
      if (!v556)
      {
        return;
      }

      v557 = 17;
      goto LABEL_561;
    }

    if (v7 <= -15885)
    {
      if (v7 <= -16021)
      {
        if (v7 > -16028)
        {
          if (v7 > -16023)
          {
            if (v7 == -16022)
            {
              v555 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              *(a1 + 8 * *(v555 + 2) + 9992) = *(v555 + 1);
            }

            else
            {
              *(a1 + 11160) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
            }
          }

          else if (v7 == -16027)
          {
            *(a1 + 194) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          }

          else if (v7 == -16026)
          {
            *(a1 + 195) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          }
        }

        else
        {
          if (v7 <= -16075)
          {
            if (v7 == -16077)
            {
              v548 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              *(a1 + 8608) = *(v548 + 1);
              v35 = GTTraceFunc_argumentBytesWithMap(a2, v548[16], a3);
              v36 = 8616;
              v37 = 48 * *(v548 + 1);
            }

            else
            {
              if (v7 != -16076)
              {
                return;
              }

              v34 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              *(a1 + 9384) = *(v34 + 1);
              v35 = GTTraceFunc_argumentBytesWithMap(a2, v34[16], a3);
              v36 = 9392;
              v37 = 32 * *(v34 + 1);
            }

            v59 = (a1 + v36);
            goto LABEL_556;
          }

          if (v7 == -16074)
          {
            v550 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 4 * *(v550 + 3) + 10768) = *(v550 + 1);
            *(a1 + 4 * *(v550 + 3) + 10892) = *(v550 + 2);
          }

          else if (v7 == -16028)
          {
            v112 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v112 + 2) + 128) = *(v112 + 1);
          }
        }

        return;
      }

      if (v7 <= -15985)
      {
        if (v7 <= -16015)
        {
          if (v7 == -16020)
          {
            *(a1 + 11161) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          }

          else if (v7 == -16017)
          {
            v60 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 2032) = *(v60 + 1);
            *(a1 + 2172) = *(v60 + 2);
          }

          return;
        }

        if (v7 == -16014)
        {
          v551 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x2BA0uLL);
          v552 = *(v551 + 1);
          if (v552)
          {
            *a1 = 28;
            v553 = *a2;
            *(a1 + 8) = v552;
            *(a1 + 16) = v553;
            *(a1 + 24) = -1;
            *(a1 + 40) = *v551;
            bzero((a1 + 56), 0x888uLL);
            memset_pattern16((a1 + 2240), &unk_297630, 0x100uLL);
            *(a1 + 824) = -1;
            *&v554 = -1;
            *(&v554 + 1) = -1;
            *(a1 + 792) = v554;
            *(a1 + 808) = v554;
            *(a1 + 760) = v554;
            *(a1 + 776) = v554;
            *(a1 + 728) = v554;
            *(a1 + 744) = v554;
            *(a1 + 696) = v554;
            *(a1 + 712) = v554;
            *(a1 + 664) = v554;
            *(a1 + 680) = v554;
            *(a1 + 632) = v554;
            *(a1 + 648) = v554;
            *(a1 + 600) = v554;
            *(a1 + 616) = v554;
            *(a1 + 584) = v554;
            *(a1 + 2304) = *(v551 + 2);
          }

          return;
        }

        if (v7 != -16013)
        {
          return;
        }

        v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v9 = *(v8 + 1);
        if (!v9)
        {
          return;
        }

        v10 = 82;
        goto LABEL_503;
      }

      if (v7 <= -15891)
      {
        if (v7 == -15984)
        {
          v549 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          *(v6 + 2546) = *(v549 + 4);
          *(a1 + 10756) = *(v549 + 1);
        }

        else if (v7 == -15970)
        {
          *(a1 + 11162) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
        }

        return;
      }

      if (v7 != -15890)
      {
        if (v7 == -15888)
        {
          *(a1 + 56) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        }

        return;
      }
    }

    else
    {
      if (v7 > -15643)
      {
        if (v7 > -15586)
        {
          if (v7 > -15583)
          {
            if (v7 == -15582)
            {
              v560 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              v561 = v560;
              v562 = *(v560 + 1);
              v563 = *(v560 + 2) + v562;
              if (v563 >= 0x40)
              {
                v563 = 64;
              }

              v564 = v563 - v562;
              if (v563 < v562)
              {
                v564 = 0;
              }

              v565 = ~(-1 << v564);
              if (v562 <= v563)
              {
                v566 = v562 & 0x3F;
              }

              else
              {
                v566 = 0;
              }

              v567 = *(a1 + 80);
              *(a1 + 72) &= ~(v565 << v566);
              v568 = *(v560 + 1);
              v569 = *(v560 + 2) + v568;
              if (v569 >= 0x40)
              {
                v569 = 64;
              }

              v570 = v569 - v568;
              if (v569 < v568)
              {
                v570 = 0;
              }

              v571 = ~(-1 << v570);
              if (v568 <= v569)
              {
                v572 = v568 & 0x3F;
              }

              else
              {
                v572 = 0;
              }

              *(a1 + 80) = v567 & ~(v571 << v572);
              v573 = *(v560 + 1);
              v574 = GTTraceFunc_argumentBytesWithMap(a2, v560[24], a3);
              if (*(v561 + 2) >= 1)
              {
                v575 = (a1 + 8 * v573 + 88);
                v576 = *(v561 + 2) & 0x7FFFFFFFLL;
                do
                {
                  v577 = *v574;
                  v574 += 8;
                  *v575++ = v577;
                  --v576;
                }

                while (v576);
              }

              return;
            }

            if (v7 != -15581)
            {
              if (v7 == -15580)
              {
                v15 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
                v16 = v15;
                v17 = *(v15 + 1);
                v18 = *(v15 + 2) + v17;
                if (v18 >= 0x40)
                {
                  v18 = 64;
                }

                v19 = v18 - v17;
                if (v18 < v17)
                {
                  v19 = 0;
                }

                v20 = ~(-1 << v19);
                if (v17 <= v18)
                {
                  v21 = v17 & 0x3F;
                }

                else
                {
                  v21 = 0;
                }

                v22 = *(a1 + 80);
                *(a1 + 72) &= ~(v20 << v21);
                v23 = *(v15 + 1);
                v24 = *(v15 + 2) + v23;
                if (v24 >= 0x40)
                {
                  v24 = 64;
                }

                v25 = v24 - v23;
                if (v24 < v23)
                {
                  v25 = 0;
                }

                v26 = ~(-1 << v25);
                if (v23 <= v24)
                {
                  v27 = v23 & 0x3F;
                }

                else
                {
                  v27 = 0;
                }

                *(a1 + 80) = v22 & ~(v26 << v27);
                v28 = *(v15 + 1);
                v29 = GTTraceFunc_argumentBytesWithMap(a2, v15[24], a3);
                if (*(v16 + 2) >= 1)
                {
                  v30 = (a1 + 8 * v28 + 88);
                  v31 = *(v16 + 2) & 0x7FFFFFFFLL;
                  do
                  {
                    v32 = *v29;
                    v29 += 8;
                    *v30++ = v32;
                    --v31;
                  }

                  while (v31);
                }
              }

              return;
            }

LABEL_154:
            v119 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v120 = *(v119 + 2);
            v121 = 1 << v120;
            v122 = a1 + 8 * (v120 >> 6);
            *(v122 + 72) &= ~v121;
            *(a1 + 8 * *(v119 + 2) + 88) = *(v119 + 1);
            v123 = *(v119 + 2);
            v124 = 1 << v123;
            v125 = a1 + 8 * (v123 >> 6);
            *(v125 + 80) &= ~v124;
            return;
          }

          if (v7 != -15585)
          {
            v80 = -15583;
LABEL_153:
            if (v7 != v80)
            {
              return;
            }

            goto LABEL_154;
          }

          v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x2BA0uLL);
          v556 = *(v113 + 1);
          if (!v556)
          {
            return;
          }

          v557 = 74;
LABEL_561:
          *a1 = v557;
          v632 = *a2;
          *(a1 + 8) = v556;
          *(a1 + 16) = v632;
          *(a1 + 24) = -1;
          *(a1 + 40) = *v113;
LABEL_562:
          *(a1 + 56) = GTTraceFunc_argumentBytesWithMap(a2, v113[16], a3);
          return;
        }

        if (v7 > -15588)
        {
          if (v7 != -15587)
          {
            v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            bzero(a1, 0x2BA0uLL);
            v114 = *(v113 + 1);
            if (!v114)
            {
              return;
            }

            *a1 = 28;
            v115 = *a2;
            *(a1 + 8) = v114;
            *(a1 + 16) = v115;
            *(a1 + 24) = -1;
            *(a1 + 40) = *v113;
            bzero((a1 + 56), 0x888uLL);
            memset_pattern16((a1 + 2240), &unk_297630, 0x100uLL);
            *(a1 + 824) = -1;
            *&v116 = -1;
            *(&v116 + 1) = -1;
            *(a1 + 792) = v116;
            *(a1 + 808) = v116;
            *(a1 + 760) = v116;
            *(a1 + 776) = v116;
            *(a1 + 728) = v116;
            *(a1 + 744) = v116;
            *(a1 + 696) = v116;
            *(a1 + 712) = v116;
            *(a1 + 664) = v116;
            *(a1 + 680) = v116;
            *(a1 + 632) = v116;
            *(a1 + 648) = v116;
            *(a1 + 600) = v116;
            *(a1 + 616) = v116;
            *(a1 + 584) = v116;
            *(a1 + 2304) = -1;
            goto LABEL_562;
          }

          v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x2BA0uLL);
          v556 = *(v113 + 1);
          if (!v556)
          {
            return;
          }

          v557 = 21;
          goto LABEL_561;
        }

        if (v7 != -15642)
        {
          v80 = -15623;
          goto LABEL_153;
        }

LABEL_113:
        *(a1 + 24) = *a2;
        return;
      }

      if (v7 <= -15795)
      {
        if (v7 > -15823)
        {
          if (v7 == -15822)
          {
            v558 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 11144) = *(v558 + 1);
            *(a1 + 9912) = GTTraceFunc_argumentBytesWithMap(a2, v558[16], a3);
          }

          else if (v7 == -15812)
          {
            v117 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(v6 + 2540) = *(v117 + 1);
            *(a1 + 11140) = *(v117 + 2);
          }

          return;
        }

        if (v7 == -15884)
        {
          goto LABEL_113;
        }

        if (v7 != -15870)
        {
          return;
        }

        v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v9 = *(v8 + 1);
        if (!v9)
        {
          return;
        }

        v10 = 74;
LABEL_503:
        *a1 = v10;
        v559 = *a2;
        *(a1 + 8) = v9;
        *(a1 + 16) = v559;
        *(a1 + 24) = -1;
        *(a1 + 40) = *v8;
        return;
      }

      if (v7 > -15674)
      {
        if (v7 == -15673)
        {
          v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x2BA0uLL);
          v9 = *(v8 + 1);
          if (!v9)
          {
            return;
          }

          v10 = 17;
          goto LABEL_503;
        }

        if (v7 != -15648)
        {
          return;
        }
      }

      else if (v7 != -15794)
      {
        v81 = -15789;
LABEL_112:
        if (v7 != v81)
        {
          return;
        }

        goto LABEL_113;
      }
    }

LABEL_150:
    v118 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
    *(a1 + 48) = GTTraceFunc_argumentBytesWithMap(a2, v118[8], a3);
    return;
  }

  if (v7 <= -16163)
  {
    switch(v7)
    {
      case -16354:
        v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v9 = *(v8 + 1);
        if (!v9)
        {
          return;
        }

        v10 = 21;
        goto LABEL_503;
      case -16353:
        v228 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v229 = *(v228 + 1);
        if (!v229)
        {
          return;
        }

        *a1 = 70;
        v230 = *a2;
        *(a1 + 8) = v229;
        *(a1 + 16) = v230;
        *(a1 + 24) = -1;
        *(a1 + 40) = *v228;
        v191 = GTTraceFunc_argumentBytesWithMap(a2, v228[16], a3);
        v190 = a1 + 56;
        goto LABEL_227;
      case -16352:
        v223 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v224 = *(v223 + 1);
        if (v224)
        {
          *a1 = 28;
          v225 = *a2;
          *(a1 + 8) = v224;
          *(a1 + 16) = v225;
          *(a1 + 24) = -1;
          *(a1 + 40) = *v223;
          bzero((a1 + 56), 0x888uLL);
          memset_pattern16((a1 + 2240), &unk_297630, 0x100uLL);
          *(a1 + 824) = -1;
          *&v226 = -1;
          *(&v226 + 1) = -1;
          *(a1 + 792) = v226;
          *(a1 + 808) = v226;
          *(a1 + 760) = v226;
          *(a1 + 776) = v226;
          *(a1 + 728) = v226;
          *(a1 + 744) = v226;
          *(a1 + 696) = v226;
          *(a1 + 712) = v226;
          *(a1 + 664) = v226;
          *(a1 + 680) = v226;
          *(a1 + 632) = v226;
          *(a1 + 648) = v226;
          *(a1 + 600) = v226;
          *(a1 + 616) = v226;
          *(a1 + 584) = v226;
          *(a1 + 2304) = -1;
        }

        return;
      case -16351:
        v218 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v219 = *(v218 + 1);
        if (v219)
        {
          *a1 = 65;
          v220 = *a2;
          *(a1 + 8) = v219;
          *(a1 + 16) = v220;
          *(a1 + 24) = -1;
          *(a1 + 40) = *v218;
          v221 = GTTraceFunc_argumentBytesWithMap(a2, v218[16], a3);
          *(a1 + 128) = 0u;
          *(a1 + 144) = 0u;
          *(a1 + 160) = 0u;
          *(a1 + 176) = 0u;
          *(a1 + 192) = 0;
          *(a1 + 56) = v221;
          memset_pattern16((a1 + 64), &unk_297640, 0x40uLL);
          *(a1 + 192) = 1028;
        }

        return;
      case -16350:
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
      case -16338:
      case -16327:
      case -16326:
      case -16324:
      case -16323:
      case -16322:
      case -16321:
      case -16320:
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
      case -16293:
      case -16292:
      case -16291:
      case -16290:
      case -16289:
      case -16287:
      case -16284:
      case -16283:
      case -16282:
      case -16280:
      case -16251:
      case -16250:
      case -16249:
      case -16248:
      case -16245:
      case -16244:
      case -16243:
      case -16242:
      case -16241:
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
      case -16230:
      case -16229:
      case -16228:
      case -16221:
      case -16220:
      case -16218:
      case -16217:
      case -16216:
      case -16215:
        return;
      case -16339:
      case -16288:
      case -16281:
        goto LABEL_150;
      case -16337:
        *(a1 + 64) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16336:
        v286 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v287 = *(v286 + 3);
        v288 = 1 << v287;
        v289 = a1 + 8 * (v287 >> 6);
        *(v289 + 72) &= ~v288;
        *(a1 + 8 * *(v286 + 3) + 88) = *(v286 + 1);
        v290 = *(v286 + 3);
        v291 = 1 << v290;
        v292 = a1 + 8 * (v290 >> 6);
        *(v292 + 80) &= ~v291;
        v154 = *(v286 + 2);
        v155 = *(v286 + 3);
        goto LABEL_314;
      case -16335:
        v199 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v200 = v199;
        v201 = *(v199 + 1);
        v202 = *(v199 + 2) + v201;
        if (v202 >= 0x40)
        {
          v202 = 64;
        }

        v203 = v202 - v201;
        if (v202 < v201)
        {
          v203 = 0;
        }

        v204 = ~(-1 << v203);
        if (v201 <= v202)
        {
          v205 = v201 & 0x3F;
        }

        else
        {
          v205 = 0;
        }

        v206 = *(a1 + 80);
        *(a1 + 72) &= ~(v204 << v205);
        v207 = *(v199 + 1);
        v208 = *(v199 + 2) + v207;
        if (v208 >= 0x40)
        {
          v208 = 64;
        }

        v209 = v208 - v207;
        if (v208 < v207)
        {
          v209 = 0;
        }

        v210 = ~(-1 << v209);
        if (v207 <= v208)
        {
          v211 = v207 & 0x3F;
        }

        else
        {
          v211 = 0;
        }

        *(a1 + 80) = v206 & ~(v210 << v211);
        v212 = *(v199 + 1);
        v213 = GTTraceFunc_argumentBytesWithMap(a2, v199[24], a3);
        if (*(v200 + 2) >= 1)
        {
          v214 = (a1 + 8 * v212 + 88);
          v215 = *(v200 + 2) & 0x7FFFFFFFLL;
          do
          {
            v216 = *v213;
            v213 += 8;
            *v214++ = v216;
            --v215;
          }

          while (v215);
        }

        v217 = a1 + 8 * *(v200 + 1);
        v35 = GTTraceFunc_argumentBytesWithMap(a2, v200[25], a3);
        v37 = 8 * *(v200 + 2);
        v59 = (v217 + 336);
        goto LABEL_556;
      case -16334:
        v248 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v248 + 2) + 832) = *(v248 + 1);
        return;
      case -16333:
        v266 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v267 = v266;
        v268 = *(v266 + 1);
        v269 = *(v266 + 2) + v268;
        if (v269 >= 0x40)
        {
          v269 = 64;
        }

        v270 = v269 - v268;
        if (v269 < v268)
        {
          v270 = 0;
        }

        v271 = ~(-1 << v270);
        if (v268 <= v269)
        {
          v272 = v268 & 0x3F;
        }

        else
        {
          v272 = 0;
        }

        *(a1 + 80) &= ~(v271 << v272);
        v273 = *(v266 + 1);
        v274 = GTTraceFunc_argumentBytesWithMap(a2, v266[24], a3);
        if (*(v267 + 2) >= 1)
        {
          v275 = (a1 + 8 * v273 + 832);
          v276 = *(v267 + 2) & 0x7FFFFFFFLL;
          do
          {
            v277 = *v274;
            v274 += 8;
            *v275++ = v277;
            --v276;
          }

          while (v276);
        }

        return;
      case -16332:
        v285 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v285 + 2) + 1856) = *(v285 + 1);
        return;
      case -16331:
        v355 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v356 = v355;
        v357 = *(v355 + 1);
        v358 = *(v355 + 2) + v357;
        if (v358 >= 0x40)
        {
          v358 = 64;
        }

        v359 = v358 - v357;
        if (v358 < v357)
        {
          v359 = 0;
        }

        v360 = ~(-1 << v359);
        if (v357 <= v358)
        {
          v361 = v357 & 0x3F;
        }

        else
        {
          v361 = 0;
        }

        *(a1 + 80) &= ~(v360 << v361);
        v362 = *(v355 + 1);
        v363 = GTTraceFunc_argumentBytesWithMap(a2, v355[24], a3);
        if (*(v356 + 2) >= 1)
        {
          v364 = (a1 + 8 * v362 + 1856);
          v365 = *(v356 + 2) & 0x7FFFFFFFLL;
          do
          {
            v366 = *v363;
            v363 += 8;
            *v364++ = v366;
            --v365;
          }

          while (v365);
        }

        return;
      case -16330:
        v354 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v354 + 2) + 1856) = *(v354 + 1);
        *(a1 + 4 * *(v354 + 2) + 2176) = *(v354 + 6);
        *(a1 + 4 * *(v354 + 2) + 2240) = *(v354 + 7);
        return;
      case -16329:
        v339 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v340 = v339;
        v341 = *(v339 + 1);
        v342 = *(v339 + 2) + v341;
        if (v342 >= 0x40)
        {
          v342 = 64;
        }

        v343 = v342 - v341;
        if (v342 < v341)
        {
          v343 = 0;
        }

        v344 = ~(-1 << v343);
        if (v341 <= v342)
        {
          v345 = v341 & 0x3F;
        }

        else
        {
          v345 = 0;
        }

        *(a1 + 80) &= ~(v344 << v345);
        v346 = *(v339 + 1);
        v347 = GTTraceFunc_argumentBytesWithMap(a2, v339[24], a3);
        if (*(v340 + 2) >= 1)
        {
          v348 = (a1 + 8 * v346 + 1856);
          v349 = *(v340 + 2) & 0x7FFFFFFFLL;
          do
          {
            v350 = *v347;
            v347 += 8;
            *v348++ = v350;
            --v349;
          }

          while (v349);
        }

        v351 = a1 + 4 * *(v340 + 1);
        v352 = GTTraceFunc_argumentBytesWithMap(a2, v340[25], a3);
        memcpy((v351 + 2176), v352, 4 * *(v340 + 2));
        v353 = a1 + 4 * *(v340 + 1);
        v35 = GTTraceFunc_argumentBytesWithMap(a2, v340[26], a3);
        v37 = 4 * *(v340 + 2);
        v59 = (v353 + 2240);
        goto LABEL_556;
      case -16328:
        v246 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 4 * *(v246 + 2) + 2040) = *(v246 + 1);
        return;
      case -16325:
      case -16285:
      case -16246:
        goto LABEL_113;
      case -16286:
        v187 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v188 = *(v187 + 1);
        if (!v188)
        {
          return;
        }

        *a1 = 70;
        v189 = *a2;
        *(a1 + 8) = v188;
        *(a1 + 16) = v189;
        *(a1 + 24) = -1;
        *(a1 + 40) = *v187;
        v190 = a1 + 56;
        v191 = 0;
LABEL_227:

        GTMTLSMRenderCommandEncoder_init(v190, v191);
        return;
      case -16279:
        *(a1 + 8600) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16278:
        v192 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v193 = *(v192 + 3);
        v194 = 1 << v193;
        v195 = a1 + 8 * (v193 >> 6);
        *(v195 + 64) &= ~v194;
        *(a1 + 8 * *(v192 + 3) + 80) = *(v192 + 1);
        v196 = *(v192 + 3);
        v197 = 1 << v196;
        v198 = a1 + 8 * (v196 >> 6);
        *(v198 + 72) &= ~v197;
        v166 = *(v192 + 2);
        v167 = *(v192 + 3);
        goto LABEL_344;
      case -16277:
        v313 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v314 = v313;
        v315 = *(v313 + 1);
        v316 = *(v313 + 2) + v315;
        if (v316 >= 0x40)
        {
          v316 = 64;
        }

        v317 = v316 - v315;
        if (v316 < v315)
        {
          v317 = 0;
        }

        v318 = ~(-1 << v317);
        if (v315 <= v316)
        {
          v319 = v315 & 0x3F;
        }

        else
        {
          v319 = 0;
        }

        v320 = *(a1 + 72);
        *(a1 + 64) &= ~(v318 << v319);
        v321 = *(v313 + 1);
        v322 = *(v313 + 2) + v321;
        if (v322 >= 0x40)
        {
          v322 = 64;
        }

        v323 = v322 - v321;
        if (v322 < v321)
        {
          v323 = 0;
        }

        v324 = ~(-1 << v323);
        if (v321 <= v322)
        {
          v325 = v321 & 0x3F;
        }

        else
        {
          v325 = 0;
        }

        *(a1 + 72) = v320 & ~(v324 << v325);
        v326 = *(v313 + 1);
        v327 = GTTraceFunc_argumentBytesWithMap(a2, v313[24], a3);
        if (*(v314 + 2) >= 1)
        {
          v328 = (a1 + 8 * v326 + 80);
          v329 = *(v314 + 2) & 0x7FFFFFFFLL;
          do
          {
            v330 = *v327;
            v327 += 8;
            *v328++ = v330;
            --v329;
          }

          while (v329);
        }

        v331 = a1 + 8 * *(v314 + 1);
        v35 = GTTraceFunc_argumentBytesWithMap(a2, v314[25], a3);
        v37 = 8 * *(v314 + 2);
        v59 = (v331 + 328);
        goto LABEL_556;
      case -16276:
        v180 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v180 + 2) + 824) = *(v180 + 1);
        return;
      case -16275:
        v231 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v232 = v231;
        v233 = *(v231 + 1);
        v234 = *(v231 + 2) + v233;
        if (v234 >= 0x40)
        {
          v234 = 64;
        }

        v235 = v234 - v233;
        if (v234 < v233)
        {
          v235 = 0;
        }

        v236 = ~(-1 << v235);
        if (v233 <= v234)
        {
          v237 = v233 & 0x3F;
        }

        else
        {
          v237 = 0;
        }

        *(a1 + 72) &= ~(v236 << v237);
        v238 = *(v231 + 1);
        v239 = GTTraceFunc_argumentBytesWithMap(a2, v231[24], a3);
        if (*(v232 + 2) >= 1)
        {
          v240 = (a1 + 8 * v238 + 824);
          v241 = *(v232 + 2) & 0x7FFFFFFFLL;
          do
          {
            v242 = *v239;
            v239 += 8;
            *v240++ = v242;
            --v241;
          }

          while (v241);
        }

        return;
      case -16274:
        v181 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v181 + 2) + 1848) = *(v181 + 1);
        return;
      case -16273:
        v168 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v169 = v168;
        v170 = *(v168 + 1);
        v171 = *(v168 + 2) + v170;
        if (v171 >= 0x40)
        {
          v171 = 64;
        }

        v172 = v171 - v170;
        if (v171 < v170)
        {
          v172 = 0;
        }

        v173 = ~(-1 << v172);
        if (v170 <= v171)
        {
          v174 = v170 & 0x3F;
        }

        else
        {
          v174 = 0;
        }

        *(a1 + 72) &= ~(v173 << v174);
        v175 = *(v168 + 1);
        v176 = GTTraceFunc_argumentBytesWithMap(a2, v168[24], a3);
        if (*(v169 + 2) >= 1)
        {
          v177 = (a1 + 8 * v175 + 1848);
          v178 = *(v169 + 2) & 0x7FFFFFFFLL;
          do
          {
            v179 = *v176;
            v176 += 8;
            *v177++ = v179;
            --v178;
          }

          while (v178);
        }

        return;
      case -16272:
        v222 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v222 + 2) + 1848) = *(v222 + 1);
        *(a1 + 4 * *(v222 + 2) + 10108) = *(v222 + 6);
        *(a1 + 4 * *(v222 + 2) + 10172) = *(v222 + 7);
        return;
      case -16271:
        v249 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v61 = v249;
        v250 = *(v249 + 1);
        v251 = *(v249 + 2) + v250;
        if (v251 >= 0x40)
        {
          v251 = 64;
        }

        v252 = v251 - v250;
        if (v251 < v250)
        {
          v252 = 0;
        }

        v253 = ~(-1 << v252);
        if (v250 <= v251)
        {
          v254 = v250 & 0x3F;
        }

        else
        {
          v254 = 0;
        }

        *(a1 + 72) &= ~(v253 << v254);
        v255 = *(v249 + 1);
        v256 = GTTraceFunc_argumentBytesWithMap(a2, v249[24], a3);
        if (*(v61 + 2) >= 1)
        {
          v257 = (a1 + 8 * v255 + 1848);
          v258 = *(v61 + 2) & 0x7FFFFFFFLL;
          do
          {
            v259 = *v256;
            v256 += 8;
            *v257++ = v259;
            --v258;
          }

          while (v258);
        }

        v260 = a1 + 4 * *(v61 + 1);
        v261 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
        memcpy((v260 + 10108), v261, 4 * *(v61 + 2));
        v69 = a1 + 4 * *(v61 + 1);
        v70 = 10172;
        goto LABEL_482;
      case -16270:
        v367 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8608) = 1;
        v368 = *(v367 + 24);
        v369 = *(v367 + 40);
        *v6 = *(v367 + 8);
        *(v6 + 16) = v368;
        *(v6 + 32) = v369;
        return;
      case -16269:
        *(a1 + 11154) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16268:
        *(a1 + 11152) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16267:
        *(a1 + 11153) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16266:
        v227 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 10064) = *(v227 + 2);
        *(a1 + 10068) = *(v227 + 3);
        *(a1 + 10072) = *(v227 + 4);
        return;
      case -16265:
        v157 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 9384) = 1;
        v158 = *(v157 + 24);
        *(a1 + 9392) = *(v157 + 8);
        *(a1 + 9408) = v158;
        return;
      case -16264:
        *(a1 + 11155) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16263:
        v183 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v184 = *(v183 + 3);
        v185 = 1 << v184;
        v186 = a1 + 8 * (v184 >> 6);
        *(v186 + 1976) &= ~v185;
        *(a1 + 8 * *(v183 + 3) + 1984) = *(v183 + 1);
        v144 = *(v183 + 2);
        v145 = *(v183 + 3);
        goto LABEL_259;
      case -16262:
        v300 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v301 = v300;
        v302 = *(v300 + 1);
        v303 = *(v300 + 2) + v302;
        if (v303 >= 0x40)
        {
          v303 = 64;
        }

        v304 = v303 - v302;
        if (v303 < v302)
        {
          v304 = 0;
        }

        v305 = ~(-1 << v304);
        if (v302 <= v303)
        {
          v306 = v302 & 0x3F;
        }

        else
        {
          v306 = 0;
        }

        *(a1 + 1976) &= ~(v305 << v306);
        v307 = *(v300 + 1);
        v308 = GTTraceFunc_argumentBytesWithMap(a2, v300[24], a3);
        if (*(v301 + 2) >= 1)
        {
          v309 = (a1 + 8 * v307 + 1984);
          v310 = *(v301 + 2) & 0x7FFFFFFFLL;
          do
          {
            v311 = *v308;
            v308 += 8;
            *v309++ = v311;
            --v310;
          }

          while (v310);
        }

        v312 = a1 + 8 * *(v301 + 1);
        v35 = GTTraceFunc_argumentBytesWithMap(a2, v301[25], a3);
        v37 = 8 * *(v301 + 2);
        v59 = (v312 + 2232);
        goto LABEL_556;
      case -16261:
        v182 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v182 + 2) + 2480) = *(v182 + 1);
        return;
      case -16260:
        v278 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v279 = *(v278 + 1);
        v280 = GTTraceFunc_argumentBytesWithMap(a2, v278[24], a3);
        if (*(v278 + 2) >= 1)
        {
          v281 = (a1 + 8 * v279 + 2480);
          v282 = *(v278 + 2) & 0x7FFFFFFFLL;
          do
          {
            v283 = *v280;
            v280 += 8;
            *v281++ = v283;
            --v282;
          }

          while (v282);
        }

        return;
      case -16259:
        v284 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v244 = *(v284 + 1);
        v245 = *(v284 + 2);
        goto LABEL_277;
      case -16258:
        v146 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v147 = *(v146 + 1);
        v148 = GTTraceFunc_argumentBytesWithMap(a2, v146[24], a3);
        if (*(v146 + 2) >= 1)
        {
          v149 = (a1 + 8 * v147 + 3504);
          v150 = *(v146 + 2) & 0x7FFFFFFFLL;
          do
          {
            v151 = *v148;
            v148 += 8;
            *v149++ = v151;
            --v150;
          }

          while (v150);
        }

        return;
      case -16257:
        v247 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v247 + 2) + 3504) = *(v247 + 1);
        *(a1 + 4 * *(v247 + 2) + 10236) = *(v247 + 6);
        *(a1 + 4 * *(v247 + 2) + 10300) = *(v247 + 7);
        return;
      case -16256:
        v61 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v293 = *(v61 + 1);
        v294 = GTTraceFunc_argumentBytesWithMap(a2, v61[24], a3);
        if (*(v61 + 2) >= 1)
        {
          v295 = (a1 + 8 * v293 + 3504);
          v296 = *(v61 + 2) & 0x7FFFFFFFLL;
          do
          {
            v297 = *v294;
            v294 += 8;
            *v295++ = v297;
            --v296;
          }

          while (v296);
        }

        v298 = a1 + 4 * *(v61 + 1);
        v299 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
        memcpy((v298 + 10236), v299, 4 * *(v61 + 2));
        v69 = a1 + 4 * *(v61 + 1);
        v70 = 10300;
        goto LABEL_482;
      case -16255:
        v370 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 10084) = *(v370 + 2);
        *(a1 + 10088) = *(v370 + 3);
        *(a1 + 10092) = *(v370 + 4);
        *(a1 + 10096) = *(v370 + 5);
        return;
      case -16254:
        *(a1 + 9904) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16253:
        v152 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
        *(a1 + 10104) = v152;
        *(a1 + 10100) = v152;
        return;
      case -16252:
        v371 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(v6 + 2541) = *(v371 + 1);
        *(a1 + 11148) = *(v371 + 2);
        return;
      case -16247:
        *(a1 + 10752) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
        return;
      case -16227:
        v332 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v333 = *(v332 + 2);
        v334 = 1 << v333;
        v335 = a1 + 8 * (v333 >> 6);
        *(v335 + 72) |= v334;
        *(a1 + 8 * *(v332 + 2) + 88) = GTTraceFunc_argumentBytesWithMap(a2, v332[24], a3);
        v336 = *(v332 + 2);
        v337 = 1 << v336;
        v338 = a1 + 8 * (v336 >> 6);
        *(v338 + 80) &= ~v337;
        v154 = *(v332 + 1);
        v155 = *(v332 + 2);
        goto LABEL_314;
      case -16226:
        v153 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v154 = *(v153 + 1);
        v155 = *(v153 + 2);
LABEL_314:
        *(a1 + 8 * v155 + 336) = v154;
        return;
      case -16225:
        v159 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v160 = *(v159 + 2);
        v161 = 1 << v160;
        v162 = a1 + 8 * (v160 >> 6);
        *(v162 + 64) |= v161;
        *(a1 + 8 * *(v159 + 2) + 80) = GTTraceFunc_argumentBytesWithMap(a2, v159[24], a3);
        v163 = *(v159 + 2);
        v164 = 1 << v163;
        v165 = a1 + 8 * (v163 >> 6);
        *(v165 + 72) &= ~v164;
        v166 = *(v159 + 1);
        v167 = *(v159 + 2);
        goto LABEL_344;
      case -16224:
        v372 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v166 = *(v372 + 1);
        v167 = *(v372 + 2);
LABEL_344:
        *(a1 + 8 * v167 + 328) = v166;
        return;
      case -16223:
        v262 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v263 = *(v262 + 2);
        v264 = 1 << v263;
        v265 = a1 + 8 * (v263 >> 6);
        *(v265 + 1976) |= v264;
        *(a1 + 8 * *(v262 + 2) + 1984) = GTTraceFunc_argumentBytesWithMap(a2, v262[24], a3);
        v144 = *(v262 + 1);
        v145 = *(v262 + 2);
        goto LABEL_259;
      case -16222:
        v143 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v144 = *(v143 + 1);
        v145 = *(v143 + 2);
LABEL_259:
        *(a1 + 8 * v145 + 2232) = v144;
        return;
      case -16219:
        v156 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 10100) = *(v156 + 2);
        *(a1 + 10104) = *(v156 + 3);
        return;
      case -16214:
        v243 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v243 + 2) + 2480) = *(v243 + 1);
        v244 = *(v243 + 3);
        v245 = *(v243 + 4);
LABEL_277:
        *(a1 + 8 * v245 + 3504) = v244;
        return;
      default:
        if (v7 == -16384)
        {
          goto LABEL_150;
        }

        v81 = -16376;
        goto LABEL_112;
    }
  }

  if (v7 <= -16101)
  {
    switch(v7)
    {
      case -16162:
        v33 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v33 + 2) + 64) = *(v33 + 1);
        return;
      case -16161:
        *(a1 + 192) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16160:
        *(a1 + 193) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16159:
        v134 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v134 + 2) + 9928) = *(v134 + 1);
        return;
      case -16158:
        *(a1 + 11158) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16157:
        *(a1 + 11159) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16149:
        v141 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 2164) = *(v141 + 1);
        *(a1 + 2168) = *(v141 + 2);
        return;
      case -16148:
        v136 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 9920) = *(v136 + 1);
        *(a1 + 10760) = *(v136 + 2);
        *(a1 + 10764) = *(v136 + 3);
        return;
      case -16143:
        v137 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v138 = *(v137 + 2);
        v139 = 1 << v138;
        v140 = a1 + 8 * (v138 >> 6);
        *(v140 + 6944) |= v139;
        *(a1 + 8 * *(v137 + 2) + 6952) = GTTraceFunc_argumentBytesWithMap(a2, v137[24], a3);
        v130 = *(v137 + 1);
        v131 = *(v137 + 2);
        goto LABEL_166;
      case -16142:
        v126 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v127 = *(v126 + 3);
        v128 = 1 << v127;
        v129 = a1 + 8 * (v127 >> 6);
        *(v129 + 6944) &= ~v128;
        *(a1 + 8 * *(v126 + 3) + 6952) = *(v126 + 1);
        v130 = *(v126 + 2);
        v131 = *(v126 + 3);
        goto LABEL_166;
      case -16141:
        v132 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v130 = *(v132 + 1);
        v131 = *(v132 + 2);
LABEL_166:
        *(a1 + 8 * v131 + 7200) = v130;
        break;
      case -16140:
        v133 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v133 + 2) + 7448) = *(v133 + 1);
        break;
      case -16139:
        v135 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v135 + 2) + 8472) = *(v135 + 1);
        break;
      case -16138:
        v142 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v142 + 2) + 8472) = *(v142 + 1);
        *(a1 + 4 * *(v142 + 2) + 10620) = *(v142 + 6);
        *(a1 + 4 * *(v142 + 2) + 10684) = *(v142 + 7);
        break;
      case -16132:
        *(a1 + 10748) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
        break;
      default:
        return;
    }

    return;
  }

  if (v7 <= -16087)
  {
    if (v7 == -16100)
    {
      v590 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v591 = *(v590 + 3);
      *(a1 + 1984) = *(v590 + 8);
      *(a1 + 2000) = v591;
      v592 = *(v590 + 6);
      *(a1 + 2008) = *(v590 + 2);
      *(a1 + 2024) = v592;
      return;
    }

    if (v7 != -16087)
    {
      return;
    }

    v93 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
    v94 = v93;
    v95 = *(v93 + 1);
    v96 = *(v93 + 2) + v95;
    if (v96 >= 0x40)
    {
      v96 = 64;
    }

    v97 = v96 - v95;
    if (v96 < v95)
    {
      v97 = 0;
    }

    v98 = ~(-1 << v97);
    if (v95 <= v96)
    {
      v99 = v95 & 0x3F;
    }

    else
    {
      v99 = 0;
    }

    *(a1 + 6944) &= ~(v98 << v99);
    v100 = *(v93 + 1);
    v101 = GTTraceFunc_argumentBytesWithMap(a2, v93[24], a3);
    if (*(v94 + 2) >= 1)
    {
      v102 = (a1 + 8 * v100 + 6952);
      v103 = *(v94 + 2) & 0x7FFFFFFFLL;
      do
      {
        v104 = *v101;
        v101 += 8;
        *v102++ = v104;
        --v103;
      }

      while (v103);
    }

    v69 = a1 + 8 * *(v94 + 1);
    v70 = 7200;
LABEL_452:
    v35 = GTTraceFunc_argumentBytesWithMap(a2, v94[25], a3);
    v37 = 8 * *(v94 + 2);
    goto LABEL_483;
  }

  switch(v7)
  {
    case -16086:
      v578 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v579 = *(v578 + 1);
      v580 = GTTraceFunc_argumentBytesWithMap(a2, v578[24], a3);
      if (*(v578 + 2) >= 1)
      {
        v581 = (a1 + 8 * v579 + 7448);
        v582 = *(v578 + 2) & 0x7FFFFFFFLL;
        do
        {
          v583 = *v580;
          v580 += 8;
          *v581++ = v583;
          --v582;
        }

        while (v582);
      }

      break;
    case -16085:
      v584 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v585 = *(v584 + 1);
      v586 = GTTraceFunc_argumentBytesWithMap(a2, v584[24], a3);
      if (*(v584 + 2) >= 1)
      {
        v587 = (a1 + 8 * v585 + 8472);
        v588 = *(v584 + 2) & 0x7FFFFFFFLL;
        do
        {
          v589 = *v586;
          v586 += 8;
          *v587++ = v589;
          --v588;
        }

        while (v588);
      }

      break;
    case -16084:
      v61 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v62 = *(v61 + 1);
      v63 = GTTraceFunc_argumentBytesWithMap(a2, v61[24], a3);
      if (*(v61 + 2) >= 1)
      {
        v64 = (a1 + 8 * v62 + 8472);
        v65 = *(v61 + 2) & 0x7FFFFFFFLL;
        do
        {
          v66 = *v63;
          v63 += 8;
          *v64++ = v66;
          --v65;
        }

        while (v65);
      }

      v67 = a1 + 4 * *(v61 + 1);
      v68 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
      memcpy((v67 + 10620), v68, 4 * *(v61 + 2));
      v69 = a1 + 4 * *(v61 + 1);
      v70 = 10684;
LABEL_482:
      v35 = GTTraceFunc_argumentBytesWithMap(a2, v61[26], a3);
      v37 = 4 * *(v61 + 2);
LABEL_483:
      v59 = (v69 + v70);
LABEL_556:

      memcpy(v59, v35, v37);
      return;
    default:
      return;
  }
}