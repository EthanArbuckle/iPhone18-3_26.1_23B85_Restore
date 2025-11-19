@interface _CUIThemeModelSubmeshRendition
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (id)initForArchiving:(id)a3;
- (unint64_t)writeToData:(id)a3;
- (void)dealloc;
@end

@implementation _CUIThemeModelSubmeshRendition

- (id)initForArchiving:(id)a3
{
  v6.receiver = self;
  v6.super_class = _CUIThemeModelSubmeshRendition;
  v4 = [(_CUIThemeModelSubmeshRendition *)&v6 init];
  if (v4)
  {
    v4->_submesh = a3;
  }

  return v4;
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v39.receiver = self;
  v39.super_class = _CUIThemeModelSubmeshRendition;
  v6 = [(CUIThemeRendition *)&v39 _initWithCSIHeader:a3 version:*&a4];
  if (v6)
  {
    v7 = &a3->var0 + 4 * a3->var11.var0 + a3->var10;
    v9 = *(v7 + 45);
    v8 = (v7 + 180);
    if (v9 != 1297040467)
    {
      [_CUIThemeModelSubmeshRendition _initWithCSIHeader:a2 version:v6];
    }

    v37 = v8[2];
    v38 = v6;
    v36 = v8[4];
    v35 = v8[6];
    v34 = [[NSString alloc] initWithBytes:v8 + 45 length:v8[8] encoding:4];
    v33 = [[CUIMeshBuffer alloc] initWithBytes:v8 + v8[8] + 45 andLength:v8[9] ofType:2];
    v10 = v8 + v8[8] + *(v8 + 9) + 45;
    v11 = [[NSString alloc] initWithBytes:v10 + 20 length:*(v10 + 8) encoding:4];
    v12 = (v10 + 20 + *(v10 + 8));
    v13 = [[NSString alloc] initWithBytes:v12 + 2 length:*v12 encoding:4];
    NSClassFromString(v13);
    v14 = objc_opt_new();

    v15 = [objc_alloc(getMDLMaterialClass[0]()) initWithName:v11 scatteringFunction:v14];
    if (*(v10 + 12))
    {
      v16 = 0;
      v17 = (v12 + *v12 + 8);
      while (1)
      {
        v18 = v17[1];
        v19 = [[NSString alloc] initWithBytes:v17 + 4 length:*(v17 + 4) encoding:4];
        v20 = (v17 + v17[2] + 32);
        if (v18 > 5)
        {
          break;
        }

        switch(v18)
        {
          case 1:
            v25 = [[NSString alloc] initWithBytes:v20 length:*(v17 + 6) encoding:4];
            v26 = [getMDLTextureClass[0]() textureNamed:v25];

            if (!v26)
            {
              v22 = [objc_alloc(getMDLMaterialPropertyClass[0]()) initWithName:v19 semantic:*v17 string:v25];
              goto LABEL_24;
            }

            v27 = objc_alloc_init(getMDLTextureSamplerClass[0]());
            [v27 setTexture:v26];
            v28 = [objc_alloc(getMDLMaterialPropertyClass[0]()) initWithName:v19 semantic:*v17 textureSampler:v27];

            break;
          case 4:
            v29 = malloc_type_malloc(8 * *(v20 + 3), 0x100004000313F17uLL);
            SRGB = _CUIColorSpaceGetSRGB();
            v31 = CGColorCreate(SRGB, v29);
            v28 = [objc_alloc(getMDLMaterialPropertyClass[0]()) initWithName:v19 semantic:*v17 color:v31];
            CGColorRelease(v31);
            free(v29);
            break;
          case 5:
            v23 = objc_alloc(getMDLMaterialPropertyClass[0]());
            LODWORD(v24) = *v20;
            v22 = [v23 initWithName:v19 semantic:*v17 float:v24];
LABEL_24:
            v28 = v22;
            break;
          default:
LABEL_19:
            v22 = [objc_alloc(getMDLMaterialPropertyClass[0]()) initWithName:v19 semantic:*v17];
            goto LABEL_24;
        }

        [v15 setProperty:v28];
        v17 = (v20 + v17[3]);
        if (++v16 >= *(v10 + 12))
        {
          goto LABEL_26;
        }
      }

      if (v18 <= 7)
      {
        if (v18 == 6)
        {
          v22 = [objc_alloc(getMDLMaterialPropertyClass[0]()) initWithName:v19 semantic:*v17 float2:*v20];
        }

        else
        {
          v21 = *v20;
          v22 = [objc_alloc(getMDLMaterialPropertyClass[0]()) initWithName:v19 semantic:*v17 float3:v21];
        }

        goto LABEL_24;
      }

      if (v18 == 8)
      {
        v22 = [objc_alloc(getMDLMaterialPropertyClass[0]()) initWithName:v19 semantic:*v17 float4:*v20];
        goto LABEL_24;
      }

      if (v18 == 9)
      {
        v22 = [objc_alloc(getMDLMaterialPropertyClass[0]()) initWithName:v19 semantic:*v17 matrix4x4:{*(v20 + 4), *(v20 + 20), *(v20 + 36), *(v20 + 52)}];
        goto LABEL_24;
      }

      goto LABEL_19;
    }

LABEL_26:
    v6 = v38;
    v38[27] = [objc_alloc(getMDLSubmeshClass[0]()) initWithName:v34 indexBuffer:v33 indexCount:v37 indexType:v36 geometryType:v35 material:v15 topology:0];
  }

  return v6;
}

