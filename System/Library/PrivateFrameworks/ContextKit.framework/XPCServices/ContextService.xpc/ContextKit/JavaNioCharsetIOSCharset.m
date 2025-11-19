@interface JavaNioCharsetIOSCharset
+ (JavaNioCharsetIOSCharset)getDefaultCharset;
+ (uint64_t)getEncodings;
+ (void)initialize;
- (JavaNioCharsetIOSCharset)initWithLong:(int64_t)a3 withNSString:(id)a4 withNSStringArray:(id)a5 withFloat:(float)a6;
- (id)newDecoder;
- (id)newEncoder;
@end

@implementation JavaNioCharsetIOSCharset

- (JavaNioCharsetIOSCharset)initWithLong:(int64_t)a3 withNSString:(id)a4 withNSStringArray:(id)a5 withFloat:(float)a6
{
  JavaNioCharsetCharset_initWithNSString_withNSStringArray_(self, a4, a5);
  self->nsEncoding_ = a3;
  self->charBytes_ = a6;
  return self;
}

- (id)newEncoder
{
  v2 = new_JavaNioCharsetIOSCharsetEncoder_initWithJavaNioCharsetCharset_withFloat_(self, self->charBytes_);

  return v2;
}

- (id)newDecoder
{
  v2 = new_JavaNioCharsetIOSCharsetDecoder_initWithJavaNioCharsetCharset_(self);

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_JavaUtilHashMap_init();
    JreStrongAssignAndConsume(&qword_100554A40, v2);
    v3 = +[JavaNioCharsetIOSCharset getDefaultCharset]_0();
    JreStrongAssign(&JavaNioCharsetIOSCharset_DEFAULT_CHARSET_, v3);
    atomic_store(1u, JavaNioCharsetIOSCharset__initialized);
  }
}

+ (JavaNioCharsetIOSCharset)getDefaultCharset
{
  if ((atomic_load_explicit(JavaNioCharsetIOSCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015D9B8();
  }

  PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(@"file.encoding");
  if (PropertyWithNSString)
  {
    return JavaNioCharsetCharset_forNameUEEWithNSString_(PropertyWithNSString);
  }

  return sub_10015D888(&unk_1003F75D8);
}

+ (uint64_t)getEncodings
{
  if ((atomic_load_explicit(JavaNioCharsetIOSCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015D9B8();
  }

  if (qword_100554A48 != -1)
  {
    sub_10015D9C4();
  }

  return qword_100554A40;
}

@end