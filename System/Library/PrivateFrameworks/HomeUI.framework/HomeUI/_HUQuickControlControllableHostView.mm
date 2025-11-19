@interface _HUQuickControlControllableHostView
- (HUQuickControlViewInteractionDelegate)interactionDelegate;
- (_HUQuickControlControllableHostView)initWithProfile:(id)a3;
@end

@implementation _HUQuickControlControllableHostView

- (_HUQuickControlControllableHostView)initWithProfile:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _HUQuickControlControllableHostView;
  v6 = [(_HUQuickControlControllableHostView *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, a3);
    v8 = [MEMORY[0x277D26718] materialViewWithRecipe:4 configuration:1];
    backgroundView = v7->_backgroundView;
    v7->_backgroundView = v8;

    [(MTMaterialView *)v7->_backgroundView _setContinuousCornerRadius:28.0];
    [(MTMaterialView *)v7->_backgroundView setUserInteractionEnabled:0];
    [(MTMaterialView *)v7->_backgroundView setAutoresizingMask:18];
    [(_HUQuickControlControllableHostView *)v7 addSubview:v7->_backgroundView];
  }

  return v7;
}

- (HUQuickControlViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end