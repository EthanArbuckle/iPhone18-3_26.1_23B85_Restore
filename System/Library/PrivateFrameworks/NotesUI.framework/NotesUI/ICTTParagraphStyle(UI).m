@interface ICTTParagraphStyle(UI)
- (uint64_t)layoutWritingDirection;
@end

@implementation ICTTParagraphStyle(UI)

- (uint64_t)layoutWritingDirection
{
  if ([a1 writingDirection] == -1)
  {
    v3 = MEMORY[0x1E69DB7D0];

    return [v3 defaultWritingDirectionForLanguage:0];
  }

  else
  {

    return [a1 writingDirection];
  }
}

@end