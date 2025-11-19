@interface _MTVisualStylingVibrancyEffect
- (BOOL)isEqual:(id)a3;
- (_MTVisualStylingVibrancyEffect)initWithCoder:(id)a3;
- (_MTVisualStylingVibrancyEffect)initWithVisualStyling:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)effectConfig;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MTVisualStylingVibrancyEffect

- (_MTVisualStylingVibrancyEffect)initWithVisualStyling:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MTVisualStylingVibrancyEffect;
  v6 = [(UIVibrancyEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualStyling, a3);
  }

  return v7;
}

- (_MTVisualStylingVibrancyEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"visualStyleSetName"];
  v6 = [MTVisualStylingProvider _visualStylingProviderForStyleSetNamed:v5 inBundle:0];
  v7 = [v4 decodeObjectForKey:@"visualStyleName"];

  v8 = [v6 _visualStylingForStyleNamed:v7];
  v9 = [(_MTVisualStylingVibrancyEffect *)self initWithVisualStyling:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  visualStyling = self->_visualStyling;
  v5 = a3;
  v6 = [(MTVisualStyling *)visualStyling visualStyleSetName];
  [v5 encodeObject:v6 forKey:@"visualStyleSetName"];

  v7 = [(MTVisualStyling *)self->_visualStyling visualStyleName];
  [v5 encodeObject:v7 forKey:@"visualStyleName"];
}

- (id)effectConfig
{
  v2 = [(MTVisualStyling *)self->_visualStyling _layerConfig];
  v3 = [MEMORY[0x277D763D0] configWithContentConfig:v2];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_MTVisualStylingVibrancyEffect alloc];
  visualStyling = self->_visualStyling;

  return [(_MTVisualStylingVibrancyEffect *)v4 initWithVisualStyling:visualStyling];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(MTVisualStyling *)self->_visualStyling visualStyleSetName];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42___MTVisualStylingVibrancyEffect_isEqual___block_invoke;
  v18[3] = &unk_27835D518;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendObject:v6 counterpart:v18];

  v9 = [(MTVisualStyling *)self->_visualStyling visualStyleName];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __42___MTVisualStylingVibrancyEffect_isEqual___block_invoke_2;
  v16 = &unk_27835D518;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:v9 counterpart:&v13];

  LOBYTE(v9) = [v5 isEqual];
  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(MTVisualStyling *)self->_visualStyling visualStyleSetName];
  v5 = [v3 appendObject:v4];

  v6 = [(MTVisualStyling *)self->_visualStyling visualStyleName];
  v7 = [v3 appendObject:v6];

  v8 = [v3 hash];
  return v8;
}

@end