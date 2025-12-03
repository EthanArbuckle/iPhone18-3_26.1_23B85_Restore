@interface SUUIProductPage
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUUIProductPage

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setDefaultPageFragment:self->_defaultPageFragment];
  [v4 setItem:self->_item];
  [v4 setITMLData:self->_itmlData];
  [v4 setITMLResponse:self->_itmlResponse];
  [v4 setMetricsConfiguration:self->_metricsConfiguration];
  [v4 setMetricsPageDescription:self->_metricsPageDescription];
  [v4 setPageURL:self->_pageURL];
  [v4 setProductInformation:self->_productInformation];
  [v4 setRelatedContentSwooshes:self->_relatedContentSwooshes];
  [v4 setReviewConfiguration:self->_reviewConfiguration];
  [v4 setUber:self->_uber];
  return v4;
}

@end