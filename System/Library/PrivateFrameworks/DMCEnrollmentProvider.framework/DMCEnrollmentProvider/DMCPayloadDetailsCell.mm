@interface DMCPayloadDetailsCell
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)_addCopyEditMenuAction;
- (void)_didLongPress:(id)press;
- (void)copy:(id)copy;
- (void)setDetail:(id)detail value:(id)value;
@end

@implementation DMCPayloadDetailsCell

- (void)setDetail:(id)detail value:(id)value
{
  v21[1] = *MEMORY[0x277D85DE8];
  detailCopy = detail;
  valueCopy = value;
  [(DMCPayloadDetailsCell *)self setSelectionStyle:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
    dMCProfileHexString = valueCopy;
LABEL_3:
    v10 = dMCProfileHexString;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      valueCellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
      dMCProfileHexString = [valueCopy componentsJoinedByString:@"\n"];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
      valueCellConfiguration = cellConfiguration;
      if ((isKindOfClass & 1) == 0)
      {
        [cellConfiguration setSecondaryText:0];
        [valueCellConfiguration setText:detailCopy];
        v10 = 0;
        goto LABEL_13;
      }

      dMCProfileHexString = [valueCopy DMCProfileHexString];
    }

    goto LABEL_3;
  }

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  v11 = objc_opt_new();
  [v11 setDateStyle:1];
  [v11 setTimeStyle:2];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v11 setLocale:currentLocale];

  v10 = [v11 stringFromDate:valueCopy];

LABEL_6:
  [valueCellConfiguration setText:detailCopy];
  if (!v10)
  {
LABEL_13:
    v17 = detailCopy;
    goto LABEL_14;
  }

  v13 = objc_alloc(MEMORY[0x277CCA898]);
  v20 = *MEMORY[0x277D740C0];
  dMCProfileSecondaryLabelColor = [MEMORY[0x277D75348] DMCProfileSecondaryLabelColor];
  v21[0] = dMCProfileSecondaryLabelColor;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v16 = [v13 initWithString:v10 attributes:v15];
  [valueCellConfiguration setSecondaryAttributedText:v16];

  v17 = v10;
LABEL_14:
  [(DMCPayloadDetailsCell *)self setCopyableText:v17];
  [(DMCPayloadDetailsCell *)self _addCopyEditMenuAction];
  [(DMCPayloadDetailsCell *)self setContentConfiguration:valueCellConfiguration];
}

- (void)_addCopyEditMenuAction
{
  if (!self->_editMenuInteraction)
  {
    v3 = [objc_alloc(MEMORY[0x277D754C8]) initWithDelegate:self];
    editMenuInteraction = self->_editMenuInteraction;
    self->_editMenuInteraction = v3;
    v5 = v3;

    [(DMCPayloadDetailsCell *)self addInteraction:v5];
  }

  if (!self->_longPress)
  {
    v6 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__didLongPress_];
    longPress = self->_longPress;
    self->_longPress = v6;
  }

  gestureRecognizers = [(DMCPayloadDetailsCell *)self gestureRecognizers];
  v9 = [gestureRecognizers containsObject:self->_longPress];

  if ((v9 & 1) == 0)
  {
    v10 = self->_longPress;

    [(DMCPayloadDetailsCell *)self addGestureRecognizer:v10];
  }
}

- (void)_didLongPress:(id)press
{
  [(DMCPayloadDetailsCell *)self center];
  v4 = [MEMORY[0x277D754C0] configurationWithIdentifier:0 sourcePoint:?];
  [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v4];
}

- (void)copy:(id)copy
{
  copyableText = [(DMCPayloadDetailsCell *)self copyableText];
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  [generalPasteboard setString:copyableText];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_copy_ != action)
  {
    return 0;
  }

  copyableText = [(DMCPayloadDetailsCell *)self copyableText];
  v4 = copyableText != 0;

  return v4;
}

@end