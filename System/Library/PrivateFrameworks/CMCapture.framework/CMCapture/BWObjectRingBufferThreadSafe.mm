@interface BWObjectRingBufferThreadSafe
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)firstTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastTime;
- (BWObjectRingBufferThreadSafe)initWithCapacity:(int)a3;
- (id)description;
- (id)firstObject;
- (id)lastObject;
- (void)appendObject:(id)a3 forTime:(id *)a4;
- (void)clear;
- (void)dealloc;
- (void)enumerateObjectsStartingAt:(id *)a3 usingBlock:(id)a4;
- (void)extractTimeRangeFrom:(id *)a3 until:(id *)a4 into:(id)a5 times:(id)a6;
- (void)flushEntriesEarlierThan:(id *)a3;
- (void)reverseEnumerateObjectsStartingAt:(id *)a3 usingBlock:(id)a4;
- (void)setCapacity:(int)a3;
@end

@implementation BWObjectRingBufferThreadSafe

- (BWObjectRingBufferThreadSafe)initWithCapacity:(int)a3
{
  v3 = *&a3;
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

- (void)setCapacity:(int)a3
{
  v3 = *&a3;
  FigSimpleMutexLock();
  v5.receiver = self;
  v5.super_class = BWObjectRingBufferThreadSafe;
  [(BWObjectRingBuffer *)&v5 setCapacity:v3];
  FigSimpleMutexUnlock();
}

- (void)appendObject:(id)a3 forTime:(id *)a4
{
  FigSimpleMutexLock();
  v8.receiver = self;
  v8.super_class = BWObjectRingBufferThreadSafe;
  v7 = *a4;
  [(BWObjectRingBuffer *)&v8 appendObject:a3 forTime:&v7];
  FigSimpleMutexUnlock();
}

- (id)firstObject
{
  FigSimpleMutexLock();
  v5.receiver = self;
  v5.super_class = BWObjectRingBufferThreadSafe;
  v3 = [(BWObjectRingBuffer *)&v5 firstObject];
  FigSimpleMutexUnlock();
  return v3;
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
  v3 = [(BWObjectRingBuffer *)&v5 lastObject];
  FigSimpleMutexUnlock();
  return v3;
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

- (void)enumerateObjectsStartingAt:(id *)a3 usingBlock:(id)a4
{
  FigSimpleMutexLock();
  v8.receiver = self;
  v8.super_class = BWObjectRingBufferThreadSafe;
  v7 = *a3;
  [(BWObjectRingBuffer *)&v8 enumerateObjectsStartingAt:&v7 usingBlock:a4];
  FigSimpleMutexUnlock();
}

- (void)reverseEnumerateObjectsStartingAt:(id *)a3 usingBlock:(id)a4
{
  FigSimpleMutexLock();
  v8.receiver = self;
  v8.super_class = BWObjectRingBufferThreadSafe;
  v7 = *a3;
  [(BWObjectRingBuffer *)&v8 reverseEnumerateObjectsStartingAt:&v7 usingBlock:a4];
  FigSimpleMutexUnlock();
}

- (void)extractTimeRangeFrom:(id *)a3 until:(id *)a4 into:(id)a5 times:(id)a6
{
  FigSimpleMutexLock();
  v13.receiver = self;
  v13.super_class = BWObjectRingBufferThreadSafe;
  v12 = *a3;
  v11 = *a4;
  [(BWObjectRingBuffer *)&v13 extractTimeRangeFrom:&v12 until:&v11 into:a5 times:a6];
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

- (void)flushEntriesEarlierThan:(id *)a3
{
  FigSimpleMutexLock();
  v6.receiver = self;
  v6.super_class = BWObjectRingBufferThreadSafe;
  v5 = *a3;
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