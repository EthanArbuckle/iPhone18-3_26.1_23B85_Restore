@interface NgtMenstrualAlgorithmsTelemetry
- (NgtMenstrualAlgorithmsTelemetry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NgtMenstrualAlgorithmsTelemetry

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  numHistoricalCycles = self->_numHistoricalCycles;
  v5 = NSStringFromSelector(sel_numHistoricalCycles);
  [coderCopy encodeObject:numHistoricalCycles forKey:v5];

  baselineStdUncapped = self->_baselineStdUncapped;
  v7 = NSStringFromSelector(sel_baselineStdUncapped);
  [coderCopy encodeObject:baselineStdUncapped forKey:v7];

  baselineMean = self->_baselineMean;
  v9 = NSStringFromSelector(sel_baselineMean);
  [coderCopy encodeObject:baselineMean forKey:v9];

  model0Width = self->_model0Width;
  v11 = NSStringFromSelector(sel_model0Width);
  [coderCopy encodeObject:model0Width forKey:v11];

  daysToModel0Drs = self->_daysToModel0Drs;
  v13 = NSStringFromSelector(sel_daysToModel0Drs);
  [coderCopy encodeObject:daysToModel0Drs forKey:v13];

  model1Width = self->_model1Width;
  v15 = NSStringFromSelector(sel_model1Width);
  [coderCopy encodeObject:model1Width forKey:v15];

  daysToModel1Drs = self->_daysToModel1Drs;
  v17 = NSStringFromSelector(sel_daysToModel1Drs);
  [coderCopy encodeObject:daysToModel1Drs forKey:v17];

  model2Width = self->_model2Width;
  v19 = NSStringFromSelector(sel_model2Width);
  [coderCopy encodeObject:model2Width forKey:v19];

  daysToModel2Drs = self->_daysToModel2Drs;
  v21 = NSStringFromSelector(sel_daysToModel2Drs);
  [coderCopy encodeObject:daysToModel2Drs forKey:v21];

  age = self->_age;
  v23 = NSStringFromSelector("age");
  [coderCopy encodeObject:age forKey:v23];

  sliceDayHrMean = self->_sliceDayHrMean;
  v25 = NSStringFromSelector(sel_sliceDayHrMean);
  [coderCopy encodeObject:sliceDayHrMean forKey:v25];

  sliceDayHrStd = self->_sliceDayHrStd;
  v27 = NSStringFromSelector(sel_sliceDayHrStd);
  [coderCopy encodeObject:sliceDayHrStd forKey:v27];

  sliceDayHrCount = self->_sliceDayHrCount;
  v29 = NSStringFromSelector(sel_sliceDayHrCount);
  [coderCopy encodeObject:sliceDayHrCount forKey:v29];

  sliceNightHrMean = self->_sliceNightHrMean;
  v31 = NSStringFromSelector(sel_sliceNightHrMean);
  [coderCopy encodeObject:sliceNightHrMean forKey:v31];

  sliceNightHrStd = self->_sliceNightHrStd;
  v33 = NSStringFromSelector(sel_sliceNightHrStd);
  [coderCopy encodeObject:sliceNightHrStd forKey:v33];

  sliceNightHrCount = self->_sliceNightHrCount;
  v35 = NSStringFromSelector(sel_sliceNightHrCount);
  [coderCopy encodeObject:sliceNightHrCount forKey:v35];

  daysSinceLastPeriod = self->_daysSinceLastPeriod;
  v37 = NSStringFromSelector(sel_daysSinceLastPeriod);
  [coderCopy encodeObject:daysSinceLastPeriod forKey:v37];

  normalizedDaysSinceLastPeriod = self->_normalizedDaysSinceLastPeriod;
  v39 = NSStringFromSelector(sel_normalizedDaysSinceLastPeriod);
  [coderCopy encodeObject:normalizedDaysSinceLastPeriod forKey:v39];

  daysSinceLastContraceptionEnd = self->_daysSinceLastContraceptionEnd;
  v41 = NSStringFromSelector(sel_daysSinceLastContraceptionEnd);
  [coderCopy encodeObject:daysSinceLastContraceptionEnd forKey:v41];

  daysSinceLastPregnancyEnd = self->_daysSinceLastPregnancyEnd;
  v43 = NSStringFromSelector(sel_daysSinceLastPregnancyEnd);
  [coderCopy encodeObject:daysSinceLastPregnancyEnd forKey:v43];

  daysSinceLastLactationEnd = self->_daysSinceLastLactationEnd;
  v45 = NSStringFromSelector(sel_daysSinceLastLactationEnd);
  [coderCopy encodeObject:daysSinceLastLactationEnd forKey:v45];

  numOutliers = self->_numOutliers;
  v47 = NSStringFromSelector(sel_numOutliers);
  [coderCopy encodeObject:numOutliers forKey:v47];

  ensembleSelectedModelIdx = self->_ensembleSelectedModelIdx;
  v49 = NSStringFromSelector(sel_ensembleSelectedModelIdx);
  [coderCopy encodeObject:ensembleSelectedModelIdx forKey:v49];
}

