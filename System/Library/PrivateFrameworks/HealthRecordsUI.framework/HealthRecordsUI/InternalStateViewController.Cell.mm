@interface InternalStateViewController.Cell
- (_TtCC15HealthRecordsUI27InternalStateViewController4Cell)initWithCoder:(id)a3;
- (_TtCC15HealthRecordsUI27InternalStateViewController4Cell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation InternalStateViewController.Cell

- (_TtCC15HealthRecordsUI27InternalStateViewController4Cell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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

- (_TtCC15HealthRecordsUI27InternalStateViewController4Cell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for InternalStateViewController.Cell();
  v4 = a3;
  v5 = [(InternalStateViewController.Cell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end