@interface FIUIDiscreteSizingLabel
- (FIUIDiscreteSizingLabelDelegate)delegate;
- (void)setText:(id)text;
@end

@implementation FIUIDiscreteSizingLabel

- (void)setText:(id)text
{
  v5.receiver = self;
  v5.super_class = FIUIDiscreteSizingLabel;
  [(FIUIDiscreteSizingLabel *)&v5 setText:text];
  delegate = [(FIUIDiscreteSizingLabel *)self delegate];
  [delegate discreteSizingLabelDidChangeText:self];
}

- (FIUIDiscreteSizingLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end