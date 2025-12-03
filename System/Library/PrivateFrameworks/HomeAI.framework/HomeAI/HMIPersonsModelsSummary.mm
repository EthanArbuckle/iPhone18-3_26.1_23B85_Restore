@interface HMIPersonsModelsSummary
- (HMIPersonsModelsSummary)initWithModelSummaries:(id)summaries homeToExternalEquivalencies:(unint64_t)equivalencies externalToExternalEquivalencies:(unint64_t)externalEquivalencies;
@end

@implementation HMIPersonsModelsSummary

- (HMIPersonsModelsSummary)initWithModelSummaries:(id)summaries homeToExternalEquivalencies:(unint64_t)equivalencies externalToExternalEquivalencies:(unint64_t)externalEquivalencies
{
  summariesCopy = summaries;
  v13.receiver = self;
  v13.super_class = HMIPersonsModelsSummary;
  v10 = [(HMIPersonsModelsSummary *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_modelSummaries, summaries);
    v11->_homeToExternalEquivalencies = equivalencies;
    v11->_externalToExternalEquivalencies = externalEquivalencies;
  }

  return v11;
}

@end