@interface CKPinnedConversationActivityView
- (BOOL)haveAttachedContactItemViewsForActivityViews:(id)views;
- (CGPoint)_convertPointInOwnCoordinateSpace:(CGPoint)space toUnscaledCoordinateSpaceOfSubview:(id)subview;
- (CGPoint)activityItemOriginationPoint;
- (CGPoint)pointAlongCircle:(CGRect)circle atArcLength:(double)length fromPoint:(CGPoint)point clockwise:(BOOL)clockwise;
- (CGRect)activityItemOriginationSubAvatarFrame;
- (CGRect)avatarFrame;
- (CGRect)innerContentAlignmentFrame;
- (CGRect)outerContentAlignmentFrame;
- (CKPinnedConversationActivityView)initWithFrame:(CGRect)frame;
- (NSArray)displayedContacts;
- (double)circleXCoordinateForYCoordinate:(double)coordinate radius:(double)radius centerPoint:(CGPoint)point contentAlignment:(int64_t)alignment;
- (double)contactItemViewCenterXCoordinateForYCoordinate:(double)coordinate avatarFrame:(CGRect)frame contentAlignment:(int64_t)alignment;
- (double)tailAttachmentXCoordinateForYCoordinate:(double)coordinate avatarFrame:(CGRect)frame contentAlignment:(int64_t)alignment;
- (id)_activityItemViewWithActivityItemIdentifier:(id)identifier;
- (id)_presentedActivityItems;
- (id)_unattachedContactItemViews;
- (id)contactItemViewMatchingContactItemIdentifier:(id)identifier fromContactItemViews:(id)views;
- (void)_layoutUnattachedContactItemViews:(id)views withContentScale:(id)scale applyingTransform:(BOOL)transform;
- (void)_layoutViewsAssociatedWithActivityItemViews:(id)views excludingContactItemViews:(id)itemViews withContentScale:(id)scale applyingTransform:(BOOL)transform updatingActivityItemViews:(BOOL)activityItemViews updatingAttachedContactItemViews:(BOOL)contactItemViews;
- (void)_updateSnapshotAnimated:(BOOL)animated completion:(id)completion;
- (void)applySnapshot:(id)snapshot animated:(BOOL)animated completion:(id)completion;
- (void)layoutSubviews;
- (void)resetToEmptySnapshot;
- (void)setActivityItemOriginationDirection:(int64_t)direction;
- (void)setActivityItemOriginationPoint:(CGPoint)point;
- (void)setInnerContentAlignmentFrame:(CGRect)frame;
- (void)setOuterContentAlignmentFrame:(CGRect)frame;
- (void)setShowContentAlignmentDebugFrames:(BOOL)frames;
- (void)setSuppressingActivity:(BOOL)activity animated:(BOOL)animated completion:(id)completion;
@end

@implementation CKPinnedConversationActivityView

- (CKPinnedConversationActivityView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v20.receiver = self;
  v20.super_class = CKPinnedConversationActivityView;
  v7 = [(CKPinnedConversationActivityView *)&v20 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(CKPinnedConversationActivityView *)v7 setUserInteractionEnabled:0];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activityItemViews = v8->_activityItemViews;
    v8->_activityItemViews = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contactItemViews = v8->_contactItemViews;
    v8->_contactItemViews = v11;

    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 16);
    v8->_innerContentAlignmentFrame.origin = *MEMORY[0x1E695F058];
    v8->_innerContentAlignmentFrame.size = v14;
    v8->_outerContentAlignmentFrame.origin = v13;
    v8->_outerContentAlignmentFrame.size = v14;
    v13.x = x;
    v14.width = y;
    v15 = width;
    v16 = height;
    MidX = CGRectGetMidX(*&v13.x);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MidY = CGRectGetMidY(v21);
    v8->_activityItemOriginationPoint.x = MidX;
    v8->_activityItemOriginationPoint.y = MidY;
  }

  return v8;
}

- (void)setShowContentAlignmentDebugFrames:(BOOL)frames
{
  if (self->_showContentAlignmentDebugFrames != frames)
  {
    self->_showContentAlignmentDebugFrames = frames;
    if (frames)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69794A0]);
      innerContentAlignmentDebugLayer = self->_innerContentAlignmentDebugLayer;
      self->_innerContentAlignmentDebugLayer = v5;

      [(CAShapeLayer *)self->_innerContentAlignmentDebugLayer setFillColor:0];
      systemPinkColor = [MEMORY[0x1E69DC888] systemPinkColor];
      -[CAShapeLayer setStrokeColor:](self->_innerContentAlignmentDebugLayer, "setStrokeColor:", [systemPinkColor CGColor]);

      [(CAShapeLayer *)self->_innerContentAlignmentDebugLayer setLineDashPattern:&unk_1F04E6858];
      layer = [(CKPinnedConversationActivityView *)self layer];
      [layer addSublayer:self->_innerContentAlignmentDebugLayer];

      v9 = objc_alloc_init(MEMORY[0x1E69794A0]);
      outerContentAlignmentDebugLayer = self->_outerContentAlignmentDebugLayer;
      self->_outerContentAlignmentDebugLayer = v9;

      [(CAShapeLayer *)self->_outerContentAlignmentDebugLayer setFillColor:0];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      -[CAShapeLayer setStrokeColor:](self->_outerContentAlignmentDebugLayer, "setStrokeColor:", [systemBlueColor CGColor]);

      [(CAShapeLayer *)self->_outerContentAlignmentDebugLayer setLineDashPattern:&unk_1F04E6870];
      layer2 = [(CKPinnedConversationActivityView *)self layer];
      [layer2 addSublayer:self->_outerContentAlignmentDebugLayer];

      v13 = objc_alloc_init(MEMORY[0x1E69794A0]);
      activityItemAttachmentCircleDebugLayer = self->_activityItemAttachmentCircleDebugLayer;
      self->_activityItemAttachmentCircleDebugLayer = v13;

      [(CAShapeLayer *)self->_activityItemAttachmentCircleDebugLayer setFillColor:0];
      systemOrangeColor = [MEMORY[0x1E69DC888] systemOrangeColor];
      -[CAShapeLayer setStrokeColor:](self->_activityItemAttachmentCircleDebugLayer, "setStrokeColor:", [systemOrangeColor CGColor]);

      [(CAShapeLayer *)self->_activityItemAttachmentCircleDebugLayer setLineDashPattern:&unk_1F04E6888];
      layer3 = [(CKPinnedConversationActivityView *)self layer];
      [layer3 addSublayer:self->_activityItemAttachmentCircleDebugLayer];

      v17 = objc_alloc_init(MEMORY[0x1E69794A0]);
      originationPointDebugLayer = self->_originationPointDebugLayer;
      self->_originationPointDebugLayer = v17;

      redColor = [MEMORY[0x1E69DC888] redColor];
      -[CAShapeLayer setFillColor:](self->_originationPointDebugLayer, "setFillColor:", [redColor CGColor]);

      layer4 = [(CKPinnedConversationActivityView *)self layer];
      [layer4 addSublayer:self->_originationPointDebugLayer];
    }

    else
    {
      [(CAShapeLayer *)self->_innerContentAlignmentDebugLayer removeFromSuperlayer];
      v21 = self->_innerContentAlignmentDebugLayer;
      self->_innerContentAlignmentDebugLayer = 0;

      [(CAShapeLayer *)self->_outerContentAlignmentDebugLayer removeFromSuperlayer];
      v22 = self->_outerContentAlignmentDebugLayer;
      self->_outerContentAlignmentDebugLayer = 0;

      [(CAShapeLayer *)self->_activityItemAttachmentCircleDebugLayer removeFromSuperlayer];
      v23 = self->_activityItemAttachmentCircleDebugLayer;
      self->_activityItemAttachmentCircleDebugLayer = 0;

      [(CAShapeLayer *)self->_originationPointDebugLayer removeFromSuperlayer];
      layer4 = self->_originationPointDebugLayer;
      self->_originationPointDebugLayer = 0;
    }

    [(CKPinnedConversationActivityView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CKPinnedConversationActivityView;
  [(CKPinnedConversationActivityView *)&v9 layoutSubviews];
  [(CKPinnedConversationActivityView *)self _layoutViewsAssociatedWithActivityItemViews:self->_activityItemViews excludingContactItemViews:MEMORY[0x1E695E0F0] withContentScale:0 applyingTransform:0 updatingActivityItemViews:1 updatingAttachedContactItemViews:1];
  _unattachedContactItemViews = [(CKPinnedConversationActivityView *)self _unattachedContactItemViews];
  [(CKPinnedConversationActivityView *)self _layoutUnattachedContactItemViews:_unattachedContactItemViews withContentScale:0 applyingTransform:0];
  if (self->_showContentAlignmentDebugFrames)
  {
    [(CKPinnedConversationActivityView *)self bounds];
    [(CAShapeLayer *)self->_innerContentAlignmentDebugLayer setFrame:?];
    v4 = [MEMORY[0x1E69DC728] bezierPathWithRect:{self->_innerContentAlignmentFrame.origin.x, self->_innerContentAlignmentFrame.origin.y, self->_innerContentAlignmentFrame.size.width, self->_innerContentAlignmentFrame.size.height}];
    -[CAShapeLayer setPath:](self->_innerContentAlignmentDebugLayer, "setPath:", [v4 CGPath]);

    [(CKPinnedConversationActivityView *)self bounds];
    [(CAShapeLayer *)self->_outerContentAlignmentDebugLayer setFrame:?];
    v5 = [MEMORY[0x1E69DC728] bezierPathWithRect:{self->_outerContentAlignmentFrame.origin.x, self->_outerContentAlignmentFrame.origin.y, self->_outerContentAlignmentFrame.size.width, self->_outerContentAlignmentFrame.size.height}];
    -[CAShapeLayer setPath:](self->_outerContentAlignmentDebugLayer, "setPath:", [v5 CGPath]);

    [(CKPinnedConversationActivityView *)self bounds];
    [(CAShapeLayer *)self->_activityItemAttachmentCircleDebugLayer setFrame:?];
    [(CKPinnedConversationActivityView *)self activityItemAttachmentCircleRadiusInsetForAvatarFrame:self->_avatarFrame.origin.x, self->_avatarFrame.origin.y, self->_avatarFrame.size.width, self->_avatarFrame.size.height];
    v10 = CGRectInset(self->_avatarFrame, v6, v6);
    v7 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v10.origin.x, v10.origin.y, v10.size.width, v10.size.height}];
    -[CAShapeLayer setPath:](self->_activityItemAttachmentCircleDebugLayer, "setPath:", [v7 CGPath]);

    v8 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{self->_activityItemOriginationPoint.x + -3.0, self->_activityItemOriginationPoint.y + -3.0, 6.0, 6.0}];
    -[CAShapeLayer setPath:](self->_originationPointDebugLayer, "setPath:", [v8 CGPath]);
  }
}

