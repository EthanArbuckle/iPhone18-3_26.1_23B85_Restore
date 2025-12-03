@interface MUIHighlightedMessage
- (BOOL)isGeneratedSummary;
- (EMMessageListItem)messageListItem;
- (MUIHighlightedMessage)initWithTopLine:(id)line isGeneratedSummary:(BOOL)summary messageListItem:(id)item;
- (NSAttributedString)topLine;
- (NSString)description;
- (NSString)sender;
- (int64_t)hash;
- (void)setSender:(id)sender;
@end

@implementation MUIHighlightedMessage

- (NSAttributedString)topLine
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214C0FEBC();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (EMMessageListItem)messageListItem
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214C0FF78();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (BOOL)isGeneratedSummary
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214C10028();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (NSString)sender
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214C100E4();
  MEMORY[0x277D82BD8](self);
  v5 = sub_214CCF544();

  return v5;
}

- (void)setSender:(id)sender
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](sender);
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCF564();
  sub_214C10290(v4, v5);
  MEMORY[0x277D82BD8](sender);
  MEMORY[0x277D82BD8](self);
}

- (MUIHighlightedMessage)initWithTopLine:(id)line isGeneratedSummary:(BOOL)summary messageListItem:(id)item
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](line);
  swift_unknownObjectRetain();
  v5 = sub_214CCD394();
  return sub_214C10D74(line, v5 & 1, item);
}

- (int64_t)hash
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUIHighlightedMessage.hash.getter();
  MEMORY[0x277D82BD8](self);
  return v5;
}

- (NSString)description
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIHighlightedMessage.description.getter();
  MEMORY[0x277D82BD8](self);
  v5 = sub_214CCF544();

  return v5;
}

@end