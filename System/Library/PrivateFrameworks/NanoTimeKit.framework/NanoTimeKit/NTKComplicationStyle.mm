@interface NTKComplicationStyle
- (BOOL)isEqual:(id)equal;
- (NTKComplicationStyle)init;
- (NTKComplicationStyle)initWithCoder:(id)coder;
- (id)_initWithStyle:(id)style;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKComplicationStyle

- (NTKComplicationStyle)init
{
  v6.receiver = self;
  v6.super_class = NTKComplicationStyle;
  v2 = [(NTKComplicationStyle *)&v6 init];
  if (v2)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    circularPlatterColor = v2->_circularPlatterColor;
    v2->_circularPlatterColor = clearColor;

    v2->_fontStyle = 0;
  }

  return v2;
}

- (id)_initWithStyle:(id)style
{
  styleCopy = style;
  v9.receiver = self;
  v9.super_class = NTKComplicationStyle;
  v5 = [(NTKComplicationStyle *)&v9 init];
  if (v5)
  {
    v6 = [*(styleCopy + 1) copy];
    circularPlatterColor = v5->_circularPlatterColor;
    v5->_circularPlatterColor = v6;

    v5->_fontStyle = *(styleCopy + 2);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NTKComplicationStyle allocWithZone:zone];

  return [(NTKComplicationStyle *)v4 _initWithStyle:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NTKMutableComplicationStyle allocWithZone:zone];

  return [(NTKComplicationStyle *)v4 _initWithStyle:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  circularPlatterColor = self->_circularPlatterColor;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __32__NTKComplicationStyle_isEqual___block_invoke;
  v18[3] = &unk_278780148;
  v7 = equalCopy;
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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_circularPlatterColor];
  v5 = [builder appendInteger:self->_fontStyle];
  v6 = [builder hash];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_circularPlatterColor withName:@"circularPlatterColor"];
  v5 = [v3 appendInteger:self->_fontStyle withName:@"fontStyle"];
  build = [v3 build];

  return build;
}

- (NTKComplicationStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NTKComplicationStyle;
  v5 = [(NTKComplicationStyle *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"circularPlatterColor"];
    circularPlatterColor = v5->_circularPlatterColor;
    v5->_circularPlatterColor = v6;

    v5->_fontStyle = [coderCopy decodeIntegerForKey:@"fontStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  circularPlatterColor = self->_circularPlatterColor;
  coderCopy = coder;
  [coderCopy encodeObject:circularPlatterColor forKey:@"circularPlatterColor"];
  [coderCopy encodeInteger:self->_fontStyle forKey:@"fontStyle"];
}

@end