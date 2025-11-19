@interface HKPersonWeightFormatter
+ (id)sharedFormatter;
- (HKPersonWeightFormatter)init;
- (id)stringFromWeightInKilograms:(id)a3;
- (id)stringFromWeightValue:(double)a3 inUnit:(int64_t)a4;
- (void)_commonInit;
- (void)_localeChanged:(id)a3;
- (void)_updateRoundingIncrement;
- (void)dealloc;
@end

@implementation HKPersonWeightFormatter

+ (id)sharedFormatter
{
  if (sharedFormatter_onceToken_0 != -1)
  {
    +[HKPersonWeightFormatter sharedFormatter];
  }

  v3 = sharedFormatter___sharedFormatter_0;

  return v3;
}

uint64_t __42__HKPersonWeightFormatter_sharedFormatter__block_invoke()
{
  v0 = objc_alloc_init(HKPersonWeightFormatter);
  v1 = sharedFormatter___sharedFormatter_0;
  sharedFormatter___sharedFormatter_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (HKPersonWeightFormatter)init
{
  v6.receiver = self;
  v6.super_class = HKPersonWeightFormatter;
  v2 = [(HKPersonWeightFormatter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(HKPersonWeightFormatter *)v2 _commonInit];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__localeChanged_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v3;
}

- (void)_commonInit
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD20]);
  [(HKPersonWeightFormatter *)self setMassFormatter:v3];

  v4 = [(HKPersonWeightFormatter *)self massFormatter];
  [v4 setForPersonMassUse:1];

  v5 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
  v6 = [(HKPersonWeightFormatter *)self massFormatter];
  v7 = [v6 numberFormatter];
  [v7 setLocale:v5];

  v8 = [(HKPersonWeightFormatter *)self massFormatter];
  v9 = [v8 numberFormatter];
  [v9 setRoundingMode:6];

  [(HKPersonWeightFormatter *)self _updateRoundingIncrement];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  v4.receiver = self;
  v4.super_class = HKPersonWeightFormatter;
  [(HKPersonWeightFormatter *)&v4 dealloc];
}

- (void)_localeChanged:(id)a3
{
  [(HKPersonWeightFormatter *)self _commonInit];

  [(HKPersonWeightFormatter *)self _updateRoundingIncrement];
}

- (void)_updateRoundingIncrement
{
  v3 = [(HKPersonWeightFormatter *)self massFormatter];
  v4 = [v3 unitStringFromKilograms:&self->_localWeightUnit usedUnit:60.0];

  localWeightUnit = self->_localWeightUnit;
  v10 = [(HKPersonWeightFormatter *)self massFormatter];
  v6 = [v10 numberFormatter];
  v7 = v6;
  v8 = &unk_1F43849E0;
  if (localWeightUnit == 14)
  {
    v8 = &unk_1F43849D0;
  }

  if (localWeightUnit == 1539)
  {
    v9 = &unk_1F43849C0;
  }

  else
  {
    v9 = v8;
  }

  [v6 setRoundingIncrement:v9];
}

- (id)stringFromWeightInKilograms:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HKPersonWeightFormatter *)self massFormatter];
    [v4 doubleValue];
    v7 = v6;

    v8 = [v5 stringFromKilograms:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)stringFromWeightValue:(double)a3 inUnit:(int64_t)a4
{
  v6 = [(HKPersonWeightFormatter *)self massFormatter];
  v7 = [v6 stringFromValue:a4 unit:a3];

  return v7;
}

@end