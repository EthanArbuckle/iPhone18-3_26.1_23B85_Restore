@interface MKAccountItem
- (MKAccountItem)initWithType:(id)type displayName:(id)name username:(id)username dataClasses:(id)classes;
@end

@implementation MKAccountItem

- (MKAccountItem)initWithType:(id)type displayName:(id)name username:(id)username dataClasses:(id)classes
{
  typeCopy = type;
  nameCopy = name;
  usernameCopy = username;
  classesCopy = classes;
  v17.receiver = self;
  v17.super_class = MKAccountItem;
  v14 = [(MKAccountItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(MKAccountItem *)v14 setType:typeCopy];
    [(MKAccountItem *)v15 setDisplayName:nameCopy];
    [(MKAccountItem *)v15 setUsername:usernameCopy];
    [(MKAccountItem *)v15 setDataClasses:classesCopy];
  }

  return v15;
}

@end