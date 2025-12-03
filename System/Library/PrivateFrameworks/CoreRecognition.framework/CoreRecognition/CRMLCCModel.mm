@interface CRMLCCModel
- (id)creditcardMLResultsFromImage:(id)image textFeatures:(id)features invert:(BOOL)invert tryPatternMatch:(BOOL)match;
- (id)creditcardResultsFromImage:(id)image;
- (id)creditcardResultsFromImage:(id)image textFeatures:(id)features invert:(BOOL)invert tryPatternMatch:(BOOL)match;
@end

@implementation CRMLCCModel

- (id)creditcardResultsFromImage:(id)image
{
  [(CRMLModel *)self activationsFromImage:image];
  v4 = [(CRMLModel *)self decodeActivations:v6];
  v7 = v6;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v7);

  return v4;
}

- (id)creditcardResultsFromImage:(id)image textFeatures:(id)features invert:(BOOL)invert tryPatternMatch:(BOOL)match
{
  v6 = [(CRMLCCModel *)self creditcardMLResultsFromImage:image textFeatures:features invert:invert tryPatternMatch:match];

  return v6;
}

- (id)creditcardMLResultsFromImage:(id)image textFeatures:(id)features invert:(BOOL)invert tryPatternMatch:(BOOL)match
{
  matchCopy = match;
  invertCopy = invert;
  imageCopy = image;
  featuresCopy = features;
  if ([featuresCopy shouldExpandToFullWidth])
  {
    v12 = INFINITY;
  }

  else
  {
    v12 = 9.0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = +[GeometricCutTools findCorrectedBoundingBoxOfTextFeature:inImageWithSize:](GeometricCutTools, "findCorrectedBoundingBoxOfTextFeature:inImageWithSize:", featuresCopy, [imageCopy width], objc_msgSend(imageCopy, "height"));
  v14 = [imageCopy imageByCroppingTextFeature:featuresCopy correctedBoundingBox:v13 padding:v12 networkInputSize:{6.0, 18.0, 28.0}];
  v15 = v14;
  if (v14)
  {
    imageByApplyingHistogramCorrection = [v14 imageByApplyingHistogramCorrection];
    [featuresCopy setImageCut:imageByApplyingHistogramCorrection];
    v17 = +[CRInsights sharedInsights];
    [v17 provideInsightValue:featuresCopy forKey:@"CRInsightsCardImageCutBufferKey"];

    v44 = 0uLL;
    v45 = 0;
    if (invertCopy)
    {
      imageByRotating180 = [imageByApplyingHistogramCorrection imageByRotating180];
      [(CRMLModel *)self activationsFromImage:imageByRotating180];
      std::vector<std::vector<std::vector<float>>>::__vdeallocate(&v44);
      v44 = v42;
      v45 = v43;
      *&v43 = 0;
      v42 = 0uLL;
      v46[0] = &v42;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v46);
    }

    else
    {
      [(CRMLModel *)self activationsFromImage:imageByApplyingHistogramCorrection];
      std::vector<std::vector<std::vector<float>>>::__vdeallocate(&v44);
      v44 = v42;
      v45 = v43;
      *&v43 = 0;
      v42 = 0uLL;
      v46[0] = &v42;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](v46);
    }

    if (*(&v44 + 1) != v44)
    {
      v35 = matchCopy;
      v37 = v13;
      if (imageByApplyingHistogramCorrection)
      {
        [imageByApplyingHistogramCorrection vImage];
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
      }

      width = [imageCopy width];
      height = [imageCopy height];
      codeMap = [(CRMLModel *)self codeMap];
      memset(v41, 0, sizeof(v41));
      std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v41, v44, *(&v44 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v44 + 1) - v44) >> 3));
      v22 = [GeometricCutTools geometricRecognitionOf:featuresCopy inDerotatedRegion:&v42 withPadding:v37 fromCorrectedBoundingBox:codeMap inImageWithSize:v41 withCodeMap:invertCopy activations:v12 invert:6.0 networkInputSize:width, height, self->super._modelWidth, self->super._modelHeight];
      v36 = [v22 mutableCopy];

      *&v42 = v41;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v42);
      subFeatures = [featuresCopy subFeatures];
      v24 = [subFeatures count];

      if (v24 == 10)
      {
        [featuresCopy addKohlsDigitProjection];
        if (imageByApplyingHistogramCorrection)
        {
          [imageByApplyingHistogramCorrection vImage];
        }

        else
        {
          v42 = 0u;
          v43 = 0u;
        }

        width2 = [imageCopy width];
        height2 = [imageCopy height];
        codeMap2 = [(CRMLModel *)self codeMap];
        memset(v40, 0, sizeof(v40));
        std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v40, v44, *(&v44 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v44 + 1) - v44) >> 3));
        v28 = [GeometricCutTools geometricRecognitionOf:featuresCopy inDerotatedRegion:&v42 withPadding:v37 fromCorrectedBoundingBox:codeMap2 inImageWithSize:v40 withCodeMap:invertCopy activations:v12 invert:6.0 networkInputSize:width2, height2, self->super._modelWidth, self->super._modelHeight];
        *&v42 = v40;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v42);
        v29 = [v28 objectForKey:@"CardNumber"];
        [v36 setObject:v29 forKey:@"CardNumber"];
      }

      [dictionary setObject:v36 forKey:@"FastScanningGeometricKey"];
      codeMap3 = [(CRMLModel *)self codeMap];
      classCount = [(CRMLModel *)self classCount];
      memset(v39, 0, sizeof(v39));
      std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v39, v44, *(&v44 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v44 + 1) - v44) >> 3));
      v32 = _creditCardImage2stringCTCSegment(featuresCopy, codeMap3, classCount, v39);
      *&v42 = v39;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v42);
      [dictionary setObject:v32 forKey:@"FastScanningCTCSegmentKey"];
      v13 = v37;
      if (v35)
      {
        v33 = [ActivationMapTools textFromActivationMap:&v44 codeMap:[(CRMLModel *)self codeMap] invert:invertCopy];
        if (v33)
        {
          [dictionary setObject:v33 forKey:@"FastScanningPatternSearchKey"];
        }
      }
    }

    *&v42 = &v44;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v42);
  }

  return dictionary;
}

@end