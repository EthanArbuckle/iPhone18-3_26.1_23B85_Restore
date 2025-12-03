@interface ICTTParagraphStyle(UI)
- (uint64_t)layoutWritingDirection;
@end

@implementation ICTTParagraphStyle(UI)

- (uint64_t)layoutWritingDirection
{
  if ([self writingDirection] == -1)
  {
    v3 = MEMORY[0x1E69DB7D0];

    return [v3 defaultWritingDirectionForLanguage:0];
  }

  else
  {

    return [self writingDirection];
  }
}

@end