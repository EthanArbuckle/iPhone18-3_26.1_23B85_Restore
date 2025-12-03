@interface _UIShareSubtitleTableViewCell
- (_UIShareSubtitleTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation _UIShareSubtitleTableViewCell

- (_UIShareSubtitleTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = _UIShareSubtitleTableViewCell;
  v4 = [(_UIShareSubtitleTableViewCell *)&v9 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    detailTextLabel = [(_UIShareSubtitleTableViewCell *)v4 detailTextLabel];
    [detailTextLabel setLineBreakMode:0];

    detailTextLabel2 = [(_UIShareSubtitleTableViewCell *)v5 detailTextLabel];
    [detailTextLabel2 setNumberOfLines:3];
  }

  return v5;
}

@end