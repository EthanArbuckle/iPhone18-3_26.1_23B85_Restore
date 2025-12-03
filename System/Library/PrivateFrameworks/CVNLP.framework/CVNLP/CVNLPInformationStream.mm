@interface CVNLPInformationStream
- (CVNLPInformationStream)initWithDecodingWeight:(id)weight;
- (CVNLPInformationStream)initWithDecodingWeight:(id)weight lowerBoundLogProbability:(id)probability;
@end

@implementation CVNLPInformationStream

- (CVNLPInformationStream)initWithDecodingWeight:(id)weight
{
  weightCopy = weight;
  v8 = objc_msgSend_defaultLowerBoundLogProbability(CVNLPInformationStream, v5, v6, v7);
  v10 = objc_msgSend_initWithDecodingWeight_lowerBoundLogProbability_(self, v9, weightCopy, v8);

  return v10;
}

- (CVNLPInformationStream)initWithDecodingWeight:(id)weight lowerBoundLogProbability:(id)probability
{
  weightCopy = weight;
  probabilityCopy = probability;
  v20.receiver = self;
  v20.super_class = CVNLPInformationStream;
  v9 = [(CVNLPInformationStream *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_decodingWeight, weight);
    objc_storeStrong(&v10->_lowerBoundLogProbability, probability);
    objc_msgSend_doubleValue(weightCopy, v11, v12, v13);
    v10->_decodingWeightValue = v14;
    objc_msgSend_doubleValue(probabilityCopy, v15, v16, v17);
    v10->_lowerBoundLogProbabilityValue = v18;
  }

  return v10;
}

@end