@interface _CPLPrequeliteScopeIsEqual
+ (void)initialize;
- (_CPLPrequeliteScopeIsEqual)initWithIdentifier:(id)a3;
@end

@implementation _CPLPrequeliteScopeIsEqual

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [[NSData alloc] initWithBytes:"scopeIdentifier = ?" length:19];
    v3 = qword_1002D29C0;
    qword_1002D29C0 = v2;
  }
}

- (_CPLPrequeliteScopeIsEqual)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _CPLPrequeliteScopeIsEqual;
  v5 = [(_CPLPrequeliteScopeIsEqual *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

@end