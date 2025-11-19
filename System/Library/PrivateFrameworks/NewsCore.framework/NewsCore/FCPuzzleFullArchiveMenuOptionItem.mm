@interface FCPuzzleFullArchiveMenuOptionItem
- (FCPuzzleFullArchiveMenuOptionItem)initWithTitle:(id)a3 icon:(id)a4 level:(unint64_t)a5 difficultyIndex:(int64_t)a6;
@end

@implementation FCPuzzleFullArchiveMenuOptionItem

- (FCPuzzleFullArchiveMenuOptionItem)initWithTitle:(id)a3 icon:(id)a4 level:(unint64_t)a5 difficultyIndex:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = FCPuzzleFullArchiveMenuOptionItem;
  v13 = [(FCPuzzleFullArchiveMenuOptionItem *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_title, a3);
    objc_storeStrong(&v14->_icon, a4);
    v14->_level = a5;
    v14->_difficultyIndex = a6;
  }

  return v14;
}

@end