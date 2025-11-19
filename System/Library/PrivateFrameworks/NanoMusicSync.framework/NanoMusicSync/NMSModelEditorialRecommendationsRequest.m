@interface NMSModelEditorialRecommendationsRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation NMSModelEditorialRecommendationsRequest

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [NMSModelEditorialRecommendationsRequestOperation alloc];
  v6 = [(NMSModelEditorialRecommendationsRequest *)self copy];
  v7 = [(MPStoreModelRequestOperation *)v5 initWithRequest:v6 responseHandler:v4];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NMSModelEditorialRecommendationsRequest;
  v4 = [(MPModelStoreBrowseRequest *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    *(v4 + 184) = self->_nms_useCachedDataOnly;
    objc_storeStrong(v4 + 24, self->_nms_cachedLoadedOutput);
  }

  return v5;
}

@end