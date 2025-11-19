@interface CDFCollectionItem
+ (id)itemWithPathURL:(id)a3 date:(id)a4 fileSize:(id)a5;
- (CDFCollectionItem)initWithPathURL:(id)a3 date:(id)a4 fileSize:(id)a5;
@end

@implementation CDFCollectionItem

- (CDFCollectionItem)initWithPathURL:(id)a3 date:(id)a4 fileSize:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CDFCollectionItem;
  v12 = [(CDFCollectionItem *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_path, a3);
    objc_storeStrong(&v13->_date, a4);
    objc_storeStrong(&v13->_size, a5);
    v14 = [v9 lastPathComponent];
    name = v13->_name;
    v13->_name = v14;
  }

  return v13;
}

+ (id)itemWithPathURL:(id)a3 date:(id)a4 fileSize:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CDFCollectionItem alloc] initWithPathURL:v9 date:v8 fileSize:v7];

  return v10;
}

@end