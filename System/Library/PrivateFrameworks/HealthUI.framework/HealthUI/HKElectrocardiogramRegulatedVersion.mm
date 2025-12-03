@interface HKElectrocardiogramRegulatedVersion
- (BOOL)_validateSourceVersion:(id)version algorithmVersion:(int64_t)algorithmVersion;
- (HKElectrocardiogramRegulatedVersion)initWithSourceVersion:(id)version algorithmVersion:(int64_t)algorithmVersion;
- (id)_updateVersionFromSourceVersion:(id)version algorithmVersion:(int64_t)algorithmVersion;
@end

@implementation HKElectrocardiogramRegulatedVersion

- (HKElectrocardiogramRegulatedVersion)initWithSourceVersion:(id)version algorithmVersion:(int64_t)algorithmVersion
{
  versionCopy = version;
  v15.receiver = self;
  v15.super_class = HKElectrocardiogramRegulatedVersion;
  v7 = [(HKElectrocardiogramRegulatedVersion *)&v15 init];
  v8 = v7;
  if (v7)
  {
    if (![(HKElectrocardiogramRegulatedVersion *)v7 _validateSourceVersion:versionCopy algorithmVersion:algorithmVersion])
    {
      v13 = 0;
      goto LABEL_6;
    }

    v9 = [(HKElectrocardiogramRegulatedVersion *)v8 _updateVersionFromSourceVersion:versionCopy algorithmVersion:algorithmVersion];
    updateVersion = v8->_updateVersion;
    v8->_updateVersion = v9;

    v11 = [(HKElectrocardiogramRegulatedVersion *)v8 _featureVersionFromUpdateVersion:v8->_updateVersion];
    featureVersion = v8->_featureVersion;
    v8->_featureVersion = v11;
  }

  v13 = v8;
LABEL_6:

  return v13;
}

- (BOOL)_validateSourceVersion:(id)version algorithmVersion:(int64_t)algorithmVersion
{
  if (version)
  {
    v4 = algorithmVersion == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (id)_updateVersionFromSourceVersion:(id)version algorithmVersion:(int64_t)algorithmVersion
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  MEMORY[0x1C6930D80](&v7, version, a2);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld", algorithmVersion, v8];

  return v5;
}

@end