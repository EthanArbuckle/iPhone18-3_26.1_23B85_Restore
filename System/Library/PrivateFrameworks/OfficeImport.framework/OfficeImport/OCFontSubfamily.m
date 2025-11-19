@interface OCFontSubfamily
+ (id)fontSubfamilyWithName:(id)a3 metadata:(id)a4;
- (OCFontSubfamily)initWithName:(id)a3 metadata:(id)a4;
@end

@implementation OCFontSubfamily

- (OCFontSubfamily)initWithName:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = OCFontSubfamily;
  v8 = [(OCFontSubfamily *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_metadata, a4);
  }

  return v8;
}

+ (id)fontSubfamilyWithName:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[OCFontSubfamily alloc] initWithName:v5 metadata:v6];

  return v7;
}

@end