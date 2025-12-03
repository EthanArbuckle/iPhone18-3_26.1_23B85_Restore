@interface JavaNetProxy
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaNetProxy

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  type = self->type_;
  if (type)
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:[(JavaLangEnum *)type description]];
  }

  [(JavaLangStringBuilder *)v3 appendWithNSString:@"@"];
  v5 = self->type_;
  if ((atomic_load_explicit(JavaNetProxy_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A084();
  }

  if (v5 != JavaNetProxy_TypeEnum_values_)
  {
    address = self->address_;
    if (address)
    {
      [(JavaLangStringBuilder *)v3 appendWithNSString:[(JavaNetSocketAddress *)address description]];
    }
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    goto LABEL_13;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (self->type_ != *(equal + 1))
  {
    return 0;
  }

  address = self->address_;
  if (!address)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v7 = *(equal + 2);

  return [(JavaNetSocketAddress *)address isEqual:v7];
}

- (unint64_t)hash
{
  type = self->type_;
  if (!type)
  {
    JreThrowNullPointerException();
  }

  v4 = [(JavaLangEnum *)type hash];
  address = self->address_;
  if (address)
  {
    v4 += [(JavaNetSocketAddress *)address hash];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetProxy;
  [(JavaNetProxy *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaNetProxy alloc];
    sub_1001A770C(v2);
    JreStrongAssignAndConsume(&JavaNetProxy_NO_PROXY_, v2);
    atomic_store(1u, JavaNetProxy__initialized);
  }
}

@end