@interface LoadingTableViewCell
- (_TtC15HealthRecordsUI20LoadingTableViewCell)init;
- (_TtC15HealthRecordsUI20LoadingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation LoadingTableViewCell

- (_TtC15HealthRecordsUI20LoadingTableViewCell)init
{
  v3 = sub_1D139012C();
  v4 = [(LoadingTableViewCell *)self initWithStyle:0 reuseIdentifier:v3];

  return v4;
}

- (_TtC15HealthRecordsUI20LoadingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1D139016C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D10710E8(style, identifier, v6);
}

@end