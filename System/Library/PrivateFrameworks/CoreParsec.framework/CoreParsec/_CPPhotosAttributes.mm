@interface _CPPhotosAttributes
- (BOOL)isEqual:(id)a3;
- (_CPPhotosAttributes)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPPhotosAttributes

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (positionIndex = self->_positionIndex, positionIndex == objc_msgSend(v4, "positionIndex")) && (isEmbeddingMatched = self->_isEmbeddingMatched, isEmbeddingMatched == objc_msgSend(v4, "isEmbeddingMatched")) && (isMetadataMatched = self->_isMetadataMatched, isMetadataMatched == objc_msgSend(v4, "isMetadataMatched")) && (isVideo = self->_isVideo, isVideo == objc_msgSend(v4, "isVideo")) && (isFavorite = self->_isFavorite, isFavorite == objc_msgSend(v4, "isFavorite")))
  {
    photosSuggestionType = self->_photosSuggestionType;
    v11 = photosSuggestionType == [v4 photosSuggestionType];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)writeTo:(id)a3
{
  a3;
  if ([(_CPPhotosAttributes *)self positionIndex])
  {
    positionIndex = self->_positionIndex;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPPhotosAttributes *)self isEmbeddingMatched])
  {
    isEmbeddingMatched = self->_isEmbeddingMatched;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPPhotosAttributes *)self isMetadataMatched])
  {
    isMetadataMatched = self->_isMetadataMatched;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPPhotosAttributes *)self isVideo])
  {
    isVideo = self->_isVideo;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPPhotosAttributes *)self isFavorite])
  {
    isFavorite = self->_isFavorite;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPPhotosAttributes *)self photosSuggestionType])
  {
    photosSuggestionType = self->_photosSuggestionType;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPPhotosAttributes)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_CPPhotosAttributes *)self init];
  if (v5)
  {
    -[_CPPhotosAttributes setPositionIndex:](v5, "setPositionIndex:", [v4 positionIndex]);
    -[_CPPhotosAttributes setIsEmbeddingMatched:](v5, "setIsEmbeddingMatched:", [v4 isEmbeddingMatched]);
    -[_CPPhotosAttributes setIsMetadataMatched:](v5, "setIsMetadataMatched:", [v4 isMetadataMatched]);
    -[_CPPhotosAttributes setIsVideo:](v5, "setIsVideo:", [v4 isVideo]);
    -[_CPPhotosAttributes setIsFavorite:](v5, "setIsFavorite:", [v4 isFavorite]);
    v6 = v5;
  }

  return v5;
}

@end