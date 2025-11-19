@interface VCPProtoLivePhotoEffectsResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoLivePhotoEffectsResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"attributes"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"loopSuggestionState"];
    v6 = [v5 integerValue];

    v7 = [v4 objectForKeyedSubscript:@"longExposureSuggestionState"];
    v8 = [v7 integerValue];

    v9 = [v4 objectForKeyedSubscript:@"livePhotoEffectsRecipe"];
    v10 = objc_alloc_init(VCPProtoLivePhotoEffectsResult);
    [(VCPProtoLivePhotoEffectsResult *)v10 setLoopSuggestionState:v6];
    [(VCPProtoLivePhotoEffectsResult *)v10 setLongExposureSuggestionState:v8];
    if (v9)
    {
      [(VCPProtoLivePhotoEffectsResult *)v10 setRecipeBlob:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)exportToLegacyDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VCPProtoLivePhotoEffectsResult loopSuggestionState](self, "loopSuggestionState")}];
  [v4 setObject:v5 forKeyedSubscript:@"loopSuggestionState"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VCPProtoLivePhotoEffectsResult longExposureSuggestionState](self, "longExposureSuggestionState")}];
  [v4 setObject:v6 forKeyedSubscript:@"longExposureSuggestionState"];

  v7 = [(VCPProtoLivePhotoEffectsResult *)self recipeBlob];

  if (v7)
  {
    v8 = [(VCPProtoLivePhotoEffectsResult *)self recipeBlob];
    [v4 setObject:v8 forKeyedSubscript:@"livePhotoEffectsRecipe"];
  }

  [v3 setObject:v4 forKeyedSubscript:@"attributes"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoLivePhotoEffectsResult;
  v4 = [(VCPProtoLivePhotoEffectsResult *)&v8 description];
  v5 = [(VCPProtoLivePhotoEffectsResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_loopSuggestionState];
  [v3 setObject:v4 forKey:@"loopSuggestionState"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_longExposureSuggestionState];
  [v3 setObject:v5 forKey:@"longExposureSuggestionState"];

  recipeBlob = self->_recipeBlob;
  if (recipeBlob)
  {
    [v3 setObject:recipeBlob forKey:@"recipeBlob"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteUint64Field();
  PBDataWriterWriteUint64Field();
  if (self->_recipeBlob)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 2) = self->_loopSuggestionState;
  *(a3 + 1) = self->_longExposureSuggestionState;
  recipeBlob = self->_recipeBlob;
  if (recipeBlob)
  {
    [a3 setRecipeBlob:recipeBlob];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[2] = self->_loopSuggestionState;
  v5[1] = self->_longExposureSuggestionState;
  v6 = [(NSData *)self->_recipeBlob copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_loopSuggestionState == v4[2] && self->_longExposureSuggestionState == v4[1])
  {
    recipeBlob = self->_recipeBlob;
    if (recipeBlob | v4[3])
    {
      v6 = [(NSData *)recipeBlob isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  self->_loopSuggestionState = *(a3 + 2);
  self->_longExposureSuggestionState = *(a3 + 1);
  if (*(a3 + 3))
  {
    [(VCPProtoLivePhotoEffectsResult *)self setRecipeBlob:?];
  }
}

@end