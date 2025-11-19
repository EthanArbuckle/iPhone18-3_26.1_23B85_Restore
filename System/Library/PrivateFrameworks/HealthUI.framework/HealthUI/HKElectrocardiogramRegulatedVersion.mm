@interface HKElectrocardiogramRegulatedVersion
- (BOOL)_validateSourceVersion:(id)a3 algorithmVersion:(int64_t)a4;
- (HKElectrocardiogramRegulatedVersion)initWithSourceVersion:(id)a3 algorithmVersion:(int64_t)a4;
- (id)_updateVersionFromSourceVersion:(id)a3 algorithmVersion:(int64_t)a4;
@end

@implementation HKElectrocardiogramRegulatedVersion

- (HKElectrocardiogramRegulatedVersion)initWithSourceVersion:(id)a3 algorithmVersion:(int64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = HKElectrocardiogramRegulatedVersion;
  v7 = [(HKElectrocardiogramRegulatedVersion *)&v15 init];
  v8 = v7;
  if (v7)
  {
    if (![(HKElectrocardiogramRegulatedVersion *)v7 _validateSourceVersion:v6 algorithmVersion:a4])
    {
      v13 = 0;
      goto LABEL_6;
    }

    v9 = [(HKElectrocardiogramRegulatedVersion *)v8 _updateVersionFromSourceVersion:v6 algorithmVersion:a4];
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

- (BOOL)_validateSourceVersion:(id)a3 algorithmVersion:(int64_t)a4
{
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (id)_updateVersionFromSourceVersion:(id)a3 algorithmVersion:(int64_t)a4
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  MEMORY[0x1C6930D80](&v7, a3, a2);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld", a4, v8];

  return v5;
}

@end