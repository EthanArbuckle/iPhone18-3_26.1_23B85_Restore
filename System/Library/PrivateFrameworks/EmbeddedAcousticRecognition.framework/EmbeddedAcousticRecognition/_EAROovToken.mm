@interface _EAROovToken
- (_EAROovToken)initWithOrthography:(id)orthography prons:(id)prons frequency:(int64_t)frequency;
@end

@implementation _EAROovToken

- (_EAROovToken)initWithOrthography:(id)orthography prons:(id)prons frequency:(int64_t)frequency
{
  orthographyCopy = orthography;
  pronsCopy = prons;
  v14.receiver = self;
  v14.super_class = _EAROovToken;
  v11 = [(_EAROovToken *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_orthography, orthography);
    objc_storeStrong(&v12->_prons, prons);
    v12->_frequency = frequency;
  }

  return v12;
}

@end