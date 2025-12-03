@interface CKConversationListTypingIndicatorView
- (CKConversationListTypingIndicatorLayer)typingLayer;
- (CKConversationListTypingIndicatorView)init;
- (void)_updateTypingLayerTransform;
- (void)resetTypingLayer;
- (void)setFlipForRTLLayout:(BOOL)layout;
- (void)setHighlightedState:(BOOL)state;
- (void)setTypingLayer:(id)layer;
- (void)startGrowAnimation;
- (void)startPulseAnimation;
- (void)startShrinkAnimationWithCompletionBlock:(id)block;
- (void)stopAnimation;
@end

@implementation CKConversationListTypingIndicatorView

- (CKConversationListTypingIndicatorView)init
{
  +[CKTypingIndicatorLayer defaultSize];
  v8.receiver = self;
  v8.super_class = CKConversationListTypingIndicatorView;
  v5 = [(CKConversationListTypingIndicatorView *)&v8 initWithFrame:0.0, 0.0, v3, v4];
  v6 = v5;
  if (v5)
  {
    [(CKConversationListTypingIndicatorView *)v5 setAccessibilityIdentifier:@"TypingIndicator"];
    [(CKConversationListTypingIndicatorView *)v6 setClipsToBounds:0];
    [(CKConversationListTypingIndicatorView *)v6 setTypingIndicatorScale:1.0];
  }

  return v6;
}

- (void)setFlipForRTLLayout:(BOOL)layout
{
  if (self->_flipForRTLLayout != layout)
  {
    self->_flipForRTLLayout = layout;
    [(CKConversationListTypingIndicatorView *)self _updateTypingLayerTransform];
  }
}

- (void)setTypingLayer:(id)layer
{
  layerCopy = layer;
  typingLayer = self->_typingLayer;
  v8 = layerCopy;
  if (typingLayer != layerCopy)
  {
    if (typingLayer)
    {
      [(CKConversationListTypingIndicatorLayer *)typingLayer removeFromSuperlayer];
    }

    objc_storeStrong(&self->_typingLayer, layer);
    if (self->_typingLayer)
    {
      layer = [(CKConversationListTypingIndicatorView *)self layer];
      [layer addSublayer:self->_typingLayer];

      [(CKConversationListTypingIndicatorView *)self _updateTypingLayerTransform];
      [(CKConversationListTypingIndicatorView *)self setNeedsLayout];
      [(CKConversationListTypingIndicatorView *)self setNeedsDisplay];
    }
  }
}

- (CKConversationListTypingIndicatorLayer)typingLayer
{
  typingLayer = self->_typingLayer;
  if (!typingLayer)
  {
    v4 = [(CKTypingIndicatorLayer *)[CKConversationListTypingIndicatorLayer alloc] initHighlighted:[(CKConversationListTypingIndicatorView *)self isHighlighted]];
    [(CKConversationListTypingIndicatorView *)self setTypingLayer:v4];

    typingLayer = self->_typingLayer;
  }

  return typingLayer;
}

- (void)startGrowAnimation
{
  typingLayer = [(CKConversationListTypingIndicatorView *)self typingLayer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__CKConversationListTypingIndicatorView_startGrowAnimation__block_invoke;
  v4[3] = &unk_1E72EBA18;
  v4[4] = self;
  [typingLayer startGrowAnimationWithCompletionBlock:v4];
}

- (void)startPulseAnimation
{
  typingLayer = [(CKConversationListTypingIndicatorView *)self typingLayer];
  [typingLayer startPulseAnimation];
}

- (void)startShrinkAnimationWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  typingLayer = self->_typingLayer;
  if (typingLayer)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__CKConversationListTypingIndicatorView_startShrinkAnimationWithCompletionBlock___block_invoke;
    v7[3] = &unk_1E72EE5D8;
    v7[4] = self;
    v8 = blockCopy;
    [(CKTypingIndicatorLayer *)typingLayer startShrinkAnimationWithCompletionBlock:v7];
  }
}

uint64_t __81__CKConversationListTypingIndicatorView_startShrinkAnimationWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 destroyTypingLayer];
}

- (void)stopAnimation
{
  typingLayer = self->_typingLayer;
  if (typingLayer)
  {
    [(CKTypingIndicatorLayer *)typingLayer stopAnimation];

    [(CKConversationListTypingIndicatorView *)self destroyTypingLayer];
  }
}

