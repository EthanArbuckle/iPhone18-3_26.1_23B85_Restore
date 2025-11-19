@interface PKProvisionedPassBundle
- (id)_init;
@end

@implementation PKProvisionedPassBundle

- (id)_init
{
  v6.receiver = self;
  v6.super_class = PKProvisionedPassBundle;
  v2 = [(PKProvisionedPassBundle *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    provisionedPasses = v2->_provisionedPasses;
    v2->_provisionedPasses = v3;
  }

  return v2;
}

@end