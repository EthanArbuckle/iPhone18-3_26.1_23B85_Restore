@interface NgtMenstrualAlgorithmsDeviationAnalysis
- (NgtMenstrualAlgorithmsDeviationAnalysis)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NgtMenstrualAlgorithmsDeviationAnalysis

- (NgtMenstrualAlgorithmsDeviationAnalysis)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NgtMenstrualAlgorithmsDeviationAnalysis;
  v5 = [(NgtMenstrualAlgorithmsDeviationAnalysis *)&v24 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_irregularBleeding);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    irregularBleeding = v5->_irregularBleeding;
    v5->_irregularBleeding = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_infrequentBleeding);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    infrequentBleeding = v5->_infrequentBleeding;
    v5->_infrequentBleeding = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_prolongedBleeding);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    prolongedBleeding = v5->_prolongedBleeding;
    v5->_prolongedBleeding = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_spotting);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    spotting = v5->_spotting;
    v5->_spotting = v20;

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  irregularBleeding = self->_irregularBleeding;
  v5 = NSStringFromSelector(sel_irregularBleeding);
  [v12 encodeObject:irregularBleeding forKey:v5];

  infrequentBleeding = self->_infrequentBleeding;
  v7 = NSStringFromSelector(sel_infrequentBleeding);
  [v12 encodeObject:infrequentBleeding forKey:v7];

  prolongedBleeding = self->_prolongedBleeding;
  v9 = NSStringFromSelector(sel_prolongedBleeding);
  [v12 encodeObject:prolongedBleeding forKey:v9];

  spotting = self->_spotting;
  v11 = NSStringFromSelector(sel_spotting);
  [v12 encodeObject:spotting forKey:v11];
}

@end