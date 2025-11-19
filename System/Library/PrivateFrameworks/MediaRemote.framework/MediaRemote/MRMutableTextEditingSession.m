@interface MRMutableTextEditingSession
- (void)setAttributes:(id)a3;
- (void)setText:(id)a3;
@end

@implementation MRMutableTextEditingSession

- (void)setText:(id)a3
{
  if (self->super._text != a3)
  {
    v5 = [a3 copy];
    text = self->super._text;
    self->super._text = v5;
  }
}

- (void)setAttributes:(id)a3
{
  v5 = a3;
  attributes = self->super._attributes;
  p_attributes = &self->super._attributes;
  if (attributes != v5)
  {
    v8 = v5;
    objc_storeStrong(p_attributes, a3);
    v5 = v8;
  }
}

@end