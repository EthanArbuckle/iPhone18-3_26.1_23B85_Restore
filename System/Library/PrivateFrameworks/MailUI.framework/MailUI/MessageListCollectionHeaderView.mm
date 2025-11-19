@interface MessageListCollectionHeaderView
- (BOOL)useSplitViewStyling;
- (MessageListCellLayoutValuesHelper)layoutValuesHelper;
- (NSString)title;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)applyImage:(id)a3 hasAvatars:(BOOL)a4;
- (void)prepareForReuse;
- (void)setLayoutValuesHelper:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUseSplitViewStyling:(BOOL)a3;
- (void)showSortButtonWithIsHidden:(BOOL)a3 selectedOption:(int64_t)a4;
@end

@implementation MessageListCollectionHeaderView

- (MessageListCellLayoutValuesHelper)layoutValuesHelper
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListCollectionHeaderView.layoutValuesHelper.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setLayoutValuesHelper:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  MessageListCollectionHeaderView.layoutValuesHelper.setter(a3);
  MEMORY[0x277D82BD8](self);
}

- (BOOL)useSplitViewStyling
{
  MEMORY[0x277D82BE0](self);
  MessageListCollectionHeaderView.useSplitViewStyling.getter();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (void)setUseSplitViewStyling:(BOOL)a3
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_214CCD394();
  MessageListCollectionHeaderView.useSplitViewStyling.setter(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

- (NSString)title
{
  MEMORY[0x277D82BE0](self);
  MessageListCollectionHeaderView.title.getter();
  v7 = v2;
  MEMORY[0x277D82BD8](self);
  if (v7)
  {
    v4 = sub_214CCF544();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTitle:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  if (a3)
  {
    v4 = sub_214CCF564();
    v5 = v3;
    MEMORY[0x277D82BD8](a3);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  MessageListCollectionHeaderView.title.setter(v6, v7);
  MEMORY[0x277D82BD8](self);
}

- (void)applyImage:(id)a3 hasAvatars:(BOOL)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v5 = sub_214CCD394();
  MessageListCollectionHeaderView.apply(image:hasAvatars:)(a3, v5 & 1);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)prepareForReuse
{
  MEMORY[0x277D82BE0](self);
  MessageListCollectionHeaderView.prepareForReuse()();
  MEMORY[0x277D82BD8](self);
}

- (void)showSortButtonWithIsHidden:(BOOL)a3 selectedOption:(int64_t)a4
{
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  MessageListCollectionHeaderView.showSortButton(isHidden:selectedOption:)(v4 & 1, a4);
  MEMORY[0x277D82BD8](self);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v13 = self;
  v12 = a3;
  v11 = sub_214CCDB84();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v10 = &v6 - v7;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCDB64();
  v5 = MessageListCollectionHeaderView.updateConfiguration(using:)(v10);
  (*(v8 + 8))(v10, v11, v5);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
}

@end