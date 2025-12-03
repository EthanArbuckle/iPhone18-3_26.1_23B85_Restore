@interface HKPersonWeightFormatter
+ (id)sharedFormatter;
- (HKPersonWeightFormatter)init;
- (id)stringFromWeightInKilograms:(id)kilograms;
- (id)stringFromWeightValue:(double)value inUnit:(int64_t)unit;
- (void)_commonInit;
- (void)_localeChanged:(id)changed;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__localeChanged_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v3;
}

- (void)_commonInit
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD20]);
  [(HKPersonWeightFormatter *)self setMassFormatter:v3];

  massFormatter = [(HKPersonWeightFormatter *)self massFormatter];
  [massFormatter setForPersonMassUse:1];

  hk_testableAutoupdatingCurrentLocale = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
  massFormatter2 = [(HKPersonWeightFormatter *)self massFormatter];
  numberFormatter = [massFormatter2 numberFormatter];
  [numberFormatter setLocale:hk_testableAutoupdatingCurrentLocale];

  massFormatter3 = [(HKPersonWeightFormatter *)self massFormatter];
  numberFormatter2 = [massFormatter3 numberFormatter];
  [numberFormatter2 setRoundingMode:6];

  [(HKPersonWeightFormatter *)self _updateRoundingIncrement];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  v4.receiver = self;
  v4.super_class = HKPersonWeightFormatter;
  [(HKPersonWeightFormatter *)&v4 dealloc];
}

- (void)_localeChanged:(id)changed
{
  [(HKPersonWeightFormatter *)self _commonInit];

  [(HKPersonWeightFormatter *)self _updateRoundingIncrement];
}

- (void)_updateRoundingIncrement
{
  massFormatter = [(HKPersonWeightFormatter *)self massFormatter];
  v4 = [massFormatter unitStringFromKilograms:&self->_localWeightUnit usedUnit:60.0];

  localWeightUnit = self->_localWeightUnit;
  massFormatter2 = [(HKPersonWeightFormatter *)self massFormatter];
  numberFormatter = [massFormatter2 numberFormatter];
  v7 = numberFormatter;
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

  [numberFormatter setRoundingIncrement:v9];
}

- (id)stringFromWeightInKilograms:(id)kilograms
{
  if (kilograms)
  {
    kilogramsCopy = kilograms;
    massFormatter = [(HKPersonWeightFormatter *)self massFormatter];
    [kilogramsCopy doubleValue];
    v7 = v6;

    v8 = [massFormatter stringFromKilograms:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)stringFromWeightValue:(double)value inUnit:(int64_t)unit
{
  massFormatter = [(HKPersonWeightFormatter *)self massFormatter];
  v7 = [massFormatter stringFromValue:unit unit:value];

  return v7;
}

@end