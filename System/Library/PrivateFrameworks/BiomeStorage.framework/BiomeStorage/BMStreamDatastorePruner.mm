@interface BMStreamDatastorePruner
- (BMStreamDatastorePruner)initWithStream:(id)stream config:(id)config eventDataClass:(Class)class;
- (void)eventsFrom:(double)from to:(double)to reason:(unint64_t)reason policyID:(id)d shouldDeleteUsingBlock:(id)block;
- (void)removeEventsFrom:(double)from to:(double)to reason:(unint64_t)reason usingBlock:(id)block;
@end

@implementation BMStreamDatastorePruner

- (BMStreamDatastorePruner)initWithStream:(id)stream config:(id)config eventDataClass:(Class)class
{
  streamCopy = stream;
  configCopy = config;
  v15.receiver = self;
  v15.super_class = BMStreamDatastorePruner;
  v10 = [(BMStreamDatastorePruner *)&v15 init];
  if (v10)
  {
    v11 = [BMStreamDatastore alloc];
    v12 = [(BMStreamDatastore *)v11 initWithStream:streamCopy permission:2 config:configCopy includeTombstones:1 eventDataClass:class useCase:*MEMORY[0x1E698E950]];
    inner = v10->_inner;
    v10->_inner = v12;
  }

  return v10;
}

- (void)removeEventsFrom:(double)from to:(double)to reason:(unint64_t)reason usingBlock:(id)block
{
  blockCopy = block;
  streamIdentifiers = [MEMORY[0x1E698E9E0] streamIdentifiers];
  streamId = [(BMStreamDatastore *)self->_inner streamId];
  v12 = [streamIdentifiers containsObject:streamId];

  if (v12)
  {
    [(BMStreamDatastore *)self->_inner pruneStreamToMaxStreamSizeInBytes:52428800];
  }

  [(BMStreamDatastore *)self->_inner removeEventsFrom:reason to:1 reason:blockCopy pruneFutureEvents:from usingBlock:to];
}

- (void)eventsFrom:(double)from to:(double)to reason:(unint64_t)reason policyID:(id)d shouldDeleteUsingBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  streamIdentifiers = [MEMORY[0x1E698E9E0] streamIdentifiers];
  streamId = [(BMStreamDatastore *)self->_inner streamId];
  v15 = [streamIdentifiers containsObject:streamId];

  if (v15)
  {
    [(BMStreamDatastore *)self->_inner pruneStreamToMaxStreamSizeInBytes:52428800];
  }

  [(BMStreamDatastore *)self->_inner removeEventsFrom:reason to:dCopy reason:blockCopy policyID:from shouldDeleteUsingBlock:to];
}

@end