@interface CLCppContainer
+ (id)containerWithObject:(void *)a3 destructor:(id)a4 binaryVersion:(unint64_t)a5 typeSize:(unint64_t)a6;
- (CLCppContainer)initWithCoder:(id)a3;
- (CLCppContainer)initWithObject:(void *)a3 destructor:(id)a4 binaryVersion:(unint64_t)a5 typeSize:(unint64_t)a6;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CLCppContainer

- (void)dealloc
{
  v3 = [(CLCppContainer *)self destructor];

  if (v3)
  {
    v4 = [(CLCppContainer *)self destructor];
    v4[2]();
  }

  [(CLCppContainer *)self setDestructor:0];
  v5.receiver = self;
  v5.super_class = CLCppContainer;
  [(CLCppContainer *)&v5 dealloc];
}

- (void)invalidate
{
  v3 = [(CLCppContainer *)self destructor];

  if (v3)
  {
    v4 = [(CLCppContainer *)self destructor];
    v4[2]();
  }

  [(CLCppContainer *)self setDestructor:0];
}

+ (id)containerWithObject:(void *)a3 destructor:(id)a4 binaryVersion:(unint64_t)a5 typeSize:(unint64_t)a6
{
  v9 = a4;
  v10 = [[CLCppContainer alloc] initWithObject:a3 destructor:v9 binaryVersion:a5 typeSize:a6];

  return v10;
}

- (CLCppContainer)initWithObject:(void *)a3 destructor:(id)a4 binaryVersion:(unint64_t)a5 typeSize:(unint64_t)a6
{
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CLCppContainer;
  v11 = [(CLCppContainer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CLCppContainer *)v11 setCppObjectPtr:a3];
    [(CLCppContainer *)v12 setDestructor:v10];
    v12->_binaryVersion = a5;
    v12->_sizeOfType = a6;
  }

  return v12;
}

- (CLCppContainer)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CLCppContainer;
  return [(CLCppContainer *)&v4 init];
}

@end