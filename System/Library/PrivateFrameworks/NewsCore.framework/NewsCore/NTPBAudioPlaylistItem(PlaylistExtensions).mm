@interface NTPBAudioPlaylistItem(PlaylistExtensions)
- (id)order;
- (void)copyWithOrder:()PlaylistExtensions;
- (void)writeToKeyValuePair:()PlaylistExtensions;
@end

@implementation NTPBAudioPlaylistItem(PlaylistExtensions)

- (void)writeToKeyValuePair:()PlaylistExtensions
{
  v4 = a3;
  [v4 setValueType:{objc_msgSend(objc_opt_class(), "keyValuePairType")}];
  [v4 setAudioPlaylistItem:a1];
}

- (id)order
{
  if ([a1 hasListOrder])
  {
    v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1, "listOrder")}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)copyWithOrder:()PlaylistExtensions
{
  v4 = a3;
  v5 = [a1 copy];
  v6 = v5;
  if (v4)
  {
    [v5 setListOrder:{objc_msgSend(v4, "longLongValue")}];
  }

  else
  {
    [v5 setListOrder:0];
    [v6 setHasListOrder:0];
  }

  return v6;
}

@end