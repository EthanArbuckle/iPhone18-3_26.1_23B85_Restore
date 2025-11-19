@interface _NURAWNoiseReductionProperties
- (NSString)description;
@end

@implementation _NURAWNoiseReductionProperties

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(_NURAWNoiseReductionProperties *)self luminance];
  v6 = v5;
  [(_NURAWNoiseReductionProperties *)self color];
  v8 = v7;
  [(_NURAWNoiseReductionProperties *)self sharpness];
  v10 = v9;
  [(_NURAWNoiseReductionProperties *)self contrast];
  v12 = v11;
  [(_NURAWNoiseReductionProperties *)self detail];
  return [v3 stringWithFormat:@"<%@:%p> luminance=%f color=%f sharpness=%f contrast=%f detail=%f", v4, self, v6, v8, v10, v12, v13];
}

@end