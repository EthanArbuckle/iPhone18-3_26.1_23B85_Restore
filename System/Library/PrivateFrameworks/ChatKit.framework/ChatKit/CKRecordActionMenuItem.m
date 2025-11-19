@interface CKRecordActionMenuItem
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)updateForState:(int64_t)a3 touchInside:(BOOL)a4;
@end

@implementation CKRecordActionMenuItem

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CKActionMenuItem *)self isSelected]!= a3)
  {
    v8.receiver = self;
    v8.super_class = CKRecordActionMenuItem;
    [(CKActionMenuItem *)&v8 setSelected:v5 animated:v4];
    if (v5)
    {
      v7 = [MEMORY[0x1E695DF00] date];
      [(CKRecordActionMenuItem *)self setDateSelected:v7];
    }

    else
    {
      [(CKRecordActionMenuItem *)self setDateSelected:0];
    }
  }
}

- (void)updateForState:(int64_t)a3 touchInside:(BOOL)a4
{
  v4 = a4;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      [(CKActionMenuItem *)self setHighlighted:0 animated:1];
      if (v4 && [(CKActionMenuItem *)self isSelected])
      {
        v9 = [(CKRecordActionMenuItem *)self dateSelected];
        if (-[CKRecordActionMenuItem wasSelected](self, "wasSelected") || v9 && ([MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate], v7 = v6, objc_msgSend(v9, "timeIntervalSinceReferenceDate"), v7 - v8 >= 0.25))
        {
          [(CKRecordActionMenuItem *)self setSelected:0 animated:1];
          [(CKActionMenuItem *)self sendAction];
        }
      }
    }

    else if (a3 == 4)
    {

      [(CKActionMenuItem *)self setHighlighted:0 animated:0];
    }
  }

  else
  {
    if (a3 == 1)
    {
      [(CKRecordActionMenuItem *)self setWasSelected:[(CKActionMenuItem *)self isSelected]];
    }

    else if (a3 != 2)
    {
      return;
    }

    [(CKActionMenuItem *)self setHighlighted:v4 animated:1];
    if (v4 && ![(CKActionMenuItem *)self isSelected]&& ![(CKRecordActionMenuItem *)self wasSelected])
    {
      [(CKRecordActionMenuItem *)self setSelected:1 animated:1];

      [(CKActionMenuItem *)self sendAction];
    }
  }
}

@end