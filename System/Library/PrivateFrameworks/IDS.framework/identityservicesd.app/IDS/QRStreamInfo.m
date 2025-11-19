@interface QRStreamInfo
- (id)initQRStreamInfo:(id)a3 subscribedStreams:(id)a4 generationCounter:(id)a5 maxConcurrentStreams:(id)a6;
@end

@implementation QRStreamInfo

- (id)initQRStreamInfo:(id)a3 subscribedStreams:(id)a4 generationCounter:(id)a5 maxConcurrentStreams:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = QRStreamInfo;
  v15 = [(QRStreamInfo *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_publishedStreams, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
  }

  return p_isa;
}

@end