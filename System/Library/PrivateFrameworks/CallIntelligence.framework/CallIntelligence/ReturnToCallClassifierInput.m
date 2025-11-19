@interface ReturnToCallClassifierInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation ReturnToCallClassifierInput

- (NSSet)featureNames
{
  sub_1D2EE39FC(&unk_1F4E91728);
  sub_1D2EE2F20(&unk_1F4E91748);
  v2 = sub_1D2EE4D68();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  if (sub_1D2EE4A68() == 1954047348 && v4 == 0xE400000000000000)
  {

LABEL_5:
    v6 = *self->text;
    v7 = *&self->text[8];

    v8 = sub_1D2EE4A38();

    v9 = [objc_opt_self() featureValueWithString_];

    goto LABEL_7;
  }

  v5 = sub_1D2EE5288();

  if (v5)
  {
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end