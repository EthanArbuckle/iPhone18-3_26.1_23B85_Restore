@interface CSComponent
+ (id)componentWithType:(int64_t)a3;
- ($45422F01B4F6AABA24092EA30F0A70AE)transitionInputs;
- (BOOL)isEqual:(id)a3;
- (CGPoint)offset;
- (CSComponent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)identifier:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)transitionInputs:(id *)a3;
- (void)resetAllProperties;
- (void)resetProperties:(unint64_t)a3;
- (void)setTransitionInputs:(id *)a3;
@end

@implementation CSComponent

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CSComponent)init
{
  v3.receiver = self;
  v3.super_class = CSComponent;
  result = [(CSComponent *)&v3 init];
  if (result)
  {
    result->_flag = 0x7FFFFFFFFFFFFFFFLL;
    result->_scale = 1.0;
  }

  return result;
}

- ($45422F01B4F6AABA24092EA30F0A70AE)transitionInputs
{
  v3 = *&self[3].var3;
  *&retstr->var0 = *&self[3].var1.y;
  *&retstr->var1.y = v3;
  *&retstr->var3 = *&self[4].var0;
  return self;
}

+ (id)componentWithType:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      v3 = objc_alloc_init(CSComponent);
      [(CSComponent *)v3 setType:0];
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
      v3 = objc_opt_new();
      break;
    default:
      break;
  }

  return v3;
}

- (id)identifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CSComponent *)a2 identifier:?];
  }

  [(CSComponent *)self setIdentifier:v5];

  return self;
}

- (id)transitionInputs:(id *)a3
{
  v4 = *&a3->var1.y;
  v6[0] = *&a3->var0;
  v6[1] = v4;
  v6[2] = *&a3->var3;
  [(CSComponent *)self setTransitionInputs:v6];
  return self;
}

- (void)setTransitionInputs:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var3;
  *&self->_transitionInputs.targetOffset.y = *&a3->var1.y;
  *&self->_transitionInputs.blurRadius = v4;
  *&self->_transitionInputs.duration = v3;
  self->_properties |= 0x100uLL;
}

- (void)resetAllProperties
{
  [(CSComponent *)self setAlpha:0.0];

  [(CSComponent *)self resetProperties:-1];
}

- (void)resetProperties:(unint64_t)a3
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __31__CSComponent_resetProperties___block_invoke;
  v11 = &unk_27838CB38;
  v12 = self;
  v5 = v9;
  if (a3)
  {
    v6 = 0;
    v13 = 0;
    v7 = vcnt_s8(a3);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.i32[0];
    do
    {
      if (((1 << v6) & a3) != 0)
      {
        (v10)(v5);
        if (v13)
        {
          break;
        }

        --v8;
      }

      if (v6 > 0x3E)
      {
        break;
      }

      ++v6;
    }

    while (v8 > 0);
  }

  self->_properties &= ~a3;
}

