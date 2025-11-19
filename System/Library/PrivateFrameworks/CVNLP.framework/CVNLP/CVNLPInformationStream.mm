@interface CVNLPInformationStream
- (CVNLPInformationStream)initWithDecodingWeight:(id)a3;
- (CVNLPInformationStream)initWithDecodingWeight:(id)a3 lowerBoundLogProbability:(id)a4;
@end

@implementation CVNLPInformationStream

- (CVNLPInformationStream)initWithDecodingWeight:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_defaultLowerBoundLogProbability(CVNLPInformationStream, v5, v6, v7);
  v10 = objc_msgSend_initWithDecodingWeight_lowerBoundLogProbability_(self, v9, v4, v8);

  return v10;
}

- (CVNLPInformationStream)initWithDecodingWeight:(id)a3 lowerBoundLogProbability:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = CVNLPInformationStream;
  v9 = [(CVNLPInformationStream *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_decodingWeight, a3);
    objc_storeStrong(&v10->_lowerBoundLogProbability, a4);
    objc_msgSend_doubleValue(v7, v11, v12, v13);
    v10->_decodingWeightValue = v14;
    objc_msgSend_doubleValue(v8, v15, v16, v17);
    v10->_lowerBoundLogProbabilityValue = v18;
  }

  return v10;
}

@end