@interface MADVIFaceResult
- (MADVIFaceResult)initWithCoder:(id)coder;
- (double)executionTimeInterval;
- (id)description;
- (unint64_t)executionNanoseconds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIFaceResult

- (MADVIFaceResult)initWithCoder:(id)coder
{
  v28[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = MADVIFaceResult;
  v5 = [(MADResult *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v7 = getVNFaceObservationClass_softClass;
    v27 = getVNFaceObservationClass_softClass;
    if (!getVNFaceObservationClass_softClass)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __getVNFaceObservationClass_block_invoke;
      v23[3] = &unk_1E8342DE0;
      v23[4] = &v24;
      __getVNFaceObservationClass_block_invoke(v23);
      v7 = v25[3];
    }

    v8 = v7;
    _Block_object_dispose(&v24, 8);
    v28[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v10 = [v6 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"FaceRectanglesObservations"];
    faceRectanglesObservations = v5->_faceRectanglesObservations;
    v5->_faceRectanglesObservations = v11;

    v13 = [coderCopy decodeObjectOfClasses:v10 forKey:@"FaceprintObservations"];
    faceprintObservations = v5->_faceprintObservations;
    v5->_faceprintObservations = v13;

    v15 = [coderCopy decodeObjectOfClasses:v10 forKey:@"FaceAttributesObservations"];
    faceAttributesObservations = v5->_faceAttributesObservations;
    v5->_faceAttributesObservations = v15;

    v17 = [coderCopy decodeObjectOfClasses:v10 forKey:@"FaceExpressionsObservations"];
    faceExpressionsObservations = v5->_faceExpressionsObservations;
    v5->_faceExpressionsObservations = v17;

    v19 = [coderCopy decodeObjectOfClasses:v10 forKey:@"FaceLandmarksObservations"];
    faceLandmarksObservations = v5->_faceLandmarksObservations;
    v5->_faceLandmarksObservations = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVIFaceResult;
  coderCopy = coder;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_faceRectanglesObservations forKey:{@"FaceRectanglesObservations", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_faceprintObservations forKey:@"FaceprintObservations"];
  [coderCopy encodeObject:self->_faceAttributesObservations forKey:@"FaceAttributesObservations"];
  [coderCopy encodeObject:self->_faceExpressionsObservations forKey:@"FaceExpressionsObservations"];
  [coderCopy encodeObject:self->_faceLandmarksObservations forKey:@"FaceLandmarksObservations"];
}

- (unint64_t)executionNanoseconds
{
  v3.receiver = self;
  v3.super_class = MADVIFaceResult;
  return [(MADResult *)&v3 executionNanoseconds];
}

- (double)executionTimeInterval
{
  v3.receiver = self;
  v3.super_class = MADVIFaceResult;
  [(MADResult *)&v3 executionTimeInterval];
  return result;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"\nface rectangles observations:\n "];
  if ([(NSArray *)self->_faceRectanglesObservations count])
  {
    v6 = 0;
    do
    {
      if (v6)
      {
        v7 = ",";
      }

      else
      {
        v7 = &unk_1C9770416;
      }

      v8 = [(NSArray *)self->_faceRectanglesObservations objectAtIndexedSubscript:v6];
      [string appendFormat:@"%s%@ ", v7, v8];

      ++v6;
    }

    while (v6 < [(NSArray *)self->_faceRectanglesObservations count]);
  }

  [string appendFormat:@"\nfaceprint observations:\n "];
  if ([(NSArray *)self->_faceprintObservations count])
  {
    v9 = 0;
    do
    {
      if (v9)
      {
        v10 = ",";
      }

      else
      {
        v10 = &unk_1C9770416;
      }

      v11 = [(NSArray *)self->_faceprintObservations objectAtIndexedSubscript:v9];
      [string appendFormat:@"%s%@ ", v10, v11];

      ++v9;
    }

    while (v9 < [(NSArray *)self->_faceprintObservations count]);
  }

  [string appendFormat:@"\nface attributes observations:\n "];
  if ([(NSArray *)self->_faceAttributesObservations count])
  {
    v12 = 0;
    do
    {
      if (v12)
      {
        v13 = ",";
      }

      else
      {
        v13 = &unk_1C9770416;
      }

      v14 = [(NSArray *)self->_faceAttributesObservations objectAtIndexedSubscript:v12];
      [string appendFormat:@"%s%@ ", v13, v14];

      ++v12;
    }

    while (v12 < [(NSArray *)self->_faceAttributesObservations count]);
  }

  [string appendFormat:@"\nface expressions observations:\n "];
  if ([(NSArray *)self->_faceExpressionsObservations count])
  {
    v15 = 0;
    do
    {
      if (v15)
      {
        v16 = ",";
      }

      else
      {
        v16 = &unk_1C9770416;
      }

      v17 = [(NSArray *)self->_faceExpressionsObservations objectAtIndexedSubscript:v15];
      [string appendFormat:@"%s%@ ", v16, v17];

      ++v15;
    }

    while (v15 < [(NSArray *)self->_faceExpressionsObservations count]);
  }

  [string appendFormat:@"\nface landmarks observations:\n "];
  if ([(NSArray *)self->_faceLandmarksObservations count])
  {
    v18 = 0;
    do
    {
      if (v18)
      {
        v19 = ",";
      }

      else
      {
        v19 = &unk_1C9770416;
      }

      v20 = [(NSArray *)self->_faceLandmarksObservations objectAtIndexedSubscript:v18];
      [string appendFormat:@"%s%@ ", v19, v20];

      ++v18;
    }

    while (v18 < [(NSArray *)self->_faceLandmarksObservations count]);
  }

  [string appendFormat:@">"];

  return string;
}

@end