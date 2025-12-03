@interface NSArray(ScopedIDs)
- (void)_gkUpdateInternalPlayersScopedIDs:()ScopedIDs;
@end

@implementation NSArray(ScopedIDs)

- (void)_gkUpdateInternalPlayersScopedIDs:()ScopedIDs
{
  v4 = a3;
  v5 = [self _gkMapWithBlock:&__block_literal_global_372];
  if ([v5 count])
  {
    _gkPlayersIDsFromInternals = [v5 _gkPlayersIDsFromInternals];
    v7 = +[GKPlayer gameBundleID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__NSArray_ScopedIDs___gkUpdateInternalPlayersScopedIDs___block_invoke_2;
    v8[3] = &unk_2785DFE68;
    v9 = v5;
    v10 = v4;
    [GKPlayer loadScopedIDsForPlayerIDs:_gkPlayersIDsFromInternals gameBundleID:v7 handler:v8];
  }

  else
  {
    v4[2](v4);
  }
}

@end