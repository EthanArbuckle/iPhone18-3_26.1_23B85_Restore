@interface HKEmergencyCardFooterTableItem
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (UIEdgeInsets)separatorInset;
- (id)_cell;
- (id)initInEditMode:(BOOL)mode;
- (void)setAttributedTitleForFooter:(id)footer;
@end

@implementation HKEmergencyCardFooterTableItem

- (id)initInEditMode:(BOOL)mode
{
  v4.receiver = self;
  v4.super_class = HKEmergencyCardFooterTableItem;
  return [(HKEmergencyCardTableItem *)&v4 initInEditMode:mode];
}

- (UIEdgeInsets)separatorInset
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setAttributedTitleForFooter:(id)footer
{
  objc_storeStrong(&self->_attributedTitleForFooter, footer);
  footerCopy = footer;
  attributedTitleForFooter = self->_attributedTitleForFooter;
  textLabel = [(HKEmergencyCardFooterCell *)self->_cell textLabel];
  [textLabel setAttributedText:attributedTitleForFooter];
}

- (id)_cell
{
  cell = self->_cell;
  if (!cell)
  {
    v4 = [[HKEmergencyCardFooterCell alloc] initWithStyle:0 reuseIdentifier:0x1F43119C0];
    v5 = self->_cell;
    self->_cell = v4;

    [(HKEmergencyCardFooterCell *)self->_cell setFooterText:self->_attributedTitleForFooter];
    [(HKEmergencyCardFooterCell *)self->_cell setTextViewDelegate:self];
    cell = self->_cell;
  }

  return cell;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  shouldInteractWithURLBlock = self->_shouldInteractWithURLBlock;
  if (shouldInteractWithURLBlock)
  {
    return shouldInteractWithURLBlock[2](shouldInteractWithURLBlock, l);
  }

  else
  {
    return 1;
  }
}

@end