- (unint64_t)writeToData:(id)a3
{
  v3 = a3;
  v78 = 0;
  v5 = [a3 length];
  v75[0] = 0x14D4F4453;
  v76 = [(NSString *)[(MDLSubmesh *)self->_submesh name] length];
  v75[1] = [(MDLSubmesh *)self->_submesh indexCount];
  v75[2] = [(MDLSubmesh *)self->_submesh indexType];
  v75[3] = [(MDLSubmesh *)self->_submesh geometryType];
  v77 = [-[MDLSubmesh indexBuffer](self->_submesh "indexBuffer")];
  [v3 appendBytes:v75 length:45];
  v6 = [(NSString *)[(MDLSubmesh *)self->_submesh name] UTF8String];
  [v3 appendBytes:v6 length:v76];
  v7 = [objc_msgSend(-[MDLSubmesh indexBuffer](self->_submesh "indexBuffer")];
  [v3 appendBytes:v7 length:v77];
  if ([(MDLSubmesh *)self->_submesh material])
  {
    v57 = v5;
    v58 = v3;
    v56 = +[NSMutableData data];
    *&v74[1] = 0;
    v8 = [(MDLSubmesh *)self->_submesh material];
    v78 = 1;
    v73 = [(MDLMaterial *)v8 materialFace];
    *v74 = [(NSString *)[(MDLMaterial *)v8 name] length];
    [(MDLMaterial *)v8 scatteringFunction];
    v9 = objc_opt_class();
    v72 = [NSStringFromClass(v9) length];
    v10 = +[NSMutableData data];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v11 = [(MDLMaterial *)v8 countByEnumeratingWithState:&v68 objects:v79 count:16];
    if (!v11)
    {
      v13 = 0;
      goto LABEL_36;
    }

    v12 = v11;
    v13 = 0;
    v14 = *v69;
    v60 = v8;
    while (1)
    {
      v59 = v13;
      for (i = 0; i != v12; ++i)
      {
        if (*v69 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v68 + 1) + 8 * i);
        v66 = 0u;
        v67 = 0u;
        *&v66 = [v16 semantic];
        *(&v66 + 1) = [v16 type];
        *&v67 = [objc_msgSend(v16 "name")];
        v17 = +[NSMutableData data];
        v18 = [v16 type];
        if (v18 <= 5)
        {
          if (v18 > 3)
          {
            if (v18 == 4)
            {
              v61 = 0uLL;
              v27 = [v16 color];
              DWORD2(v61) &= 0xFFFFFF00;
              HIDWORD(v61) = CGColorGetNumberOfComponents(v27);
              if (HIDWORD(v61))
              {
                Components = CGColorGetComponents(v27);
              }

              else
              {
                Components = 0;
              }

              [v17 appendBytes:&v61 length:16];
              v22 = 8 * HIDWORD(v61);
LABEL_30:
              v21 = v17;
              v20 = Components;
            }

            else
            {
              v61 = 0uLL;
              [v16 floatValue];
              LODWORD(v61) = v19;
              v20 = &v61;
              v21 = v17;
              v22 = 4;
            }

LABEL_31:
            [v21 appendBytes:v20 length:v22];
            goto LABEL_32;
          }

          if (v18 == 1)
          {
            Components = [objc_msgSend(v16 "stringValue")];
            v22 = [objc_msgSend(v16 "stringValue")];
            goto LABEL_30;
          }

          if (v18 == 3)
          {
            NSLog(&cfstr_DoSomethingFor_0.isa);
          }
        }

        else
        {
          if (v18 <= 7)
          {
            v61 = 0uLL;
            if (v18 == 6)
            {
              [v16 float2Value];
              LODWORD(v61) = v32;
              [v16 float2Value];
              DWORD1(v61) = v33;
              v20 = &v61;
              v21 = v17;
              v22 = 8;
            }

            else
            {
              [v16 float3Value];
              LODWORD(v61) = v23;
              [v16 float3Value];
              DWORD1(v61) = v24;
              [v16 float3Value];
              DWORD2(v61) = v25;
              v20 = &v61;
              v21 = v17;
              v22 = 12;
            }

            goto LABEL_31;
          }

          switch(v18)
          {
            case 8:
              v61 = 0uLL;
              [v16 float4Value];
              LODWORD(v61) = v28;
              [v16 float4Value];
              DWORD1(v61) = v29;
              [v16 float4Value];
              DWORD2(v61) = v30;
              [v16 float4Value];
              HIDWORD(v61) = v31;
              v20 = &v61;
              v21 = v17;
              v22 = 16;
              goto LABEL_31;
            case 9:
              v65 = 0;
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              [v16 matrix4x4];
              DWORD1(v61) = v34;
              [v16 matrix4x4];
              DWORD2(v61) = v35;
              [v16 matrix4x4];
              *(&v61 | 0xC) = v36;
              [v16 matrix4x4];
              LODWORD(v62) = v37;
              [v16 matrix4x4];
              DWORD1(v62) = v38;
              [v16 matrix4x4];
              DWORD2(v62) = v39;
              [v16 matrix4x4];
              HIDWORD(v62) = v40;
              [v16 matrix4x4];
              LODWORD(v63) = v41;
              [v16 matrix4x4];
              DWORD1(v63) = v42;
              [v16 matrix4x4];
              DWORD2(v63) = v43;
              [v16 matrix4x4];
              HIDWORD(v63) = v44;
              [v16 matrix4x4];
              v8 = v60;
              LODWORD(v64) = v45;
              [v16 matrix4x4];
              DWORD1(v64) = v46;
              [v16 matrix4x4];
              DWORD2(v64) = v47;
              [v16 matrix4x4];
              HIDWORD(v64) = v48;
              [v16 matrix4x4];
              v65 = v49;
              [v17 appendBytes:&v61 length:68];
LABEL_27:
              NSLog(&cfstr_DoSomethingFor.isa);
              break;
            case 10:
              goto LABEL_27;
          }
        }

LABEL_32:
        *(&v67 + 1) = [v17 length];
        [v10 appendBytes:&v66 length:32];
        v50 = [objc_msgSend(v16 "name")];
        [v10 appendBytes:v50 length:v67];
        v51 = [v17 bytes];
        [v10 appendBytes:v51 length:DWORD2(v67)];
      }

      v13 = &v12[v59];
      v12 = [(MDLMaterial *)v8 countByEnumeratingWithState:&v68 objects:v79 count:16];
      if (!v12)
      {
LABEL_36:
        *&v74[1] = v13;
        [v56 appendBytes:&v73 length:20];
        v52 = [(NSString *)[(MDLMaterial *)v8 name] UTF8String];
        [v56 appendBytes:v52 length:v74[0]];
        [v56 appendBytes:&v72 length:8];
        [(MDLMaterial *)v8 scatteringFunction];
        v53 = objc_opt_class();
        v54 = [NSStringFromClass(v53) UTF8String];
        [v56 appendBytes:v54 length:v72];
        [v56 appendData:v10];
        v3 = v58;
        [v58 appendData:v56];
        v5 = v57;
        return [v3 length] - v5;
      }
    }
  }

  return [v3 length] - v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIThemeModelSubmeshRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

@end