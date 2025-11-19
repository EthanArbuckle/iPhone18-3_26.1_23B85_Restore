@interface VCPFaceCrop
+ (id)generateFaceCropsForFace:(id)a3 resourceURL:(id)a4 groupingIdentifier:(id)a5;
- (CGSize)imageDimensions;
- (VCPFaceCrop)initWithFaceCropData:(id)a3 originatingFace:(id)a4;
- (VCPFaceCrop)initWithLocalIdentifier:(id)a3 faceCropData:(id)a4;
- (id)description;
@end

@implementation VCPFaceCrop

- (VCPFaceCrop)initWithLocalIdentifier:(id)a3 faceCropData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = VCPFaceCrop;
  v9 = [(VCPFaceCrop *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localIdentifier, a3);
    v11 = [v8 copy];
    faceCropData = v10->_faceCropData;
    v10->_faceCropData = v11;
  }

  return v10;
}

- (VCPFaceCrop)initWithFaceCropData:(id)a3 originatingFace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VCPFaceCrop;
  v8 = [(VCPFaceCrop *)&v14 init];
  v9 = v8;
  if (v8)
  {
    localIdentifier = v8->_localIdentifier;
    v8->_localIdentifier = 0;

    v11 = [v6 copy];
    faceCropData = v9->_faceCropData;
    v9->_faceCropData = v11;

    objc_storeStrong(&v9->_originatingFace, a4);
  }

  return v9;
}

+ (id)generateFaceCropsForFace:(id)a3 resourceURL:(id)a4 groupingIdentifier:(id)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 0;
  if (!v7 || !v8 || !v9)
  {
    goto LABEL_30;
  }

  [v7 bodyCenterX];
  if (v12 == 0.0 && ([v7 bodyCenterY], v13 == 0.0) && (objc_msgSend(v7, "bodyWidth"), v14 == 0.0))
  {
    [v7 bodyHeight];
    v15 = v50 != 0.0;
  }

  else
  {
    v15 = 1;
  }

  if ([v7 detectionType] == 3)
  {
    if (!v15)
    {
      goto LABEL_10;
    }

LABEL_14:
    [v7 normalizedBodyRect];
    v17 = v32;
    v19 = v33;
    v21 = v34;
    v23 = v35;
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    [v7 bodyCenterX];
    v37 = v36;
    [v7 bodyCenterY];
    v39 = v38;
    [v7 bodyWidth];
    v41 = v40;
    [v7 bodyHeight];
    *buf = 134219776;
    v53 = v37;
    v54 = 2048;
    v55 = v39;
    v56 = 2048;
    v57 = v41;
    v58 = 2048;
    v59 = v42;
    v60 = 2048;
    v61 = v17;
    v62 = 2048;
    v63 = v19;
    v64 = 2048;
    v65 = v21;
    v66 = 2048;
    v67 = v23;
    v29 = MEMORY[0x1E69E9C10];
    v30 = "[FaceCropGeneration] body (bodyCenterX:%.2f, bodyCenterY:%.2f, bodyWidth:%.2f, bodyHeight: %.2f) -> normalizedRect: (x:%.2f, y:%.2f, width:%.2f, height:%.2f)";
    v31 = 82;
    goto LABEL_17;
  }

  if ([v7 detectionType] == 4 && v15)
  {
    goto LABEL_14;
  }

LABEL_10:
  [v7 normalizedFaceRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_18;
  }

  [v7 centerX];
  v25 = v24;
  [v7 centerY];
  v27 = v26;
  [v7 size];
  *buf = 134219520;
  v53 = v25;
  v54 = 2048;
  v55 = v27;
  v56 = 2048;
  v57 = v28;
  v58 = 2048;
  v59 = v17;
  v60 = 2048;
  v61 = v19;
  v62 = 2048;
  v63 = v21;
  v64 = 2048;
  v65 = v23;
  v29 = MEMORY[0x1E69E9C10];
  v30 = "[FaceCropGeneration] face (centerX:%.2f, centerY:%.2f, size:%.2f) -> normalizedRect: (x:%.2f, y:%.2f, width:%.2f, height:%.2f)";
  v31 = 72;
LABEL_17:
  _os_log_impl(&dword_1C9B70000, v29, OS_LOG_TYPE_DEBUG, v30, buf, v31);
LABEL_18:
  v51 = 0;
  v43 = [VCPFaceCropUtils newFaceCropFromImageURL:v8 withNormalizedFaceRect:v10 groupingIdentifier:&v51 error:v17, v19, v21, v23];
  v44 = v51;
  if (v43)
  {
    v45 = [[VCPFaceCrop alloc] initWithFaceCropData:v43 originatingFace:v7];
    v11 = v45;
    if (v45)
    {
      v46 = v45;
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v48 = [v7 localIdentifier];
      *buf = 138412290;
      v53 = v48;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPFaceCrop][%@] Failed to create VCPFaceCrop instance", buf, 0xCu);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = [v7 localIdentifier];
      *buf = 138412546;
      v53 = v47;
      v54 = 2112;
      v55 = v44;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPFaceCrop][%@] Failed to generate FaceCrop data - %@", buf, 0x16u);
    }

    v11 = 0;
  }

LABEL_30:

  return v11;
}

- (CGSize)imageDimensions
{
  width = self->_cachedImageDimensions.width;
  height = self->_cachedImageDimensions.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [VCPFaceCropUtils faceCropDimensionsFromFaceCrop:self->_faceCropData error:0];
    self->_cachedImageDimensions.width = width;
    self->_cachedImageDimensions.height = height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v9.receiver = self;
  v9.super_class = VCPFaceCrop;
  v4 = [(VCPFaceCrop *)&v9 description];
  v5 = [v3 stringWithString:v4];

  [v5 appendFormat:@"  state            : %d\n", -[VCPFaceCrop state](self, "state")];
  originatingFace = self->_originatingFace;
  if (originatingFace)
  {
    v7 = [(VCPPhotosFace *)originatingFace localIdentifier];
    [v5 appendFormat:@"  originating face : %@\n", v7];
  }

  return v5;
}

@end