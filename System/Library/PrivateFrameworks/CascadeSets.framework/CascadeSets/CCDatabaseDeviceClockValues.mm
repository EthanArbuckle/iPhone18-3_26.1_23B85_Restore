@interface CCDatabaseDeviceClockValues
- (CCDatabaseDeviceClockValues)init;
- (CCDatabaseDeviceClockValues)initWithDeviceRowId:(id)id missingAtomsImplied:(BOOL)implied;
- (id)description;
- (void)updateMax:(unint64_t)max;
@end

@implementation CCDatabaseDeviceClockValues

- (CCDatabaseDeviceClockValues)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCDatabaseDeviceClockValues)initWithDeviceRowId:(id)id missingAtomsImplied:(BOOL)implied
{
  idCopy = id;
  v17.receiver = self;
  v17.super_class = CCDatabaseDeviceClockValues;
  v8 = [(CCDatabaseDeviceClockValues *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_deviceRowId, id);
    v9->_max = 0;
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    present = v9->_present;
    v9->_present = v10;

    v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
    tombstoned = v9->_tombstoned;
    v9->_tombstoned = v12;

    if (!implied)
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
      missing = v9->_missing;
      v9->_missing = v14;
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_max];
  v5 = [v3 stringWithFormat:@"max: %@, present: %@, tombstoned: %@, missing: %@", v4, self->_present, self->_tombstoned, self->_missing];

  return v5;
}

- (void)updateMax:(unint64_t)max
{
  if (self->_max < max)
  {
    self->_max = max;
  }
}

@end