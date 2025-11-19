@interface CKLegacyTranscriptLayoutEnvironment
- (CKLegacyTranscriptLayoutEnvironment)init;
- (UIEdgeInsets)marginInsets;
@end

@implementation CKLegacyTranscriptLayoutEnvironment

- (CKLegacyTranscriptLayoutEnvironment)init
{
  v5.receiver = self;
  v5.super_class = CKLegacyTranscriptLayoutEnvironment;
  v2 = [(CKLegacyTranscriptLayoutEnvironment *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKLegacyTranscriptLayoutEnvironment *)v2 setMarginInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(CKLegacyTranscriptLayoutEnvironment *)v3 setLayoutContext:0];
  }

  return v3;
}

- (UIEdgeInsets)marginInsets
{
  top = self->_marginInsets.top;
  left = self->_marginInsets.left;
  bottom = self->_marginInsets.bottom;
  right = self->_marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end