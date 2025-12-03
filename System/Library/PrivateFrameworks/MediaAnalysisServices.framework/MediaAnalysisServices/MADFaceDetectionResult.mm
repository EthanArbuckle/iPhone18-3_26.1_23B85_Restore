@interface MADFaceDetectionResult
+ (id)resultWithDetectedFaces:(id)faces;
- (MADFaceDetectionResult)initWithCoder:(id)coder;
- (MADFaceDetectionResult)initWithDetectedFaces:(id)faces;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADFaceDetectionResult

- (MADFaceDetectionResult)initWithDetectedFaces:(id)faces
{
  facesCopy = faces;
  v9.receiver = self;
  v9.super_class = MADFaceDetectionResult;
  v6 = [(MADResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_faces, faces);
  }

  return v7;
}

+ (id)resultWithDetectedFaces:(id)faces
{
  facesCopy = faces;
  v5 = [[self alloc] initWithDetectedFaces:facesCopy];

  return v5;
}

- (MADFaceDetectionResult)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MADFaceDetectionResult;
  v5 = [(MADResult *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"DetectedFaces"];
    faces = v5->_faces;
    v5->_faces = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MADFaceDetectionResult;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_faces forKey:@"DetectedFaces"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"%@: %lu count>", @"DetectedFaces", -[NSSet count](self->_faces, "count")];

  return string;
}

@end