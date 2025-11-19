id LibcoreIcuICU_getAvailableLocales()
{
  v0 = qword_100556FE8;
  if (!qword_100556FE8)
  {
    v1 = +[IOSObjectArray arrayWithNSArray:type:](IOSObjectArray, "arrayWithNSArray:type:", +[NSLocale availableLocaleIdentifiers], NSString_class_());
    v2 = LibcoreIcuICU_localesFromStringsWithNSStringArray_(v1);
    JreStrongAssign(&qword_100556FE8, v2);
    v0 = qword_100556FE8;
    if (!qword_100556FE8)
    {
      JreThrowNullPointerException();
    }
  }

  return [v0 clone];
}

id LibcoreIcuICU_getAvailableCalendarLocales()
{
  v0 = +[LibcoreIcuICU getAvailableCalendarLocalesNative]_0();

  return LibcoreIcuICU_localesFromStringsWithNSStringArray_(v0);
}

id LibcoreIcuICU_getAvailableDateFormatLocales()
{
  v0 = +[LibcoreIcuICU getAvailableDateFormatLocalesNative]_0();

  return LibcoreIcuICU_localesFromStringsWithNSStringArray_(v0);
}

id LibcoreIcuICU_getAvailableDateFormatSymbolsLocales()
{
  v0 = +[LibcoreIcuICU getAvailableDateFormatLocalesNative]_0();

  return LibcoreIcuICU_localesFromStringsWithNSStringArray_(v0);
}

id LibcoreIcuICU_getAvailableDecimalFormatSymbolsLocales()
{
  v0 = +[LibcoreIcuICU getAvailableNumberFormatLocalesNative]_0();

  return LibcoreIcuICU_localesFromStringsWithNSStringArray_(v0);
}

id LibcoreIcuICU_getAvailableNumberFormatLocales()
{
  v0 = +[LibcoreIcuICU getAvailableNumberFormatLocalesNative]_0();

  return LibcoreIcuICU_localesFromStringsWithNSStringArray_(v0);
}

IOSObjectArray *LibcoreIcuICU_getAvailableCurrencyCodes()
{
  v0 = +[NSLocale ISOCurrencyCodes];
  v1 = NSString_class_();

  return [IOSObjectArray arrayWithNSArray:v0 type:v1];
}

uint64_t JavaUtilListIterator_class_()
{
  if (qword_100556FF8 != -1)
  {
    sub_10027DB7C();
  }

  return qword_100556FF0;
}

uint64_t JavaLangAnnotationInherited_class_()
{
  if (qword_100557008 != -1)
  {
    sub_10027DD78();
  }

  return qword_100557000;
}

id LibcoreIoAsynchronousCloseMonitor_signalBlockedThreadsWithJavaIoFileDescriptor_(void *a1)
{
  v1 = [a1 getInt$];

  return [AsynchronousSocketCloseMonitor signalBlockedThreads:v1];
}

AsynchronousSocketCloseMonitor *LibcoreIoAsynchronousCloseMonitor_newAsynchronousSocketCloseMonitorWithInt_(uint64_t a1)
{
  v1 = [[AsynchronousSocketCloseMonitor alloc] initWithFileDescriptor:a1];

  return v1;
}

id sub_10027F124(void *a1)
{
  result = [a1 metadata];
  if (result)
  {
    v3 = [result genericSignature];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = [a1 getExceptionTypes];
    v6 = [[LibcoreReflectGenericSignatureParser alloc] initWithJavaLangClassLoader:JavaLangClassLoader_getSystemClassLoader()];
    v7 = v6;
    if (isKindOfClass)
    {
      [(LibcoreReflectGenericSignatureParser *)v6 parseForMethodWithJavaLangReflectGenericDeclaration:a1 withNSString:v3 withIOSClassArray:v5];
    }

    else
    {
      [(LibcoreReflectGenericSignatureParser *)v6 parseForConstructorWithJavaLangReflectGenericDeclaration:a1 withNSString:v3 withIOSClassArray:v5];
    }

    v8 = [GenericInfo alloc];
    exceptionTypes = v7->exceptionTypes_;
    parameterTypes = v7->parameterTypes_;
    returnType = v7->returnType_;
    formalTypeParameters = v7->formalTypeParameters_;

    return [(GenericInfo *)v8 init:exceptionTypes parameters:parameterTypes returnType:returnType typeParameters:formalTypeParameters];
  }

  return result;
}

id sub_10027FAF0(void *a1)
{
  if ([a1 isEqualToString:@"Byte"])
  {

    return +[IOSClass byteClass];
  }

  else if ([a1 isEqualToString:@"Short"])
  {

    return +[IOSClass shortClass];
  }

  else if ([a1 isEqualToString:@"Int"])
  {

    return +[IOSClass intClass];
  }

  else if ([a1 isEqualToString:@"Long"])
  {

    return +[IOSClass longClass];
  }

  else if ([a1 isEqualToString:@"Float"])
  {

    return +[IOSClass floatClass];
  }

  else if ([a1 isEqualToString:@"Double"])
  {

    return +[IOSClass doubleClass];
  }

  else if ([a1 isEqualToString:@"Char"])
  {

    return +[IOSClass charClass];
  }

  else if ([a1 isEqualToString:@"Boolean"])
  {

    return +[IOSClass BOOLeanClass];
  }

  else
  {
    return 0;
  }
}

JavaLangArithmeticException *new_JavaLangArithmeticException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangArithmeticException alloc];
  JavaLangRuntimeException_initWithNSString_(v2, a1);
  return v2;
}

unint64_t JreDefaultFastEnumeration(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2[3];
  if (v7)
  {
    v8 = a2[5];
  }

  else
  {
    a2[2] = &unk_100553A18;
    v7 = [a1 iterator];
    a2[3] = v7;
    a2[4] = [v7 methodForSelector:"hasNext"];
    v8 = [v7 methodForSelector:"next"];
    a2[5] = v8;
  }

  v9 = a2[4];
  a2[1] = a3;
  v10 = 0;
  if (v9(v7, "hasNext"))
  {
    v11 = a4 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    do
    {
      *(a3 + 8 * v10++) = v8(v7, "next");
    }

    while (v9(v7, "hasNext") && v10 < a4);
  }

  return v10;
}

id JavaUtilLoggingHandler_init(id *a1)
{
  v2 = new_JavaUtilLoggingErrorManager_init();
  JreStrongAssignAndConsume(a1 + 1, v2);
  JreStrongAssign(a1 + 3, qword_100557018);
  JreStrongAssign(a1 + 2, 0);
  JreStrongAssign(a1 + 5, 0);
  JreStrongAssign(a1 + 4, 0);
  v3 = [objc_msgSend(a1 "getClass")];

  return JreStrongAssign(a1 + 6, v3);
}

id sub_10027FF1C(id result)
{
  if (result)
  {
    v1 = IOSClass_forName_(result);
    if (!v1)
    {
      JreThrowNullPointerException();
    }

    return [v1 newInstance];
  }

  return result;
}

