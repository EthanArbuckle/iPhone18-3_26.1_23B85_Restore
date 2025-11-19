@interface HKEmergencyCardFooterTableItem
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (UIEdgeInsets)separatorInset;
- (id)_cell;
- (id)initInEditMode:(BOOL)a3;
- (void)setAttributedTitleForFooter:(id)a3;
@end

@implementation HKEmergencyCardFooterTableItem

- (id)initInEditMode:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKEmergencyCardFooterTableItem;
  return [(HKEmergencyCardTableItem *)&v4 initInEditMode:a3];
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

- (void)setAttributedTitleForFooter:(id)a3
{
  objc_storeStrong(&self->_attributedTitleForFooter, a3);
  v5 = a3;
  attributedTitleForFooter = self->_attributedTitleForFooter;
  v7 = [(HKEmergencyCardFooterCell *)self->_cell textLabel];
  [v7 setAttributedText:attributedTitleForFooter];
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

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  shouldInteractWithURLBlock = self->_shouldInteractWithURLBlock;
  if (shouldInteractWithURLBlock)
  {
    return shouldInteractWithURLBlock[2](shouldInteractWithURLBlock, a4);
  }

  else
  {
    return 1;
  }
}

@end