@interface JavaUtilEventObject
- (NSString)description;
- (void)dealloc;
@end

@implementation JavaUtilEventObject

- (NSString)description
{
  v3 = [-[JavaUtilEventObject getClass](self "getClass")];
  source = self->source_;
  return JreStrcat("$$@C", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilEventObject;
  [(JavaUtilEventObject *)&v3 dealloc];
}

@end