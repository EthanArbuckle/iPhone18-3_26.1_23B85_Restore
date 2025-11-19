@interface IPInstallableProgress
- (IPInstallableProgress)initWithSource:(id)a3 progressSnapshot:(id)a4;
- (double)phaseFractionCompleted;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)phaseCompletedUnitCount;
- (unint64_t)phaseTotalUnitCount;
@end

@implementation IPInstallableProgress

- (IPInstallableProgress)initWithSource:(id)a3 progressSnapshot:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = IPInstallableProgress;
  v9 = [(IPInstallableProgress *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_source, a3);
    v11 = [v8 copy];
    data = v10->_data;
    v10->_data = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  data = self->_data;
  source = self->_source;

  return [v4 initWithSource:source progressSnapshot:data];
}

- (unint64_t)phaseTotalUnitCount
{
  data = self->_data;
  v3 = [(IPInstallableProgressData *)data installPhase];

  return [(IPInstallableProgressData *)data totalUnitCountForPhase:v3];
}

- (unint64_t)phaseCompletedUnitCount
{
  data = self->_data;
  v3 = [(IPInstallableProgressData *)data installPhase];

  return [(IPInstallableProgressData *)data completedUnitCountForPhase:v3];
}

- (double)phaseFractionCompleted
{
  v3 = [(IPInstallableProgressData *)self->_data totalUnitCountForPhase:[(IPInstallableProgressData *)self->_data installPhase]];
  v4 = [(IPInstallableProgressData *)self->_data completedUnitCountForPhase:[(IPInstallableProgressData *)self->_data installPhase]];
  if (v3)
  {
    return v4 / v3;
  }

  else
  {
    return 1.0;
  }
}

@end