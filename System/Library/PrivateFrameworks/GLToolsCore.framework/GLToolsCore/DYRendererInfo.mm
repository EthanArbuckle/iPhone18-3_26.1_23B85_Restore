@interface DYRendererInfo
+ (BOOL)_dimensionsAreSupported:(id)a3 supportedDimensions:(id)a4;
+ (BOOL)_rangeIsSupported:(id)a3 supportedRange:(id)a4;
+ (id)rendererInfoWithGLIContext:(__GLIContextRec *)a3 dispatch:(__GLIFunctionDispatchRec *)a4 api:(int)a5;
- (BOOL)_supportsGLSLVersion:(id)a3;
- (BOOL)_supportsGLVersion:(id)a3;
- (BOOL)_supportsLimits:(id)a3;
- (BOOL)supportsCapabilitiesOfRenderer:(id)a3;
- (DYRendererInfo)initWithCoder:(id)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DYRendererInfo

+ (id)rendererInfoWithGLIContext:(__GLIContextRec *)a3 dispatch:(__GLIFunctionDispatchRec *)a4 api:(int)a5
{
  result = objc_opt_new();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v57 = __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke;
  v58 = &__block_descriptor_48_e18___NSString_12__0I8l;
  v59 = a4;
  v60 = a3;
  [result setVersion:__58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke(v56)];
  [v9 setGlslVersion:{(v57)(v56, 35724)}];
  [v9 setVendor:{(v57)(v56, 7936)}];
  [v9 setRenderer:{(v57)(v56, 7937)}];
  v24 = a5 - 3;
  if (a5 >= 3)
  {
    if ((a5 - 3) >= 2)
    {
      goto LABEL_13;
    }

    v61[0] = 0;
    (a4->get_integerv)(a3, 33309, v61);
    v15 = [MEMORY[0x277CBEB58] setWithCapacity:v61[0]];
    if (v61[0])
    {
      v16 = 0;
      do
      {
        v17 = (a4->get_stringi)(a3, 7939, v16);
        if (v17)
        {
          v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v17 encoding:1];
          [v15 addObject:v18];
        }

        v16 = (v16 + 1);
      }

      while (v16 < v61[0]);
    }

    v14 = v9;
    v13 = v15;
  }

  else
  {
    v10 = (v57)(v56, 7939);
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = [v10 mutableCopy];
    CFStringTrimWhitespace(v11);
    v12 = [(__CFString *)v11 componentsSeparatedByString:@" "];

    v13 = [MEMORY[0x277CBEB98] setWithArray:v12];
    v14 = v9;
  }

  [v14 setExtensions:v13];
