@interface HAMenstrualAlgorithmsDeviationInput
- (HAMenstrualAlgorithmsDeviationInput)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAMenstrualAlgorithmsDeviationInput

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  julianDayMinAnalysisWindowStartIrregular = self->_julianDayMinAnalysisWindowStartIrregular;
  v5 = NSStringFromSelector(sel_julianDayMinAnalysisWindowStartIrregular);
  [coderCopy encodeObject:julianDayMinAnalysisWindowStartIrregular forKey:v5];

  julianDayMinAnalysisWindowStartInfrequent = self->_julianDayMinAnalysisWindowStartInfrequent;
  v7 = NSStringFromSelector(sel_julianDayMinAnalysisWindowStartInfrequent);
  [coderCopy encodeObject:julianDayMinAnalysisWindowStartInfrequent forKey:v7];

  julianDayMinAnalysisWindowStartProlonged = self->_julianDayMinAnalysisWindowStartProlonged;
  v9 = NSStringFromSelector(sel_julianDayMinAnalysisWindowStartProlonged);
  [coderCopy encodeObject:julianDayMinAnalysisWindowStartProlonged forKey:v9];

  julianDayMinAnalysisWindowStartSpotting = self->_julianDayMinAnalysisWindowStartSpotting;
  v11 = NSStringFromSelector(sel_julianDayMinAnalysisWindowStartSpotting);
  [coderCopy encodeObject:julianDayMinAnalysisWindowStartSpotting forKey:v11];

  julianDayMinAnalysisWindowEndIrregular = self->_julianDayMinAnalysisWindowEndIrregular;
  v13 = NSStringFromSelector(sel_julianDayMinAnalysisWindowEndIrregular);
  [coderCopy encodeObject:julianDayMinAnalysisWindowEndIrregular forKey:v13];

  julianDayMinAnalysisWindowEndInfrequent = self->_julianDayMinAnalysisWindowEndInfrequent;
  v15 = NSStringFromSelector(sel_julianDayMinAnalysisWindowEndInfrequent);
  [coderCopy encodeObject:julianDayMinAnalysisWindowEndInfrequent forKey:v15];

  julianDayMinAnalysisWindowEndProlonged = self->_julianDayMinAnalysisWindowEndProlonged;
  v17 = NSStringFromSelector(sel_julianDayMinAnalysisWindowEndProlonged);
  [coderCopy encodeObject:julianDayMinAnalysisWindowEndProlonged forKey:v17];

  julianDayMinAnalysisWindowEndSpotting = self->_julianDayMinAnalysisWindowEndSpotting;
  v19 = NSStringFromSelector(sel_julianDayMinAnalysisWindowEndSpotting);
  [coderCopy encodeObject:julianDayMinAnalysisWindowEndSpotting forKey:v19];
}

- (HAMenstrualAlgorithmsDeviationInput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HAMenstrualAlgorithmsDeviationInput *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_julianDayMinAnalysisWindowStartIrregular);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    julianDayMinAnalysisWindowStartIrregular = v5->_julianDayMinAnalysisWindowStartIrregular;
    v5->_julianDayMinAnalysisWindowStartIrregular = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_julianDayMinAnalysisWindowStartInfrequent);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    julianDayMinAnalysisWindowStartInfrequent = v5->_julianDayMinAnalysisWindowStartInfrequent;
    v5->_julianDayMinAnalysisWindowStartInfrequent = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_julianDayMinAnalysisWindowStartProlonged);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    julianDayMinAnalysisWindowStartProlonged = v5->_julianDayMinAnalysisWindowStartProlonged;
    v5->_julianDayMinAnalysisWindowStartProlonged = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_julianDayMinAnalysisWindowStartSpotting);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    julianDayMinAnalysisWindowStartSpotting = v5->_julianDayMinAnalysisWindowStartSpotting;
    v5->_julianDayMinAnalysisWindowStartSpotting = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_julianDayMinAnalysisWindowEndIrregular);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    julianDayMinAnalysisWindowEndIrregular = v5->_julianDayMinAnalysisWindowEndIrregular;
    v5->_julianDayMinAnalysisWindowEndIrregular = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_julianDayMinAnalysisWindowEndInfrequent);
    v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];
    julianDayMinAnalysisWindowEndInfrequent = v5->_julianDayMinAnalysisWindowEndInfrequent;
    v5->_julianDayMinAnalysisWindowEndInfrequent = v28;

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_julianDayMinAnalysisWindowEndProlonged);
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
    julianDayMinAnalysisWindowEndProlonged = v5->_julianDayMinAnalysisWindowEndProlonged;
    v5->_julianDayMinAnalysisWindowEndProlonged = v32;

    v34 = objc_opt_class();
    v35 = NSStringFromSelector(sel_julianDayMinAnalysisWindowEndSpotting);
    v36 = [coderCopy decodeObjectOfClass:v34 forKey:v35];
    julianDayMinAnalysisWindowEndSpotting = v5->_julianDayMinAnalysisWindowEndSpotting;
    v5->_julianDayMinAnalysisWindowEndSpotting = v36;

    v38 = v5;
  }

  return v5;
}

@end