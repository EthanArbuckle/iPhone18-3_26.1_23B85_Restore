@interface DYMTLTextureResize
+ (id)forDevice:(id)a3;
- (DYMTLTextureResize)initWithDevice:(id)a3;
- (id)_texture2DFromTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 depthPlane:(unint64_t)a6 commandBuffer:(id)a7;
- (id)dataTypeForReturnType:(id)a3;
- (id)generateFragmentFunctionForPixelFormat:(unint64_t)a3 texture:(id)a4;
- (id)generateThumbnailFromTexture:(id)a3 commandBuffer:(id)a4 resolution:(id *)a5 withFence:(id)a6;
- (id)resolveMultisampleTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 depthPlane:(unint64_t)a6 commandBuffer:(id)a7;
- (id)returnTypeForPixelFormat:(unint64_t)a3;
- (id)stencilTextureFromTexture:(id)a3 commandBuffer:(id)a4;
- (id)textureFromTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 depthPlane:(unint64_t)a6 commandBuffer:(id)a7;
- (id)textureTypeForPixelFormat:(unint64_t)a3;
- (void)resizeTexture:(id)a3 resolution:(id *)a4 level:(unint64_t)a5 slice:(unint64_t)a6 depthPlane:(unint64_t)a7 inBuffer:(id)a8 withType:(unsigned int)a9 completion:(id)a10;
@end

@implementation DYMTLTextureResize

