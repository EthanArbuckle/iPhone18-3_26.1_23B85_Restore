@interface LibcoreIcuTimeZoneNames_ZoneStringsCache
- (id)createWithId:(id)id;
- (void)dealloc;
@end

@implementation LibcoreIcuTimeZoneNames_ZoneStringsCache

- (id)createWithId:(id)id
{
  JavaLangSystem_currentTimeMillis();
  if ((atomic_load_explicit(LibcoreIcuTimeZoneNames__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001AE49C();
  }

  if (!qword_100554C90)
  {
    goto LABEL_18;
  }

  v19[0] = *(qword_100554C90 + 8);
  v19[1] = 5;
  v5 = [IOSObjectArray arrayWithDimensions:2 lengths:v19 type:NSString_class_()];
  for (i = 0; ; IOSObjectArray_Set(v8, 0, *(qword_100554C90 + 24 + 8 * i++)))
  {
    if ((atomic_load_explicit(LibcoreIcuTimeZoneNames__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001AE4A8();
    }

    if (i >= *(qword_100554C90 + 8))
    {
      break;
    }

    size = v5->super.size_;
    if (i >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, i);
    }

    v8 = (&v5->elementType_)[i];
    if (!v8)
    {
      goto LABEL_18;
    }

    if ((atomic_load_explicit(LibcoreIcuTimeZoneNames__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001AE4A8();
    }

    v9 = *(qword_100554C90 + 8);
    if (i >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, i);
    }
  }

  JavaLangSystem_currentTimeMillis();
  if (!id)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  sub_1001ADC40([id description], v5);
  JavaLangSystem_currentTimeMillis();
  sub_1001AE1D4(self, v5);
  JavaLangSystem_currentTimeMillis();
  v17 = JreStrcat("$@$J$J$", v10, v11, v12, v13, v14, v15, v16, @"Loaded time zone names for ");
  JavaLangSystem_logIWithNSString_(v17);
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreIcuTimeZoneNames_ZoneStringsCache;
  [(LibcoreUtilBasicLruCache *)&v3 dealloc];
}

@end