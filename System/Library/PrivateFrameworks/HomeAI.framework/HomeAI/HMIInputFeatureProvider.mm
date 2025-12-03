@interface HMIInputFeatureProvider
- (HMIInputFeatureProvider)initWithPixelBuffer:(__CVBuffer *)buffer inputName:(id)name;
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
- (void)dealloc;
@end

@implementation HMIInputFeatureProvider

- (HMIInputFeatureProvider)initWithPixelBuffer:(__CVBuffer *)buffer inputName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = HMIInputFeatureProvider;
  v8 = [(HMIInputFeatureProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_pixelBuffer = buffer;
    objc_storeStrong(&v8->_inputName, name);
    CVPixelBufferRetain(buffer);
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
  inputName = [(HMIInputFeatureProvider *)self inputName];
  v7[0] = inputName;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  inputName = [(HMIInputFeatureProvider *)self inputName];
  v6 = [nameCopy isEqualToString:inputName];

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