LABEL_13:
  v19 = objc_opt_new();
  v20 = objc_opt_new();
  v21 = objc_opt_new();
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v52 = __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke_2;
  v53 = &__block_descriptor_48_e45_v28__0I8__NSMutableDictionary_12__NSString_20l;
  v54 = a4;
  v55 = a3;
  v45 = a3;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v47 = __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke_3;
  v48 = &__block_descriptor_48_e45_v28__0I8__NSMutableDictionary_12__NSString_20l;
  v49 = a4;
  v50 = a3;
  v40 = a3;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v42 = __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke_4;
  v43 = &__block_descriptor_48_e45_v28__0I8__NSMutableDictionary_12__NSString_20l;
  v44 = a4;
  v35 = a3;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v37 = __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke_5;
  v38 = &__block_descriptor_48_e48_v36__0I8__NSMutableDictionary_12__NSString_20Q28l;
  v39 = a4;
  v30 = a3;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v32 = __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke_6;
  v33 = &__block_descriptor_48_e48_v36__0I8__NSMutableDictionary_12__NSString_20Q28l;
  v34 = a4;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v26 = __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke_7;
  v27 = &unk_27916F0B8;
  v28 = v21;
  v29 = a4;
  v23 = v21;
  if (a5 > 2)
  {
    if (a5 == 3)
    {
      v61[0] = 0;
      (a4->get_integerv)(a3, 34921, v61);
      [v19 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", v61[0]), @"GL_MAX_VERTEX_ATTRIBS"}];
      v52(v51, 35658, v19, @"GL_MAX_VERTEX_UNIFORM_COMPONENTS");
      v52(v51, 35371, v19, @"GL_MAX_VERTEX_UNIFORM_BLOCKS");
      v52(v51, 37154, v19, @"GL_MAX_VERTEX_OUTPUT_COMPONENTS");
      v52(v51, 35660, v19, @"GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS");
      v52(v51, 35377, v19, @"GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS");
      v52(v51, 35372, v19, @"GL_MAX_GEOMETRY_UNIFORM_BLOCKS");
      v52(v51, 36319, v19, @"GL_MAX_GEOMETRY_UNIFORM_COMPONENTS");
      v52(v51, 37155, v19, @"GL_MAX_GEOMETRY_INPUT_COMPONENTS");
      v52(v51, 36320, v19, @"GL_MAX_GEOMETRY_OUTPUT_VERTICES");
      v52(v51, 36321, v19, @"GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS");
      v52(v51, 37156, v19, @"GL_MAX_GEOMETRY_OUTPUT_COMPONENTS");
      v52(v51, 35881, v19, @"GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS");
      v52(v51, 35378, v19, @"GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS");
      v52(v51, 35373, v19, @"GL_MAX_FRAGMENT_UNIFORM_BLOCKS");
      v52(v51, 35657, v19, @"GL_MAX_FRAGMENT_UNIFORM_COMPONENTS");
      v52(v51, 37157, v19, @"GL_MAX_FRAGMENT_INPUT_COMPONENTS");
      v52(v51, 35379, v19, @"GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS");
      v52(v51, 34852, v19, @"GL_MAX_DRAW_BUFFERS");
      v52(v51, 36063, v19, @"GL_MAX_COLOR_ATTACHMENTS");
      v52(v51, 35375, v19, @"GL_MAX_UNIFORM_BUFFER_BINDINGS");
      v52(v51, 35376, v19, @"GL_MAX_UNIFORM_BLOCK_SIZE");
      v52(v51, 35374, v19, @"GL_MAX_COMBINED_UNIFORM_BLOCKS");
      v52(v51, 33000, v19, @"GL_MAX_ELEMENTS_VERTICES");
      v52(v51, 33001, v19, @"GL_MAX_ELEMENTS_INDICES");
      v52(v51, 35979, v19, @"GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS");
      v52(v51, 35968, v19, @"GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS");
      v52(v51, 35978, v19, @"GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS");
      v52(v51, 34930, v19, @"GL_MAX_TEXTURE_IMAGE_UNITS");
      v52(v51, 35883, v19, @"GL_MAX_TEXTURE_BUFFER_SIZE");
      v52(v51, 35661, v19, @"GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS");
      v52(v51, 34076, v19, @"GL_MAX_CUBE_MAP_TEXTURE_SIZE");
      v52(v51, 34040, v19, @"GL_MAX_RECTANGLE_TEXTURE_SIZE");
      v52(v51, 32883, v19, @"GL_MAX_3D_TEXTURE_SIZE");
      v52(v51, 35071, v19, @"GL_MAX_ARRAY_TEXTURE_LAYERS");
      v52(v51, 37135, v19, @"GL_MAX_DEPTH_TEXTURE_SAMPLES");
      v52(v51, 37134, v19, @"GL_MAX_COLOR_TEXTURE_SAMPLES");
      v52(v51, 37136, v19, @"GL_MAX_INTEGER_SAMPLES");
      v52(v51, 36183, v19, @"GL_MAX_SAMPLES");
      v52(v51, 36441, v19, @"GL_MAX_SAMPLE_MASK_WORDS");
      v52(v51, 3378, v19, @"GL_MAX_CLIP_DISTANCES");
      v32(v31, 2834, v19, @"GL_POINT_SIZE_RANGE", 2);
      [v19 setObject:objc_msgSend(v19 forKey:{"objectForKey:", @"GL_MAX_CLIP_DISTANCES", @"GL_MAX_CLIP_PLANES"}];
      goto LABEL_23;
    }

    if (a5 != 4)
    {
      goto LABEL_23;
    }

    v61[0] = 0;
    (a4->get_integerv)(a3, 35375, v61);
    [v19 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", v61[0]), @"GL_MAX_UNIFORM_BUFFER_BINDINGS"}];
    v52(v51, 35376, v19, @"GL_MAX_UNIFORM_BLOCK_SIZE");
    v52(v51, 35371, v19, @"GL_MAX_VERTEX_UNIFORM_BLOCKS");
    v52(v51, 35373, v19, @"GL_MAX_FRAGMENT_UNIFORM_BLOCKS");
    v52(v51, 37154, v19, @"GL_MAX_VERTEX_OUTPUT_COMPONENTS");
    v52(v51, 35657, v19, @"GL_MAX_FRAGMENT_UNIFORM_COMPONENTS");
    v52(v51, 35379, v19, @"GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS");
    v52(v51, 35979, v19, @"GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS");
    v52(v51, 35978, v19, @"GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS");
    v52(v51, 32883, v19, @"GL_MAX_3D_TEXTURE_SIZE");
    v52(v51, 35071, v19, @"GL_MAX_ARRAY_TEXTURE_LAYERS");
    v52(v51, 36063, v19, @"GL_MAX_COLOR_ATTACHMENTS");
    v52(v51, 35374, v19, @"GL_MAX_COMBINED_UNIFORM_BLOCKS");
    v52(v51, 34852, v19, @"GL_MAX_DRAW_BUFFERS");
    v52(v51, 35968, v19, @"GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS");
    v52(v51, 35658, v19, @"GL_MAX_VERTEX_UNIFORM_COMPONENTS");
    v52(v51, 37157, v19, @"GL_MAX_FRAGMENT_INPUT_COMPONENTS");
    v52(v51, 33000, v19, @"GL_MAX_ELEMENTS_VERTICES");
    v52(v51, 33001, v19, @"GL_MAX_ELEMENTS_INDICES");
    v52(v51, 35659, v19, @"GL_MAX_VARYING_COMPONENTS");
    v52(v51, 35076, v19, @"GL_MIN_PROGRAM_TEXEL_OFFSET");
    v52(v51, 35077, v19, @"GL_MAX_PROGRAM_TEXEL_OFFSET");
LABEL_20:
    v52(v51, 34921, v19, @"GL_MAX_VERTEX_ATTRIBS");
    v52(v51, 36347, v19, @"GL_MAX_VERTEX_UNIFORM_VECTORS");
    v52(v51, 36348, v19, @"GL_MAX_VARYING_VECTORS");
    v52(v51, 35661, v19, @"GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS");
    v52(v51, 35660, v19, @"GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS");
    v52(v51, 34930, v19, @"GL_MAX_TEXTURE_IMAGE_UNITS");
    v52(v51, 36349, v19, @"GL_MAX_FRAGMENT_UNIFORM_VECTORS");
    v52(v51, 34076, v19, @"GL_MAX_CUBE_MAP_TEXTURE_SIZE");
    v52(v51, 3408, v19, @"GL_SUBPIXEL_BITS");
    v52(v51, 32936, v19, @"GL_SAMPLE_BUFFERS");
    v52(v51, 32937, v19, @"GL_SAMPLES");
    v32(v31, 33901, v19, @"GL_ALIASED_POINT_SIZE_RANGE", 2);
    v52(v51, 3410, v20, @"GL_RED_BITS");
    v52(v51, 3411, v20, @"GL_GREEN_BITS");
    v52(v51, 3412, v20, @"GL_BLUE_BITS");
    v52(v51, 3413, v20, @"GL_ALPHA_BITS");
    v52(v51, 3414, v20, @"GL_DEPTH_BITS");
    v52(v51, 3415, v20, @"GL_STENCIL_BITS");
    v26(v25, 35633, 36336, @"GL_VERTEX_SHADERGL_LOW_FLOAT");
    v26(v25, 35633, 36337, @"GL_VERTEX_SHADERGL_MEDIUM_FLOAT");
    v26(v25, 35633, 36338, @"GL_VERTEX_SHADERGL_HIGH_FLOAT");
    v26(v25, 35633, 36339, @"GL_VERTEX_SHADERGL_LOW_INT");
    v26(v25, 35633, 36340, @"GL_VERTEX_SHADERGL_MEDIUM_INT");
    v26(v25, 35633, 36341, @"GL_VERTEX_SHADERGL_HIGH_INT");
    v26(v25, 35632, 36336, @"GL_FRAGMENT_SHADERGL_LOW_FLOAT");
    v26(v25, 35632, 36337, @"GL_FRAGMENT_SHADERGL_MEDIUM_FLOAT");
    v26(v25, 35632, 36338, @"GL_FRAGMENT_SHADERGL_HIGH_FLOAT");
    v26(v25, 35632, 36339, @"GL_FRAGMENT_SHADERGL_LOW_INT");
    v26(v25, 35632, 36340, @"GL_FRAGMENT_SHADERGL_MEDIUM_INT");
    v26(v25, 35632, 36341, @"GL_FRAGMENT_SHADERGL_HIGH_INT");
    goto LABEL_23;
  }

  if (a5 == 1)
  {
    v61[0] = 0;
    (a4->get_integerv)(a3, 3377, v61);
    [v19 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", v61[0]), @"GL_MAX_LIGHTS"}];
    v52(v51, 3378, v19, @"GL_MAX_CLIP_PLANES");
    v52(v51, 3382, v19, @"GL_MAX_MODELVIEW_STACK_DEPTH");
    v52(v51, 3384, v19, @"GL_MAX_PROJECTION_STACK_DEPTH");
    v52(v51, 3385, v19, @"GL_MAX_TEXTURE_STACK_DEPTH");
    v52(v51, 34018, v19, @"GL_MAX_TEXTURE_UNITS");
    v52(v51, 34468, v19, @"GL_MAX_VERTEX_UNITS_OES");
    v52(v51, 34882, v19, @"GL_MAX_PALETTE_MATRICES_OES");
    v32(v31, 2834, v19, @"GL_SMOOTH_POINT_SIZE_RANGE", 2);
    v32(v31, 2850, v19, @"GL_SMOOTH_LINE_WIDTH_RANGE", 2);
    goto LABEL_23;
  }

  if (a5 == 2)
  {
    goto LABEL_20;
  }

LABEL_23:
  v52(v51, 3379, v19, @"GL_MAX_TEXTURE_SIZE");
  v52(v51, 34024, v19, @"GL_MAX_RENDERBUFFER_SIZE");
  v37(v36, 3386, v19, @"GL_MAX_VIEWPORT_DIMS", 2);
  v32(v31, 33902, v19, @"GL_ALIASED_LINE_WIDTH_RANGE", 2);
  v22 = [objc_msgSend(v9 "extensions")];
  if (v24 < 2 || v22)
  {
    v47(v46, 34045, v19, @"GL_MAX_TEXTURE_LOD_BIAS");
  }

  if ([objc_msgSend(v9 "extensions")])
  {
    v47(v46, 34047, v19, @"GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT");
  }

  if ([objc_msgSend(v9 "extensions")])
  {
    v52(v51, 35410, v19, @"GL_FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT");
  }

  if ([objc_msgSend(v9 "extensions")])
  {
    v52(v51, 3378, v19, @"GL_MAX_CLIP_DISTANCES");
    [v19 setObject:objc_msgSend(v19 forKey:{"objectForKey:", @"GL_MAX_CLIP_DISTANCES", @"GL_MAX_CLIP_PLANES"}];
  }

  if (v24 < 2 || ([objc_msgSend(v9 "extensions")] & 1) != 0 || objc_msgSend(objc_msgSend(v9, "extensions"), "containsObject:", @"GL_APPLE_sync"))
  {
    v42(v41, 37137, v19, @"GL_MAX_SERVER_WAIT_TIMEOUT");
  }

  v61[0] = 0;
  (a4->get_integerv)(a3, 34466, v61);
  v37(v36, 34467, v19, @"GL_COMPRESSED_TEXTURE_FORMATS", v61[0]);
  [v9 setLimits:{objc_msgSend(v19, "copy")}];

  [v9 setBitCounts:{objc_msgSend(v20, "copy")}];
  [v9 setShaderPrecisionsFormats:{objc_msgSend(v23, "copy")}];

    ;
  }

  return v9;
}

id __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 936))(*(a1 + 40));
  if (result)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:result encoding:1];

    return v2;
  }

  return result;
}

