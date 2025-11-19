@interface MUAddMissingDataLabeledValue
- (MUAddMissingDataLabeledValue)initWithType:(int64_t)a3;
- (NSString)titleString;
- (NSString)valueString;
- (id)analyticsButtonValue;
@end

@implementation MUAddMissingDataLabeledValue

- (MUAddMissingDataLabeledValue)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MUAddMissingDataLabeledValue;
  result = [(MUAddMissingDataLabeledValue *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (NSString)valueString
{
  v3 = self->_type - 2;
  if (v3 > 2)
  {
    v4 = &stru_1F44CA030;
  }

  else
  {
    v4 = _MULocalizedStringFromThisBundle(off_1E8219B78[v3]);
  }

  return v4;
}

- (NSString)titleString
{
  v3 = self->_type - 2;
  if (v3 > 2)
  {
    v4 = &stru_1F44CA030;
  }

  else
  {
    v4 = _MULocalizedStringFromThisBundle(off_1E8219B60[v3]);
  }

  return v4;
}

- (id)analyticsButtonValue
{
  v2 = [(MUAddMissingDataLabeledValue *)self type];
  if ((v2 - 2) > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1C587A180[v2 - 2];
  }

  v4 = MEMORY[0x1E69A24B0];

  return [v4 moduleButtonForType:v3];
}

@end