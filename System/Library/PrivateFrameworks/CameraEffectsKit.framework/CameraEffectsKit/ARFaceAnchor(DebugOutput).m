@interface ARFaceAnchor(DebugOutput)
- (uint64_t)description;
@end

@implementation ARFaceAnchor(DebugOutput)

- (uint64_t)description
{
  v2 = MEMORY[0x277CCACA8];
  if ([a1 isTracked])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  [a1 transform];
  v5 = v4;
  [a1 transform];
  v7 = v6;
  [a1 transform];
  return [v2 stringWithFormat:@"face anchor: isTracked=%@, position=(%f, %f, %f)", v3, *&v5, *&v7, v8];
}

@end