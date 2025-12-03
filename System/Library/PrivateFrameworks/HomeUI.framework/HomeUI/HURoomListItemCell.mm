@interface HURoomListItemCell
- (HURoomListItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)roomName;
- (void)prepareForReuse;
- (void)setRoomName:(id)name;
@end

@implementation HURoomListItemCell

- (HURoomListItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v40[5] = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = HURoomListItemCell;
  v4 = [(HURoomListItemCell *)&v39 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v5;

    [(UILabel *)v4->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_nameLabel setFont:v7];

    contentView = [(HURoomListItemCell *)v4 contentView];
    [contentView addSubview:v4->_nameLabel];

    v27 = MEMORY[0x277CCAAD0];
    contentView2 = [(HURoomListItemCell *)v4 contentView];
    heightAnchor = [contentView2 heightAnchor];
    v36 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
    v40[0] = v36;
    nameLabel = [(HURoomListItemCell *)v4 nameLabel];
    leadingAnchor = [nameLabel leadingAnchor];
    contentView3 = [(HURoomListItemCell *)v4 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[1] = v30;
    nameLabel2 = [(HURoomListItemCell *)v4 nameLabel];
    trailingAnchor = [nameLabel2 trailingAnchor];
    contentView4 = [(HURoomListItemCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v40[2] = v23;
    nameLabel3 = [(HURoomListItemCell *)v4 nameLabel];
    centerYAnchor = [nameLabel3 centerYAnchor];
    contentView5 = [(HURoomListItemCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide3 centerYAnchor];
    v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v40[3] = v10;
    nameLabel4 = [(HURoomListItemCell *)v4 nameLabel];
    heightAnchor2 = [nameLabel4 heightAnchor];
    contentView6 = [(HURoomListItemCell *)v4 contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    heightAnchor3 = [layoutMarginsGuide4 heightAnchor];
    v16 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v40[4] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:5];
    [v27 activateConstraints:v17];
  }

  return v4;
}

- (void)prepareForReuse
{
  [(HURoomListItemCell *)self setRoomName:0];
  v3.receiver = self;
  v3.super_class = HURoomListItemCell;
  [(HURoomListItemCell *)&v3 prepareForReuse];
}

- (NSString)roomName
{
  nameLabel = [(HURoomListItemCell *)self nameLabel];
  text = [nameLabel text];

  return text;
}

- (void)setRoomName:(id)name
{
  nameCopy = name;
  nameLabel = [(HURoomListItemCell *)self nameLabel];
  [nameLabel setText:nameCopy];
}

@end