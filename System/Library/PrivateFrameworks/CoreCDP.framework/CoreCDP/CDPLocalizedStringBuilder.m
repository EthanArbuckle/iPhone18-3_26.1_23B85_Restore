@interface CDPLocalizedStringBuilder
+ (id)builderForKey:(id)a3;
+ (id)builderForKey:(id)a3 inTable:(id)a4;
- (id)addDeviceClass:(id)a3;
- (id)addSecretType:(unint64_t)a3;
- (id)addUnqualifiedDeviceClass:(id)a3;
- (id)currentKey;
@end

@implementation CDPLocalizedStringBuilder

+ (id)builderForKey:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CDPLocalizedStringBuilder);
  key = v4->_key;
  v4->_key = v3;

  return v4;
}

+ (id)builderForKey:(id)a3 inTable:(id)a4
{
  v6 = a4;
  v7 = [a1 builderForKey:a3];
  v8 = v7[2];
  v7[2] = v6;

  return v7;
}

- (id)addDeviceClass:(id)a3
{
  key = self->_key;
  v5 = _CDPSuffixForDeviceClass(a3);
  v6 = [(NSString *)key stringByAppendingString:v5];
  v7 = self->_key;
  self->_key = v6;

  return self;
}

- (id)addUnqualifiedDeviceClass:(id)a3
{
  key = self->_key;
  v5 = _CDPSuffixForUnqualifiedDeviceClass(a3);
  v6 = [(NSString *)key stringByAppendingString:v5];
  v7 = self->_key;
  self->_key = v6;

  return self;
}

- (id)addSecretType:(unint64_t)a3
{
  key = self->_key;
  if (a3 == 2)
  {
    v5 = @"_PASSWORD";
  }

  else
  {
    v5 = @"_PASSCODE";
  }

  v6 = [(NSString *)key stringByAppendingString:v5];
  v7 = self->_key;
  self->_key = v6;

  return self;
}

- (id)currentKey
{
  v2 = [(NSString *)self->_key copy];

  return v2;
}

@end