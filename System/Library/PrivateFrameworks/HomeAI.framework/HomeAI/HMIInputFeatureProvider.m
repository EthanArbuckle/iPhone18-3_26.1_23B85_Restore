@interface HMIInputFeatureProvider
- (HMIInputFeatureProvider)initWithPixelBuffer:(__CVBuffer *)a3 inputName:(id)a4;
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
- (void)dealloc;
@end

@implementation HMIInputFeatureProvider

- (HMIInputFeatureProvider)initWithPixelBuffer:(__CVBuffer *)a3 inputName:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMIInputFeatureProvider;
  v8 = [(HMIInputFeatureProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_pixelBuffer = a3;
    objc_storeStrong(&v8->_inputName, a4);
    CVPixelBufferRetain(a3);
  }

  return v9;
}

- (void)dealloc
{
  CVPixelBufferRelease([(HMIInputFeatureProvider *)self pixelBuffer]);
  v3.receiver = self;
  v3.super_class = HMIInputFeatureProvider;
  [(HMIInputFeatureProvider *)&v3 dealloc];
}

- (NSSet)featureNames
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HMIInputFeatureProvider *)self inputName];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  v5 = [(HMIInputFeatureProvider *)self inputName];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CBFEF8] featureValueWithPixelBuffer:{-[HMIInputFeatureProvider pixelBuffer](self, "pixelBuffer")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end