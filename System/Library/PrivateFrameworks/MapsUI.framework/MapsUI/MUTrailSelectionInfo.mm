@interface MUTrailSelectionInfo
- (MUTrailSelectionInfo)initWithTrailID:(unint64_t)a3 trailName:(id)a4;
@end

@implementation MUTrailSelectionInfo

- (MUTrailSelectionInfo)initWithTrailID:(unint64_t)a3 trailName:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MUTrailSelectionInfo;
  v7 = [(MUTrailSelectionInfo *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MUTrailSelectionInfo *)v7 setTrailID:a3];
    [(MUTrailSelectionInfo *)v8 setTrailName:v6];
  }

  return v8;
}

@end