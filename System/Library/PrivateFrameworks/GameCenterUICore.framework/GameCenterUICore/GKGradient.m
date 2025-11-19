@interface GKGradient
+ (id)gradientWithColors:(id)a3 atLocations:(const double *)a4;
- (GKGradient)initWithColors:(id)a3 atLocations:(const double *)a4;
- (void)dealloc;
@end

@implementation GKGradient

- (GKGradient)initWithColors:(id)a3 atLocations:(const double *)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = GKGradient;
  v7 = [(GKGradient *)&v14 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__GKGradient_initWithColors_atLocations___block_invoke;
    v12[3] = &unk_27967F228;
    v13 = v8;
    v9 = v8;
    [v6 enumerateObjectsUsingBlock:v12];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v7->_CGGradient = CGGradientCreateWithColors(DeviceRGB, v9, a4);
    CFRelease(DeviceRGB);
  }

  return v7;
}

uint64_t __41__GKGradient_initWithColors_atLocations___block_invoke(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [a2 CGColor];

  return [v3 addObject:v5];
}

+ (id)gradientWithColors:(id)a3 atLocations:(const double *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithColors:v6 atLocations:a4];

  return v7;
}

- (void)dealloc
{
  CGGradient = self->_CGGradient;
  if (CGGradient)
  {
    CFRelease(CGGradient);
  }

  v4.receiver = self;
  v4.super_class = GKGradient;
  [(GKGradient *)&v4 dealloc];
}

@end