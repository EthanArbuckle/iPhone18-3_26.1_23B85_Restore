@interface IPFeatureData
+ (IPFeatureData)featureDataWithType:(unint64_t)a3 value:(id)a4 matchRange:(_NSRange)a5;
- (NSMutableDictionary)contextDictionary;
- (id)description;
- (id)nGramMarker;
@end

@implementation IPFeatureData

+ (IPFeatureData)featureDataWithType:(unint64_t)a3 value:(id)a4 matchRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v8 = a4;
  v9 = objc_alloc_init(IPFeatureData);
  [(IPFeatureData *)v9 setType:a3];
  [(IPFeatureData *)v9 setValue:v8];

  [(IPFeature *)v9 setMatchRange:location, length];

  return v9;
}

- (NSMutableDictionary)contextDictionary
{
  contextDictionary = self->_contextDictionary;
  if (!contextDictionary)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_contextDictionary;
    self->_contextDictionary = v4;

    contextDictionary = self->_contextDictionary;
  }

  return contextDictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = IPFeatureData;
  v4 = [(IPFeature *)&v9 description];
  v5 = humanReadableFeatureType([(IPFeatureData *)self type]);
  v6 = [(IPFeatureData *)self value];
  v7 = [v3 stringWithFormat:@"%@ Type:%@ - Value: <%@>", v4, v5, v6];

  return v7;
}

- (id)nGramMarker
{
  v3 = [(IPFeatureData *)self type];
  if (v3 < 0xE && ((0x30FFu >> v3) & 1) != 0)
  {
    return off_278F22FB8[v3];
  }

  NSLog(&cfstr_FoundUnknownFe.isa, [(IPFeatureData *)self type]);
  return @"UNKNOWN_FEATURE";
}

@end