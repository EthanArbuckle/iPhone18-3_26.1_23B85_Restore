@interface ISStackedEffects
- (ISStackedEffects)initWithEffects:(id)a3;
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
@end

@implementation ISStackedEffects

- (ISStackedEffects)initWithEffects:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISStackedEffects;
  v6 = [(ISStackedEffects *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_effects, a3);
  }

  return v7;
}

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ISStackedEffects *)self effects];
  if (v8)
  {
    v9 = v8;
    v10 = [(ISStackedEffects *)self effects];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(ISStackedEffects *)self effects];
      v13 = [v12 firstObject];
      v14 = [v13 filterWithBackgroundImage:v6 inputImage:v7];

      v15 = [(ISStackedEffects *)self effects];
      v16 = [v15 count];

      if (v16 < 2)
      {
        v11 = v14;
      }

      else
      {
        v17 = 1;
        do
        {
          v18 = [(ISStackedEffects *)self effects];
          v19 = [v18 objectAtIndex:v17];
          v20 = [v14 outputImage];
          v11 = [v19 filterWithBackgroundImage:0 inputImage:v20];

          ++v17;
          v21 = [(ISStackedEffects *)self effects];
          v22 = [v21 count];

          v14 = v11;
        }

        while (v22 > v17);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end