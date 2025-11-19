@interface BMStreamDatastorePruner
- (BMStreamDatastorePruner)initWithStream:(id)a3 config:(id)a4 eventDataClass:(Class)a5;
- (void)eventsFrom:(double)a3 to:(double)a4 reason:(unint64_t)a5 policyID:(id)a6 shouldDeleteUsingBlock:(id)a7;
- (void)removeEventsFrom:(double)a3 to:(double)a4 reason:(unint64_t)a5 usingBlock:(id)a6;
@end

@implementation BMStreamDatastorePruner

- (BMStreamDatastorePruner)initWithStream:(id)a3 config:(id)a4 eventDataClass:(Class)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = BMStreamDatastorePruner;
  v10 = [(BMStreamDatastorePruner *)&v15 init];
  if (v10)
  {
    v11 = [BMStreamDatastore alloc];
    v12 = [(BMStreamDatastore *)v11 initWithStream:v8 permission:2 config:v9 includeTombstones:1 eventDataClass:a5 useCase:*MEMORY[0x1E698E950]];
    inner = v10->_inner;
    v10->_inner = v12;
  }

  return v10;
}

- (void)removeEventsFrom:(double)a3 to:(double)a4 reason:(unint64_t)a5 usingBlock:(id)a6
{
  v13 = a6;
  v10 = [MEMORY[0x1E698E9E0] streamIdentifiers];
  v11 = [(BMStreamDatastore *)self->_inner streamId];
  v12 = [v10 containsObject:v11];

  if (v12)
  {
    [(BMStreamDatastore *)self->_inner pruneStreamToMaxStreamSizeInBytes:52428800];
  }

  [(BMStreamDatastore *)self->_inner removeEventsFrom:a5 to:1 reason:v13 pruneFutureEvents:a3 usingBlock:a4];
}

- (void)eventsFrom:(double)a3 to:(double)a4 reason:(unint64_t)a5 policyID:(id)a6 shouldDeleteUsingBlock:(id)a7
{
  v16 = a6;
  v12 = a7;
  v13 = [MEMORY[0x1E698E9E0] streamIdentifiers];
  v14 = [(BMStreamDatastore *)self->_inner streamId];
  v15 = [v13 containsObject:v14];

  if (v15)
  {
    [(BMStreamDatastore *)self->_inner pruneStreamToMaxStreamSizeInBytes:52428800];
  }

  [(BMStreamDatastore *)self->_inner removeEventsFrom:a5 to:v16 reason:v12 policyID:a3 shouldDeleteUsingBlock:a4];
}

@end