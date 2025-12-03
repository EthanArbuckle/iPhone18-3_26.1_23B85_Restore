@interface CDFCollectionItem
+ (id)itemWithPathURL:(id)l date:(id)date fileSize:(id)size;
- (CDFCollectionItem)initWithPathURL:(id)l date:(id)date fileSize:(id)size;
@end

@implementation CDFCollectionItem

- (CDFCollectionItem)initWithPathURL:(id)l date:(id)date fileSize:(id)size
{
  lCopy = l;
  dateCopy = date;
  sizeCopy = size;
  v17.receiver = self;
  v17.super_class = CDFCollectionItem;
  v12 = [(CDFCollectionItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_path, l);
    objc_storeStrong(&v13->_date, date);
    objc_storeStrong(&v13->_size, size);
    lastPathComponent = [lCopy lastPathComponent];
    name = v13->_name;
    v13->_name = lastPathComponent;
  }

  return v13;
}

+ (id)itemWithPathURL:(id)l date:(id)date fileSize:(id)size
{
  sizeCopy = size;
  dateCopy = date;
  lCopy = l;
  v10 = [[CDFCollectionItem alloc] initWithPathURL:lCopy date:dateCopy fileSize:sizeCopy];

  return v10;
}

@end