- (DYMTLTextureResize)initWithDevice:(id)a3
{
  v5 = a3;
  v42.receiver = self;
  v42.super_class = DYMTLTextureResize;
  v6 = [(DYMTLTextureResize *)&v42 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    device = v7->_device;
    v41 = 0;
    v9 = [(MTLDevice *)device newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal;\nstruct VertexOutput\n{\n    vec<float options:4> pos [[position]];\n    vec<float error:2> uv;\n};\nvertex VertexOutput passthroughVertex(uint vid [[ vertex_id ]], \n                                      constant vec<float, 4> *pos_data [[ buffer(0) ]], \n                                      constant vec<float, 2> *uv_data [[ buffer(1) ]])\n{\n    VertexOutput out;\n    out.pos = pos_data[vid];\n    out.uv = uv_data[vid];\n    return out;\n}\nfragment float4 texturedQuadFragmentDepth(VertexOutput in [[ stage_in ]], \n                                     depth2d<float> tex [[ texture(0) ]], \n                                     sampler samp [[ sampler(0) ]])\n{\nfloat sample = tex.sample(samp, in.uv);\nreturn float4(sample, sample, sample, 1.0);\n}\nfragment float4 texturedQuadFragmentStencil(VertexOutput in [[ stage_in ]], \n                                     depth2d<float> tex [[ texture(0) ]], \n                                     sampler samp [[ sampler(0) ]])\n{\nfloat sample = tex.sample(samp, in.uv);\nreturn float4(sample, sample, sample, 1.0);\n}\nfragment float4 texturedQuadFragment(VertexOutput in [[ stage_in ]], \n                                     texture2d<float> tex [[ texture(0) ]], \n                                     sampler samp [[ sampler(0) ]])\n{\nreturn tex.sample(samp, in.uv);\n}", 0, &v41];
    v10 = v41;
    if (!v9)
    {
      __assert_rtn("[DYMTLTextureResize initWithDevice:]", ", 0, "_quadLibrary != nil"");
    }

    v11 = [v9 newFunctionWithName:@"passthroughVertex"];
    v12 = [v9 newFunctionWithName:@"texturedQuadFragment"];
    thumbnailColorFragment = v7->_thumbnailColorFragment;
    v7->_thumbnailColorFragment = v12;

    v14 = [v9 newFunctionWithName:@"texturedQuadFragmentDepth"];
    thumbnailDepthFragment = v7->_thumbnailDepthFragment;
    v7->_thumbnailDepthFragment = v14;

    v16 = [v9 newFunctionWithName:@"texturedQuadFragmentStencil"];
    thumbnailStencilFragment = v7->_thumbnailStencilFragment;
    v7->_thumbnailStencilFragment = v16;

    v18 = [(MTLDevice *)v7->_device newBufferWithBytes:&[DYMTLTextureResize initWithDevice:]::posData length:96 options:0];
    quadPositions = v7->_quadPositions;
    v7->_quadPositions = v18;

    v20 = [(MTLDevice *)v7->_device newBufferWithBytes:&[DYMTLTextureResize initWithDevice:]::texCoords length:48 options:0];
    quadTexCoords = v7->_quadTexCoords;
    v7->_quadTexCoords = v20;

    v22 = [(MTLDevice *)v7->_device newBufferWithBytes:&[DYMTLTextureResize initWithDevice:]::indexData length:24 options:0];
    quadIndicies = v7->_quadIndicies;
    v7->_quadIndicies = v22;

    v24 = objc_opt_new();
    thumbnailRenderPass = v7->_thumbnailRenderPass;
    v7->_thumbnailRenderPass = v24;

    v26 = objc_opt_new();
    [v26 setStencilCompareFunction:7];
    [v26 setReadMask:0];
    [v26 setWriteMask:0];
    v27 = objc_alloc_init(MEMORY[0x277CD6D60]);
    [v27 setDepthCompareFunction:7];
    [v27 setFrontFaceStencil:v26];
    [v27 setBackFaceStencil:v26];
    [v27 setDepthWriteEnabled:0];
    v28 = [(MTLDevice *)v7->_device newDepthStencilStateWithDescriptor:v27];
    thumbnailDepthStencilState = v7->_thumbnailDepthStencilState;
    v7->_thumbnailDepthStencilState = v28;

    v30 = objc_opt_new();
    thumbnailPipelineDescriptor = v7->_thumbnailPipelineDescriptor;
    v7->_thumbnailPipelineDescriptor = v30;

    [(MTLRenderPipelineDescriptor *)v7->_thumbnailPipelineDescriptor setLabel:@"Thumbnail Render"];
    [(MTLRenderPipelineDescriptor *)v7->_thumbnailPipelineDescriptor setVertexFunction:v11];
    v32 = objc_opt_new();
    [v32 setMinFilter:1];
    [v32 setMagFilter:1];
    [v32 setMipFilter:2];
    [v32 setMaxAnisotropy:1];
    [v32 setSAddressMode:0];
    [v32 setTAddressMode:0];
    [v32 setRAddressMode:0];
    [v32 setNormalizedCoordinates:1];
    [v32 setLodMinClamp:0.0];
    LODWORD(v33) = 2139095039;
    [v32 setLodMaxClamp:v33];
    v34 = [(MTLDevice *)v7->_device newSamplerStateWithDescriptor:v32];
    downscaleSampler = v7->_downscaleSampler;
    v7->_downscaleSampler = v34;

    [v32 setMinFilter:0];
    [v32 setMagFilter:0];
    [v32 setMipFilter:0];
    v36 = [(MTLDevice *)v7->_device newSamplerStateWithDescriptor:v32];
    upscaleSampler = v7->_upscaleSampler;
    v7->_upscaleSampler = v36;

    v38 = objc_opt_new();
    fragmentFunctionForPixelFormatCache = v7->_fragmentFunctionForPixelFormatCache;
    v7->_fragmentFunctionForPixelFormatCache = v38;
  }

  return v7;
}

- (id)stencilTextureFromTexture:(id)a3 commandBuffer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 pixelFormat] == 260)
  {
    if (([v6 usage] & 0x10) == 0)
    {
      v8 = MakeMTLTextureDescriptorFromTexture(v6);
      [v8 setUsage:17];
      v9 = [(DYMTLTextureResize *)self device];
      v10 = [v9 newTextureWithDescriptor:v8];

      v11 = [v7 blitCommandEncoder];
      memset(v18, 0, sizeof(v18));
      v17[0] = [v6 width];
      v17[1] = [v6 height];
      v17[2] = 1;
      memset(v16, 0, sizeof(v16));
      [v11 copyFromTexture:v6 sourceSlice:0 sourceLevel:0 sourceOrigin:v18 sourceSize:v17 toTexture:v10 destinationSlice:0 destinationLevel:0 destinationOrigin:v16];
      [v11 endEncoding];

      v6 = v10;
    }

    v12 = [v6 pixelFormat];
    if (v12 == 260)
    {
      v13 = 261;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v6 newTextureViewWithPixelFormat:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)resolveMultisampleTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 depthPlane:(unint64_t)a6 commandBuffer:(id)a7
{
  v12 = a3;
  v13 = a7;
  if ([v12 textureType] != 4 && objc_msgSend(v12, "textureType") != 8)
  {
    v16 = 0;
    goto LABEL_15;
  }

  v14 = MakeMTLTextureDescriptorFromTexture(v12);
  [v14 setUsage:1];
  v15 = [(DYMTLTextureResize *)self device];
  v16 = [v15 newTextureWithDescriptor:v14];

  v17 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  v18 = [v12 pixelFormat];
  if (v18 <= 252)
  {
    if (v18 == 250 || v18 == 252)
    {
      v19 = [v17 depthAttachment];
      [v19 setTexture:v12];
      [v19 setLevel:a5];
      [v19 setSlice:a4];
      [v19 setDepthPlane:a6];
      [v19 setResolveTexture:v16];
      [v19 setLoadAction:1];
      [v19 setStoreAction:2];
      goto LABEL_14;
    }

LABEL_13:
    v21 = [v17 colorAttachments];
    v19 = [v21 objectAtIndexedSubscript:0];

    [v19 setTexture:v12];
    [v19 setLevel:a5];
    [v19 setSlice:a4];
    [v19 setDepthPlane:a6];
    [v19 setResolveTexture:v16];
    [v19 setLoadAction:1];
    [v19 setStoreAction:2];
    goto LABEL_14;
  }

  if (v18 != 253)
  {
    if (v18 == 260)
    {
      v19 = [v17 depthAttachment];
      [v19 setTexture:v12];
      [v19 setLevel:a5];
      [v19 setSlice:a4];
      [v19 setDepthPlane:a6];
      [v19 setResolveTexture:v16];
      [v19 setLoadAction:1];
      [v19 setStoreAction:2];
      v20 = [v17 stencilAttachment];
      [v20 setTexture:v12];
      [v20 setLevel:a5];
      [v20 setSlice:a4];
      [v20 setDepthPlane:a6];
      [v20 setResolveTexture:v16];
      [v20 setLoadAction:1];
      [v20 setStoreAction:2];

      goto LABEL_14;
    }

    if (v18 != 261)
    {
      goto LABEL_13;
    }
  }

  v19 = [v17 stencilAttachment];
  [v19 setTexture:v12];
  [v19 setLevel:a5];
  [v19 setSlice:a4];
  [v19 setDepthPlane:a6];
  [v19 setResolveTexture:v16];
  [v19 setLoadAction:1];
  [v19 setStoreAction:2];
LABEL_14:

  v22 = [v13 renderCommandEncoderWithDescriptor:v17];
  [v22 endEncoding];

LABEL_15:

  return v16;
}

- (id)returnTypeForPixelFormat:(unint64_t)a3
{
  result = 0;
  switch(a3)
  {
    case 1uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0x14uLL:
    case 0x16uLL:
    case 0x19uLL:
    case 0x37uLL:
      result = @"float";
      break;
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x15uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3DuLL:
    case 0x42uLL:
    case 0x43uLL:
    case 0x44uLL:
    case 0x45uLL:
    case 0x4BuLL:
    case 0x4CuLL:
    case 0x4DuLL:
    case 0x4EuLL:
    case 0x4FuLL:
    case 0x52uLL:
    case 0x53uLL:
    case 0x54uLL:
    case 0x55uLL:
    case 0x56uLL:
    case 0x57uLL:
    case 0x58uLL:
    case 0x59uLL:
    case 0x5FuLL:
    case 0x60uLL:
    case 0x61uLL:
    case 0x62uLL:
    case 0x63uLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6FuLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
    case 0x77uLL:
    case 0x78uLL:
    case 0x79uLL:
    case 0x7AuLL:
      return result;
    case 0xDuLL:
    case 0x17uLL:
    case 0x35uLL:
      result = @"uint";
      break;
    case 0xEuLL:
    case 0x18uLL:
    case 0x36uLL:
      result = @"int";
      break;
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x3CuLL:
    case 0x3EuLL:
    case 0x41uLL:
    case 0x69uLL:
      result = @"float2";
      break;
    case 0x21uLL:
    case 0x3FuLL:
    case 0x67uLL:
      result = @"uint2";
      break;
    case 0x22uLL:
    case 0x40uLL:
    case 0x68uLL:
      result = @"int2";
      break;
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x46uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x50uLL:
    case 0x51uLL:
    case 0x5AuLL:
    case 0x5CuLL:
    case 0x5DuLL:
    case 0x5EuLL:
    case 0x6EuLL:
    case 0x70uLL:
    case 0x73uLL:
    case 0x7DuLL:
      goto LABEL_2;
    case 0x49uLL:
    case 0x5BuLL:
    case 0x71uLL:
    case 0x7BuLL:
      result = @"uint4";
      break;
    case 0x4AuLL:
    case 0x72uLL:
    case 0x7CuLL:
      result = @"int4";
      break;
    default:
      if (a3 - 554 < 2)
      {
LABEL_2:
        result = @"float4";
      }

      break;
  }

  return result;
}

- (id)textureTypeForPixelFormat:(unint64_t)a3
{
  result = 0;
  switch(a3)
  {
    case 1uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0x14uLL:
    case 0x16uLL:
    case 0x19uLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x37uLL:
    case 0x3CuLL:
    case 0x3EuLL:
    case 0x41uLL:
    case 0x46uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x50uLL:
    case 0x51uLL:
    case 0x5AuLL:
    case 0x5CuLL:
    case 0x5DuLL:
    case 0x5EuLL:
    case 0x69uLL:
    case 0x6EuLL:
    case 0x70uLL:
    case 0x73uLL:
    case 0x7DuLL:
      goto LABEL_2;
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x15uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3DuLL:
    case 0x42uLL:
    case 0x43uLL:
    case 0x44uLL:
    case 0x45uLL:
    case 0x4BuLL:
    case 0x4CuLL:
    case 0x4DuLL:
    case 0x4EuLL:
    case 0x4FuLL:
    case 0x52uLL:
    case 0x53uLL:
    case 0x54uLL:
    case 0x55uLL:
    case 0x56uLL:
    case 0x57uLL:
    case 0x58uLL:
    case 0x59uLL:
    case 0x5FuLL:
    case 0x60uLL:
    case 0x61uLL:
    case 0x62uLL:
    case 0x63uLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6FuLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
    case 0x77uLL:
    case 0x78uLL:
    case 0x79uLL:
    case 0x7AuLL:
      return result;
    case 0xDuLL:
    case 0x17uLL:
    case 0x21uLL:
    case 0x35uLL:
    case 0x3FuLL:
    case 0x49uLL:
    case 0x5BuLL:
    case 0x67uLL:
    case 0x71uLL:
    case 0x7BuLL:
      result = @"uint";
      break;
    case 0xEuLL:
    case 0x18uLL:
    case 0x22uLL:
    case 0x36uLL:
    case 0x40uLL:
    case 0x4AuLL:
    case 0x68uLL:
    case 0x72uLL:
    case 0x7CuLL:
      result = @"int";
      break;
    default:
      if (a3 - 554 < 2)
      {
LABEL_2:
        result = @"float";
      }

      break;
  }

  return result;
}

- (id)dataTypeForReturnType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"int"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"uint") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"float"))
  {
    v4 = @".x";
  }

  else if ([v3 isEqualToString:@"int2"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"uint2") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"float2"))
  {
    v4 = @".xy";
  }

  else if (([v3 isEqualToString:@"int4"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"uint4") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"float4"))
  {
    v4 = @".xyzw";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)generateFragmentFunctionForPixelFormat:(unint64_t)a3 texture:(id)a4
{
  v6 = a4;
  fragmentFunctionForPixelFormatCache = self->_fragmentFunctionForPixelFormatCache;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)fragmentFunctionForPixelFormatCache objectForKeyedSubscript:v8];

  if (v9)
  {
    goto LABEL_19;
  }

  v10 = [(DYMTLTextureResize *)self returnTypeForPixelFormat:a3];
  v11 = [(DYMTLTextureResize *)self textureTypeForPixelFormat:a3];
  v12 = [(DYMTLTextureResize *)self dataTypeForReturnType:v10];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 isSparse] & 1) == 0)
  {
    v13 = @"tex.sparse_sample(samp, in.uv).value()";
  }

  else
  {
    v13 = @"tex.sample(samp, in.uv)";
  }

  v14 = !v10 || v11 == 0;
  v15 = v14 || v12 == 0;
  v16 = !v15;
  if (v15)
  {
    v9 = 0;
  }

  else
  {
    v24 = v16;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"#include <metal_stdlib>\nusing namespace metal\n\nstruct VertexOutput\n{\n    vec<float, 4> pos [[position]];\n    vec<float, 2> uv;\n};\n\n\nfragment %@ texturedQuadFragment(VertexOutput in [[ stage_in ]], \n                                     texture2d<%@> tex [[ texture(0) ]], \n                                     sampler samp [[ sampler(0) ]])\n{\n   return %@%@;\n}\n", v10, v11, v13, v12];;
    device = self->_device;
    v27 = 0;
    v26 = v17;
    v19 = [(MTLDevice *)device newLibraryWithSource:v17 options:0 error:&v27];
    v25 = v27;
    v9 = [v19 newFunctionWithName:@"texturedQuadFragment"];
    v20 = self->_fragmentFunctionForPixelFormatCache;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v20 setObject:v9 forKey:v21];

    v16 = v24;
  }

  if (v16)
  {
LABEL_19:
    v9 = v9;
    v22 = v9;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)generateThumbnailFromTexture:(id)a3 commandBuffer:(id)a4 resolution:(id *)a5 withFence:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = 0;
  if (!v10 || !v11)
  {
    goto LABEL_33;
  }

  v14 = [v10 width];
  v15 = [v10 height];
  v16 = v15;
  var0 = a5->var0;
  if (v14 < a5->var0 && v15 < a5->var1 && a5->var2)
  {
    v18 = var0 / v14;
    v14 = (v18 * v14);
    v16 = (v18 * v15);
    v19 = 24;
  }

  else
  {
    v19 = 16;
  }

  v53 = v19;
  if ((v14 > var0 || v16 > a5->var1) && a5->var2)
  {
    var1 = a5->var1;
    if (v16 <= var1)
    {
      if (v14 <= var0)
      {
LABEL_17:
        if (v14 <= 8)
        {
          v14 = 8;
        }

        if (v16 <= 0x10)
        {
          v16 = 16;
        }

        goto LABEL_21;
      }

      v24 = var0;
      v26 = v14;
    }

    else
    {
      v21 = [v10 height];
      v22 = [v10 width];
      v23 = [v10 height];
      v24 = var0;
      v25 = var1 / v21;
      v14 = (v25 * v22);
      v16 = (v25 * v23);
      v26 = v14;
      if (v14 <= var0)
      {
        goto LABEL_17;
      }
    }

    v27 = v24 / v26;
    v14 = (v27 * v26);
    v16 = (v27 * v16);
    goto LABEL_17;
  }

