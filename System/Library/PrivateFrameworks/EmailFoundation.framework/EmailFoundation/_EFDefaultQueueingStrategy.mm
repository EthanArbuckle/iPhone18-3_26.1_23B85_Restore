@interface _EFDefaultQueueingStrategy
- (void)enqueueObject:(id)object replaceIfExists:(BOOL)exists buffer:(id)buffer;
@end

@implementation _EFDefaultQueueingStrategy

- (void)enqueueObject:(id)object replaceIfExists:(BOOL)exists buffer:(id)buffer
{
  existsCopy = exists;
  objectCopy = object;
  bufferCopy = buffer;
  v8 = bufferCopy;
  if (existsCopy)
  {
    [bufferCopy removeObject:objectCopy];
  }

  [v8 addObject:objectCopy];
}

@end