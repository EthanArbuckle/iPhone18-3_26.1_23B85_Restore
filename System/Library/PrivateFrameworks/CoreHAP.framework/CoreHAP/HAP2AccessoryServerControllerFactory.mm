@interface HAP2AccessoryServerControllerFactory
- (id)createControllerWithEncoding:(id)encoding secureTransport:(id)transport operationQueue:(id)queue;
@end

@implementation HAP2AccessoryServerControllerFactory

- (id)createControllerWithEncoding:(id)encoding secureTransport:(id)transport operationQueue:(id)queue
{
  queueCopy = queue;
  transportCopy = transport;
  encodingCopy = encoding;
  v10 = [[HAP2AccessoryServerController alloc] initWithEncoding:encodingCopy secureTransport:transportCopy operationQueue:queueCopy];

  return v10;
}

@end