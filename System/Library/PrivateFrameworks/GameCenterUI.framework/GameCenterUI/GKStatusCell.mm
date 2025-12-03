@interface GKStatusCell
- (GKStatusCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setStatus:(id)status;
@end

@implementation GKStatusCell

- (GKStatusCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = GKStatusCell;
  v3 = [(GKCollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _gkNewStandardInfoLabel = [(UICollectionReusableView *)v3 _gkNewStandardInfoLabel];
    statusLabel = v4->_statusLabel;
    v4->_statusLabel = _gkNewStandardInfoLabel;

    [(UILabel *)v4->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKStatusCell *)v4 addSubview:v4->_statusLabel];
    v7 = [MEMORY[0x277CCAAD0] constraintWithItem:v4->_statusLabel attribute:10 relatedBy:0 toItem:v4 attribute:10 multiplier:1.0 constant:0.0];
    [(GKStatusCell *)v4 addConstraint:v7];

    v8 = [MEMORY[0x277CCAAD0] constraintWithItem:v4->_statusLabel attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:0.0];
    [(GKStatusCell *)v4 addConstraint:v8];

    [(GKStatusCell *)v4 setStatus:&stru_28612D290];
  }

  return v4;
}

- (void)setStatus:(id)status
{
  v4 = MEMORY[0x277D0C8B0];
  statusCopy = status;
  textStyle = [v4 textStyle];
  caption = [textStyle caption];
  v7 = [statusCopy _gkAttributedStringByApplyingStyle:caption];

  [(UILabel *)self->_statusLabel setAttributedText:v7];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = GKStatusCell;
  [(GKCollectionViewCell *)&v2 prepareForReuse];
}

@end