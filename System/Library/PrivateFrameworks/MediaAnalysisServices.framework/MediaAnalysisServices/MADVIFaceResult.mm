@interface MADVIFaceResult
- (MADVIFaceResult)initWithCoder:(id)a3;
- (double)executionTimeInterval;
- (id)description;
- (unint64_t)executionNanoseconds;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIFaceResult

- (MADVIFaceResult)initWithCoder:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MADVIFaceResult;
  v5 = [(MADResult *)&v22 initWithCoder:v4];
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

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"FaceRectanglesObservations"];
    faceRectanglesObservations = v5->_faceRectanglesObservations;
    v5->_faceRectanglesObservations = v11;

    v13 = [v4 decodeObjectOfClasses:v10 forKey:@"FaceprintObservations"];
    faceprintObservations = v5->_faceprintObservations;
    v5->_faceprintObservations = v13;

    v15 = [v4 decodeObjectOfClasses:v10 forKey:@"FaceAttributesObservations"];
    faceAttributesObservations = v5->_faceAttributesObservations;
    v5->_faceAttributesObservations = v15;

    v17 = [v4 decodeObjectOfClasses:v10 forKey:@"FaceExpressionsObservations"];
    faceExpressionsObservations = v5->_faceExpressionsObservations;
    v5->_faceExpressionsObservations = v17;

    v19 = [v4 decodeObjectOfClasses:v10 forKey:@"FaceLandmarksObservations"];
    faceLandmarksObservations = v5->_faceLandmarksObservations;
    v5->_faceLandmarksObservations = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVIFaceResult;
  v4 = a3;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_faceRectanglesObservations forKey:{@"FaceRectanglesObservations", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_faceprintObservations forKey:@"FaceprintObservations"];
  [v4 encodeObject:self->_faceAttributesObservations forKey:@"FaceAttributesObservations"];
  [v4 encodeObject:self->_faceExpressionsObservations forKey:@"FaceExpressionsObservations"];
  [v4 encodeObject:self->_faceLandmarksObservations forKey:@"FaceLandmarksObservations"];
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
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"\nface rectangles observations:\n "];
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
      [v3 appendFormat:@"%s%@ ", v7, v8];

      ++v6;
    }

    while (v6 < [(NSArray *)self->_faceRectanglesObservations count]);
  }

  [v3 appendFormat:@"\nfaceprint observations:\n "];
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
      [v3 appendFormat:@"%s%@ ", v10, v11];

      ++v9;
    }

    while (v9 < [(NSArray *)self->_faceprintObservations count]);
  }

  [v3 appendFormat:@"\nface attributes observations:\n "];
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
      [v3 appendFormat:@"%s%@ ", v13, v14];

      ++v12;
    }

    while (v12 < [(NSArray *)self->_faceAttributesObservations count]);
  }

  [v3 appendFormat:@"\nface expressions observations:\n "];
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
      [v3 appendFormat:@"%s%@ ", v16, v17];

      ++v15;
    }

    while (v15 < [(NSArray *)self->_faceExpressionsObservations count]);
  }

  [v3 appendFormat:@"\nface landmarks observations:\n "];
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
      [v3 appendFormat:@"%s%@ ", v19, v20];

      ++v18;
    }

    while (v18 < [(NSArray *)self->_faceLandmarksObservations count]);
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end