@interface NMSModelForYouRecommendationsRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation NMSModelForYouRecommendationsRequest

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [NMSModelForYouRecommendationsRequestOperation alloc];
  v6 = [(NMSModelForYouRecommendationsRequest *)self copy];
  v7 = [(MPStoreModelRequestOperation *)v5 initWithRequest:v6 responseHandler:handlerCopy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NMSModelForYouRecommendationsRequest;
  v4 = [(MPModelForYouRecommendationsRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    *(v4 + 168) = self->_nms_useCachedDataOnly;
    objc_storeStrong(v4 + 22, self->_nms_cachedRecommendationsArray);
    objc_storeStrong(v5 + 23, self->_nms_cachedStoreItemMetadataResults);
  }

  return v5;
}

@end