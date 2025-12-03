@interface BrightnessUpdate
- (BrightnessUpdate)initWithUpdateData:(id)data;
@end

@implementation BrightnessUpdate

- (BrightnessUpdate)initWithUpdateData:(id)data
{
  selfCopy = self;
  v22 = a2;
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = BrightnessUpdate;
  selfCopy = [(BrightnessUpdate *)&v20 init];
  if (selfCopy)
  {
    [objc_msgSend(dataCopy objectForKeyedSubscript:{@"ID", "floatValue"}];
    selfCopy->_ID = v3;
    [objc_msgSend(dataCopy objectForKeyedSubscript:{@"TimeOffset", "doubleValue"}];
    selfCopy->_timestampOffset = v4;
    v5 = [dataCopy objectForKeyedSubscript:@"SDR"];
    selfCopy->_sdr = v5;
    v6 = [dataCopy objectForKeyedSubscript:@"EDR"];
    selfCopy->_headroom = v6;
    v7 = [dataCopy objectForKeyedSubscript:@"limit"];
    selfCopy->_limit = v7;
    v8 = [dataCopy objectForKeyedSubscript:@"potentialHeadroom"];
    selfCopy->_potentialHeadroom = v8;
    v9 = [dataCopy objectForKeyedSubscript:@"referenceHeadroom"];
    selfCopy->_referenceHeadroom = v9;
    v10 = [dataCopy objectForKeyedSubscript:@"adaptationScale"];
    selfCopy->_adaptationScale = v10;
    v11 = [dataCopy objectForKeyedSubscript:@"ambient"];
    selfCopy->_ambient = v11;
    v12 = [dataCopy objectForKeyedSubscript:@"filteredAmbient"];
    selfCopy->_filteredAmbient = v12;
    v13 = [dataCopy objectForKeyedSubscript:@"contrastEnhancer"];
    selfCopy->_contrastEnhancer = v13;
    v14 = [dataCopy objectForKeyedSubscript:@"lowAmbientAdaptation"];
    selfCopy->_lowAmbientAdaptation = v14;
    v15 = [dataCopy objectForKeyedSubscript:@"highAmbientAdaptation"];
    selfCopy->_highAmbientAdaptation = v15;
    v16 = [dataCopy objectForKeyedSubscript:@"indicatorBrightness"];
    selfCopy->_indicatorBrightness = v16;
    v17 = [dataCopy objectForKeyedSubscript:@"indicatorBrightnessLimit"];
    selfCopy->_indicatorBrightnessLimit = v17;
    v18 = [dataCopy objectForKeyedSubscript:@"whitePoint"];
    selfCopy->_whitePoint = v18;
  }

  return selfCopy;
}

@end