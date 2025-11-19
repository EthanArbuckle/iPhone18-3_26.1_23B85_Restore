@interface FCModifyAudioPlaylistCommand
- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4;
@end

@implementation FCModifyAudioPlaylistCommand

- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"dateAdded"];
  v8 = [v6 objectForKeyedSubscript:@"dateAdded"];
  v9 = [v7 compare:v8];
  if (v9 == 1)
  {
    v10 = [v5 objectForKeyedSubscript:@"articleID"];
    [v6 setObject:v10 forKeyedSubscript:@"articleID"];

    v11 = [v5 objectForKeyedSubscript:@"dateAdded"];
    [v6 setObject:v11 forKeyedSubscript:@"dateAdded"];

    v12 = [v5 objectForKeyedSubscript:@"order"];
    [v6 setObject:v12 forKeyedSubscript:@"order"];
  }

  return v9 == 1;
}

@end