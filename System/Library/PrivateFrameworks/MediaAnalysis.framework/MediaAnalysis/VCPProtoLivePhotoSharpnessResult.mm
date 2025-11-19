@interface VCPProtoLivePhotoSharpnessResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
@end

@implementation VCPProtoLivePhotoSharpnessResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"quality"];
  if (v3)
  {
    v4 = objc_alloc_init(VCPProtoLivePhotoSharpnessResult);
    [v3 floatValue];
    [(VCPProtoLivePhotoSharpnessResult *)v4 setSharpness:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)exportToLegacyDictionary
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"quality";
  v2 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoSharpnessResult *)self sharpness];
  v3 = [v2 numberWithFloat:?];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoLivePhotoSharpnessResult;
  v4 = [(VCPProtoLivePhotoSharpnessResult *)&v8 description];
  v5 = [(VCPProtoLivePhotoSharpnessResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  *&v4 = self->_sharpness;
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"sharpness"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = LODWORD(self->_sharpness);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_sharpness == v4[2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  sharpness = self->_sharpness;
  if (sharpness < 0.0)
  {
    sharpness = -sharpness;
  }

  *v2.i32 = floorf(sharpness + 0.5);
  v5 = (sharpness - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  v2.i32[0] = vbslq_s8(v6, v3, v2).i32[0];
  v7 = 2654435761u * *v2.i32;
  v8 = v7 + v5;
  if (v5 <= 0.0)
  {
    v8 = 2654435761u * *v2.i32;
  }

  v9 = v7 - fabsf(v5);
  if (v5 < 0.0)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

@end