- (NgtMenstrualAlgorithmsTelemetry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NgtMenstrualAlgorithmsTelemetry *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_numHistoricalCycles);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    numHistoricalCycles = v5->_numHistoricalCycles;
    v5->_numHistoricalCycles = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_baselineStdUncapped);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    baselineStdUncapped = v5->_baselineStdUncapped;
    v5->_baselineStdUncapped = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_baselineMean);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    baselineMean = v5->_baselineMean;
    v5->_baselineMean = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_model0Width);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    model0Width = v5->_model0Width;
    v5->_model0Width = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_daysToModel0Drs);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    daysToModel0Drs = v5->_daysToModel0Drs;
    v5->_daysToModel0Drs = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_model1Width);
    v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];
    model1Width = v5->_model1Width;
    v5->_model1Width = v28;

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_daysToModel1Drs);
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
    daysToModel1Drs = v5->_daysToModel1Drs;
    v5->_daysToModel1Drs = v32;

    v34 = objc_opt_class();
    v35 = NSStringFromSelector(sel_model2Width);
    v36 = [coderCopy decodeObjectOfClass:v34 forKey:v35];
    model2Width = v5->_model2Width;
    v5->_model2Width = v36;

    v38 = objc_opt_class();
    v39 = NSStringFromSelector(sel_daysToModel2Drs);
    v40 = [coderCopy decodeObjectOfClass:v38 forKey:v39];
    daysToModel2Drs = v5->_daysToModel2Drs;
    v5->_daysToModel2Drs = v40;

    v42 = objc_opt_class();
    v43 = NSStringFromSelector("age");
    v44 = [coderCopy decodeObjectOfClass:v42 forKey:v43];
    age = v5->_age;
    v5->_age = v44;

    v46 = objc_opt_class();
    v47 = NSStringFromSelector(sel_sliceDayHrMean);
    v48 = [coderCopy decodeObjectOfClass:v46 forKey:v47];
    sliceDayHrMean = v5->_sliceDayHrMean;
    v5->_sliceDayHrMean = v48;

    v50 = objc_opt_class();
    v51 = NSStringFromSelector(sel_sliceDayHrStd);
    v52 = [coderCopy decodeObjectOfClass:v50 forKey:v51];
    sliceDayHrStd = v5->_sliceDayHrStd;
    v5->_sliceDayHrStd = v52;

    v54 = objc_opt_class();
    v55 = NSStringFromSelector(sel_sliceDayHrCount);
    v56 = [coderCopy decodeObjectOfClass:v54 forKey:v55];
    sliceDayHrCount = v5->_sliceDayHrCount;
    v5->_sliceDayHrCount = v56;

    v58 = objc_opt_class();
    v59 = NSStringFromSelector(sel_sliceNightHrMean);
    v60 = [coderCopy decodeObjectOfClass:v58 forKey:v59];
    sliceNightHrMean = v5->_sliceNightHrMean;
    v5->_sliceNightHrMean = v60;

    v62 = objc_opt_class();
    v63 = NSStringFromSelector(sel_sliceNightHrStd);
    v64 = [coderCopy decodeObjectOfClass:v62 forKey:v63];
    sliceNightHrStd = v5->_sliceNightHrStd;
    v5->_sliceNightHrStd = v64;

    v66 = objc_opt_class();
    v67 = NSStringFromSelector(sel_sliceNightHrCount);
    v68 = [coderCopy decodeObjectOfClass:v66 forKey:v67];
    sliceNightHrCount = v5->_sliceNightHrCount;
    v5->_sliceNightHrCount = v68;

    v70 = objc_opt_class();
    v71 = NSStringFromSelector(sel_daysSinceLastPeriod);
    v72 = [coderCopy decodeObjectOfClass:v70 forKey:v71];
    daysSinceLastPeriod = v5->_daysSinceLastPeriod;
    v5->_daysSinceLastPeriod = v72;

    v74 = objc_opt_class();
    v75 = NSStringFromSelector(sel_normalizedDaysSinceLastPeriod);
    v76 = [coderCopy decodeObjectOfClass:v74 forKey:v75];
    normalizedDaysSinceLastPeriod = v5->_normalizedDaysSinceLastPeriod;
    v5->_normalizedDaysSinceLastPeriod = v76;

    v78 = objc_opt_class();
    v79 = NSStringFromSelector(sel_daysSinceLastContraceptionEnd);
    v80 = [coderCopy decodeObjectOfClass:v78 forKey:v79];
    daysSinceLastContraceptionEnd = v5->_daysSinceLastContraceptionEnd;
    v5->_daysSinceLastContraceptionEnd = v80;

    v82 = objc_opt_class();
    v83 = NSStringFromSelector(sel_daysSinceLastPregnancyEnd);
    v84 = [coderCopy decodeObjectOfClass:v82 forKey:v83];
    daysSinceLastPregnancyEnd = v5->_daysSinceLastPregnancyEnd;
    v5->_daysSinceLastPregnancyEnd = v84;

    v86 = objc_opt_class();
    v87 = NSStringFromSelector(sel_daysSinceLastLactationEnd);
    v88 = [coderCopy decodeObjectOfClass:v86 forKey:v87];
    daysSinceLastLactationEnd = v5->_daysSinceLastLactationEnd;
    v5->_daysSinceLastLactationEnd = v88;

    v90 = objc_opt_class();
    v91 = NSStringFromSelector(sel_numOutliers);
    v92 = [coderCopy decodeObjectOfClass:v90 forKey:v91];
    numOutliers = v5->_numOutliers;
    v5->_numOutliers = v92;

    v94 = objc_opt_class();
    v95 = NSStringFromSelector(sel_ensembleSelectedModelIdx);
    v96 = [coderCopy decodeObjectOfClass:v94 forKey:v95];
    ensembleSelectedModelIdx = v5->_ensembleSelectedModelIdx;
    v5->_ensembleSelectedModelIdx = v96;

    v98 = v5;
  }

  return v5;
}

@end