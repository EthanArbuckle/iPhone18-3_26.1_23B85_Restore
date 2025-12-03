@interface OspreyMessageProducer
- (OspreyMessageProducer)initWithMessageSerializer:(id)serializer streamingContext:(id)context;
- (void)produceMessage:(id)message;
- (void)produceMessage:(id)message compressed:(BOOL)compressed;
@end

@implementation OspreyMessageProducer

- (OspreyMessageProducer)initWithMessageSerializer:(id)serializer streamingContext:(id)context
{
  serializerCopy = serializer;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = OspreyMessageProducer;
  v8 = [(OspreyMessageProducer *)&v12 init];
  if (v8)
  {
    v9 = MEMORY[0x25F8A5BA0](serializerCopy);
    serializer = v8->_serializer;
    v8->_serializer = v9;

    objc_storeStrong(&v8->_streamingContext, context);
  }

  return v8;
}

- (void)produceMessage:(id)message
{
  v4 = (*(self->_serializer + 2))();
  [(OspreyClientStreamingContext *)self->_streamingContext writeFrame:v4];
}

- (void)produceMessage:(id)message compressed:(BOOL)compressed
{
  compressedCopy = compressed;
  v6 = (*(self->_serializer + 2))();
  [(OspreyClientStreamingContext *)self->_streamingContext writeFrame:v6 compressed:compressedCopy];
}

@end