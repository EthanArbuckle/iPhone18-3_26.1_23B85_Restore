@interface FCPuzzlesGameCenterActivity
- (FCPuzzlesGameCenterActivity)initWithDictionary:(id)dictionary;
@end

@implementation FCPuzzlesGameCenterActivity

- (FCPuzzlesGameCenterActivity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FCPuzzlesGameCenterActivity;
  v5 = [(FCPuzzlesGameCenterActivity *)&v10 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = FCAppConfigurationStringValue(dictionaryCopy, @"identifier", 0);
  [(FCPuzzlesGameCenterActivity *)v5 setIdentifier:v6];

  identifier = [(FCPuzzlesGameCenterActivity *)v5 identifier];

  if (identifier)
  {
    v8 = FCAppConfigurationStringValue(dictionaryCopy, @"puzzleTypeID", 0);
    [(FCPuzzlesGameCenterActivity *)v5 setPuzzleTypeID:v8];

LABEL_4:
    identifier = v5;
  }

  return identifier;
}

@end