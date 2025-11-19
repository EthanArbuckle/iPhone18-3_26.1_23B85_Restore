@interface CKPinnedConversationActivityItemViewShadowLayer
- (CGSize)_offsetForShadowStyle:(int64_t)a3;
- (CKPinnedConversationActivityItemViewShadowLayer)initWithShadowType:(int64_t)a3;
- (double)_opacityForShadowStyle:(int64_t)a3;
- (double)_radiusForShadowStyle:(int64_t)a3;
- (int64_t)_shadowStyleForShadowType:(int64_t)a3 userInterfaceStyle:(int64_t)a4;
- (void)_updateShadowProperties;
- (void)setUserInterfaceStyle:(int64_t)a3;
@end

@implementation CKPinnedConversationActivityItemViewShadowLayer

- (CKPinnedConversationActivityItemViewShadowLayer)initWithShadowType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CKPinnedConversationActivityItemViewShadowLayer;
  v4 = [(CKPinnedConversationActivityItemViewShadowLayer *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_shadowType = a3;
    v4->_userInterfaceStyle = 0;
    v6 = [MEMORY[0x1E69DC888] blackColor];
    -[CKPinnedConversationActivityItemViewShadowLayer setShadowColor:](v5, "setShadowColor:", [v6 CGColor]);

    [(CKPinnedConversationActivityItemViewShadowLayer *)v5 _updateShadowProperties];
  }

  return v5;
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  if (self->_userInterfaceStyle != a3)
  {
    self->_userInterfaceStyle = a3;
    [(CKPinnedConversationActivityItemViewShadowLayer *)self _updateShadowProperties];
  }
}

- (void)_updateShadowProperties
{
  v3 = [(CKPinnedConversationActivityItemViewShadowLayer *)self _shadowStyleForShadowType:self->_shadowType userInterfaceStyle:self->_userInterfaceStyle];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self _opacityForShadowStyle:v3];
  *&v4 = v4;
  [(CKPinnedConversationActivityItemViewShadowLayer *)self setShadowOpacity:v4];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self _radiusForShadowStyle:v3];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self setShadowRadius:?];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self _offsetForShadowStyle:v3];

  [(CKPinnedConversationActivityItemViewShadowLayer *)self setShadowOffset:?];
}

- (int64_t)_shadowStyleForShadowType:(int64_t)a3 userInterfaceStyle:(int64_t)a4
{
  v4 = 3;
  if (a3 != 1)
  {
    v4 = 0;
  }

  if (!a3)
  {
    v4 = 1;
  }

  if (a4 != 2)
  {
    v4 = 0;
  }

  if (a4 >= 2)
  {
    return v4;
  }

  else
  {
    return 2 * (a3 == 1);
  }
}

- (double)_opacityForShadowStyle:(int64_t)a3
{
  v3 = 0.0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      [v4 pinnedConversationActivityTightShadowLightOpacity];
      goto LABEL_10;
    }

    if (a3 == 3)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      [v4 pinnedConversationActivityTightShadowDarkOpacity];
      goto LABEL_10;
    }
  }

  else
  {
    if (!a3)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      [v4 pinnedConversationActivityBroadShadowLightOpacity];
      goto LABEL_10;
    }

    if (a3 == 1)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      [v4 pinnedConversationActivityBroadShadowDarkOpacity];
LABEL_10:
      v3 = v5;
    }
  }

  return v3;
}

- (double)_radiusForShadowStyle:(int64_t)a3
{
  v3 = 0.0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      [v4 pinnedConversationActivityTightShadowLightRadius];
      goto LABEL_10;
    }

    if (a3 == 3)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      [v4 pinnedConversationActivityTightShadowDarkRadius];
      goto LABEL_10;
    }
  }

  else
  {
    if (!a3)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      [v4 pinnedConversationActivityBroadShadowLightRadius];
      goto LABEL_10;
    }

    if (a3 == 1)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      [v4 pinnedConversationActivityBroadShadowDarkRadius];
LABEL_10:
      v3 = v5;
    }
  }

  return v3;
}

- (CGSize)_offsetForShadowStyle:(int64_t)a3
{
  v3 = 0.0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v5 = +[CKUIBehavior sharedBehaviors];
      [v5 pinnedConversationActivityTightShadowLightOffset];
      goto LABEL_10;
    }

    v4 = 0.0;
    if (a3 == 3)
    {
      v5 = +[CKUIBehavior sharedBehaviors];
      [v5 pinnedConversationActivityTightShadowDarkOffset];
      goto LABEL_10;
    }
  }

  else
  {
    if (!a3)
    {
      v5 = +[CKUIBehavior sharedBehaviors];
      [v5 pinnedConversationActivityBroadShadowLightOffset];
      goto LABEL_10;
    }

    v4 = 0.0;
    if (a3 == 1)
    {
      v5 = +[CKUIBehavior sharedBehaviors];
      [v5 pinnedConversationActivityBroadShadowDarkOffset];
LABEL_10:
      v4 = v6;
      v3 = v7;
    }
  }

  v8 = v4;
  v9 = v3;
  result.height = v9;
  result.width = v8;
  return result;
}

@end