@interface BrightnessUpdate
- (BrightnessUpdate)initWithUpdateData:(id)a3;
@end

@implementation BrightnessUpdate

- (BrightnessUpdate)initWithUpdateData:(id)a3
{
  v23 = self;
  v22 = a2;
  v21 = a3;
  v20.receiver = self;
  v20.super_class = BrightnessUpdate;
  v23 = [(BrightnessUpdate *)&v20 init];
  if (v23)
  {
    [objc_msgSend(v21 objectForKeyedSubscript:{@"ID", "floatValue"}];
    v23->_ID = v3;
    [objc_msgSend(v21 objectForKeyedSubscript:{@"TimeOffset", "doubleValue"}];
    v23->_timestampOffset = v4;
    v5 = [v21 objectForKeyedSubscript:@"SDR"];
    v23->_sdr = v5;
    v6 = [v21 objectForKeyedSubscript:@"EDR"];
    v23->_headroom = v6;
    v7 = [v21 objectForKeyedSubscript:@"limit"];
    v23->_limit = v7;
    v8 = [v21 objectForKeyedSubscript:@"potentialHeadroom"];
    v23->_potentialHeadroom = v8;
    v9 = [v21 objectForKeyedSubscript:@"referenceHeadroom"];
    v23->_referenceHeadroom = v9;
    v10 = [v21 objectForKeyedSubscript:@"adaptationScale"];
    v23->_adaptationScale = v10;
    v11 = [v21 objectForKeyedSubscript:@"ambient"];
    v23->_ambient = v11;
    v12 = [v21 objectForKeyedSubscript:@"filteredAmbient"];
    v23->_filteredAmbient = v12;
    v13 = [v21 objectForKeyedSubscript:@"contrastEnhancer"];
    v23->_contrastEnhancer = v13;
    v14 = [v21 objectForKeyedSubscript:@"lowAmbientAdaptation"];
    v23->_lowAmbientAdaptation = v14;
    v15 = [v21 objectForKeyedSubscript:@"highAmbientAdaptation"];
    v23->_highAmbientAdaptation = v15;
    v16 = [v21 objectForKeyedSubscript:@"indicatorBrightness"];
    v23->_indicatorBrightness = v16;
    v17 = [v21 objectForKeyedSubscript:@"indicatorBrightnessLimit"];
    v23->_indicatorBrightnessLimit = v17;
    v18 = [v21 objectForKeyedSubscript:@"whitePoint"];
    v23->_whitePoint = v18;
  }

  return v23;
}

@end