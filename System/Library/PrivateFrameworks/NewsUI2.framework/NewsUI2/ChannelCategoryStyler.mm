@interface ChannelCategoryStyler
- (UIFont)tagTitleFont;
- (double)cornerRadius;
- (id)tagColorFor:(id)a3;
@end

@implementation ChannelCategoryStyler

- (double)cornerRadius
{
  v2 = sub_219BDCAF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF0CD4();
  (*(v3 + 104))(v5, *MEMORY[0x277D6D198], v2);
  sub_219BF0CC4();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  return v7 * 0.25;
}

- (UIFont)tagTitleFont
{
  v2 = [*self->feedNavImageStyler tagTitleFont];

  return v2;
}

- (id)tagColorFor:(id)a3
{
  v3 = [*self->feedNavImageStyler tagColorFor_];

  return v3;
}

@end