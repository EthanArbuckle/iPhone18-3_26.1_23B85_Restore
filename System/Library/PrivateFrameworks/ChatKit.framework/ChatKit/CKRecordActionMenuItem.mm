@interface CKRecordActionMenuItem
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)updateForState:(int64_t)state touchInside:(BOOL)inside;
@end

@implementation CKRecordActionMenuItem

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  if ([(CKActionMenuItem *)self isSelected]!= selected)
  {
    v8.receiver = self;
    v8.super_class = CKRecordActionMenuItem;
    [(CKActionMenuItem *)&v8 setSelected:selectedCopy animated:animatedCopy];
    if (selectedCopy)
    {
      date = [MEMORY[0x1E695DF00] date];
      [(CKRecordActionMenuItem *)self setDateSelected:date];
    }

    else
    {
      [(CKRecordActionMenuItem *)self setDateSelected:0];
    }
  }
}

- (void)updateForState:(int64_t)state touchInside:(BOOL)inside
{
  insideCopy = inside;
  if (state > 2)
  {
    if (state == 3)
    {
      [(CKActionMenuItem *)self setHighlighted:0 animated:1];
      if (insideCopy && [(CKActionMenuItem *)self isSelected])
      {
        dateSelected = [(CKRecordActionMenuItem *)self dateSelected];
        if (-[CKRecordActionMenuItem wasSelected](self, "wasSelected") || dateSelected && ([MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate], v7 = v6, objc_msgSend(dateSelected, "timeIntervalSinceReferenceDate"), v7 - v8 >= 0.25))
        {
          [(CKRecordActionMenuItem *)self setSelected:0 animated:1];
          [(CKActionMenuItem *)self sendAction];
        }
      }
    }

    else if (state == 4)
    {

      [(CKActionMenuItem *)self setHighlighted:0 animated:0];
    }
  }

  else
  {
    if (state == 1)
    {
      [(CKRecordActionMenuItem *)self setWasSelected:[(CKActionMenuItem *)self isSelected]];
    }

    else if (state != 2)
    {
      return;
    }

    [(CKActionMenuItem *)self setHighlighted:insideCopy animated:1];
    if (insideCopy && ![(CKActionMenuItem *)self isSelected]&& ![(CKRecordActionMenuItem *)self wasSelected])
    {
      [(CKRecordActionMenuItem *)self setSelected:1 animated:1];

      [(CKActionMenuItem *)self sendAction];
    }
  }
}

@end