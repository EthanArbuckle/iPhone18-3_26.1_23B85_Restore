@interface _UIShareSubtitleTableViewCell
- (_UIShareSubtitleTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation _UIShareSubtitleTableViewCell

- (_UIShareSubtitleTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = _UIShareSubtitleTableViewCell;
  v4 = [(_UIShareSubtitleTableViewCell *)&v9 initWithStyle:3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(_UIShareSubtitleTableViewCell *)v4 detailTextLabel];
    [v6 setLineBreakMode:0];

    v7 = [(_UIShareSubtitleTableViewCell *)v5 detailTextLabel];
    [v7 setNumberOfLines:3];
  }

  return v5;
}

@end