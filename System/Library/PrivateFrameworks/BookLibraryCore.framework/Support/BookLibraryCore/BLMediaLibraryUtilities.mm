@interface BLMediaLibraryUtilities
+ (id)pathOfAudiobookTrackWithStoreIdentifier:(id)identifier;
+ (void)_enumerateTracksMatchingPredicate:(id)predicate usingBlock:(id)block;
+ (void)enumerateTracksWithStorePlaylistIdentifier:(id)identifier usingBlock:(id)block;
@end

@implementation BLMediaLibraryUtilities

+ (id)pathOfAudiobookTrackWithStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000A149C;
  v16 = sub_1000A14AC;
  v17 = 0;
  v5 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyMediaType equalToValue:&off_100129A40];
  v6 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreItemID equalToValue:identifierCopy];
  v18[0] = v5;
  v18[1] = v6;
  v7 = [NSArray arrayWithObjects:v18 count:2];
  v8 = [ML3AllCompoundPredicate predicateMatchingPredicates:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A14B4;
  v11[3] = &unk_10011E598;
  v11[4] = &v12;
  [self _enumerateTracksMatchingPredicate:v8 usingBlock:v11];
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

+ (void)enumerateTracksWithStorePlaylistIdentifier:(id)identifier usingBlock:(id)block
{
  v6 = ML3TrackPropertyMediaType;
  blockCopy = block;
  identifierCopy = identifier;
  v9 = [ML3ComparisonPredicate predicateWithProperty:v6 equalToValue:&off_100129A40];
  v10 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStorePlaylistID equalToValue:identifierCopy];

  v13[0] = v9;
  v13[1] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:2];
  v12 = [ML3AllCompoundPredicate predicateMatchingPredicates:v11];

  [self _enumerateTracksMatchingPredicate:v12 usingBlock:blockCopy];
}

+ (void)_enumerateTracksMatchingPredicate:(id)predicate usingBlock:(id)block
{
  blockCopy = block;
  predicateCopy = predicate;
  v7 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v8 = [ML3Track queryWithLibrary:v7 predicate:predicateCopy];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A172C;
  v11[3] = &unk_10011E5C0;
  v12 = v7;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = v7;
  [v8 enumeratePersistentIDsUsingBlock:v11];
}

@end