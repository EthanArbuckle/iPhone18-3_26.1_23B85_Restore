@interface BPSBookmarkableEnumerator
- (id)bookmark;
- (id)bpsPublisher;
- (id)nextObject;
- (id)validateBookmark:(id)bookmark;
- (void)applyBookmark:(id)bookmark;
- (void)reset;
@end

@implementation BPSBookmarkableEnumerator

- (id)nextObject
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Must override method %@ in a subclass", v4}];

  return 0;
}

- (id)bookmark
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Must override method %@ in a subclass", v4}];

  return 0;
}

- (id)validateBookmark:(id)bookmark
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Must override method %@ in a subclass", v5}];

  return 0;
}

- (void)applyBookmark:(id)bookmark
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Must override method %@ in a subclass", v5}];
}

- (void)reset
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Must override method %@ in a subclass", v4}];
}

- (id)bpsPublisher
{
  v2 = [[BPSSequence alloc] initWithBookmarkableEnumerator:self];

  return v2;
}

@end