id sub_10027FF6C(uint64_t a1)
{
  v2 = JavaLangThread_currentThread();
  if (!v2 || (SystemClassLoader = -[JavaLangThread getContextClassLoader](v2, "getContextClassLoader")) == 0 && (SystemClassLoader = JavaLangClassLoader_getSystemClassLoader()) == 0 || (v4 = [SystemClassLoader loadClassWithNSString:a1]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v4 newInstance];
}

uint64_t JavaUtilLoggingHandler_class_()
{
  if ((atomic_load_explicit(&JavaUtilLoggingHandler__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100280934();
  }

  if (qword_100557028 != -1)
  {
    sub_100280940();
  }

  return qword_100557020;
}

id sub_100280AC0(void *a1, void *a2, int a3, int a4)
{
  v8 = [a1 getMetadata];
  v9 = [v8 allMethods];
  result = [v8 methodCount];
  if (result)
  {
    v11 = 0;
    do
    {
      v12 = [v9 objectAtIndex:v11];
      if ([v12 isConstructor] == a4)
      {
        v14 = [v12 modifiers];
        v15 = v14;
        if (!a3 || (v14 & 1) != 0)
        {
          v16 = [v12 selector];
          v17 = a1[1];
          if ((v15 & 8) != 0)
          {
            v18 = [v17 methodSignatureForSelector:v16];
          }

          else
          {
            v18 = [v17 instanceMethodSignatureForSelector:v16];
          }

          v13 = v18;
          if (v18)
          {
            [a2 setObject:+[JavaLangReflectMethod methodWithMethodSignature:selector:class:isStatic:metadata:](JavaLangReflectMethod forKey:{"methodWithMethodSignature:selector:class:isStatic:metadata:", v18, v16, a1, (v15 >> 3) & 1, v12), objc_msgSend(v12, "name")}];
          }
        }
      }

      ++v11;
      result = [v8 methodCount];
    }

    while (v11 < result);
  }

  return result;
}

JavaNioChannelsClosedSelectorException *new_JavaNioChannelsClosedSelectorException_init()
{
  v0 = [JavaNioChannelsClosedSelectorException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

JavaNetProtocolException *new_JavaNetProtocolException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaNetProtocolException alloc];
  JavaIoIOException_initWithNSString_(v2, a1);
  return v2;
}

id JavaNioSelectionKeyImpl_initWithJavaNioChannelsSpiAbstractSelectableChannel_withInt_withId_withJavaNioSelectorImpl_(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5)
{
  JavaNioChannelsSpiAbstractSelectionKey_init(a1);
  JreStrongAssign((a1 + 17), a2);
  *(a1 + 25) = a3;
  JreStrongAssign((a1 + 33), a5);

  return [a1 attachWithId:a4];
}

JavaNioSelectionKeyImpl *new_JavaNioSelectionKeyImpl_initWithJavaNioChannelsSpiAbstractSelectableChannel_withInt_withId_withJavaNioSelectorImpl_(void *a1, int a2, uint64_t a3, void *a4)
{
  v8 = [JavaNioSelectionKeyImpl alloc];
  JavaNioSelectionKeyImpl_initWithJavaNioChannelsSpiAbstractSelectableChannel_withInt_withId_withJavaNioSelectorImpl_(v8, a1, a2, a3, a4);
  return v8;
}

uint64_t JavaLangCharSequence_class_()
{
  if (qword_100557038 != -1)
  {
    sub_1002812BC();
  }

  return qword_100557030;
}

uint64_t JavaNioBuffer_initWithInt_withInt_withLong_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(result + 16) = 0xFFFFFFFFLL;
  *(result + 24) = a2;
  if ((a3 & 0x80000000) != 0)
  {
    v8 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"capacity < 0: ");
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  *(result + 8) = a3;
  *(result + 12) = a3;
  *(result + 32) = a4;
  return result;
}

IOSObjectArray *JavaUtilTimeZone_getAvailableIDsWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaUtilTimeZone__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100282FF8();
  }

  v2 = JavaUtilTimeZone_class_();
  objc_sync_enter(v2);
  v3 = +[NSTimeZone knownTimeZoneNames];
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = (a1 / 1000);
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([[NSTimeZone timeZoneWithName:?]]== v6)
        {
          [v4 addObject:v9];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [IOSObjectArray arrayWithNSArray:v4 type:NSString_class_()];
  objc_sync_exit(v2);
  return v10;
}

id sub_100281FC0(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  if (a4)
  {
    v8 = +[NSMutableDictionary dictionary];
    [v8 setObject:objc_msgSend(a4 forKey:{"getLanguage"), NSLocaleLanguageCode}];
    [v8 setObject:objc_msgSend(a4 forKey:{"getCountry"), NSLocaleCountryCode}];
    [v8 setObject:objc_msgSend(a4 forKey:{"getVariant"), NSLocaleVariantCode}];
    v9 = [[NSLocale alloc] initWithLocaleIdentifier:{+[NSLocale localeIdentifierFromComponents:](NSLocale, "localeIdentifierFromComponents:", v8)}];
  }

  else
  {
    v9 = +[NSLocale currentLocale];
  }

  v10 = v9;
  v11 = 2;
  if (a3)
  {
    v11 = 3;
  }

  if (a2)
  {
    v12 = v11;
  }

  else
  {
    v12 = a3;
  }

  v13 = *(a1 + 16);

  return [v13 localizedName:v12 locale:v10];
}

id sub_1002820D8(void *a1, int a2, unsigned int a3)
{
  if ((atomic_load_explicit(JavaUtilTimeZone__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100282FF8();
  }

  v6 = JavaLangInteger_toStringWithInt_(a3);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  if ((a2 - [(NSString *)v6 length]) >= 1)
  {
    v8 = 0;
    while (a1)
    {
      [a1 appendWithChar:48];
      if (++v8 >= (a2 - [(NSString *)v7 length]))
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }

LABEL_8:
  if (!a1)
  {
    goto LABEL_12;
  }

  return [a1 appendWithNSString:v7];
}

NSString *JavaUtilTimeZone_createGmtOffsetStringWithBoolean_withBoolean_withInt_(int a1, int a2, int a3)
{
  if ((atomic_load_explicit(JavaUtilTimeZone__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100282FF8();
  }

  if (a3 >= -59999)
  {
    v6 = 43;
  }

  else
  {
    v6 = 45;
  }

  if (a3 >= -59999)
  {
    v7 = a3 / 60000;
  }

  else
  {
    v7 = a3 / -60000;
  }

  v8 = new_JavaLangStringBuilder_initWithInt_(9u);
  v9 = v8;
  if (a1)
  {
    [(JavaLangStringBuilder *)v8 appendWithNSString:@"GMT"];
  }

  [(JavaLangStringBuilder *)v9 appendWithChar:v6];
  sub_1002820D8(v9, 2, v7 / 0x3C);
  if (a2)
  {
    [(JavaLangStringBuilder *)v9 appendWithChar:58];
  }

  sub_1002820D8(v9, 2, v7 % 0x3C);

  return [(JavaLangStringBuilder *)v9 description];
}

id JavaUtilTimeZone_getTimeZoneWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilTimeZone__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100282FF8();
  }

  v2 = JavaUtilTimeZone_class_();
  objc_sync_enter(v2);
  if (!a1)
  {
    v8 = new_JavaLangNullPointerException_initWithNSString_(@"id == null");
    objc_exception_throw(v8);
  }

  if ([a1 length] != 3)
  {
    goto LABEL_14;
  }

  if ([a1 isEqual:@"GMT"])
  {
    if (qword_100557048)
    {
      v3 = [qword_100557048 clone];
      objc_opt_class();
      if (!v3)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

LABEL_32:
    JreThrowNullPointerException();
  }

  if (![a1 isEqual:@"UTC"])
  {
LABEL_14:
    if (qword_100557058)
    {
      v4 = [qword_100557058 getWithId:a1];
      if (v4)
      {
        v3 = [v4 clone];
        objc_opt_class();
        if (!v3)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      v3 = sub_1002825FC(a1);
      if (v3 || [a1 length] >= 4 && objc_msgSend(a1, "hasPrefix:", @"GMT") && (v3 = sub_100282860(a1)) != 0)
      {
        v5 = qword_100557058;
        v6 = [v3 clone];
        objc_opt_class();
        if (!v6 || (objc_opt_isKindOfClass() & 1) != 0)
        {
          [v5 putWithId:a1 withId:v6];
          goto LABEL_23;
        }

        goto LABEL_31;
      }

      if (qword_100557048)
      {
        v3 = [qword_100557048 clone];
        objc_opt_class();
        if (!v3)
        {
          goto LABEL_23;
        }

LABEL_17:
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_23;
        }

LABEL_31:
        JreThrowClassCastException();
      }
    }

    JreThrowNullPointerException();
  }

  if (!qword_100557050)
  {
    goto LABEL_32;
  }

  v3 = [qword_100557050 clone];
  objc_opt_class();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

LABEL_23:
  objc_sync_exit(v2);
  return v3;
}

NSTimeZone *sub_1002825FC(uint64_t a1)
{
  if ((atomic_load_explicit(JavaUtilTimeZone__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100282FF8();
  }

  result = [NSTimeZone timeZoneWithAbbreviation:a1];
  if (result || (result = [NSTimeZone timeZoneWithName:a1]) != 0)
  {
    v3 = result;
    v4 = 1000 * [(NSTimeZone *)result secondsFromGMT];
    v5 = [(NSTimeZone *)v3 isDaylightSavingTime];
    v6 = [(NSTimeZone *)v3 nextDaylightSavingTimeTransition];
    v7 = [(NSTimeZone *)v3 nextDaylightSavingTimeTransitionAfterDate:v6];
    v8 = v5 == 0;
    if (v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v7;
    }

    if (!v8)
    {
      v6 = v7;
    }

    if (v9)
    {
      v10 = v6 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = [[JavaUtilSimpleTimeZone alloc] initWithInt:v4 withNSString:[(NSTimeZone *)v3 name]];
    }

    else
    {
      [(NSTimeZone *)v3 daylightSavingTimeOffsetForDate:v6];
      v13 = (v12 * 1000.0);
      if ([(NSTimeZone *)v3 isDaylightSavingTime])
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = (v4 - v14);
      v16 = +[NSCalendar currentCalendar];
      v17 = [(NSCalendar *)v16 components:248 fromDate:v6];
      v18 = [(NSCalendar *)v16 components:248 fromDate:v9];
      LODWORD(v16) = 3600 * [(NSDateComponents *)v17 hour];
      LODWORD(v16) = v16 + 60 * [(NSDateComponents *)v17 minute];
      v19 = 1000 * (v16 + [(NSDateComponents *)v17 second]);
      v20 = 3600 * [(NSDateComponents *)v18 hour];
      v21 = v20 + 60 * [(NSDateComponents *)v18 minute];
      HIDWORD(v22) = 1000 * (v21 + [(NSDateComponents *)v18 second]);
      LODWORD(v23) = v13;
      LODWORD(v22) = 0;
      v11 = [[JavaUtilSimpleTimeZone alloc] initWithInt:v15 withNSString:[(NSTimeZone *)v3 name] withInt:[(NSDateComponents *)v17 month]- 1 withInt:[(NSDateComponents *)v17 day] withInt:0 withInt:v19 withInt:__PAIR64__([(NSDateComponents *)v18 day] withInt:[(NSDateComponents *)v18 month]- 1) withInt:v22 withInt:v23 withInt:?];
    }

    return v11;
  }

  return result;
}

JavaUtilSimpleTimeZone *sub_100282860(void *a1)
{
  if ((atomic_load_explicit(JavaUtilTimeZone__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100282FF8();
  }

  if (!qword_100557040)
  {
    goto LABEL_23;
  }

  v2 = [qword_100557040 matcherWithJavaLangCharSequence:a1];
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = v2;
  if (([v2 matches] & 1) == 0)
  {
    return qword_100557048;
  }

  if (!a1)
  {
    goto LABEL_23;
  }

  if ([a1 isEqual:@"GMT-00"])
  {
    return qword_100557048;
  }

  v5 = [v3 groupWithInt:1];
  v13 = JavaLangInteger_parseIntWithNSString_(v5, v6, v7, v8, v9, v10, v11, v12);
  if ([v3 groupWithInt:3])
  {
    v14 = [v3 groupWithInt:3];
    v22 = JavaLangInteger_parseIntWithNSString_(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  result = 0;
  if (v13 <= 0x17 && v22 <= 0x3B)
  {
    v23 = [a1 charAtWithInt:3];
    if (v23 == 45)
    {
      v24 = -(3600000 * v13 + 60000 * v22);
    }

    else
    {
      v24 = 3600000 * v13 + 60000 * v22;
    }

    v25 = @"GMT%c%02d:%02d";
    if (![v3 groupWithInt:2])
    {
      goto LABEL_22;
    }

    v26 = [v3 groupWithInt:2];
    if (v26)
    {
      if (!JavaLangCharacter_isDigitWithChar_([v26 charAtWithInt:0]))
      {
        v25 = @"GMT%c%02d%02d";
      }

LABEL_22:
      v29[0] = JavaLangCharacter_valueOfWithChar_(v23);
      v29[1] = JavaLangInteger_valueOfWithInt_(v13);
      v29[2] = JavaLangInteger_valueOfWithInt_(v22);
      v27 = [IOSObjectArray arrayWithObjects:v29 count:3 type:NSObject_class_()];
      v28 = NSString_formatWithNSString_withNSObjectArray_(v25, v27);
      return new_JavaUtilSimpleTimeZone_initWithInt_withNSString_(v24, v28);
    }

LABEL_23:
    JreThrowNullPointerException();
  }

  return result;
}

uint64_t JavaUtilTimeZone_setDefaultWithJavaUtilTimeZone_(id a1)
{
  if ((atomic_load_explicit(JavaUtilTimeZone__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100282FF8();
  }

  v2 = JavaUtilTimeZone_class_();
  objc_sync_enter(v2);
  if (a1)
  {
    a1 = [a1 clone];
    objc_opt_class();
    if (a1)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }
  }

  JreStrongAssign(&qword_100557060, a1);

  return objc_sync_exit(v2);
}

IOSObjectArray *JavaUtilTimeZone_getAvailableIDs()
{
  if ((atomic_load_explicit(JavaUtilTimeZone__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100282FF8();
  }

  v0 = JavaUtilTimeZone_class_();
  objc_sync_enter(v0);
  v1 = +[IOSObjectArray arrayWithNSArray:type:](IOSObjectArray, "arrayWithNSArray:type:", +[NSTimeZone knownTimeZoneNames], NSString_class_());
  objc_sync_exit(v0);
  return v1;
}

id JavaUtilTimeZone_getDefault()
{
  if ((atomic_load_explicit(JavaUtilTimeZone__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100282FF8();
  }

  v0 = JavaUtilTimeZone_class_();
  objc_sync_enter(v0);
  v1 = qword_100557060;
  if (!qword_100557060)
  {
    v2 = +[JavaUtilTimeZone getDefaultNativeTimeZone]_0();
    JreStrongAssign(&qword_100557060, v2);
    v1 = qword_100557060;
    if (!qword_100557060)
    {
      JreThrowNullPointerException();
    }
  }

  v3 = [v1 clone];
  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  objc_sync_exit(v0);
  return v3;
}

uint64_t JavaUtilTimeZone_class_()
{
  if ((atomic_load_explicit(JavaUtilTimeZone__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100282FF8();
  }

  if (qword_100557070 != -1)
  {
    sub_100283004();
  }

  return qword_100557068;
}

id sub_10028317C(void *a1)
{
  v1 = OrgXmlSaxHelpersNewInstance_newInstanceWithNSString_(a1);
  v2 = OrgXmlSaxXMLReader_class_();
  if (v1 && ([v2 isInstance:v1] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v1;
}

OrgXmlSaxHelpersParserAdapter *OrgXmlSaxHelpersXMLReaderFactory_createXMLReader()
{
  PropertyWithNSString = JavaLangSystem_getPropertyWithNSString_(off_100553A28);
  if (PropertyWithNSString)
  {

    return sub_10028317C(PropertyWithNSString);
  }

  else
  {
    Parser = OrgXmlSaxHelpersParserFactory_makeParser();
    return new_OrgXmlSaxHelpersParserAdapter_initWithOrgXmlSaxParser_(Parser);
  }
}

IOSByteArray *JavaNioCharsetCharsets_toBigEndianUtf16BytesWithCharArray_withInt_withInt_(uint64_t a1, int a2, int a3)
{
  if ((atomic_load_explicit(JavaNioCharsetCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1002835F8();
  }

  v6 = [IOSByteArray arrayWithLength:2 * a3];
  if (a3 + a2 > a2)
  {
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    v7 = 0;
    v8 = a2;
    v9 = a1 + 2 * a2;
    do
    {
      v10 = *(a1 + 8);
      if (v8 < 0 || v8 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8);
      }

      v11 = *(v9 + 12);
      size = v6->super.size_;
      if ((v7 & 0x80000000) != 0 || v7 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v7);
      }

      v13 = v7 + 1;
      *(&v6->super.size_ + v7 + 4) = HIBYTE(v11);
      v14 = v6->super.size_;
      if ((v7 & 0x80000000) != 0 || v13 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
      }

      *(&v6->super.size_ + v13 + 4) = v11;
      ++v8;
      v9 += 2;
      v7 = (v7 + 2);
      --a3;
    }

    while (a3);
  }

  return v6;
}

id JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(id *a1, void *a2, __CFString *a3)
{
  JavaIoWriter_initWithId_(a1, a2);
  v13 = JavaNioByteBuffer_allocateWithInt_(0x2000u, v6, v7, v8, v9, v10, v11, v12);
  JreStrongAssign(a1 + 4, v13);
  if (!a3)
  {
    v19 = new_JavaLangNullPointerException_initWithNSString_(@"charsetName == null");
    objc_exception_throw(v19);
  }

  JreStrongAssign(a1 + 2, a2);
  v14 = JavaNioCharsetCharset_forNameWithNSString_(a3);
  if (!v14)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(a1 + 3, [v14 newEncoder]);
  v15 = a1[3];
  if (!v15)
  {
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  [v15 onMalformedInputWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPLACE_];
  v16 = a1[3];
  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  v17 = JavaNioCharsetCodingErrorAction_REPLACE_;

  return [v16 onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:v17];
}

id JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withJavaNioCharsetCharset_(id *a1, void *a2, void *a3)
{
  JavaIoWriter_initWithId_(a1, a2);
  v13 = JavaNioByteBuffer_allocateWithInt_(0x2000u, v6, v7, v8, v9, v10, v11, v12);
  JreStrongAssign(a1 + 4, v13);
  JreStrongAssign(a1 + 2, a2);
  if (!a3 || (JreStrongAssign(a1 + 3, [a3 newEncoder]), (v14 = a1[3]) == 0))
  {
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  [v14 onMalformedInputWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPLACE_];
  v15 = a1[3];
  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  v16 = JavaNioCharsetCodingErrorAction_REPLACE_;

  return [v15 onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:v16];
}

id JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withJavaNioCharsetCharsetEncoder_(id *a1, void *a2, void *a3)
{
  JavaIoWriter_initWithId_(a1, a2);
  v13 = JavaNioByteBuffer_allocateWithInt_(0x2000u, v6, v7, v8, v9, v10, v11, v12);
  JreStrongAssign(a1 + 4, v13);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 charset];
  JreStrongAssign(a1 + 2, a2);

  return JreStrongAssign(a1 + 3, a3);
}

uint64_t sub_100283B8C(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  objc_sync_enter(v4);
  sub_100283D84(a1);
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v5 position];
  if (v6 >= 1)
  {
    [*(a1 + 32) flip];
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_11;
    }

    [v7 writeWithByteArray:objc_msgSend(*(a1 + 32) withInt:"array") withInt:{objc_msgSend(*(a1 + 32), "arrayOffset"), v6}];
    [*(a1 + 32) clear];
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  [v8 flush];
LABEL_8:

  return objc_sync_exit(v4);
}

id sub_100283CC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  while (1)
  {
    v5 = [v3 encodeWithJavaNioCharBuffer:a2 withJavaNioByteBuffer:*(a1 + 32) withBoolean:0];
    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = v5;
    if (([v5 isOverflow] & 1) == 0)
    {
      break;
    }

    sub_100283B8C(a1, 0);
    v3 = *(a1 + 24);
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  result = [v6 isError];
  if (result)
  {

    return [v6 throwException];
  }

  return result;
}

uint64_t sub_100283D84(uint64_t result)
{
  if (!*(result + 24))
  {
    v1 = new_JavaIoIOException_initWithNSString_(@"OutputStreamWriter is closed");
    objc_exception_throw(v1);
  }

  return result;
}

JavaIoOutputStreamWriter *new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_(void *a1)
{
  v2 = [JavaIoOutputStreamWriter alloc];
  v3 = JavaNioCharsetCharset_defaultCharset();
  JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withJavaNioCharsetCharset_(&v2->super.super.isa, a1, v3);
  return v2;
}

JavaIoOutputStreamWriter *new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(void *a1, __CFString *a2)
{
  v4 = [JavaIoOutputStreamWriter alloc];
  JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withNSString_(&v4->super.super.isa, a1, a2);
  return v4;
}

JavaIoOutputStreamWriter *new_JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withJavaNioCharsetCharset_(void *a1, void *a2)
{
  v4 = [JavaIoOutputStreamWriter alloc];
  JavaIoOutputStreamWriter_initWithJavaIoOutputStream_withJavaNioCharsetCharset_(&v4->super.super.isa, a1, a2);
  return v4;
}

__CFString *LibcoreNetUrlUrlUtils_canonicalizePathWithNSString_withBoolean_(__CFString *a1, int a2)
{
  if (!a1)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v3 = a1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (v4 <= [(__CFString *)v3 length])
  {
    v7 = v4;
    if (v4 != [(__CFString *)v3 length])
    {
      v7 = (v4 + 1);
      if ([(__CFString *)v3 charAtWithInt:v4]!= 47)
      {
        goto LABEL_18;
      }
    }

    if (v4 != v6 + 1 || ![(__CFString *)v3 regionMatches:v6 aString:@"." otherOffset:0 count:1])
    {
      if (v4 != v6 + 2 || ![(__CFString *)v3 regionMatches:v6 aString:@".." otherOffset:0 count:2])
      {
        if (v4 > 0)
        {
          ++v5;
        }

LABEL_16:
        v6 = (v4 + 1);
        goto LABEL_17;
      }

      if (v5 <= 0 && !a2)
      {
        goto LABEL_16;
      }

      --v5;
      v6 = [(__CFString *)v3 lastIndexOf:47 fromIndex:(v6 - 2)]+ 1;
    }

    v8 = [(__CFString *)v3 substring:0 endIndex:v6];
    [(__CFString *)v3 substring:v7];
    v3 = JreStrcat("$$", v9, v10, v11, v12, v13, v14, v15, v8);
LABEL_17:
    v7 = v6;
LABEL_18:
    v4 = v7;
    if (!v3)
    {
      goto LABEL_19;
    }
  }

  return v3;
}

const __CFString *LibcoreNetUrlUrlUtils_authoritySafePathWithNSString_withNSString_(void *a1, void *a2)
{
  if (!a1 || ([a1 isEmpty] & 1) != 0)
  {
    return a2;
  }

  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if ([a2 isEmpty] & 1) != 0 || (objc_msgSend(a2, "hasPrefix:", @"/"))
  {
    return a2;
  }

  else
  {
    return JreStrcat("C$", v3, v4, v5, v6, v7, v8, v9, 47);
  }
}

id LibcoreNetUrlUrlUtils_getSchemePrefixWithNSString_(void *a1)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v2 = [a1 indexOf:58];
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  do
  {
    v5 = [a1 charAtWithInt:v4];
    if ((v5 & 0xFFFFFFDF) - 65 >= 0x1A && (!v4 || v5 - 48 >= 0xA && (v5 > 0x2E || ((1 << v5) & 0x680000000000) == 0)))
    {
      return 0;
    }

    v4 = (v4 + 1);
  }

  while (v3 != v4);
  v6 = [a1 substring:0 endIndex:v3];
  if (!v6)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v7 = v6;
  if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000458CC();
  }

  v8 = JavaUtilLocale_US_;

  return [v7 lowercaseStringWithJRELocale:v8];
}

uint64_t LibcoreNetUrlUrlUtils_isValidSchemeCharWithInt_withChar_(int a1, unsigned int a2)
{
  v2 = 0x680000000000uLL >> a2;
  if (a2 > 0x2E)
  {
    LOBYTE(v2) = 0;
  }

  if (a2 - 48 >= 0xA)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (a1 < 1)
  {
    v3 = 0;
  }

  if ((a2 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t LibcoreNetUrlUrlUtils_findFirstOfWithNSString_withNSString_withInt_withInt_(void *a1, void *a2, uint64_t a3, int a4)
{
  v5 = a3;
  if (a3 < a4)
  {
    if (!a1)
    {
LABEL_10:
      JreThrowNullPointerException();
    }

    do
    {
      v8 = [a1 charAtWithInt:v5];
      if (!a2)
      {
        goto LABEL_10;
      }

      if ([a2 indexOf:v8] != -1)
      {
        goto LABEL_7;
      }

      v5 = (v5 + 1);
    }

    while (a4 != v5);
    LODWORD(v5) = a4;
  }

LABEL_7:
  if (v5 >= a4)
  {
    return a4;
  }

  else
  {
    return v5;
  }
}

JavaNetUnknownHostException *new_JavaNetUnknownHostException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaNetUnknownHostException alloc];
  JavaIoIOException_initWithNSString_(v2, a1);
  return v2;
}

id OrgXmlSaxSAXException_init(uint64_t a1, uint64_t a2)
{
  JavaLangException_init(a1, a2);

  return JreStrongAssign((a1 + 88), 0);
}

id OrgXmlSaxSAXException_initWithNSString_(uint64_t a1, uint64_t a2)
{
  JavaLangException_initWithNSString_(a1, a2);

  return JreStrongAssign((a1 + 88), 0);
}

id OrgXmlSaxSAXException_initWithNSString_withJavaLangException_(uint64_t a1, uint64_t a2, void *a3)
{
  JavaLangException_initWithNSString_(a1, a2);

  return JreStrongAssign((a1 + 88), a3);
}

OrgXmlSaxSAXException *new_OrgXmlSaxSAXException_initWithNSString_(uint64_t a1)
{
  v2 = [OrgXmlSaxSAXException alloc];
  JavaLangException_initWithNSString_(v2, a1);
  JreStrongAssign(&v2->exception_, 0);
  return v2;
}

OrgXmlSaxSAXException *new_OrgXmlSaxSAXException_initWithNSString_withJavaLangException_(uint64_t a1, void *a2)
{
  v4 = [OrgXmlSaxSAXException alloc];
  JavaLangException_initWithNSString_(v4, a1);
  JreStrongAssign(&v4->exception_, a2);
  return v4;
}

id JavaLangTypeNotPresentException_initWithNSString_withJavaLangThrowable_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = JreStrcat("$$$", a2, a3, a4, a5, a6, a7, a8, @"Type ");
  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(a1, v11, a3);

  return JreStrongAssign((a1 + 88), a2);
}

JavaLangTypeNotPresentException *new_JavaLangTypeNotPresentException_initWithNSString_withJavaLangThrowable_(void *a1, uint64_t a2)
{
  v4 = [JavaLangTypeNotPresentException alloc];
  JavaLangTypeNotPresentException_initWithNSString_withJavaLangThrowable_(v4, a1, a2, v5, v6, v7, v8, v9);
  return v4;
}

JavaNioChannelsAlreadyConnectedException *new_JavaNioChannelsAlreadyConnectedException_init()
{
  v0 = [JavaNioChannelsAlreadyConnectedException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

id JavaIoObjectStreamField_initWithNSString_withIOSClass_withBoolean_(uint64_t a1, void *a2, JavaLangRefWeakReference *a3, char a4)
{
  if (!a2)
  {
    v8 = @"name == null";
    goto LABEL_8;
  }

  v4 = a3;
  if (!a3)
  {
    v8 = @"cl == null";
LABEL_8:
    v9 = new_JavaLangNullPointerException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  JreStrongAssign((a1 + 16), a2);
  if ([(JavaLangRefWeakReference *)v4 getClassLoader])
  {
    v4 = new_JavaLangRefWeakReference_initWithId_(v4);
  }

  result = JreStrongAssign((a1 + 24), v4);
  *(a1 + 40) = a4;
  return result;
}

uint64_t JavaIoObjectStreamField_initWithNSString_withNSString_(uint64_t a1, void *a2, void *a3)
{
  if (!a3)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"name == null");
    objc_exception_throw(v7);
  }

  JreStrongAssign((a1 + 16), a3);
  if (!a2 || (v5 = [a2 replace:46 withChar:47]) == 0)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 32), [v5 intern]);
  result = [JavaIoObjectStreamField defaultResolve]_0(a1);
  *(a1 + 41) = 1;
  return result;
}

uint64_t sub_100285074(id a1)
{
  if (+[IOSClass intClass]== a1)
  {
    return 73;
  }

  if (+[IOSClass byteClass]== a1)
  {
    return 66;
  }

  if (+[IOSClass charClass]== a1)
  {
    return 67;
  }

  if (+[IOSClass shortClass]== a1)
  {
    return 83;
  }

  if (+[IOSClass BOOLeanClass]== a1)
  {
    return 90;
  }

  if (+[IOSClass longClass]== a1)
  {
    return 74;
  }

  if (+[IOSClass floatClass]== a1)
  {
    return 70;
  }

  if (+[IOSClass doubleClass]== a1)
  {
    return 68;
  }

  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ([a1 isArray])
  {
    return 91;
  }

  else
  {
    return 76;
  }
}

JavaIoObjectStreamField *new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(void *a1, JavaLangRefWeakReference *a2)
{
  v4 = [JavaIoObjectStreamField alloc];
  JavaIoObjectStreamField_initWithNSString_withIOSClass_withBoolean_(v4, a1, a2, 0);
  return v4;
}

uint64_t JavaIoObjectStreamField_class_()
{
  if (qword_100557080 != -1)
  {
    sub_100285708();
  }

  return qword_100557078;
}

id JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(uint64_t a1, void *a2, __CFString *a3)
{
  JavaIoReader_initWithId_(a1, a2);
  *(a1 + 24) = 0;
  v13 = JavaNioByteBuffer_allocateWithInt_(0x2000u, v6, v7, v8, v9, v10, v11, v12);
  JreStrongAssign((a1 + 40), v13);
  if (!a3)
  {
    v19 = new_JavaLangNullPointerException_initWithNSString_(@"charsetName == null");
    objc_exception_throw(v19);
  }

  JreStrongAssign((a1 + 16), a2);
  v14 = JavaNioCharsetCharset_forNameWithNSString_(a3);
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = [v14 newDecoder];
  if (!v15)
  {
    goto LABEL_13;
  }

  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v16 = [v15 onMalformedInputWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPLACE_];
  if (!v16)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  JreStrongAssign((a1 + 32), [v16 onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPLACE_]);
  v17 = *(a1 + 40);
  if (!v17)
  {
    JreThrowNullPointerException();
  }

  return [v17 limitWithInt:0];
}

id JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharsetDecoder_(uint64_t a1, void *a2, void *a3)
{
  JavaIoReader_initWithId_(a1, a2);
  *(a1 + 24) = 0;
  v13 = JavaNioByteBuffer_allocateWithInt_(0x2000u, v6, v7, v8, v9, v10, v11, v12);
  JreStrongAssign((a1 + 40), v13);
  if (!a3 || ([a3 averageCharsPerByte], JreStrongAssign((a1 + 16), a2), JreStrongAssign((a1 + 32), a3), (v14 = *(a1 + 40)) == 0))
  {
    JreThrowNullPointerException();
  }

  return [v14 limitWithInt:0];
}

id JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharset_(uint64_t a1, void *a2, void *a3)
{
  JavaIoReader_initWithId_(a1, a2);
  *(a1 + 24) = 0;
  v13 = JavaNioByteBuffer_allocateWithInt_(0x2000u, v6, v7, v8, v9, v10, v11, v12);
  JreStrongAssign((a1 + 40), v13);
  JreStrongAssign((a1 + 16), a2);
  if (!a3)
  {
    goto LABEL_12;
  }

  v14 = [a3 newDecoder];
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  v16 = [v15 onMalformedInputWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPLACE_];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100092814();
  }

  JreStrongAssign((a1 + 32), [v17 onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPLACE_]);
  v18 = *(a1 + 40);
  if (!v18)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  return [v18 limitWithInt:0];
}

JavaIoInputStreamReader *new_JavaIoInputStreamReader_initWithJavaIoInputStream_(void *a1)
{
  v2 = [JavaIoInputStreamReader alloc];
  v3 = JavaNioCharsetCharset_defaultCharset();
  JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharset_(v2, a1, v3);
  return v2;
}

JavaIoInputStreamReader *new_JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(void *a1, __CFString *a2)
{
  v4 = [JavaIoInputStreamReader alloc];
  JavaIoInputStreamReader_initWithJavaIoInputStream_withNSString_(v4, a1, a2);
  return v4;
}

JavaIoInputStreamReader *new_JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharsetDecoder_(void *a1, void *a2)
{
  v4 = [JavaIoInputStreamReader alloc];
  JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharsetDecoder_(v4, a1, a2);
  return v4;
}

JavaIoInputStreamReader *new_JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharset_(void *a1, void *a2)
{
  v4 = [JavaIoInputStreamReader alloc];
  JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharset_(v4, a1, a2);
  return v4;
}

JavaUtilRegexPattern *JavaUtilRegexPattern_compileWithNSString_withInt_(void *a1, uint64_t a2)
{
  v4 = [JavaUtilRegexPattern alloc];
  sub_1002865AC(v4, a1, a2, v5, v6, v7, v8, v9);

  return v4;
}

JavaUtilRegexPattern *JavaUtilRegexPattern_compileWithNSString_(void *a1)
{
  v2 = [JavaUtilRegexPattern alloc];
  JreStrongAssign(&v2->pattern_, a1);
  v2->flags_ = 0;
  sub_10028663C(v2);

  return v2;
}

URegularExpression *sub_1002865AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 & 0x80) != 0)
  {
    v11 = new_JavaLangUnsupportedOperationException_initWithNSString_(@"CANON_EQ flag not supported");
    goto LABEL_8;
  }

  v8 = a3;
  if ((a3 & 0xFFFFFF00) != 0)
  {
    v12 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Unsupported flags: ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
LABEL_8:
    objc_exception_throw(v11);
  }

  JreStrongAssign((a1 + 16), a2);
  *(a1 + 24) = v8;

  return sub_10028663C(a1);
}

URegularExpression *sub_10028663C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"pattern == null");
    objc_exception_throw(v5);
  }

  v3 = *(a1 + 24);
  if ((v3 & 0x10) != 0)
  {
    v2 = JavaUtilRegexPattern_quoteWithNSString_(v2);
    v3 = *(a1 + 24);
  }

  result = JavaUtilRegexPattern_compileImplWithNSString_withInt_(v2, v3 & 0x2F);
  *(a1 + 8) = result;
  return result;
}

BOOL JavaUtilRegexPattern_matchesWithNSString_withJavaLangCharSequence_(void *a1, uint64_t a2)
{
  v4 = [JavaUtilRegexPattern alloc];
  JreStrongAssign(&v4->pattern_, a1);
  v4->flags_ = 0;
  sub_10028663C(v4);
  v5 = new_JavaUtilRegexMatcher_initWithJavaUtilRegexPattern_withJavaLangCharSequence_(v4, a2);

  return [(JavaUtilRegexMatcher *)v5 matches];
}

id JavaUtilRegexPattern_quoteWithNSString_(void *a1)
{
  v2 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v2 appendWithNSString:@"\\Q"];
  if (!a1)
  {
    goto LABEL_13;
  }

  v3 = [a1 indexOfString:@"\\E" fromIndex:0];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = 0;
    while (1)
    {
      v5 = v3 + 2;
      v6 = -[JavaLangStringBuilder appendWithNSString:](v2, "appendWithNSString:", [a1 substring:v4 endIndex:v5]);
      if (!v6)
      {
        goto LABEL_13;
      }

      [v6 appendWithNSString:@"\\\\E\\Q"];
      v3 = [a1 indexOfString:@"\\E" fromIndex:v5];
      v4 = v5;
      if ((v3 & 0x80000000) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = 0;
LABEL_8:
  v7 = -[JavaLangStringBuilder appendWithNSString:](v2, "appendWithNSString:", [a1 substring:v5]);
  if (!v7 || (v8 = [v7 appendWithNSString:@"\\E"]) == 0)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  return [v8 description];
}

void JavaUtilRegexPattern_closeImplWithLong_(URegularExpression *regexp)
{
  if (qword_100557090 != -1)
  {
    sub_100286A04();
  }

  v2 = qword_100557088;

  Java_java_util_regex_Pattern_closeImpl(J2ObjC_JNIEnv, v2, regexp);
}

URegularExpression *JavaUtilRegexPattern_compileImplWithNSString_withInt_(void *a1, int a2)
{
  if (qword_100557090 != -1)
  {
    sub_100286A04();
  }

  v4 = qword_100557088;

  return Java_java_util_regex_Pattern_compileImpl(J2ObjC_JNIEnv, v4, a1, a2);
}

JavaUtilRandom *new_JavaUtilRandom_init()
{
  v0 = [JavaUtilRandom alloc];
  v1 = JavaLangSystem_nanoTime();
  v2 = atomic_load(&qword_100557098);
  [(JavaUtilRandom *)v0 setSeedWithLong:v2 + v1];
  atomic_fetch_add(&qword_100557098, 1uLL);
  return v0;
}

id JavaLangStringBuffer_initWithNSString_(void *a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JavaLangAbstractStringBuilder_initWithInt_(a1, [a2 length] + 16);

  return [a1 appendWithNSString:a2];
}

JavaLangStringBuffer *new_JavaLangStringBuffer_init()
{
  v0 = [JavaLangStringBuffer alloc];
  JavaLangAbstractStringBuilder_init(v0);
  return v0;
}

JavaLangStringBuffer *new_JavaLangStringBuffer_initWithInt_(unsigned int a1)
{
  v2 = [JavaLangStringBuffer alloc];
  JavaLangAbstractStringBuilder_initWithInt_(v2, a1);
  return v2;
}

id JavaUtilConcurrentCopyOnWriteArrayList_init(uint64_t a1)
{
  if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BBB54();
  }

  v2 = LibcoreUtilEmptyArray_OBJECT_;

  return JreVolatileStrongAssign((a1 + 8), v2);
}

id JavaUtilConcurrentCopyOnWriteArrayList_initWithJavaUtilCollection_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v3 = [a2 toArray];
  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return JavaUtilConcurrentCopyOnWriteArrayList_initWithNSObjectArray_(a1, v3);
}

id JavaUtilConcurrentCopyOnWriteArrayList_initWithNSObjectArray_(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = a2[2];
  v5 = NSObject_class_();
  v6 = IOSClass_arrayType(v5, 1u);
  v7 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_withIOSClass_(a2, v4, v6);

  return JreVolatileStrongAssign((a1 + 8), v7);
}

uint64_t JavaUtilConcurrentCopyOnWriteArrayList_containsAllWithJavaUtilCollection_withNSObjectArray_withInt_withInt_(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v8 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(a1);
        }

        if (JavaUtilConcurrentCopyOnWriteArrayList_indexOfWithId_withNSObjectArray_withInt_withInt_(*(*(&v13 + 1) + 8 * i), a2, a3, a4) == -1)
        {
          return 0;
        }
      }

      v9 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t JavaUtilConcurrentCopyOnWriteArrayList_indexOfWithId_withNSObjectArray_withInt_withInt_(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a3;
  if (a1)
  {
    if (a3 < a4)
    {
      if (a2)
      {
        v7 = a2 + 8 * a3;
        v4 = a3;
        while (1)
        {
          v9 = *(a2 + 8);
          if (v4 < 0 || v4 >= v9)
          {
            IOSArray_throwOutOfBoundsWithMsg(v9, v4);
          }

          if ([a1 isEqual:*(v7 + 24)])
          {
            break;
          }

          ++v4;
          v7 += 8;
          if (a4 == v4)
          {
            return 0xFFFFFFFFLL;
          }
        }

        return v4;
      }

LABEL_22:
      JreThrowNullPointerException();
    }

    return 0xFFFFFFFFLL;
  }

  if (a3 >= a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  for (i = a2 + 8 * a3; ; i += 8)
  {
    v11 = *(a2 + 8);
    if ((v4 & 0x80000000) != 0 || v4 >= v11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v11, v4);
    }

    if (!*(i + 24))
    {
      break;
    }

    v4 = (v4 + 1);
    if (a4 == v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t JavaUtilConcurrentCopyOnWriteArrayList_lastIndexOfWithId_withNSObjectArray_withInt_withInt_(void *a1, uint64_t a2, int a3, int a4)
{
  LODWORD(v4) = a4;
  if (a1)
  {
    while (1)
    {
      v8 = (v4 - 1);
      if (v8 < a3)
      {
        break;
      }

      if (!a2)
      {
        goto LABEL_18;
      }

      v4 = (v4 - 1);
      v9 = *(a2 + 8);
      if ((v8 & 0x80000000) != 0 || v8 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v8);
      }

      if ([a1 isEqual:*(a2 + 24 + 8 * v8)])
      {
        return v4;
      }
    }
  }

  else
  {
    while (1)
    {
      v4 = (v4 - 1);
      if (v4 < a3)
      {
        break;
      }

      if (!a2)
      {
LABEL_18:
        JreThrowNullPointerException();
      }

      v10 = *(a2 + 8);
      if ((v4 & 0x80000000) != 0 || v4 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v4);
      }

      if (!*(a2 + 24 + 8 * v4))
      {
        return v4;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

id sub_1002897FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 8);
  v4 = atomic_load((a1 + 8));
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v7 = [IOSObjectArray arrayWithLength:a2 - a3 + *(v4 + 8) type:NSObject_class_()];
  v8 = atomic_load(v3);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v8, 0, v7, 0, a2);
  v9 = atomic_load(v3);
  v10 = atomic_load(v3);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v9, a3, v7, a2, (*(v10 + 8) - a3));

  return JreVolatileStrongAssign(v3, v7);
}

uint64_t sub_1002899CC(uint64_t a1, void *a2, int a3, int a4, uint64_t a5)
{
  if (a4 < a5)
  {
    if (a2)
    {
      v8 = (a1 + 8);
      v9 = a4;
      v10 = a5;
      while (1)
      {
        v11 = atomic_load(v8);
        if (!v11)
        {
          goto LABEL_31;
        }

        v12 = *(v11 + 8);
        if (v9 < 0 || v9 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v9);
        }

        if ([a2 containsWithId:*(v11 + 24 + 8 * v9)] != a3)
        {
          break;
        }

        if (v10 == ++v9)
        {
          return 0;
        }
      }

      v14 = atomic_load(v8);
      v15 = [IOSObjectArray arrayWithLength:*(v14 + 8) - 1 type:NSObject_class_()];
      v16 = atomic_load(v8);
      v33 = v15;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v16, 0, v15, 0, v9);
      v32 = a5;
      if (v9 + 1 >= a5)
      {
        v34 = v9;
      }

      else
      {
        v17 = v9 + 1;
        v34 = v9;
        do
        {
          v18 = atomic_load(v8);
          v19 = *(v18 + 8);
          if (v9 < -1 || v17 >= v19)
          {
            IOSArray_throwOutOfBoundsWithMsg(v19, (v9 + 1));
          }

          if ([a2 containsWithId:*(v18 + 24 + 8 * v17)] == a3)
          {
            v20 = atomic_load(v8);
            v21 = *(v20 + 8);
            if (v17 >= v21)
            {
              IOSArray_throwOutOfBoundsWithMsg(v21, (v9 + 1));
            }

            IOSObjectArray_Set(v33, v34, *(v20 + 24 + 8 * v17));
            v34 = (v34 + 1);
          }

          ++v17;
          LODWORD(v9) = v9 + 1;
        }

        while (v17 < v10);
      }

      v22 = atomic_load(v8);
      v23 = atomic_load(v8);
      v24 = v32;
      v25 = v33;
      v26 = v34;
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v22, v32, v33, v34, (*(v23 + 8) - v32));
      v27 = atomic_load(v8);
      v28 = *(v27 + 8) - v24 + v26;
      if (v28 >= v25->super.size_)
      {
        v30 = atomic_load(v8);
        goto LABEL_29;
      }

      v29 = JavaUtilArrays_copyOfRangeWithNSObjectArray_withInt_withInt_(v33, 0, v28);
      v30 = atomic_load(v8);
      if (v29)
      {
        v25 = v29;
LABEL_29:
        v13 = (*(v30 + 8) - v25->super.size_);
        JreVolatileStrongAssign(v8, v25);
        return v13;
      }
    }

LABEL_31:
    JreThrowNullPointerException();
  }

  return 0;
}

JavaUtilConcurrentCopyOnWriteArrayList *new_JavaUtilConcurrentCopyOnWriteArrayList_init()
{
  v0 = [JavaUtilConcurrentCopyOnWriteArrayList alloc];
  JavaUtilConcurrentCopyOnWriteArrayList_init(v0);
  return v0;
}

unint64_t JavaUtilConcurrentCopyOnWriteArrayList_CowSubList_initWithJavaUtilConcurrentCopyOnWriteArrayList_withNSObjectArray_withInt_withInt_(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  JreStrongAssign((a1 + 16), a2);
  JavaUtilAbstractList_init(a1, v9);
  v10 = [JavaUtilConcurrentCopyOnWriteArrayList_Slice alloc];
  JreStrongAssign(&v10->expectedElements_, a3);
  v10->from_ = a4;
  v10->to_ = a5;

  return JreVolatileStrongAssignAndConsume((a1 + 24), v10);
}

uint64_t JavaNetURL_setURLStreamHandlerFactoryWithJavaNetURLStreamHandlerFactory_(void *a1)
{
  if ((atomic_load_explicit(&JavaNetURL__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028C720();
  }

  v2 = JavaNetURL_class_();
  objc_sync_enter(v2);
  if (qword_1005570A8)
  {
    v4 = new_JavaLangError_initWithNSString_(@"Factory already set");
    objc_exception_throw(v4);
  }

  if (!qword_1005570A0)
  {
    JreThrowNullPointerException();
  }

  [qword_1005570A0 clear];
  JreStrongAssign(&qword_1005570A8, a1);

  return objc_sync_exit(v2);
}

id JavaNetURL_initWithJavaNetURL_withNSString_withJavaNetURLStreamHandler_(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *(a1 + 40) = -1;
  if (!a3)
  {
    v27 = new_JavaNetMalformedURLException_init();
    goto LABEL_24;
  }

  if (a4)
  {
    JreStrongAssign((a1 + 8), a4);
  }

  v7 = [a3 trim];
  SchemePrefixWithNSString = LibcoreNetUrlUrlUtils_getSchemePrefixWithNSString_(v7);
  JreStrongAssign((a1 + 16), SchemePrefixWithNSString);
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = [v16 length] + 1;
    v16 = *(a1 + 16);
    if (a2 && v16)
    {
      if (([v16 isEqual:*(a2 + 16)] & 1) == 0)
      {
        v16 = *(a1 + 16);
        goto LABEL_14;
      }

LABEL_11:
      [a1 setWithNSString:*(a2 + 16) withNSString:objc_msgSend(a2 withInt:"getHost") withNSString:objc_msgSend(a2 withNSString:"getPort") withNSString:objc_msgSend(a2 withNSString:"getAuthority") withNSString:{objc_msgSend(a2, "getUserInfo"), objc_msgSend(a2, "getPath"), objc_msgSend(a2, "getQuery"), objc_msgSend(a2, "getRef")}];
      if (!*(a1 + 8))
      {
        JreStrongAssign((a1 + 8), *(a2 + 8));
      }

      v17 = v17;
      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
  }

  if (a2)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (!v16)
  {
    v28 = JreStrcat("$$", v9, v10, v11, v12, v13, v14, v15, @"Protocol not found: ");
LABEL_23:
    v27 = new_JavaNetMalformedURLException_initWithNSString_(v28);
LABEL_24:
    objc_exception_throw(v27);
  }

LABEL_15:
  v18 = *(a1 + 8);
  if (!v18)
  {
    [a1 setupStreamHandler];
    v18 = *(a1 + 8);
    if (!v18)
    {
      v29 = *(a1 + 16);
      v28 = JreStrcat("$$", v19, v20, v21, v22, v23, v24, v25, @"Unknown protocol: ");
      goto LABEL_23;
    }
  }

  if (!v7)
  {
    JreThrowNullPointerException();
  }

  return [v18 parseURLWithJavaNetURL:a1 withNSString:v7 withInt:v17 withInt:{objc_msgSend(v7, "length")}];
}

id JavaNetURL_initWithNSString_withNSString_withInt_withNSString_withJavaNetURLStreamHandler_(uint64_t a1, void *a2, __CFString *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  *(a1 + 40) = -1;
  if (a4 <= -2)
  {
    v35 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"port < -1: ");
LABEL_21:
    v36 = new_JavaNetMalformedURLException_initWithNSString_(v35);
LABEL_22:
    objc_exception_throw(v36);
  }

  if (!a2)
  {
    v36 = new_JavaLangNullPointerException_initWithNSString_(@"protocol == null");
    goto LABEL_22;
  }

  v12 = a3;
  if (a3 && [(__CFString *)a3 contains:@":"]&& [(__CFString *)v12 charAtWithInt:0]!= 91)
  {
    v12 = JreStrcat("C$C", v14, v15, v16, v17, v18, v19, v20, 91);
  }

  JreStrongAssign((a1 + 16), a2);
  JreStrongAssign((a1 + 32), v12);
  *(a1 + 40) = v8;
  v21 = LibcoreNetUrlUrlUtils_authoritySafePathWithNSString_withNSString_(v12, a5);
  if (!v21)
  {
    JreThrowNullPointerException();
  }

  v22 = v21;
  v23 = [(__CFString *)v21 indexOfString:@"#"];
  if (v23 == -1)
  {
    v26 = (a1 + 48);
    v25 = v22;
  }

  else
  {
    v24 = v23;
    JreStrongAssign((a1 + 48), [(__CFString *)v22 substring:0 endIndex:v23]);
    v25 = [(__CFString *)v22 substring:(v24 + 1)];
    v26 = (a1 + 56);
  }

  JreStrongAssign(v26, v25);
  [a1 fixURLWithBoolean:0];
  if (!a6)
  {
    result = [a1 setupStreamHandler];
    if (*(a1 + 8))
    {
      return result;
    }

    v35 = JreStrcat("$$", v28, v29, v30, v31, v32, v33, v34, @"Unknown protocol: ");
    goto LABEL_21;
  }

  return JreStrongAssign((a1 + 8), a6);
}

void sub_10028C2E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = new_JavaIoIOException_initWithJavaLangThrowable_(v2);
    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

JavaNetURL *new_JavaNetURL_initWithNSString_(void *a1)
{
  v2 = [JavaNetURL alloc];
  JavaNetURL_initWithJavaNetURL_withNSString_withJavaNetURLStreamHandler_(v2, 0, a1, 0);
  return v2;
}

JavaNetURL *new_JavaNetURL_initWithNSString_withNSString_withNSString_(void *a1, __CFString *a2, void *a3)
{
  v6 = [JavaNetURL alloc];
  JavaNetURL_initWithNSString_withNSString_withInt_withNSString_withJavaNetURLStreamHandler_(v6, a1, a2, 0xFFFFFFFFLL, a3, 0, v7, v8);
  return v6;
}

JavaNetURL *new_JavaNetURL_initWithNSString_withNSString_withInt_withNSString_withJavaNetURLStreamHandler_(void *a1, __CFString *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = [JavaNetURL alloc];
  JavaNetURL_initWithNSString_withNSString_withInt_withNSString_withJavaNetURLStreamHandler_(v10, a1, a2, a3, a4, a5, v11, v12);
  return v10;
}

uint64_t JavaNetURL_class_()
{
  if ((atomic_load_explicit(&JavaNetURL__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028C720();
  }

  if (qword_1005570B8 != -1)
  {
    sub_10028C72C();
  }

  return qword_1005570B0;
}

uint64_t JavaNetSocketUtils_setCreatedWithJavaNetSocket_(uint64_t result)
{
  if (!result)
  {
    JreThrowNullPointerException();
  }

  atomic_store(1u, (result + 16));
  return result;
}

uint64_t sub_10028CEF4(void *a1, id a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  do
  {
    v4 = v3 == a2;
    if (v3 == a2)
    {
      break;
    }

    v5 = [v3 getInterfacesInternal];
    if (v5[2] >= 1)
    {
      v6 = v5;
      v7 = 0;
      v8 = v5;
      do
      {
        v9 = *(v8 + 3);
        if (v9 == a2 || (sub_10028CEF4(v9, a2) & 1) != 0)
        {
          return 1;
        }

        ++v7;
        v8 += 2;
      }

      while (v7 < v6[2]);
    }

    v3 = [v3 getSuperclass];
  }

  while (v3);
  return v4;
}

id JavaLangEnum_initWithNSString_withInt_(uint64_t a1, void *a2, int a3)
{
  result = JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  return result;
}

uint64_t JavaLangEnum_valueOfWithIOSClass_withNSString_(void *a1, void *a2)
{
  if (atomic_load_explicit(&JavaLangEnum__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_12:
    v16 = @"enumType == null";
LABEL_17:
    v25 = new_JavaLangNullPointerException_initWithNSString_(v16);
LABEL_15:
    objc_exception_throw(v25);
  }

  sub_10028DC94();
  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!a2)
  {
    v16 = @"name == null";
    goto LABEL_17;
  }

  SharedConstantsWithIOSClass = JavaLangEnum_getSharedConstantsWithIOSClass_(a1);
  if (!SharedConstantsWithIOSClass)
  {
    v24 = JreStrcat("@$", v5, v6, v7, v8, v9, v10, v11, a1);
    goto LABEL_14;
  }

  v12 = (SharedConstantsWithIOSClass + 24);
  v13 = &SharedConstantsWithIOSClass[8 * *(SharedConstantsWithIOSClass + 2) + 24];
  do
  {
    if (v12 >= v13)
    {
      [a1 getName];
      v24 = JreStrcat("$$$", v17, v18, v19, v20, v21, v22, v23, a2);
LABEL_14:
      v25 = new_JavaLangIllegalArgumentException_initWithNSString_(v24);
      goto LABEL_15;
    }

    v14 = *v12;
    if (!*v12)
    {
      JreThrowNullPointerException();
    }

    ++v12;
  }

  while (([a2 isEqual:*(v14 + 8)] & 1) == 0);
  return v14;
}

id JavaLangEnum_getSharedConstantsWithIOSClass_(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaLangEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028DC94();
  }

  if (!qword_1005570C0)
  {
    JreThrowNullPointerException();
  }

  v2 = [qword_1005570C0 getWithId:a1];
  objc_opt_class();
  if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v2;
}

uint64_t JavaLangEnum_class_()
{
  if ((atomic_load_explicit(&JavaLangEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028DC94();
  }

  if (qword_1005570D0 != -1)
  {
    sub_10028DCA0();
  }

  return qword_1005570C8;
}

ptrdiff_t sub_10028F05C(void *a1)
{
  if ((atomic_load_explicit(&SunMiscUnsafe__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028F724();
  }

  InstanceVariable = class_getInstanceVariable([a1 objcArrayClass], "buffer_");
  if (!InstanceVariable)
  {
    objc_exception_throw([(JavaLangError *)[JavaLangAssertionError alloc] initWithNSString:@"buffer_ ivar not found."]);
  }

  return ivar_getOffset(InstanceVariable);
}

uint64_t SunMiscUnsafe_getUnsafe()
{
  if ((atomic_load_explicit(&SunMiscUnsafe__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028F724();
  }

  return qword_1005570D8;
}

id JavaUtilMapEntry_initWithId_withId_(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 8), a2);

  return JreStrongAssign((a1 + 16), a3);
}

JavaNetUnknownServiceException *new_JavaNetUnknownServiceException_init()
{
  v0 = [JavaNetUnknownServiceException alloc];
  JavaIoIOException_init(v0, v1);
  return v0;
}

JavaNetUnknownServiceException *new_JavaNetUnknownServiceException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaNetUnknownServiceException alloc];
  JavaIoIOException_initWithNSString_(v2, a1);
  return v2;
}

JavaNioCharsetUnsupportedCharsetException *new_JavaNioCharsetUnsupportedCharsetException_initWithNSString_(__CFString *a1)
{
  v2 = [JavaNioCharsetUnsupportedCharsetException alloc];
  v3 = v2;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = @"null";
  }

  JavaLangIllegalArgumentException_initWithNSString_(v2, v4);
  JreStrongAssign(&v3->charsetName_, a1);
  return v3;
}

id JavaNetPlainDatagramSocketImpl_initWithJavaIoFileDescriptor_withInt_(uint64_t a1, void *a2, int a3)
{
  JavaNetDatagramSocketImpl_init(a1);
  v6 = DalvikSystemCloseGuard_get();
  JreStrongAssign((a1 + 24), v6);
  *(a1 + 40) = -1;
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  if (!a2)
  {
    goto LABEL_8;
  }

  result = [a2 valid];
  if (!result)
  {
    return result;
  }

  v8 = *(a1 + 24);
  if (!v8)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  return [v8 openWithNSString:@"close"];
}

void *JavaNetPlainDatagramSocketImpl_init(uint64_t a1)
{
  JavaNetDatagramSocketImpl_init(a1);
  v2 = DalvikSystemCloseGuard_get();
  JreStrongAssign((a1 + 24), v2);
  *(a1 + 40) = -1;
  v3 = new_JavaIoFileDescriptor_init();

  return JreStrongAssignAndConsume((a1 + 8), v3);
}

void sub_10028FF48(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

LibcoreIoStructGroupReq *sub_1002901B0(void *a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 getIndex];
  }

  else
  {
    v3 = 0;
  }

  v4 = new_LibcoreIoStructGroupReq_initWithInt_withJavaNetInetAddress_(v3, a1);

  return v4;
}

id sub_10029049C(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v6 = *(a1 + 8);
  v7 = [a2 getData];
  v8 = [a2 getOffset];
  v9 = [a2 getLength];
  v10 = atomic_load((a1 + 20));
  result = LibcoreIoIoBridge_recvfromWithBoolean_withJavaIoFileDescriptor_withByteArray_withInt_withInt_withInt_withJavaNetDatagramPacket_withBoolean_(0, v6, v7, v8, v9, a3, a2, v10 & 1);
  v12 = atomic_load((a1 + 20));
  if (v12)
  {
    [a2 setAddressWithJavaNetInetAddress:*(a1 + 32)];
    v13 = *(a1 + 40);

    return [a2 setPortWithInt:v13];
  }

  return result;
}

JavaNetPlainDatagramSocketImpl *new_JavaNetPlainDatagramSocketImpl_initWithJavaIoFileDescriptor_withInt_(void *a1, int a2)
{
  v4 = [JavaNetPlainDatagramSocketImpl alloc];
  JavaNetPlainDatagramSocketImpl_initWithJavaIoFileDescriptor_withInt_(v4, a1, a2);
  return v4;
}

JavaNetPlainDatagramSocketImpl *new_JavaNetPlainDatagramSocketImpl_init()
{
  v0 = [JavaNetPlainDatagramSocketImpl alloc];
  JavaNetPlainDatagramSocketImpl_init(v0);
  return v0;
}

id JavaUtilIllegalFormatConversionException_initWithChar_withIOSClass_(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  JavaUtilIllegalFormatException_init(a1, a2);
  *(a1 + 84) = v4;
  if (!a3)
  {
    v7 = new_JavaLangNullPointerException_initWithNSString_(@"arg == null");
    objc_exception_throw(v7);
  }

  return JreStrongAssign((a1 + 88), a3);
}

JavaUtilIllegalFormatConversionException *new_JavaUtilIllegalFormatConversionException_initWithChar_withIOSClass_(uint64_t a1, void *a2)
{
  v4 = [JavaUtilIllegalFormatConversionException alloc];
  JavaUtilIllegalFormatConversionException_initWithChar_withIOSClass_(v4, a1, a2);
  return v4;
}

LibcoreIoStructGroupReq *new_LibcoreIoStructGroupReq_initWithInt_withJavaNetInetAddress_(int a1, void *a2)
{
  v4 = [LibcoreIoStructGroupReq alloc];
  v4->gr_interface_ = a1;
  JreStrongAssign(&v4->gr_group_, a2);
  return v4;
}

LibcoreIoErrnoException *new_LibcoreIoErrnoException_initWithNSString_withInt_(void *a1, unsigned int a2)
{
  v4 = [LibcoreIoErrnoException alloc];
  JavaLangException_init(v4, v5);
  JreStrongAssign(&v4->errno__, a1);
  *(&v4->super.super.rawFrameCount + 1) = a2;
  return v4;
}

JavaUtilIllegalFormatCodePointException *new_JavaUtilIllegalFormatCodePointException_initWithInt_(unsigned int a1)
{
  v2 = [JavaUtilIllegalFormatCodePointException alloc];
  JavaUtilIllegalFormatException_init(v2, v3);
  *(&v2->super.super.super.super.super.rawFrameCount + 1) = a1;
  return v2;
}

id JavaTextDateFormatSymbols_initWithJavaUtilLocale_(id *a1, void *a2)
{
  JreStrongAssign(a1 + 10, a2);
  JreStrongAssign(a1 + 11, JavaTextSimpleDateFormat_PATTERN_CHARS_);
  v4 = LibcoreIcuLocaleData_getWithJavaUtilLocale_(a2);
  JreStrongAssign(a1 + 7, v4);
  v5 = a1[7];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(a1 + 1, v5[3]);
  JreStrongAssign(a1 + 2, *(a1[7] + 4));
  JreStrongAssign(a1 + 3, *(a1[7] + 5));
  JreStrongAssign(a1 + 4, *(a1[7] + 6));
  JreStrongAssign(a1 + 6, *(a1[7] + 11));
  v6 = *(a1[7] + 12);

  return JreStrongAssign(a1 + 5, v6);
}

JavaTextDateFormatSymbols *JavaTextDateFormatSymbols_getInstanceWithJavaUtilLocale_(void *a1)
{
  if (!a1)
  {
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"locale == null");
    objc_exception_throw(v4);
  }

  v2 = [JavaTextDateFormatSymbols alloc];
  JavaTextDateFormatSymbols_initWithJavaUtilLocale_(&v2->super.isa, a1);

  return v2;
}

uint64_t sub_100291690(void *a1, void *a2)
{
  if (!a1)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  if (a1[8])
  {
    v4 = [a1 internalZoneStrings];
    if (!a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_14;
    }

    if (!a2[8])
    {
      v5 = a1[10];
      if (!v5)
      {
        goto LABEL_14;
      }

      if ([v5 isEqual:a2[10]])
      {
        return 1;
      }
    }

    v4 = [a1 internalZoneStrings];
  }

  v7 = v4;
  v8 = [a2 internalZoneStrings];

  return JavaUtilArrays_deepEqualsWithNSObjectArray_withNSObjectArray_(v7, v8);
}

IOSObjectArray *sub_100291BB4(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 8);
  v3 = NSString_class_();
  v4 = [IOSObjectArray arrayWithLength:v2 type:IOSClass_arrayType(v3, 1u)];
  if (*(a1 + 8) >= 1)
  {
    v5 = 0;
    for (i = a1; ; i += 8)
    {
      v7 = *(i + 24);
      if (!v7)
      {
        break;
      }

      IOSObjectArray_Set(v4, v5++, [v7 clone]);
      if (v5 >= *(a1 + 8))
      {
        return v4;
      }
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return v4;
}

JavaTextDateFormatSymbols *new_JavaTextDateFormatSymbols_initWithJavaUtilLocale_(void *a1)
{
  v2 = [JavaTextDateFormatSymbols alloc];
  JavaTextDateFormatSymbols_initWithJavaUtilLocale_(&v2->super.isa, a1);
  return v2;
}

uint64_t JavaTextDateFormatSymbols_class_()
{
  if (qword_1005570F0 != -1)
  {
    sub_10029237C();
  }

  return qword_1005570E8;
}

id JavaNioCharsetCharsetDecoder_initWithJavaNioCharsetCharset_withFloat_withFloat_(uint64_t a1, void *a2, float a3, float a4)
{
  if (a3 <= 0.0 || a4 <= 0.0)
  {
    v6 = @"averageCharsPerByte and maxCharsPerByte must be positive";
    goto LABEL_9;
  }

  if (a3 > a4)
  {
    v6 = @"averageCharsPerByte is greater than maxCharsPerByte";
LABEL_9:
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(v6);
    objc_exception_throw(v7);
  }

  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  JreStrongAssign((a1 + 16), a2);

  return JreStrongAssign((a1 + 24), @"\uFFFD");
}

void sub_100293100(id a1)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
  v2 = dispatch_queue_create("Background logging", v1);
  v3 = qword_100557100;
  qword_100557100 = v2;
}

void sub_1002933A8(id a1)
{
  v1 = +[ContextConfiguration sharedInstance];
  v2 = [v1 debugDisableMetricsLogging];

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MetricsLogging disabled", v7, 2u);
    }

    v3 = qword_100557108;
    qword_100557108 = 0;
  }

  else
  {
    v4 = objc_alloc_init(MetricsLoggingIOS);
    v5 = qword_100557108;
    qword_100557108 = v4;

    if (qword_100557108)
    {
      goto LABEL_8;
    }

    v6 = [[MetricsLogging alloc] _init];
    v3 = qword_100557108;
    qword_100557108 = v6;
  }

LABEL_8:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100294478();
  }

  [qword_100557108 _postInit];
}

void sub_100294478()
{
  v1 = 138412290;
  v2 = objc_opt_class();
  v0 = v2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Implementation used for metrics logging: %@", &v1, 0xCu);
}

void sub_1002958D8(id a1)
{
  v1 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
  v2 = CKContextKitNotification_ConfigurationUpdate;
  if (v1)
  {
    v3 = 138412290;
    v4 = CKContextKitNotification_ConfigurationUpdate;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Posting ContextKit configuration update notification: %@", &v3, 0xCu);
  }

  if (notify_post([v2 UTF8String]))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v3) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not post update notification", &v3, 2u);
    }
  }
}

void sub_1002959D0(id a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received notification to force-update", v2, 2u);
  }

  +[ContextConfiguration _triggerConfigurationUpdate];
}

