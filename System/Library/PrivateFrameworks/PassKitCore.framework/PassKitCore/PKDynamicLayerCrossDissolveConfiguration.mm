@interface PKDynamicLayerCrossDissolveConfiguration
- (PKDynamicLayerCrossDissolveConfiguration)initWithCoder:(id)a3;
- (PKDynamicLayerCrossDissolveConfiguration)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKDynamicLayerCrossDissolveConfiguration

- (PKDynamicLayerCrossDissolveConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_9;
  }

  v10.receiver = self;
  v10.super_class = PKDynamicLayerCrossDissolveConfiguration;
  self = [(PKDynamicLayerCrossDissolveConfiguration *)&v10 init];
  if (self)
  {
    v5 = [v4 PKStringForKey:@"intensity"];
    v6 = v5;
    if (v5 == @"default" || v5 && (v7 = [(__CFString *)v5 isEqualToString:@"default"], v6, v7))
    {
      self->_intensity = 0;

      goto LABEL_7;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

LABEL_7:
  self = self;
  v8 = self;
LABEL_10:

  return v8;
}

- (PKDynamicLayerCrossDissolveConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKDynamicLayerCrossDissolveConfiguration;
  v5 = [(PKDynamicLayerCrossDissolveConfiguration *)&v7 init];
  if (v5)
  {
    -[PKDynamicLayerCrossDissolveConfiguration setIntensity:](v5, "setIntensity:", [v4 decodeIntegerForKey:@"crossDissolveIntensity"]);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[PKDynamicLayerCrossDissolveConfiguration allocWithZone:?]];
  *(result + 1) = self->_intensity;
  return result;
}

@end