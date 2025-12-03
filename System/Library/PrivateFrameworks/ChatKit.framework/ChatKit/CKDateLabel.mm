@interface CKDateLabel
- (id)_dateString;
- (id)text;
- (void)setDate:(id)date;
- (void)setTextForOverride:(id)override;
@end

@implementation CKDateLabel

- (id)text
{
  textForOverride = self->_textForOverride;
  if (textForOverride)
  {
    text = textForOverride;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CKDateLabel;
    text = [(UIDateLabel *)&v5 text];
  }

  return text;
}

- (id)_dateString
{
  textForOverride = self->_textForOverride;
  if (textForOverride)
  {
    _dateString = textForOverride;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CKDateLabel;
    _dateString = [(UIDateLabel *)&v5 _dateString];
  }

  return _dateString;
}

- (void)setTextForOverride:(id)override
{
  overrideCopy = override;
  if (overrideCopy)
  {
    [(CKDateLabel *)self setDate:0];
  }

  textForOverride = self->_textForOverride;
  self->_textForOverride = overrideCopy;
}

- (void)setDate:(id)date
{
  if (self->_textForOverride)
  {
    [(UIDateLabel *)&v4 setDate:0, v3.receiver, v3.super_class, self, CKDateLabel];
  }

  else
  {
    [(UIDateLabel *)&v3 setDate:date, self, CKDateLabel, v4.receiver, v4.super_class];
  }
}

@end