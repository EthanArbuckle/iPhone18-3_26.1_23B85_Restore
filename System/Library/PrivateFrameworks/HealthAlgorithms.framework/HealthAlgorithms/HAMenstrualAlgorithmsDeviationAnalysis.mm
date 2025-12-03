@interface HAMenstrualAlgorithmsDeviationAnalysis
- (HAMenstrualAlgorithmsDeviationAnalysis)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAMenstrualAlgorithmsDeviationAnalysis

- (HAMenstrualAlgorithmsDeviationAnalysis)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = HAMenstrualAlgorithmsDeviationAnalysis;
  v5 = [(HAMenstrualAlgorithmsDeviationAnalysis *)&v24 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_irregularBleeding);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    irregularBleeding = v5->_irregularBleeding;
    v5->_irregularBleeding = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_infrequentBleeding);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    infrequentBleeding = v5->_infrequentBleeding;
    v5->_infrequentBleeding = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_prolongedBleeding);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    prolongedBleeding = v5->_prolongedBleeding;
    v5->_prolongedBleeding = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_spotting);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    spotting = v5->_spotting;
    v5->_spotting = v20;

    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  irregularBleeding = self->_irregularBleeding;
  v5 = NSStringFromSelector(sel_irregularBleeding);
  [coderCopy encodeObject:irregularBleeding forKey:v5];

  infrequentBleeding = self->_infrequentBleeding;
  v7 = NSStringFromSelector(sel_infrequentBleeding);
  [coderCopy encodeObject:infrequentBleeding forKey:v7];

  prolongedBleeding = self->_prolongedBleeding;
  v9 = NSStringFromSelector(sel_prolongedBleeding);
  [coderCopy encodeObject:prolongedBleeding forKey:v9];

  spotting = self->_spotting;
  v11 = NSStringFromSelector(sel_spotting);
  [coderCopy encodeObject:spotting forKey:v11];
}

@end