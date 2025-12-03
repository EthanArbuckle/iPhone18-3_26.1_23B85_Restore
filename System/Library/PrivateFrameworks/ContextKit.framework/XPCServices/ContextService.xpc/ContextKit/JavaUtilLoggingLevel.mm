@interface JavaUtilLoggingLevel
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (id)getLocalizedName;
- (id)readResolve;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
@end

@implementation JavaUtilLoggingLevel

- (id)readResolve
{
  v3 = qword_100554F98;
  objc_sync_enter(qword_100554F98);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = qword_100554F98;
  if (!qword_100554F98)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v5 = [qword_100554F98 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        selfCopy = *(*(&v11 + 1) + 8 * i);
        if (!selfCopy)
        {
          goto LABEL_16;
        }

        if (self->value_ == selfCopy->value_)
        {
          name = self->name_;
          if (!name)
          {
            goto LABEL_16;
          }

          if ([(NSString *)name isEqual:selfCopy->name_, v11]&& (LibcoreUtilObjects_equalWithId_withId_(self->resourceBundleName_, selfCopy->resourceBundleName_) & 1) != 0)
          {
            goto LABEL_15;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [qword_100554F98 addWithId:{self, v11}];
  selfCopy = self;
LABEL_15:
  objc_sync_exit(v3);
  return selfCopy;
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    JreThrowNullPointerException();
  }

  [stream defaultReadObject];
  resourceBundleName = self->resourceBundleName_;
  if (resourceBundleName)
  {
    BundleWithNSString = JavaUtilResourceBundle_getBundleWithNSString_(resourceBundleName);
    JreStrongAssign(&self->rb_, BundleWithNSString);
  }
}

- (id)getLocalizedName
{
  rb = self->rb_;
  name = self->name_;
  if (rb)
  {
    return [(JavaUtilResourceBundle *)rb getStringWithNSString:name];
  }

  return name;
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
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(equal + 4) == self->value_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilLoggingLevel;
  [(JavaUtilLoggingLevel *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaUtilArrayList_initWithInt_(9);
    JreStrongAssignAndConsume(&qword_100554F98, v2);
    v3 = [JavaUtilLoggingLevel alloc];
    JavaUtilLoggingLevel_initWithNSString_withInt_withNSString_(v3, @"OFF", 0x7FFFFFFF, 0);
    JreStrongAssignAndConsume(&JavaUtilLoggingLevel_OFF_, v3);
    v4 = [JavaUtilLoggingLevel alloc];
    JavaUtilLoggingLevel_initWithNSString_withInt_withNSString_(v4, @"SEVERE", 1000, 0);
    JreStrongAssignAndConsume(&JavaUtilLoggingLevel_SEVERE_, v4);
    v5 = [JavaUtilLoggingLevel alloc];
    JavaUtilLoggingLevel_initWithNSString_withInt_withNSString_(v5, @"WARNING", 900, 0);
    JreStrongAssignAndConsume(&JavaUtilLoggingLevel_WARNING_, v5);
    v6 = [JavaUtilLoggingLevel alloc];
    JavaUtilLoggingLevel_initWithNSString_withInt_withNSString_(v6, @"INFO", 800, 0);
    JreStrongAssignAndConsume(&JavaUtilLoggingLevel_INFO_, v6);
    v7 = [JavaUtilLoggingLevel alloc];
    JavaUtilLoggingLevel_initWithNSString_withInt_withNSString_(v7, @"CONFIG", 700, 0);
    JreStrongAssignAndConsume(&JavaUtilLoggingLevel_CONFIG_, v7);
    v8 = [JavaUtilLoggingLevel alloc];
    JavaUtilLoggingLevel_initWithNSString_withInt_withNSString_(v8, @"FINE", 500, 0);
    JreStrongAssignAndConsume(&JavaUtilLoggingLevel_FINE_, v8);
    v9 = [JavaUtilLoggingLevel alloc];
    JavaUtilLoggingLevel_initWithNSString_withInt_withNSString_(v9, @"FINER", 400, 0);
    JreStrongAssignAndConsume(&JavaUtilLoggingLevel_FINER_, v9);
    v10 = [JavaUtilLoggingLevel alloc];
    JavaUtilLoggingLevel_initWithNSString_withInt_withNSString_(v10, @"FINEST", 300, 0);
    JreStrongAssignAndConsume(&JavaUtilLoggingLevel_FINEST_, v10);
    v11 = [JavaUtilLoggingLevel alloc];
    JavaUtilLoggingLevel_initWithNSString_withInt_withNSString_(v11, @"ALL", 0x80000000, 0);
    JreStrongAssignAndConsume(&JavaUtilLoggingLevel_ALL_, v11);
    atomic_store(1u, JavaUtilLoggingLevel__initialized);
  }
}

@end