@interface _BLCheckDownloadQueueRequestEncoder
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters;
@end

@implementation _BLCheckDownloadQueueRequestEncoder

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [request mutableCopy];
  [v7 setCachePolicy:1];
  v10.receiver = self;
  v10.super_class = _BLCheckDownloadQueueRequestEncoder;
  v8 = [(_BLCheckDownloadQueueRequestEncoder *)&v10 requestByEncodingRequest:v7 parameters:parametersCopy];

  return v8;
}

@end