uint64_t __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = 0;
  (*(*(a1 + 32) + 832))(*(a1 + 40), a2, &v7);
  return [a3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", v7), a4}];
}

uint64_t __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = 0;
  (*(*(a1 + 32) + 824))(*(a1 + 40), a2, &v8);
  LODWORD(v6) = v8;
  return [a3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithFloat:", v6), a4}];
}

uint64_t __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = 0;
  (*(*(a1 + 32) + 6272))(*(a1 + 40), a2, &v7);
  return [a3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithLongLong:", v7), a4}];
}

uint64_t __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = (v13 - ((4 * a5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*(a1 + 32) + 832))(*(a1 + 40), a2, v8);
  if (a5)
  {
    v9 = (v13 - ((8 * a5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = a5;
    do
    {
      v11 = *v8++;
      *v9++ = [MEMORY[0x277CCABB0] numberWithInt:v11];
      --v10;
    }

    while (v10);
  }

  return [a3 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObjects:count:", v13 - ((8 * a5 + 15) & 0xFFFFFFFFFFFFFFF0), a5), a4}];
}

uint64_t __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke_6(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = (v14 - ((4 * a5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*(a1 + 32) + 824))(*(a1 + 40), a2, v8);
  if (a5)
  {
    v10 = (v14 - ((8 * a5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = a5;
    do
    {
      v12 = *v8++;
      LODWORD(v9) = v12;
      *v10++ = [MEMORY[0x277CCABB0] numberWithFloat:v9];
      --v11;
    }

    while (v11);
  }

  return [a3 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObjects:count:", v14 - ((8 * a5 + 15) & 0xFFFFFFFFFFFFFFF0), a5), a4}];
}

uint64_t __58__DYRendererInfo_rendererInfoWithGLIContext_dispatch_api___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 40) + 7008))(*(a1 + 48), a2, a3, &v9, v10);
  v6 = MEMORY[0x277CBEAC0];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  return [*(a1 + 32) setObject:objc_msgSend(v6 forKey:{"dictionaryWithObjectsAndKeys:", v7, @"range", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v10[0]), @"precision", 0), a4}];
}

- (DYRendererInfo)initWithCoder:(id)a3
{
  v18.receiver = self;
  v18.super_class = DYRendererInfo;
  v4 = [(DYRendererInfo *)&v18 init];
  if (v4)
  {
    v4->vendor = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"vendor"];
    v4->renderer = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"renderer"];
    v4->version = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    v4->glslVersion = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"glslVersion"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->extensions = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"extensions"}];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v4->limits = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, v10, objc_opt_class(), 0), @"limits"}];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v4->bitCounts = [a3 decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, v13, objc_opt_class(), 0), @"bitCounts"}];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v4->shaderPrecisionsFormats = [a3 decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithObjects:", v15, v16, objc_opt_class(), 0), @"shaderPrecisionsFormats"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->vendor forKey:@"vendor"];
  [a3 encodeObject:self->renderer forKey:@"renderer"];
  [a3 encodeObject:self->version forKey:@"version"];
  [a3 encodeObject:self->glslVersion forKey:@"glslVersion"];
  [a3 encodeObject:self->extensions forKey:@"extensions"];
  [a3 encodeObject:self->limits forKey:@"limits"];
  [a3 encodeObject:self->bitCounts forKey:@"bitCounts"];
  shaderPrecisionsFormats = self->shaderPrecisionsFormats;

  [a3 encodeObject:shaderPrecisionsFormats forKey:@"shaderPrecisionsFormats"];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = DYRendererInfo;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ vendor=%@ renderer=%@ version=%@ glsl version=%@\nextensions=%@\nlimits=%@\nbitCounts=%@\nshaderPrecisionsFormats=%@", -[DYRendererInfo description](&v3, sel_description), self->vendor, self->renderer, self->version, self->glslVersion, self->extensions, self->limits, self->bitCounts, self->shaderPrecisionsFormats];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYRendererInfo;
  [(DYRendererInfo *)&v3 dealloc];
}

