@interface VCPProtoLivePhotoEffectsResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoLivePhotoEffectsResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"attributes"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"loopSuggestionState"];
    integerValue = [v5 integerValue];

    v7 = [v4 objectForKeyedSubscript:@"longExposureSuggestionState"];
    integerValue2 = [v7 integerValue];

    v9 = [v4 objectForKeyedSubscript:@"livePhotoEffectsRecipe"];
    v10 = objc_alloc_init(VCPProtoLivePhotoEffectsResult);
    [(VCPProtoLivePhotoEffectsResult *)v10 setLoopSuggestionState:integerValue];
    [(VCPProtoLivePhotoEffectsResult *)v10 setLongExposureSuggestionState:integerValue2];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VCPProtoLivePhotoEffectsResult loopSuggestionState](self, "loopSuggestionState")}];
  [dictionary2 setObject:v5 forKeyedSubscript:@"loopSuggestionState"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[VCPProtoLivePhotoEffectsResult longExposureSuggestionState](self, "longExposureSuggestionState")}];
  [dictionary2 setObject:v6 forKeyedSubscript:@"longExposureSuggestionState"];

  recipeBlob = [(VCPProtoLivePhotoEffectsResult *)self recipeBlob];

  if (recipeBlob)
  {
    recipeBlob2 = [(VCPProtoLivePhotoEffectsResult *)self recipeBlob];
    [dictionary2 setObject:recipeBlob2 forKeyedSubscript:@"livePhotoEffectsRecipe"];
  }

  [dictionary setObject:dictionary2 forKeyedSubscript:@"attributes"];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoLivePhotoEffectsResult;
  v4 = [(VCPProtoLivePhotoEffectsResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoLivePhotoEffectsResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_loopSuggestionState];
  [dictionary setObject:v4 forKey:@"loopSuggestionState"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_longExposureSuggestionState];
  [dictionary setObject:v5 forKey:@"longExposureSuggestionState"];

  recipeBlob = self->_recipeBlob;
  if (recipeBlob)
  {
    [dictionary setObject:recipeBlob forKey:@"recipeBlob"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint64Field();
  PBDataWriterWriteUint64Field();
  if (self->_recipeBlob)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 2) = self->_loopSuggestionState;
  *(to + 1) = self->_longExposureSuggestionState;
  recipeBlob = self->_recipeBlob;
  if (recipeBlob)
  {
    [to setRecipeBlob:recipeBlob];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[2] = self->_loopSuggestionState;
  v5[1] = self->_longExposureSuggestionState;
  v6 = [(NSData *)self->_recipeBlob copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_loopSuggestionState == equalCopy[2] && self->_longExposureSuggestionState == equalCopy[1])
  {
    recipeBlob = self->_recipeBlob;
    if (recipeBlob | equalCopy[3])
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

- (void)mergeFrom:(id)from
{
  self->_loopSuggestionState = *(from + 2);
  self->_longExposureSuggestionState = *(from + 1);
  if (*(from + 3))
  {
    [(VCPProtoLivePhotoEffectsResult *)self setRecipeBlob:?];
  }
}

@end