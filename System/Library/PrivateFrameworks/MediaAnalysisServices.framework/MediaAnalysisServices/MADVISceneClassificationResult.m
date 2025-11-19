@interface MADVISceneClassificationResult
- (MADVISceneClassificationResult)initWithCoder:(id)a3;
- (double)executionTimeInterval;
- (id)description;
- (unint64_t)executionNanoseconds;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVISceneClassificationResult

- (MADVISceneClassificationResult)initWithCoder:(id)a3
{
  v37[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = MADVISceneClassificationResult;
  v5 = [(MADResult *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v8 = getVNClassificationObservationClass_softClass;
    v36 = getVNClassificationObservationClass_softClass;
    v37[0] = v7;
    if (!getVNClassificationObservationClass_softClass)
    {
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __getVNClassificationObservationClass_block_invoke;
      v31 = &unk_1E8342DE0;
      v32 = &v33;
      __getVNClassificationObservationClass_block_invoke(&v28);
      v8 = v34[3];
    }

    v9 = v8;
    _Block_object_dispose(&v33, 8);
    v37[1] = objc_opt_class();
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v10 = getVNRecognizedObjectObservationClass_softClass;
    v36 = getVNRecognizedObjectObservationClass_softClass;
    if (!getVNRecognizedObjectObservationClass_softClass)
    {
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __getVNRecognizedObjectObservationClass_block_invoke;
      v31 = &unk_1E8342DE0;
      v32 = &v33;
      __getVNRecognizedObjectObservationClass_block_invoke(&v28);
      v10 = v34[3];
    }

    v11 = v10;
    _Block_object_dispose(&v33, 8);
    v37[2] = objc_opt_class();
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v12 = getVNSaliencyImageObservationClass_softClass;
    v36 = getVNSaliencyImageObservationClass_softClass;
    if (!getVNSaliencyImageObservationClass_softClass)
    {
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __getVNSaliencyImageObservationClass_block_invoke;
      v31 = &unk_1E8342DE0;
      v32 = &v33;
      __getVNSaliencyImageObservationClass_block_invoke(&v28);
      v12 = v34[3];
    }

    v13 = v12;
    _Block_object_dispose(&v33, 8);
    v37[3] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    v15 = [v6 setWithArray:v14];

    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"ClassificationObservations"];
    classificationObservations = v5->_classificationObservations;
    v5->_classificationObservations = v16;

    v18 = [v4 decodeObjectOfClasses:v15 forKey:@"NSFWObservations"];
    nsfwObservations = v5->_nsfwObservations;
    v5->_nsfwObservations = v18;

    v20 = [v4 decodeObjectOfClasses:v15 forKey:@"SignificantEventObservations"];
    significantEventObservations = v5->_significantEventObservations;
    v5->_significantEventObservations = v20;

    v22 = [v4 decodeObjectOfClasses:v15 forKey:@"RecognizedObjectObservations"];
    recognizedObjectObservations = v5->_recognizedObjectObservations;
    v5->_recognizedObjectObservations = v22;

    v24 = [v4 decodeObjectOfClasses:v15 forKey:@"SaliencyObservations"];
    saliencyObservations = v5->_saliencyObservations;
    v5->_saliencyObservations = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVISceneClassificationResult;
  v4 = a3;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_classificationObservations forKey:{@"ClassificationObservations", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_nsfwObservations forKey:@"NSFWObservations"];
  [v4 encodeObject:self->_significantEventObservations forKey:@"SignificantEventObservations"];
  [v4 encodeObject:self->_recognizedObjectObservations forKey:@"RecognizedObjectObservations"];
  [v4 encodeObject:self->_saliencyObservations forKey:@"SaliencyObservations"];
}

- (unint64_t)executionNanoseconds
{
  v3.receiver = self;
  v3.super_class = MADVISceneClassificationResult;
  return [(MADResult *)&v3 executionNanoseconds];
}

- (double)executionTimeInterval
{
  v3.receiver = self;
  v3.super_class = MADVISceneClassificationResult;
  [(MADResult *)&v3 executionTimeInterval];
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"\nclassification observations:\n "];
  if ([(NSArray *)self->_classificationObservations count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_classificationObservations objectAtIndexedSubscript:v6];
      v8 = [v7 identifier];

      if (v6)
      {
        v9 = ",";
      }

      else
      {
        v9 = &unk_1C9770416;
      }

      v10 = [(NSArray *)self->_classificationObservations objectAtIndexedSubscript:v6];
      [v3 appendFormat:@"%s%@ classification identifier=%@", v9, v10, v8];

      ++v6;
    }

    while (v6 < [(NSArray *)self->_classificationObservations count]);
  }

  [v3 appendFormat:@"\nnsfw observations:\n "];
  if ([(NSArray *)self->_nsfwObservations count])
  {
    v11 = 0;
    do
    {
      v12 = [(NSArray *)self->_nsfwObservations objectAtIndexedSubscript:v11];
      v13 = [v12 identifier];

      if (v11)
      {
        v14 = ",";
      }

      else
      {
        v14 = &unk_1C9770416;
      }

      v15 = [(NSArray *)self->_nsfwObservations objectAtIndexedSubscript:v11];
      [v3 appendFormat:@"%s%@ nsfw identifier=%@", v14, v15, v13];

      ++v11;
    }

    while (v11 < [(NSArray *)self->_nsfwObservations count]);
  }

  [v3 appendFormat:@"\nsignificant event observations:\n "];
  if ([(NSArray *)self->_significantEventObservations count])
  {
    v16 = 0;
    do
    {
      v17 = [(NSArray *)self->_significantEventObservations objectAtIndexedSubscript:v16];
      v18 = [v17 identifier];

      if (v16)
      {
        v19 = ",";
      }

      else
      {
        v19 = &unk_1C9770416;
      }

      v20 = [(NSArray *)self->_significantEventObservations objectAtIndexedSubscript:v16];
      [v3 appendFormat:@"%s%@ significant event identifier=%@", v19, v20, v18];

      ++v16;
    }

    while (v16 < [(NSArray *)self->_significantEventObservations count]);
  }

  [v3 appendFormat:@"\nrecognized object observations:\n "];
  if ([(NSArray *)self->_recognizedObjectObservations count])
  {
    v21 = 0;
    do
    {
      v22 = [(NSArray *)self->_recognizedObjectObservations objectAtIndexedSubscript:v21];
      v23 = [v22 labels];

      if (v21)
      {
        v24 = ",";
      }

      else
      {
        v24 = &unk_1C9770416;
      }

      v25 = [(NSArray *)self->_recognizedObjectObservations objectAtIndexedSubscript:v21];
      [v3 appendFormat:@"%s%@ recognized object labels=%@", v24, v25, v23];

      ++v21;
    }

    while (v21 < [(NSArray *)self->_recognizedObjectObservations count]);
  }

  [v3 appendFormat:@"\nsalient object observations:\n "];
  if ([(NSArray *)self->_saliencyObservations count])
  {
    v26 = 0;
    do
    {
      v27 = [(NSArray *)self->_saliencyObservations objectAtIndexedSubscript:v26];
      v28 = [v27 salientObjects];

      if (v26)
      {
        v29 = ",";
      }

      else
      {
        v29 = &unk_1C9770416;
      }

      v30 = [(NSArray *)self->_saliencyObservations objectAtIndexedSubscript:v26];
      [v3 appendFormat:@"%s%@ salient objects=%@", v29, v30, v28];

      ++v26;
    }

    while (v26 < [(NSArray *)self->_saliencyObservations count]);
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end