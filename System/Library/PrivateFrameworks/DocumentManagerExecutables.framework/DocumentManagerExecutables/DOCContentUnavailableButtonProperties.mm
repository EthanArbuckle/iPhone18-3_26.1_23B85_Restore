@interface DOCContentUnavailableButtonProperties
- (UIAction)primaryAction;
- (void)configurePlain;
- (void)setPrimaryAction:(id)a3;
@end

@implementation DOCContentUnavailableButtonProperties

- (void)configurePlain
{
  v4 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v3 = [(DOCContentUnavailableButtonProperties *)self asUIKit];
  [v3 setConfiguration:v4];
}

- (UIAction)primaryAction
{
  v2 = [(DOCContentUnavailableButtonProperties *)self asUIKit];
  v3 = [v2 primaryAction];

  return v3;
}

- (void)setPrimaryAction:(id)a3
{
  v4 = a3;
  v5 = [(DOCContentUnavailableButtonProperties *)self asUIKit];
  [v5 setPrimaryAction:v4];

  v8 = [v4 title];

  if ([v8 length])
  {
    v6 = [(DOCContentUnavailableButtonProperties *)self asUIKit];
    v7 = [v6 configuration];
    [v7 setTitle:v8];
  }
}

@end