id sub_1002966B4(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = sub_100297E04(v1, v2);

  return v3;
}

id sub_100296714(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = sub_100297E04(v1, v2);

  return v3;
}

void sub_100297B28(_BYTE *a1, void *a2)
{
  v3 = sub_1002966B4(a2);
  if (v3)
  {
    v4 = v3;
    *a1 = [v3 BOOLValue];
    v3 = v4;
  }
}

void sub_100297B80(void **a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v8 = sub_100297E04(v3, v4);

  v5 = v8;
  if (v8)
  {
    v6 = [NSSet setWithArray:v8];
    v7 = *a1;
    *a1 = v6;

    v5 = v8;
  }
}

void sub_100297C1C(_DWORD *a1, void *a2)
{
  v3 = sub_1002966B4(a2);
  if (v3)
  {
    v5 = v3;
    [v3 floatValue];
    v3 = v5;
    *a1 = v4;
  }
}

void sub_100297C74(void *a1, void *a2)
{
  v3 = sub_1002966B4(a2);
  if (v3)
  {
    v4 = v3;
    *a1 = [v3 unsignedIntegerValue];
    v3 = v4;
  }
}

void sub_100297CCC(void *a1, void *a2)
{
  v3 = sub_1002966B4(a2);
  if (v3)
  {
    v4 = v3;
    *a1 = [v3 integerValue];
    v3 = v4;
  }
}

