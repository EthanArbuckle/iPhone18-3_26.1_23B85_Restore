@interface HMDThreadNetworkStatusReport
- (HMDThreadNetworkStatusReport)initWithNumAdvertisedBRs:(unint64_t)a3 numAppleBRs:(unint64_t)a4 numThirdPartyBRs:(unint64_t)a5 numThreadNetworks:(unint64_t)a6 maxSimuIPPrefixesDetected:(unint64_t)a7 txTotal:(unint64_t)a8 txSuccess:(unint64_t)a9 txDelayAvg:(unint64_t)a10 rxTotal:(unint64_t)a11 rxSuccess:(unint64_t)a12 reportDuration:(unint64_t)a13;
@end

@implementation HMDThreadNetworkStatusReport

- (HMDThreadNetworkStatusReport)initWithNumAdvertisedBRs:(unint64_t)a3 numAppleBRs:(unint64_t)a4 numThirdPartyBRs:(unint64_t)a5 numThreadNetworks:(unint64_t)a6 maxSimuIPPrefixesDetected:(unint64_t)a7 txTotal:(unint64_t)a8 txSuccess:(unint64_t)a9 txDelayAvg:(unint64_t)a10 rxTotal:(unint64_t)a11 rxSuccess:(unint64_t)a12 reportDuration:(unint64_t)a13
{
  v20.receiver = self;
  v20.super_class = HMDThreadNetworkStatusReport;
  result = [(HMDThreadNetworkStatusReport *)&v20 init];
  if (result)
  {
    result->_numAdvertisedBRs = a3;
    result->_numAppleBRs = a4;
    result->_numThirdPartyBRs = a5;
    result->_numThreadNetworks = a6;
    result->_maxSimuIPPrefixesDetected = a7;
    result->_txTotal = a8;
    result->_txSuccess = a9;
    result->_txDelayAvg = a10;
    result->_rxTotal = a11;
    result->_rxSuccess = a12;
    result->_reportDuration = a13;
  }

  return result;
}

@end