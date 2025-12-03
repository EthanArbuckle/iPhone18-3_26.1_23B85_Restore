@interface _MTVisualStylingVibrancyEffect
- (BOOL)isEqual:(id)equal;
- (_MTVisualStylingVibrancyEffect)initWithCoder:(id)coder;
- (_MTVisualStylingVibrancyEffect)initWithVisualStyling:(id)styling;
- (id)copyWithZone:(_NSZone *)zone;
- (id)effectConfig;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MTVisualStylingVibrancyEffect

- (_MTVisualStylingVibrancyEffect)initWithVisualStyling:(id)styling
{
  stylingCopy = styling;
  v9.receiver = self;
  v9.super_class = _MTVisualStylingVibrancyEffect;
  v6 = [(UIVibrancyEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualStyling, styling);
  }

  return v7;
}

- (_MTVisualStylingVibrancyEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"visualStyleSetName"];
  v6 = [MTVisualStylingProvider _visualStylingProviderForStyleSetNamed:v5 inBundle:0];
  v7 = [coderCopy decodeObjectForKey:@"visualStyleName"];

  v8 = [v6 _visualStylingForStyleNamed:v7];
  v9 = [(_MTVisualStylingVibrancyEffect *)self initWithVisualStyling:v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  visualStyling = self->_visualStyling;
  coderCopy = coder;
  visualStyleSetName = [(MTVisualStyling *)visualStyling visualStyleSetName];
  [coderCopy encodeObject:visualStyleSetName forKey:@"visualStyleSetName"];

  visualStyleName = [(MTVisualStyling *)self->_visualStyling visualStyleName];
  [coderCopy encodeObject:visualStyleName forKey:@"visualStyleName"];
}

- (id)effectConfig
{
  _layerConfig = [(MTVisualStyling *)self->_visualStyling _layerConfig];
  v3 = [MEMORY[0x277D763D0] configWithContentConfig:_layerConfig];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_MTVisualStylingVibrancyEffect alloc];
  visualStyling = self->_visualStyling;

  return [(_MTVisualStylingVibrancyEffect *)v4 initWithVisualStyling:visualStyling];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  visualStyleSetName = [(MTVisualStyling *)self->_visualStyling visualStyleSetName];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42___MTVisualStylingVibrancyEffect_isEqual___block_invoke;
  v18[3] = &unk_27835D518;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:visualStyleSetName counterpart:v18];

  visualStyleName = [(MTVisualStyling *)self->_visualStyling visualStyleName];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __42___MTVisualStylingVibrancyEffect_isEqual___block_invoke_2;
  v16 = &unk_27835D518;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:visualStyleName counterpart:&v13];

  LOBYTE(visualStyleName) = [v5 isEqual];
  return visualStyleName;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  visualStyleSetName = [(MTVisualStyling *)self->_visualStyling visualStyleSetName];
  v5 = [builder appendObject:visualStyleSetName];

  visualStyleName = [(MTVisualStyling *)self->_visualStyling visualStyleName];
  v7 = [builder appendObject:visualStyleName];

  v8 = [builder hash];
  return v8;
}

@end