@interface IMBrand
+ (id)brandWithBSBrand:(id)a3;
+ (id)placeholderNameForBrandURI:(id)a3;
- (id)_init;
- (void)_setBrand:(id)a3;
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

+ (id)placeholderNameForBrandURI:(id)a3
{
  if (!MEMORY[0x1AC570A30](a3, a2))
  {
    return a3;
  }

  if (qword_1EB30B6E8 != -1)
  {
    sub_1A88C5A9C();
  }

  v4 = qword_1EB30B6E0;

  return MEMORY[0x1EEE66B58](v4, sel_placeholderName);
}

+ (id)brandWithBSBrand:(id)a3
{
  if (qword_1EB30B6E8 != -1)
  {
    sub_1A88C5A9C();
  }

  v4 = [[_IMBSBrand alloc] _initWithBSBrand:a3];

  return v4;
}

- (void)_setBrand:(id)a3
{
  brand = self->_brand;
  if (brand != a3)
  {

    self->_brand = a3;
  }
}

@end