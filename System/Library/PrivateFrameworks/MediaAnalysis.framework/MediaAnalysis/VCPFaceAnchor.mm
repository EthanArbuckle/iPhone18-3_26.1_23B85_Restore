@interface VCPFaceAnchor
- (VCPFaceAnchor)initWithCoder:(id)a3;
- (VCPFaceAnchor)initWithTransform:(__n128)a3 blendShapes:(__n128)a4 geometry:(__n128)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VCPFaceAnchor

- (VCPFaceAnchor)initWithTransform:(__n128)a3 blendShapes:(__n128)a4 geometry:(__n128)a5
{
  v10 = a7;
  v11 = a8;
  v21.receiver = a1;
  v21.super_class = VCPFaceAnchor;
  v12 = [(VCPFaceAnchor *)&v21 init];
  v13 = v12;
  if (v12)
  {
    *&v12[1].super.isa = a2;
    *&v12[1]._geometry = a3;
    *&v12[2].super.isa = a4;
    *&v12[2]._geometry = a5;
    if (v10)
    {
      v14 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v10];
      blendShapes = v13->_blendShapes;
      v13->_blendShapes = v14;
    }

    objc_storeStrong(&v13->_geometry, a8);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&self[1] length:64];
  [v7 encodeObject:v4 forKey:@"transform"];

  blendShapes = self->_blendShapes;
  if (blendShapes)
  {
    [v7 encodeObject:blendShapes forKey:@"blendshapes"];
  }

  geometry = self->_geometry;
  if (geometry)
  {
    [v7 encodeObject:geometry forKey:@"geometry"];
  }
}

- (VCPFaceAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transform"];
  if ([v5 length] > 0x3F)
  {
    [v5 getBytes:&v10 length:64];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blendshapes"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"geometry"];
    self = [(VCPFaceAnchor *)self initWithTransform:v7 blendShapes:v8 geometry:*&v10, *&v11, *&v12, *&v13];

    v6 = self;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPFaceAnchor initWithCoder - unexpected size of transform data", &v10, 2u);
    }

    v6 = 0;
  }

  return v6;
}

@end