@interface FeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation FeatureProvider

- (NSSet)featureNames
{
  sub_257BF3634(&unk_286905BD8);
  sub_257D7CB6C(&unk_286905BF8);
  v2 = sub_257ECFA60();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  if (sub_257ECF500() == 0x6567616D69 && v4 == 0xE500000000000000)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_257ED0640();
    sub_257ECC3F0();

    if (v6)
    {

      v5 = 0;
    }

    else
    {
      v7 = [objc_opt_self() featureValueWithPixelBuffer_];

      v5 = v7;
    }
  }

  return v5;
}

@end