@interface FCPuzzlesGameCenterActivity
- (FCPuzzlesGameCenterActivity)initWithDictionary:(id)a3;
@end

@implementation FCPuzzlesGameCenterActivity

- (FCPuzzlesGameCenterActivity)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FCPuzzlesGameCenterActivity;
  v5 = [(FCPuzzlesGameCenterActivity *)&v10 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = FCAppConfigurationStringValue(v4, @"identifier", 0);
  [(FCPuzzlesGameCenterActivity *)v5 setIdentifier:v6];

  v7 = [(FCPuzzlesGameCenterActivity *)v5 identifier];

  if (v7)
  {
    v8 = FCAppConfigurationStringValue(v4, @"puzzleTypeID", 0);
    [(FCPuzzlesGameCenterActivity *)v5 setPuzzleTypeID:v8];

LABEL_4:
    v7 = v5;
  }

  return v7;
}

@end