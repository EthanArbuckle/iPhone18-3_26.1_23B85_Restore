@interface OCFontSubfamily
+ (id)fontSubfamilyWithName:(id)name metadata:(id)metadata;
- (OCFontSubfamily)initWithName:(id)name metadata:(id)metadata;
@end

@implementation OCFontSubfamily

- (OCFontSubfamily)initWithName:(id)name metadata:(id)metadata
{
  nameCopy = name;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = OCFontSubfamily;
  v8 = [(OCFontSubfamily *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_metadata, metadata);
  }

  return v8;
}

+ (id)fontSubfamilyWithName:(id)name metadata:(id)metadata
{
  nameCopy = name;
  metadataCopy = metadata;
  v7 = [[OCFontSubfamily alloc] initWithName:nameCopy metadata:metadataCopy];

  return v7;
}

@end