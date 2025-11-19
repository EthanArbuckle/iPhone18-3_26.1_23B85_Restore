@interface MKAccountItem
- (MKAccountItem)initWithType:(id)a3 displayName:(id)a4 username:(id)a5 dataClasses:(id)a6;
@end

@implementation MKAccountItem

- (MKAccountItem)initWithType:(id)a3 displayName:(id)a4 username:(id)a5 dataClasses:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = MKAccountItem;
  v14 = [(MKAccountItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(MKAccountItem *)v14 setType:v10];
    [(MKAccountItem *)v15 setDisplayName:v11];
    [(MKAccountItem *)v15 setUsername:v12];
    [(MKAccountItem *)v15 setDataClasses:v13];
  }

  return v15;
}

@end