void sub_100297D24(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  obj = sub_100297E04(v3, v4);

  v5 = obj;
  if (obj)
  {
    objc_storeStrong(a1, obj);
    v5 = obj;
  }
}

void sub_100297DAC(void *a1, void *a2)
{
  v3 = sub_1002966B4(a2);
  if (v3)
  {
    v5 = v3;
    [v3 doubleValue];
    v3 = v5;
    *a1 = v4;
  }
}

id sub_100297E04(void *a1, void *a2)
{
  v3 = a1;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
LABEL_4:
      v5 = v4;
      goto LABEL_11;
    }

    if ([a2 isSubclassOfClass:objc_opt_class()])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", [v3 bytes], 4);
        goto LABEL_4;
      }
    }

    v6 = qword_100557140;
    if (os_log_type_enabled(qword_100557140, OS_LOG_TYPE_ERROR))
    {
      sub_1002986D4(a2, v6, v3);
    }
  }

  v5 = 0;
LABEL_11:

  return v5;
}

id sub_100297EFC(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = sub_100297E04(v1, v2);

  return v3;
}

void sub_1002986D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = 138412802;
  v8 = a1;
  v9 = 2112;
  v10 = objc_opt_class();
  v11 = 2112;
  v12 = a3;
  v6 = v10;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Configuration object is not of expected type: %@, but is %@: %@", &v7, 0x20u);
}

int64_t sub_100298F6C(id a1, id a2, id a3)
{
  if (a2 < a3)
  {
    return -1;
  }

  else
  {
    return a2 != a3;
  }
}

void sub_1002996F8(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = NLTagOther;
  v15 = v7;
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;
  if ([a1[4] containsObject:v9])
  {
    v10 = [a1[5] substringWithRange:{a3, a4}];
    v11 = v9;
    v12 = [a1[6] objectForKeyedSubscript:v11];
    if (v12)
    {
      v13 = [NSMutableSet setWithSet:v12];
      [v13 addObject:v10];
      v14 = [v13 copy];
      [a1[6] setObject:v14 forKeyedSubscript:v11];
    }

    else
    {
      v13 = [NSSet setWithObject:v10];
      [a1[6] setObject:v13 forKeyedSubscript:v11];
    }
  }
}

void sub_10029A494(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[22];
  v4 = @"null";
  if (*(a1 + 40))
  {
    v4 = *(a1 + 40);
  }

  v10[0] = v4;
  v5 = [v2 abGroupLoggingKey];
  v6 = sub_10029A5BC(v5, *(a1 + 48));
  v10[1] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v10[2] = v7;
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v10[3] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:4];
  [v3 trackEventWithPropertyValues:v9 value:*(a1 + 64)];
}

__CFString *sub_10029A5BC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 == 15)
  {
    v5 = @"unsol";
  }

  else if (a2 == 17)
  {
    v5 = @"grouping";
  }

  else if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"null";
  }

  return v5;
}

void sub_10029A72C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[23];
  v4 = @"null";
  if (*(a1 + 40))
  {
    v4 = *(a1 + 40);
  }

  v10[0] = v4;
  v5 = [v2 abGroupLoggingKey];
  v6 = sub_10029A5BC(v5, *(a1 + 48));
  v10[1] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v10[2] = v7;
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v10[3] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:4];
  [v3 trackEventWithPropertyValues:v9 value:*(a1 + 64)];
}

