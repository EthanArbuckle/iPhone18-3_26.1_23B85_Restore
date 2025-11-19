@interface _NURAWImageProperties
- (NSString)description;
- (id)inputNeutralXYFromRGB:(const double *)a3;
@end

@implementation _NURAWImageProperties

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_NURAWImageProperties *)self decoderVersion];
  [(_NURAWImageProperties *)self temperature];
  v7 = v6;
  [(_NURAWImageProperties *)self tint];
  v9 = v8;
  v10 = [(_NURAWImageProperties *)self noiseReductionProperties];
  v11 = [v3 stringWithFormat:@"<%@:%p> kCIInputDecoderVersionKey=%@ temp=%f tint=%f noiseReduction=%@", v4, self, v5, v7, v9, v10];

  return v11;
}

- (id)inputNeutralXYFromRGB:(const double *)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = [(_NURAWImageProperties *)self rawConvert];
  v5 = [v4 copy];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*a3];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:{a3[1], v6}];
  v12[1] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3[2]];
  v12[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  [v5 setValue:v9 forKey:@"inputNeutral"];

  v10 = [v5 valueForKey:@"inputNeutralXY"];

  return v10;
}

@end