@interface FeedbackViewModelHelper
- (NSArray)selectedMailboxes;
- (_TtC6MailUI23FeedbackViewModelHelper)initWithSelectedBucket:(int64_t)bucket selectedMailboxes:(id)mailboxes;
- (int64_t)selectedBucket;
- (void)setSelectedBucket:(int64_t)bucket;
- (void)setSelectedMailboxes:(id)mailboxes;
@end

@implementation FeedbackViewModelHelper

- (int64_t)selectedBucket
{
  MEMORY[0x277D82BE0](self);
  v4 = FeedbackViewModelHelper.selectedBucket.getter();
  MEMORY[0x277D82BD8](self);
  return v4;
}

- (void)setSelectedBucket:(int64_t)bucket
{
  MEMORY[0x277D82BE0](self);
  sub_214B89CDC(bucket);
  MEMORY[0x277D82BD8](self);
}

- (NSArray)selectedMailboxes
{
  MEMORY[0x277D82BE0](self);
  v6 = FeedbackViewModelHelper.selectedMailboxes.getter();
  MEMORY[0x277D82BD8](self);
  if (v6)
  {
    sub_214A63684();
    v3 = sub_214CCF7D4();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSelectedMailboxes:(id)mailboxes
{
  MEMORY[0x277D82BE0](mailboxes);
  MEMORY[0x277D82BE0](self);
  if (mailboxes)
  {
    sub_214A63684();
    v3 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](mailboxes);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  sub_214B89F44(v4);
  MEMORY[0x277D82BD8](self);
}

- (_TtC6MailUI23FeedbackViewModelHelper)initWithSelectedBucket:(int64_t)bucket selectedMailboxes:(id)mailboxes
{
  MEMORY[0x277D82BE0](mailboxes);
  if (mailboxes)
  {
    sub_214A63684();
    v5 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](mailboxes);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return FeedbackViewModelHelper.init(selectedBucket:selectedMailboxes:)(bucket, v6);
}

@end