LABEL_21:
  v28 = [v10 pixelFormat];
  v29 = v28;
  if (v28 == 1)
  {
    v29 = 10;
  }

  else if ((v28 - 1) >= 0x7D)
  {
    if ((v28 - 250) > 0xB)
    {
      v29 = 90;
    }

    else
    {
      v29 = qword_257AB6F30[v28 - 250];
    }
  }

  v30 = MakeMTLTextureDescriptorFromTexture(v10);
  [v30 setPixelFormat:v29];
  [v30 setWidth:v14];
  [v30 setHeight:v16];
  [v30 setUsage:4];
  [v30 setStorageMode:0];
  v31 = [(DYMTLTextureResize *)self device];
  v32 = [v31 newTextureWithDescriptor:v30];

  v33 = objc_opt_new();
  v34 = [v33 colorAttachments];
  v35 = [v34 objectAtIndexedSubscript:0];
  [v35 setTexture:v32];

  v36 = [v33 colorAttachments];
  v37 = [v36 objectAtIndexedSubscript:0];
  [v37 setLoadAction:2];

  v38 = [v33 colorAttachments];
  v39 = [v38 objectAtIndexedSubscript:0];
  [v39 setStoreAction:1];

  v40 = [(MTLRenderPipelineDescriptor *)self->_thumbnailPipelineDescriptor colorAttachments];
  v41 = [v40 objectAtIndexedSubscript:0];
  [v41 setPixelFormat:v29];

  v42 = [(MTLRenderPipelineDescriptor *)self->_thumbnailPipelineDescriptor colorAttachments];
  v43 = [v42 objectAtIndexedSubscript:0];
  [v43 setBlendingEnabled:0];

  v44 = [(DYMTLTextureResize *)self generateFragmentFunctionForPixelFormat:v29 texture:v10];
  [(MTLRenderPipelineDescriptor *)self->_thumbnailPipelineDescriptor setFragmentFunction:v44];

  v45 = [(DYMTLTextureResize *)self device];
  thumbnailPipelineDescriptor = self->_thumbnailPipelineDescriptor;
  v57 = 0;
  v47 = [v45 newRenderPipelineStateWithDescriptor:thumbnailPipelineDescriptor error:&v57];
  v48 = v57;
  thumbnailPipeline = self->_thumbnailPipeline;
  self->_thumbnailPipeline = v47;

  if (self->_thumbnailPipeline)
  {
    v50 = [v11 renderCommandEncoderWithDescriptor:v33];
    v51 = v50;
    if (v12)
    {
      [v50 waitForFence:v12 beforeStages:2];
    }

    [v51 setRenderPipelineState:self->_thumbnailPipeline];
    [v51 setDepthStencilState:self->_thumbnailDepthStencilState];
    [v51 setFragmentSamplerState:*(&self->super.isa + v54) atIndex:0];
    [v51 setVertexBuffer:self->_quadPositions offset:0 atIndex:0];
    [v51 setVertexBuffer:self->_quadTexCoords offset:0 atIndex:1];
    v55[0] = 0;
    v55[1] = 0;
    *&v55[2] = [v32 width];
    *&v55[3] = [v32 height];
    v56 = xmmword_257AB6E70;
    [v51 setViewport:v55];
    [v51 setFragmentTexture:v10 atIndex:0];
    [v51 drawIndexedPrimitives:3 indexCount:6 indexType:1 indexBuffer:self->_quadIndicies indexBufferOffset:0];
    [v51 endEncoding];
    v13 = v32;
  }

  else
  {
    v13 = 0;
  }

