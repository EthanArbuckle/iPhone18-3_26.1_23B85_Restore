@interface MUAddMissingDataLabeledValue
- (MUAddMissingDataLabeledValue)initWithType:(int64_t)type;
- (NSString)titleString;
- (NSString)valueString;
- (id)analyticsButtonValue;
@end

@implementation MUAddMissingDataLabeledValue

- (MUAddMissingDataLabeledValue)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = MUAddMissingDataLabeledValue;
  result = [(MUAddMissingDataLabeledValue *)&v5 init];
  if (result)
  {
    result->_type = type;
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
  type = [(MUAddMissingDataLabeledValue *)self type];
  if ((type - 2) > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1C587A180[type - 2];
  }

  v4 = MEMORY[0x1E69A24B0];

  return [v4 moduleButtonForType:v3];
}

@end