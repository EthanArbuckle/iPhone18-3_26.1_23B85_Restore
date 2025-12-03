@interface BinaryConfirmationSelectTableViewCell
- (_TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell)initWithCoder:(id)coder;
- (_TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation BinaryConfirmationSelectTableViewCell

- (_TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    v5 = sub_20CE13954();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  sub_20CDAA974(v5, v6);
  v8 = v7;

  return v8;
}

- (_TtC13HearingTestUI37BinaryConfirmationSelectTableViewCell)initWithCoder:(id)coder
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_20CDAAB14();
}

@end