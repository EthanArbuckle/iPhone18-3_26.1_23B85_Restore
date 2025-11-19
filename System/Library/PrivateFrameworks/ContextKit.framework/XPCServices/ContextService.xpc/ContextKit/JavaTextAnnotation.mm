@interface JavaTextAnnotation
- (id)description;
- (void)dealloc;
@end

@implementation JavaTextAnnotation

- (id)description
{
  v3 = [-[JavaTextAnnotation getClass](self "getClass")];
  value = self->value_;
  return JreStrcat("$$@C", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextAnnotation;
  [(JavaTextAnnotation *)&v3 dealloc];
}

@end