void sub_10029A968(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[24];
  if (v3)
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v20 = [v2 abGroupLoggingKey];
    v5 = sub_10029A5BC(v20, *(a1 + 56));
    v2 = *(a1 + 32);
  }

  v22[0] = v5;
  v6 = [v2 abGroupLoggingKey];
  v7 = sub_10029A5BC(v6, *(a1 + 56));
  v22[1] = v7;
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v22[2] = v8;
  v9 = [NSArray arrayWithObjects:v22 count:3];
  [v4 trackEventWithPropertyValues:v9 value:*(a1 + 64)];

  if (!v3)
  {
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v10[30];
  if (v11)
  {
    v13 = *(a1 + 40);
  }

  else
  {
    v5 = [v10 abGroupLoggingKey];
    v13 = sub_10029A5BC(v5, *(a1 + 56));
    v10 = *(a1 + 32);
  }

  v21[0] = v13;
  v14 = [v10 abGroupLoggingKey];
  v15 = sub_10029A5BC(v14, *(a1 + 56));
  v16 = v15;
  v17 = *(a1 + 48);
  if (!v17)
  {
    v17 = @"unknown";
  }

  v21[1] = v15;
  v21[2] = v17;
  v18 = [NSNumber numberWithBool:*(a1 + 72)];
  v21[3] = v18;
  v19 = [NSArray arrayWithObjects:v21 count:4];
  [v12 trackEventWithPropertyValues:v19];

  if (!v11)
  {
  }
}

void sub_10029ACC4(void *a1)
{
  v2 = a1[4];
  v3 = v2[25];
  v4 = @"null";
  if (a1[5])
  {
    v4 = a1[5];
  }

  v5 = [v2 abGroupLoggingKey];
  v6 = sub_10029A5BC(v5, a1[6]);
  v11[1] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v11[2] = v7;
  v8 = [NSNumber numberWithUnsignedInteger:a1[7]];
  v11[3] = v8;
  v9 = [NSNumber numberWithUnsignedInteger:a1[8]];
  v11[4] = v9;
  v10 = [NSArray arrayWithObjects:v11 count:5];
  [v3 trackEventWithPropertyValues:v10];
}

void sub_10029AF64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[26];
  v4 = @"null";
  if (*(a1 + 40))
  {
    v4 = *(a1 + 40);
  }

  v12[0] = v4;
  v5 = [v2 abGroupLoggingKey];
  v6 = sub_10029A5BC(v5, *(a1 + 56));
  v12[1] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
  v12[2] = v7;
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
  v12[3] = v8;
  v9 = [NSNumber numberWithBool:*(a1 + 88)];
  v12[4] = v9;
  v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 80)];
  v12[5] = v10;
  v11 = [NSArray arrayWithObjects:v12 count:6];
  [v3 trackEventWithPropertyValues:v11];

  if (*(a1 + 48) && ([*(*(a1 + 32) + 264) record:?] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10029C01C();
  }
}

void sub_10029B258(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[27];
  v4 = @"null";
  if (*(a1 + 40))
  {
    v4 = *(a1 + 40);
  }

  v13[0] = v4;
  v5 = [v2 abGroupLoggingKey];
  v6 = sub_10029A5BC(v5, *(a1 + 56));
  v13[1] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
  v13[2] = v7;
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
  v13[3] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:4];
  [v3 trackEventWithPropertyValues:v9];

  v10 = [*(a1 + 48) topicId];
  if (v10)
  {
    v11 = *(*(a1 + 32) + 272);
    v12 = [NSArray arrayWithObject:v10];
    LOBYTE(v11) = [v11 record:v12];

    if ((v11 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10029C064();
    }
  }
}

void sub_10029B508(void *a1)
{
  v2 = a1[4];
  v3 = v2[28];
  v4 = @"null";
  if (a1[5])
  {
    v4 = a1[5];
  }

  v5 = [v2 abGroupLoggingKey];
  v6 = sub_10029A5BC(v5, a1[6]);
  v9[1] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:a1[7]];
  v9[2] = v7;
  v8 = [NSArray arrayWithObjects:v9 count:3];
  [v3 trackEventWithPropertyValues:v8];
}

void sub_10029B69C(uint64_t a1)
{
  v2 = [*(a1 + 32) common];
  v3 = [*(a1 + 32) index];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_7;
  }

  if ([v2 compatibilityVersion] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 compatibilityVersion];
  }

  if ([v2 assetVersion] == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    v5 = 0;
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_12:
    v7 = [NSString stringWithFormat:@"%@cmaj:%lu:cmin:%lu:imaj:%lu:imin:%lu:id:%@", @"com.apple.proactive.Context.assetStatus.", v4, v5, 0, 0, @"none"];
    goto LABEL_29;
  }

  v5 = [v2 assetVersion];
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_8:
  v6 = [v3 first];
  if (v6)
  {
    v19 = [v3 first];
    if ([v19 compatibilityVersion] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 0;
      v20 = 0;
    }

    else
    {
      v17 = [v3 first];
      v20 = [v17 compatibilityVersion];
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v22 = v6;
  v8 = [v3 first];
  v9 = v4;
  if (v8)
  {
    v18 = [v3 first];
    if ([v18 assetVersion] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v16 = [v3 first];
      v11 = [v16 assetVersion];
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = [v3 second];
  if (v12)
  {
    v13 = v12;
    v14 = [v3 second];
    v7 = [NSString stringWithFormat:@"%@cmaj:%lu:cmin:%lu:imaj:%lu:imin:%lu:id:%@", @"com.apple.proactive.Context.assetStatus.", v9, v5, v20, v11, v14];

    if ((v10 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v7 = [NSString stringWithFormat:@"%@cmaj:%lu:cmin:%lu:imaj:%lu:imin:%lu:id:%@", @"com.apple.proactive.Context.assetStatus.", v9, v5, v20, v11, @"none"];
  if (v10)
  {
LABEL_22:
  }

LABEL_23:
  if (!v8)
  {

    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v21)
  {
LABEL_25:
  }

LABEL_26:
  if (v22)
  {
  }

LABEL_29:
  if (([*(*(a1 + 40) + 168) isEqualToString:v7] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 40) + 168), v7);
    v15 = *(a1 + 32);
    v23.receiver = *(a1 + 40);
    v23.super_class = MetricsLoggingIOS;
    objc_msgSendSuper2(&v23, "recordAssetInfo:", v15);
    ADClientSetValueForScalarKey();
  }
}

void sub_10029BAC0(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = &OBJC_IVAR___MetricsLoggingIOS__findResultsTimeoutEvent;
  }

  else
  {
    v2 = &OBJC_IVAR___MetricsLoggingIOS__findResultsSlowEvent;
  }

  v3 = *(a1 + 32);
  v4 = *&v3[*v2];
  v5 = @"null";
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  v6 = [v3 abGroupLoggingKey];
  v7 = sub_10029A5BC(v6, *(a1 + 48));
  v10[1] = v7;
  v8 = [NSNumber numberWithBool:*(a1 + 57)];
  v10[2] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:3];
  [v4 trackEventWithPropertyValues:v9];
}

void sub_10029BCC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[29];
  v4 = @"null";
  if (*(a1 + 40))
  {
    v4 = *(a1 + 40);
  }

  v5 = [v2 abGroupLoggingKey];
  v6 = sub_10029A5BC(v5, *(a1 + 48));
  v11[1] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v11[2] = v7;
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  v11[3] = v8;
  v9 = [NSNumber numberWithBool:*(a1 + 64)];
  v11[4] = v9;
  v10 = [NSArray arrayWithObjects:v11 count:5];
  [v3 trackEventWithPropertyValues:v10];
}

void sub_10029C5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10029C604(uint64_t a1)
{
  v2 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10029C6B0;
  block[3] = &unk_100483BE0;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void sub_10029C6B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateConfiguration];
}

void sub_10029CA0C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  pthread_mutex_lock((a1 + 40));
  sub_1002BD554(a1);
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;

  v3 = [*(a1 + 32) index];
  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = v4;
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 fileExistsAtPath:v5];

    v8 = qword_100557168;
    v9 = os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = *(a1 + 104);
        *buf = 138412290;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using Lucene index override: %@", buf, 0xCu);
      }

      if (v3)
      {
        v11 = [v3 second];
        v12 = [v11 copy];
        v13 = *(a1 + 128);
        *(a1 + 128) = v12;
      }

      goto LABEL_22;
    }

    if (v9)
    {
      v14 = *(a1 + 104);
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Lucene index does not exist: %@", buf, 0xCu);
    }
  }

  if (v3)
  {
    v15 = [v3 first];
    v5 = [v15 filesystemPathForAssetDataRelativePath:@"lucene.tagged.53.idx"];

    v16 = qword_100557168;
    if (os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [v3 second];
      v19 = [v3 first];
      v20 = [v19 assetVersion];
      *buf = 138412546;
      *&buf[4] = v18;
      v122 = 2048;
      v123 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Using Lucene index asset: %@; version: %lu", buf, 0x16u);
    }

    v21 = [v3 second];
    v22 = [v21 copy];
    v23 = *(a1 + 128);
    *(a1 + 128) = v22;

    if (v5)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v24 = qword_100557168;
    if (os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Lucene index asset is selected but is not available", buf, 2u);
    }
  }

  v25 = +[CTKPaths database];
  v5 = [v25 stringByAppendingPathComponent:@"lucene.tagged.53.idx"];

  v26 = +[NSFileManager defaultManager];
  v27 = [v26 fileExistsAtPath:v5];

  if (!v27)
  {

    goto LABEL_29;
  }

  v28 = qword_100557168;
  if (os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Falling back to development index", buf, 2u);
  }

  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_22:
  v29 = [v5 stringByResolvingSymlinksInPath];

  if (v29)
  {
    v30 = qword_100557168;
    if (os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Using Lucene index from: %@", buf, 0xCu);
    }

    v117 = [v29 stringByAppendingPathComponent:@"bloomfilter.dat"];
    v31 = [_PASBloomFilter bloomFilterWithPathToFile:v117];
    v32 = *(a1 + 184);
    *(a1 + 184) = v31;

    if ([*(a1 + 184) numHashes])
    {
      *(a1 + 160) = 1;
      v33 = qword_100557168;
      if (!os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v34 = *(a1 + 184);
      *buf = 138412290;
      *&buf[4] = v34;
      v35 = "Using bloom filter: %@";
    }

    else
    {
      *(a1 + 160) = 0;
      v36 = [[_PASBloomFilter alloc] initWithData:0 numBits:0 hashFunctionCode:2 numHashFunctions:1];
      v37 = *(a1 + 184);
      *(a1 + 184) = v36;

      v33 = qword_100557168;
      if (!os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v38 = *(a1 + 184);
      *buf = 138412290;
      *&buf[4] = v38;
      v35 = "Using dummy bloom filter: %@";
    }

    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v35, buf, 0xCu);
LABEL_33:
    v39 = [Wordlist alloc];
    v40 = [NSString stringWithFormat:@"%@/stopwords.txt", v29];
    v41 = [NSString stringWithFormat:@"%@/auxiliary.txt", v29];
    v42 = [(Wordlist *)v39 initWithPathToStopwords:v40 pathToAuxiliary:v41];
    v43 = *(a1 + 176);
    *(a1 + 176) = v42;

    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    v116 = OrgLukhnosPortmobileFilePaths_getWithNSString_(v29);
    [a1 setReader:0];
    v44 = [[ComAppleProactiveLuceneNSDataDirectory alloc] initWithOrgLukhnosPortmobileFilePath:v116 withInt:*(a1 + 112) withBoolean:0 withBoolean:0 withInt:*(a1 + 144)];
    v45 = [OrgApacheLuceneIndexDirectoryReader openWithOrgApacheLuceneStoreDirectory:v44];
    [a1 setReader:v45];

    v46 = [a1 reader];
    [v46 incRef];

    v47 = [a1 reader];
    *(a1 + 16) = [v47 maxDoc];

    v48 = [a1 reader];
    *(a1 + 24) = [v48 getSumTotalTermFreqWithNSString:@"text"];

    if ([(OrgApacheLuceneStoreFSDirectory *)v44 fileLengthWithNSString:@"treasuremap.dat"]< 1)
    {
      v56 = *(a1 + 192);
      *(a1 + 192) = 0;

      v57 = qword_100557168;
      if (!os_log_type_enabled(qword_100557168, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v53 = "No treasure map found";
      v54 = v57;
      v55 = 2;
    }

    else
    {
      v49 = [KeylessMap keylessMapForDirectory:v44 fileName:@"treasuremap.dat"];
      v50 = *(a1 + 192);
      *(a1 + 192) = v49;

      v51 = qword_100557168;
      if (!os_log_type_enabled(qword_100557168, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      v52 = *(a1 + 192);
      *buf = 138412290;
      *&buf[4] = v52;
      v53 = "Loaded treasure map: %@";
      v54 = v51;
      v55 = 12;
    }

    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, v53, buf, v55);
LABEL_39:
    v58 = [v29 stringByAppendingPathComponent:@"qid-to-categories.tsm"];
    v59 = +[NSFileManager defaultManager];
    v60 = [v59 fileExistsAtPath:v58];

    if (v60)
    {
      v61 = [ComAppleContextkitCategoriesConstellation alloc];
      v62 = [QIDCategoryProviderImpl alloc];
      v63 = [KeylessMap keylessMapForDirectory:v44 fileName:@"qid-to-categories.tsm"];
      v64 = [(QIDCategoryProviderImpl *)v62 initWithTreasureMap:v63];
      v65 = [(ComAppleContextkitCategoriesConstellation *)v61 initWithDirectory:v44 titlesFile:@"categories-titles-en.dat" qidToCategoryIdTreasureMap:v64];
      v66 = *(a1 + 200);
      *(a1 + 200) = v65;

      v67 = [a1 config];
      v68 = [v67 desiredLanguageTags];

      if ([v68 count])
      {
        v69 = [[JavaUtilArrayList alloc] initWithInt:1];
        v70 = [v68 firstObject];
        [(JavaUtilArrayList *)v69 addWithId:v70];

        [*(a1 + 200) setDesiredLanguages:v69];
        v71 = qword_100557168;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          sub_10029F6CC(v120, [(JavaUtilArrayList *)v69 size], v71);
        }
      }

      v72 = qword_100557168;
      if (os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEBUG))
      {
        sub_10029F714(v72, v73, v74, v75, v76, v77, v78, v79);
      }
    }

    else
    {
      v80 = *(a1 + 200);
      *(a1 + 200) = 0;
    }

    v81 = [v29 stringByAppendingPathComponent:@"qid-to-queries.tsm"];
    v82 = [v29 stringByAppendingPathComponent:@"queries.spa"];
    v83 = +[NSFileManager defaultManager];
    if ([v83 fileExistsAtPath:v81])
    {
      v84 = +[NSFileManager defaultManager];
      v85 = [v84 fileExistsAtPath:v82];

      if (v85)
      {
        v86 = [KeylessMap keylessMapForDirectory:v44 fileName:@"qid-to-queries.tsm"];
        v87 = *(a1 + 208);
        *(a1 + 208) = v86;

        v88 = [[ComAppleContextkitUtilObjcSpindleArray alloc] initWithOrgApacheLuceneStoreDirectory:v44 withNSString:@"queries.spa"];
        v89 = *(a1 + 216);
        *(a1 + 216) = v88;

        v90 = qword_100557168;
        if (os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEBUG))
        {
          sub_10029F790(v90, v91, v92, v93, v94, v95, v96, v97);
        }

        goto LABEL_54;
      }
    }

    else
    {
    }

    v98 = *(a1 + 208);
    *(a1 + 208) = 0;

    v99 = *(a1 + 216);
    *(a1 + 216) = 0;

LABEL_54:
    v100 = [v29 stringByAppendingPathComponent:@"tags.tsm"];
    v101 = +[NSFileManager defaultManager];
    v102 = [v101 fileExistsAtPath:v100];

    if (v102)
    {
      v103 = [KeylessMap keylessMapForDirectory:v44 fileName:@"tags.tsm"];
      v104 = *(a1 + 224);
      *(a1 + 224) = v103;

      v105 = qword_100557168;
      if (os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEBUG))
      {
        sub_10029F80C(v105, v106, v107, v108, v109, v110, v111, v112);
      }
    }

    else
    {
      v113 = *(a1 + 224);
      *(a1 + 224) = 0;
    }

    v114 = qword_100557168;
    if (os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEBUG))
    {
      sub_10029F844(v114, a1);
    }

    goto LABEL_61;
  }

LABEL_29:
  sub_10029F8FC(buf);
  v29 = *buf;
LABEL_61:
  objc_storeStrong((a1 + 120), v29);
  pthread_mutex_unlock((a1 + 40));
  if (!*(a1 + 120))
  {
    v115 = +[_PASDeviceState isClassCLocked];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v118 = 67109120;
      v119 = v115;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No effective index path; isClassCLocked=%i", v118, 8u);
    }

    if (v115)
    {
      [_PASDeviceState runBlockWhenDeviceIsClassCUnlocked:&stru_100483C00];
    }

    else if ((sub_10029DA1C(@"/private/var/MobileAsset/Assets/com_apple_MobileAsset_ContextKit/com_apple_MobileAsset_ContextKit.plist") & 1) != 0 || sub_10029DA1C(@"/System/Library/Assets/com_apple_MobileAsset_ContextKit/com_apple_MobileAsset_ContextKit.plist"))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v118 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Requesting service shutdown; we came up when mobileasset was still working on our assets", v118, 2u);
      }

      [CKContextXPCProtocolImpl _shutdownServiceWithReply:0];
    }
  }
}

void sub_10029D704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2 == 1)
  {
    v23 = objc_begin_catch(exception_object);
    v24 = qword_100557168;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [v23 getStackTrace];
      objc_claimAutoreleasedReturnValue();
      sub_10029F688();
    }

    objc_end_catch();
    JUMPOUT(0x10029D390);
  }

  _Unwind_Resume(exception_object);
}

void sub_10029D960(id a1)
{
  v1 = dispatch_get_global_queue(9, 0);
  dispatch_async(v1, &stru_100483C20);
}

void sub_10029D9B0(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Requesting service shutdown; we came up before Class C unlock and couldn't get an effective index path", v1, 2u);
  }

  [CKContextXPCProtocolImpl _shutdownServiceWithReply:0];
}

uint64_t sub_10029DA1C(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 attributesOfItemAtPath:v1 error:0];

  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:NSFileModificationDate];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [v3 objectForKeyedSubscript:NSFileCreationDate];
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    [v5 timeIntervalSinceNow];
    if (v7 < 0.0)
    {
      v7 = -v7;
    }

    if (v7 < 300.0)
    {
      v6 = 1;
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

void sub_10029DDC0(uint64_t a1, void *a2)
{
  v17 = a2;
  [Util elapsedMillisSinceMachAbsolute:*(a1 + 56)];
  v4 = v3;
  (*(*(a1 + 48) + 16))();
  v5 = [*(a1 + 32) type];
  if (v5 == 6)
  {
    v6 = [v17 level1Topics];
    v7 = [v6 count];

    v8 = [*(a1 + 32) url];
    v9 = [v8 hasPrefix:@"app://"];

    if (v9)
    {
      v10 = 7;
    }

    else
    {
      v10 = 8;
    }
  }

  else
  {
    v10 = v5;
    v11 = [v17 results];
    v7 = [v11 count];
  }

  v12 = [*(a1 + 40) indexId];
  v13 = +[MetricsLogging instance];
  v14 = *(a1 + 40);
  [v13 recordQueryLuceneMsec:objc_msgSend(objc_opt_class() queryType:"queryTypeForRequest:" requestType:*(a1 + 32)) indexId:{v10, v12, v4}];

  v15 = +[MetricsLogging instance];
  v16 = [v17 error];
  [v15 recordQueryEventWithLuceneResultCount:v7 error:v16 requestType:v10 indexId:v12];
}

void sub_10029EFB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [CKContextResult alloc];
  v8 = [v5 title];
  v9 = [v7 initWithTitle:v8 query:0 url:0 category:0];

  v10 = [v5 title];
  [v9 setTitle:v10];

  v11 = [v5 topicId];
  [v9 setTopicId:v11];

  v12 = objc_alloc_init(NSMutableOrderedSet);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(a1 + 32) objectAtIndex:{objc_msgSend(*(*(&v20 + 1) + 8 * v17), "unsignedIntValue", v20)}];
        v19 = [v18 uuid];

        if (v19)
        {
          [v12 addObject:v19];
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  [v9 setRelatedItems:v12];
  [*(a1 + 40) addObject:v9];
}

