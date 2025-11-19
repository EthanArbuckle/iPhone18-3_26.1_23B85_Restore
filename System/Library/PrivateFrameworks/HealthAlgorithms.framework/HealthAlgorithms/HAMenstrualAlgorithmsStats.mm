@interface HAMenstrualAlgorithmsStats
- (HAMenstrualAlgorithmsStats)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAMenstrualAlgorithmsStats

- (void)encodeWithCoder:(id)a3
{
  v22 = a3;
  medianCycleLength = self->_medianCycleLength;
  v5 = NSStringFromSelector(sel_medianCycleLength);
  [v22 encodeObject:medianCycleLength forKey:v5];

  medianMenstruationLength = self->_medianMenstruationLength;
  v7 = NSStringFromSelector(sel_medianMenstruationLength);
  [v22 encodeObject:medianMenstruationLength forKey:v7];

  lowerCycleLengthPercentile = self->_lowerCycleLengthPercentile;
  v9 = NSStringFromSelector(sel_lowerCycleLengthPercentile);
  [v22 encodeObject:lowerCycleLengthPercentile forKey:v9];

  lowerMenstruationLengthPercentile = self->_lowerMenstruationLengthPercentile;
  v11 = NSStringFromSelector(sel_lowerMenstruationLengthPercentile);
  [v22 encodeObject:lowerMenstruationLengthPercentile forKey:v11];

  upperCycleLengthPercentile = self->_upperCycleLengthPercentile;
  v13 = NSStringFromSelector(sel_upperCycleLengthPercentile);
  [v22 encodeObject:upperCycleLengthPercentile forKey:v13];

  upperMenstruationLengthPercentile = self->_upperMenstruationLengthPercentile;
  v15 = NSStringFromSelector(sel_upperMenstruationLengthPercentile);
  [v22 encodeObject:upperMenstruationLengthPercentile forKey:v15];

  numberOfCyclesFound = self->_numberOfCyclesFound;
  v17 = NSStringFromSelector(sel_numberOfCyclesFound);
  [v22 encodeObject:numberOfCyclesFound forKey:v17];

  julianDayOfFirstCycleStart = self->_julianDayOfFirstCycleStart;
  v19 = NSStringFromSelector(sel_julianDayOfFirstCycleStart);
  [v22 encodeObject:julianDayOfFirstCycleStart forKey:v19];

  julianDayOfLastCycleStart = self->_julianDayOfLastCycleStart;
  v21 = NSStringFromSelector(sel_julianDayOfLastCycleStart);
  [v22 encodeObject:julianDayOfLastCycleStart forKey:v21];
}

- (HAMenstrualAlgorithmsStats)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HAMenstrualAlgorithmsStats *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_medianCycleLength);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    medianCycleLength = v5->_medianCycleLength;
    v5->_medianCycleLength = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_medianMenstruationLength);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    medianMenstruationLength = v5->_medianMenstruationLength;
    v5->_medianMenstruationLength = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_lowerCycleLengthPercentile);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    lowerCycleLengthPercentile = v5->_lowerCycleLengthPercentile;
    v5->_lowerCycleLengthPercentile = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_lowerMenstruationLengthPercentile);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    lowerMenstruationLengthPercentile = v5->_lowerMenstruationLengthPercentile;
    v5->_lowerMenstruationLengthPercentile = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_upperCycleLengthPercentile);
    v24 = [v4 decodeObjectOfClass:v22 forKey:v23];
    upperCycleLengthPercentile = v5->_upperCycleLengthPercentile;
    v5->_upperCycleLengthPercentile = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_upperMenstruationLengthPercentile);
    v28 = [v4 decodeObjectOfClass:v26 forKey:v27];
    upperMenstruationLengthPercentile = v5->_upperMenstruationLengthPercentile;
    v5->_upperMenstruationLengthPercentile = v28;

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_numberOfCyclesFound);
    v32 = [v4 decodeObjectOfClass:v30 forKey:v31];
    numberOfCyclesFound = v5->_numberOfCyclesFound;
    v5->_numberOfCyclesFound = v32;

    v34 = objc_opt_class();
    v35 = NSStringFromSelector(sel_julianDayOfFirstCycleStart);
    v36 = [v4 decodeObjectOfClass:v34 forKey:v35];
    julianDayOfFirstCycleStart = v5->_julianDayOfFirstCycleStart;
    v5->_julianDayOfFirstCycleStart = v36;

    v38 = objc_opt_class();
    v39 = NSStringFromSelector(sel_julianDayOfLastCycleStart);
    v40 = [v4 decodeObjectOfClass:v38 forKey:v39];
    julianDayOfLastCycleStart = v5->_julianDayOfLastCycleStart;
    v5->_julianDayOfLastCycleStart = v40;

    v42 = v5;
  }

  return v5;
}

@end