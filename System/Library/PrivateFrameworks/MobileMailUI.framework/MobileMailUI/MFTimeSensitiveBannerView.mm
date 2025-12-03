@interface MFTimeSensitiveBannerView
- (BOOL)showDescription;
- (unint64_t)category;
- (void)setCategory:(unint64_t)category;
- (void)setShowDescription:(BOOL)description;
- (void)updateWithCategory:(unint64_t)category showDescription:(BOOL)description;
@end

@implementation MFTimeSensitiveBannerView

- (unint64_t)category
{
  MEMORY[0x277D82BE0](self, a2);
  v4 = sub_214A173D4();
  MEMORY[0x277D82BD8](self);
  return v4;
}

- (void)setCategory:(unint64_t)category
{
  MEMORY[0x277D82BE0](self, a2);
  sub_214A17490(category);
  MEMORY[0x277D82BD8](self);
}

- (BOOL)showDescription
{
  MEMORY[0x277D82BE0](self, a2);
  sub_214A176A4();
  MEMORY[0x277D82BD8](self);
  return sub_214A1A4B4() & 1;
}

- (void)setShowDescription:(BOOL)description
{
  MEMORY[0x277D82BE0](self, a2);
  v3 = sub_214A1A4C4();
  sub_214A1776C(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

- (void)updateWithCategory:(unint64_t)category showDescription:(BOOL)description
{
  MEMORY[0x277D82BE0](self, a2);
  v4 = sub_214A1A4C4();
  sub_214A17B78(category, v4 & 1);
  MEMORY[0x277D82BD8](self);
}

@end