LABEL_33:

  return v13;
}

- (id)textureFromTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 depthPlane:(unint64_t)a6 commandBuffer:(id)a7
{
  v11 = a3;
  v12 = a7;
  if (![v11 width] || !objc_msgSend(v11, "height"))
  {
    v20 = 0;
    goto LABEL_27;
  }

  if ([v11 textureType] == 2 && objc_msgSend(v11, "mipmapLevelCount") == 1 && (objc_msgSend(v11, "usage") & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v11, "isSparse") & 1) == 0)
  {
    v23 = v11;
    goto LABEL_34;
  }

  if ([v11 usage] & 1) != 0 && objc_msgSend(v11, "textureType") && objc_msgSend(v11, "textureType") != 1 && objc_msgSend(v11, "textureType") != 7 && objc_msgSend(v11, "textureType") != 9 && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v11, "isSparse")))
  {
    v23 = [v11 newTextureViewWithPixelFormat:objc_msgSend(v11 textureType:"pixelFormat") levels:2 slices:a5, 1, a4, 1];
LABEL_34:
    v20 = v23;
    goto LABEL_27;
  }

  v13 = [v11 width];
  v14 = [v11 height];
  if (a5)
  {
    v15 = a5;
    do
    {
      if (v13 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 >>= 1;
      }

      if (v14 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 >>= 1;
      }

      --v15;
    }

    while (v15);
  }

  v16 = MakeMTLTextureDescriptorFromTexture(v11);
  [v16 setWidth:v13];
  [v16 setHeight:v14];
  [v16 setUsage:17];
  if ([v11 textureType] == 9)
  {
    v17 = [(DYMTLTextureResize *)self device];
    v18 = [v17 maxTextureWidth2D];

    if (v13 > v18)
    {
      [v16 setWidth:v18];
      v13 = v18;
    }
  }

  v19 = [(DYMTLTextureResize *)self device];
  v20 = [v19 newTextureWithDescriptor:v16];

  v21 = [v12 blitCommandEncoder];
  v27[0] = 0;
  v27[1] = 0;
  v27[2] = a6;
  v26[0] = v13;
  v26[1] = v14;
  v26[2] = 1;
  memset(v25, 0, sizeof(v25));
  [v21 copyFromTexture:v11 sourceSlice:a4 sourceLevel:a5 sourceOrigin:v27 sourceSize:v26 toTexture:v20 destinationSlice:0 destinationLevel:0 destinationOrigin:v25];
  [v21 endEncoding];

