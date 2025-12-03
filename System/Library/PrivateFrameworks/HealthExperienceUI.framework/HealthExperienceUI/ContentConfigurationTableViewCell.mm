@interface ContentConfigurationTableViewCell
- (_TtC18HealthExperienceUI33ContentConfigurationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation ContentConfigurationTableViewCell

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  sub_1B9F65DE4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContentConfigurationTableViewCell();
  v13.receiver = self;
  v13.super_class = v10;
  selfCopy = self;
  [(ContentConfigurationTableViewCell *)&v13 setSelected:selectedCopy animated:animatedCopy];
  sub_1BA2BE2C0(selectedCopy, [(ContentConfigurationTableViewCell *)selfCopy isHighlighted], v9);
  v12 = sub_1BA4A4168();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  MEMORY[0x1BFAF1B90](v9);
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  sub_1B9F65DE4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContentConfigurationTableViewCell();
  v13.receiver = self;
  v13.super_class = v10;
  selfCopy = self;
  [(ContentConfigurationTableViewCell *)&v13 setHighlighted:highlightedCopy animated:animatedCopy];
  sub_1BA2BE2C0([(ContentConfigurationTableViewCell *)selfCopy isSelected], highlightedCopy, v9);
  v12 = sub_1BA4A4168();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  MEMORY[0x1BFAF1B90](v9);
}

- (_TtC18HealthExperienceUI33ContentConfigurationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = self + OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 4) = 0;
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
    v8 = self + OBJC_IVAR____TtC18HealthExperienceUI33ContentConfigurationTableViewCell_item;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 4) = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ContentConfigurationTableViewCell();
  v9 = [(ContentConfigurationTableViewCell *)&v11 initWithStyle:style reuseIdentifier:v7];

  return v9;
}

@end