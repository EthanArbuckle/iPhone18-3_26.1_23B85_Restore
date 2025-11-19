@interface NMSModelForYouRecommendationsRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation NMSModelForYouRecommendationsRequest

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [NMSModelForYouRecommendationsRequestOperation alloc];
  v6 = [(NMSModelForYouRecommendationsRequest *)self copy];
  v7 = [(MPStoreModelRequestOperation *)v5 initWithRequest:v6 responseHandler:v4];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NMSModelForYouRecommendationsRequest;
  v4 = [(MPModelForYouRecommendationsRequest *)&v7 copyWithZone:a3];
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