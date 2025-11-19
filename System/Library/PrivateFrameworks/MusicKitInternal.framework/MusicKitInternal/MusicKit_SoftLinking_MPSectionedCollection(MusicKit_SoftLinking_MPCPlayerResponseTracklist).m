@interface MusicKit_SoftLinking_MPSectionedCollection(MusicKit_SoftLinking_MPCPlayerResponseTracklist)
- (void)enumeratePlayerItemsInSectionAtIndex:()MusicKit_SoftLinking_MPCPlayerResponseTracklist usingBlock:;
- (void)enumeratePlayerSectionsUsingBlock:()MusicKit_SoftLinking_MPCPlayerResponseTracklist;
@end

@implementation MusicKit_SoftLinking_MPSectionedCollection(MusicKit_SoftLinking_MPCPlayerResponseTracklist)

- (void)enumeratePlayerSectionsUsingBlock:()MusicKit_SoftLinking_MPCPlayerResponseTracklist
{
  v4 = a3;
  v5 = [a1 _underlyingSectionedCollection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __129__MusicKit_SoftLinking_MPSectionedCollection_MusicKit_SoftLinking_MPCPlayerResponseTracklist__enumeratePlayerSectionsUsingBlock___block_invoke;
  v7[3] = &unk_1E84C3DF8;
  v8 = v4;
  v6 = v4;
  [v5 enumerateSectionsUsingBlock:v7];
}

- (void)enumeratePlayerItemsInSectionAtIndex:()MusicKit_SoftLinking_MPCPlayerResponseTracklist usingBlock:
{
  v6 = a4;
  v7 = [a1 _underlyingSectionedCollection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __143__MusicKit_SoftLinking_MPSectionedCollection_MusicKit_SoftLinking_MPCPlayerResponseTracklist__enumeratePlayerItemsInSectionAtIndex_usingBlock___block_invoke;
  v9[3] = &unk_1E84C3DF8;
  v10 = v6;
  v8 = v6;
  [v7 enumerateItemsInSectionAtIndex:a3 usingBlock:v9];
}

@end