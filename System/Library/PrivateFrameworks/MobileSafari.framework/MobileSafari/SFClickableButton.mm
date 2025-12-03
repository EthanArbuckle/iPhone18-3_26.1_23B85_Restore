@interface SFClickableButton
- (void)setClickEnabled:(BOOL)enabled;
@end

@implementation SFClickableButton

- (void)setClickEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  clickInteraction = self->_clickInteraction;
  if (enabledCopy)
  {
    if (!clickInteraction)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DD3D8]);
      v7 = self->_clickInteraction;
      self->_clickInteraction = v6;

      [(_UIClickInteraction *)self->_clickInteraction setDelegate:self];
      v8 = self->_clickInteraction;

      [(SFClickableButton *)self addInteraction:v8];
    }
  }

  else if (clickInteraction)
  {
    [(SFClickableButton *)self removeInteraction:?];
    v9 = self->_clickInteraction;
    self->_clickInteraction = 0;
  }
}

@end