@interface CLCppEncodableDataContainer
+ (id)containerWithObject:(void *)object cppDataEncoder:(id)encoder destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size;
- (CLCppEncodableDataContainer)initWithCoder:(id)coder;
- (CLCppEncodableDataContainer)initWithObject:(void *)object cppDataEncoder:(id)encoder destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLCppEncodableDataContainer

+ (id)containerWithObject:(void *)object cppDataEncoder:(id)encoder destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size
{
  destructorCopy = destructor;
  encoderCopy = encoder;
  v13 = [[CLCppEncodableDataContainer alloc] initWithObject:object cppDataEncoder:encoderCopy destructor:destructorCopy binaryVersion:version typeSize:size];

  return v13;
}

- (CLCppEncodableDataContainer)initWithObject:(void *)object cppDataEncoder:(id)encoder destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size
{
  encoderCopy = encoder;
  v16.receiver = self;
  v16.super_class = CLCppEncodableDataContainer;
  v13 = [(CLCppContainer *)&v16 initWithObject:object destructor:destructor binaryVersion:version typeSize:size];
  v14 = v13;
  if (v13)
  {
    [(CLCppEncodableDataContainer *)v13 setEncoder:encoderCopy];
  }

  return v14;
}

- (void)dealloc
{
  [(CLCppEncodableDataContainer *)self setSerialized:0];
  [(CLCppEncodableDataContainer *)self setCompatibilityInfo:0];
  [(CLCppEncodableDataContainer *)self setEncoder:0];
  v3.receiver = self;
  v3.super_class = CLCppEncodableDataContainer;
  [(CLCppContainer *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encoder = [(CLCppEncodableDataContainer *)self encoder];

  if (encoder)
  {
    encoder2 = [(CLCppEncodableDataContainer *)self encoder];
    (encoder2)[2](encoder2, coderCopy);
  }
}

- (CLCppEncodableDataContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CLCppEncodableDataContainer;
  v5 = [(CLCppContainer *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"serialized"];
    [(CLCppEncodableDataContainer *)v5 setSerialized:v6];

    v7 = [coderCopy decodeObjectForKey:@"compatibilityInfo"];
    [(CLCppEncodableDataContainer *)v5 setCompatibilityInfo:v7];
  }

  return v5;
}

@end