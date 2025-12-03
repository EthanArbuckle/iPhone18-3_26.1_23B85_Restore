@interface InternalStateViewController.Cell
- (_TtCC15HealthRecordsUI27InternalStateViewController4Cell)initWithCoder:(id)coder;
- (_TtCC15HealthRecordsUI27InternalStateViewController4Cell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation InternalStateViewController.Cell

- (_TtCC15HealthRecordsUI27InternalStateViewController4Cell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_1D139016C();
    v5 = sub_1D139012C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for InternalStateViewController.Cell();
  v6 = [(InternalStateViewController.Cell *)&v8 initWithStyle:3 reuseIdentifier:v5];

  return v6;
}

- (_TtCC15HealthRecordsUI27InternalStateViewController4Cell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for InternalStateViewController.Cell();
  coderCopy = coder;
  v5 = [(InternalStateViewController.Cell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end