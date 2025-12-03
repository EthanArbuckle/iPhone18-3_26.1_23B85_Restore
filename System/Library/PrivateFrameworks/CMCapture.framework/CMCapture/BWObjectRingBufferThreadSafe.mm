@interface BWObjectRingBufferThreadSafe
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)firstTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastTime;
- (BWObjectRingBufferThreadSafe)initWithCapacity:(int)capacity;
- (id)description;
- (id)firstObject;
- (id)lastObject;
- (void)appendObject:(id)object forTime:(id *)time;
- (void)clear;
- (void)dealloc;
- (void)enumerateObjectsStartingAt:(id *)at usingBlock:(id)block;
- (void)extractTimeRangeFrom:(id *)from until:(id *)until into:(id)into times:(id)times;
- (void)flushEntriesEarlierThan:(id *)than;
- (void)reverseEnumerateObjectsStartingAt:(id *)at usingBlock:(id)block;
- (void)setCapacity:(int)capacity;
@end

@implementation BWObjectRingBufferThreadSafe

- (BWObjectRingBufferThreadSafe)initWithCapacity:(int)capacity
{
  v3 = *&capacity;
  self->_lock = FigReentrantMutexCreate();
  v6.receiver = self;
  v6.super_class = BWObjectRingBufferThreadSafe;
  return [(BWObjectRingBuffer *)&v6 initWithCapacity:v3];
}

- (void)dealloc
{
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = BWObjectRingBufferThreadSafe;
  [(BWObjectRingBuffer *)&v3 dealloc];
}

- (void)setCapacity:(int)capacity
{
  v3 = *&capacity;
  FigSimpleMutexLock();
  v5.receiver = self;
  v5.super_class = BWObjectRingBufferThreadSafe;
  [(BWObjectRingBuffer *)&v5 setCapacity:v3];
  FigSimpleMutexUnlock();
}

- (void)appendObject:(id)object forTime:(id *)time
{
  FigSimpleMutexLock();
  v8.receiver = self;
  v8.super_class = BWObjectRingBufferThreadSafe;
  v7 = *time;
  [(BWObjectRingBuffer *)&v8 appendObject:object forTime:&v7];
  FigSimpleMutexUnlock();
}

- (id)firstObject
{
  FigSimpleMutexLock();
  v5.receiver = self;
  v5.super_class = BWObjectRingBufferThreadSafe;
  firstObject = [(BWObjectRingBuffer *)&v5 firstObject];
  FigSimpleMutexUnlock();
  return firstObject;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)firstTime
{
  FigSimpleMutexLock();
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  retstr->var0 = 0;
  v6.receiver = self;
  v6.super_class = BWObjectRingBufferThreadSafe;
  [($3CC8671D27C23BF42ADDB32F2B5E48AE *)&v6 firstTime];
  return FigSimpleMutexUnlock();
}

- (id)lastObject
{
  FigSimpleMutexLock();
  v5.receiver = self;
  v5.super_class = BWObjectRingBufferThreadSafe;
  lastObject = [(BWObjectRingBuffer *)&v5 lastObject];
  FigSimpleMutexUnlock();
  return lastObject;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastTime
{
  FigSimpleMutexLock();
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  retstr->var0 = 0;
  v6.receiver = self;
  v6.super_class = BWObjectRingBufferThreadSafe;
  [($3CC8671D27C23BF42ADDB32F2B5E48AE *)&v6 lastTime];
  return FigSimpleMutexUnlock();
}

- (void)enumerateObjectsStartingAt:(id *)at usingBlock:(id)block
{
  FigSimpleMutexLock();
  v8.receiver = self;
  v8.super_class = BWObjectRingBufferThreadSafe;
  v7 = *at;
  [(BWObjectRingBuffer *)&v8 enumerateObjectsStartingAt:&v7 usingBlock:block];
  FigSimpleMutexUnlock();
}

- (void)reverseEnumerateObjectsStartingAt:(id *)at usingBlock:(id)block
{
  FigSimpleMutexLock();
  v8.receiver = self;
  v8.super_class = BWObjectRingBufferThreadSafe;
  v7 = *at;
  [(BWObjectRingBuffer *)&v8 reverseEnumerateObjectsStartingAt:&v7 usingBlock:block];
  FigSimpleMutexUnlock();
}

- (void)extractTimeRangeFrom:(id *)from until:(id *)until into:(id)into times:(id)times
{
  FigSimpleMutexLock();
  v13.receiver = self;
  v13.super_class = BWObjectRingBufferThreadSafe;
  v12 = *from;
  v11 = *until;
  [(BWObjectRingBuffer *)&v13 extractTimeRangeFrom:&v12 until:&v11 into:into times:times];
  FigSimpleMutexUnlock();
}

- (void)clear
{
  FigSimpleMutexLock();
  v3.receiver = self;
  v3.super_class = BWObjectRingBufferThreadSafe;
  [(BWObjectRingBuffer *)&v3 clear];
  FigSimpleMutexUnlock();
}

- (void)flushEntriesEarlierThan:(id *)than
{
  FigSimpleMutexLock();
  v6.receiver = self;
  v6.super_class = BWObjectRingBufferThreadSafe;
  v5 = *than;
  [(BWObjectRingBuffer *)&v6 flushEntriesEarlierThan:&v5];
  FigSimpleMutexUnlock();
}

- (id)description
{
  FigSimpleMutexLock();
  v5.receiver = self;
  v5.super_class = BWObjectRingBufferThreadSafe;
  v3 = [(BWObjectRingBuffer *)&v5 description];
  FigSimpleMutexUnlock();
  return v3;
}

@end