+ (BOOL)_rangeIsSupported:(id)a3 supportedRange:(id)a4
{
  v6 = [a3 count];
  if (v6 == [a4 count])
  {
    if (![a3 count])
    {
      return 1;
    }

    v7 = 0;
    while (1)
    {
      v8 = [a3 objectAtIndex:0];
      v9 = [a3 objectAtIndex:1];
      v10 = [a4 objectAtIndex:0];
      v11 = [a4 objectAtIndex:1];
      if ([v10 compare:v8] == 1 || objc_msgSend(v11, "compare:", v9) == -1)
      {
        break;
      }

      v7 += 2;
      if (v7 >= [a3 count])
      {
        return 1;
      }
    }
  }

  return 0;
}

+ (BOOL)_dimensionsAreSupported:(id)a3 supportedDimensions:(id)a4
{
  v6 = [a3 count];
  if (v6 != [a4 count])
  {
    return 0;
  }

  if (![a3 count])
  {
    return 1;
  }

  v7 = 0;
  do
  {
    v8 = [objc_msgSend(a3 objectAtIndex:{v7), "compare:", objc_msgSend(a4, "objectAtIndex:", v7)}];
    v9 = v8 != 1;
    if (v8 == 1)
    {
      break;
    }

    ++v7;
  }

  while (v7 < [a3 count]);
  return v9;
}

