@interface ContentConfigurationTableViewCell
- (_TtC18HealthExperienceUI33ContentConfigurationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation ContentConfigurationTableViewCell

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  sub_1B9F65DE4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContentConfigurationTableViewCell();
  v13.receiver = self;
  v13.super_class = v10;
  v11 = self;
  [(ContentConfigurationTableViewCell *)&v13 setSelected:v5 animated:v4];
  sub_1BA2BE2C0(v5, [(ContentConfigurationTableViewCell *)v11 isHighlighted], v9);
  v12 = sub_1BA4A4168();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  MEMORY[0x1BFAF1B90](v9);
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  sub_1B9F65DE4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContentConfigurationTableViewCell();
  v13.receiver = self;
  v13.super_class = v10;
  v11 = self;
  [(ContentConfigurationTableViewCell *)&v13 setHighlighted:v5 animated:v4];
  sub_1BA2BE2C0([(ContentConfigurationTableViewCell *)v11 isSelected], v5, v9);
  v12 = sub_1BA4A4168();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  MEMORY[0x1BFAF1B90](v9);
}

- (_TtC18HealthExperienceUI33ContentConfigurationTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v9 = [(ContentConfigurationTableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:v7];

  return v9;
}

@end