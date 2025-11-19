@interface DOCUIContentUnavailableShim
+ (Class)implClass;
+ (id)instanceWrappingImpl:(id)a3;
- (DOCUIContentUnavailableShim)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DOCUIContentUnavailableShim

+ (Class)implClass
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"DOCContentUnavailableShim.m" lineNumber:31 description:{@"Subclass %@ must implement +implClass", objc_opt_class()}];

  return 0;
}

+ (id)instanceWrappingImpl:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(objc_opt_class());
    objc_storeStrong(v5 + 1, a3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (DOCUIContentUnavailableShim)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_msgSend(objc_opt_class() "implClass"))];

  if (v5)
  {
    v6 = [objc_opt_class() instanceWrappingImpl:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSCopying *)self->_impl copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

@end