uint64_t sub_10029F50C(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void sub_10029F534(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10029F550(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_10029F56C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10029F58C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 wordlist];
  v5 = [v4 words];
  [v5 count];
  sub_10029F56C(&_mh_execute_header, v6, v7, "Wordlist size: %lu", v8, v9, v10, v11, 0);
}

void sub_10029F644()
{
  sub_10029F524();
  sub_10029F50C(v1, v2, v3, 5.778e-34);
  sub_10029F550(&_mh_execute_header, "Exception while opening Lucene index: %@ %@", v4, v5);
}

void sub_10029F688()
{
  sub_10029F524();
  sub_10029F50C(v1, v2, v3, 5.778e-34);
  sub_10029F550(&_mh_execute_header, "Exception while initializing Constellation: %@ %@", v4, v5);
}

void sub_10029F6CC(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Number of Constellation languages: %d", buf, 8u);
}

void sub_10029F74C()
{
  sub_10029F524();
  sub_10029F50C(v1, v2, v3, 5.778e-34);
  sub_10029F550(&_mh_execute_header, "Exception while initializing query index: %@ %@", v4, v5);
}

void sub_10029F7C8()
{
  sub_10029F524();
  sub_10029F50C(v1, v2, v3, 5.778e-34);
  sub_10029F550(&_mh_execute_header, "Exception while initializing tags map: %@ %@", v4, v5);
}

void sub_10029F844(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 wordlist];
  v5 = [v4 words];
  [v5 count];
  sub_10029F56C(&_mh_execute_header, v6, v7, "Wordlist size: %lu", v8, v9, v10, v11, 0);
}

void sub_10029F8FC(void *a1)
{
  v2 = qword_100557168;
  if (os_log_type_enabled(qword_100557168, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Not loading Lucene index", v3, 2u);
  }

  *a1 = 0;
}

void sub_1002A09FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

void sub_1002A0B48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1002A4490();
    }

    if ([*(a1 + 32) type] == 6)
    {
      v2 = [WeakRetained _contextEngineInstance];
      v3 = v2;
      if (v2 && ![v2 disabled] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v23 = v3;
        v21 = -[RequestTransaction initWithTransactionId:decPending:]([RequestTransaction alloc], "initWithTransactionId:decPending:", @"ContextService.findCategorizations", [*(a1 + 32) incPending]);
        v4 = objc_alloc_init(NSMutableDictionary);
        v22 = a1;
        [*(a1 + 32) urls];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v5 = v28 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v26;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v26 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v25 + 1) + 8 * i);
              v11 = objc_autoreleasePoolPush();
              if ([v10 length])
              {
                v12 = objc_alloc_init(CKContextResponse);
                v13 = [WeakRetained[9] currentLayout];
                [v13 bounds];
                [v12 setAvailableLayoutSize:{v14, v15}];

                v16 = [NSURL URLWithString:v10];
                if (v16)
                {
                  [LuceneContextRequest addTopicsForURL:v16 withEngine:v23 toResponse:v12];
                }

                [v4 setObject:v12 forKeyedSubscript:v10];
              }

              objc_autoreleasePoolPop(v11);
            }

            v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v7);
        }

        (*(*(v22 + 40) + 16))();
        [(RequestTransaction *)v21 discard];

        v17 = v23;
      }

      else
      {
        v20 = *(a1 + 40);
        v17 = +[CKContextResponse serviceDisabledError];
        (*(v20 + 16))(v20, 0, v17);
      }
    }

    else
    {
      v18 = *(a1 + 40);
      v19 = +[CKContextResponse malformedRequestError];
      (*(v18 + 16))(v18, 0, v19);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1002A1398(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 72);
  v7 = a2;
  v4 = [v3 currentLayout];
  [v4 bounds];
  [v7 setAvailableLayoutSize:{v5, v6}];

  [*(a1 + 40) discard];
  (*(*(a1 + 48) + 16))();
}

void sub_1002A1548(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 discard];
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1002A2C78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002A2C90(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 80) == 1 && [*(a1 + 32) includeRequestInResponse])
  {
    [v3 setDebugRequest:*(a1 + 32)];
  }

  v4 = [*(a1 + 32) text];
  if ([*(a1 + 32) includePartsOfSpeech])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Parsing parts of speech from original text", buf, 2u);
    }

    v5 = [LanguageUtilities partsOfSpeechInText:v4];
    v6 = [v5 copy];
    [v3 setPartsOfSpeechToTexts:v6];
  }

  v7 = [*(a1 + 32) donorBundleIdentifiers];
  [v3 setDonorBundleIdentifiers:v7];

  [Util elapsedMillisSinceMachAbsolute:*(a1 + 72)];
  v9 = v8;
  if (([*(a1 + 32) debug] & 1) != 0 || objc_msgSend(*(a1 + 32), "timing"))
  {
    [v3 addDebug:{@"tTotal:%f", *&v9}];
  }

  v10 = [v3 error];

  if (v10)
  {
    v11 = [*(a1 + 32) type];
    if (v11 == 15 || v11 == 1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v3 error];
        v13 = [*(a1 + 32) type];
        *buf = 138412546;
        v21 = v12;
        v22 = 2048;
        v23 = v13;
        v14 = "ContextKit error for Safari request: %@ for type:%lu";
LABEL_18:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v3 error];
      v15 = [*(a1 + 32) type];
      *buf = 138412546;
      v21 = v12;
      v22 = 2048;
      v23 = v15;
      v14 = "ContextKit error: %@ for type:%lu";
      goto LABEL_18;
    }
  }

  (*(*(a1 + 56) + 16))();
  v16 = +[MetricsLogging instance];
  [v16 recordFindResultsMsec:+[LuceneContextEngine queryTypeForRequest:](LuceneContextEngine queryType:"queryTypeForRequest:" requestType:*(a1 + 32)) indexId:{objc_msgSend(*(a1 + 32), "type"), *(*(*(a1 + 64) + 8) + 40), v9}];

  v17 = +[MetricsLogging instance];
  [v17 recordAssetInfo:*(*(a1 + 40) + 8)];

  v18 = *(a1 + 48);
  v19 = objc_opt_self();
}

void sub_1002A2FC0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40) * 1000.0;
    v7 = *(a1 + 32);
    v8 = [v5 context];
    v9 = 134218240;
    v10 = v6;
    v11 = 2048;
    v12 = [v7 _totalDonationsToWaitForWithDonationState:v8];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Timed out waiting for donations with timeout Msec:%f ; total donations to wait for: %lu", &v9, 0x16u);
  }
}

