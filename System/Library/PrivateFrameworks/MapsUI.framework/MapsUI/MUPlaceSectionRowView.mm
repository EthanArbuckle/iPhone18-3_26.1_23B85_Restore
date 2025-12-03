@interface MUPlaceSectionRowView
+ (id)rowViewWithContentView:(id)view;
- (BOOL)supportsInteractionMenuItems;
- (MUPlaceSectionRowView)initWithFrame:(CGRect)frame;
- (id)_createCopyAction;
- (id)_speechMenuElementFromSuggestedActions:(id)actions;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)_updateBackgroundColor:(BOOL)color;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation MUPlaceSectionRowView

- (id)_createCopyAction
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v3 = _MULocalizedStringFromThisBundle(@"Copy [Pasteboard]");
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MUPlaceSectionRowView__createCopyAction__block_invoke;
  v7[3] = &unk_1E82196D0;
  objc_copyWeak(&v8, &location);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:@"Copy" handler:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

void __42__MUPlaceSectionRowView__createCopyAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained copy:0];
    WeakRetained = v2;
  }
}

- (id)_speechMenuElementFromSuggestedActions:(id)actions
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  actionsCopy = actions;
  v4 = [actionsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = *MEMORY[0x1E69DE1B0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(actionsCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          identifier = [v10 identifier];
          v12 = [identifier isEqualToString:v7];

          if (v12)
          {
            goto LABEL_12;
          }
        }
      }

      v5 = [actionsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v10 = 0;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__MUPlaceSectionRowView_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke;
  v5[3] = &unk_1E821A268;
  v5[4] = self;
  [animator addAnimations:{v5, configuration}];
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  actionsCopy = actions;
  array = [MEMORY[0x1E695DF70] array];
  if (objc_opt_respondsToSelector())
  {
    _createCopyAction = [(MUPlaceSectionRowView *)self _createCopyAction];
    [array addObject:_createCopyAction];
  }

  v9 = [(MUPlaceSectionRowView *)self _speechMenuElementFromSuggestedActions:actionsCopy];
  [array _mapsui_addObjectIfNotNil:v9];

  if (![array count])
  {
    [(MUPlaceSectionRowView *)self setSelected:0];
  }

  v10 = [MEMORY[0x1E69DCC60] menuWithChildren:array];

  return v10;
}

- (BOOL)supportsInteractionMenuItems
{
  if (MUIdiomInTraitEnvironment(self) == 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_respondsToSelector();
  }

  return v2 & 1;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MUPlaceSectionRowView;
  [(MUPlaceSectionRowView *)&v5 touchesCancelled:cancelled withEvent:event];
  if ([(MUPlaceSectionRowView *)self handlesHighlighting])
  {
    [(MUPlaceSectionRowView *)self setSelected:0];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MUPlaceSectionRowView;
  [(MUPlaceSectionRowView *)&v5 touchesEnded:ended withEvent:event];
  if ([(MUPlaceSectionRowView *)self handlesHighlighting])
  {
    [(MUPlaceSectionRowView *)self setSelected:0];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MUPlaceSectionRowView;
  [(MUPlaceSectionRowView *)&v5 touchesBegan:began withEvent:event];
  if ([(MUPlaceSectionRowView *)self handlesHighlighting])
  {
    [(MUPlaceSectionRowView *)self setSelected:1];
  }
}

- (void)_updateBackgroundColor:(BOOL)color
{
  colorCopy = color;
  if (self->_selected)
  {
    +[MUInfoCardStyle rowSelectedColor];
  }

  else
  {
    +[MUInfoCardStyle rowUnselectedColor];
  }
  v5 = ;
  v6 = v5;
  if (colorCopy)
  {
    v7 = MEMORY[0x1E69DD250];
    v8 = *MEMORY[0x1E696F4E0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__MUPlaceSectionRowView__updateBackgroundColor___block_invoke;
    v9[3] = &unk_1E821A870;
    v9[4] = self;
    v10 = v5;
    [v7 _mapkit_animateWithDuration:v9 animations:0 completion:v8];
  }

  else
  {
    [(MUPlaceSectionRowView *)self _mapkit_setBackgroundColor:v5];
  }
}

- (MUPlaceSectionRowView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MUPlaceSectionRowView;
  v3 = [(MKViewWithHairline *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3 && [(MUPlaceSectionRowView *)v3 supportsInteractionMenuItems])
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC9E0]) initWithDelegate:v4];
    editMenuInteraction = v4->_editMenuInteraction;
    v4->_editMenuInteraction = v5;

    [(MUPlaceSectionRowView *)v4 addInteraction:v4->_editMenuInteraction];
    [(MUPlaceSectionRowView *)v4 _updateBackgroundColor:0];
  }

  return v4;
}

+ (id)rowViewWithContentView:(id)view
{
  viewCopy = view;
  v4 = [MUPlaceSectionRowView alloc];
  v5 = [(MUPlaceSectionRowView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MUPlaceSectionRowView *)v5 addSubview:viewCopy];
  v6 = [[MUEdgeLayout alloc] initWithItem:viewCopy container:v5];

  [(MUConstraintLayout *)v6 activate];

  return v5;
}

@end