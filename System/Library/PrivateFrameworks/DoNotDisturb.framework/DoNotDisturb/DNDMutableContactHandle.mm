@interface DNDMutableContactHandle
- (void)setContactIdentifier:(id)identifier;
- (void)setType:(unint64_t)type;
- (void)setValue:(id)value;
@end

@implementation DNDMutableContactHandle

- (void)setContactIdentifier:(id)identifier
{
  v4 = [identifier copy];
  contactIdentifier = self->super._contactIdentifier;
  self->super._contactIdentifier = v4;

  MEMORY[0x2821F96F8](v4, contactIdentifier);
}

- (void)setType:(unint64_t)type
{
  if (self->super._type != type)
  {
    self->super._type = type;
    normalizedValue = self->super._normalizedValue;
    self->super._normalizedValue = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)setValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  value = self->super._value;
  if (value != valueCopy)
  {
    v10 = valueCopy;
    if (!valueCopy || !value || (valueCopy = [valueCopy isEqualToString:?], v5 = v10, (valueCopy & 1) == 0))
    {
      v7 = [v5 copy];
      v8 = self->super._value;
      self->super._value = v7;

      normalizedValue = self->super._normalizedValue;
      self->super._normalizedValue = 0;

      v5 = v10;
    }
  }

  MEMORY[0x2821F96F8](valueCopy, v5);
}

@end