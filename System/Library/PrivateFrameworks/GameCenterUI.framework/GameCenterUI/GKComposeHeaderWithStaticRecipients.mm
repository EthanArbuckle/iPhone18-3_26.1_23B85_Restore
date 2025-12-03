@interface GKComposeHeaderWithStaticRecipients
- (void)layoutSubviews;
- (void)setRecipientNameStrings:(id)strings;
@end

@implementation GKComposeHeaderWithStaticRecipients

- (void)setRecipientNameStrings:(id)strings
{
  stringsCopy = strings;
  if (self->_recipientNameStrings != stringsCopy)
  {
    v6 = stringsCopy;
    objc_storeStrong(&self->_recipientNameStrings, strings);
    [(GKComposeHeaderWithStaticRecipients *)self setNeedsLayout];
    stringsCopy = v6;
  }
}

- (void)layoutSubviews
{
  recipientNameStrings = [(GKComposeHeaderWithStaticRecipients *)self recipientNameStrings];
  [(GKComposeHeaderField *)self valueFrame];
  v5 = v4;
  textStyle = [MEMORY[0x277D0C8B0] textStyle];
  composeFields = [textStyle composeFields];
  *&v8 = v5;
  v9 = [recipientNameStrings _gkCommaSeparatedRecipientListWithWidth:composeFields forTextStyle:v8];
  [(GKComposeHeaderField *)self setValueText:v9];

  v10.receiver = self;
  v10.super_class = GKComposeHeaderWithStaticRecipients;
  [(GKComposeHeaderWithStaticRecipients *)&v10 layoutSubviews];
}

@end