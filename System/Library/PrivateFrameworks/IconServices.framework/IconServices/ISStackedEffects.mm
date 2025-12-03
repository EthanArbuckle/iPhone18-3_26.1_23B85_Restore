@interface ISStackedEffects
- (ISStackedEffects)initWithEffects:(id)effects;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISStackedEffects

- (ISStackedEffects)initWithEffects:(id)effects
{
  effectsCopy = effects;
  v9.receiver = self;
  v9.super_class = ISStackedEffects;
  v6 = [(ISStackedEffects *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_effects, effects);
  }

  return v7;
}

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  imageCopy = image;
  inputImageCopy = inputImage;
  effects = [(ISStackedEffects *)self effects];
  if (effects)
  {
    v9 = effects;
    effects2 = [(ISStackedEffects *)self effects];
    v11 = [effects2 count];

    if (v11)
    {
      effects3 = [(ISStackedEffects *)self effects];
      firstObject = [effects3 firstObject];
      v14 = [firstObject filterWithBackgroundImage:imageCopy inputImage:inputImageCopy];

      effects4 = [(ISStackedEffects *)self effects];
      v16 = [effects4 count];

      if (v16 < 2)
      {
        v11 = v14;
      }

      else
      {
        v17 = 1;
        do
        {
          effects5 = [(ISStackedEffects *)self effects];
          v19 = [effects5 objectAtIndex:v17];
          outputImage = [v14 outputImage];
          v11 = [v19 filterWithBackgroundImage:0 inputImage:outputImage];

          ++v17;
          effects6 = [(ISStackedEffects *)self effects];
          v22 = [effects6 count];

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