void sub_1002A30C4(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 40) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1002A48AC();
    }
  }

  else
  {
    objc_storeStrong(v6, a2);
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_1002A41B0()
{
  sub_1002A4198();
  sub_1002A418C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002A4228()
{
  sub_1002A4198();
  sub_1002A418C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002A42A0()
{
  sub_1002A41A4();
  sub_1002A418C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1002A4318()
{
  sub_1002A41A4();
  sub_1002A418C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1002A4390()
{
  sub_1002A4198();
  sub_100002E70();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002A455C(uint8_t *buf, uint64_t a2)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Text is too short, length:%lu", buf, 0xCu);
}

void sub_1002A45EC()
{
  sub_1002A41A4();
  sub_1002A418C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1002A4664(uint8_t *buf, uint64_t a2, uint64_t a3, double a4)
{
  *buf = 134218496;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  *(buf + 11) = 2048;
  *(buf + 3) = a4;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Received %lu donations from %lu sources after %f Msec", buf, 0x20u);
}

void sub_1002A46C4()
{
  sub_1002A4198();
  sub_100002E70();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002A473C()
{
  sub_1002A4198();
  sub_100002E70();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002A483C(void *a1, uint64_t a2, uint8_t *buf)
{
  v4 = *(*a2 + 40);
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Using Context engine: %@; id:%@", buf, 0x16u);
}

void sub_1002A4B44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v9 = [*(a1 + 32) substringWithRange:{a3, a4}];
  v10 = [*(a1 + 40) objectForKey:v13];
  if (!v10)
  {
    v10 = objc_opt_new();
    [*(a1 + 40) setObject:v10 forKey:v13];
  }

  v11 = [v10 objectForKey:v9];
  if (v11)
  {
    v12 = v11;
    [(CTKNamedEntity *)v11 incOccurenceWithPosition:a5];
  }

  else
  {
    v12 = [[CTKNamedEntity alloc] initWithName:v9 firstOccurrence:a3 tagType:v13];
    [v10 setObject:v12 forKey:v9];
  }
}

void sub_1002A6B70(id *a1, NSString *a2)
{
  if (NLTagPersonalName == a2)
  {
    v10 = [a1[4] substringWithRange:?];
    v4 = +[NSCharacterSet whitespaceCharacterSet];
    v5 = [v10 componentsSeparatedByCharactersInSet:v4];
    v6 = [v5 count];

    if (v6 >= 2)
    {
      v7 = [[LuceneContextResult alloc] initWithText:v10];
      [a1[5] frameInWindow];
      [(LuceneContextResult *)v7 setFrameInWindow:?];
      [a1[5] absoluteOriginOnScreen];
      [(LuceneContextResult *)v7 setAbsoluteOriginOnScreen:?];
      -[LuceneContextResult setOnScreen:](v7, "setOnScreen:", [a1[5] isOnScreen]);
      v8 = [NSSet setWithObject:CKContextTagTypePersonReal];
      [(LuceneContextResult *)v7 setTags:v8];

      [(LuceneContextResult *)v7 setMinPrefix:1];
      [(LuceneContextResult *)v7 setSourceUIElement:a1[5]];
      v9 = [a1[8] debugStringForStructuredResult:v7];
      [(LuceneContextResult *)v7 setDebug:v9];
      if (([a1[6] containsObject:v7] & 1) == 0 && (objc_msgSend(a1[7], "containsObject:", v10) & 1) == 0)
      {
        [a1[6] addObject:v7];
      }
    }
  }
}

void sub_1002A6EF8(id a1)
{
  v3[0] = NSTextCheckingNameKey;
  v3[1] = NSTextCheckingJobTitleKey;
  v3[2] = NSTextCheckingOrganizationKey;
  v3[3] = NSTextCheckingStreetKey;
  v3[4] = NSTextCheckingCityKey;
  v3[5] = NSTextCheckingStateKey;
  v3[6] = NSTextCheckingZIPKey;
  v3[7] = NSTextCheckingCountryKey;
  v1 = [NSArray arrayWithObjects:v3 count:8];
  v2 = qword_1005571F8;
  qword_1005571F8 = v1;
}

void sub_1002A6FD8(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Not including a result because it was already found.", buf, 2u);
}

void sub_1002A701C(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Not including a match because of merging.", buf, 2u);
}

id sub_1002A7558(uint64_t a1)
{
  v2 = qword_100557208;
  if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEBUG))
  {
    sub_1002A8778(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return [*(a1 + 32) _loadCommonAsset];
}

id sub_1002A75A4(uint64_t a1)
{
  v2 = qword_100557208;
  if (os_log_type_enabled(qword_100557208, OS_LOG_TYPE_DEBUG))
  {
    sub_1002A87F0(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return [*(a1 + 32) _loadCommonAsset];
}

void sub_1002A8524(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1002A84BCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A866C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1002A8688(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1002A86A4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1002A88D0(os_log_t log)
{
  v1 = 138412290;
  v2 = @"IndexMetadata";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@ has missing or ill-formatted LanguageMapping dictionary.", &v1, 0xCu);
}

void sub_1002A8AB8(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_1002A86A4(&_mh_execute_header, a2, a3, "Index ID recomputed, changing from %@ to %@", *v3, *&v3[8], *&v3[16]);
}

uint64_t sub_1002A8D7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100557210 = objc_opt_new();

  return _objc_release_x1();
}

void sub_1002AA064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AA110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1002AA128(uint64_t a1, void *a2, _BYTE *a3)
{
  v39 = a2;
  if ([v39 characterAtIndex:0] != 92)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 40));
    v11 = [WeakRetained inspectTitle:v39 titleForTokenization:*(*(*(a1 + 64) + 8) + 40) conditionals:*(*(*(a1 + 104) + 8) + 40)];

    v12 = *(*(a1 + 104) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    if (v11)
    {
      ++*(*(*(a1 + 112) + 8) + 24);
      [v11 setIndex:?];
      [*(*(*(a1 + 120) + 8) + 40) addObject:v11];
    }

    goto LABEL_10;
  }

  if ([v39 length] < 2)
  {
    goto LABEL_11;
  }

  v5 = [v39 characterAtIndex:1];
  if (v5 == 86)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *(*(*(a1 + 80) + 8) + 24) = 1;
    *a3 = 1;
    goto LABEL_11;
  }

  if (v5 != 76)
  {
    v6 = v39;
    if (v5 == 36)
    {
      if ([v39 length] >= 3)
      {
        v7 = [v39 substringFromIndex:2];
        v8 = *(*(a1 + 64) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;
      }

      goto LABEL_11;
    }

    goto LABEL_63;
  }

  *(*(*(a1 + 80) + 8) + 24) = 1;
  if ([v39 length] < 4 || !objc_msgSend(v39, "getCString:maxLength:encoding:", *(a1 + 128), 256, 4))
  {
    goto LABEL_11;
  }

  v16 = 0;
  v17 = 0;
  v18 = 1;
  while (2)
  {
    v19 = v18 + 2;
    v20 = (v18 << 32) + 0x200000000;
    v18 = v18 + 1;
    while (1)
    {
      v21 = *(*(a1 + 128) + v18);
      if (v21 > 0x29)
      {
        break;
      }

      if (!*(*(a1 + 128) + v18))
      {
        v22 = 0;
        v23 = v19 - 1;
        v24 = -1;
        v25 = 1;
        goto LABEL_31;
      }

      if (v21 == 32)
      {
        v22 = 0;
        goto LABEL_30;
      }

LABEL_24:
      ++v19;
      v20 += &_mh_execute_header;
      ++v18;
      if (([qword_100557238 characterIsMember:v21] & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if (v21 == 42)
    {
      v16 = v19 - 1;
      v17 = 1;
      continue;
    }

    break;
  }

  if (v21 != 45)
  {
    goto LABEL_24;
  }

  v22 = 1;
LABEL_30:
  v25 = 0;
  v23 = v19 - 1;
  v16 = v19 - 1;
  v24 = v19;
LABEL_31:
  if (v16)
  {
    v26 = v16;
  }

  else
  {
    v26 = v23;
  }

  if (v26 < 3)
  {
    goto LABEL_11;
  }

  v11 = [v39 substring:2 endIndex:?];
  if (([v11 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    if (v24 == -1 && (([*(a1 + 40) isEqualToString:v11] & 1) != 0 || *(a1 + 144) == 1 && (objc_msgSend(*(a1 + 48), "containsObject:", v11) & 1) != 0))
    {
      goto LABEL_55;
    }

    goto LABEL_10;
  }

  if (!*(a1 + 136))
  {
    goto LABEL_55;
  }

  if ((v25 & 1) == 0)
  {
    v28 = *(a1 + 128);
    v29 = *(v28 + (v20 >> 32));
    if (v29)
    {
      v27 = 0;
      v30 = (v28 + v19 + 1);
      do
      {
        v31 = v29 - 48;
        if ((v29 - 48) >= 0xAu)
        {
          if ((v29 - 97) > 0x19u)
          {
            goto LABEL_10;
          }

          v31 = v29 - 87;
        }

        v27 = 36 * v27 + v31;
        v32 = *v30++;
        v29 = v32;
      }

      while (v32);
    }

    else
    {
      v27 = 1;
    }

    if (v22)
    {
      v27 = -v27;
    }

LABEL_62:
    *(*(*(a1 + 96) + 8) + 24) = v27;

    v6 = v39;
LABEL_63:
    v34 = *(*(*(a1 + 104) + 8) + 40);
    if (!v34)
    {
      v35 = objc_opt_new();
      v36 = *(*(a1 + 104) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = v35;

      v6 = v39;
      v34 = *(*(*(a1 + 104) + 8) + 40);
    }

    [v34 addObject:v6];
    goto LABEL_11;
  }

  if (v24 == v23)
  {
    if (v22)
    {
      v27 = -1;
    }

    else
    {
      v27 = 1;
    }

    goto LABEL_62;
  }

  if (v24 == -1)
  {
LABEL_55:
    *(*(*(a1 + 72) + 8) + 24) = 1;
    if (v17)
    {
      v33 = v11;
    }

    else
    {
      v33 = 0;
    }

    objc_storeStrong((*(*(a1 + 88) + 8) + 40), v33);
  }

LABEL_10:

LABEL_11:

  return _objc_release_x1();
}

int64_t sub_1002AA558(id a1, TitleInfo *a2, TitleInfo *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(TitleInfo *)v4 minPrefix];
  if (v6 < [(TitleInfo *)v5 minPrefix])
  {
    goto LABEL_2;
  }

  v8 = [(TitleInfo *)v4 minPrefix];
  if (v8 != [(TitleInfo *)v5 minPrefix])
  {
LABEL_12:
    v7 = 1;
    goto LABEL_13;
  }

  v9 = [(TitleInfo *)v4 tokenCountMatching];
  if (v9 <= [(TitleInfo *)v5 tokenCountMatching])
  {
    v10 = [(TitleInfo *)v4 tokenCountMatching];
    if (v10 == [(TitleInfo *)v5 tokenCountMatching])
    {
      v11 = [(TitleInfo *)v4 tokenCountPrimary];
      if (v11 <= [(TitleInfo *)v5 tokenCountPrimary])
      {
        v12 = [(TitleInfo *)v4 tokenCountPrimary];
        if (v12 != [(TitleInfo *)v5 tokenCountPrimary])
        {
          goto LABEL_12;
        }

        v13 = [(TitleInfo *)v4 index];
        if (v13 >= [(TitleInfo *)v5 index])
        {
          if (v4 == v5)
          {
            v7 = 0;
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
      v14 = [(TitleInfo *)v4 tokenCountMatching];
      if (v14 <= [(TitleInfo *)v5 tokenCountMatching])
      {
        goto LABEL_12;
      }
    }
  }

LABEL_2:
  v7 = -1;
LABEL_13:

  return v7;
}

float sub_1002AB204(uint64_t a1, void *a2, int *a3, void *a4)
{
  v6 = *(*(a1 + 32) + 136);
  v7 = a3[8];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = NSMapGet(v6, (v7 + [v8 docID]));

  v12 = [v11 phrases];
  [v12 addObject:v10];

  [v8 score];
  v14 = v13;

  return v14;
}

float sub_1002AB2C8(uint64_t a1, void *a2, int *a3, void *a4)
{
  v6 = *(*(a1 + 32) + 136);
  v7 = a3[8];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = NSMapGet(v6, (v7 + [v8 docID]));

  v12 = [v11 terms];
  [v12 addObject:v10];

  [v8 score];
  v14 = v13;

  return v14;
}

float sub_1002AB38C(uint64_t a1, void *a2, int *a3, void *a4)
{
  v6 = *(*(a1 + 32) + 136);
  v7 = a3[8];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = NSMapGet(v6, (v7 + [v8 docID]));

  v12 = [v11 secondary];
  [v12 addObject:v10];

  [v8 score];
  v14 = v13;

  return v14;
}

void sub_1002AC8EC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  _Block_object_dispose(&STACK[0x208], 8);
  if (a2 == 1)
  {
    v24 = objc_begin_catch(a1);
    v25 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1002BB860();
    }

    v26 = objc_opt_new();
    v27 = [[JavaIoPrintWriter alloc] initWithJavaIoWriter:v26 withBoolean:0];
    [v24 printStackTraceWithJavaIoPrintWriter:v27];
    [(JavaIoPrintWriter *)v27 close];
    if (*(a21 + 265))
    {
      v28 = v26;
    }

    else
    {
      v28 = v24;
    }

    v29 = [v28 description];
    v30 = objc_alloc(*(v21 + 120));
    v31 = [NSDictionary dictionaryWithObject:v29 forKey:NSLocalizedFailureReasonErrorKey];
    v32 = [NSError errorWithDomain:ContextKitErrorDomain code:1 userInfo:v31];
    v33 = [v30 initWithError:v32 requestType:{objc_msgSend(*(a21 + 272), "type")}];
    v34 = *(a21 + 304);
    *(a21 + 304) = v33;

    if ((*(a21 + 265) & 1) == 0)
    {
      v35 = [v26 description];
      [_PASCrashHelper simulateCrashWithDescription:v35];
      [v35 enumerateLinesUsingBlock:&stru_100483FB0];
      v24;
    }

    objc_end_catch();
    JUMPOUT(0x1002AC044);
  }

  _Block_object_dispose(&STACK[0x238], 8);
  _Unwind_Resume(a1);
}

void sub_1002ACBCC(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (!v2 || [v2 length] < 2 || *(a1 + 56) == 1 && (objc_msgSend(*(a1 + 32), "isLanguageSupported:", *(*(*(a1 + 48) + 8) + 40)) & 1) == 0)
  {
    v3 = [Util languageTagForString:*(a1 + 40)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(*(a1 + 48) + 8) + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Detected language: %@", &v7, 0xCu);
    }
  }
}

uint64_t sub_1002ACCEC(uint64_t a1)
{
  v2 = [*(a1 + 32) _constructQuery];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_1002ACD38(uint64_t a1)
{
  v2 = [Util languageTagForString:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1002ACD8C(id a1, NSString *a2, BOOL *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1002BB984();
  }
}

void sub_1002ACDCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 288));
  v3 = [WeakRetained constellation];

  v4 = [*(*(a1 + 32) + 272) overrideConstellationMinCount];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = [*(*(a1 + 32) + 272) overrideConstellationMinWeight];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 3;
  }

  v8 = [v3 newRequestWithMaxCategories:objc_msgSend(*(*(a1 + 32) + 272) minQidCount:"maxConstellationTopics") minWeight:{v5, v7}];
  v9 = objc_autoreleasePoolPush();
  v10 = [v8 newQIDContainer];
  v11 = *(a1 + 40);
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1002AD21C;
  v47[3] = &unk_100483FD8;
  v48 = v10;
  v12 = v10;
  [v11 enumerateKeysAndObjectsUsingBlock:v47];
  [v8 prepareItemsWithComAppleContextkitCategoriesConstellation_Request_QIDCountPQ:v12];

  objc_autoreleasePoolPop(v9);
  v13 = objc_autoreleasePoolPush();
  [v8 trimCounts];
  objc_autoreleasePoolPop(v13);
  [v8 subtractAncestorCounts];
  v14 = [v3 newTitleMapper];
  v37 = [v3 newQIDMapper];
  v15 = [*(*(a1 + 32) + 304) level2Topics];
  v16 = v15;
  v34 = v3;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = v17;

  [*(*(a1 + 32) + 304) setLevel2Topics:v18];
  context = objc_autoreleasePoolPush();
  v33 = v8;
  [v8 trimMatches];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v38 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v38)
  {
    v36 = *v44;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v43 + 1) + 8 * i);
        v21 = [v14 categoryIdToTitleWithInt:*(v20 + 8)];
        v22 = [CKContextResult alloc];
        v23 = [v14 categoryIdToTitleWithInt:*(v20 + 24)];
        v24 = [v22 initWithTitle:v21 query:0 url:0 category:v23];

        v25 = [v37 categoryIdToTitleWithInt:*(v20 + 8)];
        [v24 setTopicId:v25];

        v26 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [*(v20 + 32) size]);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v27 = *(v20 + 32);
        v28 = [v27 countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v40;
          do
          {
            for (j = 0; j != v29; j = j + 1)
            {
              if (*v40 != v30)
              {
                objc_enumerationMutation(v27);
              }

              [v26 addObject:*(*(&v39 + 1) + 8 * j)];
            }

            v29 = [v27 countByEnumeratingWithState:&v39 objects:v49 count:16];
          }

          while (v29);
        }

        [v24 setRelatedItems:v26];
        [v18 addObject:v24];
      }

      v38 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v38);
  }

  objc_autoreleasePoolPop(context);
}

void sub_1002AD21C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 addItemWithNSString:v5 withInt:{objc_msgSend(a3, "integerValue")}];
}

void sub_1002B18B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x288], 8);
  _Block_object_dispose(&STACK[0x2A8], 8);
  _Block_object_dispose((v70 - 248), 8);
  _Block_object_dispose((v70 - 216), 8);
  _Block_object_dispose((v70 - 184), 8);
  _Block_object_dispose((v70 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1002B198C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    [v3 reset];
    v9 = 1;
    v5 = 10000;
    while (v9 == 1)
    {
      v6 = [v3 incrementToken];
      v7 = v5-- != 0;
      v8 = v7;
      if ((v6 & v8) != 1)
      {
        break;
      }

      v4[2](v4, &v9);
    }

    [v3 end];
    [v3 close];
  }
}

void sub_1002B1A78(uint64_t a1, _BYTE *a2)
{
  ++*(*(*(a1 + 64) + 8) + 24);
  v4 = [*(a1 + 32) length];
  v5 = *(a1 + 40);
  if (v4 < *(v5 + 48) || (v6 = v4, v4 > *(v5 + 52)))
  {
    ++*(*(*(a1 + 72) + 8) + 24);
    ++*(*(*(a1 + 80) + 8) + 24);
    ++*(*(*(a1 + 88) + 8) + 24);
    return;
  }

  v7 = [*(a1 + 32) buffer];
  v8 = [NSString valueOfChars:v7 offset:0 count:v6];

  if ([v8 length])
  {
    *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24);
    *(*(*(a1 + 112) + 8) + 24) = *(*(*(a1 + 120) + 8) + 24);
    *(*(*(a1 + 128) + 8) + 24) = [*(a1 + 48) startOffset];
    *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 48) endOffset];
    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = sub_1002AA110;
    v71 = sub_1002AA120;
    v72 = [*(*(a1 + 40) + 80) objectForKey:v8];
    v9 = v68[5];
    v10 = v9;
    if (!v9)
    {
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_1002B2640;
      v64[3] = &unk_100484028;
      v11 = *(a1 + 40);
      v66 = &v67;
      v64[4] = v11;
      v65 = v8;
      [Util elapsedMillisForBlock:v64 enableTiming:*(*(a1 + 40) + 24)];
      v12 = *(*(a1 + 136) + 8);
      *&v13 = v13 + *(v12 + 24);
      *(v12 + 24) = LODWORD(v13);
      if ([v68[5] valid])
      {
        [v68[5] setFirstOccurence:*(*(*(a1 + 64) + 8) + 24)];
        [v68[5] setFirstOccurenceUnique:*(*(*(a1 + 72) + 8) + 24)];
        if (*(a1 + 184) >= *(*(*(a1 + 64) + 8) + 24))
        {
          [*(*(a1 + 40) + 96) addObject:v68[5]];
        }

        v14 = [v68[5] needOffsets];
        [v68[5] setAddOffsets:v14];
        if ([v68[5] isPrimary])
        {
          ++*(*(*(a1 + 144) + 8) + 24);
        }
      }

      v10 = v68[5];
    }

    if ([v10 valid])
    {
      *(*(*(a1 + 120) + 8) + 24) = [qword_100557268 characterIsMember:{objc_msgSend(*(a1 + 56), "charAtWithInt:", *(*(*(a1 + 128) + 8) + 24))}];
      if (*(*(*(a1 + 96) + 8) + 24) >= 1)
      {
        v15 = *(*(*(a1 + 128) + 8) + 24);
        if (v15 >= 1)
        {
          v16 = [*(a1 + 56) charAtWithInt:(v15 - 1)];
          if ([*(*(a1 + 40) + 240) characterIsMember:v16])
          {
            v17 = *(*(*(a1 + 128) + 8) + 24);
            v18 = (v17 - 2);
            if (v17 < 2 || ([qword_100557278 characterIsMember:{objc_msgSend(*(a1 + 56), "charAtWithInt:", v18)}] & 1) != 0)
            {
              [v68[5] setStartsQuotedCount:{objc_msgSend(v68[5], "startsQuotedCount", v18) + 1}];
              [v68[5] setAddOffsets:1];
            }
          }

          if ([*(*(a1 + 40) + 248) characterIsMember:v16])
          {
            [v68[5] setPartialNgramCount:{objc_msgSend(v68[5], "partialNgramCount") + 1}];
          }
        }
      }

      if (*(*(*(a1 + 104) + 8) + 24) < *(a1 + 232))
      {
        v19 = [*(a1 + 56) charAtWithInt:?];
        if ([*(*(a1 + 40) + 240) characterIsMember:v19] && (*(*(*(a1 + 104) + 8) + 24) + 1 >= *(a1 + 232) || (objc_msgSend(qword_100557278, "characterIsMember:", objc_msgSend(*(a1 + 56), "charAtWithInt:")) & 1) != 0))
        {
          [v68[5] setEndsQuotedCount:{objc_msgSend(v68[5], "endsQuotedCount") + 1}];
          [v68[5] setAddOffsets:1];
        }

        if ([*(*(a1 + 40) + 248) characterIsMember:v19])
        {
          [v68[5] setPartialNgramCount:{objc_msgSend(v68[5], "partialNgramCount") + 1}];
        }
      }
    }

    else
    {
      *(*(*(a1 + 120) + 8) + 24) = 0;
    }

    v20 = v68[5];
    v21 = v20[1] < 2uLL;
    [v20 incrementCount];
    v22 = *(*(*(a1 + 152) + 8) + 40);
    if (v22)
    {
      v23 = [v22 token];
      if (v23)
      {
        v24 = [v68[5] token];

        if (v24)
        {
          [*(*(*(a1 + 152) + 8) + 40) weight];
          if (v25 <= 0.0 && ([v68[5] weight], v26 <= 0.0))
          {
            v27 = [TokenInfo isSurnameType:*(v68[5] + 8)];
          }

          else
          {
            v27 = 1;
          }

          v28 = *(*(*(a1 + 112) + 8) + 24) == 1 ? *(*(*(a1 + 120) + 8) + 24) : 0;
          if (v27)
          {
            v29 = *(*(*(a1 + 96) + 8) + 24);
            if (v29 < 1 || v29 >= *(*(*(a1 + 128) + 8) + 24))
            {
              v34 = 1;
LABEL_49:
              v35 = v9 == 0;
              if (*(a1 + 192) >= (*(*(*(a1 + 64) + 8) + 24) - *(*(*(a1 + 160) + 8) + 24)) || *(*(*(a1 + 128) + 8) + 24) - *(*(*(a1 + 96) + 8) + 24) < *(a1 + 200))
              {
                v36 = [*(*(*(a1 + 152) + 8) + 40) token];
                [*(*(*(a1 + 168) + 8) + 40) setTokenA:v36];

                v37 = [v68[5] token];
                [*(*(*(a1 + 168) + 8) + 40) setTokenB:v37];

                v58 = 0;
                v59 = &v58;
                v60 = 0x3032000000;
                v61 = sub_1002AA110;
                v62 = sub_1002AA120;
                v63 = [*(*(a1 + 40) + 88) objectForKey:*(*(*(a1 + 168) + 8) + 40)];
                v38 = v59[5];
                if (!v38)
                {
                  v51[0] = _NSConcreteStackBlock;
                  v51[1] = 3221225472;
                  v51[2] = sub_1002B26A8;
                  v51[3] = &unk_100484050;
                  v39 = *(a1 + 168);
                  v52 = *(a1 + 40);
                  v53 = v39;
                  v40 = *(a1 + 152);
                  v54 = &v58;
                  v55 = v40;
                  v56 = &v67;
                  v57 = *(a1 + 112);
                  [Util elapsedMillisForBlock:v51 enableTiming:*(v52 + 24)];
                  v41 = *(*(a1 + 136) + 8);
                  *&v42 = v42 + *(v41 + 24);
                  *(v41 + 24) = LODWORD(v42);
                  if ([v59[5] valid])
                  {
                    [v59[5] setFirstOccurence:*(*(*(a1 + 64) + 8) + 24)];
                    [v59[5] setFirstOccurenceUnique:*(*(*(a1 + 72) + 8) + 24)];
                    [v59[5] setContinuous:{v34 | objc_msgSend(v59[5], "continuous")}];
                    if (*(a1 + 184) >= *(*(*(a1 + 64) + 8) + 24))
                    {
                      [*(*(a1 + 40) + 104) addObject:v59[5]];
                    }

                    if (([v68[5] addOffsets] & 1) == 0)
                    {
                      v43 = [v68[5] offsets];

                      if (!v43 && ([TokenInfo isTopicType:*(v59[5] + 8)]|| [TokenInfo isSurnameType:*(v59[5] + 8)]))
                      {
                        [v68[5] setAddOffsets:1];
                      }
                    }
                  }

                  v38 = v59[5];
                  v35 = 1;
                }

                v21 = v38[1] < 2uLL;
                [v38 incrementCount];
                v44 = (*(*(*(a1 + 40) + 312) + 128) & v28 & 1) != 0 && *(v68[5] + 8) == 5;
                v46 = *(v59[5] + 8) != 0;
                v47 = [TokenInfo isSurnameType:*(*(*(*(a1 + 152) + 8) + 40) + 8)];
                v48 = *(*(*(a1 + 152) + 8) + 40);
                v49 = (v47 & 1) != 0 || v48[1] == 8;
                if (v46 && v44 && v49)
                {
                  v50 = v68[5];
                  if (v48 != v50)
                  {
                    [v50 addPrecedingToken:?];
                  }
                }

                _Block_object_dispose(&v58, 8);

                if (!v35)
                {
LABEL_64:
                  if (v21)
                  {
                    v45 = *(a1 + 80);
LABEL_82:
                    ++*(*(v45 + 8) + 24);
LABEL_84:
                    if ([v68[5] addOffsets])
                    {
                      [v68[5] addOffset:*(a1 + 48)];
                    }

                    objc_storeStrong((*(*(a1 + 152) + 8) + 40), v68[5]);
                    _Block_object_dispose(&v67, 8);

                    goto LABEL_87;
                  }

                  goto LABEL_83;
                }

LABEL_74:
                ++*(*(*(a1 + 72) + 8) + 24);
                if (!v21)
                {
                  ++*(*(*(a1 + 176) + 8) + 24);
                }

                if (*(a1 + 208) <= *(*(*(a1 + 144) + 8) + 24) || *(a1 + 216) <= *(*(*(a1 + 176) + 8) + 24) || *(a1 + 224) <= *(*(*(a1 + 72) + 8) + 24))
                {
                  *a2 = 0;
                }

                if (v21)
                {
                  ++*(*(*(a1 + 80) + 8) + 24);
                  v45 = *(a1 + 88);
                  goto LABEL_82;
                }

LABEL_83:
                *(*(*(a1 + 160) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
                goto LABEL_84;
              }
            }

            else
            {
              v30 = 1;
              while (1)
              {
                v31 = [*(a1 + 56) charAtWithInt:v29];
                if ([*(*(a1 + 40) + 224) characterIsMember:v31])
                {
                  break;
                }

                v32 = [qword_100557270 characterIsMember:v31];
                v33 = *(*(a1 + 40) + 232);
                if (v33)
                {
                  v30 &= [v33 characterIsMember:v31];
                }

                v28 &= v32 ^ 1;
                v29 = (v29 + 1);
                if (v29 >= *(*(*(a1 + 128) + 8) + 24))
                {
                  v34 = v30 & 1;
                  goto LABEL_49;
                }
              }
            }
          }
        }
      }
    }

    if (v9)
    {
      goto LABEL_64;
    }

    goto LABEL_74;
  }

LABEL_87:
}

id sub_1002B2640(uint64_t a1)
{
  v2 = [*(a1 + 32) _tokenInfoForToken:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 80);
  v7 = *(*(*(a1 + 48) + 8) + 40);

  return [v6 setObject:v7 forKey:v5];
}

void sub_1002B26A8(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v3 = *(*(*(a1 + 80) + 8) + 24);
  }

  else
  {
    v3 = 0;
  }

  v7 = v2;
  v4 = [*(a1 + 32) _bigramInfoForTokenA:*(*(*(a1 + 56) + 8) + 40) tokenB:*(*(*(a1 + 64) + 8) + 40) bigram:v2 bothStartUppercase:v3 & 1];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(a1 + 32) + 88) setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v7];
}

void sub_1002B2D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Unwind_Resume(a1);
}

void sub_1002B2E2C(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  if (v2)
  {
    v3 = v2;
    if (v2 <= *(*(a1 + 40) + 52))
    {
      v4 = [*(a1 + 32) buffer];
      v21 = [NSString valueOfChars:v4 offset:0 count:v3];

      if ([v21 length])
      {
        if ([*(*(*(a1 + 56) + 8) + 40) length])
        {
          [*(*(*(a1 + 56) + 8) + 40) appendString:@" "];
        }

        [*(*(*(a1 + 56) + 8) + 40) appendString:v21];
        [*(a1 + 48) setTokenCount:{objc_msgSend(*(a1 + 48), "tokenCount") + 1}];
        v5 = [*(*(a1 + 40) + 80) objectForKey:v21];
        v6 = v5;
        if (v5)
        {
          v7 = [v5 token];

          if (v7)
          {
            if ([TokenInfo isTitleMatchType:v6[1]])
            {
              v8 = *(*(*(a1 + 64) + 8) + 40);
              v9 = [v6 token];
              [v8 addObject:v9];

              [*(a1 + 48) setTokenCountMatching:{objc_msgSend(*(a1 + 48), "tokenCountMatching") + 1}];
              if ([v6 isPrimary])
              {
                [*(a1 + 48) setTokenCountPrimary:{objc_msgSend(*(a1 + 48), "tokenCountPrimary") + 1}];
              }
            }

            else
            {
              [*(a1 + 48) setTokenCount:{objc_msgSend(*(a1 + 48), "tokenCount") - 1}];
            }

            v10 = *(*(*(a1 + 72) + 8) + 40);
            if (v10)
            {
              v11 = [v10 token];

              if (v11)
              {
                v12 = [*(*(*(a1 + 72) + 8) + 40) token];
                [*(*(*(a1 + 80) + 8) + 40) setTokenA:v12];

                v13 = [v6 token];
                [*(*(*(a1 + 80) + 8) + 40) setTokenB:v13];

                v14 = [*(*(a1 + 40) + 88) objectForKey:*(*(*(a1 + 80) + 8) + 40)];
                if (v14 && [TokenInfo isTitleMatchType:v14[1]])
                {
                  v15 = [*(*(*(a1 + 72) + 8) + 40) token];
                  v16 = [v6 token];
                  v17 = *(*(*(a1 + 64) + 8) + 40);
                  v18 = [NSString stringWithFormat:@"%@ %@", v15, v16];
                  [v17 addObject:v18];

                  [*(*(*(a1 + 64) + 8) + 40) addObject:v15];
                  [*(*(*(a1 + 64) + 8) + 40) addObject:v16];
                  if ([TokenInfo isTitleMatchType:v6[1]])
                  {
                    [*(a1 + 48) setTokenCount:{objc_msgSend(*(a1 + 48), "tokenCount") - 1}];
                    [*(a1 + 48) setTokenCountMatching:{objc_msgSend(*(a1 + 48), "tokenCountMatching") - 1}];
                  }

                  if ([TokenInfo isTitleMatchType:*(*(*(*(a1 + 72) + 8) + 40) + 8)])
                  {
                    [*(a1 + 48) setTokenCount:{objc_msgSend(*(a1 + 48), "tokenCount") - 1}];
                    [*(a1 + 48) setTokenCountMatching:{objc_msgSend(*(a1 + 48), "tokenCountMatching") - 1}];
                  }

                  [*(a1 + 48) setTokenCount:{objc_msgSend(*(a1 + 48), "tokenCount") + 2}];
                  [*(a1 + 48) setTokenCountMatching:{objc_msgSend(*(a1 + 48), "tokenCountMatching") + 2}];
                  if ([v14 isPrimary])
                  {
                    [*(a1 + 48) setTokenCountPrimary:{objc_msgSend(*(a1 + 48), "tokenCountPrimary") + 2}];
                  }
                }
              }
            }
          }

          else
          {
            [*(a1 + 48) setTokenCountMatching:{objc_msgSend(*(a1 + 48), "tokenCountMatching") + 1}];
          }
        }

        v19 = *(*(a1 + 72) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v6;
      }
    }
  }
}

void sub_1002B32A4(uint64_t a1, _BYTE *a2)
{
  v4 = [*(a1 + 32) length];
  v5 = *(a1 + 40);
  if (v4 >= *(v5 + 48))
  {
    v6 = v4;
    if (v4 <= *(v5 + 52))
    {
      v7 = [*(a1 + 32) buffer];
      v9 = [NSString valueOfChars:v7 offset:0 count:v6];

      if ([v9 length])
      {
        v8 = [*(*(a1 + 40) + 80) objectForKey:v9];

        if (!v8)
        {
          *a2 = 0;
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }
      }
    }
  }
}

void sub_1002B3BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B3C5C(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 24) < 0.0)
  {
    *(v1 + 24) = 1061158912;
  }

  return result;
}

