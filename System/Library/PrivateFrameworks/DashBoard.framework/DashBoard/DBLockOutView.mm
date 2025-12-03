@interface DBLockOutView
- (DBLockOutView)initWithMode:(int64_t)mode environmentConfiguration:(id)configuration;
- (DBLockOutViewDelegate)delegate;
- (void)_backToOEM;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DBLockOutView

- (DBLockOutView)initWithMode:(int64_t)mode environmentConfiguration:(id)configuration
{
  v10.receiver = self;
  v10.super_class = DBLockOutView;
  v5 = [(DBLockOutView *)&v10 initWithFrame:mode, configuration, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_mode = mode;
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v5 action:sel__backToOEM];
    backToOEMGestureRecognizer = v6->_backToOEMGestureRecognizer;
    v6->_backToOEMGestureRecognizer = v7;

    [(UITapGestureRecognizer *)v6->_backToOEMGestureRecognizer setAllowedPressTypes:&unk_285AA4970];
    [(DBLockOutView *)v6 addGestureRecognizer:v6->_backToOEMGestureRecognizer];
  }

  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  v3.receiver = self;
  v3.super_class = DBLockOutView;
  [(DBLockOutView *)&v3 traitCollectionDidChange:change];
}

- (void)_backToOEM
{
  delegate = [(DBLockOutView *)self delegate];
  [delegate lockOutView:self didTapButtonOfType:1000];
}

- (DBLockOutViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end