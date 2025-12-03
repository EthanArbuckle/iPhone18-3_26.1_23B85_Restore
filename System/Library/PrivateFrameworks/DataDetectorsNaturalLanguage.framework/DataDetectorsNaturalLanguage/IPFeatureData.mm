@interface IPFeatureData
+ (IPFeatureData)featureDataWithType:(unint64_t)type value:(id)value matchRange:(_NSRange)range;
- (NSMutableDictionary)contextDictionary;
- (id)description;
- (id)nGramMarker;
@end

@implementation IPFeatureData

+ (IPFeatureData)featureDataWithType:(unint64_t)type value:(id)value matchRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  valueCopy = value;
  v9 = objc_alloc_init(IPFeatureData);
  [(IPFeatureData *)v9 setType:type];
  [(IPFeatureData *)v9 setValue:valueCopy];

  [(IPFeature *)v9 setMatchRange:location, length];

  return v9;
}

- (NSMutableDictionary)contextDictionary
{
  contextDictionary = self->_contextDictionary;
  if (!contextDictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_contextDictionary;
    self->_contextDictionary = dictionary;

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
  value = [(IPFeatureData *)self value];
  v7 = [v3 stringWithFormat:@"%@ Type:%@ - Value: <%@>", v4, v5, value];

  return v7;
}

- (id)nGramMarker
{
  type = [(IPFeatureData *)self type];
  if (type < 0xE && ((0x30FFu >> type) & 1) != 0)
  {
    return off_278F22FB8[type];
  }

  NSLog(&cfstr_FoundUnknownFe.isa, [(IPFeatureData *)self type]);
  return @"UNKNOWN_FEATURE";
}

@end