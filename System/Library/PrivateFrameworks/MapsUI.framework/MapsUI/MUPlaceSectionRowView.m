@interface MUPlaceSectionRowView
+ (id)rowViewWithContentView:(id)a3;
- (BOOL)supportsInteractionMenuItems;
- (MUPlaceSectionRowView)initWithFrame:(CGRect)a3;
- (id)_createCopyAction;
- (id)_speechMenuElementFromSuggestedActions:(id)a3;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (void)_updateBackgroundColor:(BOOL)a3;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
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

- (id)_speechMenuElementFromSuggestedActions:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 identifier];
          v12 = [v11 isEqualToString:v7];

          if (v12)
          {
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v10 = 0;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__MUPlaceSectionRowView_editMenuInteraction_willDismissMenuForConfiguration_animator___block_invoke;
  v5[3] = &unk_1E821A268;
  v5[4] = self;
  [a5 addAnimations:{v5, a4}];
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v6 = a5;
  v7 = [MEMORY[0x1E695DF70] array];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(MUPlaceSectionRowView *)self _createCopyAction];
    [v7 addObject:v8];
  }

  v9 = [(MUPlaceSectionRowView *)self _speechMenuElementFromSuggestedActions:v6];
  [v7 _mapsui_addObjectIfNotNil:v9];

  if (![v7 count])
  {
    [(MUPlaceSectionRowView *)self setSelected:0];
  }

  v10 = [MEMORY[0x1E69DCC60] menuWithChildren:v7];

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

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MUPlaceSectionRowView;
  [(MUPlaceSectionRowView *)&v5 touchesCancelled:a3 withEvent:a4];
  if ([(MUPlaceSectionRowView *)self handlesHighlighting])
  {
    [(MUPlaceSectionRowView *)self setSelected:0];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MUPlaceSectionRowView;
  [(MUPlaceSectionRowView *)&v5 touchesEnded:a3 withEvent:a4];
  if ([(MUPlaceSectionRowView *)self handlesHighlighting])
  {
    [(MUPlaceSectionRowView *)self setSelected:0];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MUPlaceSectionRowView;
  [(MUPlaceSectionRowView *)&v5 touchesBegan:a3 withEvent:a4];
  if ([(MUPlaceSectionRowView *)self handlesHighlighting])
  {
    [(MUPlaceSectionRowView *)self setSelected:1];
  }
}

- (void)_updateBackgroundColor:(BOOL)a3
{
  v3 = a3;
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
  if (v3)
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

- (MUPlaceSectionRowView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = MUPlaceSectionRowView;
  v3 = [(MKViewWithHairline *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

+ (id)rowViewWithContentView:(id)a3
{
  v3 = a3;
  v4 = [MUPlaceSectionRowView alloc];
  v5 = [(MUPlaceSectionRowView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MUPlaceSectionRowView *)v5 addSubview:v3];
  v6 = [[MUEdgeLayout alloc] initWithItem:v3 container:v5];

  [(MUConstraintLayout *)v6 activate];

  return v5;
}

@end