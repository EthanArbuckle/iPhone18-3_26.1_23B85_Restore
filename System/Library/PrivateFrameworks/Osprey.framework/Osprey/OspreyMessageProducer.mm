@interface OspreyMessageProducer
- (OspreyMessageProducer)initWithMessageSerializer:(id)a3 streamingContext:(id)a4;
- (void)produceMessage:(id)a3;
- (void)produceMessage:(id)a3 compressed:(BOOL)a4;
@end

@implementation OspreyMessageProducer

- (OspreyMessageProducer)initWithMessageSerializer:(id)a3 streamingContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = OspreyMessageProducer;
  v8 = [(OspreyMessageProducer *)&v12 init];
  if (v8)
  {
    v9 = MEMORY[0x25F8A5BA0](v6);
    serializer = v8->_serializer;
    v8->_serializer = v9;

    objc_storeStrong(&v8->_streamingContext, a4);
  }

  return v8;
}

- (void)produceMessage:(id)a3
{
  v4 = (*(self->_serializer + 2))();
  [(OspreyClientStreamingContext *)self->_streamingContext writeFrame:v4];
}

- (void)produceMessage:(id)a3 compressed:(BOOL)a4
{
  v4 = a4;
  v6 = (*(self->_serializer + 2))();
  [(OspreyClientStreamingContext *)self->_streamingContext writeFrame:v6 compressed:v4];
}

@end