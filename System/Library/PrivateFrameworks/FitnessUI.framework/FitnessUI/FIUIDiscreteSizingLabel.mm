@interface FIUIDiscreteSizingLabel
- (FIUIDiscreteSizingLabelDelegate)delegate;
- (void)setText:(id)a3;
@end

@implementation FIUIDiscreteSizingLabel

- (void)setText:(id)a3
{
  v5.receiver = self;
  v5.super_class = FIUIDiscreteSizingLabel;
  [(FIUIDiscreteSizingLabel *)&v5 setText:a3];
  v4 = [(FIUIDiscreteSizingLabel *)self delegate];
  [v4 discreteSizingLabelDidChangeText:self];
}

- (FIUIDiscreteSizingLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end