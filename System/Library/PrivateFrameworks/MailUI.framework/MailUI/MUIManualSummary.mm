@interface MUIManualSummary
- (BOOL)isEqual:(id)equal;
- (MUIManualSummary)initWithSummary:(id)summary requiresConfirmation:(BOOL)confirmation isExternalSummary:(BOOL)externalSummary;
- (unint64_t)hash;
@end

@implementation MUIManualSummary

- (MUIManualSummary)initWithSummary:(id)summary requiresConfirmation:(BOOL)confirmation isExternalSummary:(BOOL)externalSummary
{
  summaryCopy = summary;
  v13.receiver = self;
  v13.super_class = MUIManualSummary;
  v9 = [(MUIManualSummary *)&v13 init];
  if (v9)
  {
    v10 = [summaryCopy copy];
    attributedString = v9->_attributedString;
    v9->_attributedString = v10;

    v9->_requiresConfirmation = confirmation;
    v9->_isExternalSummary = externalSummary;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      attributedString = [(MUIManualSummary *)self attributedString];
      attributedString2 = [(MUIManualSummary *)v5 attributedString];
      if (EFObjectsAreEqual() && (v8 = [(MUIManualSummary *)self requiresConfirmation], v8 == [(MUIManualSummary *)v5 requiresConfirmation]))
      {
        isExternalSummary = [(MUIManualSummary *)self isExternalSummary];
        v9 = isExternalSummary ^ [(MUIManualSummary *)v5 isExternalSummary]^ 1;
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
  attributedString = [(MUIManualSummary *)self attributedString];
  v4 = [attributedString hash];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[MUIManualSummary requiresConfirmation](self, "requiresConfirmation")}];
  v6 = 33 * (33 * v4 + [v5 hash]);

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[MUIManualSummary isExternalSummary](self, "isExternalSummary")}];
  v8 = [v7 hash] + 193376997;

  return v6 + v8;
}

@end