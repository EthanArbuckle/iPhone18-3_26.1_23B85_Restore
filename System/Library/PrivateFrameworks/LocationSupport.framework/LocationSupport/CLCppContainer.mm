@interface CLCppContainer
+ (id)containerWithObject:(void *)object destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size;
- (CLCppContainer)initWithCoder:(id)coder;
- (CLCppContainer)initWithObject:(void *)object destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CLCppContainer

- (void)dealloc
{
  destructor = [(CLCppContainer *)self destructor];

  if (destructor)
  {
    destructor2 = [(CLCppContainer *)self destructor];
    destructor2[2]();
  }

  [(CLCppContainer *)self setDestructor:0];
  v5.receiver = self;
  v5.super_class = CLCppContainer;
  [(CLCppContainer *)&v5 dealloc];
}

- (void)invalidate
{
  destructor = [(CLCppContainer *)self destructor];

  if (destructor)
  {
    destructor2 = [(CLCppContainer *)self destructor];
    destructor2[2]();
  }

  [(CLCppContainer *)self setDestructor:0];
}

+ (id)containerWithObject:(void *)object destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size
{
  destructorCopy = destructor;
  v10 = [[CLCppContainer alloc] initWithObject:object destructor:destructorCopy binaryVersion:version typeSize:size];

  return v10;
}

- (CLCppContainer)initWithObject:(void *)object destructor:(id)destructor binaryVersion:(unint64_t)version typeSize:(unint64_t)size
{
  destructorCopy = destructor;
  v14.receiver = self;
  v14.super_class = CLCppContainer;
  v11 = [(CLCppContainer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CLCppContainer *)v11 setCppObjectPtr:object];
    [(CLCppContainer *)v12 setDestructor:destructorCopy];
    v12->_binaryVersion = version;
    v12->_sizeOfType = size;
  }

  return v12;
}

- (CLCppContainer)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CLCppContainer;
  return [(CLCppContainer *)&v4 init];
}

@end