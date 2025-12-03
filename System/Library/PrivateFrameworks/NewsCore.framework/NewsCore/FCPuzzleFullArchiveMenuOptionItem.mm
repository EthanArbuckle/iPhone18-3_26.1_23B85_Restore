@interface FCPuzzleFullArchiveMenuOptionItem
- (FCPuzzleFullArchiveMenuOptionItem)initWithTitle:(id)title icon:(id)icon level:(unint64_t)level difficultyIndex:(int64_t)index;
@end

@implementation FCPuzzleFullArchiveMenuOptionItem

- (FCPuzzleFullArchiveMenuOptionItem)initWithTitle:(id)title icon:(id)icon level:(unint64_t)level difficultyIndex:(int64_t)index
{
  titleCopy = title;
  iconCopy = icon;
  v16.receiver = self;
  v16.super_class = FCPuzzleFullArchiveMenuOptionItem;
  v13 = [(FCPuzzleFullArchiveMenuOptionItem *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_title, title);
    objc_storeStrong(&v14->_icon, icon);
    v14->_level = level;
    v14->_difficultyIndex = index;
  }

  return v14;
}

@end