@interface _EAROovToken
- (_EAROovToken)initWithOrthography:(id)a3 prons:(id)a4 frequency:(int64_t)a5;
@end

@implementation _EAROovToken

- (_EAROovToken)initWithOrthography:(id)a3 prons:(id)a4 frequency:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _EAROovToken;
  v11 = [(_EAROovToken *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_orthography, a3);
    objc_storeStrong(&v12->_prons, a4);
    v12->_frequency = a5;
  }

  return v12;
}

@end