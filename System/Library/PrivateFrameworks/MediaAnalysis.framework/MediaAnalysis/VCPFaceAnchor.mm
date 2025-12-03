@interface VCPFaceAnchor
- (VCPFaceAnchor)initWithCoder:(id)coder;
- (VCPFaceAnchor)initWithTransform:(__n128)transform blendShapes:(__n128)shapes geometry:(__n128)geometry;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VCPFaceAnchor

- (VCPFaceAnchor)initWithTransform:(__n128)transform blendShapes:(__n128)shapes geometry:(__n128)geometry
{
  v10 = a7;
  v11 = a8;
  v21.receiver = self;
  v21.super_class = VCPFaceAnchor;
  v12 = [(VCPFaceAnchor *)&v21 init];
  v13 = v12;
  if (v12)
  {
    *&v12[1].super.isa = a2;
    *&v12[1]._geometry = transform;
    *&v12[2].super.isa = shapes;
    *&v12[2]._geometry = geometry;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&self[1] length:64];
  [coderCopy encodeObject:v4 forKey:@"transform"];

  blendShapes = self->_blendShapes;
  if (blendShapes)
  {
    [coderCopy encodeObject:blendShapes forKey:@"blendshapes"];
  }

  geometry = self->_geometry;
  if (geometry)
  {
    [coderCopy encodeObject:geometry forKey:@"geometry"];
  }
}

- (VCPFaceAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transform"];
  if ([v5 length] > 0x3F)
  {
    [v5 getBytes:&v10 length:64];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blendshapes"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geometry"];
    self = [(VCPFaceAnchor *)self initWithTransform:v7 blendShapes:v8 geometry:*&v10, *&v11, *&v12, *&v13];

    selfCopy = self;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPFaceAnchor initWithCoder - unexpected size of transform data", &v10, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end