@interface QRStreamInfo
- (id)initQRStreamInfo:(id)info subscribedStreams:(id)streams generationCounter:(id)counter maxConcurrentStreams:(id)concurrentStreams;
@end

@implementation QRStreamInfo

- (id)initQRStreamInfo:(id)info subscribedStreams:(id)streams generationCounter:(id)counter maxConcurrentStreams:(id)concurrentStreams
{
  infoCopy = info;
  streamsCopy = streams;
  counterCopy = counter;
  concurrentStreamsCopy = concurrentStreams;
  v18.receiver = self;
  v18.super_class = QRStreamInfo;
  v15 = [(QRStreamInfo *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_publishedStreams, info);
    objc_storeStrong(p_isa + 2, streams);
    objc_storeStrong(p_isa + 3, counter);
    objc_storeStrong(p_isa + 4, concurrentStreams);
  }

  return p_isa;
}

@end