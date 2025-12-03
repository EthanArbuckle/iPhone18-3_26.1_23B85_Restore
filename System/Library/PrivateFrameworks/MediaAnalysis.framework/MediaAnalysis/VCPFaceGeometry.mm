@interface VCPFaceGeometry
- (VCPFaceGeometry)initWithCoder:(id)coder;
- (VCPFaceGeometry)initWithVertices:(VCPFaceGeometry *)self vertexCount:(SEL)count;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VCPFaceGeometry

- (VCPFaceGeometry)initWithVertices:(VCPFaceGeometry *)self vertexCount:(SEL)count
{
  v3 = v2;
  v9.receiver = self;
  v9.super_class = VCPFaceGeometry;
  v4 = [(VCPFaceGeometry *)&v9 init];
  v5 = v4;
  if (v3 - 5001 >= 0xFFFFFFFFFFFFEC78 && v4 != 0)
  {
    v4->_vertexCount = v3;
    operator new[]();
  }

  v7 = 0;

  return v7;
}

- (void)dealloc
{
  v3 = *self->_vertices;
  if (v3)
  {
    MEMORY[0x1CCA95C10](v3, 0x1000C80451B5BE8);
  }

  v4.receiver = self;
  v4.super_class = VCPFaceGeometry;
  [(VCPFaceGeometry *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:*self->_vertices length:16 * self->_vertexCount];
  [coderCopy encodeObject:v4 forKey:@"vertices"];
}

- (VCPFaceGeometry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vertices"];
  v6 = [v5 length];
  if (v6 > 0xF)
  {
    self = -[VCPFaceGeometry initWithVertices:vertexCount:](self, "initWithVertices:vertexCount:", [v5 bytes], v6 >> 4);
    selfCopy = self;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPFaceGeometry initWithCoder - vertices data missing", v9, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end