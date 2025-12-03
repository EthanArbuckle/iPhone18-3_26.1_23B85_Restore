@interface MRMutableTextEditingSession
- (void)setAttributes:(id)attributes;
- (void)setText:(id)text;
@end

@implementation MRMutableTextEditingSession

- (void)setText:(id)text
{
  if (self->super._text != text)
  {
    v5 = [text copy];
    text = self->super._text;
    self->super._text = v5;
  }
}

- (void)setAttributes:(id)attributes
{
  attributesCopy = attributes;
  attributes = self->super._attributes;
  p_attributes = &self->super._attributes;
  if (attributes != attributesCopy)
  {
    v8 = attributesCopy;
    objc_storeStrong(p_attributes, attributes);
    attributesCopy = v8;
  }
}

@end