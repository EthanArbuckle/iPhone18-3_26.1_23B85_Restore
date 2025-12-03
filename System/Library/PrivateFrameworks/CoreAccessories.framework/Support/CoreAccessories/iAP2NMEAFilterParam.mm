@interface iAP2NMEAFilterParam
- (BOOL)isEqual:(id)equal;
- (iAP2NMEAFilterParam)initWithTypeParamID:(unsigned int)d andIntervalParamID:(unsigned int)iD andIntervalMinMs:(unsigned int)ms;
@end

@implementation iAP2NMEAFilterParam

- (iAP2NMEAFilterParam)initWithTypeParamID:(unsigned int)d andIntervalParamID:(unsigned int)iD andIntervalMinMs:(unsigned int)ms
{
  v9.receiver = self;
  v9.super_class = iAP2NMEAFilterParam;
  result = [(iAP2NMEAFilterParam *)&v9 init];
  if (result)
  {
    result->_nmeaTypeParamID = d;
    result->_nmeaIntervalParamID = iD;
    result->_nmeaIntervalMinMs = ms;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[iAP2NMEAFilterParam nmeaTypeParamID](self, "nmeaTypeParamID"), v5 == [equalCopy nmeaTypeParamID]) && (v6 = -[iAP2NMEAFilterParam nmeaIntervalParamID](self, "nmeaIntervalParamID"), v6 == objc_msgSend(equalCopy, "nmeaIntervalParamID")))
  {
    nmeaIntervalMinMs = [(iAP2NMEAFilterParam *)self nmeaIntervalMinMs];
    v8 = nmeaIntervalMinMs == [equalCopy nmeaIntervalMinMs];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end