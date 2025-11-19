@interface _CPSpotlightEmbeddingState
- (BOOL)isEqual:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPSpotlightEmbeddingState

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (embeddedPhotosAssetsCount = self->_embeddedPhotosAssetsCount, embeddedPhotosAssetsCount == objc_msgSend(v4, "embeddedPhotosAssetsCount")) && (totalPhotosAssetsCount = self->_totalPhotosAssetsCount, totalPhotosAssetsCount == objc_msgSend(v4, "totalPhotosAssetsCount")))
  {
    embeddedPhotosAssetsPercentage = self->_embeddedPhotosAssetsPercentage;
    v8 = embeddedPhotosAssetsPercentage == [v4 embeddedPhotosAssetsPercentage];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)a3
{
  a3;
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