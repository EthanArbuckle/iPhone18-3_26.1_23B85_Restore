@interface VCPProtoImageShotTypeResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
@end

@implementation VCPProtoImageShotTypeResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoImageShotTypeResult;
  v4 = [(VCPProtoImageShotTypeResult *)&v8 description];
  v5 = [(VCPProtoImageShotTypeResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_shotType];
  [v3 setObject:v4 forKey:@"shotType"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_shotType;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_shotType == v4[2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
  v4 = [v3 objectForKeyedSubscript:@"shotType"];
  if (v4)
  {
    v5 = objc_alloc_init(VCPProtoImageShotTypeResult);
    -[VCPProtoImageShotTypeResult setShotType:](v5, "setShotType:", [v4 unsignedIntValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)exportToLegacyDictionary
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"attributes";
  v6 = @"shotType";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoImageShotTypeResult shotType](self, "shotType")}];
  v7 = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v4;
}

@end