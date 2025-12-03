@interface GDGraphSongRelationship
- (GDGraphSongRelationship)initWithSongIdField:(id)field allSongIdField:(id)idField;
@end

@implementation GDGraphSongRelationship

- (GDGraphSongRelationship)initWithSongIdField:(id)field allSongIdField:(id)idField
{
  fieldCopy = field;
  idFieldCopy = idField;
  v12.receiver = self;
  v12.super_class = GDGraphSongRelationship;
  v9 = [(GDGraphSongRelationship *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_songId, field);
    objc_storeStrong(&v10->_allSongId, idField);
  }

  return v10;
}

@end