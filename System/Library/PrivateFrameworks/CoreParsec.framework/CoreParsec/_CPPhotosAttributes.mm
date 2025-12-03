@interface _CPPhotosAttributes
- (BOOL)isEqual:(id)equal;
- (_CPPhotosAttributes)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPPhotosAttributes

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (positionIndex = self->_positionIndex, positionIndex == objc_msgSend(equalCopy, "positionIndex")) && (isEmbeddingMatched = self->_isEmbeddingMatched, isEmbeddingMatched == objc_msgSend(equalCopy, "isEmbeddingMatched")) && (isMetadataMatched = self->_isMetadataMatched, isMetadataMatched == objc_msgSend(equalCopy, "isMetadataMatched")) && (isVideo = self->_isVideo, isVideo == objc_msgSend(equalCopy, "isVideo")) && (isFavorite = self->_isFavorite, isFavorite == objc_msgSend(equalCopy, "isFavorite")))
  {
    photosSuggestionType = self->_photosSuggestionType;
    v11 = photosSuggestionType == [equalCopy photosSuggestionType];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)writeTo:(id)to
{
  to;
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

- (_CPPhotosAttributes)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPPhotosAttributes *)self init];
  if (v5)
  {
    -[_CPPhotosAttributes setPositionIndex:](v5, "setPositionIndex:", [facadeCopy positionIndex]);
    -[_CPPhotosAttributes setIsEmbeddingMatched:](v5, "setIsEmbeddingMatched:", [facadeCopy isEmbeddingMatched]);
    -[_CPPhotosAttributes setIsMetadataMatched:](v5, "setIsMetadataMatched:", [facadeCopy isMetadataMatched]);
    -[_CPPhotosAttributes setIsVideo:](v5, "setIsVideo:", [facadeCopy isVideo]);
    -[_CPPhotosAttributes setIsFavorite:](v5, "setIsFavorite:", [facadeCopy isFavorite]);
    v6 = v5;
  }

  return v5;
}

@end