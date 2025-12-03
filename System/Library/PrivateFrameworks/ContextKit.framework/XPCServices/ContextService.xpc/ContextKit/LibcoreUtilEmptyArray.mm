@interface LibcoreUtilEmptyArray
+ (void)initialize;
@end

@implementation LibcoreUtilEmptyArray

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_BOOLEAN_, [IOSBooleanArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_BYTE_, [IOSByteArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_CHAR_, [IOSCharArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_DOUBLE_, [IOSDoubleArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_INT_, [IOSIntArray newArrayWithLength:0]);
    v2 = [IOSObjectArray newArrayWithLength:0 type:IOSClass_class_()];
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_CLASS_, v2);
    v3 = [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()];
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_OBJECT_, v3);
    v4 = [IOSObjectArray newArrayWithLength:0 type:NSString_class_()];
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_STRING_, v4);
    v5 = [IOSObjectArray newArrayWithLength:0 type:JavaLangThrowable_class_()];
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_THROWABLE_, v5);
    v6 = [IOSObjectArray newArrayWithLength:0 type:JavaLangStackTraceElement_class_()];
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_STACK_TRACE_ELEMENT_, v6);
    v7 = [IOSObjectArray newArrayWithLength:0 type:JavaLangReflectType_class_()];
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_TYPE_, v7);
    v8 = [IOSObjectArray newArrayWithLength:0 type:JavaLangReflectTypeVariable_class_()];
    JreStrongAssignAndConsume(&LibcoreUtilEmptyArray_TYPE_VARIABLE_, v8);
    atomic_store(1u, LibcoreUtilEmptyArray__initialized);
  }
}

@end