uint64_t __31__CSComponent_resetProperties___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 <= 63)
  {
    if (a2 > 7)
    {
      switch(a2)
      {
        case 8:
          v14 = *(result + 32);

          return [v14 setFlag:0x7FFFFFFFFFFFFFFFLL];
        case 16:
          v18 = *(result + 32);

          return [v18 setView:0];
        case 32:
          v7 = *(result + 32);

          return [v7 setLegibilitySettings:0];
      }
    }

    else
    {
      switch(a2)
      {
        case 1:
          v13 = *(result + 32);

          return [v13 setHidden:0];
        case 2:
          v15 = *(result + 32);
          v16 = *MEMORY[0x277CBF348];
          v17 = *(MEMORY[0x277CBF348] + 8);

          return [v15 setOffset:{v16, v17}];
        case 4:
          v5 = *(result + 32);

          return [v5 setValue:0];
      }
    }
  }

  else if (a2 <= 511)
  {
    switch(a2)
    {
      case 64:
        v11 = *(result + 32);

        return [v11 setColor:0];
      case 128:
        v12 = *(result + 32);

        return [v12 setTransitionModifiers:0];
      case 256:
        v24 = v2;
        v25 = v3;
        v6 = *(result + 32);
        v19 = 0;
        v20 = *MEMORY[0x277CBF348];
        v22 = 0;
        v23 = 0;
        v21 = 0;
        return [v6 setTransitionInputs:&v19];
    }
  }

  else if (a2 > 2047)
  {
    if (a2 == 2048)
    {
      v10 = *(result + 32);

      return [v10 setBlurRadius:0.0];
    }

    else if (a2 == 4096)
    {
      v8 = *(result + 32);

      return [v8 setLevel:0];
    }
  }

  else if (a2 == 512)
  {
    v9 = *(result + 32);

    return [v9 setScale:1.0];
  }

  else if (a2 == 1024)
  {
    v4 = *(result + 32);

    return [v4 setAnimationDuration:0.0];
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    if (![(CSComponent *)v4 isMemberOfClass:objc_opt_class()])
    {
      goto LABEL_36;
    }

    type = self->_type;
    if (type != [(CSComponent *)v4 type])
    {
      goto LABEL_36;
    }

    properties = self->_properties;
    if (properties != [(CSComponent *)v4 properties])
    {
      goto LABEL_36;
    }

    priority = self->_priority;
    if (priority != [(CSComponent *)v4 priority])
    {
      goto LABEL_36;
    }

    transitionModifiers = self->_transitionModifiers;
    if (transitionModifiers != [(CSComponent *)v4 transitionModifiers])
    {
      goto LABEL_36;
    }

    hidden = self->_hidden;
    if (hidden != [(CSComponent *)v4 isHidden])
    {
      goto LABEL_36;
    }

    flag = self->_flag;
    if (flag != [(CSComponent *)v4 flag])
    {
      goto LABEL_36;
    }

    [(CSComponent *)v4 alpha];
    if (!BSFloatEqualToFloat())
    {
      goto LABEL_36;
    }

    [(CSComponent *)v4 scale];
    if (!BSFloatEqualToFloat())
    {
      goto LABEL_36;
    }

    [(CSComponent *)v4 animationDuration];
    if (!BSFloatEqualToFloat())
    {
      goto LABEL_36;
    }

    [(CSComponent *)v4 blurRadius];
    if (!BSFloatEqualToFloat())
    {
      goto LABEL_36;
    }

    level = self->_level;
    if (level != [(CSComponent *)v4 level])
    {
      goto LABEL_36;
    }

    [(CSComponent *)v4 offset];
    if (!BSPointEqualToPoint())
    {
      goto LABEL_36;
    }

    if (v4)
    {
      [(CSComponent *)v4 transitionInputs];
    }

    else
    {
      memset(v31, 0, sizeof(v31));
    }

    v13 = *&self->_transitionInputs.targetOffset.y;
    v30[0] = *&self->_transitionInputs.duration;
    v30[1] = v13;
    v30[2] = *&self->_transitionInputs.blurRadius;
    if (ComponentTransitionInputsEqualToComponentTransitionInputs(v30, v31) && ([(CSComponent *)v4 identifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualStrings(), v14, v15) && ([(CSComponent *)v4 string], v16 = objc_claimAutoreleasedReturnValue(), v17 = BSEqualStrings(), v16, v17) && ([(CSComponent *)v4 color], v18 = objc_claimAutoreleasedReturnValue(), v19 = BSEqualObjects(), v18, v19) && ([(CSComponent *)v4 value], v20 = objc_claimAutoreleasedReturnValue(), v21 = BSEqualObjects(), v20, v21) && ([(CSComponent *)v4 view], v22 = objc_claimAutoreleasedReturnValue(), v23 = BSEqualObjects(), v22, v23))
    {
      v24 = [(CSComponent *)v4 legibilitySettings];
      v25 = 0;
      legibilitySettings = self->_legibilitySettings;
      if (v24)
      {
        v27 = 1;
      }

      else
      {
        v27 = legibilitySettings == 0;
      }

      if (legibilitySettings)
      {
        v28 = 0;
      }

      else
      {
        v28 = v24 != 0;
      }

      if (v27 && !v28)
      {
        v25 = !legibilitySettings || [(_UILegibilitySettings *)legibilitySettings sb_isEqualToLegibilitySettings:v24];
      }

      v12 = v25;
    }

    else
    {
LABEL_36:
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CSComponent componentWithType:[(CSComponent *)self type]];
  v5 = [(CSComponent *)self identifier];
  [v4 setIdentifier:v5];

  [v4 setHidden:{-[CSComponent isHidden](self, "isHidden")}];
  [v4 setFlag:{-[CSComponent flag](self, "flag")}];
  [(CSComponent *)self alpha];
  [v4 setAlpha:?];
  v6 = [(CSComponent *)self string];
  [v4 setString:v6];

  v7 = [(CSComponent *)self color];
  [v4 setColor:v7];

  [(CSComponent *)self offset];
  [v4 setOffset:?];
  [v4 setPriority:{-[CSComponent priority](self, "priority")}];
  v8 = [(CSComponent *)self value];
  [v4 setValue:v8];

  v9 = [(CSComponent *)self view];
  [v4 setView:v9];

  v10 = [(CSComponent *)self legibilitySettings];
  [v4 setLegibilitySettings:v10];

  [v4 setTransitionModifiers:{-[CSComponent transitionModifiers](self, "transitionModifiers")}];
  [(CSComponent *)self transitionInputs];
  [v4 setTransitionInputs:&v12];
  [(CSComponent *)self scale];
  [v4 setScale:?];
  [(CSComponent *)self animationDuration];
  [v4 setAnimationDuration:?];
  [(CSComponent *)self blurRadius];
  [v4 setBlurRadius:?];
  [v4 setLevel:{-[CSComponent level](self, "level")}];
  [v4 setProperties:{-[CSComponent properties](self, "properties")}];
  return v4;
}

- (id)succinctDescription
{
  v2 = [(CSComponent *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = NSStringFromCoverSheetComponentType(self->_type);
  v5 = [v3 appendObject:v4 withName:@"type"];

  v6 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v7 = [v3 appendInteger:self->_priority withName:@"priority"];
  properties = self->_properties;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v17 = __41__CSComponent_succinctDescriptionBuilder__block_invoke;
  v18 = &unk_27838CFE8;
  v9 = v3;
  v19 = v9;
  v20 = self;
  v10 = v16;
  if (properties)
  {
    v11 = 0;
    v21 = 0;
    v12 = vcnt_s8(properties);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.i32[0];
    do
    {
      if (((1 << v11) & properties) != 0)
      {
        (v17)(v10);
        if (v21)
        {
          break;
        }

        --v13;
      }

      if (v11 > 0x3E)
      {
        break;
      }

      ++v11;
    }

    while (v13 > 0);
  }

  v14 = v9;
  return v9;
}

void __41__CSComponent_succinctDescriptionBuilder__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 > 127)
  {
    if (a2 > 1023)
    {
      if (a2 == 1024)
      {
        v6 = *(a1 + 32);
        [*(a1 + 40) animationDuration];
        v7 = @"animation duration";
      }

      else
      {
        if (a2 != 2048)
        {
          if (a2 == 4096)
          {
            v11 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"level"), @"level"}];
          }

          return;
        }

        v6 = *(a1 + 32);
        [*(a1 + 40) blurRadius];
        v7 = @"blur radius";
      }
    }

    else
    {
      if (a2 == 128)
      {
        v13 = *(a1 + 32);
        v21 = NSStringFromTransitionModifiers([*(a1 + 40) transitionModifiers]);
        [v13 appendString:v21 withName:@"transitionModifiers"];
LABEL_30:

        return;
      }

      if (a2 == 256)
      {
        v18 = *(a1 + 32);
        v17 = *(a1 + 40);
        if (v17)
        {
          [v17 transitionInputs];
        }

        else
        {
          memset(v22, 0, sizeof(v22));
        }

        v20 = NSStringFromComponentTransitionInputs(v22);
        [v18 appendString:v20 withName:@"transitionInputs"];

        return;
      }

      if (a2 != 512)
      {
        return;
      }

      v6 = *(a1 + 32);
      [*(a1 + 40) scale];
      v7 = @"scale";
    }

