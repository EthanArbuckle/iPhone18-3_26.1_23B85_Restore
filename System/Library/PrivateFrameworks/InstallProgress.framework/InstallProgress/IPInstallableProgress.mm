@interface IPInstallableProgress
- (IPInstallableProgress)initWithSource:(id)source progressSnapshot:(id)snapshot;
- (double)phaseFractionCompleted;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)phaseCompletedUnitCount;
- (unint64_t)phaseTotalUnitCount;
@end

@implementation IPInstallableProgress

- (IPInstallableProgress)initWithSource:(id)source progressSnapshot:(id)snapshot
{
  sourceCopy = source;
  snapshotCopy = snapshot;
  v14.receiver = self;
  v14.super_class = IPInstallableProgress;
  v9 = [(IPInstallableProgress *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_source, source);
    v11 = [snapshotCopy copy];
    data = v10->_data;
    v10->_data = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  data = self->_data;
  source = self->_source;

  return [v4 initWithSource:source progressSnapshot:data];
}

- (unint64_t)phaseTotalUnitCount
{
  data = self->_data;
  installPhase = [(IPInstallableProgressData *)data installPhase];

  return [(IPInstallableProgressData *)data totalUnitCountForPhase:installPhase];
}

- (unint64_t)phaseCompletedUnitCount
{
  data = self->_data;
  installPhase = [(IPInstallableProgressData *)data installPhase];

  return [(IPInstallableProgressData *)data completedUnitCountForPhase:installPhase];
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