void sub_1002B6B7C(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = [[ComAppleProactiveLuceneCachingQuery alloc] initWithOrgApacheLuceneSearchQuery:*(a1 + 32) withOrgApacheLuceneSearchIndexSearcher:*(*(a1 + 40) + 32)];
  v50 = 0;
  v51[0] = &v50;
  v51[1] = 0x3032000000;
  v51[2] = sub_1002AA110;
  v51[3] = sub_1002AA120;
  v52 = 0;
  v3 = objc_autoreleasePoolPush();
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1002B7054;
  v46[3] = &unk_100484118;
  v4 = *(a1 + 40);
  v48 = &v50;
  v46[4] = v4;
  v5 = v2;
  v6 = *(a1 + 48);
  v39 = v5;
  v47 = v5;
  v49 = v6;
  [Util elapsedMillisForBlock:v46 enableTiming:*(*(a1 + 40) + 24)];
  v8 = *(a1 + 40);
  if (*(v8 + 24) == 1)
  {
    v9 = v7;
    [*(v8 + 304) addDebug:{@"tTopDocs: %f, nTopDocs: %i", v9, *(*(v51[0] + 40) + 8), context}];
    v8 = *(a1 + 40);
  }

  if (*(v8 + 266) == 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1002BBFE0(v51);
  }

  objc_autoreleasePoolPop(v3);
  v10 = *(v51[0] + 40);
  if (*(v10 + 8))
  {
    v11 = [*(v10 + 16) length];
    v12 = *&NSIntegerMapKeyCallBacks.retain;
    *&keyCallBacks.hash = *&NSIntegerMapKeyCallBacks.hash;
    *&keyCallBacks.retain = v12;
    *&keyCallBacks.describe = *&NSIntegerMapKeyCallBacks.describe;
    valueCallBacks = NSObjectMapValueCallBacks;
    v13 = NSCreateMapTable(&keyCallBacks, &valueCallBacks, v11);
    v14 = *(a1 + 40);
    v15 = *(v14 + 136);
    *(v14 + 136) = v13;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v16 = *(*(v51[0] + 40) + 16);
    v17 = [v16 countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v17)
    {
      v18 = *v41;
      v19 = &OBJC_IVAR___OrgApacheLuceneSearchScoreDoc_score_;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v40 + 1) + 8 * i);
          v22 = *(v21 + *v19);
          v23 = (v22 & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
          v24 = ((v22 & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
          if (v22 >= 0)
          {
            v24 = 0;
            v23 = 0;
          }

          v25 = v22 & 0x7FFFFFFF;
          if (!v25)
          {
            v23 = 1;
          }

          v26 = v25 <= 2139095040;
          v27 = v25 == 2139095040 || v23;
          if (!v26)
          {
            v27 = 1;
          }

          if ((v27 | v24) == 1 || (v28 = *(v21 + 12), (v28 & 0x80000000) != 0) || (v29 = *(a1 + 40), v28 >= *(v29 + 8)))
          {
            *(v21 + 12) = -1;
          }

          else
          {
            v30 = v19;
            v31 = a1;
            v32 = *(v29 + 136);
            v33 = objc_opt_new();
            NSMapInsertKnownAbsent(v32, v28, v33);

            a1 = v31;
            v19 = v30;
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v17);
    }

    v34 = objc_autoreleasePoolPush();
    v35 = [ComAppleProactiveLuceneTopDocsFilter alloc];
    v36 = [(ComAppleProactiveLuceneTopDocsFilter *)v35 initWithOrgApacheLuceneSearchTopDocs:*(v51[0] + 40)];
    [*(*(a1 + 40) + 112) setEnabledWithBoolean:1];
    [*(*(a1 + 40) + 120) setEnabledWithBoolean:1];
    [*(*(a1 + 40) + 128) setEnabledWithBoolean:1];
    v37 = [*(*(a1 + 40) + 32) searchWithOrgApacheLuceneSearchQuery:v39 withOrgApacheLuceneSearchFilter:v36 withInt:{objc_msgSend(*(*(v51[0] + 40) + 16), "length")}];

    objc_autoreleasePoolPop(v34);
    [*(a1 + 40) _processResults:*(v51[0] + 40) topK:*(a1 + 48)];
  }

  _Block_object_dispose(&v50, 8);

  objc_autoreleasePoolPop(context);
}

uint64_t sub_1002B7054(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) searchWithOrgApacheLuceneSearchQuery:*(a1 + 40) withInt:(*(a1 + 56) + 5)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

int64_t sub_1002B7F7C(id a1, LuceneContextResult *a2, LuceneContextResult *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(LuceneContextResult *)v4 forceBottomRank]|| ![(LuceneContextResult *)v5 forceBottomRank])
  {
    v7 = [(LuceneContextResult *)v4 forceBottomRank];
    if (v7 == [(LuceneContextResult *)v5 forceBottomRank])
    {
      v8 = [(LuceneContextResult *)v4 docId];
      v9 = [(LuceneContextResult *)v5 docId];
      v6 = [v8 compare:v9];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

int64_t sub_1002B8044(id a1, LuceneContextResult *a2, LuceneContextResult *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(LuceneContextResult *)v4 blendedScore];
  v7 = [(LuceneContextResult *)v5 blendedScore];
  v8 = [v6 compare:v7];
  if (v8)
  {
    v9 = -v8;
  }

  else
  {
    v10 = [(LuceneContextResult *)v4 title];
    v11 = [(LuceneContextResult *)v5 title];
    v9 = [v10 compare:v11];
  }

  return v9;
}

int64_t sub_1002B872C(id a1, LuceneContextResult *a2, LuceneContextResult *a3)
{
  v4 = a2;
  v5 = a3;
  [(LuceneContextResult *)v4 luceneScore];
  v7 = v6;
  [(LuceneContextResult *)v5 luceneScore];
  if (v7 <= v8)
  {
    [(LuceneContextResult *)v4 luceneScore];
    v11 = v10;
    [(LuceneContextResult *)v5 luceneScore];
    if (v11 == v12)
    {
      [(LuceneContextResult *)v4 luceneScore];
      v14 = v13;
      [(LuceneContextResult *)v5 luceneScore];
      if (v14 >= v15)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void sub_1002B8994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1002B89BC(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  if (v2)
  {
    v3 = v2;
    if (v2 <= *(*(a1 + 40) + 52))
    {
      v4 = [*(a1 + 32) buffer];
      v6 = [NSString valueOfChars:v4 offset:0 count:v3];

      v5 = *(*(a1 + 48) + 8);
      if (*(v5 + 24) == 1)
      {
        *(v5 + 24) = 0;
      }

      else
      {
        [*(*(*(a1 + 56) + 8) + 40) appendString:@" "];
      }

      [*(*(*(a1 + 56) + 8) + 40) appendString:v6];
    }
  }
}

id sub_1002B9ED8(void *a1)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_1002AA110;
  v7[4] = sub_1002AA120;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002BB668;
  v4[3] = &unk_1004842F8;
  v6 = v7;
  v1 = a1;
  v5 = v1;
  v2 = [v4 copy];

  _Block_object_dispose(v7, 8);

  return v2;
}

void sub_1002B9FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1002B9FF0(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 getWithNSString:@"portrait"];

  return v2;
}

id sub_1002BA050(uint64_t a1)
{
  v4 = 0;
  v2 = [*(a1 + 32) bestTitleWithSeeOtherDocIdRelative:&v4];
  [*(a1 + 32) setSeeOtherDocIdRelative:v4];

  return v2;
}

id sub_1002BA0B0(uint64_t a1)
{
  [*(*(a1 + 32) + 152) removeAllObjects];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = [*(*(*(a1 + 40) + 8) + 40) terms];
  v3 = [v2 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v32;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v32 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v31 + 1) + 8 * v6) getQuery];
      v8 = [v7 getUserObject];

      v9 = *(*(a1 + 32) + 152);
      v10 = [v8 term];
      v11 = [v10 text];
      [v9 addObject:v11];

      if ([*(*(a1 + 32) + 152) count] > 2)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v2 = [*(*(*(a1 + 40) + 8) + 40) phrases];
    v12 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (!v12)
    {
LABEL_17:

      v25 = *(*(a1 + 32) + 152);
      goto LABEL_19;
    }

    v13 = v12;
    v14 = *v28;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(v2);
      }

      v16 = [*(*(&v27 + 1) + 8 * v15) getQuery];
      v8 = [v16 getUserObject];

      v17 = *(*(a1 + 32) + 152);
      v18 = [v8 tokenA];
      v19 = [v18 term];
      v20 = [v19 text];
      [v17 addObject:v20];

      v21 = *(*(a1 + 32) + 152);
      v22 = [v8 tokenB];
      v23 = [v22 term];
      v24 = [v23 text];
      [v21 addObject:v24];

      if ([*(*(a1 + 32) + 152) count] > 2)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v13)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }
  }

  v25 = *(*(a1 + 32) + 152);

LABEL_19:

  return v25;
}

id sub_1002BAA6C(uint64_t a1)
{
  ++*(*(*(a1 + 48) + 8) + 24);
  result = [*(a1 + 32) length];
  v3 = *(a1 + 40);
  if (result < *(v3 + 48))
  {
    return result;
  }

  v4 = result;
  if (result > *(v3 + 52))
  {
    return result;
  }

  v5 = [*(a1 + 32) buffer];
  v25 = [NSString valueOfChars:v5 offset:0 count:v4];

  if ([v25 length])
  {
    v6 = [*(*(a1 + 40) + 80) objectForKey:v25];
    v7 = v6;
    if (v6 && ([v6 token], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [TokenInfo isTitleMatchType:v7[1]];
      v10 = v9;
      if (v9)
      {
        v11 = [v7 isPrimary];
        v12 = 64;
        if (v11)
        {
          v12 = 56;
        }

        ++*(*(*(a1 + v12) + 8) + 24);
      }

      v13 = *(*(*(a1 + 72) + 8) + 40);
      if (v13)
      {
        v14 = [v13 token];

        if (v14)
        {
          [*(*(*(a1 + 72) + 8) + 40) weight];
          if (v15 > 0.0 || ([v7 weight], v16 > 0.0))
          {
            v17 = [*(*(*(a1 + 72) + 8) + 40) token];
            [*(*(*(a1 + 80) + 8) + 40) setTokenA:v17];

            v18 = [v7 token];
            [*(*(*(a1 + 80) + 8) + 40) setTokenB:v18];

            v19 = [*(*(*(a1 + 80) + 8) + 40) tokenA];
            if (v19)
            {
              v20 = v19;
              v21 = [*(*(*(a1 + 80) + 8) + 40) tokenB];

              if (v21)
              {
                v22 = [*(*(a1 + 40) + 88) objectForKey:*(*(*(a1 + 80) + 8) + 40)];
                if (v22 && [TokenInfo isTitleMatchType:v22[1]])
                {
                  v23 = [v22 isPrimary];
                  v24 = 96;
                  if (v23)
                  {
                    v24 = 88;
                  }

                  ++*(*(*(a1 + v24) + 8) + 24);
                  v10 = 1;
                }
              }
            }
          }
        }
      }

      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v7);
      if (v10)
      {
        goto LABEL_27;
      }
    }

    else
    {
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v7);
    }

    ++*(*(*(a1 + 104) + 8) + 24);
LABEL_27:
  }

  return _objc_release_x2();
}

int64_t sub_1002BAD74(id a1, LuceneContextResult *a2, LuceneContextResult *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(LuceneContextResult *)v4 foldScore];
  if (v6 <= [(LuceneContextResult *)v5 foldScore])
  {
    v8 = [(LuceneContextResult *)v4 foldScore];
    if (v8 == [(LuceneContextResult *)v5 foldScore])
    {
      v9 = [(LuceneContextResult *)v4 foldCurrentRank];
      if (v9 < [(LuceneContextResult *)v5 foldCurrentRank])
      {
        v7 = -1;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

id sub_1002BB668(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = (*(*(a1 + 32) + 16))();
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v2;
}

_BYTE *sub_1002BB6DC(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_1002BB6EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_1002BB704(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1002BB764(void *a1, uint8_t *buf, uint64_t a3, uint64_t a4)
{
  *buf = 134218498;
  *(buf + 4) = a3;
  *(buf + 6) = 2048;
  *(buf + 14) = a4;
  *(buf + 11) = 2112;
  *(buf + 3) = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Text length: %lu, request type: %lu, language tag: %@", buf, 0x20u);
}

void sub_1002BB7D8(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_1002BB6EC(&_mh_execute_header, &_os_log_default, a4, "Time to tokenize / construct bigrams: %f ms", a1);
}

void sub_1002BB81C(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_1002BB6EC(&_mh_execute_header, &_os_log_default, a4, "Time to assemble query: %f ms", a1);
}

void sub_1002BB8D0(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_1002BB6EC(&_mh_execute_header, &_os_log_default, a4, "Time to perform search: %f ms", a1);
}

void sub_1002BBB30()
{
  sub_1002A4198();
  sub_100002E70();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002BBBA8(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Skipping reserved Treasuremap control value: %i", buf, 8u);
}

void sub_1002BBBF4(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Skipping unknown Treasuremap special value: %i", buf, 8u);
}

void sub_1002BBC40(uint64_t a1)
{
  v6 = *(*a1 + 24);
  sub_100002E70();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1002BBCC8(void *a1, uint64_t a2, uint64_t a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_1002BB6EC(&_mh_execute_header, &_os_log_default, a3, "Redirect term not found: %@", a2);
}

void sub_1002BBD1C(void *a1, uint64_t a2, uint64_t a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_1002BB6EC(&_mh_execute_header, &_os_log_default, a3, "Warning: weight still -1 for %@", a2);
}

void sub_1002BBD70(uint64_t *a1)
{
  v6 = *a1;
  sub_100002E70();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1002BBDFC(void *a1, void *a2)
{
  v3 = [a1 token];
  v9 = [a2 token];
  sub_100002E70();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Cu);
}

void sub_1002BBED4(uint64_t a1, void *a2, void *a3)
{
  [*(a1 + 80) count];
  [*(a1 + 88) count];
  v6 = [a2 clauses];
  [v6 size];
  v7 = [a3 clauses];
  [v7 size];
  sub_100002E70();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x2Au);
}

void sub_1002BBFE0(uint64_t a1)
{
  v6 = *(*(*a1 + 40) + 8);
  sub_100002E70();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

id sub_1002BC254(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1002BC824();
  }

  return [*(a1 + 32) _pruneRecentsFromSafari];
}

void sub_1002BC86C(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "We got a donation: %@", &v1, 0xCu);
}

void sub_1002BCF38(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Invalidate XPC connection for %@", buf, 0xCu);
}

void sub_1002BCF94(void *a1)
{
  [a1 processIdentifier];
  sub_100002E70();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1002BD014()
{
  v0 = *__error();
  v1[0] = 67109120;
  v1[1] = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to initialize temporary directory: %{darwin.errno}d", v1, 8u);
}

void sub_1002BD27C(_xpc_activity_s *a1)
{
  v1 = 138412546;
  v2 = a1;
  v3 = 2048;
  state = xpc_activity_get_state(a1);
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not set DEFER state for XPC activity %@ in state %ld", &v1, 0x16u);
}

int objc_sync_enter(id obj)
{
  if (obj)
  {
    v2 = sub_100254E30(obj, 0);
    if (v2)
    {
      v3 = (v2 + 24);

      LODWORD(obj) = pthread_mutex_lock(v3);
    }

    else
    {
      LODWORD(obj) = -3;
    }
  }

  return obj;
}

int objc_sync_exit(id obj)
{
  if (obj)
  {
    v1 = sub_100254E30(obj, 1);
    if (v1)
    {
      LODWORD(obj) = pthread_mutex_unlock((v1 + 24));
      if (obj == 1)
      {
        LODWORD(obj) = -1;
      }
    }

    else
    {
      LODWORD(obj) = -1;
    }
  }

  return obj;
}

uint64_t j2objc_sync_wait(unint64_t a1, uint64_t a2)
{
  v3 = sub_100254E30(a1, 2);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v7.tv_sec = a2 / 1000;
    v7.tv_nsec = 1000000 * (a2 % 1000);
    v4 = pthread_cond_timedwait_relative_np((v3 + 88), (v3 + 24), &v7);
  }

  else
  {
    v4 = pthread_cond_wait((v3 + 88), (v3 + 24));
  }

  if (v4 == 60)
  {
    v6 = -2;
  }

  else
  {
    v6 = v4;
  }

  if (v4 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

uint64_t j2objc_sync_notify(unint64_t a1)
{
  v1 = sub_100254E30(a1, 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(result) = pthread_cond_signal((v1 + 88));
  if (result == 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t j2objc_sync_notifyAll(unint64_t a1)
{
  v1 = sub_100254E30(a1, 2);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(result) = pthread_cond_broadcast((v1 + 88));
  if (result == 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

void sub_1002BD4F4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(a1 + 152);
      *(a1 + 152) = 0;
    }
  }
}

void sub_1002BD554(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 192);
    *(a1 + 192) = 0;

    v3 = *(a1 + 208);
    *(a1 + 208) = 0;

    [*(a1 + 216) close];
    v4 = *(a1 + 216);
    *(a1 + 216) = 0;

    [*(a1 + 200) close];
    v5 = *(a1 + 200);
    *(a1 + 200) = 0;

    [*(a1 + 168) decRef];
    v6 = *(a1 + 168);
    *(a1 + 168) = 0;
  }
}

void sub_1002BD610(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002A9080;
    v8[3] = &unk_100483EB8;
    v8[4] = a1;
    v9 = v6;
    if ([Util linewiseFromFile:v5 dataReadingOptions:1 withIterator:v8]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Loaded wordlist entries from %@", buf, 0xCu);
    }
  }
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = _CFStringTokenizerGetCurrentTokenRange(tokenizer);
  length = CurrentTokenRange.length;
  location = CurrentTokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v3 = _NSRangeFromString(aString);
  length = v3.length;
  location = v3.location;
  result.length = length;
  result.location = location;
  return result;
}