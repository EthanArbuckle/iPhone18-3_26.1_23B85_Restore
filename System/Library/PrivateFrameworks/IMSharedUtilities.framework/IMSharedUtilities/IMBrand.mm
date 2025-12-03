@interface IMBrand
+ (id)brandWithBSBrand:(id)brand;
+ (id)placeholderNameForBrandURI:(id)i;
- (id)_init;
- (void)_setBrand:(id)brand;
- (void)dealloc;
@end

@implementation IMBrand

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMBrand;
  [(IMBrand *)&v3 dealloc];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = IMBrand;
  return [(IMBrand *)&v3 init];
}

+ (id)placeholderNameForBrandURI:(id)i
{
  if (!MEMORY[0x1AC570A30](i, a2))
  {
    return i;
  }

  if (qword_1EB30B6E8 != -1)
  {
    sub_1A88C5A9C();
  }

  v4 = qword_1EB30B6E0;

  return MEMORY[0x1EEE66B58](v4, sel_placeholderName);
}

+ (id)brandWithBSBrand:(id)brand
{
  if (qword_1EB30B6E8 != -1)
  {
    sub_1A88C5A9C();
  }

  v4 = [[_IMBSBrand alloc] _initWithBSBrand:brand];

  return v4;
}

- (void)_setBrand:(id)brand
{
  brand = self->_brand;
  if (brand != brand)
  {

    self->_brand = brand;
  }
}

@end