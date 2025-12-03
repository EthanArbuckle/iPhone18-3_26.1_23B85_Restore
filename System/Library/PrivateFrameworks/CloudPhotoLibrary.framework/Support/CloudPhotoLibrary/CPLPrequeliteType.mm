@interface CPLPrequeliteType
+ (id)dataType;
+ (id)dateType;
+ (id)integerType;
+ (id)stringType;
- (CPLPrequeliteType)initWithTypeName:(const char *)name defaultValue:(id)value objcClass:(Class)class;
- (NSString)description;
- (id)_bindableValueForValue:(id)value;
- (id)_valueForBindableValue:(id)value;
- (id)rawInjectionForValue:(id)value;
@end

@implementation CPLPrequeliteType

+ (id)integerType
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015F688;
  block[3] = &unk_1002724F0;
  block[4] = self;
  if (qword_1002D2B88 != -1)
  {
    dispatch_once(&qword_1002D2B88, block);
  }

  v2 = qword_1002D2B80;

  return v2;
}

+ (id)dataType
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015F794;
  block[3] = &unk_1002724F0;
  block[4] = self;
  if (qword_1002D2B98 != -1)
  {
    dispatch_once(&qword_1002D2B98, block);
  }

  v2 = qword_1002D2B90;

  return v2;
}

+ (id)stringType
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015F89C;
  block[3] = &unk_1002724F0;
  block[4] = self;
  if (qword_1002D2BA8 != -1)
  {
    dispatch_once(&qword_1002D2BA8, block);
  }

  v2 = qword_1002D2BA0;

  return v2;
}

+ (id)dateType
{
  if (qword_1002D2BB8 != -1)
  {
    sub_1001BF794();
  }

  v3 = qword_1002D2BB0;

  return v3;
}

- (CPLPrequeliteType)initWithTypeName:(const char *)name defaultValue:(id)value objcClass:(Class)class
{
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = CPLPrequeliteType;
  v10 = [(CPLPrequeliteType *)&v14 init];
  if (v10)
  {
    v11 = [PQLRawInjection rawInjection:name length:strlen(name)];
    injection = v10->_injection;
    v10->_injection = v11;

    v10->_objcClass = class;
    objc_storeStrong(&v10->_defaultValue, value);
  }

  return v10;
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = [(PQLRawInjection *)self->_injection sql];
  v5 = [v3 initWithData:v4 encoding:4];
  v6 = [NSString stringWithFormat:@"<SQLType %@>", v5];

  return v6;
}

- (id)_bindableValueForValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objcClass = self->_objcClass;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = self->_objcClass;
          *buf = 138413058;
          selfCopy = self;
          v15 = 2112;
          v16 = v9;
          v17 = 2112;
          v18 = objc_opt_class();
          v19 = 2112;
          v20 = valueCopy;
          v10 = v18;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid value for %@ (%@): %@ '%@'", buf, 0x2Au);
        }
      }

      v11 = +[NSAssertionHandler currentHandler];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteUtilites.m"];
      [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:108 description:{@"Invalid value for %@ (%@): %@ '%@'", self, self->_objcClass, objc_opt_class(), valueCopy}];

      abort();
    }
  }

  return valueCopy;
}

- (id)_valueForBindableValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objcClass = self->_objcClass;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = self->_objcClass;
          *buf = 138413058;
          selfCopy = self;
          v15 = 2112;
          v16 = v9;
          v17 = 2112;
          v18 = objc_opt_class();
          v19 = 2112;
          v20 = valueCopy;
          v10 = v18;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid value for %@ (%@): %@ '%@'", buf, 0x2Au);
        }
      }

      v11 = +[NSAssertionHandler currentHandler];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteUtilites.m"];
      [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:113 description:{@"Invalid value for %@ (%@): %@ '%@'", self, self->_objcClass, objc_opt_class(), valueCopy}];

      abort();
    }
  }

  return valueCopy;
}

- (id)rawInjectionForValue:(id)value
{
  valueCopy = value;
  if ([(objc_class *)self->_objcClass isSubclassOfClass:objc_opt_class()])
  {
    sub_1001BF7A8(a2, self);
  }

  v6 = [(CPLPrequeliteType *)self _bindableValueForValue:valueCopy];

  objcClass = self->_objcClass;
  if (objcClass == objc_opt_class())
  {
    v11 = [PQLNameInjection nameWithString:v6];
  }

  else
  {
    v8 = [PQLRawInjection alloc];
    v9 = [v6 description];
    v10 = [v9 dataUsingEncoding:4];
    v11 = [v8 initWithData:v10];
  }

  return v11;
}

@end