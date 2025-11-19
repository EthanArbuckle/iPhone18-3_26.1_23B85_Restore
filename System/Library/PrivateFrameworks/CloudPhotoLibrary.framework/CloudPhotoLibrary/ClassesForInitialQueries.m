@interface ClassesForInitialQueries
@end

@implementation ClassesForInitialQueries

void ___ClassesForInitialQueries_block_invoke()
{
  v9[8] = *MEMORY[0x1E69E9840];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v9[2] = objc_opt_class();
  v9[3] = objc_opt_class();
  v9[4] = objc_opt_class();
  v9[5] = objc_opt_class();
  v9[6] = objc_opt_class();
  v9[7] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:8];
  v1 = _ClassesForInitialQueries_classesForInitialQueriesInLibrary;
  _ClassesForInitialQueries_classesForInitialQueriesInLibrary = v0;

  v8 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v3 = _ClassesForInitialQueries_classesForInitialQueriesInMomentShare;
  _ClassesForInitialQueries_classesForInitialQueriesInMomentShare = v2;

  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v5 = _ClassesForInitialQueries_classesForInitialQueriesInCollectionShare;
  _ClassesForInitialQueries_classesForInitialQueriesInCollectionShare = v4;

  v6 = *MEMORY[0x1E69E9840];
}

@end