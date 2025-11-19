@interface CLCppEncodableDataContainer
+ (id)containerWithObject:(void *)a3 cppDataEncoder:(id)a4 destructor:(id)a5 binaryVersion:(unint64_t)a6 typeSize:(unint64_t)a7;
- (CLCppEncodableDataContainer)initWithCoder:(id)a3;
- (CLCppEncodableDataContainer)initWithObject:(void *)a3 cppDataEncoder:(id)a4 destructor:(id)a5 binaryVersion:(unint64_t)a6 typeSize:(unint64_t)a7;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLCppEncodableDataContainer

+ (id)containerWithObject:(void *)a3 cppDataEncoder:(id)a4 destructor:(id)a5 binaryVersion:(unint64_t)a6 typeSize:(unint64_t)a7
{
  v11 = a5;
  v12 = a4;
  v13 = [[CLCppEncodableDataContainer alloc] initWithObject:a3 cppDataEncoder:v12 destructor:v11 binaryVersion:a6 typeSize:a7];

  return v13;
}

- (CLCppEncodableDataContainer)initWithObject:(void *)a3 cppDataEncoder:(id)a4 destructor:(id)a5 binaryVersion:(unint64_t)a6 typeSize:(unint64_t)a7
{
  v12 = a4;
  v16.receiver = self;
  v16.super_class = CLCppEncodableDataContainer;
  v13 = [(CLCppContainer *)&v16 initWithObject:a3 destructor:a5 binaryVersion:a6 typeSize:a7];
  v14 = v13;
  if (v13)
  {
    [(CLCppEncodableDataContainer *)v13 setEncoder:v12];
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(CLCppEncodableDataContainer *)self encoder];

  if (v4)
  {
    v5 = [(CLCppEncodableDataContainer *)self encoder];
    (v5)[2](v5, v6);
  }
}

- (CLCppEncodableDataContainer)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLCppEncodableDataContainer;
  v5 = [(CLCppContainer *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"serialized"];
    [(CLCppEncodableDataContainer *)v5 setSerialized:v6];

    v7 = [v4 decodeObjectForKey:@"compatibilityInfo"];
    [(CLCppEncodableDataContainer *)v5 setCompatibilityInfo:v7];
  }

  return v5;
}

@end