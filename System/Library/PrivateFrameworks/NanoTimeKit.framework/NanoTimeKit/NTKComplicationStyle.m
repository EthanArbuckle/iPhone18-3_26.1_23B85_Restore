@interface NTKComplicationStyle
- (BOOL)isEqual:(id)a3;
- (NTKComplicationStyle)init;
- (NTKComplicationStyle)initWithCoder:(id)a3;
- (id)_initWithStyle:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKComplicationStyle

- (NTKComplicationStyle)init
{
  v6.receiver = self;
  v6.super_class = NTKComplicationStyle;
  v2 = [(NTKComplicationStyle *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] clearColor];
    circularPlatterColor = v2->_circularPlatterColor;
    v2->_circularPlatterColor = v3;

    v2->_fontStyle = 0;
  }

  return v2;
}

- (id)_initWithStyle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NTKComplicationStyle;
  v5 = [(NTKComplicationStyle *)&v9 init];
  if (v5)
  {
    v6 = [*(v4 + 1) copy];
    circularPlatterColor = v5->_circularPlatterColor;
    v5->_circularPlatterColor = v6;

    v5->_fontStyle = *(v4 + 2);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NTKComplicationStyle allocWithZone:a3];

  return [(NTKComplicationStyle *)v4 _initWithStyle:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NTKMutableComplicationStyle allocWithZone:a3];

  return [(NTKComplicationStyle *)v4 _initWithStyle:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  circularPlatterColor = self->_circularPlatterColor;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __32__NTKComplicationStyle_isEqual___block_invoke;
  v18[3] = &unk_278780148;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendObject:circularPlatterColor counterpart:v18];
  fontStyle = self->_fontStyle;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __32__NTKComplicationStyle_isEqual___block_invoke_2;
  v16 = &unk_278780170;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendInteger:fontStyle counterpart:&v13];
  LOBYTE(fontStyle) = [v5 isEqual];

  return fontStyle;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_circularPlatterColor];
  v5 = [v3 appendInteger:self->_fontStyle];
  v6 = [v3 hash];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_circularPlatterColor withName:@"circularPlatterColor"];
  v5 = [v3 appendInteger:self->_fontStyle withName:@"fontStyle"];
  v6 = [v3 build];

  return v6;
}

- (NTKComplicationStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NTKComplicationStyle;
  v5 = [(NTKComplicationStyle *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"circularPlatterColor"];
    circularPlatterColor = v5->_circularPlatterColor;
    v5->_circularPlatterColor = v6;

    v5->_fontStyle = [v4 decodeIntegerForKey:@"fontStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  circularPlatterColor = self->_circularPlatterColor;
  v5 = a3;
  [v5 encodeObject:circularPlatterColor forKey:@"circularPlatterColor"];
  [v5 encodeInteger:self->_fontStyle forKey:@"fontStyle"];
}

@end