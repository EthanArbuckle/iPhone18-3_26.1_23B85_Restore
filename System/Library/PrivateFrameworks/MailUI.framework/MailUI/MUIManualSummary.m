@interface MUIManualSummary
- (BOOL)isEqual:(id)a3;
- (MUIManualSummary)initWithSummary:(id)a3 requiresConfirmation:(BOOL)a4 isExternalSummary:(BOOL)a5;
- (unint64_t)hash;
@end

@implementation MUIManualSummary

- (MUIManualSummary)initWithSummary:(id)a3 requiresConfirmation:(BOOL)a4 isExternalSummary:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = MUIManualSummary;
  v9 = [(MUIManualSummary *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    attributedString = v9->_attributedString;
    v9->_attributedString = v10;

    v9->_requiresConfirmation = a4;
    v9->_isExternalSummary = a5;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MUIManualSummary *)self attributedString];
      v7 = [(MUIManualSummary *)v5 attributedString];
      if (EFObjectsAreEqual() && (v8 = [(MUIManualSummary *)self requiresConfirmation], v8 == [(MUIManualSummary *)v5 requiresConfirmation]))
      {
        v10 = [(MUIManualSummary *)self isExternalSummary];
        v9 = v10 ^ [(MUIManualSummary *)v5 isExternalSummary]^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(MUIManualSummary *)self attributedString];
  v4 = [v3 hash];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[MUIManualSummary requiresConfirmation](self, "requiresConfirmation")}];
  v6 = 33 * (33 * v4 + [v5 hash]);

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[MUIManualSummary isExternalSummary](self, "isExternalSummary")}];
  v8 = [v7 hash] + 193376997;

  return v6 + v8;
}

@end