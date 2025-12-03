@interface DMCManagedMediaSummaryCell
- (void)_setText:(id)text image:(id)image;
- (void)setManagedApp:(id)app;
- (void)setManagedBook:(id)book;
@end

@implementation DMCManagedMediaSummaryCell

- (void)setManagedBook:(id)book
{
  friendlyName = [book friendlyName];
  v4 = [DMCApplicationProxy bookIconForVariant:1];
  [(DMCManagedMediaSummaryCell *)self _setText:friendlyName image:v4];
}

- (void)setManagedApp:(id)app
{
  appCopy = app;
  name = [appCopy name];
  v5 = [appCopy iconForVariant:1];

  [(DMCManagedMediaSummaryCell *)self _setText:name image:v5];
}

- (void)_setText:(id)text image:(id)image
{
  imageCopy = image;
  textCopy = text;
  [(DMCManagedMediaSummaryCell *)self setSelectionStyle:0];
  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  [cellConfiguration setText:textCopy];

  [cellConfiguration setImage:imageCopy];
  [(DMCManagedMediaSummaryCell *)self setContentConfiguration:cellConfiguration];
}

@end