- (void)_updateTypingLayerTransform
{
  if (self->_typingLayer)
  {
    [(CKConversationListTypingIndicatorView *)self typingIndicatorScale];
    if (v3 == 1.0)
    {
      if (!self->_flipForRTLLayout || ([MEMORY[0x1E69DC668] sharedApplication], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "userInterfaceLayoutDirection"), v4, v5 != 1))
      {
        typingLayer = self->_typingLayer;
        v13 = *(MEMORY[0x1E69792E8] + 80);
        *&v31.m31 = *(MEMORY[0x1E69792E8] + 64);
        *&v31.m33 = v13;
        v14 = *(MEMORY[0x1E69792E8] + 112);
        *&v31.m41 = *(MEMORY[0x1E69792E8] + 96);
        *&v31.m43 = v14;
        v15 = *(MEMORY[0x1E69792E8] + 16);
        *&v31.m11 = *MEMORY[0x1E69792E8];
        *&v31.m13 = v15;
        v16 = *(MEMORY[0x1E69792E8] + 48);
        *&v31.m21 = *(MEMORY[0x1E69792E8] + 32);
        *&v31.m23 = v16;
        p_a = &v31;
LABEL_12:
        [(CKConversationListTypingIndicatorLayer *)typingLayer setTransform:p_a];
        return;
      }

      v6 = self->_typingLayer;
      v7 = *(MEMORY[0x1E69792E8] + 80);
      *&a.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&a.m33 = v7;
      v8 = *(MEMORY[0x1E69792E8] + 112);
      *&a.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&a.m43 = v8;
      v9 = *(MEMORY[0x1E69792E8] + 16);
      *&a.m11 = *MEMORY[0x1E69792E8];
      *&a.m13 = v9;
      v10 = *(MEMORY[0x1E69792E8] + 48);
      *&a.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&a.m23 = v10;
      CATransform3DScale(&v31, &a, -1.0, 1.0, 1.0);
      p_a = &v31;
    }

    else
    {
      v17 = v3;
      memset(&v31, 0, sizeof(v31));
      CATransform3DMakeScale(&a, v3, v3, v3);
      [(CKConversationListTypingIndicatorLayer *)self->_typingLayer bounds];
      v18 = 1.0 - v17;
      v20 = (1.0 - v17) * v19 * -0.5;
      [(CKConversationListTypingIndicatorLayer *)self->_typingLayer bounds];
      CATransform3DMakeTranslation(&b, v20, v18 * v21 * -0.5, 0.0);
      CATransform3DConcat(&v31, &a, &b);
      if (!self->_flipForRTLLayout || ([MEMORY[0x1E69DC668] sharedApplication], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "userInterfaceLayoutDirection"), v22, v23 != 1))
      {
        typingLayer = self->_typingLayer;
        a = v31;
        p_a = &a;
        goto LABEL_12;
      }

      v6 = self->_typingLayer;
      v24 = *(MEMORY[0x1E69792E8] + 80);
      *&a.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&a.m33 = v24;
      v25 = *(MEMORY[0x1E69792E8] + 112);
      *&a.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&a.m43 = v25;
      v26 = *(MEMORY[0x1E69792E8] + 16);
      *&a.m11 = *MEMORY[0x1E69792E8];
      *&a.m13 = v26;
      v27 = *(MEMORY[0x1E69792E8] + 48);
      *&a.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&a.m23 = v27;
      CATransform3DScale(&b, &a, -1.0, 1.0, 1.0);
      v28 = v31;
      CATransform3DConcat(&a, &v28, &b);
      p_a = &a;
    }

    typingLayer = v6;
    goto LABEL_12;
  }
}

- (void)resetTypingLayer
{
  if (self->_typingLayer)
  {
    [(CKConversationListTypingIndicatorView *)self destroyTypingLayer];

    [(CKConversationListTypingIndicatorView *)self startPulseAnimation];
  }
}

- (void)setHighlightedState:(BOOL)state
{
  if (self->_highlightedState != state)
  {
    self->_highlightedState = state;
    [(CKConversationListTypingIndicatorView *)self resetTypingLayer];
  }
}

@end