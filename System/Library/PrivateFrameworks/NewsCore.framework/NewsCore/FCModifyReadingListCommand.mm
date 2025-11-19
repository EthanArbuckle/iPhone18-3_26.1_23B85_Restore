@interface FCModifyReadingListCommand
- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4;
@end

@implementation FCModifyReadingListCommand

- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"dateAdded"];
  v8 = [v6 objectForKeyedSubscript:@"dateAdded"];
  v9 = [v7 compare:v8];
  if (v9 == 1)
  {
    v10 = [v5 objectForKeyedSubscript:@"dateAdded"];
    [v6 setObject:v10 forKeyedSubscript:@"dateAdded"];

    v11 = [v5 objectForKeyedSubscript:@"articleID"];
    [v6 setObject:v11 forKeyedSubscript:@"articleID"];

    v12 = [v5 objectForKeyedSubscript:@"origin"];
    [v6 setObject:v12 forKeyedSubscript:@"origin"];
  }

  return v9 == 1;
}

@end