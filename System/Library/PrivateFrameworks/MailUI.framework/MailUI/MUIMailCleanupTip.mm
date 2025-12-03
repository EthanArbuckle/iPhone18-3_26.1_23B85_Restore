@interface MUIMailCleanupTip
- (NSString)message;
- (NSString)submitButtonLabel;
- (NSString)tipId;
- (NSString)title;
- (_TtC6MailUI17MUIMailCleanupTip)initWithTipId:(id)id title:(id)title message:(id)message submitButtonLabel:(id)label;
@end

@implementation MUIMailCleanupTip

- (NSString)tipId
{
  MEMORY[0x277D82BE0](self);
  MUIMailCleanupTip.tipId.getter();
  MEMORY[0x277D82BD8](self);
  v4 = sub_214CCF544();

  return v4;
}

- (NSString)title
{
  MEMORY[0x277D82BE0](self);
  MUIMailCleanupTip.title.getter();
  MEMORY[0x277D82BD8](self);
  v4 = sub_214CCF544();

  return v4;
}

- (NSString)message
{
  MEMORY[0x277D82BE0](self);
  MUIMailCleanupTip.message.getter();
  MEMORY[0x277D82BD8](self);
  v4 = sub_214CCF544();

  return v4;
}

- (NSString)submitButtonLabel
{
  MEMORY[0x277D82BE0](self);
  MUIMailCleanupTip.submitButtonLabel.getter();
  MEMORY[0x277D82BD8](self);
  v4 = sub_214CCF544();

  return v4;
}

- (_TtC6MailUI17MUIMailCleanupTip)initWithTipId:(id)id title:(id)title message:(id)message submitButtonLabel:(id)label
{
  MEMORY[0x277D82BE0](id);
  MEMORY[0x277D82BE0](title);
  MEMORY[0x277D82BE0](message);
  MEMORY[0x277D82BE0](label);
  v16 = sub_214CCF564();
  v17 = v6;
  v12 = sub_214CCF564();
  v13 = v7;
  v14 = sub_214CCF564();
  v15 = v8;
  v9 = sub_214CCF564();
  v22 = MUIMailCleanupTip.init(tipId:title:message:submitButtonLabel:)(v16, v17, v12, v13, v14, v15, v9, v10);
  MEMORY[0x277D82BD8](label);
  MEMORY[0x277D82BD8](message);
  MEMORY[0x277D82BD8](title);
  MEMORY[0x277D82BD8](id);
  return v22;
}

@end