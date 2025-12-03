@interface _CPSpotlightEmbeddingState
- (BOOL)isEqual:(id)equal;
- (void)writeTo:(id)to;
@end

@implementation _CPSpotlightEmbeddingState

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (embeddedPhotosAssetsCount = self->_embeddedPhotosAssetsCount, embeddedPhotosAssetsCount == objc_msgSend(equalCopy, "embeddedPhotosAssetsCount")) && (totalPhotosAssetsCount = self->_totalPhotosAssetsCount, totalPhotosAssetsCount == objc_msgSend(equalCopy, "totalPhotosAssetsCount")))
  {
    embeddedPhotosAssetsPercentage = self->_embeddedPhotosAssetsPercentage;
    v8 = embeddedPhotosAssetsPercentage == [equalCopy embeddedPhotosAssetsPercentage];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPSpotlightEmbeddingState *)self embeddedPhotosAssetsCount])
  {
    embeddedPhotosAssetsCount = self->_embeddedPhotosAssetsCount;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPSpotlightEmbeddingState *)self totalPhotosAssetsCount])
  {
    totalPhotosAssetsCount = self->_totalPhotosAssetsCount;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage])
  {
    embeddedPhotosAssetsPercentage = self->_embeddedPhotosAssetsPercentage;
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

@end