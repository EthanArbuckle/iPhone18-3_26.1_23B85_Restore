@interface PADFacePoseModelInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation PADFacePoseModelInput

- (NSSet)featureNames
{
  sub_2456CA510(&unk_2858733B8);
  sub_2456CA678(&unk_2858733D8);
  v2 = sub_2456CB178();

  return v2;
}

- (id)featureValueForName:(id)name
{
  if (sub_2456CB008() == 0xD000000000000011 && 0x80000002456D0970 == v4)
  {

LABEL_5:
    v6 = *self->image_Placeholder;
    v7 = objc_opt_self();
    v8 = v6;
    featureValueWithPixelBuffer_ = [v7 featureValueWithPixelBuffer_];

    goto LABEL_7;
  }

  v5 = sub_2456CB538();

  if (v5)
  {
    goto LABEL_5;
  }

  featureValueWithPixelBuffer_ = 0;
LABEL_7:

  return featureValueWithPixelBuffer_;
}

@end