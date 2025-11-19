@interface CKDateLabel
- (id)_dateString;
- (id)text;
- (void)setDate:(id)a3;
- (void)setTextForOverride:(id)a3;
@end

@implementation CKDateLabel

- (id)text
{
  textForOverride = self->_textForOverride;
  if (textForOverride)
  {
    v3 = textForOverride;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CKDateLabel;
    v3 = [(UIDateLabel *)&v5 text];
  }

  return v3;
}

- (id)_dateString
{
  textForOverride = self->_textForOverride;
  if (textForOverride)
  {
    v3 = textForOverride;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CKDateLabel;
    v3 = [(UIDateLabel *)&v5 _dateString];
  }

  return v3;
}

- (void)setTextForOverride:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CKDateLabel *)self setDate:0];
  }

  textForOverride = self->_textForOverride;
  self->_textForOverride = v4;
}

- (void)setDate:(id)a3
{
  if (self->_textForOverride)
  {
    [(UIDateLabel *)&v4 setDate:0, v3.receiver, v3.super_class, self, CKDateLabel];
  }

  else
  {
    [(UIDateLabel *)&v3 setDate:a3, self, CKDateLabel, v4.receiver, v4.super_class];
  }
}

@end