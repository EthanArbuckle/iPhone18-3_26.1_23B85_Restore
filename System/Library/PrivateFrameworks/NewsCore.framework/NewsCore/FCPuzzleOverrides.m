@interface FCPuzzleOverrides
- (FCPuzzleOverrides)initWithTitle:(id)a3 subtitle:(id)a4 description:(id)a5 author:(id)a6 teaserClue:(id)a7 teaserAnswer:(id)a8 teaserInfo:(id)a9 teaserDirection:(id)a10 teaserNumber:(id)a11;
@end

@implementation FCPuzzleOverrides

- (FCPuzzleOverrides)initWithTitle:(id)a3 subtitle:(id)a4 description:(id)a5 author:(id)a6 teaserClue:(id)a7 teaserAnswer:(id)a8 teaserInfo:(id)a9 teaserDirection:(id)a10 teaserNumber:(id)a11
{
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = FCPuzzleOverrides;
  v19 = [(FCPuzzleOverrides *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, a3);
    objc_storeStrong(&v20->_subtitle, a4);
    objc_storeStrong(&v20->_puzzleDescription, a5);
    objc_storeStrong(&v20->_author, a6);
    objc_storeStrong(&v20->_teaserClue, a7);
    objc_storeStrong(&v20->_teaserAnswer, a8);
    objc_storeStrong(&v20->_teaserInfo, a9);
    objc_storeStrong(&v20->_teaserDirection, a10);
    objc_storeStrong(&v20->_teaserNumber, a11);
  }

  return v20;
}

@end