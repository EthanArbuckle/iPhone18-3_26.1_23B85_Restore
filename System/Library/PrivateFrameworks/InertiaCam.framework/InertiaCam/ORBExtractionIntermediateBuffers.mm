@interface ORBExtractionIntermediateBuffers
- (ORBExtractionIntermediateBuffers)initWithDevice:(id)a3 templateImage:(__CVBuffer *)a4 rectRegions:(id)a5 maxKeypointsPerRegion:(int)a6 minKeypointResponseThreshold:(float)a7;
- (void)_reinitializeIntermediateBuffersWithDevice:(id)a3 templateImage:(__CVBuffer *)a4 rectRegions:(id)a5 maxKeypointsPerRegion:(int)a6 minKeypointResponseThreshold:(float)a7;
@end

@implementation ORBExtractionIntermediateBuffers

- (void)_reinitializeIntermediateBuffersWithDevice:(id)a3 templateImage:(__CVBuffer *)a4 rectRegions:(id)a5 maxKeypointsPerRegion:(int)a6 minKeypointResponseThreshold:(float)a7
{
  v85 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a3;
  CleanRect = CVImageBufferGetCleanRect(a4);
  width = CleanRect.size.width;
  height = CleanRect.size.height;
  if (CVPixelBufferIsPlanar(a4))
  {
    v15 = width;
    v16 = height;
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
  }

  else
  {
    v15 = CVPixelBufferGetWidth(a4);
    v16 = CVPixelBufferGetHeight(a4);
    BytesPerRowOfPlane = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  v18 = [v11 copy];
  rectRegions = self->_rectRegions;
  self->_rectRegions = v18;

  v20 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:13 width:v15 height:v16 mipmapped:0];
  [v20 setUsage:{objc_msgSend(v20, "usage") | 0x13}];
  [v20 setStorageMode:0];
  v21 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:73 width:(v15 + 3) >> 2 height:v16 mipmapped:0];
  [v21 setUsage:{objc_msgSend(v21, "usage") | 0x13}];
  v22 = v16 * BytesPerRowOfPlane;
  v23 = [v12 newBufferWithLength:v16 * BytesPerRowOfPlane options:0];
  v24 = [v23 newTextureWithDescriptor:v21 offset:0 bytesPerRow:BytesPerRowOfPlane];
  boxBlurredTexture_RGBA8Uint = self->_boxBlurredTexture_RGBA8Uint;
  self->_boxBlurredTexture_RGBA8Uint = v24;

  v26 = [v23 newTextureWithDescriptor:v20 offset:0 bytesPerRow:BytesPerRowOfPlane];
  boxBlurredTexture_R8Uint = self->_boxBlurredTexture_R8Uint;
  self->_boxBlurredTexture_R8Uint = v26;

  v28 = [v12 newBufferWithLength:v22 options:0];
  v29 = [v28 newTextureWithDescriptor:v21 offset:0 bytesPerRow:BytesPerRowOfPlane];
  gaussianBlurredTexture_RGBA8Uint = self->_gaussianBlurredTexture_RGBA8Uint;
  self->_gaussianBlurredTexture_RGBA8Uint = v29;

  v31 = [v28 newTextureWithDescriptor:v20 offset:0 bytesPerRow:BytesPerRowOfPlane];
  gaussianBlurredTexture_R8Uint = self->_gaussianBlurredTexture_R8Uint;
  self->_gaussianBlurredTexture_R8Uint = v31;

  v33 = [(MTLTexture *)self->_gaussianBlurredTexture_R8Uint newTextureViewWithPixelFormat:10];
  gaussianBlurredTexture_R8Unorm = self->_gaussianBlurredTexture_R8Unorm;
  self->_gaussianBlurredTexture_R8Unorm = v33;

  v35 = [v12 newTextureWithDescriptor:v21];
  responseTexture = self->_responseTexture;
  self->_responseTexture = v35;

  v37 = [v12 newBufferWithLength:v22 options:0];
  v38 = [v37 newTextureWithDescriptor:v21 offset:0 bytesPerRow:BytesPerRowOfPlane];
  suppressedResponseTexture_RGBA8Uint = self->_suppressedResponseTexture_RGBA8Uint;
  self->_suppressedResponseTexture_RGBA8Uint = v38;

  v40 = [v37 newTextureWithDescriptor:v20 offset:0 bytesPerRow:BytesPerRowOfPlane];
  suppressedResponseTexture_R8Uint = self->_suppressedResponseTexture_R8Uint;
  self->_suppressedResponseTexture_R8Uint = v40;

  v42 = [(MTLTexture *)self->_suppressedResponseTexture_R8Uint newTextureViewWithPixelFormat:10];
  suppressedResponseTexture_R8Unorm = self->_suppressedResponseTexture_R8Unorm;
  self->_suppressedResponseTexture_R8Unorm = v42;

  v77 = 0;
  v44 = [v11 count] * 2 * a6;
  v45 = [MetalFAST9BRIEF _createMTLBufferFromRects:v11 device:v12 storageMode:0 maxRectWidth:&v76 maxRectHeight:&v77];
  rectRegionsBuffer = self->_rectRegionsBuffer;
  self->_rectRegionsBuffer = v45;

  v82 = a6;
  v83 = 0;
  v84 = 0;
  v47 = [v12 newBufferWithBytes:&v82 length:16 options:0];
  rectRegionsDesiredKeypoints = self->_rectRegionsDesiredKeypoints;
  self->_rectRegionsDesiredKeypoints = v47;

  self->_maxDescriptorCount = v44;
  self->_maxRegionHeight = v77;
  v81 = xmmword_254B8B160;
  v49 = [v12 newBufferWithBytes:&v81 length:16 options:0];
  thresholdRangeBuffer = self->_thresholdRangeBuffer;
  self->_thresholdRangeBuffer = v49;

  v51 = [v11 count];
  self->_countOfRectRegions = v51;
  v78 = v51;
  v79 = 0;
  v80 = 0;
  v52 = [v12 newBufferWithBytes:&v78 length:16 options:0];
  rectRegionCount = self->_rectRegionCount;
  self->_rectRegionCount = v52;

  v54 = [v12 newBufferWithLength:4 * (self->_countOfRectRegions << 8) options:0];
  histogramsBuffer = self->_histogramsBuffer;
  self->_histogramsBuffer = v54;

  v56 = [v12 newBufferWithLength:4 * self->_countOfRectRegions options:0];
  thresholdsBuffer = self->_thresholdsBuffer;
  self->_thresholdsBuffer = v56;

  v58 = [v12 newBufferWithLength:4 * (self->_countOfRectRegions + 1) options:0];
  countOfKeypointsPerRegion = self->_countOfKeypointsPerRegion;
  self->_countOfKeypointsPerRegion = v58;

  v60 = [v12 newBufferWithLength:4 * (self->_countOfRectRegions + 1) options:0];
  cumulativeCountOfKeypointsPerRegion = self->_cumulativeCountOfKeypointsPerRegion;
  self->_cumulativeCountOfKeypointsPerRegion = v60;

  v62 = [v12 newBufferWithLength:4 options:0];
  truncatedRegionsBuffer = self->_truncatedRegionsBuffer;
  self->_truncatedRegionsBuffer = v62;

  v64 = [v12 newBufferWithLength:8 * v44 options:0];
  compactKeypointsBuffer = self->_compactKeypointsBuffer;
  self->_compactKeypointsBuffer = v64;

  v66 = [v12 newBufferWithLength:8 * v44 options:0];
  refinedKeypointsBuffer = self->_refinedKeypointsBuffer;
  self->_refinedKeypointsBuffer = v66;

  v68 = [v12 newBufferWithLength:836 * v44 options:0];
  refinementIntermediatesBuffer = self->_refinementIntermediatesBuffer;
  self->_refinementIntermediatesBuffer = v68;

  v70 = [v12 newBufferWithLength:32 options:0];
  keypointCountBuffer = self->_keypointCountBuffer;
  self->_keypointCountBuffer = v70;

  v72 = [v12 newBufferWithLength:4 * v44 options:0];
  responseBuffer = self->_responseBuffer;
  self->_responseBuffer = v72;

  v74 = [v12 newBufferWithLength:16 * v44 options:0];
  descriptorBuffer = self->_descriptorBuffer;
  self->_descriptorBuffer = v74;
}

- (ORBExtractionIntermediateBuffers)initWithDevice:(id)a3 templateImage:(__CVBuffer *)a4 rectRegions:(id)a5 maxKeypointsPerRegion:(int)a6 minKeypointResponseThreshold:(float)a7
{
  v8 = *&a6;
  v12 = a3;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = ORBExtractionIntermediateBuffers;
  v14 = [(ORBExtractionIntermediateBuffers *)&v20 init];
  v16 = v14;
  if (v14)
  {
    v17 = a4 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && v13 != 0)
  {
    *&v15 = a7;
    [(ORBExtractionIntermediateBuffers *)v14 _reinitializeIntermediateBuffersWithDevice:v12 templateImage:a4 rectRegions:v13 maxKeypointsPerRegion:v8 minKeypointResponseThreshold:v15];
  }

  return v16;
}

@end