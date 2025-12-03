@interface _CUILayerStackRendition
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
- (id)metrics;
- (void)dealloc;
@end

@implementation _CUILayerStackRendition

- (id)metrics
{
  v2 = self->_renditionMetrics;

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUILayerStackRendition;
  [(_CUIRawDataRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  v50.receiver = self;
  v50.super_class = _CUILayerStackRendition;
  v5 = [(_CUIRawDataRendition *)&v50 _initWithCSIHeader:header version:*&version];
  if (header->var6 != 1145132097)
  {
    [_CUILayerStackRendition _initWithCSIHeader:version:];
  }

  LODWORD(v6) = header->var3;
  LODWORD(v7) = header->var4;
  v8 = v6;
  v9 = v7;

  v5[28] = -[CUIRenditionMetrics initwithImageSize:scale:]([CUIRenditionMetrics alloc], v8, v9, [v5 internalScale]);
  var10 = header->var10;
  if (var10)
  {
    v48 = 0;
    headerCopy = header;
    v49 = &header->var11.var1[header->var11.var0] + var10;
    v11 = v49 + 4;
    v12 = &header->var11.var1[header->var11.var0 + 1];
    v13 = &OBJC_IVAR___CSIBitmapWrapper__targetPlatform;
    v14 = OBJC_CLASS___CUIPSDLayer_ptr;
    v15 = OBJC_CLASS___CUIPSDLayer_ptr;
    do
    {
      v16 = *v12;
      if (*v12 == 1021)
      {
        if (v12[2])
        {
          v32 = 0;
          v33 = v12 + 4;
          v34 = v13[349];
          do
          {
            v35 = [*(v5 + v34) objectAtIndex:v32];
            [v35 setHasSpecular:*v33 & 1];
            [v35 setTranslucency:*(v33 + 1)];
            [v35 setShadowOpacity:*(v33 + 3)];
            [v35 setShadowStyle:v33[2]];
            v33 += 5;
            ++v32;
          }

          while (v32 < v12[2]);
          v14 = OBJC_CLASS___CUIPSDLayer_ptr;
        }
      }

      else if (v16 == 1020)
      {
        if (v12[2])
        {
          v26 = 0;
          v27 = v12 + 4;
          v28 = v13[349];
          do
          {
            v29 = [*(v5 + v28) objectAtIndex:v26];
            LODWORD(v30) = v27[1];
            [v29 setBlurStrength:v30];
            [v29 setHasLightingEffects:*v27 & 1];
            [v29 setGathersSpecularByElement:(*v27 >> 1) & 1];
            if (v27[2])
            {
              v31 = [[NSString alloc] initWithBytes:v27 + 3 length:(v27[2] - 1) encoding:4];
            }

            else
            {
              v31 = 0;
            }

            [v29 setGradientOrColorName:v31];

            v27 = (v27 + v27[2] + 12);
            ++v26;
          }

          while (v26 < v12[2]);
          v14 = OBJC_CLASS___CUIPSDLayer_ptr;
          v15 = OBJC_CLASS___CUIPSDLayer_ptr;
        }
      }

      else if (v16 == 1012)
      {
        v17 = [[NSMutableArray alloc] initWithCapacity:v12[2]];
        v18 = v13[349];
        *(v5 + v18) = v17;
        if (v12[2])
        {
          v19 = v11;
          v20 = v15;
          v21 = 0;
          v22 = v12 + 4;
          do
          {
            v23 = objc_alloc_init(v14[17]);
            LODWORD(v24) = v22[3];
            LODWORD(v25) = v22[4];
            [v23 setFrame:{v22[1], v22[2], v24, v25}];
            [v23 setOpacity:*(v22 + 6)];
            [v23 setBlendMode:v22[5]];
            [v23 setFixedFrame:*v22 & 1];
            v54 = 0u;
            memset(v55, 0, sizeof(v55));
            v52 = 0u;
            v53 = 0u;
            v51 = 0u;
            __memcpy_chk();
            [v23 setReferenceKey:{objc_msgSend(objc_alloc(v20[16]), "initWithKeyList:", &v51)}];
            [*(v5 + v18) addObject:v23];

            v14 = OBJC_CLASS___CUIPSDLayer_ptr;
            v22 = (v22 + v22[7] + 32);
            ++v21;
          }

          while (v21 < v12[2]);
          v48 = 1;
          v15 = v20;
          v11 = v19;
          v13 = &OBJC_IVAR___CSIBitmapWrapper__targetPlatform;
        }

        else
        {
          v48 = 1;
        }
      }

      v12 = (v12 + v12[1] + 8);
    }

    while (v12 < v11);
    if ((v48 & 1) == 0)
    {
      v36 = headerCopy->var10;
      if (v36)
      {
        v37 = 4 - v36;
        do
        {
          v38 = &v49[v37];
          if (*&v49[v37] == 1009)
          {
            v5[29] = [[NSMutableArray alloc] initWithCapacity:*(v38 + 2)];
            if (*(v38 + 2))
            {
              v39 = 0;
              v40 = v38 + 16;
              do
              {
                v41 = objc_alloc_init(v14[17]);
                LODWORD(v42) = *v40;
                LODWORD(v43) = *(v40 + 1);
                LODWORD(v44) = *(v40 + 2);
                LODWORD(v45) = *(v40 + 3);
                [v41 setFrame:{v42, v43, v44, v45}];
                [v41 setOpacity:*(v40 + 5)];
                [v41 setBlendMode:*(v40 + 4)];
                v54 = 0u;
                memset(v55, 0, sizeof(v55));
                v52 = 0u;
                v53 = 0u;
                v51 = 0u;
                __memcpy_chk();
                [v41 setReferenceKey:{-[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", &v51)}];
                [v5[29] addObject:v41];

                v40 += *(v40 + 6) + 28;
                v14 = OBJC_CLASS___CUIPSDLayer_ptr;
                ++v39;
              }

              while (v39 < *(v38 + 2));
            }
          }

          v37 += *(v38 + 1) + 8;
        }

        while (v37 < 4);
      }
    }
  }

  return v5;
}

- (id)_initWithCSIHeader:version:.cold.1()
{
  OUTLINED_FUNCTION_35();
  +[NSAssertionHandler currentHandler];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v4 = NSStringFromSelector(v0);
  return [OUTLINED_FUNCTION_0_4() handleFailureInMethod:v2 object:v4 file:? lineNumber:? description:?];
}

@end