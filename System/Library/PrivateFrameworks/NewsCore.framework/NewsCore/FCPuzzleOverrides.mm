@interface FCPuzzleOverrides
- (FCPuzzleOverrides)initWithTitle:(id)title subtitle:(id)subtitle description:(id)description author:(id)author teaserClue:(id)clue teaserAnswer:(id)answer teaserInfo:(id)info teaserDirection:(id)self0 teaserNumber:(id)self1;
@end

@implementation FCPuzzleOverrides

- (FCPuzzleOverrides)initWithTitle:(id)title subtitle:(id)subtitle description:(id)description author:(id)author teaserClue:(id)clue teaserAnswer:(id)answer teaserInfo:(id)info teaserDirection:(id)self0 teaserNumber:(id)self1
{
  titleCopy = title;
  subtitleCopy = subtitle;
  descriptionCopy = description;
  authorCopy = author;
  clueCopy = clue;
  answerCopy = answer;
  infoCopy = info;
  directionCopy = direction;
  numberCopy = number;
  v30.receiver = self;
  v30.super_class = FCPuzzleOverrides;
  v19 = [(FCPuzzleOverrides *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v20->_subtitle, subtitle);
    objc_storeStrong(&v20->_puzzleDescription, description);
    objc_storeStrong(&v20->_author, author);
    objc_storeStrong(&v20->_teaserClue, clue);
    objc_storeStrong(&v20->_teaserAnswer, answer);
    objc_storeStrong(&v20->_teaserInfo, info);
    objc_storeStrong(&v20->_teaserDirection, direction);
    objc_storeStrong(&v20->_teaserNumber, number);
  }

  return v20;
}

@end