@interface GKComposeHeaderWithStaticRecipients
- (void)layoutSubviews;
- (void)setRecipientNameStrings:(id)a3;
@end

@implementation GKComposeHeaderWithStaticRecipients

- (void)setRecipientNameStrings:(id)a3
{
  v5 = a3;
  if (self->_recipientNameStrings != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_recipientNameStrings, a3);
    [(GKComposeHeaderWithStaticRecipients *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)layoutSubviews
{
  v3 = [(GKComposeHeaderWithStaticRecipients *)self recipientNameStrings];
  [(GKComposeHeaderField *)self valueFrame];
  v5 = v4;
  v6 = [MEMORY[0x277D0C8B0] textStyle];
  v7 = [v6 composeFields];
  *&v8 = v5;
  v9 = [v3 _gkCommaSeparatedRecipientListWithWidth:v7 forTextStyle:v8];
  [(GKComposeHeaderField *)self setValueText:v9];

  v10.receiver = self;
  v10.super_class = GKComposeHeaderWithStaticRecipients;
  [(GKComposeHeaderWithStaticRecipients *)&v10 layoutSubviews];
}

@end