- (BOOL)_supportsLimits:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__DYRendererInfo__supportsLimits___block_invoke;
  v5[3] = &unk_27916F0E0;
  v5[4] = self;
  v5[5] = &v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__DYRendererInfo__supportsLimits___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = [a2 isEqualToString:@"GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT"];
  if ((result & 1) == 0)
  {
    v9 = [*(*(a1 + 32) + 48) objectForKey:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = [v9 compare:a3];
      if (result != -1)
      {
        return result;
      }

      goto LABEL_4;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [objc_opt_class() description];
      [a2 cStringUsingEncoding:1];
      [v10 cStringUsingEncoding:1];
      v11 = dy_abort();
      return [(DYRendererInfo *)v11 _supportsGLVersion:v12, v13];
    }

    if ([a2 hasSuffix:@"RANGE"])
    {
      result = [objc_opt_class() _rangeIsSupported:a3 supportedRange:v9];
      if (result)
      {
        return result;
      }

LABEL_4:
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
      return result;
    }

    if ([a2 hasSuffix:@"DIMS"])
    {
      result = [objc_opt_class() _dimensionsAreSupported:a3 supportedDimensions:v9];
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = [a3 isEqualToArray:v9];
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

- (BOOL)_supportsGLVersion:(id)a3
{
  [-[NSArray objectAtIndex:](-[NSString componentsSeparatedByString:](self->version componentsSeparatedByString:{@" ", "objectAtIndex:", 2), "floatValue"}];
  v5 = v4;
  [objc_msgSend(objc_msgSend(a3 componentsSeparatedByString:{@" ", "objectAtIndex:", 2), "floatValue"}];
  return SLODWORD(v6) == SLODWORD(v5) && v6 <= v5;
}

- (BOOL)_supportsGLSLVersion:(id)a3
{
  [-[NSArray objectAtIndex:](-[NSString componentsSeparatedByString:](self->glslVersion componentsSeparatedByString:{@" ", "objectAtIndex:", 4), "floatValue"}];
  v5 = v4;
  [objc_msgSend(objc_msgSend(a3 componentsSeparatedByString:{@" ", "objectAtIndex:", 4), "floatValue"}];
  return v6 <= v5;
}

- (BOOL)supportsCapabilitiesOfRenderer:(id)a3
{
  if (!a3)
  {
    [DYRendererInfo supportsCapabilitiesOfRenderer:];
  }

  if (!-[DYRendererInfo _supportsGLVersion:](self, "_supportsGLVersion:", [a3 version]) || self->glslVersion && !-[DYRendererInfo _supportsGLSLVersion:](self, "_supportsGLSLVersion:", objc_msgSend(a3, "glslVersion")) || !objc_msgSend(objc_msgSend(a3, "extensions"), "isSubsetOfSet:", self->extensions))
  {
    return 0;
  }

  v5 = [a3 limits];

  return [(DYRendererInfo *)self _supportsLimits:v5];
}

@end