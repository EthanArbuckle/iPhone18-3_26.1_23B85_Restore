@interface DYMTLTextureRenderer
- (DYMTLTextureRenderer)initWithDevice:(id)a3;
- (id).cxx_construct;
- (unint64_t)_renderPassPixelFormatFromDescriptor:(id)a3;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
@end

@implementation DYMTLTextureRenderer

- (DYMTLTextureRenderer)initWithDevice:(id)a3
{
  v5 = a3;
  v43.receiver = self;
  v43.super_class = DYMTLTextureRenderer;
  v6 = [(DYMTLTextureRenderer *)&v43 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_device, a3), (device = v7->_device) == 0))
  {
    v39 = 0;
    goto LABEL_9;
  }

  v42 = 0;
  v9 = [(MTLDevice *)device newLibraryWithSource:@"#include <metal_graphics>\n#include <metal_texture>\nusing namespace metal;\nstruct VertexOutput\n{\n  vec<float options:4> pos [[position]];\n  vec<float error:2> uv;\n};\nstruct UniformData\n{\n  vec<float, 4> blendColor;\n  uint selectedLayer;\n};\n\nvertex VertexOutput vertexFunction(device const vec<float, 4> *pos_data [[ buffer(0) ]], \n                                   device const vec<float, 2> *uv_data [[ buffer(1) ]], \n                                   uint vid [[ vertex_id ]])\n{\n  VertexOutput out;\n  out.pos = pos_data[vid];\n  out.uv = uv_data[vid];\n  return out;\n}\nfragment vec<float, 4> opaqueFragmentFunction(VertexOutput in [[stage_in]], \n                                              texture2d<float> tex [[ texture(0) ]], \n                                              sampler sam [[ sampler(0) ]])\n{\n  vec<float, 4> tex_color = tex.sample(sam, in.uv);\n  return tex_color;\n}\nfragment vec<float, 4> blendingFragmentFunction(VertexOutput in [[stage_in]], \n                                                texture2d<float> tex [[ texture(0) ]], \n                                                sampler sam [[ sampler(0) ]], \n                                                constant UniformData &uniformData [[ buffer(0) ]]){\n  vec<float, 4> tex_color = tex.sample(sam, in.uv);\n  return tex_color.r * uniformData.blendColor;\n}\nfragment vec<float, 4> blendingFragmentFunction_2dArray(VertexOutput in [[stage_in]], \n                                                        texture2d_array<float> tex [[ texture(0) ]], \n                                                        sampler sam [[ sampler(0) ]], \n                                                        constant UniformData &uniformData [[ buffer(0) ]]){\n  vec<float, 4> tex_color = tex.sample(sam, in.uv, uniformData.selectedLayer);\n  return tex_color.r * uniformData.blendColor;\n}\n", 0, &v42];
  v10 = v42;
  library = v7->_library;
  v7->_library = v9;

  v12 = v7->_library;
  if (!v12)
  {
    __assert_rtn("[DYMTLTextureRenderer initWithDevice:]", ", 0, "_library != nil"");
  }

  v13 = [(MTLLibrary *)v12 newFunctionWithName:@"vertexFunction"];
  vertexFunction = v7->_vertexFunction;
  v7->_vertexFunction = v13;

  v15 = [(MTLLibrary *)v7->_library newFunctionWithName:@"opaqueFragmentFunction"];
  opaqueFragmentFunction = v7->_opaqueFragmentFunction;
  v7->_opaqueFragmentFunction = v15;

  v17 = [(MTLLibrary *)v7->_library newFunctionWithName:@"blendingFragmentFunction"];
  blendingFragmentFunction = v7->_blendingFragmentFunction;
  v7->_blendingFragmentFunction = v17;

  v19 = [(MTLLibrary *)v7->_library newFunctionWithName:@"blendingFragmentFunction_2dArray"];
  blendingFragmentFunction_2dArray = v7->_blendingFragmentFunction_2dArray;
  v7->_blendingFragmentFunction_2dArray = v19;

  v21 = objc_opt_new();
  renderPipelineDescriptor = v7->_renderPipelineDescriptor;
  v7->_renderPipelineDescriptor = v21;

  v23 = [(MTLRenderPipelineDescriptor *)v7->_renderPipelineDescriptor colorAttachments];
  v24 = [v23 objectAtIndexedSubscript:0];

  [v24 setBlendingEnabled:0];
  [v24 setSourceRGBBlendFactor:4];
  [v24 setDestinationRGBBlendFactor:5];
  [v24 setRgbBlendOperation:0];
  [v24 setSourceAlphaBlendFactor:0];
  [v24 setDestinationAlphaBlendFactor:1];
  [v24 setAlphaBlendOperation:0];
  [(MTLRenderPipelineDescriptor *)v7->_renderPipelineDescriptor setVertexFunction:v7->_vertexFunction];
  v25 = objc_opt_new();
  depthStencilDescriptor = v7->_depthStencilDescriptor;
  v7->_depthStencilDescriptor = v25;

  if (!v7->_depthStencilDescriptor)
  {
    v41 = "_depthStencilDescriptor != nil";
    goto LABEL_14;
  }

  v27 = [(MTLDevice *)v7->_device newBufferWithLength:64 options:0];
  positionBuffer = v7->_positionBuffer;
  v7->_positionBuffer = v27;

  v29 = v7->_positionBuffer;
  if (!v29)
  {
    v41 = "_positionBuffer != nil";
    goto LABEL_14;
  }

  v30 = [(MTLBuffer *)v29 contents];
  *v30 = [DYMTLTextureRenderer initWithDevice:]::positionList;
  v30[1] = unk_24D740CA0;
  v30[2] = xmmword_24D740CB0;
  v30[3] = unk_24D740CC0;
  v31 = [(MTLDevice *)v7->_device newBufferWithLength:32 options:0];
  texCoordBuffer = v7->_texCoordBuffer;
  v7->_texCoordBuffer = v31;

  v33 = v7->_texCoordBuffer;
  if (!v33)
  {
    v41 = "_texCoordBuffer != nil";
LABEL_14:
    __assert_rtn("[DYMTLTextureRenderer initWithDevice:]", "", 0, v41);
  }

  v34 = [(MTLBuffer *)v33 contents];
  *v34 = [DYMTLTextureRenderer initWithDevice:]::texCoordList;
  v34[1] = unk_24D740CE0;
  v35 = objc_opt_new();
  [v35 setMinFilter:1];
  [v35 setMagFilter:1];
  [v35 setMipFilter:2];
  [v35 setMaxAnisotropy:1];
  [v35 setSAddressMode:0];
  [v35 setTAddressMode:0];
  [v35 setRAddressMode:0];
  [v35 setNormalizedCoordinates:1];
  [v35 setLodMinClamp:0.0];
  LODWORD(v36) = 2139095039;
  [v35 setLodMaxClamp:v36];
  v37 = [(MTLDevice *)v7->_device newSamplerStateWithDescriptor:v35];
  samplerState = v7->_samplerState;
  v7->_samplerState = v37;

  v39 = v7;
LABEL_9:

  return v39;
}

- (unint64_t)_renderPassPixelFormatFromDescriptor:(id)a3
{
  v4 = 0;
  while (1)
  {
    v5 = [a3 colorAttachments];
    v6 = [v5 objectAtIndexedSubscript:v4];

    v7 = [v6 texture];
    v8 = v7;
    if (v7)
    {
      if ([v7 width] && objc_msgSend(v8, "height"))
      {
        break;
      }
    }

    if (++v4 == 8)
    {
      return 0;
    }
  }

  v9 = [v8 pixelFormat];

  return v9;
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  self->_uniformData.blendColor[0] = a3;
  self->_uniformData.blendColor[1] = a4;
  self->_uniformData.blendColor[2] = a5;
  self->_uniformData.blendColor[3] = a6;
}

- (id).cxx_construct
{
  *(self + 88) = xmmword_24D740C80;
  *(self + 26) = 0;
  return self;
}

@end