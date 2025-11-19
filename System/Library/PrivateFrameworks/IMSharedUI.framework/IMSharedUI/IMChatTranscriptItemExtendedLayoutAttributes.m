@interface IMChatTranscriptItemExtendedLayoutAttributes
- (CGSize)drawableSize;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMChatTranscriptItemExtendedLayoutAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = IMChatTranscriptItemExtendedLayoutAttributes;
  result = [(IMChatTranscriptItemLayoutAttributes *)&v5 copyWithZone:a3];
  *(result + 5) = self->_drawableSize;
  *(result + 8) = self->_layoutOrientation;
  *(result + 9) = *&self->_topMargin;
  return result;
}

- (CGSize)drawableSize
{
  width = self->_drawableSize.width;
  height = self->_drawableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end