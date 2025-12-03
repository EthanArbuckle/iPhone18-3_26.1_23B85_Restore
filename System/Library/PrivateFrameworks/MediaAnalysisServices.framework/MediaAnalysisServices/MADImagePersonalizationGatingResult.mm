@interface MADImagePersonalizationGatingResult
- (MADImagePersonalizationGatingResult)initWithCoder:(id)coder;
- (MADImagePersonalizationGatingResult)initWithFaces:(id)faces;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADImagePersonalizationGatingResult

- (MADImagePersonalizationGatingResult)initWithFaces:(id)faces
{
  facesCopy = faces;
  v9.receiver = self;
  v9.super_class = MADImagePersonalizationGatingResult;
  v6 = [(MADResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_faces, faces);
  }

  return v7;
}

- (MADImagePersonalizationGatingResult)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MADImagePersonalizationGatingResult;
  v5 = [(MADResult *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Faces"];
    faces = v5->_faces;
    v5->_faces = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADImagePersonalizationGatingResult;
  coderCopy = coder;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_faces forKey:{@"Faces", v5.receiver, v5.super_class}];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"faces: %@>", self->_faces];

  return string;
}

@end