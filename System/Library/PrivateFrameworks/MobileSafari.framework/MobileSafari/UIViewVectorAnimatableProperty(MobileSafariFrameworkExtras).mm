@interface UIViewVectorAnimatableProperty(MobileSafariFrameworkExtras)
+ (id)safari_pointProperty;
+ (id)safari_propertyWithLength:()MobileSafariFrameworkExtras;
+ (id)safari_rectProperty;
+ (id)safari_sizeProperty;
+ (id)safari_transformProperty;
- (CGAffineTransform)safari_transformPresentationValue;
- (CGAffineTransform)safari_transformValue;
- (uint64_t)safari_setPointValue:()MobileSafariFrameworkExtras;
- (uint64_t)safari_setRectValue:()MobileSafariFrameworkExtras;
- (uint64_t)safari_setSizeValue:()MobileSafariFrameworkExtras;
- (uint64_t)safari_setTransformValue:()MobileSafariFrameworkExtras;
@end

@implementation UIViewVectorAnimatableProperty(MobileSafariFrameworkExtras)

+ (id)safari_propertyWithLength:()MobileSafariFrameworkExtras
{
  v5 = [MEMORY[0x1E69DD288] instancesRespondToSelector:sel_initWithLength_];
  v6 = [self alloc];
  if (v5)
  {
    v7 = [v6 initWithLength:a3];
  }

  else
  {
    v7 = [v6 _initWithLength:a3];
  }

  return v7;
}

+ (id)safari_pointProperty
{
  v1 = [self safari_propertyWithLength:2];
  [v1 safari_setPointValue:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  return v1;
}

- (uint64_t)safari_setPointValue:()MobileSafariFrameworkExtras
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__UIViewVectorAnimatableProperty_MobileSafariFrameworkExtras__safari_setPointValue___block_invoke;
  v4[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v4[4] = a2;
  *&v4[5] = a3;
  return [self _mutateValue:v4];
}

+ (id)safari_sizeProperty
{
  v1 = [self safari_propertyWithLength:2];
  [v1 safari_setSizeValue:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

  return v1;
}

- (uint64_t)safari_setSizeValue:()MobileSafariFrameworkExtras
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__UIViewVectorAnimatableProperty_MobileSafariFrameworkExtras__safari_setSizeValue___block_invoke;
  v4[3] = &__block_descriptor_48_e9_v16__0_d8l;
  *&v4[4] = a2;
  *&v4[5] = a3;
  return [self _mutateValue:v4];
}

+ (id)safari_rectProperty
{
  v1 = [self safari_propertyWithLength:4];
  [v1 safari_setRectValue:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v1;
}

- (uint64_t)safari_setRectValue:()MobileSafariFrameworkExtras
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__UIViewVectorAnimatableProperty_MobileSafariFrameworkExtras__safari_setRectValue___block_invoke;
  v6[3] = &__block_descriptor_64_e9_v16__0_d8l;
  *&v6[4] = a2;
  *&v6[5] = a3;
  *&v6[6] = a4;
  *&v6[7] = a5;
  return [self _mutateValue:v6];
}

+ (id)safari_transformProperty
{
  v1 = [self safari_propertyWithLength:6];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v1 safari_setTransformValue:v4];

  return v1;
}

- (uint64_t)safari_setTransformValue:()MobileSafariFrameworkExtras
{
  memset(&v9, 0, sizeof(v9));
  v4 = a3[1];
  *&transform.a = *a3;
  *&transform.c = v4;
  *&transform.tx = a3[2];
  CGAffineTransformDecompose(&v9, &transform);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88__UIViewVectorAnimatableProperty_MobileSafariFrameworkExtras__safari_setTransformValue___block_invoke;
  v6[3] = &__block_descriptor_80_e9_v16__0_d8l;
  v7 = v9;
  return [self _mutateValue:v6];
}

- (CGAffineTransform)safari_transformValue
{
  _value = [self _value];
  v4 = exp(*_value);
  v5 = exp(*(_value + 8));
  v7 = *(_value + 16);
  v6 = *(_value + 32);
  v9.scale.width = v4;
  v9.scale.height = v5;
  *&v9.horizontalShear = v6;
  v9.translation = v7;
  return CGAffineTransformMakeWithComponents(a2, &v9);
}

- (CGAffineTransform)safari_transformPresentationValue
{
  _presentationValue = [self _presentationValue];
  v4 = exp(*_presentationValue);
  v5 = exp(*(_presentationValue + 8));
  v7 = *(_presentationValue + 16);
  v6 = *(_presentationValue + 32);
  v9.scale.width = v4;
  v9.scale.height = v5;
  *&v9.horizontalShear = v6;
  v9.translation = v7;
  return CGAffineTransformMakeWithComponents(a2, &v9);
}

@end