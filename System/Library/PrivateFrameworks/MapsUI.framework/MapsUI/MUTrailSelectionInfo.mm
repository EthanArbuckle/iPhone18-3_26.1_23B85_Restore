@interface MUTrailSelectionInfo
- (MUTrailSelectionInfo)initWithTrailID:(unint64_t)d trailName:(id)name;
@end

@implementation MUTrailSelectionInfo

- (MUTrailSelectionInfo)initWithTrailID:(unint64_t)d trailName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = MUTrailSelectionInfo;
  v7 = [(MUTrailSelectionInfo *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MUTrailSelectionInfo *)v7 setTrailID:d];
    [(MUTrailSelectionInfo *)v8 setTrailName:nameCopy];
  }

  return v8;
}

@end