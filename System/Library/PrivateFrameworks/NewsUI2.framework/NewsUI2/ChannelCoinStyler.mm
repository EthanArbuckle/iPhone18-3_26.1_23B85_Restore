@interface ChannelCoinStyler
- (UIFont)tagTitleFont;
- (id)tagColorFor:(id)for;
@end

@implementation ChannelCoinStyler

- (UIFont)tagTitleFont
{
  v2 = sub_219BDCAF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF0CD4();
  sub_218A293AC();
  v6 = sub_219BF6BD4();
  (*(v3 + 104))(v5, *MEMORY[0x277D6D198], v2);
  v7 = sub_219BF0CB4();

  (*(v3 + 8))(v5, v2);

  return v7;
}

- (id)tagColorFor:(id)for
{
  tagColorFor_ = [*self->feedNavImageStyler tagColorFor_];

  return tagColorFor_;
}

@end