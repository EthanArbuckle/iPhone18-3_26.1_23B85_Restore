@interface PKDynamicLayerCrossDissolveConfiguration
- (PKDynamicLayerCrossDissolveConfiguration)initWithCoder:(id)coder;
- (PKDynamicLayerCrossDissolveConfiguration)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKDynamicLayerCrossDissolveConfiguration

- (PKDynamicLayerCrossDissolveConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    goto LABEL_9;
  }

  v10.receiver = self;
  v10.super_class = PKDynamicLayerCrossDissolveConfiguration;
  self = [(PKDynamicLayerCrossDissolveConfiguration *)&v10 init];
  if (self)
  {
    v5 = [dictionaryCopy PKStringForKey:@"intensity"];
    v6 = v5;
    if (v5 == @"default" || v5 && (v7 = [(__CFString *)v5 isEqualToString:@"default"], v6, v7))
    {
      self->_intensity = 0;

      goto LABEL_7;
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

LABEL_7:
  self = self;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (PKDynamicLayerCrossDissolveConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKDynamicLayerCrossDissolveConfiguration;
  v5 = [(PKDynamicLayerCrossDissolveConfiguration *)&v7 init];
  if (v5)
  {
    -[PKDynamicLayerCrossDissolveConfiguration setIntensity:](v5, "setIntensity:", [coderCopy decodeIntegerForKey:@"crossDissolveIntensity"]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[PKDynamicLayerCrossDissolveConfiguration allocWithZone:?]];
  *(result + 1) = self->_intensity;
  return result;
}

@end