- (id)_unattachedContactItemViews
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = self->_activityItemViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        activityItem = [*(*(&v26 + 1) + 8 * i) activityItem];
        attachedContactItemIdentifier = [activityItem attachedContactItemIdentifier];

        if ([attachedContactItemIdentifier length])
        {
          [v3 addObject:attachedContactItemIdentifier];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = self->_contactItemViews;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * j);
        pinnedConversationContactItem = [v17 pinnedConversationContactItem];
        contactItemIdentifier = [pinnedConversationContactItem contactItemIdentifier];

        if ([contactItemIdentifier length] && (objc_msgSend(v3, "containsObject:", contactItemIdentifier) & 1) == 0)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v20 = [v11 copy];

  return v20;
}

- (id)_presentedActivityItems
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_activityItemViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        activityItem = [*(*(&v12 + 1) + 8 * i) activityItem];
        if (activityItem)
        {
          [v3 addObject:activityItem];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)_activityItemViewWithActivityItemIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_activityItemViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        activityItem = [v9 activityItem];
        activityItemIdentifier = [activityItem activityItemIdentifier];
        if ([activityItemIdentifier isEqualToString:identifierCopy])
        {
          v6 = v9;

          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)setActivityItemOriginationDirection:(int64_t)direction
{
  if (self->_activityItemOriginationDirection != direction)
  {
    self->_activityItemOriginationDirection = direction;
    [(CKPinnedConversationActivityView *)self setNeedsLayout];
  }
}

- (void)setInnerContentAlignmentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_innerContentAlignmentFrame = &self->_innerContentAlignmentFrame;
  if (!CGRectEqualToRect(frame, self->_innerContentAlignmentFrame))
  {
    p_innerContentAlignmentFrame->origin.x = x;
    p_innerContentAlignmentFrame->origin.y = y;
    p_innerContentAlignmentFrame->size.width = width;
    p_innerContentAlignmentFrame->size.height = height;

    [(CKPinnedConversationActivityView *)self setNeedsLayout];
  }
}

- (void)setOuterContentAlignmentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_outerContentAlignmentFrame = &self->_outerContentAlignmentFrame;
  if (!CGRectEqualToRect(frame, self->_outerContentAlignmentFrame))
  {
    p_outerContentAlignmentFrame->origin.x = x;
    p_outerContentAlignmentFrame->origin.y = y;
    p_outerContentAlignmentFrame->size.width = width;
    p_outerContentAlignmentFrame->size.height = height;

    [(CKPinnedConversationActivityView *)self setNeedsLayout];
  }
}

- (void)setActivityItemOriginationPoint:(CGPoint)point
{
  if (self->_activityItemOriginationPoint.x != point.x || self->_activityItemOriginationPoint.y != point.y)
  {
    self->_activityItemOriginationPoint = point;
    [(CKPinnedConversationActivityView *)self setNeedsLayout];
  }
}

- (id)contactItemViewMatchingContactItemIdentifier:(id)identifier fromContactItemViews:(id)views
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  viewsCopy = views;
  v7 = [viewsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        pinnedConversationContactItem = [v10 pinnedConversationContactItem];
        contactItemIdentifier = [pinnedConversationContactItem contactItemIdentifier];

        if ([contactItemIdentifier isEqualToString:identifierCopy])
        {
          v7 = v10;

          goto LABEL_11;
        }
      }

      v7 = [viewsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)applySnapshot:(id)snapshot animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  objc_storeStrong(&self->_latestSnapshot, snapshot);
  completionCopy = completion;
  [(CKPinnedConversationActivityView *)self _updateSnapshotAnimated:animatedCopy completion:completionCopy];
}

