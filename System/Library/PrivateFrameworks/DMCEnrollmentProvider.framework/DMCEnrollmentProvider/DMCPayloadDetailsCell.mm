@interface DMCPayloadDetailsCell
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)_addCopyEditMenuAction;
- (void)_didLongPress:(id)a3;
- (void)copy:(id)a3;
- (void)setDetail:(id)a3 value:(id)a4;
@end

@implementation DMCPayloadDetailsCell

- (void)setDetail:(id)a3 value:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(DMCPayloadDetailsCell *)self setSelectionStyle:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x277D756E0] valueCellConfiguration];
    v9 = v7;
LABEL_3:
    v10 = v9;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x277D756E0] cellConfiguration];
      v9 = [v7 componentsJoinedByString:@"\n"];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v19 = [MEMORY[0x277D756E0] cellConfiguration];
      v8 = v19;
      if ((isKindOfClass & 1) == 0)
      {
        [v19 setSecondaryText:0];
        [v8 setText:v6];
        v10 = 0;
        goto LABEL_13;
      }

      v9 = [v7 DMCProfileHexString];
    }

    goto LABEL_3;
  }

  v8 = [MEMORY[0x277D756E0] valueCellConfiguration];
  v11 = objc_opt_new();
  [v11 setDateStyle:1];
  [v11 setTimeStyle:2];
  v12 = [MEMORY[0x277CBEAF8] currentLocale];
  [v11 setLocale:v12];

  v10 = [v11 stringFromDate:v7];

LABEL_6:
  [v8 setText:v6];
  if (!v10)
  {
LABEL_13:
    v17 = v6;
    goto LABEL_14;
  }

  v13 = objc_alloc(MEMORY[0x277CCA898]);
  v20 = *MEMORY[0x277D740C0];
  v14 = [MEMORY[0x277D75348] DMCProfileSecondaryLabelColor];
  v21[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v16 = [v13 initWithString:v10 attributes:v15];
  [v8 setSecondaryAttributedText:v16];

  v17 = v10;
LABEL_14:
  [(DMCPayloadDetailsCell *)self setCopyableText:v17];
  [(DMCPayloadDetailsCell *)self _addCopyEditMenuAction];
  [(DMCPayloadDetailsCell *)self setContentConfiguration:v8];
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

  v8 = [(DMCPayloadDetailsCell *)self gestureRecognizers];
  v9 = [v8 containsObject:self->_longPress];

  if ((v9 & 1) == 0)
  {
    v10 = self->_longPress;

    [(DMCPayloadDetailsCell *)self addGestureRecognizer:v10];
  }
}

- (void)_didLongPress:(id)a3
{
  [(DMCPayloadDetailsCell *)self center];
  v4 = [MEMORY[0x277D754C0] configurationWithIdentifier:0 sourcePoint:?];
  [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v4];
}

- (void)copy:(id)a3
{
  v4 = [(DMCPayloadDetailsCell *)self copyableText];
  v3 = [MEMORY[0x277D75810] generalPasteboard];
  [v3 setString:v4];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_copy_ != a3)
  {
    return 0;
  }

  v5 = [(DMCPayloadDetailsCell *)self copyableText];
  v4 = v5 != 0;

  return v4;
}

@end