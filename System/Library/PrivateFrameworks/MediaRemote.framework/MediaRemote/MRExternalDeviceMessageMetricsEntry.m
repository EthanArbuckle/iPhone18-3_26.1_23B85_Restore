@interface MRExternalDeviceMessageMetricsEntry
- (MRExternalDeviceMessageMetricsEntry)init;
- (void)updateWithValue:(unint64_t)a3;
@end

@implementation MRExternalDeviceMessageMetricsEntry

- (MRExternalDeviceMessageMetricsEntry)init
{
  v6.receiver = self;
  v6.super_class = MRExternalDeviceMessageMetricsEntry;
  v2 = [(MRExternalDeviceMessageMetricsEntry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    values = v2->_values;
    v2->_values = v3;

    v2->_min = -1;
  }

  return v2;
}

- (void)updateWithValue:(unint64_t)a3
{
  values = self->_values;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [(NSMutableArray *)values addObject:v6];

  if (self->_max < a3)
  {
    self->_max = a3;
  }

  if (self->_min > a3)
  {
    self->_min = a3;
  }

  v7 = self->_values;
  v8 = self->_total + a3;
  self->_total = v8;
  self->_avg = v8 / [(NSMutableArray *)v7 count];
}

@end