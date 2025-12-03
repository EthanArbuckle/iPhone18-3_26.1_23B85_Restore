@interface CSCoreSpeechServicesAccessoryInfo
- (CSCoreSpeechServicesAccessoryInfo)init;
- (CSCoreSpeechServicesAccessoryInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSCoreSpeechServicesAccessoryInfo

- (CSCoreSpeechServicesAccessoryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CSCoreSpeechServicesAccessoryInfo;
  v5 = [(CSCoreSpeechServicesAccessoryInfo *)&v7 init];
  if (v5)
  {
    v5->_supportsJustSiri = [coderCopy decodeBoolForKey:@"sJS"];
    v5->_supportsAlwaysOnAccelerometer = [coderCopy decodeBoolForKey:@"sAlwaysOnAccelerometer"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  supportsJustSiri = self->_supportsJustSiri;
  coderCopy = coder;
  [coderCopy encodeBool:supportsJustSiri forKey:@"sJS"];
  [coderCopy encodeBool:self->_supportsAlwaysOnAccelerometer forKey:@"sAlwaysOnAccelerometer"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CSCoreSpeechServicesAccessoryInfo);
  [(CSCoreSpeechServicesAccessoryInfo *)v4 setSupportsJustSiri:self->_supportsJustSiri];
  [(CSCoreSpeechServicesAccessoryInfo *)v4 setSupportsAlwaysOnAccelerometer:self->_supportsAlwaysOnAccelerometer];
  return v4;
}

- (id)description
{
  v8[0] = @"sJS";
  v3 = [NSNumber numberWithBool:self->_supportsJustSiri];
  v8[1] = @"sAlwaysOnAccelerometer";
  v9[0] = v3;
  v4 = [NSNumber numberWithBool:self->_supportsAlwaysOnAccelerometer];
  v9[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [v5 description];

  return v6;
}

- (CSCoreSpeechServicesAccessoryInfo)init
{
  v3.receiver = self;
  v3.super_class = CSCoreSpeechServicesAccessoryInfo;
  result = [(CSCoreSpeechServicesAccessoryInfo *)&v3 init];
  if (result)
  {
    result->_supportsJustSiri = 0;
  }

  return result;
}

@end