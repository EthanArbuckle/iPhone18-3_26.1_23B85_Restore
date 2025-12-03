@interface CDPLocalizedStringBuilder
+ (id)builderForKey:(id)key;
+ (id)builderForKey:(id)key inTable:(id)table;
- (id)addDeviceClass:(id)class;
- (id)addSecretType:(unint64_t)type;
- (id)addUnqualifiedDeviceClass:(id)class;
- (id)currentKey;
@end

@implementation CDPLocalizedStringBuilder

+ (id)builderForKey:(id)key
{
  keyCopy = key;
  v4 = objc_alloc_init(CDPLocalizedStringBuilder);
  key = v4->_key;
  v4->_key = keyCopy;

  return v4;
}

+ (id)builderForKey:(id)key inTable:(id)table
{
  tableCopy = table;
  v7 = [self builderForKey:key];
  v8 = v7[2];
  v7[2] = tableCopy;

  return v7;
}

- (id)addDeviceClass:(id)class
{
  key = self->_key;
  v5 = _CDPSuffixForDeviceClass(class);
  v6 = [(NSString *)key stringByAppendingString:v5];
  v7 = self->_key;
  self->_key = v6;

  return self;
}

- (id)addUnqualifiedDeviceClass:(id)class
{
  key = self->_key;
  v5 = _CDPSuffixForUnqualifiedDeviceClass(class);
  v6 = [(NSString *)key stringByAppendingString:v5];
  v7 = self->_key;
  self->_key = v6;

  return self;
}

- (id)addSecretType:(unint64_t)type
{
  key = self->_key;
  if (type == 2)
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