LABEL_34:
    v19 = [v6 appendFloat:v7 withName:2 decimalPrecision:?];
    return;
  }

  if (a2 > 7)
  {
    if (a2 != 8)
    {
      if (a2 == 32)
      {
        v8 = *(a1 + 32);
        v21 = [*(a1 + 40) legibilitySettings];
        v9 = [v21 succinctDescription];
        v10 = @"legibility";
      }

      else
      {
        if (a2 != 64)
        {
          return;
        }

        v8 = *(a1 + 32);
        v21 = [*(a1 + 40) color];
        v9 = [v21 description];
        v10 = @"color";
      }

      [v8 appendString:v9 withName:v10];

      goto LABEL_30;
    }

    v3 = *(a1 + 32);
    [*(a1 + 40) flag];
    v4 = BSSettingFlagDescription();
    v21 = v4;
    v5 = @"flag";
    goto LABEL_23;
  }

  switch(a2)
  {
    case 1:
      v12 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isHidden"), @"hidden"}];
      v6 = *(a1 + 32);
      [*(a1 + 40) alpha];
      v7 = @"alpha";
      goto LABEL_34;
    case 2:
      v15 = *(a1 + 32);
      [*(a1 + 40) offset];
      v16 = [v15 appendPoint:@"offset" withName:?];
      return;
    case 4:
      v3 = *(a1 + 32);
      v4 = [*(a1 + 40) value];
      v21 = v4;
      v5 = @"value";
LABEL_23:
      v14 = [v3 appendObject:v4 withName:v5];
      goto LABEL_30;
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CSComponent *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)identifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSComponents.m" lineNumber:347 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

@end