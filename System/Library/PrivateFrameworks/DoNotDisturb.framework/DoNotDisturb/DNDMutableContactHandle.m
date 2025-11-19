@interface DNDMutableContactHandle
- (void)setContactIdentifier:(id)a3;
- (void)setType:(unint64_t)a3;
- (void)setValue:(id)a3;
@end

@implementation DNDMutableContactHandle

- (void)setContactIdentifier:(id)a3
{
  v4 = [a3 copy];
  contactIdentifier = self->super._contactIdentifier;
  self->super._contactIdentifier = v4;

  MEMORY[0x2821F96F8](v4, contactIdentifier);
}

- (void)setType:(unint64_t)a3
{
  if (self->super._type != a3)
  {
    self->super._type = a3;
    normalizedValue = self->super._normalizedValue;
    self->super._normalizedValue = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  value = self->super._value;
  if (value != v4)
  {
    v10 = v4;
    if (!v4 || !value || (v4 = [v4 isEqualToString:?], v5 = v10, (v4 & 1) == 0))
    {
      v7 = [v5 copy];
      v8 = self->super._value;
      self->super._value = v7;

      normalizedValue = self->super._normalizedValue;
      self->super._normalizedValue = 0;

      v5 = v10;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

@end