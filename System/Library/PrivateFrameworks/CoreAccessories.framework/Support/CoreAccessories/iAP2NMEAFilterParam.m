@interface iAP2NMEAFilterParam
- (BOOL)isEqual:(id)a3;
- (iAP2NMEAFilterParam)initWithTypeParamID:(unsigned int)a3 andIntervalParamID:(unsigned int)a4 andIntervalMinMs:(unsigned int)a5;
@end

@implementation iAP2NMEAFilterParam

- (iAP2NMEAFilterParam)initWithTypeParamID:(unsigned int)a3 andIntervalParamID:(unsigned int)a4 andIntervalMinMs:(unsigned int)a5
{
  v9.receiver = self;
  v9.super_class = iAP2NMEAFilterParam;
  result = [(iAP2NMEAFilterParam *)&v9 init];
  if (result)
  {
    result->_nmeaTypeParamID = a3;
    result->_nmeaIntervalParamID = a4;
    result->_nmeaIntervalMinMs = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[iAP2NMEAFilterParam nmeaTypeParamID](self, "nmeaTypeParamID"), v5 == [v4 nmeaTypeParamID]) && (v6 = -[iAP2NMEAFilterParam nmeaIntervalParamID](self, "nmeaIntervalParamID"), v6 == objc_msgSend(v4, "nmeaIntervalParamID")))
  {
    v7 = [(iAP2NMEAFilterParam *)self nmeaIntervalMinMs];
    v8 = v7 == [v4 nmeaIntervalMinMs];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end