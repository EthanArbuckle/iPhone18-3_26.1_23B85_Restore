@interface DOCLabel
- (CGSize)doc_effectiveContentSize;
- (DOCLabel)initWithCoder:(id)coder;
- (DOCLabel)initWithFrame:(CGRect)frame;
- (void)doc_commonInit;
- (void)setAttributedText:(id)text;
- (void)setText:(id)text;
- (void)updateForChangedTraitsAffectingFonts;
@end

@implementation DOCLabel

- (void)doc_commonInit
{
  doc_traitsAffectingFonts = [MEMORY[0x277D75C80] doc_traitsAffectingFonts];
  v3 = [(DOCLabel *)self registerForTraitChanges:doc_traitsAffectingFonts withAction:sel_updateForChangedTraitsAffectingFonts];
}

- (DOCLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = DOCLabel;
  v3 = [(DOCLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DOCLabel *)v3 doc_commonInit];
  }

  return v4;
}

- (DOCLabel)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DOCLabel;
  v3 = [(DOCLabel *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(DOCLabel *)v3 doc_commonInit];
  }

  return v4;
}

- (void)setText:(id)text
{
  useAttributedTextNumber = self->useAttributedTextNumber;
  textCopy = text;
  if ([(NSNumber *)useAttributedTextNumber BOOLValue])
  {
    [(DOCLabel *)a2 setText:?];
  }

  v7 = self->useAttributedTextNumber;
  self->useAttributedTextNumber = MEMORY[0x277CBEC28];

  v8.receiver = self;
  v8.super_class = DOCLabel;
  [(DOCLabel *)&v8 setText:textCopy];
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  useAttributedTextNumber = self->useAttributedTextNumber;
  if (useAttributedTextNumber && ![(NSNumber *)useAttributedTextNumber BOOLValue])
  {
    [(DOCLabel *)a2 setAttributedText:?];
  }

  v7 = self->useAttributedTextNumber;
  self->useAttributedTextNumber = MEMORY[0x277CBEC38];

  v8.receiver = self;
  v8.super_class = DOCLabel;
  [(DOCLabel *)&v8 setAttributedText:textCopy];
}

- (CGSize)doc_effectiveContentSize
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  self->_intrinsicContentSizeShortcutDisabled = 1;
  [(DOCLabel *)self invalidateIntrinsicContentSize];
  [(DOCLabel *)self intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  self->_intrinsicContentSizeShortcutDisabled = 0;
  [(DOCLabel *)self frame];
  if (v4 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v6;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)updateForChangedTraitsAffectingFonts
{
  if ([(DOCLabel *)self adjustsFontForContentSizeCategory])
  {

    [(DOCLabel *)self invalidateIntrinsicContentSize];
  }
}

- (void)setText:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCLabel.m" lineNumber:45 description:{@"Mixing text and attributedText is not suggested, see comments in DOCLabel"}];
}

- (void)setAttributedText:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCLabel.m" lineNumber:52 description:{@"Mixing text and attributedText is not suggested, see comments in DOCLabel"}];
}

@end