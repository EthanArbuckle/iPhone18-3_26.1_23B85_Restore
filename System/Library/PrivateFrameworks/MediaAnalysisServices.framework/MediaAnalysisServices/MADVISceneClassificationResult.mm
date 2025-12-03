@interface MADVISceneClassificationResult
- (MADVISceneClassificationResult)initWithCoder:(id)coder;
- (double)executionTimeInterval;
- (id)description;
- (unint64_t)executionNanoseconds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVISceneClassificationResult

- (MADVISceneClassificationResult)initWithCoder:(id)coder
{
  v37[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = MADVISceneClassificationResult;
  v5 = [(MADResult *)&v27 initWithCoder:coderCopy];
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

    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"ClassificationObservations"];
    classificationObservations = v5->_classificationObservations;
    v5->_classificationObservations = v16;

    v18 = [coderCopy decodeObjectOfClasses:v15 forKey:@"NSFWObservations"];
    nsfwObservations = v5->_nsfwObservations;
    v5->_nsfwObservations = v18;

    v20 = [coderCopy decodeObjectOfClasses:v15 forKey:@"SignificantEventObservations"];
    significantEventObservations = v5->_significantEventObservations;
    v5->_significantEventObservations = v20;

    v22 = [coderCopy decodeObjectOfClasses:v15 forKey:@"RecognizedObjectObservations"];
    recognizedObjectObservations = v5->_recognizedObjectObservations;
    v5->_recognizedObjectObservations = v22;

    v24 = [coderCopy decodeObjectOfClasses:v15 forKey:@"SaliencyObservations"];
    saliencyObservations = v5->_saliencyObservations;
    v5->_saliencyObservations = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVISceneClassificationResult;
  coderCopy = coder;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_classificationObservations forKey:{@"ClassificationObservations", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_nsfwObservations forKey:@"NSFWObservations"];
  [coderCopy encodeObject:self->_significantEventObservations forKey:@"SignificantEventObservations"];
  [coderCopy encodeObject:self->_recognizedObjectObservations forKey:@"RecognizedObjectObservations"];
  [coderCopy encodeObject:self->_saliencyObservations forKey:@"SaliencyObservations"];
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
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"\nclassification observations:\n "];
  if ([(NSArray *)self->_classificationObservations count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_classificationObservations objectAtIndexedSubscript:v6];
      identifier = [v7 identifier];

      if (v6)
      {
        v9 = ",";
      }

      else
      {
        v9 = &unk_1C9770416;
      }

      v10 = [(NSArray *)self->_classificationObservations objectAtIndexedSubscript:v6];
      [string appendFormat:@"%s%@ classification identifier=%@", v9, v10, identifier];

      ++v6;
    }

    while (v6 < [(NSArray *)self->_classificationObservations count]);
  }

  [string appendFormat:@"\nnsfw observations:\n "];
  if ([(NSArray *)self->_nsfwObservations count])
  {
    v11 = 0;
    do
    {
      v12 = [(NSArray *)self->_nsfwObservations objectAtIndexedSubscript:v11];
      identifier2 = [v12 identifier];

      if (v11)
      {
        v14 = ",";
      }

      else
      {
        v14 = &unk_1C9770416;
      }

      v15 = [(NSArray *)self->_nsfwObservations objectAtIndexedSubscript:v11];
      [string appendFormat:@"%s%@ nsfw identifier=%@", v14, v15, identifier2];

      ++v11;
    }

    while (v11 < [(NSArray *)self->_nsfwObservations count]);
  }

  [string appendFormat:@"\nsignificant event observations:\n "];
  if ([(NSArray *)self->_significantEventObservations count])
  {
    v16 = 0;
    do
    {
      v17 = [(NSArray *)self->_significantEventObservations objectAtIndexedSubscript:v16];
      identifier3 = [v17 identifier];

      if (v16)
      {
        v19 = ",";
      }

      else
      {
        v19 = &unk_1C9770416;
      }

      v20 = [(NSArray *)self->_significantEventObservations objectAtIndexedSubscript:v16];
      [string appendFormat:@"%s%@ significant event identifier=%@", v19, v20, identifier3];

      ++v16;
    }

    while (v16 < [(NSArray *)self->_significantEventObservations count]);
  }

  [string appendFormat:@"\nrecognized object observations:\n "];
  if ([(NSArray *)self->_recognizedObjectObservations count])
  {
    v21 = 0;
    do
    {
      v22 = [(NSArray *)self->_recognizedObjectObservations objectAtIndexedSubscript:v21];
      labels = [v22 labels];

      if (v21)
      {
        v24 = ",";
      }

      else
      {
        v24 = &unk_1C9770416;
      }

      v25 = [(NSArray *)self->_recognizedObjectObservations objectAtIndexedSubscript:v21];
      [string appendFormat:@"%s%@ recognized object labels=%@", v24, v25, labels];

      ++v21;
    }

    while (v21 < [(NSArray *)self->_recognizedObjectObservations count]);
  }

  [string appendFormat:@"\nsalient object observations:\n "];
  if ([(NSArray *)self->_saliencyObservations count])
  {
    v26 = 0;
    do
    {
      v27 = [(NSArray *)self->_saliencyObservations objectAtIndexedSubscript:v26];
      salientObjects = [v27 salientObjects];

      if (v26)
      {
        v29 = ",";
      }

      else
      {
        v29 = &unk_1C9770416;
      }

      v30 = [(NSArray *)self->_saliencyObservations objectAtIndexedSubscript:v26];
      [string appendFormat:@"%s%@ salient objects=%@", v29, v30, salientObjects];

      ++v26;
    }

    while (v26 < [(NSArray *)self->_saliencyObservations count]);
  }

  [string appendFormat:@">"];

  return string;
}

@end