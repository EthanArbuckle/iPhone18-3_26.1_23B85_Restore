@interface HMIPersonsModelsSummary
- (HMIPersonsModelsSummary)initWithModelSummaries:(id)a3 homeToExternalEquivalencies:(unint64_t)a4 externalToExternalEquivalencies:(unint64_t)a5;
@end

@implementation HMIPersonsModelsSummary

- (HMIPersonsModelsSummary)initWithModelSummaries:(id)a3 homeToExternalEquivalencies:(unint64_t)a4 externalToExternalEquivalencies:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HMIPersonsModelsSummary;
  v10 = [(HMIPersonsModelsSummary *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_modelSummaries, a3);
    v11->_homeToExternalEquivalencies = a4;
    v11->_externalToExternalEquivalencies = a5;
  }

  return v11;
}

@end