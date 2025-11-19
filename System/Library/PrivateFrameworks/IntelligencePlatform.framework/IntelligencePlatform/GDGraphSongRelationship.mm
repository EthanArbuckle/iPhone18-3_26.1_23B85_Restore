@interface GDGraphSongRelationship
- (GDGraphSongRelationship)initWithSongIdField:(id)a3 allSongIdField:(id)a4;
@end

@implementation GDGraphSongRelationship

- (GDGraphSongRelationship)initWithSongIdField:(id)a3 allSongIdField:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GDGraphSongRelationship;
  v9 = [(GDGraphSongRelationship *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_songId, a3);
    objc_storeStrong(&v10->_allSongId, a4);
  }

  return v10;
}

@end