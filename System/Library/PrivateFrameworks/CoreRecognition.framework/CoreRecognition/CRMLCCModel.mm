@interface CRMLCCModel
- (id)creditcardMLResultsFromImage:(id)a3 textFeatures:(id)a4 invert:(BOOL)a5 tryPatternMatch:(BOOL)a6;
- (id)creditcardResultsFromImage:(id)a3;
- (id)creditcardResultsFromImage:(id)a3 textFeatures:(id)a4 invert:(BOOL)a5 tryPatternMatch:(BOOL)a6;
@end

@implementation CRMLCCModel

- (id)creditcardResultsFromImage:(id)a3
{
  [(CRMLModel *)self activationsFromImage:a3];
  v4 = [(CRMLModel *)self decodeActivations:v6];
  v7 = v6;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v7);

  return v4;
}

- (id)creditcardResultsFromImage:(id)a3 textFeatures:(id)a4 invert:(BOOL)a5 tryPatternMatch:(BOOL)a6
{
  v6 = [(CRMLCCModel *)self creditcardMLResultsFromImage:a3 textFeatures:a4 invert:a5 tryPatternMatch:a6];

  return v6;
}

- (id)creditcardMLResultsFromImage:(id)a3 textFeatures:(id)a4 invert:(BOOL)a5 tryPatternMatch:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if ([v11 shouldExpandToFullWidth])
  {
    v12 = INFINITY;
  }

  else
  {
    v12 = 9.0;
  }

  v38 = [MEMORY[0x277CBEB38] dictionary];
  v13 = +[GeometricCutTools findCorrectedBoundingBoxOfTextFeature:inImageWithSize:](GeometricCutTools, "findCorrectedBoundingBoxOfTextFeature:inImageWithSize:", v11, [v10 width], objc_msgSend(v10, "height"));
  v14 = [v10 imageByCroppingTextFeature:v11 correctedBoundingBox:v13 padding:v12 networkInputSize:{6.0, 18.0, 28.0}];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 imageByApplyingHistogramCorrection];
    [v11 setImageCut:v16];
    v17 = +[CRInsights sharedInsights];
    [v17 provideInsightValue:v11 forKey:@"CRInsightsCardImageCutBufferKey"];

    v44 = 0uLL;
    v45 = 0;
    if (v7)
    {
      v18 = [v16 imageByRotating180];
      [(CRMLModel *)self activationsFromImage:v18];
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
      [(CRMLModel *)self activationsFromImage:v16];
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
      v35 = v6;
      v37 = v13;
      if (v16)
      {
        [v16 vImage];
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
      }

      v19 = [v10 width];
      v20 = [v10 height];
      v21 = [(CRMLModel *)self codeMap];
      memset(v41, 0, sizeof(v41));
      std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v41, v44, *(&v44 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v44 + 1) - v44) >> 3));
      v22 = [GeometricCutTools geometricRecognitionOf:v11 inDerotatedRegion:&v42 withPadding:v37 fromCorrectedBoundingBox:v21 inImageWithSize:v41 withCodeMap:v7 activations:v12 invert:6.0 networkInputSize:v19, v20, self->super._modelWidth, self->super._modelHeight];
      v36 = [v22 mutableCopy];

      *&v42 = v41;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v42);
      v23 = [v11 subFeatures];
      v24 = [v23 count];

      if (v24 == 10)
      {
        [v11 addKohlsDigitProjection];
        if (v16)
        {
          [v16 vImage];
        }

        else
        {
          v42 = 0u;
          v43 = 0u;
        }

        v25 = [v10 width];
        v26 = [v10 height];
        v27 = [(CRMLModel *)self codeMap];
        memset(v40, 0, sizeof(v40));
        std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v40, v44, *(&v44 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v44 + 1) - v44) >> 3));
        v28 = [GeometricCutTools geometricRecognitionOf:v11 inDerotatedRegion:&v42 withPadding:v37 fromCorrectedBoundingBox:v27 inImageWithSize:v40 withCodeMap:v7 activations:v12 invert:6.0 networkInputSize:v25, v26, self->super._modelWidth, self->super._modelHeight];
        *&v42 = v40;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v42);
        v29 = [v28 objectForKey:@"CardNumber"];
        [v36 setObject:v29 forKey:@"CardNumber"];
      }

      [v38 setObject:v36 forKey:@"FastScanningGeometricKey"];
      v30 = [(CRMLModel *)self codeMap];
      v31 = [(CRMLModel *)self classCount];
      memset(v39, 0, sizeof(v39));
      std::vector<std::vector<std::vector<float>>>::__init_with_size[abi:ne200100]<std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(v39, v44, *(&v44 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v44 + 1) - v44) >> 3));
      v32 = _creditCardImage2stringCTCSegment(v11, v30, v31, v39);
      *&v42 = v39;
      std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v42);
      [v38 setObject:v32 forKey:@"FastScanningCTCSegmentKey"];
      v13 = v37;
      if (v35)
      {
        v33 = [ActivationMapTools textFromActivationMap:&v44 codeMap:[(CRMLModel *)self codeMap] invert:v7];
        if (v33)
        {
          [v38 setObject:v33 forKey:@"FastScanningPatternSearchKey"];
        }
      }
    }

    *&v42 = &v44;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v42);
  }

  return v38;
}

@end