LABEL_27:

  return v20;
}

- (id)_texture2DFromTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 depthPlane:(unint64_t)a6 commandBuffer:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = objc_opt_new();
  [v14 setTextureType:2];
  [v14 setPixelFormat:objc_msgSend(v12, "pixelFormat")];
  v15 = [v12 width];
  if (v15 >> a4 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15 >> a4;
  }

  [v14 setWidth:v16];
  v17 = [v12 height];
  if (v17 >> a4 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 >> a4;
  }

  [v14 setHeight:v18];
  [v14 setUsage:{objc_msgSend(v14, "usage") | 1}];
  v19 = [(DYMTLTextureResize *)self device];
  v20 = [v19 newTextureWithDescriptor:v14];

  if ([v12 textureType] != 4)
  {
    v21 = [v13 blitCommandEncoder];
    v30[0] = 0;
    v30[1] = 0;
    v30[2] = a6;
    v29[0] = [v20 width];
    v29[1] = [v20 height];
    v29[2] = 1;
    memset(v28, 0, sizeof(v28));
    [v21 copyFromTexture:v12 sourceSlice:a5 sourceLevel:a4 sourceOrigin:v30 sourceSize:v29 toTexture:v20 destinationSlice:0 destinationLevel:0 destinationOrigin:v28];
    [v21 endEncoding];
    goto LABEL_19;
  }

  v21 = [MEMORY[0x277CD6F50] renderPassDescriptor];
  v22 = [v20 pixelFormat];
  if (v22 > 259)
  {
    if ((v22 - 260) < 2)
    {
      v23 = [v21 depthAttachment];
      [v23 setTexture:v12];
      [v23 setLevel:a4];
      [v23 setSlice:a5];
      [v23 setDepthPlane:a6];
      [v23 setResolveTexture:v20];
      [v23 setLoadAction:1];
      [v23 setStoreAction:2];
      v24 = [v21 stencilAttachment];
      [v24 setTexture:v12];
      [v24 setLevel:a4];
      [v24 setSlice:a5];
      [v24 setDepthPlane:a6];
      [v24 setResolveTexture:v20];
      [v24 setLoadAction:1];
      [v24 setStoreAction:2];

      goto LABEL_18;
    }

LABEL_17:
    v25 = [v21 colorAttachments];
    v23 = [v25 objectAtIndexedSubscript:0];

    [v23 setTexture:v12];
    [v23 setLevel:a4];
    [v23 setSlice:a5];
    [v23 setDepthPlane:a6];
    [v23 setResolveTexture:v20];
    [v23 setLoadAction:1];
    [v23 setStoreAction:2];
    goto LABEL_18;
  }

  if (v22 == 250 || v22 == 252)
  {
    v23 = [v21 depthAttachment];
    [v23 setTexture:v12];
    [v23 setLevel:a4];
    [v23 setSlice:a5];
    [v23 setDepthPlane:a6];
    [v23 setResolveTexture:v20];
    [v23 setLoadAction:1];
    [v23 setStoreAction:2];
    goto LABEL_18;
  }

  if (v22 != 253)
  {
    goto LABEL_17;
  }

  v23 = [v21 stencilAttachment];
  [v23 setTexture:v12];
  [v23 setLevel:a4];
  [v23 setSlice:a5];
  [v23 setDepthPlane:a6];
  [v23 setResolveTexture:v20];
  [v23 setLoadAction:1];
  [v23 setStoreAction:2];
