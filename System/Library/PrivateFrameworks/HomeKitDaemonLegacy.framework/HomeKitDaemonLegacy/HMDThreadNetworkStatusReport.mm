@interface HMDThreadNetworkStatusReport
- (HMDThreadNetworkStatusReport)initWithNumAdvertisedBRs:(unint64_t)rs numAppleBRs:(unint64_t)bRs numThirdPartyBRs:(unint64_t)partyBRs numThreadNetworks:(unint64_t)networks maxSimuIPPrefixesDetected:(unint64_t)detected txTotal:(unint64_t)total txSuccess:(unint64_t)success txDelayAvg:(unint64_t)self0 rxTotal:(unint64_t)self1 rxSuccess:(unint64_t)self2 reportDuration:(unint64_t)self3;
@end

@implementation HMDThreadNetworkStatusReport

- (HMDThreadNetworkStatusReport)initWithNumAdvertisedBRs:(unint64_t)rs numAppleBRs:(unint64_t)bRs numThirdPartyBRs:(unint64_t)partyBRs numThreadNetworks:(unint64_t)networks maxSimuIPPrefixesDetected:(unint64_t)detected txTotal:(unint64_t)total txSuccess:(unint64_t)success txDelayAvg:(unint64_t)self0 rxTotal:(unint64_t)self1 rxSuccess:(unint64_t)self2 reportDuration:(unint64_t)self3
{
  v20.receiver = self;
  v20.super_class = HMDThreadNetworkStatusReport;
  result = [(HMDThreadNetworkStatusReport *)&v20 init];
  if (result)
  {
    result->_numAdvertisedBRs = rs;
    result->_numAppleBRs = bRs;
    result->_numThirdPartyBRs = partyBRs;
    result->_numThreadNetworks = networks;
    result->_maxSimuIPPrefixesDetected = detected;
    result->_txTotal = total;
    result->_txSuccess = success;
    result->_txDelayAvg = avg;
    result->_rxTotal = rxTotal;
    result->_rxSuccess = rxSuccess;
    result->_reportDuration = duration;
  }

  return result;
}

@end