- (void)_updateSnapshotAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v260 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([(CKPinnedConversationActivityView *)self isSuppressingActivity])
  {
    v5 = +[CKPinnedConversationActivitySnapshot emptySnapshot];
  }

  else
  {
    v5 = self->_latestSnapshot;
  }

  v6 = v5;
  _presentedActivityItems = [(CKPinnedConversationActivityView *)self _presentedActivityItems];
  v137 = v6;
  activityItems = [(CKPinnedConversationActivitySnapshot *)v6 activityItems];
  v151 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v150 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v149 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v148 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v242 = 0u;
  v243 = 0u;
  v244 = 0u;
  v245 = 0u;
  v10 = activityItems;
  v11 = [v10 countByEnumeratingWithState:&v242 objects:v259 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v243;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v243 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v242 + 1) + 8 * i);
        activityItemIdentifier = [v15 activityItemIdentifier];
        v17 = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke(activityItemIdentifier, _presentedActivityItems, activityItemIdentifier);
        v18 = v9;
        if (!v17)
        {
          if ([v15 activityItemAppearsWithAnimation])
          {
            v18 = v151;
          }

          else
          {
            v18 = v150;
          }
        }

        [v18 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v242 objects:v259 count:16];
    }

    while (v12);
  }

  v240 = 0u;
  v241 = 0u;
  v238 = 0u;
  v239 = 0u;
  v19 = _presentedActivityItems;
  v20 = [v19 countByEnumeratingWithState:&v238 objects:v258 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v239;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v239 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v238 + 1) + 8 * j);
        activityItemIdentifier2 = [v24 activityItemIdentifier];
        if (!__71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke(activityItemIdentifier2, v9, activityItemIdentifier2))
        {
          if ([v24 activityItemDisappearsWithAnimation])
          {
            v26 = v149;
          }

          else
          {
            v26 = v148;
          }

          [v26 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v238 objects:v258 count:16];
    }

    while (v21);
  }

  v134 = v9;

  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v234 = 0u;
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  v28 = v19;
  v29 = [v28 countByEnumeratingWithState:&v234 objects:v257 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v235;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v235 != v31)
        {
          objc_enumerationMutation(v28);
        }

        attachedContactItemIdentifier = [*(*(&v234 + 1) + 8 * k) attachedContactItemIdentifier];
        if ([attachedContactItemIdentifier length])
        {
          [v27 addObject:attachedContactItemIdentifier];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v234 objects:v257 count:16];
    }

    while (v30);
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  obj = v10;
  v35 = [obj countByEnumeratingWithState:&v230 objects:v256 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v231;
    do
    {
      for (m = 0; m != v36; ++m)
      {
        if (*v231 != v37)
        {
          objc_enumerationMutation(obj);
        }

        attachedContactItemIdentifier2 = [*(*(&v230 + 1) + 8 * m) attachedContactItemIdentifier];
        if ([attachedContactItemIdentifier2 length])
        {
          [v34 addObject:attachedContactItemIdentifier2];
        }
      }

      v36 = [obj countByEnumeratingWithState:&v230 objects:v256 count:16];
    }

    while (v36);
  }

  v135 = v28;

  v139 = objc_alloc_init(MEMORY[0x1E695DF70]);
  group = objc_alloc_init(MEMORY[0x1E695DF70]);
  v147 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v140 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v142 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v146 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v138 = objc_alloc_init(MEMORY[0x1E695DF70]);
  contactItemViews = [(CKPinnedConversationActivityView *)self contactItemViews];
  v162 = [contactItemViews copy];

  [(CKPinnedConversationActivitySnapshot *)v137 contactItems];
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v158 = v229 = 0u;
  v41 = [v158 countByEnumeratingWithState:&v226 objects:v255 count:16];
  v144 = v34;
  v145 = v27;
  if (v41)
  {
    v42 = v41;
    v160 = *v227;
    do
    {
      v43 = 0;
      do
      {
        if (*v227 != v160)
        {
          objc_enumerationMutation(v158);
        }

        v44 = *(*(&v226 + 1) + 8 * v43);
        contactItemIdentifier = [v44 contactItemIdentifier];
        v46 = [v34 containsObject:contactItemIdentifier];
        v47 = [(CKPinnedConversationActivityView *)self contactItemViewMatchingContactItemIdentifier:contactItemIdentifier fromContactItemViews:v162];
        v48 = v47;
        if (v46)
        {
          if (!v47)
          {
            goto LABEL_55;
          }

          v49 = [v27 containsObject:contactItemIdentifier];
          pinnedConversationContactItem = [v48 pinnedConversationContactItem];
          contactItemAlignment = [pinnedConversationContactItem contactItemAlignment];
          contactItemAlignment2 = [v44 contactItemAlignment];

          if ((v49 & 1) == 0 && contactItemAlignment != contactItemAlignment2)
          {
            [v139 addObject:v48];
            v34 = v144;
            v27 = v145;
LABEL_55:
            contactItemView = [v44 contactItemView];
            [group addObject:contactItemView];
            v54 = v147;
LABEL_62:
            [v54 addObject:contactItemView];

            goto LABEL_63;
          }

          [v147 addObject:v48];
          [v138 addObject:v48];
          v34 = v144;
          v27 = v145;
        }

        else
        {
          if (!v47 || ([v47 pinnedConversationContactItem], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "contactItemAlignment"), v55, v56 != objc_msgSend(v44, "contactItemAlignment")))
          {
            contactItemView = [v44 contactItemView];
            [group addObject:contactItemView];
            v54 = v146;
            if (animatedCopy)
            {
              [v142 addObject:contactItemView];
              v54 = v140;
            }

            goto LABEL_62;
          }

          if (animatedCopy)
          {
            v57 = v142;
          }

          else
          {
            v57 = v146;
          }

          [v57 addObject:v48];
        }

LABEL_63:

        ++v43;
      }

      while (v42 != v43);
      v58 = [v158 countByEnumeratingWithState:&v226 objects:v255 count:16];
      v42 = v58;
    }

    while (v58);
  }

  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v59 addObjectsFromArray:v147];
  [v59 addObjectsFromArray:v142];
  [v59 addObjectsFromArray:v146];
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  v60 = v162;
  v61 = [v60 countByEnumeratingWithState:&v222 objects:v254 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v223;
    do
    {
      for (n = 0; n != v62; ++n)
      {
        if (*v223 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v222 + 1) + 8 * n);
        if (([v139 containsObjectIdenticalTo:v65] & 1) == 0 && (objc_msgSend(v59, "containsObjectIdenticalTo:", v65) & 1) == 0)
        {
          [v139 addObject:v65];
        }
      }

      v62 = [v60 countByEnumeratingWithState:&v222 objects:v254 count:16];
    }

    while (v62);
  }

  v133 = v60;

  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v154 = v158;
  v66 = [v154 countByEnumeratingWithState:&v218 objects:v253 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v219;
    do
    {
      for (ii = 0; ii != v67; ++ii)
      {
        if (*v219 != v68)
        {
          objc_enumerationMutation(v154);
        }

        v70 = *(*(&v218 + 1) + 8 * ii);
        contactItemIdentifier2 = [v70 contactItemIdentifier];
        v72 = [(CKPinnedConversationActivityView *)self contactItemViewMatchingContactItemIdentifier:contactItemIdentifier2 fromContactItemViews:v59];
        [v72 setPinnedConversationContactItem:v70];
      }

      v67 = [v154 countByEnumeratingWithState:&v218 objects:v253 count:16];
    }

    while (v67);
  }

  v159 = v59;

  v161 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v143 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v163 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v141 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v73 addObjectsFromArray:v148];
  [v73 addObjectsFromArray:v149];
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v153 = v73;
  v74 = [v153 countByEnumeratingWithState:&v214 objects:v252 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v215;
    do
    {
      for (jj = 0; jj != v75; ++jj)
      {
        if (*v215 != v76)
        {
          objc_enumerationMutation(v153);
        }

        v78 = *(*(&v214 + 1) + 8 * jj);
        activityItemIdentifier3 = [v78 activityItemIdentifier];
        v80 = [(CKPinnedConversationActivityView *)self _activityItemViewWithActivityItemIdentifier:activityItemIdentifier3];
        if (animatedCopy && [v78 activityItemDisappearsWithAnimation])
        {
          [v141 addObject:v80];
        }

        else
        {
          [v80 removeFromSuperview];
          [(NSMutableArray *)self->_activityItemViews removeObject:v80];
        }
      }

      v75 = [v153 countByEnumeratingWithState:&v214 objects:v252 count:16];
    }

    while (v75);
  }

  v81 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v81 addObjectsFromArray:v150];
  [v81 addObjectsFromArray:v151];
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v152 = v81;
  v82 = [v152 countByEnumeratingWithState:&v210 objects:v251 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v211;
    do
    {
      for (kk = 0; kk != v83; ++kk)
      {
        if (*v211 != v84)
        {
          objc_enumerationMutation(v152);
        }

        v86 = *(*(&v210 + 1) + 8 * kk);
        activityItemView = [v86 activityItemView];
        [activityItemView setActivityItemViewDelegate:self];
        [(NSMutableArray *)self->_activityItemViews addObject:activityItemView];
        [(CKPinnedConversationActivityView *)self addSubview:activityItemView];
        v88 = v163;
        if (animatedCopy)
        {
          activityItemAppearsWithAnimation = [v86 activityItemAppearsWithAnimation];
          v88 = v163;
          if (activityItemAppearsWithAnimation)
          {
            [v143 addObject:activityItemView];
            v88 = v161;
          }
        }

        [v88 addObject:activityItemView];
      }

      v83 = [v152 countByEnumeratingWithState:&v210 objects:v251 count:16];
    }

    while (v83);
  }

  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v90 = group;
  v91 = [v90 countByEnumeratingWithState:&v206 objects:v250 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v207;
    do
    {
      for (mm = 0; mm != v92; ++mm)
      {
        if (*v207 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v95 = *(*(&v206 + 1) + 8 * mm);
        [(CKPinnedConversationActivityView *)self addSubview:v95];
        [(NSMutableArray *)self->_contactItemViews addObject:v95];
      }

      v92 = [v90 countByEnumeratingWithState:&v206 objects:v250 count:16];
    }

    while (v92);
  }

  v96 = dispatch_group_create();
  if ([v141 count])
  {
    dispatch_group_enter(v96);
    [(NSMutableArray *)self->_activityItemViews removeObjectsInArray:v141];
    v97 = MEMORY[0x1E69DD250];
    v204[0] = MEMORY[0x1E69E9820];
    v204[1] = 3221225472;
    v204[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_3;
    v204[3] = &unk_1E72EB8D0;
    v204[4] = self;
    v205 = v141;
    v201[0] = MEMORY[0x1E69E9820];
    v201[1] = 3221225472;
    v201[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_52;
    v201[3] = &unk_1E72ECCA8;
    v202 = v205;
    v203 = v96;
    [v97 animateWithDuration:4 delay:v204 usingSpringWithDamping:v201 initialSpringVelocity:0.8 options:0.0 animations:0.75 completion:0.0];
  }

  if ([v139 count])
  {
    dispatch_group_enter(v96);
    [(NSMutableArray *)self->_contactItemViews removeObjectsInArray:v139];
    v98 = MEMORY[0x1E69DD250];
    v199[0] = MEMORY[0x1E69E9820];
    v199[1] = 3221225472;
    v199[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_2_54;
    v199[3] = &unk_1E72EB8D0;
    v199[4] = self;
    v200 = v139;
    v196[0] = MEMORY[0x1E69E9820];
    v196[1] = 3221225472;
    v196[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_3_55;
    v196[3] = &unk_1E72ECCA8;
    v197 = v200;
    v198 = v96;
    [v98 animateWithDuration:4 delay:v199 usingSpringWithDamping:v196 initialSpringVelocity:0.8 options:0.0 animations:0.75 completion:0.0];
  }

  contactItems = [(CKPinnedConversationActivitySnapshot *)v137 contactItems];
  v100 = [contactItems count];
  v101 = [(NSMutableArray *)self->_contactItemViews count];

  if (v100 != v101)
  {
    v102 = IMLogHandleForCategory();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      [(CKPinnedConversationActivityView *)v137 _updateSnapshotAnimated:v102 completion:?];
    }
  }

  groupa = v96;
  v131 = v90;
  v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  contactItems2 = [(CKPinnedConversationActivitySnapshot *)v137 contactItems];
  v105 = [contactItems2 countByEnumeratingWithState:&v192 objects:v249 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v193;
    do
    {
      for (nn = 0; nn != v106; ++nn)
      {
        if (*v193 != v107)
        {
          objc_enumerationMutation(contactItems2);
        }

        contactItemIdentifier3 = [*(*(&v192 + 1) + 8 * nn) contactItemIdentifier];
        v110 = [(CKPinnedConversationActivityView *)self contactItemViewMatchingContactItemIdentifier:contactItemIdentifier3 fromContactItemViews:v159];
        if (v110)
        {
          [v103 addObject:v110];
        }

        else
        {
          v111 = IMLogHandleForCategory();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v248 = contactItemIdentifier3;
            _os_log_error_impl(&dword_19020E000, v111, OS_LOG_TYPE_ERROR, "Inconsistent state applying snapshot. Could not find contactItemView matching identifier: %@", buf, 0xCu);
          }
        }

        objc_storeStrong(&self->_contactItemViews, v103);
      }

      v106 = [contactItems2 countByEnumeratingWithState:&v192 objects:v249 count:16];
    }

    while (v106);
  }

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v112 = v134;
  v113 = [v112 countByEnumeratingWithState:&v188 objects:v246 count:16];
  if (v113)
  {
    v114 = v113;
    v115 = *v189;
    do
    {
      for (i1 = 0; i1 != v114; ++i1)
      {
        if (*v189 != v115)
        {
          objc_enumerationMutation(v112);
        }

        v117 = *(*(&v188 + 1) + 8 * i1);
        activityItemIdentifier4 = [v117 activityItemIdentifier];
        v119 = [(CKPinnedConversationActivityView *)self _activityItemViewWithActivityItemIdentifier:activityItemIdentifier4];
        [v119 setActivityItem:v117];
        [v161 addObject:v119];
      }

      v114 = [v112 countByEnumeratingWithState:&v188 objects:v246 count:16];
    }

    while (v114);
  }

  if ([v163 count])
  {
    v120 = MEMORY[0x1E69DD250];
    v186[0] = MEMORY[0x1E69E9820];
    v186[1] = 3221225472;
    v186[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_57;
    v186[3] = &unk_1E72EB8D0;
    v186[4] = self;
    v187 = v163;
    [v120 performWithoutAnimation:v186];
  }

  v121 = &off_190DCE000;
  if ([v143 count])
  {
    v122 = MEMORY[0x1E69DD250];
    v183[0] = MEMORY[0x1E69E9820];
    v183[1] = 3221225472;
    v183[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_2_58;
    v183[3] = &unk_1E72EB880;
    v183[4] = self;
    v184 = v143;
    v185 = v138;
    [v122 performWithoutAnimation:v183];
  }

  if ([v140 count])
  {
    v123 = MEMORY[0x1E69DD250];
    v181[0] = MEMORY[0x1E69E9820];
    v181[1] = 3221225472;
    v181[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_61;
    v181[3] = &unk_1E72EB8D0;
    v181[4] = self;
    v182 = v140;
    [v123 performWithoutAnimation:v181];
  }

  if ([v161 count])
  {
    v124 = 0.0;
    if ([(CKPinnedConversationActivityView *)self haveAttachedContactItemViewsForActivityViews:v161])
    {
      dispatch_group_enter(groupa);
      v125 = MEMORY[0x1E69DD250];
      v179[0] = MEMORY[0x1E69E9820];
      v179[1] = 3221225472;
      v179[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_64;
      v179[3] = &unk_1E72EB8D0;
      v179[4] = self;
      v180 = v161;
      v177[0] = MEMORY[0x1E69E9820];
      v177[1] = 3221225472;
      v177[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_2_65;
      v177[3] = &unk_1E72EB9C8;
      v178 = groupa;
      v124 = 0.0;
      [v125 animateWithDuration:4 delay:v179 usingSpringWithDamping:v177 initialSpringVelocity:0.8 options:0.0 animations:0.75 completion:0.0];

      if ([v143 count])
      {
        v124 = 0.25;
      }
    }

    dispatch_group_enter(groupa);
    v126 = MEMORY[0x1E69DD250];
    v175[0] = MEMORY[0x1E69E9820];
    v175[1] = 3221225472;
    v175[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_3_66;
    v175[3] = &unk_1E72EB8D0;
    v175[4] = self;
    v176 = v161;
    v173[0] = MEMORY[0x1E69E9820];
    v173[1] = 3221225472;
    v173[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_4;
    v173[3] = &unk_1E72EB9C8;
    v174 = groupa;
    v121 = &off_190DCE000;
    [v126 animateWithDuration:4 delay:v175 usingSpringWithDamping:v173 initialSpringVelocity:0.8 options:v124 animations:0.75 completion:0.0];
  }

  if ([v142 count])
  {
    dispatch_group_enter(groupa);
    v127 = MEMORY[0x1E69DD250];
    v171[0] = MEMORY[0x1E69E9820];
    v171[1] = 3221225472;
    v171[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_5;
    v171[3] = &unk_1E72EB8D0;
    v171[4] = self;
    v172 = v142;
    v169[0] = MEMORY[0x1E69E9820];
    v169[1] = 3221225472;
    v169[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_6;
    v169[3] = &unk_1E72EB9C8;
    v170 = groupa;
    [v127 animateWithDuration:4 delay:v171 usingSpringWithDamping:v169 initialSpringVelocity:*(v121 + 196) options:0.0 animations:0.75 completion:0.0];
  }

  if ([v146 count])
  {
    v128 = MEMORY[0x1E69DD250];
    v167[0] = MEMORY[0x1E69E9820];
    v167[1] = 3221225472;
    v167[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_7;
    v167[3] = &unk_1E72EB8D0;
    v167[4] = self;
    v168 = v146;
    [v128 performWithoutAnimation:v167];
  }

  if (completionCopy)
  {
    v129 = MEMORY[0x1E69E96A0];
    v130 = MEMORY[0x1E69E96A0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_8;
    block[3] = &unk_1E72EBDB8;
    v166 = completionCopy;
    dispatch_group_notify(groupa, v129, block);
  }
}

BOOL __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_2;
  v8[3] = &unk_1E72EEBD0;
  v9 = v4;
  v5 = v4;
  v6 = [a2 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

uint64_t __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 activityItemIdentifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_52(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __71__CKPinnedConversationActivityView__updateSnapshotAnimated_completion___block_invoke_3_55(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_layoutViewsAssociatedWithActivityItemViews:(id)views excludingContactItemViews:(id)itemViews withContentScale:(id)scale applyingTransform:(BOOL)transform updatingActivityItemViews:(BOOL)activityItemViews updatingAttachedContactItemViews:(BOOL)contactItemViews
{
  transformCopy = transform;
  contactItemViewsCopy = contactItemViews;
  activityItemViewsCopy = activityItemViews;
  v132 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  itemViewsCopy = itemViews;
  scaleCopy = scale;
  [(CKPinnedConversationActivityView *)self avatarFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(CKPinnedConversationActivityView *)self activityItemOriginationSubAvatarFrame];
  v100 = v21;
  v101 = v20;
  v98 = v23;
  v99 = v22;
  v110 = v15;
  v111 = v13;
  v122 = v19;
  v123 = v17;
  [(CKPinnedConversationActivityView *)self contactItemViewDiameterForAvatarFrame:v13, v15, v17, v19];
  v95 = v24;
  activityItemOriginationDirection = [(CKPinnedConversationActivityView *)self activityItemOriginationDirection];
  [(CKPinnedConversationActivityView *)self activityItemOriginationPoint];
  v104 = v26;
  v105 = v25;
  p_outerContentAlignmentFrame = &self->_outerContentAlignmentFrame;
  width = self->_outerContentAlignmentFrame.size.width;
  height = self->_outerContentAlignmentFrame.size.height;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  obj = viewsCopy;
  v116 = [obj countByEnumeratingWithState:&v127 objects:v131 count:16];
  if (v116)
  {
    v112 = *v128;
    v96 = *(MEMORY[0x1E695EFF8] + 8);
    v97 = *MEMORY[0x1E695EFF8];
    v109 = v95 * 0.5;
    do
    {
      for (i = 0; i != v116; ++i)
      {
        if (*v128 != v112)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v127 + 1) + 8 * i);
        activityItem = [v29 activityItem];
        [v29 setParentAvatarViewSize:{v123, v122}];
        attachedContactItemIdentifier = [activityItem attachedContactItemIdentifier];
        if ([attachedContactItemIdentifier length])
        {
          v32 = [(CKPinnedConversationActivityView *)self contactItemViewMatchingContactItemIdentifier:attachedContactItemIdentifier fromContactItemViews:self->_contactItemViews];
          pinnedConversationContactItem = [v32 pinnedConversationContactItem];
          contactItemAlignment = [pinnedConversationContactItem contactItemAlignment];

          v35 = [(CKPinnedConversationActivityView *)self activityViewContentAlignmentForContactItemAlignment:contactItemAlignment];
        }

        else
        {
          v32 = 0;
          v35 = 1;
        }

        if (contactItemViewsCopy)
        {
          v36 = [itemViewsCopy containsObjectIdenticalTo:v32] ^ 1;
        }

        else
        {
          v36 = 0;
        }

        if (scaleCopy)
        {
          [scaleCopy doubleValue];
        }

        else
        {
          [activityItem activityItemContentScale];
        }

        v38 = v37;
        if (transformCopy)
        {
          memset(&v126, 0, sizeof(v126));
          CGAffineTransformMakeScale(&v126, v37, v37);
          if (activityItemViewsCopy)
          {
            v125 = v126;
            [v29 setTransform:&v125];
          }

          if (v36)
          {
            v125 = v126;
            [v32 setTransform:&v125];
          }
        }

        if ([v29 supportsActivityItemViewContentScale])
        {
          [v29 setActivityItemViewContentScale:1];
          [v29 sizeThatFits:{1.79769313e308, 1.79769313e308}];
          v41 = v40;
          if (v40 < width)
          {
            goto LABEL_24;
          }

          [v29 setActivityItemViewContentScale:0];
        }

        [v29 sizeThatFits:{width, height}];
        v41 = v42;
LABEL_24:
        v43 = v39;
        if (activityItemViewsCopy)
        {
          [v29 setBounds:{0.0, 0.0, v41, v39}];
          [v29 setOriginationDirection:activityItemOriginationDirection];
        }

        x = p_outerContentAlignmentFrame->origin.x;
        y = self->_outerContentAlignmentFrame.origin.y;
        v46 = self->_outerContentAlignmentFrame.size.width;
        v47 = self->_outerContentAlignmentFrame.size.height;
        v120 = v38;
        if (activityItemOriginationDirection)
        {
          CGRectGetMaxY(*&x);
          UIRoundToViewScale();
          v49 = v48;
          v133.origin.x = p_outerContentAlignmentFrame->origin.x;
          v133.origin.y = self->_outerContentAlignmentFrame.origin.y;
          v133.size.width = self->_outerContentAlignmentFrame.size.width;
          v133.size.height = self->_outerContentAlignmentFrame.size.height;
          CGRectGetMaxY(v133);
          UIRoundToViewScale();
          v51 = v50;
          if (!v32)
          {
            goto LABEL_35;
          }

          [v29 activityItemToContactItemVerticalOverlap];
          v53 = v49 + v52;
          [activityItem activityItemContentScale];
          v55 = -(v95 * 0.5);
        }

        else
        {
          CGRectGetMinY(*&x);
          UIRoundToViewScale();
          v49 = v56;
          v134.origin.x = p_outerContentAlignmentFrame->origin.x;
          v134.origin.y = self->_outerContentAlignmentFrame.origin.y;
          v134.size.width = self->_outerContentAlignmentFrame.size.width;
          v134.size.height = self->_outerContentAlignmentFrame.size.height;
          CGRectGetMinY(v134);
          UIRoundToViewScale();
          v51 = v57;
          if (!v32)
          {
LABEL_35:
            v135.size.width = v100;
            v135.origin.x = v101;
            v135.size.height = v98;
            v135.origin.y = v99;
            if (CGRectIsEmpty(v135) || ([v29 supportsAlignmentWithOriginationSubAvatarFrame] & 1) == 0)
            {
              [(CKPinnedConversationActivityView *)self tailAttachmentXCoordinateForYCoordinate:v35 avatarFrame:v49 contentAlignment:v111, v110, v123, v122];
              v64 = v65;
              v118 = v35 != 1;
            }

            else
            {
              v118 = 0;
              v64 = v101 + v100 * 0.684210526;
            }

            v63 = v49 + (v51 - v49) * v38;
            v119 = 1;
            v59 = v96;
            v61 = v97;
            if (v35 == 1)
            {
              goto LABEL_41;
            }

            goto LABEL_42;
          }

          [v29 activityItemToContactItemVerticalOverlap];
          v53 = v49 - v58;
          [activityItem activityItemContentScale];
          v55 = v95 * 0.5;
        }

        v59 = v53 + v55 * v54;
        [(CKPinnedConversationActivityView *)self contactItemViewCenterXCoordinateForYCoordinate:v35 avatarFrame:v59 contentAlignment:v111, v110, v123, v122];
        v61 = v60;
        if (v36)
        {
          [v32 setCenter:{v60, v59}];
          [v32 setBounds:{0.0, 0.0, v95, v95}];
          layer = [v32 layer];
          [layer setZPosition:1.0];
        }

        v63 = v49 + (v51 - v49) * v38;
        if (v35 == 1)
        {
          v119 = 0;
          v64 = v61 - v109;
          v118 = 1;
LABEL_41:
          p_innerContentAlignmentFrame = &self->_innerContentAlignmentFrame;
          v67 = CGRectGetMaxX(self->_innerContentAlignmentFrame) - v64;
          v68 = 1;
          goto LABEL_43;
        }

        v119 = 0;
        v118 = 0;
        v64 = v109 + v61;
LABEL_42:
        p_innerContentAlignmentFrame = &self->_innerContentAlignmentFrame;
        v68 = 0;
        v67 = v64 - CGRectGetMinX(self->_innerContentAlignmentFrame);
LABEL_43:
        MaxX = CGRectGetMaxX(*p_innerContentAlignmentFrame);
        MinX = CGRectGetMinX(*p_innerContentAlignmentFrame);
        if (v41 <= v67 + v67)
        {
          v84 = v64;
          goto LABEL_57;
        }

        v71 = MaxX - MinX;
        v72 = &self->_innerContentAlignmentFrame;
        v73 = self->_innerContentAlignmentFrame.origin.x;
        v74 = self->_innerContentAlignmentFrame.origin.y;
        v75 = self->_innerContentAlignmentFrame.size.width;
        v76 = self->_innerContentAlignmentFrame.size.height;
        if (v41 > v71)
        {
          v102 = v63;
          v103 = v59;
          MidX = CGRectGetMidX(*&v73);
          v136.origin.x = 0.0;
          v136.origin.y = 0.0;
          v136.size.width = v41;
          v136.size.height = v43;
          v78 = MidX + CGRectGetWidth(v136) * -0.5;
          v137.origin.x = v72->origin.x;
          v137.origin.y = self->_innerContentAlignmentFrame.origin.y;
          v137.size.width = self->_innerContentAlignmentFrame.size.width;
          v137.size.height = self->_innerContentAlignmentFrame.size.height;
          v79 = CGRectGetMidX(v137);
          v138.origin.x = 0.0;
          v138.origin.y = 0.0;
          v138.size.width = v41;
          v138.size.height = v43;
          v80 = CGRectGetWidth(v138);
          v139.origin.x = p_outerContentAlignmentFrame->origin.x;
          v139.origin.y = self->_outerContentAlignmentFrame.origin.y;
          v139.size.width = self->_outerContentAlignmentFrame.size.width;
          v139.size.height = self->_outerContentAlignmentFrame.size.height;
          if (v78 < CGRectGetMinX(v139))
          {
            v140.origin.x = p_outerContentAlignmentFrame->origin.x;
            v140.origin.y = self->_outerContentAlignmentFrame.origin.y;
            v140.size.width = self->_outerContentAlignmentFrame.size.width;
            v140.size.height = self->_outerContentAlignmentFrame.size.height;
            v81 = CGRectGetMinX(v140);
            v141.origin.x = 0.0;
            v141.origin.y = 0.0;
            v141.size.width = v41;
            v141.size.height = v43;
            v82 = CGRectGetWidth(v141);
            v83 = 0.5;
            goto LABEL_52;
          }

          v143.origin.x = p_outerContentAlignmentFrame->origin.x;
          v143.origin.y = self->_outerContentAlignmentFrame.origin.y;
          v143.size.width = self->_outerContentAlignmentFrame.size.width;
          v143.size.height = self->_outerContentAlignmentFrame.size.height;
          if (v79 + v80 * 0.5 <= CGRectGetMaxX(v143))
          {
            v147.origin.x = v72->origin.x;
            v147.origin.y = self->_innerContentAlignmentFrame.origin.y;
            v147.size.width = self->_innerContentAlignmentFrame.size.width;
            v147.size.height = self->_innerContentAlignmentFrame.size.height;
            v84 = CGRectGetMidX(v147);
          }

          else
          {
            v144.origin.x = p_outerContentAlignmentFrame->origin.x;
            v144.origin.y = self->_outerContentAlignmentFrame.origin.y;
            v144.size.width = self->_outerContentAlignmentFrame.size.width;
            v144.size.height = self->_outerContentAlignmentFrame.size.height;
            v81 = CGRectGetMaxX(v144);
            v145.origin.x = 0.0;
            v145.origin.y = 0.0;
            v145.size.width = v41;
            v145.size.height = v43;
            v82 = CGRectGetWidth(v145);
            v83 = -0.5;
LABEL_52:
            v84 = v81 + v82 * v83;
          }

          v63 = v102;
          v59 = v103;
          goto LABEL_57;
        }

        if (v68)
        {
          v85 = CGRectGetMaxX(*&v73);
          v142.origin.x = 0.0;
          v142.origin.y = 0.0;
          v142.size.width = v41;
          v142.size.height = v43;
          v86 = CGRectGetWidth(v142);
          v87 = -0.5;
        }

        else
        {
          v85 = CGRectGetMinX(*&v73);
          v146.origin.x = 0.0;
          v146.origin.y = 0.0;
          v146.size.width = v41;
          v146.size.height = v43;
          v86 = CGRectGetWidth(v146);
          v87 = 0.5;
        }

        v84 = v85 + v86 * v87;
LABEL_57:
        v148.origin.x = 0.0;
        v148.origin.y = 0.0;
        v148.size.width = v41;
        v148.size.height = v43;
        v88 = CGRectGetWidth(v148);
        if (activityItemViewsCopy)
        {
          v89 = v59;
          v90 = v84 + v88 * -0.5;
          [v29 setOriginationHorizontalDirection:v118];
          [v29 setPreferredTailAttachmentPointXCoordinate:v64 - v90];
          [v29 tailAttachmentPoint];
          [v29 setCenter:{v90 + v91 + (v84 - (v90 + v91)) * v120, v63}];
          layer2 = [v29 layer];
          [layer2 setZPosition:2.0];

          v94 = v104;
          v93 = v105;
          if (!v119)
          {
            v93 = v61;
            v94 = v89;
          }

          [(CKPinnedConversationActivityView *)self _convertPointInOwnCoordinateSpace:v29 toUnscaledCoordinateSpaceOfSubview:v93, v94];
          [v29 setOriginationPoint:?];
          [v29 layoutIfNeeded];
        }
      }

      v116 = [obj countByEnumeratingWithState:&v127 objects:v131 count:16];
    }

    while (v116);
  }
}

- (CGPoint)_convertPointInOwnCoordinateSpace:(CGPoint)space toUnscaledCoordinateSpaceOfSubview:(id)subview
{
  y = space.y;
  x = space.x;
  subviewCopy = subview;
  [subviewCopy center];
  v8 = v7;
  v10 = v9;
  [subviewCopy bounds];
  v12 = v11;
  v14 = v13;

  v15 = x - (v8 - v12 * 0.5);
  v16 = y - (v10 - v14 * 0.5);
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)_layoutUnattachedContactItemViews:(id)views withContentScale:(id)scale applyingTransform:(BOOL)transform
{
  viewsCopy = views;
  scaleCopy = scale;
  if ([viewsCopy count])
  {
    [(CKPinnedConversationActivityView *)self avatarFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(CKPinnedConversationActivityView *)self contactItemViewDiameterForAvatarFrame:?];
    v19 = v18;
    firstObject = [(NSMutableArray *)self->_activityItemViews firstObject];
    activityItem = [firstObject activityItem];
    attachedContactItemIdentifier = [activityItem attachedContactItemIdentifier];

    v23 = [(CKPinnedConversationActivityView *)self contactItemViewMatchingContactItemIdentifier:attachedContactItemIdentifier fromContactItemViews:self->_contactItemViews];
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = __Block_byref_object_copy__10;
    v45[4] = __Block_byref_object_dispose__10;
    v46 = 0;
    v42 = 0;
    v43[0] = &v42;
    v43[1] = 0x3032000000;
    v43[2] = __Block_byref_object_copy__10;
    v43[3] = __Block_byref_object_dispose__10;
    v44 = 0;
    v39 = 0;
    v40[0] = &v39;
    v40[1] = 0x3032000000;
    v40[2] = __Block_byref_object_copy__10;
    v40[3] = __Block_byref_object_dispose__10;
    v41 = 0;
    if (v23)
    {
      objc_storeStrong(&v46, v23);
      pinnedConversationContactItem = [v23 pinnedConversationContactItem];
      contactItemAlignment = [pinnedConversationContactItem contactItemAlignment];

      if (!contactItemAlignment)
      {
        v26 = v43;
        goto LABEL_7;
      }

      if (contactItemAlignment == 1)
      {
        v26 = v40;
LABEL_7:
        objc_storeStrong((*v26 + 40), v23);
      }
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __105__CKPinnedConversationActivityView__layoutUnattachedContactItemViews_withContentScale_applyingTransform___block_invoke;
    v27[3] = &unk_1E72EEBF8;
    v28 = scaleCopy;
    selfCopy = self;
    v30 = &v42;
    v31 = &v39;
    v33 = v11;
    v34 = v13;
    v35 = v15;
    v36 = v17;
    v37 = v19;
    v32 = v45;
    transformCopy = transform;
    [viewsCopy enumerateObjectsUsingBlock:v27];

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v42, 8);

    _Block_object_dispose(v45, 8);
  }
}

void __105__CKPinnedConversationActivityView__layoutUnattachedContactItemViews_withContentScale_applyingTransform___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 pinnedConversationContactItem];
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 doubleValue];
  }

  else
  {
    [v5 contentScale];
  }

  v8 = v7;
  v9 = [v5 contactItemAlignment];
  v10 = [*(a1 + 40) nextContactItemIsClockwiseForOriginationDirection:*(*(a1 + 40) + 416) contactItemAlignment:v9];
  v11 = [*(a1 + 40) activityViewContentAlignmentForContactItemAlignment:v9];
  if (v9)
  {
    if (v9 != 1)
    {
      goto LABEL_10;
    }

    v12 = 56;
  }

  else
  {
    v12 = 48;
  }

  v13 = *(*(*(a1 + v12) + 8) + 40);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 pinnedConversationContactItem];
    [v15 contentScale];
    v17 = v16;

    v18 = *(a1 + 88) * 0.174532925;
    [v14 bounds];
    v20 = v18 + v19 * 0.5 * v17 + *(a1 + 104) * 0.5 * v8;
    v21 = *(a1 + 40);
    [v14 center];
    [v21 pointAlongCircle:v10 atArcLength:*(a1 + 72) fromPoint:*(a1 + 80) clockwise:{*(a1 + 88), *(a1 + 96), v20, v22, v23}];
    v25 = v24;
    MidY = v26;
    goto LABEL_14;
  }

LABEL_10:
  v28 = *(*(*(a1 + 64) + 8) + 40);
  if (v28)
  {
    [v28 center];
    v30 = v29;
    [*(a1 + 40) contactItemViewCenterXCoordinateForYCoordinate:v11 avatarFrame:v29 contentAlignment:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
    [*(a1 + 40) pointAlongCircle:v10 atArcLength:*(a1 + 72) fromPoint:*(a1 + 80) clockwise:{*(a1 + 88), *(a1 + 96), *(a1 + 88) * 0.0872664626, v31, v30}];
    v25 = v32;
    MidY = v33;
  }

  else
  {
    MidY = CGRectGetMidY(*(*(a1 + 40) + 496));
    [*(a1 + 40) contactItemViewCenterXCoordinateForYCoordinate:v11 avatarFrame:MidY contentAlignment:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
    v25 = v34;
  }

  v14 = 0;
LABEL_14:
  [v4 setCenter:{v25, MidY}];
  [v4 setBounds:{0.0, 0.0, *(a1 + 104), *(a1 + 104)}];
  v35 = [v4 layer];
  [v35 setZPosition:1.0];

  v36 = v8 * *(a1 + 104) * 0.5;
  MidX = CGRectGetMidX(*(*(a1 + 40) + 496));
  if (v9 == 1)
  {
    v38 = v25 - v36 < MidX;
  }

  else if (v9)
  {
    v38 = 0;
  }

  else
  {
    v38 = v25 + v36 > MidX;
  }

  [v4 setHidden:{v38, MidX}];
  if (*(a1 + 112) == 1)
  {
    memset(&v41, 0, sizeof(v41));
    CGAffineTransformMakeScale(&v41, v8, v8);
    v40 = v41;
    [v4 setTransform:&v40];
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  if (!v9)
  {
    v39 = 48;
    goto LABEL_25;
  }

  if (v9 == 1)
  {
    v39 = 56;
LABEL_25:
    objc_storeStrong((*(*(a1 + v39) + 8) + 40), a2);
  }
}

- (CGPoint)pointAlongCircle:(CGRect)circle atArcLength:(double)length fromPoint:(CGPoint)point clockwise:(BOOL)clockwise
{
  clockwiseCopy = clockwise;
  y = point.y;
  x = point.x;
  height = circle.size.height;
  width = circle.size.width;
  v12 = circle.origin.y;
  v13 = circle.origin.x;
  MidX = CGRectGetMidX(circle);
  v25.origin.x = v13;
  v25.origin.y = v12;
  v25.size.width = width;
  v25.size.height = height;
  MidY = CGRectGetMidY(v25);
  v16 = width * 0.5;
  if (v16 != 0.0)
  {
    v17 = MidX - x;
    v18 = MidY - y;
    if (v17 == 0.0)
    {
      v19 = dbl_190DCEF10[v18 > 0.0];
    }

    else
    {
      v19 = atan(v18 / v17);
      if (v17 >= 0.0)
      {
        v19 = v19 + 3.14159265;
      }
    }

    v20 = length / v16;
    if (!clockwiseCopy)
    {
      v20 = -(length / v16);
    }

    v21 = __sincos_stret(v20 + v19);
    MidX = MidX + v16 * v21.__cosval;
    MidY = MidY + v16 * v21.__sinval;
  }

  v22 = MidX;
  v23 = MidY;
  result.y = v23;
  result.x = v22;
  return result;
}

- (double)circleXCoordinateForYCoordinate:(double)coordinate radius:(double)radius centerPoint:(CGPoint)point contentAlignment:(int64_t)alignment
{
  v6 = sqrt(fmax(radius * radius - (coordinate - point.y) * (coordinate - point.y), 0.0));
  if (alignment != 1)
  {
    v6 = -v6;
  }

  return point.x + v6;
}

- (double)tailAttachmentXCoordinateForYCoordinate:(double)coordinate avatarFrame:(CGRect)frame contentAlignment:(int64_t)alignment
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = frame.size.width * 0.5;
  [(CKPinnedConversationActivityView *)self activityItemAttachmentCircleRadiusInsetForAvatarFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v14 = v12 - v13;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MidY = CGRectGetMidY(v20);

  [(CKPinnedConversationActivityView *)self circleXCoordinateForYCoordinate:alignment radius:coordinate centerPoint:v14 contentAlignment:MidX, MidY];
  return result;
}

- (double)contactItemViewCenterXCoordinateForYCoordinate:(double)coordinate avatarFrame:(CGRect)frame contentAlignment:(int64_t)alignment
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = frame.size.width * 0.5;
  MidX = CGRectGetMidX(frame);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidY = CGRectGetMidY(v17);

  [(CKPinnedConversationActivityView *)self circleXCoordinateForYCoordinate:alignment radius:coordinate centerPoint:v12 contentAlignment:MidX, MidY];
  return result;
}

- (NSArray)displayedContacts
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  contactItemViews = [(CKPinnedConversationActivityView *)self contactItemViews];
  v5 = [contactItemViews countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(contactItemViews);
        }

        pinnedConversationContactItem = [*(*(&v14 + 1) + 8 * i) pinnedConversationContactItem];
        v11 = [pinnedConversationContactItem cnContactWithKeys:v8];
        [v3 addObject:v11];
      }

      v6 = [contactItemViews countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (void)resetToEmptySnapshot
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  activityItemViews = [(CKPinnedConversationActivityView *)self activityItemViews];
  v4 = [activityItemViews countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(activityItemViews);
        }

        [*(*(&v23 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [activityItemViews countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  activityItemViews = self->_activityItemViews;
  self->_activityItemViews = v8;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  contactItemViews = [(CKPinnedConversationActivityView *)self contactItemViews];
  v11 = [contactItemViews countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(contactItemViews);
        }

        [*(*(&v19 + 1) + 8 * v14++) removeFromSuperview];
      }

      while (v12 != v14);
      v12 = [contactItemViews countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v12);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  contactItemViews = self->_contactItemViews;
  self->_contactItemViews = v15;

  v17 = +[CKPinnedConversationActivitySnapshot emptySnapshot];
  latestSnapshot = self->_latestSnapshot;
  self->_latestSnapshot = v17;

  self->_suppressingActivity = 0;
}

- (void)setSuppressingActivity:(BOOL)activity animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  activityCopy = activity;
  completionCopy = completion;
  v9 = completionCopy;
  if (self->_suppressingActivity == activityCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v10 = completionCopy;
    (*(completionCopy + 2))(completionCopy);
  }

  else
  {
    self->_suppressingActivity = activityCopy;
    v10 = completionCopy;
    [(CKPinnedConversationActivityView *)self _updateSnapshotAnimated:animatedCopy completion:completionCopy];
  }

  v9 = v10;
LABEL_6:
}

- (BOOL)haveAttachedContactItemViewsForActivityViews:(id)views
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  viewsCopy = views;
  v4 = [viewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(viewsCopy);
        }

        activityItem = [*(*(&v11 + 1) + 8 * i) activityItem];
        attachedContactItemIdentifier = [activityItem attachedContactItemIdentifier];
        v9 = [attachedContactItemIdentifier length];

        if (v9)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [viewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (CGRect)avatarFrame
{
  x = self->_avatarFrame.origin.x;
  y = self->_avatarFrame.origin.y;
  width = self->_avatarFrame.size.width;
  height = self->_avatarFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)innerContentAlignmentFrame
{
  x = self->_innerContentAlignmentFrame.origin.x;
  y = self->_innerContentAlignmentFrame.origin.y;
  width = self->_innerContentAlignmentFrame.size.width;
  height = self->_innerContentAlignmentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)outerContentAlignmentFrame
{
  x = self->_outerContentAlignmentFrame.origin.x;
  y = self->_outerContentAlignmentFrame.origin.y;
  width = self->_outerContentAlignmentFrame.size.width;
  height = self->_outerContentAlignmentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)activityItemOriginationPoint
{
  x = self->_activityItemOriginationPoint.x;
  y = self->_activityItemOriginationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)activityItemOriginationSubAvatarFrame
{
  x = self->_activityItemOriginationSubAvatarFrame.origin.x;
  y = self->_activityItemOriginationSubAvatarFrame.origin.y;
  width = self->_activityItemOriginationSubAvatarFrame.size.width;
  height = self->_activityItemOriginationSubAvatarFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateSnapshotAnimated:(NSObject *)a3 completion:.cold.1(void *a1, id *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 contactItems];
  v6 = [v5 count];
  v7 = [*a2 count];
  v8 = 134218240;
  v9 = v6;
  v10 = 2048;
  v11 = v7;
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "Inconsistent number of contactItemViews during snapshot application. Expected: %ld Have: %ld", &v8, 0x16u);
}

@end