LABEL_18:

  v26 = [v13 renderCommandEncoderWithDescriptor:v21];
  [v26 endEncoding];

LABEL_19:

  return v20;
}

- (void)resizeTexture:(id)a3 resolution:(id *)a4 level:(unint64_t)a5 slice:(unint64_t)a6 depthPlane:(unint64_t)a7 inBuffer:(id)a8 withType:(unsigned int)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a8;
  v53 = a10;
  if (v17)
  {
    [v16 width];
    [v16 height];
    if (!a4->var2)
    {
      goto LABEL_11;
    }

    v20 = a4;
    var0 = a4->var0;
    var1 = v20->var1;
    v21 = [v16 height];
    v22 = [v16 width];
    v23 = [v16 height];
    v24 = var1 / v21;
    v25 = (v24 * v22);
    if (v25 > var0)
    {
      v26 = [v16 width];
      v27 = [v16 width];
      v23 = [v16 height];
      v24 = var0 / v26;
      v25 = (v24 * v27);
    }

    if (v25 && (v24 * v23) != 0)
    {
LABEL_11:
      v29 = [v16 pixelFormat];
      v30 = 55;
      v31 = 90;
      if ((v29 & 0xFFFFFFFFFFFFFFFELL) == 0x104)
      {
        v31 = 55;
      }

      if (v29 == 253)
      {
        v31 = 10;
      }

      if (v29 == 252)
      {
        v31 = 55;
      }

      if (v29 != 250)
      {
        v30 = v31;
      }

      if ((v29 - 1) >= 0x7D)
      {
        v32 = v30;
      }

      else
      {
        v32 = v29;
      }

      v33 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v32 width:? height:? mipmapped:?];
      thumbnailTextureDescriptor = self->_thumbnailTextureDescriptor;
      self->_thumbnailTextureDescriptor = v33;

      [(MTLTextureDescriptor *)self->_thumbnailTextureDescriptor setUsage:[(MTLTextureDescriptor *)self->_thumbnailTextureDescriptor usage]| 4];
      [(MTLTextureDescriptor *)self->_thumbnailTextureDescriptor setResourceOptions:32];
      [(MTLTextureDescriptor *)self->_thumbnailTextureDescriptor setStorageMode:0];
      v35 = [(DYMTLTextureResize *)self device];
      v36 = [v35 newTextureWithDescriptor:self->_thumbnailTextureDescriptor];

      v37 = [(MTLRenderPassDescriptor *)self->_thumbnailRenderPass colorAttachments];
      v38 = [v37 objectAtIndexedSubscript:0];
      [v38 setTexture:v36];

      v39 = v16;
      if ([v39 textureType] != 2 || (objc_msgSend(v39, "usage") & 1) == 0)
      {
        v40 = [(DYMTLTextureResize *)self _texture2DFromTexture:v39 level:a5 slice:a6 depthPlane:a7 commandBuffer:v17];

        v39 = v40;
      }

      v41 = [(MTLRenderPipelineDescriptor *)self->_thumbnailPipelineDescriptor colorAttachments];
      v42 = [v41 objectAtIndexedSubscript:0];
      [v42 setPixelFormat:v52];

      v43 = [(MTLRenderPipelineDescriptor *)self->_thumbnailPipelineDescriptor colorAttachments];
      v44 = [v43 objectAtIndexedSubscript:0];
      [v44 setBlendingEnabled:0];

      switch(a9)
      {
        case 1u:
          v45 = 56;
          break;
        case 2u:
          v45 = 64;
          break;
        case 4u:
          v45 = 72;
          break;
        default:
LABEL_32:
          v46 = [(DYMTLTextureResize *)self device];
          thumbnailPipelineDescriptor = self->_thumbnailPipelineDescriptor;
          v60 = 0;
          v48 = [v46 newRenderPipelineStateWithDescriptor:thumbnailPipelineDescriptor error:&v60];
          v49 = v60;
          thumbnailPipeline = self->_thumbnailPipeline;
          self->_thumbnailPipeline = v48;

          if (self->_thumbnailPipeline)
          {
            v51 = [v17 renderCommandEncoderWithDescriptor:self->_thumbnailRenderPass];
            [v51 setRenderPipelineState:self->_thumbnailPipeline];
            [v51 setDepthStencilState:self->_thumbnailDepthStencilState];
            [v51 setFragmentSamplerState:self->_downscaleSampler atIndex:0];
            [v51 setVertexBuffer:self->_quadPositions offset:0 atIndex:0];
            [v51 setVertexBuffer:self->_quadTexCoords offset:0 atIndex:1];
            v58[0] = 0;
            v58[1] = 0;
            *&v58[2] = [v36 width];
            *&v58[3] = [v36 height];
            v59 = xmmword_257AB6E70;
            [v51 setViewport:v58];
            [v51 setFragmentTexture:v39 atIndex:0];
            [v51 drawIndexedPrimitives:3 indexCount:6 indexType:1 indexBuffer:self->_quadIndicies indexBufferOffset:0];
            [v51 endEncoding];
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = __99__DYMTLTextureResize_resizeTexture_resolution_level_slice_depthPlane_inBuffer_withType_completion___block_invoke;
            v54[3] = &unk_27984EA78;
            v56 = v53;
            v55 = v36;
            v57 = v52;
            [v17 addCompletedHandler:v54];
          }

          goto LABEL_35;
      }

      [(MTLRenderPipelineDescriptor *)self->_thumbnailPipelineDescriptor setFragmentFunction:*(&self->super.isa + v45)];
      goto LABEL_32;
    }
  }

LABEL_35:
}

+ (id)forDevice:(id)a3
{
  v3 = a3;
  if (+[DYMTLTextureResize forDevice:]::onceToken != -1)
  {
    +[DYMTLTextureResize forDevice:];
  }

  v4 = [sDeviceThumbnailGenerator objectForKey:v3];
  if (!v4)
  {
    v4 = [[DYMTLTextureResize alloc] initWithDevice:v3];
    [sDeviceThumbnailGenerator setObject:v4 forKey:v3];
  }

  return v4;
}

uint64_t __32__DYMTLTextureResize_forDevice___block_invoke()
{
  sDeviceThumbnailGenerator = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];

  return MEMORY[0x2821F96F8]();
}

@end