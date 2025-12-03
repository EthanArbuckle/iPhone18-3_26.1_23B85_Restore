@interface MessageListCollectionHeaderView
- (BOOL)useSplitViewStyling;
- (MessageListCellLayoutValuesHelper)layoutValuesHelper;
- (NSString)title;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)applyImage:(id)image hasAvatars:(BOOL)avatars;
- (void)prepareForReuse;
- (void)setLayoutValuesHelper:(id)helper;
- (void)setTitle:(id)title;
- (void)setUseSplitViewStyling:(BOOL)styling;
- (void)showSortButtonWithIsHidden:(BOOL)hidden selectedOption:(int64_t)option;
@end

@implementation MessageListCollectionHeaderView

- (MessageListCellLayoutValuesHelper)layoutValuesHelper
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListCollectionHeaderView.layoutValuesHelper.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setLayoutValuesHelper:(id)helper
{
  MEMORY[0x277D82BE0](helper);
  MEMORY[0x277D82BE0](self);
  MessageListCollectionHeaderView.layoutValuesHelper.setter(helper);
  MEMORY[0x277D82BD8](self);
}

- (BOOL)useSplitViewStyling
{
  MEMORY[0x277D82BE0](self);
  MessageListCollectionHeaderView.useSplitViewStyling.getter();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (void)setUseSplitViewStyling:(BOOL)styling
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

- (void)setTitle:(id)title
{
  MEMORY[0x277D82BE0](title);
  MEMORY[0x277D82BE0](self);
  if (title)
  {
    v4 = sub_214CCF564();
    v5 = v3;
    MEMORY[0x277D82BD8](title);
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

- (void)applyImage:(id)image hasAvatars:(BOOL)avatars
{
  MEMORY[0x277D82BE0](image);
  MEMORY[0x277D82BE0](self);
  v5 = sub_214CCD394();
  MessageListCollectionHeaderView.apply(image:hasAvatars:)(image, v5 & 1);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](image);
}

- (void)prepareForReuse
{
  MEMORY[0x277D82BE0](self);
  MessageListCollectionHeaderView.prepareForReuse()();
  MEMORY[0x277D82BD8](self);
}

- (void)showSortButtonWithIsHidden:(BOOL)hidden selectedOption:(int64_t)option
{
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  MessageListCollectionHeaderView.showSortButton(isHidden:selectedOption:)(v4 & 1, option);
  MEMORY[0x277D82BD8](self);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  selfCopy = self;
  stateCopy = state;
  v11 = sub_214CCDB84();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](stateCopy);
  v10 = &v6 - v7;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCDB64();
  v5 = MessageListCollectionHeaderView.updateConfiguration(using:)(v10);
  (*(v8 + 8))(v10, v11, v5);
  MEMORY[0x277D82BD8](stateCopy);
  MEMORY[0x277D82BD8](selfCopy);
}

@end