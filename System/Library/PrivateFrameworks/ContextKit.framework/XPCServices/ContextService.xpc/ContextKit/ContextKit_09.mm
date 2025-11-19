uint64_t JavaNetProxy_TypeEnum_class_()
{
  if ((atomic_load_explicit(JavaNetProxy_TypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A084();
  }

  if (qword_100554C58 != -1)
  {
    sub_1001A7C68();
  }

  return qword_100554C50;
}

id JavaNioSelectorImpl_initWithJavaNioChannelsSpiSelectorProvider_(id *a1, void *a2)
{
  JavaNioChannelsSpiAbstractSelector_initWithJavaNioChannelsSpiSelectorProvider_(a1, a2);
  JreStrongAssignAndConsume(a1 + 5, [NSObject alloc]);
  v3 = new_JavaUtilHashSet_init();
  JreStrongAssignAndConsume(a1 + 6, v3);
  v4 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(a1[6]);
  JreStrongAssign(a1 + 7, v4);
  v5 = new_JavaUtilHashSet_init();
  JreStrongAssignAndConsume(a1 + 8, v5);
  v6 = a1[8];
  v7 = [JavaNioSelectorImpl_UnaddableSet alloc];
  JreStrongAssign(&v7->set_, v6);
  JreStrongAssignAndConsume(a1 + 9, v7);
  v8 = LibcoreIoStructPollfd_class_();
  v9 = new_JavaUtilUnsafeArrayList_initWithIOSClass_withInt_(v8, 8);
  JreStrongAssignAndConsume(a1 + 12, v9);
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_ || (v10 = [LibcoreIoLibcore_os_ pipe], (v11 = v10) == 0))
  {
    JreThrowNullPointerException();
  }

  v12 = *(v10 + 2);
  if (v12 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, 0);
  }

  JreStrongAssign(a1 + 10, v11[3]);
  v13 = *(v11 + 2);
  if (v13 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, 1);
  }

  JreStrongAssign(a1 + 11, v11[4]);
  LibcoreIoIoUtils_setBlockingWithJavaIoFileDescriptor_withBoolean_(a1[10], 0);
  [a1[12] addWithId:new_LibcoreIoStructPollfd_init()];
  return sub_1001A8788(a1, 0, a1[10], 1, 0);
}

void sub_1001A80D4(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1001A83B4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A84E8(void *a1, uint64_t a2)
{
  [JavaNioSelectorImpl checkClosed]_0(a1);
  objc_sync_enter(a1);
  v4 = a1[7];
  objc_sync_enter(v4);
  v5 = a1[9];
  objc_sync_enter(v5);
  [JavaNioSelectorImpl doCancel]_0(a1);
  v6 = a1[5];
  objc_sync_enter(v6);
  sub_1001A882C(a1);
  objc_sync_exit(v6);
  if (a2)
  {
    [a1 begin];
  }

  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_ || (v7 = a1[12]) == 0)
  {
    JreThrowNullPointerException();
  }

  v8 = [LibcoreIoLibcore_os_ pollWithLibcoreIoStructPollfdArray:objc_msgSend(v7 withInt:{"array"), a2}] > 0;
  if (a2)
  {
    [a1 end];
  }

  if (v8)
  {
    v9 = sub_1001A89B4(a1);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 - [JavaNioSelectorImpl doCancel]_0(a1);
  objc_sync_exit(v5);
  objc_sync_exit(v4);
  objc_sync_exit(a1);
  return v10;
}

void sub_1001A8648(_Unwind_Exception *a1)
{
  if (v4)
  {
    objc_end_catch();
  }

  objc_sync_exit(v3);
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

id sub_1001A8788(uint64_t a1, uint64_t a2, void *a3, __int16 a4, void *a5)
{
  v5 = *(a1 + 96);
  if (!v5 || (v9 = [v5 getWithInt:a2]) == 0)
  {
    JreThrowNullPointerException();
  }

  v10 = v9;
  JreStrongAssign(v9 + 1, a3);
  *(v10 + 8) = a4;

  return JreStrongAssign(v10 + 3, a5);
}

id sub_1001A882C(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = *(a1 + 48);
  if (!v1)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  result = [*(a1 + 48) countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v15;
    v6 = 1;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if (!v8)
        {
          goto LABEL_21;
        }

        v9 = [*(*(&v14 + 1) + 8 * v7) interestOpsNoCheck];
        if ((v9 & 0x11) != 0)
        {
          v10 = 5;
        }

        else
        {
          v10 = 4;
        }

        if ((v9 & 0xC) != 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = (v9 & 0x11) != 0;
        }

        if (v11)
        {
          v12 = [v8 channel];
          v13 = JavaNioFileDescriptorChannel_class_();
          if (!v12)
          {
            goto LABEL_21;
          }

          if (([v13 isInstance:v12] & 1) == 0)
          {
            JreThrowClassCastException();
          }

          sub_1001A8788(a1, v6, [v12 getFD], v11, v8);
          v6 = (v6 + 1);
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      result = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1001A89B4(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (!v2 || (v3 = [v2 getWithInt:0]) == 0)
  {
LABEL_31:
    JreThrowNullPointerException();
  }

  if (v3[9] == 1)
  {
    v4 = [IOSByteArray arrayWithLength:8];
      ;
    }
  }

  if ([*(a1 + 96) size] >= 2)
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = [*(a1 + 96) getWithInt:v6];
      if (!v7)
      {
        goto LABEL_31;
      }

      v8 = v7;
      if (*(v7 + 9))
      {
        if (!v7[1])
        {
          return v5;
        }

        v9 = v7[3];
        objc_opt_class();
        if (!v9)
        {
          JreStrongAssign(v8 + 1, 0);
          JreStrongAssign(v8 + 3, 0);
          JreThrowNullPointerException();
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        JreStrongAssign(v8 + 1, 0);
        JreStrongAssign(v8 + 3, 0);
        v10 = [v9 interestOpsNoCheck];
        v11 = *(v8 + 9);
        v12 = (v11 & 0x10) != 0 ? v10 : v10 & (v11 << 31 >> 31) & 0x11;
        if ((v11 & 4) != 0)
        {
          v13 = v10;
          if ([v9 isConnected])
          {
            v12 = v12 | v13 & 4;
          }

          else
          {
            v12 = v12 | v13 & 8;
          }
        }

        if (v12)
        {
          v14 = *(a1 + 64);
          if (!v14)
          {
            goto LABEL_31;
          }

          if (![v14 containsWithId:v9])
          {
            [v9 setReadyOpsWithInt:v12];
            [*(a1 + 64) addWithId:v9];
            goto LABEL_26;
          }

          if ([v9 readyOps] != v12)
          {
            [v9 setReadyOpsWithInt:{objc_msgSend(v9, "readyOps") | v12}];
LABEL_26:
            v5 = (v5 + 1);
          }
        }
      }

      v6 = (v6 + 1);
      if (v6 >= [*(a1 + 96) size])
      {
        return v5;
      }
    }
  }

  return 0;
}

void sub_1001A8D18(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1001A8CE8);
}

JavaNioSelectorImpl *new_JavaNioSelectorImpl_initWithJavaNioChannelsSpiSelectorProvider_(void *a1)
{
  v2 = [JavaNioSelectorImpl alloc];
  JavaNioSelectorImpl_initWithJavaNioChannelsSpiSelectorProvider_(&v2->super.super.super.isa, a1);
  return v2;
}

JavaLangIllegalThreadStateException *new_JavaLangIllegalThreadStateException_init()
{
  v0 = [JavaLangIllegalThreadStateException alloc];
  JavaLangIllegalArgumentException_init(v0, v1);
  return v0;
}

id JavaNioChannelsSpiAbstractSelectionKey_init(uint64_t a1)
{
  result = JavaNioChannelsSelectionKey_init(a1);
  *(a1 + 16) = 1;
  return result;
}

id LibcoreNetUrlFileURLConnection_initWithJavaNetURL_(uint64_t a1, void *a2)
{
  JavaNetURLConnection_initWithJavaNetURL_(a1, a2);
  *(a1 + 80) = -1;
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 64), [a2 getFile]);
  v4 = *(a1 + 64);
  if (!v4)
  {
    JreStrongAssign((a1 + 64), &stru_100484358);
    v4 = *(a1 + 64);
  }

  v5 = LibcoreNetUriCodec_decodeWithNSString_(v4);

  return JreStrongAssign((a1 + 64), v5);
}

JavaIoByteArrayInputStream *sub_1001A943C(void *a1)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v2 = [a1 list];
  v3 = new_JavaIoByteArrayOutputStream_init();
  v4 = new_JavaIoPrintStream_initWithJavaIoOutputStream_(v3);
  [(JavaIoPrintStream *)v4 printWithNSString:@"<title>Directory Listing</title>\n"];
  [(JavaIoPrintStream *)v4 printWithNSString:@"<base href=file:"];
  v5 = [a1 getPath];
  if (!v5 || (v6 = [v5 replace:92 withChar:47], objc_msgSend(a1, "getPath"), -[JavaIoPrintStream printWithNSString:](v4, "printWithNSString:", JreStrcat("$$$$", v7, v8, v9, v10, v11, v12, v13, v6)), !v2))
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  if (v2[2] >= 1)
  {
    v21 = 0;
    do
    {
      [(JavaIoPrintStream *)v4 printWithNSString:JreStrcat("$$", v14, v15, v16, v17, v18, v19, v20, *&v2[2 * v21++ + 6])];
    }

    while (v21 < v2[2]);
  }

  [(JavaIoPrintStream *)v4 close];
  v22 = new_JavaIoByteArrayInputStream_initWithByteArray_([(JavaIoByteArrayOutputStream *)v3 toByteArray]);

  return v22;
}

void sub_1001A9614(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1001A95FCLL);
}

LibcoreNetUrlFileURLConnection *new_LibcoreNetUrlFileURLConnection_initWithJavaNetURL_(void *a1)
{
  v2 = [LibcoreNetUrlFileURLConnection alloc];
  LibcoreNetUrlFileURLConnection_initWithJavaNetURL_(v2, a1);
  return v2;
}

id JreStrongAssign(id *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  *a1 = v3;
  return v3;
}

void *JreStrongAssignAndConsume(id *a1, void *a2)
{
  v4 = *a1;
  *a1 = a2;
  return a2;
}

id JreVolatileStrongAssign(atomic_ullong *a1, void *a2)
{
  v3 = a2;
  v4 = atomic_exchange(a1, v3);
  return v3;
}

const __CFString *JreStrcat(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = a1 + 1;
    do
    {
      if (v10 == 64)
      {
        ++v11;
      }

      v13 = *v12++;
      v10 = v13;
    }

    while (v13);
  }

  __chkstk_darwin();
  v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = &a9;
  v16 = sub_1001A9AD8(a1, &a9, v15);
  v18[0] = 0;
  v18[1] = 0;
  JreStringBuilder_initWithCapacity(v18, v16);
  v19 = &a9;
  sub_1001A9C50(a1, &a9, v15, v18);
  return JreStringBuilder_toStringAndDealloc(v18);
}

uint64_t sub_1001A9AD8(_BYTE *a1, _DWORD *a2, const __CFString **a3)
{
  v5 = 0;
  while (1)
  {
    v6 = *a1;
    if (v6 > 0x45)
    {
      if (*a1 <= 0x49u)
      {
        if (v6 == 70)
        {
          v5 = (v5 + 15);
        }

        else
        {
          if (v6 != 73)
          {
            goto LABEL_35;
          }

          v5 = (v5 + 11);
        }

        goto LABEL_30;
      }

      switch(v6)
      {
        case 'J':
          v5 = (v5 + 20);
          goto LABEL_30;
        case 'S':
          v5 = (v5 + 6);
LABEL_30:
          a2 += 2;
          goto LABEL_35;
        case 'Z':
          v7 = a2;
          a2 += 2;
          if (*v7)
          {
            v8 = 4;
          }

          else
          {
            v8 = 5;
          }

          v5 = (v8 + v5);
          break;
      }

      goto LABEL_35;
    }

    if (*a1 > 0x41u)
    {
      switch(v6)
      {
        case 'B':
          v5 = (v5 + 4);
          break;
        case 'C':
          v5 = (v5 + 1);
          break;
        case 'D':
          v5 = (v5 + 24);
          break;
        default:
          goto LABEL_35;
      }

      goto LABEL_30;
    }

    if (v6 == 36)
    {
      v12 = a2;
      a2 += 2;
      if (*v12)
      {
        Length = CFStringGetLength(*v12);
      }

      else
      {
        Length = 4;
      }

LABEL_34:
      v5 = (Length + v5);
      goto LABEL_35;
    }

    if (v6 == 64)
    {
      v9 = a2;
      a2 += 2;
      if (*v9)
      {
        v10 = [*v9 description];
        *a3 = v10;
        Length = CFStringGetLength(v10);
      }

      else
      {
        *a3 = 0;
        Length = 4;
      }

      ++a3;
      goto LABEL_34;
    }

    if (!*a1)
    {
      return v5;
    }

LABEL_35:
    ++a1;
  }
}

void sub_1001A9C50(_BYTE *a1, uint64_t *a2, const __CFString **a3, _DWORD *a4)
{
  while (1)
  {
    v7 = *a1;
    if (v7 <= 0x45)
    {
      break;
    }

    if (*a1 > 0x49u)
    {
      if (v7 == 74)
      {
        v17 = a2++;
        IntegralToString_convertLong(a4, *v17);
        goto LABEL_25;
      }

      if (v7 == 83)
      {
        goto LABEL_19;
      }

      if (v7 != 90)
      {
        goto LABEL_25;
      }

      v9 = a2++;
      if (*v9)
      {
        v10 = @"true";
      }

      else
      {
        v10 = @"false";
      }

LABEL_23:
      JreStringBuilder_appendString(a4, v10);
      goto LABEL_25;
    }

    if (v7 != 70)
    {
      if (v7 != 73)
      {
        goto LABEL_25;
      }

LABEL_19:
      v12 = a2++;
      IntegralToString_convertInt(a4, *v12);
      goto LABEL_25;
    }

    v13 = a2++;
    v14 = *v13;
    RealToString_convertFloat(a4, v14);
LABEL_25:
    ++a1;
  }

  if (*a1 > 0x41u)
  {
    switch(v7)
    {
      case 'B':
        goto LABEL_19;
      case 'C':
        v15 = a2++;
        JreStringBuilder_appendChar(a4, *v15);
        break;
      case 'D':
        v8 = a2++;
        RealToString_convertDouble(a4, *v8);
        break;
    }

    goto LABEL_25;
  }

  if (v7 == 36)
  {
    v16 = a2++;
    v10 = *v16;
    goto LABEL_23;
  }

  if (v7 == 64)
  {
    ++a2;
    v11 = *a3++;
    v10 = v11;
    goto LABEL_23;
  }

  if (*a1)
  {
    goto LABEL_25;
  }
}

const __CFString *JreStrAppendInner(__CFString *a1, unsigned __int8 *a2, _DWORD *a3)
{
  v16 = a3;
  v17 = a3;
  v5 = *a2;
  if (*a2)
  {
    v6 = 0;
    v7 = a2 + 1;
    do
    {
      if (v5 == 64)
      {
        ++v6;
      }

      v8 = *v7++;
      v5 = v8;
    }

    while (v8);
  }

  __chkstk_darwin();
  v10 = (&v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1001A9AD8(a2, v16, v10);
  if (a1)
  {
    a1 = [(__CFString *)a1 description];
    Length = CFStringGetLength(a1);
  }

  else
  {
    Length = 4;
  }

  v15[0] = 0;
  v15[1] = 0;
  JreStringBuilder_initWithCapacity(v15, Length + v11);
  JreStringBuilder_appendString(v15, a1);
  sub_1001A9C50(a2, v17, v10, v15);
  return JreStringBuilder_toStringAndDealloc(v15);
}

const __CFString *JreStrAppend(__CFString **a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  result = JreStrAppendInner(*a1, a2, &a9);
  *a1 = result;
  return result;
}

const __CFString *JreStrAppendStrong(__CFString **a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = JreStrAppendInner(*a1, a2, &a9);
  v11 = *a1;
  *a1 = v10;
  return v10;
}

id JavaIoFile_initWithNSString_withNSString_(uint64_t a1, __CFString *a2, __CFString *a3)
{
  if (!a3)
  {
    v9 = new_JavaLangNullPointerException_initWithNSString_(@"name == null");
    objc_exception_throw(v9);
  }

  if (a2 && ![(__CFString *)a2 isEmpty])
  {
    if ([(__CFString *)a3 isEmpty])
    {
      v6 = a2;
    }

    else
    {
      v6 = sub_1001AA358(a2, a3);
    }
  }

  else
  {
    v6 = a3;
  }

  v7 = sub_1001AA198(v6);

  return JreStrongAssign((a1 + 8), v7);
}

id JavaIoFile_initWithJavaNetURI_(uint64_t a1, void *a2)
{
  sub_1001AA430(a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = sub_1001AA198([a2 getPath]);

  return JreStrongAssign((a1 + 8), v4);
}

NSString *sub_1001AA198(void *a1)
{
  if (atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_10018A8E4();
    if (!a1)
    {
LABEL_28:
      JreThrowNullPointerException();
    }
  }

  v2 = [a1 toCharArray];
  if (!v2)
  {
    goto LABEL_28;
  }

  v3 = v2;
  v16 = a1;
  v4 = v2[2];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v3[2];
      if (v5 >= v8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, v5);
      }

      v9 = *(v3 + v5 + 6);
      v10 = v9 == 47;
      if (v9 != 47)
      {
        break;
      }

      if (!v6)
      {
        LOWORD(v9) = JavaIoFile_separatorChar_;
        v11 = (v7 + 1);
        v12 = v7;
LABEL_11:
        v13 = v3[2];
        if ((v7 & 0x80000000) != 0 || v7 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v7);
        }

        *(v3 + v12 + 6) = v9;
        v7 = v11;
      }

      ++v5;
      v6 = v10;
      if (v4 == v5)
      {
        goto LABEL_19;
      }
    }

    v11 = (v7 + 1);
    v12 = v7;
    goto LABEL_11;
  }

  LODWORD(v7) = 0;
  v10 = 0;
LABEL_19:
  v14 = v7 > 1 && v10;
  if (v7 - v14 == v4)
  {
    return v16;
  }

  return [NSString stringWithCharacters:v3 offset:0 length:?];
}

const __CFString *sub_1001AA358(void *a1, void *a2)
{
  if (atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10018A8E4();
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  v4 = [a1 length];
  v5 = (v4 - 1);
  if (v4 >= 1)
  {
    v6 = [a1 charAtWithInt:v5];
    if (v6 == JavaIoFile_separatorChar_)
    {
      return JreStrcat("$$", v7, v5, v8, v9, v10, v11, v12, a1);
    }
  }

  if (!a2)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  if ([a2 length] > 0)
  {
    v13 = [a2 charAtWithInt:0];
    if (v13 == JavaIoFile_separatorChar_)
    {
      return JreStrcat("$$", v7, v5, v8, v9, v10, v11, v12, a1);
    }
  }

  return JreStrcat("$C$", v7, v5, v8, v9, v10, v11, v12, a1);
}

id sub_1001AA430(void *a1)
{
  if (atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_10018A8E4();
    if (!a1)
    {
      goto LABEL_14;
    }
  }

  if (([a1 isAbsolute] & 1) == 0)
  {
    v12 = @"URI is not absolute: ";
    goto LABEL_22;
  }

  v9 = [a1 getRawSchemeSpecificPart];
  if (!v9)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  if (([v9 hasPrefix:@"/"] & 1) == 0)
  {
    v12 = @"URI is not hierarchical: ";
    goto LABEL_22;
  }

  if (([@"file" isEqual:{objc_msgSend(a1, "getScheme")}] & 1) == 0)
  {
    v12 = @"Expected file scheme in URI: ";
    goto LABEL_22;
  }

  v10 = [a1 getRawPath];
  if (!v10 || [v10 isEmpty])
  {
    v12 = @"Expected non-empty path in URI: ";
    goto LABEL_22;
  }

  if ([a1 getRawAuthority])
  {
    v12 = @"Found authority in URI: ";
    goto LABEL_22;
  }

  if ([a1 getRawQuery])
  {
    v12 = @"Found query in URI: ";
    goto LABEL_22;
  }

  result = [a1 getRawFragment];
  if (result)
  {
    v12 = @"Found fragment in URI: ";
LABEL_22:
    v13 = JreStrcat("$@", v2, v3, v4, v5, v6, v7, v8, v12);
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  return result;
}

id sub_1001AA56C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100184238();
  }

  v4 = LibcoreIoLibcore_os_;
  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a1 + 8);

  return [v4 canAccessWithNSString:v5 withInt:a2];
}

void sub_1001AA6E4(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1001AA6C0);
}

JavaIoFile *new_JavaIoFile_initWithNSString_(void *a1)
{
  v2 = [JavaIoFile alloc];
  v3 = sub_1001AA198(a1);
  JreStrongAssign(&v2->path_, v3);
  return v2;
}

BOOL sub_1001AAE94(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10018A8E4();
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

LABEL_3:
  v4 = [NSDate dateWithTimeIntervalSince1970:a2 / 1000.0];
  v5 = [NSMutableDictionary dictionaryWithCapacity:1];
  [(NSMutableDictionary *)v5 setObject:v4 forKey:NSFileModificationDate];
  v6 = +[NSFileManager defaultManager];

  return [(NSFileManager *)v6 setAttributes:v5 ofItemAtPath:a1 error:0];
}

BOOL sub_1001AAF8C(uint64_t a1, int a2, int a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v6 = [+[NSFileManager defaultManager](NSFileManager attributesOfItemAtPath:"attributesOfItemAtPath:error:" error:*(a1 + 8), 0];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [(NSDictionary *)v6 filePosixPermissions];
  if (a3)
  {
    v9 = v8 | a2;
  }

  else
  {
    v9 = v8 & ~a2;
  }

  v10 = [NSNumber numberWithInt:v9];
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 addEntriesFromDictionary:v7];
  [v11 setObject:v10 forKey:NSFilePosixPermissions];
  v12 = [+[NSFileManager defaultManager](NSFileManager setAttributes:"setAttributes:ofItemAtPath:error:" ofItemAtPath:v11 error:*(a1 + 8), 0];

  return v12;
}

IOSObjectArray *sub_1001AB11C(void *a1)
{
  if ((atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10018A8E4();
  }

  if (![a1 length])
  {
    return 0;
  }

  v2 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:a1, 0];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = NSString_class_();

  return [IOSObjectArray arrayWithNSArray:v3 type:v4];
}

IOSObjectArray *sub_1001AB300(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = [IOSObjectArray arrayWithLength:v4 type:JavaIoFile_class_()];
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = *(a2 + 8);
      if (i >= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, i);
      }

      v8 = new_JavaIoFile_initWithJavaIoFile_withNSString_(a1, *(a2 + 24 + 8 * i));
      IOSObjectArray_SetAndConsume(v5, i, v8);
    }
  }

  return v5;
}

void sub_1001AB560(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1001AB554);
}

void sub_1001AB7A0(void *a1)
{
  objc_end_catch();
  objc_begin_catch(a1);
  JUMPOUT(0x1001AB6B0);
}

JavaIoFile *JavaIoFile_createTempFileWithNSString_withNSString_(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10018A8E4();
  }

  return JavaIoFile_createTempFileWithNSString_withNSString_withJavaIoFile_(a1, a2, 0);
}

JavaIoFile *JavaIoFile_createTempFileWithNSString_withNSString_withJavaIoFile_(void *a1, uint64_t a2, JavaIoFile *a3)
{
  if ((atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10018A8E4();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ([a1 length] <= 2)
  {
    v16 = new_JavaLangIllegalArgumentException_initWithNSString_(@"prefix must be at least 3 characters");
    objc_exception_throw(v16);
  }

  if (!a3)
  {
    PropertyWithNSString_withNSString = JavaLangSystem_getPropertyWithNSString_withNSString_(@"java.io.tmpdir", @".");
    a3 = new_JavaIoFile_initWithNSString_(PropertyWithNSString_withNSString);
  }

  do
  {
    if (!qword_100554C68)
    {
      goto LABEL_10;
    }

    [qword_100554C68 nextInt];
    v13 = JreStrcat("$I$", v6, v7, v8, v9, v10, v11, v12, a1);
    v14 = new_JavaIoFile_initWithJavaIoFile_withNSString_(a3, v13);
  }

  while (![(JavaIoFile *)v14 createNewFile]);
  return v14;
}

void sub_1001AB9A4(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1001AB980);
}

JavaIoFile *new_JavaIoFile_initWithJavaIoFile_withNSString_(void *a1, __CFString *a2)
{
  v4 = [JavaIoFile alloc];
  if (a1)
  {
    v5 = [a1 getPath];
  }

  else
  {
    v5 = 0;
  }

  JavaIoFile_initWithNSString_withNSString_(v4, v5, a2);
  return v4;
}

JavaIoFile *new_JavaIoFile_initWithNSString_withNSString_(__CFString *a1, __CFString *a2)
{
  v4 = [JavaIoFile alloc];
  JavaIoFile_initWithNSString_withNSString_(v4, a1, a2);
  return v4;
}

IOSObjectArray *JavaIoFile_listRoots()
{
  if ((atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10018A8E4();
  }

  v1 = new_JavaIoFile_initWithNSString_(@"/");
  return [IOSObjectArray arrayWithObjects:&v1 count:1 type:JavaIoFile_class_()];
}

uint64_t JavaIoFile_class_()
{
  if ((atomic_load_explicit(JavaIoFile__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10018A8E4();
  }

  if (qword_100554C78 != -1)
  {
    sub_1001AC378();
  }

  return qword_100554C70;
}

JavaSecurityPrivilegedActionException *new_JavaSecurityPrivilegedActionException_initWithJavaLangException_(uint64_t a1)
{
  v2 = [JavaSecurityPrivilegedActionException alloc];
  JavaLangException_initWithJavaLangThrowable_(v2, a1);
  return v2;
}

BOOL JavaUtilGrego_isLeapYearWithInt_(int a1)
{
  if ((atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001ACF80();
  }

  if ((a1 & 3) != 0)
  {
    return 0;
  }

  HIDWORD(v3) = -1030792151 * a1 + 85899344;
  LODWORD(v3) = HIDWORD(v3);
  if ((v3 >> 2) > 0x28F5C28)
  {
    return 1;
  }

  HIDWORD(v4) = -1030792151 * a1 + 85899344;
  LODWORD(v4) = HIDWORD(v4);
  return (v4 >> 4) < 0xA3D70B;
}

uint64_t JavaUtilGrego_monthLengthWithInt_withInt_(int a1, int a2)
{
  if ((atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001ACF80();
  }

  v4 = qword_100554C80;
  if (!qword_100554C80)
  {
    JreThrowNullPointerException();
  }

  if (JavaUtilGrego_isLeapYearWithInt_(a1))
  {
    v5 = 12;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v4 + 8);
  v7 = (v5 + a2);
  if (v7 < 0 || v7 >= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, v7);
  }

  return *(v4 + 12 + 4 * v7);
}

uint64_t JavaUtilGrego_previousMonthLengthWithInt_withInt_(int a1, int a2)
{
  if ((atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001ACF80();
  }

  if (a2 < 1)
  {
    return 31;
  }

  return JavaUtilGrego_monthLengthWithInt_withInt_(a1, a2 - 1);
}

uint64_t JavaUtilGrego_fieldsToDayWithInt_withInt_withInt_(int a1, int a2, int a3)
{
  if ((atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001ACF80();
  }

  v6 = a1 - 1;
  if (atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire))
  {
    if ((v6 & 0x80000000) == 0)
    {
LABEL_5:
      v7 = v6 >> 2;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1001ACF80();
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v7 = ~(-a1 >> 2);
LABEL_8:
  if ((atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001ACF80();
  }

  if (v6 >= 0)
  {
    v8 = v6 / 0x190uLL;
  }

  else
  {
    v8 = ~(-a1 / 0x190u);
  }

  if ((atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001ACF80();
  }

  if (v6 >= 0)
  {
    v9 = v6 / 0x64uLL;
  }

  else
  {
    v9 = ~(-a1 / 0x64u);
  }

  v10 = qword_100554C88;
  if (!qword_100554C88)
  {
    JreThrowNullPointerException();
  }

  if (JavaUtilGrego_isLeapYearWithInt_(a1))
  {
    v11 = 12;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v10 + 8);
  v13 = (v11 + a2);
  if (v13 < 0 || v13 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v13);
  }

  return 365 * v6 + a3 + v7 + v8 - v9 - 719163 + *(v10 + 12 + 4 * v13);
}

uint64_t JavaUtilGrego_dayOfWeekWithLong_(uint64_t a1)
{
  if ((atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001ACF80();
  }

  v2 = [IOSLongArray arrayWithLength:1];
  sub_1001ACD04(a1 + 5, 7, v2);
  size = v2->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  v4 = v2->buffer_[0];
  if (v4)
  {
    return v4;
  }

  else
  {
    return 7;
  }
}

IOSIntArray *JavaUtilGrego_dayToFieldsWithLong_withIntArray_(uint64_t a1, IOSIntArray *a2)
{
  if ((atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001ACF80();
  }

  if (!a2 || a2->super.size_ <= 4)
  {
    a2 = [IOSIntArray arrayWithLength:5];
  }

  v4 = [IOSLongArray arrayWithLength:1];
  v5 = sub_1001ACD04(a1 + 719162, 146097, v4);
  size = v4->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  v7 = sub_1001ACD04(v4->buffer_[0], 36524, v4);
  v8 = v4->super.size_;
  if (v8 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, 0);
  }

  v9 = sub_1001ACD04(v4->buffer_[0], 1461, v4);
  v10 = v4->super.size_;
  if (v10 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, 0);
  }

  v11 = sub_1001ACD04(v4->buffer_[0], 365, v4);
  v12 = 400 * v5 + 100 * v7 + 4 * v9 + v11;
  v13 = v4->super.size_;
  if (v13 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, 0);
  }

  v14 = v7 != 4 && v11 != 4;
  if (v7 != 4 && v11 != 4)
  {
    v15 = v4->buffer_[0];
  }

  else
  {
    v15 = 365;
  }

  v16 = v14 + v12;
  isLeapYearWithInt = JavaUtilGrego_isLeapYearWithInt_(v14 + v12);
  if (isLeapYearWithInt)
  {
    v18 = 60;
  }

  else
  {
    v18 = 59;
  }

  if (isLeapYearWithInt)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (v15 >= v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (!qword_100554C88)
  {
    goto LABEL_37;
  }

  v21 = 1497972245 * (12 * (v20 + v15) + 6);
  v22 = (v21 >> 39) + (v21 >> 63);
  v23 = v22 + 12;
  if (!isLeapYearWithInt)
  {
    v23 = v22;
  }

  v24 = v23;
  v25 = *(qword_100554C88 + 8);
  if (v23 < 0 || v23 >= v25)
  {
    IOSArray_throwOutOfBoundsWithMsg(v25, v23);
  }

  v26 = (a1 + 719164) % 7;
  v27 = v26 >= 1 ? (a1 + 719164) % 7 : v26 + 7;
  if (!a2)
  {
LABEL_37:
    JreThrowNullPointerException();
  }

  v28 = *(qword_100554C88 + 12 + 4 * v24);
  v29 = a2->super.size_;
  if (v29 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v29, 0);
  }

  v30 = v15 + 1;
  *(&a2->super.size_ + 1) = v16;
  v31 = a2->super.size_;
  if (v31 < 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, 1);
  }

  a2->buffer_[0] = v22;
  v32 = a2->super.size_;
  if (v32 < 3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v32, 2);
  }

  a2->buffer_[1] = v30 - v28;
  v33 = a2->super.size_;
  if (v33 < 4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, 3);
  }

  a2->buffer_[2] = v27;
  v34 = a2->super.size_;
  if (v34 <= 4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v34, 4);
  }

  a2->buffer_[3] = v30;
  return a2;
}

IOSIntArray *JavaUtilGrego_timeToFieldsWithLong_withIntArray_(uint64_t a1, IOSIntArray *a2)
{
  if ((atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001ACF80();
  }

  if (!a2 || a2->super.size_ <= 5)
  {
    a2 = [IOSIntArray arrayWithLength:6];
  }

  v4 = [IOSLongArray arrayWithLength:1];
  v5 = sub_1001ACD04(a1, 86400000, v4);
  JavaUtilGrego_dayToFieldsWithLong_withIntArray_(v5, a2);
  size = v4->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v7 = a2->super.size_;
  if (v7 <= 5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 5);
  }

  a2->buffer_[4] = v4->buffer_[0];
  return a2;
}

uint64_t sub_1001ACD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (a3)
    {
      v6 = (a1 + 1) / a2 - 1;
      v7 = a1 - v6 * a2;
      v8 = *(a3 + 8);
      if (v8 > 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      IOSArray_throwOutOfBoundsWithMsg(v8, 0);
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  sub_1001ACF80();
  if (a1 < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!a3)
  {
    goto LABEL_10;
  }

  v6 = a1 / a2;
  v7 = a1 % a2;
  v8 = *(a3 + 8);
  if (v8 < 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  *(a3 + 16) = v7;
  return v6;
}

uint64_t JavaUtilGrego_getDayOfWeekInMonthWithInt_withInt_withInt_(int a1, int a2, int a3)
{
  if ((atomic_load_explicit(&JavaUtilGrego__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001ACF80();
  }

  if ((a3 - 22) > 6)
  {
    if ((a3 - 29) < 7)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return ((a3 + 6) / 7);
    }
  }

  else if (a3 + 7 > JavaUtilGrego_monthLengthWithInt_withInt_(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 4;
  }
}

JavaUtilZipCheckedOutputStream *new_JavaUtilZipCheckedOutputStream_initWithJavaIoOutputStream_withJavaUtilZipChecksum_(void *a1, void *a2)
{
  v4 = [JavaUtilZipCheckedOutputStream alloc];
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(v4, a1);
  JreStrongAssign(&v4->check_, a2);
  return v4;
}

JavaNioChannelsAlreadyBoundException *new_JavaNioChannelsAlreadyBoundException_init()
{
  v0 = [JavaNioChannelsAlreadyBoundException alloc];
  JavaLangIllegalStateException_init(v0, v1);
  return v0;
}

IOSByteArray *sub_1001AD280(id *a1, void *a2)
{
  v4 = [a1 charset];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v4)
    {
      v13 = new_JavaNioCharsetUnsupportedCharsetException_initWithNSString_([v4 name]);
      objc_exception_throw(v13);
    }

    goto LABEL_25;
  }

  v5 = a1[8];
  if (!v5)
  {
    objc_opt_class();
    if (!v4)
    {
      goto LABEL_25;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    if ([v4 nsEncoding] == 10)
    {
      if (!a2)
      {
        goto LABEL_25;
      }

      v7 = +[IOSCharArray arrayWithLength:](IOSCharArray, "arrayWithLength:", ([a2 remaining] + 1));
      size = v7->super.size_;
      if (size <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, 0);
      }

      *(&v7->super.size_ + 2) = -257;
      v6 = 1;
      goto LABEL_14;
    }

    if (a2)
    {
      v7 = +[IOSCharArray arrayWithLength:](IOSCharArray, "arrayWithLength:", [a2 remaining]);
      v6 = 0;
      if (v7)
      {
        goto LABEL_14;
      }
    }

LABEL_25:
    JreThrowNullPointerException();
  }

  if (!a2)
  {
    goto LABEL_25;
  }

  v6 = v5[2];
  v7 = +[IOSCharArray arrayWithLength:](IOSCharArray, "arrayWithLength:", ([a2 remaining] + v6));
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a1[8], 0, v7, 0, *(a1[8] + 2));
  JreStrongAssign(a1 + 8, 0);
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_14:
  [a2 getWithCharArray:v7 withInt:v6 withInt:(v7->super.size_ - v6)];
  objc_opt_class();
  if (!v4)
  {
    goto LABEL_25;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_21:
    JreThrowClassCastException();
  }

  v9 = sub_1001AD6FC(v7, [v4 nsEncoding]);
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = v9;
  if (v9->super.size_)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  JreStrongAssign(a1 + 8, v11);
  return v10;
}

IOSByteArray *sub_1001AD6FC(uint64_t a1, uint64_t a2)
{
  if (a2 == 10)
  {
    v2 = 2415919360;
  }

  else
  {
    v2 = a2;
  }

  v3 = [[NSString stringWithCharacters:? length:?], "dataUsingEncoding:allowLossyConversion:", v2, 0];
  v4 = [(NSData *)v3 bytes];
  v5 = [(NSData *)v3 length];

  return [IOSByteArray arrayWithBytes:v4 count:v5];
}

JavaNioCharsetIOSCharsetEncoder *new_JavaNioCharsetIOSCharsetEncoder_initWithJavaNioCharsetCharset_withFloat_(void *a1, float a2)
{
  v4 = [JavaNioCharsetIOSCharsetEncoder alloc];
  v6 = 63;
  JavaNioCharsetCharsetEncoder_initWithJavaNioCharsetCharset_withFloat_withFloat_withByteArray_(v4, a1, [IOSByteArray arrayWithBytes:&v6 count:1], a2, a2);
  return v4;
}

uint64_t LibcoreIcuTimeZoneNames_getDisplayNameWithNSStringArray2_withNSString_withBoolean_withInt_(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((atomic_load_explicit(LibcoreIcuTimeZoneNames__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001AE49C();
  }

  v19 = a2;
  v8 = [IOSObjectArray arrayWithObjects:&v19 count:1 type:NSString_class_()];
  v9 = JavaUtilArrays_binarySearchWithNSObjectArray_withId_withJavaUtilComparator_(a1, v8, qword_100554CA0);
  if ((v9 & 0x80000000) != 0)
  {
    return 0;
  }

  if (!a1)
  {
    goto LABEL_23;
  }

  v10 = v9;
  v11 = *(a1 + 8);
  if (v10 >= v11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, v10);
  }

  v12 = *(a1 + 24 + 8 * v10);
  if (!a3)
  {
    if (a4 == 1)
    {
      if (v12)
      {
        v16 = *(v12 + 8);
        if (v16 <= 1)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, 1);
        }

        v14 = 8;
        return *(v12 + 24 + v14);
      }
    }

    else if (v12)
    {
      v18 = *(v12 + 8);
      if (v18 <= 2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, 2);
      }

      v14 = 16;
      return *(v12 + 24 + v14);
    }

    goto LABEL_23;
  }

  if (a4 != 1)
  {
    if (v12)
    {
      v17 = *(v12 + 8);
      if (v17 <= 4)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, 4);
      }

      v14 = 32;
      return *(v12 + 24 + v14);
    }

LABEL_23:
    JreThrowNullPointerException();
  }

  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = *(v12 + 8);
  if (v13 <= 3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, 3);
  }

  v14 = 24;
  return *(v12 + 24 + v14);
}

id LibcoreIcuTimeZoneNames_getZoneStringsWithJavaUtilLocale_(uint64_t a1)
{
  Default = a1;
  if (atomic_load_explicit(LibcoreIcuTimeZoneNames__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1001AE49C();
  if (!Default)
  {
LABEL_3:
    Default = JavaUtilLocale_getDefault();
  }

LABEL_4:
  v2 = qword_100554C98;
  if (!qword_100554C98)
  {
    JreThrowNullPointerException();
  }

  return [v2 getWithId:Default];
}

uint64_t sub_1001ADC40(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (atomic_load_explicit(LibcoreIcuTimeZoneNames__initialized, memory_order_acquire))
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  result = sub_1001AE49C();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      result = sub_1001ADCEC(v3, *(a2 + 24 + 8 * v4++));
    }

    while (v4 < *(a2 + 8));
  }

  return result;
}

id sub_1001ADCEC(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(LibcoreIcuTimeZoneNames__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001AE49C();
  }

  v4 = [[NSLocale alloc] initWithLocaleIdentifier:a1];
  v5 = +[NSTimeZone timeZoneWithName:](NSTimeZone, "timeZoneWithName:", [a2 objectAtIndex:0]);
  [a2 replaceObjectAtIndex:1 withObject:{-[NSTimeZone localizedName:locale:](v5, "localizedName:locale:", 0, v4)}];
  [a2 replaceObjectAtIndex:2 withObject:{-[NSTimeZone localizedName:locale:](v5, "localizedName:locale:", 1, v4)}];
  [a2 replaceObjectAtIndex:3 withObject:{-[NSTimeZone localizedName:locale:](v5, "localizedName:locale:", 2, v4)}];
  v6 = [(NSTimeZone *)v5 localizedName:3 locale:v4];

  return [a2 replaceObjectAtIndex:4 withObject:v6];
}

void *LibcoreIcuTimeZoneNames_ZoneStringsCache_init(uint64_t a1)
{
  if ((atomic_load_explicit(LibcoreIcuTimeZoneNames__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001AE49C();
  }

  if (!qword_100554C90)
  {
    JreThrowNullPointerException();
  }

  LibcoreUtilBasicLruCache_initWithInt_(a1, *(qword_100554C90 + 8));
  v2 = new_JavaUtilHashMap_init();

  return JreStrongAssignAndConsume((a1 + 20), v2);
}

uint64_t sub_1001AE1D4(uint64_t a1, uint64_t a2)
{
  objc_sync_enter(a1);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = a2 + 8 * v4;
      for (i = 1; i != 5; ++i)
      {
        v7 = *(a2 + 8);
        if (v4 >= v7)
        {
          IOSArray_throwOutOfBoundsWithMsg(v7, v4);
        }

        v8 = *(v5 + 24);
        if (!v8)
        {
          JreThrowNullPointerException();
        }

        v9 = *(v8 + 8);
        if (i >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, i);
        }

        v10 = *(a1 + 20);
        if (!v10)
        {
LABEL_23:
          JreThrowNullPointerException();
        }

        v11 = *(v8 + 24 + 8 * i);
        v12 = [v10 getWithId:v11];
        if (v12)
        {
          v13 = *(a2 + 8);
          if (v4 >= v13)
          {
            IOSArray_throwOutOfBoundsWithMsg(v13, v4);
          }

          v14 = *(v5 + 24);
          if (!v14)
          {
            goto LABEL_23;
          }

          IOSObjectArray_Set(v14, i, v12);
        }

        else
        {
          [*(a1 + 20) putWithId:v11 withId:v11];
        }
      }

      v4 = (v4 + 1);
    }

    while (v4 < *(a2 + 8));
  }

  return objc_sync_exit(a1);
}

uint64_t JavaNioByteOrder_nativeOrder()
{
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  return qword_100554CA8;
}

LibcoreUtilMutableLong *new_LibcoreUtilMutableLong_initWithLong_(int64_t a1)
{
  result = [LibcoreUtilMutableLong alloc];
  result->value_ = a1;
  return result;
}

unint64_t JavaIoBufferedInputStream_initWithJavaIoInputStream_withInt_(uint64_t a1, void *a2, int a3)
{
  JavaIoFilterInputStream_initWithJavaIoInputStream_(a1, a2);
  *(a1 + 32) = -1;
  if (a3 <= 0)
  {
    v7 = new_JavaLangIllegalArgumentException_initWithNSString_(@"size <= 0");
    objc_exception_throw(v7);
  }

  v5 = [IOSByteArray newArrayWithLength:a3];

  return JreVolatileStrongAssignAndConsume((a1 + 16), v5);
}

id sub_1001AE96C(uint64_t a1, void *a2, unsigned int *a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  if (v6 != -1)
  {
    v7 = *(a1 + 28);
    if (*(a1 + 36) - v6 < v7)
    {
      if (v6)
      {
        if (v6 >= 1)
        {
          if (!a3)
          {
            goto LABEL_20;
          }

          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a3, v6, a3, 0, a3[2] - v6);
        }
      }

      else
      {
        if (!a3)
        {
          goto LABEL_20;
        }

        v10 = a3[2];
        if (v7 > v10)
        {
          v11 = 2 * v10;
          if (v11 < v7)
          {
            v7 = v11;
          }

          v12 = [IOSByteArray arrayWithLength:v7];
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v3, 0, v12, 0, v3[2]);
          v3 = JreVolatileStrongAssign((a1 + 16), v12);
        }
      }

      *(a1 + 36) -= *(a1 + 32);
      *(a1 + 32) = 0;
      *(a1 + 24) = 0;
      if (a2 && v3)
      {
        v9 = [a2 readWithByteArray:v3 withInt:*(a1 + 36) withInt:v3[2] - *(a1 + 36)];
        LODWORD(result) = *(a1 + 36) + (v9 & ~(v9 >> 31));
        goto LABEL_18;
      }

LABEL_20:
      JreThrowNullPointerException();
    }
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  result = [a2 readWithByteArray:a3];
  if (result < 1)
  {
    return result;
  }

  *(a1 + 32) = -1;
  *(a1 + 36) = 0;
  v9 = result;
LABEL_18:
  *(a1 + 24) = result;
  return v9;
}

JavaIoBufferedInputStream *new_JavaIoBufferedInputStream_initWithJavaIoInputStream_(void *a1)
{
  v2 = [JavaIoBufferedInputStream alloc];
  JavaIoBufferedInputStream_initWithJavaIoInputStream_withInt_(v2, a1, 0x2000);
  return v2;
}

uint64_t sub_1001AF280(int a1)
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  v2 = a1 - 1;
  v3 = v2 | (v2 >> 1) | ((v2 | (v2 >> 1)) >> 2);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = v4 | HIWORD(v4);
  if (v5 < 0x40000000)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0x40000000;
  }

  if (v2 < 0)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

id JavaUtilConcurrentConcurrentHashMap_comparableClassForWithId_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  if (![JavaLangComparable_class_() isInstance:a1])
  {
    return 0;
  }

  if (!a1)
  {
LABEL_24:
    JreThrowNullPointerException();
  }

  v2 = [a1 getClass];
  if (v2 != NSString_class_())
  {
    v3 = [v2 getGenericInterfaces];
    if (v3)
    {
      v4 = v3;
      if (v3[2] >= 1)
      {
        v5 = 0;
        while (1)
        {
          v6 = JavaLangReflectParameterizedType_class_();
          v7 = v4[2];
          if (v5 >= v7)
          {
            IOSArray_throwOutOfBoundsWithMsg(v7, v5);
          }

          v8 = *&v4[2 * v5 + 6];
          if ([v6 isInstance:v8])
          {
            v9 = JavaLangReflectParameterizedType_class_();
            if (v8 && ([v9 isInstance:v8] & 1) == 0)
            {
              JreThrowClassCastException();
            }

            v10 = [v8 getRawType];
            if (v10 == JavaLangComparable_class_())
            {
              if (!v8)
              {
                goto LABEL_24;
              }

              v11 = [v8 getActualTypeArguments];
              if (v11)
              {
                if (*(v11 + 2) == 1 && v11[3] == v2)
                {
                  return v2;
                }
              }
            }
          }

          if (++v5 >= v4[2])
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return v2;
}

id JavaUtilConcurrentConcurrentHashMap_compareComparablesWithIOSClass_withId_withId_(id a1, void *a2, void *a3)
{
  if (atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire))
  {
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    sub_1001B7300();
    if (!a3)
    {
      return 0;
    }
  }

  if ([a3 getClass] != a1)
  {
    return 0;
  }

  v7 = JavaLangComparable_class_();
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (([v7 isInstance:a2] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [a2 compareToWithId:a3];
}

id JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(uint64_t a1, int a2)
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  if (!qword_100554CC0)
  {
    JreThrowNullPointerException();
  }

  v4 = [qword_100554CC0 getObjectVolatileWithId:a1 withLong:(a2 << dword_100554CF8) + qword_100554CF0];
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v4;
}

id JavaUtilConcurrentConcurrentHashMap_casTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_withJavaUtilConcurrentConcurrentHashMap_Node_(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  v8 = qword_100554CC0;
  if (!qword_100554CC0)
  {
    JreThrowNullPointerException();
  }

  v9 = (a2 << dword_100554CF8) + qword_100554CF0;

  return [v8 compareAndSwapObjectWithId:a1 withLong:v9 withId:a3 withId:a4];
}

id JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(uint64_t a1, int a2, uint64_t a3)
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  v6 = qword_100554CC0;
  if (!qword_100554CC0)
  {
    JreThrowNullPointerException();
  }

  v7 = (a2 << dword_100554CF8) + qword_100554CF0;

  return [v6 putOrderedObjectWithId:a1 withLong:v7 withId:a3];
}

uint64_t JavaUtilConcurrentConcurrentHashMap_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  JavaUtilAbstractMap_init(a1, a2);
  if ((v2 & 0x80000000) != 0)
  {
    v5 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v5);
  }

  if (v2 >> 29)
  {
    result = 0x40000000;
  }

  else
  {
    result = sub_1001AF280(v2 + (v2 >> 1) + 1);
  }

  atomic_store(result, (a1 + 48));
  return result;
}

uint64_t JavaUtilConcurrentConcurrentHashMap_initWithInt_withFloat_withInt_(uint64_t a1, uint64_t a2, unsigned int a3, float a4)
{
  v6 = a2;
  JavaUtilAbstractMap_init(a1, a2);
  if ((v6 & 0x80000000) != 0 || (a4 > 0.0 ? (v8 = a3 <= 0) : (v8 = 1), v8))
  {
    v14 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v14);
  }

  if (v6 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v6;
  }

  v10 = (v9 / a4) + 1.0;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 < 0.0)
  {
    v11 = 0x8000000000000000;
  }

  if (v10 == 0x8000000000000000)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= 0x3FFFFFFF)
  {
    result = sub_1001AF280(v12);
  }

  else
  {
    result = 0x40000000;
  }

  atomic_store(result, (a1 + 48));
  return result;
}

JavaUtilConcurrentConcurrentHashMap_Traverser *new_JavaUtilConcurrentConcurrentHashMap_Traverser_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_(void *a1, int a2, int a3, int a4)
{
  v8 = [JavaUtilConcurrentConcurrentHashMap_Traverser alloc];
  JreStrongAssign(&v8->tab_, a1);
  v8->index_ = a3;
  v8->baseIndex_ = a3;
  v8->baseLimit_ = a4;
  v8->baseSize_ = a2;
  JreStrongAssign(&v8->next_, 0);
  return v8;
}

unint64_t sub_1001AFE00(uint64_t a1, void *a2, void *a3, char a4)
{
  if (!a2 || !a3)
  {
    v25 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v25);
  }

  v6 = [a2 hash];
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  v7 = v6 & 0x7FFFFFFF ^ HIWORD(v6);
  v8 = atomic_load((a1 + 24));
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (v8)
            {
              v9 = *(v8 + 8);
              if (v9)
              {
                break;
              }
            }

            v8 = sub_1001B1FC8(a1);
          }

          v10 = v9 - 1;
          v11 = JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(v8, (v9 - 1) & v7);
          if (v11)
          {
            break;
          }

          v14 = new_JavaUtilConcurrentConcurrentHashMap_Node_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_(v7, a2, a3, 0);
          if (JavaUtilConcurrentConcurrentHashMap_casTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_withJavaUtilConcurrentConcurrentHashMap_Node_(v8, v10 & v7, 0, v14))
          {
            v20 = 0;
LABEL_31:
            sub_1001B0AD8(a1, 1uLL, v20);
            return 0;
          }
        }

        v12 = v11;
        v13 = *(v11 + 2);
        if (v13 != -1879048193)
        {
          break;
        }

        v8 = sub_1001B094C(a1, v8, v11);
      }

      objc_sync_enter(v11);
      if (JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(v8, v10 & v7) != v12)
      {
        goto LABEL_11;
      }

      if ((v13 & 0x80000000) == 0)
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          JreThrowClassCastException();
        }

        v22 = sub_1001B19AC(v12, v7, a2, a3);
        if (v22)
        {
          v23 = (v22 + 24);
          v18 = atomic_load(v23);
          if ((a4 & 1) == 0)
          {
            JreVolatileStrongAssign(v23, a3);
          }
        }

        else
        {
          v18 = 0;
        }

        objc_sync_exit(v12);
        v20 = 2;
        if (!v18)
        {
          goto LABEL_31;
        }

        return v18;
      }

LABEL_11:
      objc_sync_exit(v12);
    }

    v20 = 1;
    for (i = v12; ; i = *(i + 4))
    {
      if (*(i + 2) == v7)
      {
        v16 = *(i + 2);
        if (v16 == a2 || v16 && [a2 isEqual:?])
        {
          break;
        }
      }

      if (!*(i + 4))
      {
        v17 = new_JavaUtilConcurrentConcurrentHashMap_Node_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_(v7, a2, a3, 0);
        JreStrongAssignAndConsume(i + 4, v17);
        v18 = 0;
        goto LABEL_28;
      }

      ++v20;
    }

    v19 = (i + 24);
    v18 = atomic_load(i + 3);
    if ((a4 & 1) == 0)
    {
      JreVolatileStrongAssign(v19, a3);
    }

LABEL_28:
    objc_sync_exit(v12);
  }

  while (!v20);
  if (v20 >= 8)
  {
    sub_1001B28A4(a1, v8, v10 & v7);
  }

  if (!v18)
  {
    goto LABEL_31;
  }

  return v18;
}

uint64_t sub_1001B0244(uint64_t result, int a2)
{
  v2 = result;
  if (a2 > 0x1FFFFFFF)
  {
    v3 = 0x40000000;
  }

  else
  {
    result = sub_1001AF280(a2 + (a2 >> 1) + 1);
    v3 = result;
  }

  for (i = atomic_load((v2 + 48)); (i & 0x80000000) == 0; i = atomic_load((v2 + 48)))
  {
    v5 = atomic_load((v2 + 24));
    if (v5 && (result = *(v5 + 8), result))
    {
      if (v3 <= i || result > 0x3FFFFFFF)
      {
        return result;
      }

      v6 = atomic_load((v2 + 24));
      if (v5 == v6)
      {
        v7 = JavaUtilConcurrentConcurrentHashMap_resizeStampWithInt_(result);
        if (!qword_100554CC0)
        {
          goto LABEL_28;
        }

        result = [qword_100554CC0 compareAndSwapIntWithId:v2 withLong:qword_100554CC8 withInt:i withInt:((v7 << dword_100554CB4) + 2)];
        if (result)
        {
          result = sub_1001B2174(v2, v5, 0);
        }
      }
    }

    else
    {
      if (i <= v3)
      {
        v8 = v3;
      }

      else
      {
        v8 = i;
      }

      if (!qword_100554CC0)
      {
LABEL_28:
        JreThrowNullPointerException();
      }

      result = [qword_100554CC0 compareAndSwapIntWithId:v2 withLong:qword_100554CC8 withInt:i withInt:0xFFFFFFFFLL];
      if (result)
      {
        v9 = atomic_load((v2 + 24));
        if (v9 == v5)
        {
          if (qword_100554D18 != -1)
          {
            sub_1001B730C();
          }

          v10 = [IOSObjectArray arrayWithLength:v8 type:qword_100554D10];
          objc_opt_class();
          if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          result = JreVolatileStrongAssign((v2 + 24), v10);
          LODWORD(i) = v8 - (v8 >> 2);
        }

        atomic_store(i, (v2 + 48));
      }
    }
  }

  return result;
}

unint64_t sub_1001B0470(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v7 = [a2 hash];
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  v8 = atomic_load((a1 + 24));
  if (!v8)
  {
    return 0;
  }

  v26 = a4;
  v9 = v7 & 0x7FFFFFFF ^ HIWORD(v7);
  while (1)
  {
    while (1)
    {
      v10 = *(v8 + 8);
      if (!v10)
      {
        return 0;
      }

      v11 = v10 - 1;
      v12 = JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(v8, (v10 - 1) & v9);
      if (!v12)
      {
        return 0;
      }

      v13 = v12;
      v14 = *(v12 + 2);
      if (v14 != -1879048193)
      {
        break;
      }

      v8 = sub_1001B094C(a1, v8, v12);
      if (!v8)
      {
        return 0;
      }
    }

    objc_sync_enter(v12);
    if (JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(v8, v11 & v9) == v13)
    {
      break;
    }

LABEL_14:
    objc_sync_exit(v13);
  }

  if ((v14 & 0x80000000) == 0)
  {
    v15 = 0;
    v16 = v13;
    while (1)
    {
      v17 = v15;
      v15 = v16;
      if (*(v16 + 2) == v9)
      {
        v18 = v16[2];
        if (v18 == a2 || v18 && [a2 isEqual:?])
        {
          break;
        }
      }

      v16 = v15[4];
      if (!v16)
      {
        goto LABEL_37;
      }
    }

    v22 = atomic_load(v15 + 3);
    if (!v26 || v22 == v26 || v22 && [v26 isEqual:v22])
    {
      if (a3)
      {
        JreVolatileStrongAssign(v15 + 3, a3);
      }

      else if (v17)
      {
        JreStrongAssign(v17 + 4, v15[4]);
      }

      else
      {
        JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(v8, v11 & v9, v15[4]);
      }

      goto LABEL_45;
    }

    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v19 = v13[5];
  if (!v19 || (v20 = sub_1001B3D84(v19, v9, a2, 0), (v21 = v20) == 0) || (v22 = atomic_load((v20 + 24)), a4) && v22 != a4 && (!v22 || ![a4 isEqual:v22]))
  {
LABEL_37:
    objc_sync_exit(v13);
    return 0;
  }

  if (a3)
  {
    JreVolatileStrongAssign((v21 + 24), a3);
  }

  else if (sub_1001B4550(v13, v21))
  {
    v24 = atomic_load(v13 + 6);
    v25 = JavaUtilConcurrentConcurrentHashMap_untreeifyWithJavaUtilConcurrentConcurrentHashMap_Node_(v24);
    JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(v8, v11 & v9, v25);
  }

LABEL_45:
  objc_sync_exit(v13);
  if (v22 && !a3)
  {
    sub_1001B0AD8(a1, 0xFFFFFFFFFFFFFFFFLL, -1);
  }

  return v22;
}

unint64_t sub_1001B094C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return atomic_load((a1 + 24));
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return atomic_load((a1 + 24));
  }

  objc_opt_class();
  if (!a3)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v6 = *(a3 + 40);
  if (!v6)
  {
    return atomic_load((a1 + 24));
  }

  v7 = JavaUtilConcurrentConcurrentHashMap_resizeStampWithInt_(*(a2 + 8));
  while (1)
  {
    v8 = atomic_load((a1 + 32));
    if (v6 != v8)
    {
      return v6;
    }

    v9 = atomic_load((a1 + 24));
    if (v9 != a2)
    {
      return v6;
    }

    v10 = atomic_load((a1 + 48));
    if ((v10 & 0x80000000) == 0)
    {
      return v6;
    }

    if (v10 == v7 + 1 || v10 >> dword_100554CB4 != v7)
    {
      return v6;
    }

    if (v10 == dword_100554CB0 + v7)
    {
      return v6;
    }

    v12 = atomic_load((a1 + 52));
    if (v12 < 1)
    {
      return v6;
    }

    if (!qword_100554CC0)
    {
      goto LABEL_22;
    }

    if ([qword_100554CC0 compareAndSwapIntWithId:a1 withLong:qword_100554CC8 withInt:v10 withInt:(v10 + 1)])
    {
      sub_1001B2174(a1, a2, v6);
      return v6;
    }
  }
}

int64_t sub_1001B0AD8(uint64_t a1, unint64_t a2, int a3)
{
  v6 = atomic_load((a1 + 64));
  if (!v6)
  {
    v7 = atomic_load((a1 + 40));
    if (!qword_100554CC0)
    {
      goto LABEL_45;
    }

    v8 = v7 + a2;
    result = [qword_100554CC0 compareAndSwapLongWithId:a1 withLong:qword_100554CD8 withLong:? withLong:?];
    if (result)
    {
      if (a3 < 0)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  if (!JavaUtilConcurrentConcurrentHashMap_threadCounterHashCode_)
  {
    goto LABEL_45;
  }

  v10 = [JavaUtilConcurrentConcurrentHashMap_threadCounterHashCode_ get];
  v11 = v10;
  if (v6)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_20;
  }

  v13 = *(v6 + 8);
  if (v13 - 1 < 0)
  {
    goto LABEL_20;
  }

  v14 = v11->code_ & (v13 - 1);
  if (v14 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v14);
  }

  v15 = *(v6 + 24 + 8 * v14);
  if (!v15)
  {
LABEL_20:
    v18 = 1;
    goto LABEL_21;
  }

  v16 = atomic_load((v15 + 64));
  if (!qword_100554CC0)
  {
LABEL_45:
    JreThrowNullPointerException();
  }

  result = [qword_100554CC0 compareAndSwapLongWithId:v15 withLong:qword_100554CE8 withLong:v16 withLong:v16 + a2];
  if (result)
  {
    if (a3 < 2)
    {
      return result;
    }

    result = [JavaUtilConcurrentConcurrentHashMap sumCount]_0(a1);
    v8 = result;
LABEL_18:
    v17 = atomic_load((a1 + 48));
    if (v8 < v17)
    {
      return result;
    }

    while (1)
    {
      v19 = atomic_load((a1 + 24));
      if (!v19)
      {
        return result;
      }

      result = *(v19 + 8);
      if (result > 0x3FFFFFFF)
      {
        return result;
      }

      result = JavaUtilConcurrentConcurrentHashMap_resizeStampWithInt_(result);
      if ((v17 & 0x80000000) == 0)
      {
        break;
      }

      if (v17 == result + 1 || v17 >> dword_100554CB4 != result)
      {
        return result;
      }

      if (v17 == dword_100554CB0 + result)
      {
        return result;
      }

      v24 = atomic_load((a1 + 32));
      if (!v24)
      {
        return result;
      }

      v25 = atomic_load((a1 + 52));
      if (v25 < 1)
      {
        return result;
      }

      if (!qword_100554CC0)
      {
        goto LABEL_45;
      }

      if ([qword_100554CC0 compareAndSwapIntWithId:a1 withLong:qword_100554CC8 withInt:v17 withInt:(v17 + 1)])
      {
        v20 = a1;
        v21 = v19;
        v22 = v24;
LABEL_42:
        sub_1001B2174(v20, v21, v22);
      }

LABEL_43:
      result = [JavaUtilConcurrentConcurrentHashMap sumCount]_0(a1);
      v17 = atomic_load((a1 + 48));
      if (result < v17)
      {
        return result;
      }
    }

    if (!qword_100554CC0)
    {
      goto LABEL_45;
    }

    if (![qword_100554CC0 compareAndSwapIntWithId:a1 withLong:qword_100554CC8 withInt:v17 withInt:((result << dword_100554CB4) + 2)])
    {
      goto LABEL_43;
    }

    v20 = a1;
    v21 = v19;
    v22 = 0;
    goto LABEL_42;
  }

  v18 = 0;
LABEL_21:

  return sub_1001B2B54(a1, a2, v11, v18);
}

JavaUtilConcurrentConcurrentHashMap_KeySetView *new_JavaUtilConcurrentConcurrentHashMap_KeySetView_initWithJavaUtilConcurrentConcurrentHashMap_withId_(void *a1, void *a2)
{
  v4 = [JavaUtilConcurrentConcurrentHashMap_KeySetView alloc];
  objc_storeWeak(&v4->super.map_, a1);
  JreStrongAssign(&v4->value_, a2);
  return v4;
}

JavaUtilConcurrentConcurrentHashMap_Node *new_JavaUtilConcurrentConcurrentHashMap_Node_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_(int a1, void *a2, void *a3, void *a4)
{
  v8 = [JavaUtilConcurrentConcurrentHashMap_Node alloc];
  v8->hash__ = a1;
  JreStrongAssign(&v8->key_, a2);
  JreVolatileStrongAssign(&v8->val_, a3);
  JreStrongAssign(&v8->next_, a4);
  return v8;
}

uint64_t sub_1001B19AC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = 0;
  v8 = 0;
  v9 = *(a1 + 40);
  do
  {
    if (!v9)
    {
      v22 = [JavaUtilConcurrentConcurrentHashMap_TreeNode alloc];
      JavaUtilConcurrentConcurrentHashMap_TreeNode_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(v22, a2, a3, a4, 0, 0);
      v23 = JreStrongAssignAndConsume((a1 + 40), v22);
      JreVolatileStrongAssign((a1 + 48), v23);
      return 0;
    }

    v10 = v9;
    v11 = *(v9 + 8);
    if (v11 > a2)
    {
      goto LABEL_4;
    }

    if (v11 < a2)
    {
      goto LABEL_20;
    }

    v13 = *(v10 + 16);
    if (v13 == a3)
    {
      return v10;
    }

    if (v13)
    {
      if (!a3)
      {
        JreThrowNullPointerException();
      }

      if ([a3 isEqual:*(v10 + 16)])
      {
        return v10;
      }
    }

    if (!v8 && (v8 = JavaUtilConcurrentConcurrentHashMap_comparableClassForWithId_(a3)) == 0 || (v14 = JavaUtilConcurrentConcurrentHashMap_compareComparablesWithIOSClass_withId_withId_(v8, a3, v13)) == 0)
    {
      if ((v7 & 1) == 0)
      {
        v15 = *(v10 + 48);
        if (v15)
        {
          v16 = sub_1001B3D84(v15, a2, a3, v8);
          if (v16)
          {
            return v16;
          }
        }

        v17 = *(v10 + 56);
        if (v17)
        {
          v16 = sub_1001B3D84(v17, a2, a3, v8);
          if (v16)
          {
            return v16;
          }
        }
      }

      v14 = JavaUtilConcurrentConcurrentHashMap_TreeBin_tieBreakOrderWithId_withId_(a3, v13);
      v7 = 1;
    }

    if (v14 < 1)
    {
LABEL_4:
      v12 = &OBJC_IVAR___JavaUtilConcurrentConcurrentHashMap_TreeNode_left_;
    }

    else
    {
LABEL_20:
      v12 = &OBJC_IVAR___JavaUtilConcurrentConcurrentHashMap_TreeNode_right_;
    }

    v9 = *(v10 + *v12);
  }

  while (v9);
  v18 = atomic_load((a1 + 48));
  v19 = [JavaUtilConcurrentConcurrentHashMap_TreeNode alloc];
  JavaUtilConcurrentConcurrentHashMap_TreeNode_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(v19, a2, a3, a4, v18, v10);
  v20 = v19;
  JreVolatileStrongAssign((a1 + 48), v20);
  if (v18)
  {
    JreStrongAssign(v18 + 8, v20);
  }

  JreStrongAssign((v10 + *v12), v20);
  if (*(v10 + 72))
  {
    sub_1001B421C(a1);
    v21 = JavaUtilConcurrentConcurrentHashMap_TreeBin_balanceInsertionWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(*(a1 + 40), v20);
    JreStrongAssign((a1 + 40), v21);
    v10 = 0;
    atomic_store(0, (a1 + 64));
  }

  else
  {
    v10 = 0;
    v20->red_ = 1;
  }

  return v10;
}

void sub_1001B1C44(void *a1)
{
  objc_begin_catch(a1);
  atomic_store(0, (v1 + 64));
  objc_exception_rethrow();
}

JavaUtilConcurrentConcurrentHashMap_KeySetView *JavaUtilConcurrentConcurrentHashMap_newKeySetWithInt_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  v2 = [JavaUtilConcurrentConcurrentHashMap alloc];
  JavaUtilConcurrentConcurrentHashMap_initWithInt_(v2, a1);
  v3 = v2;
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  v4 = new_JavaUtilConcurrentConcurrentHashMap_KeySetView_initWithJavaUtilConcurrentConcurrentHashMap_withId_(v3, JavaLangBoolean_TRUE__);

  return v4;
}

uint64_t JavaUtilConcurrentConcurrentHashMap_resizeStampWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  return (1 << (dword_100550388 - 1)) | JavaLangInteger_numberOfLeadingZerosWithInt_(a1);
}

IOSObjectArray *sub_1001B1FC8(uint64_t a1)
{
  while (1)
  {
    v2 = atomic_load((a1 + 24));
    if (v2)
    {
      if (v2->super.size_)
      {
        break;
      }
    }

    v3 = atomic_load((a1 + 48));
    if ((v3 & 0x80000000) != 0)
    {
      JavaLangThread_yield();
    }

    else
    {
      if (!qword_100554CC0)
      {
        JreThrowNullPointerException();
      }

      if ([qword_100554CC0 compareAndSwapIntWithId:a1 withLong:qword_100554CC8 withInt:v3 withInt:0xFFFFFFFFLL])
      {
        v2 = atomic_load((a1 + 24));
        if (!v2 || !v2->super.size_)
        {
          if (v3)
          {
            v4 = v3;
          }

          else
          {
            v4 = 16;
          }

          if (qword_100554D18 != -1)
          {
            sub_1001B730C();
          }

          v2 = [IOSObjectArray arrayWithLength:v4 type:qword_100554D10];
          objc_opt_class();
          if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          JreVolatileStrongAssign((a1 + 24), v2);
          LODWORD(v3) = v4 - (v4 >> 2);
        }

        atomic_store(v3, (a1 + 48));
        return v2;
      }
    }
  }

  return v2;
}

uint64_t sub_1001B2174(uint64_t a1, uint64_t a2, IOSObjectArray *a3)
{
  if (!a2)
  {
    goto LABEL_95;
  }

  v3 = a3;
  v4 = a2;
  v6 = *(a2 + 8);
  v7 = (v6 >> 3) / JavaUtilConcurrentConcurrentHashMap_NCPU_;
  if (JavaUtilConcurrentConcurrentHashMap_NCPU_ < 2)
  {
    v7 = *(a2 + 8);
  }

  if (v7 <= 16)
  {
    v7 = 16;
  }

  v62 = v7;
  if (!a3)
  {
    if (qword_100554D18 != -1)
    {
      sub_1001B730C();
    }

    v3 = [IOSObjectArray arrayWithLength:(2 * v6) type:qword_100554D10];
    objc_opt_class();
    if (!v3)
    {
      JreVolatileStrongAssign((a1 + 32), 0);
      atomic_store(v6, (a1 + 52));
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    JreVolatileStrongAssign((a1 + 32), v3);
    atomic_store(v6, (a1 + 52));
  }

  size = v3->super.size_;
  v8 = [JavaUtilConcurrentConcurrentHashMap_ForwardingNode alloc];
  JavaUtilConcurrentConcurrentHashMap_ForwardingNode_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_(v8, v3);
  v55 = v8;
  v9 = 0;
  v10 = 0;
  LOBYTE(v11) = 0;
  v12 = 1;
  v51 = v3;
  v61 = v6;
LABEL_13:
  if ((v12 & 1) == 0)
  {
    v13 = v61;
    goto LABEL_24;
  }

  --v10;
  v13 = v61;
  while (1)
  {
    if ((v10 >= v9) | v11 & 1)
    {
      goto LABEL_24;
    }

    v14 = atomic_load((a1 + 52));
    v15 = v14 - 1;
    if (v14 < 1)
    {
      break;
    }

    if (!qword_100554CC0)
    {
      goto LABEL_95;
    }

    if (v14 <= v62)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14 - v62;
    }

    --v10;
    if ([qword_100554CC0 compareAndSwapIntWithId:a1 withLong:qword_100554CD0 withInt:v50 withInt:?])
    {
      v9 = v16;
      v10 = v15;
LABEL_24:
      if (v10 < 0 || v10 >= v13)
      {
        goto LABEL_33;
      }

      v17 = v10 + v13;
      if (v17 >= size)
      {
        v13 = v61;
        if (v11)
        {
          goto LABEL_94;
        }

LABEL_34:
        v21 = atomic_load((a1 + 48));
        if (qword_100554CC0)
        {
          v11 = [qword_100554CC0 compareAndSwapIntWithId:a1 withLong:qword_100554CC8 withInt:v21 withInt:(v21 - 1)];
          v12 = v11;
          if (!v11)
          {
            goto LABEL_13;
          }

          result = JavaUtilConcurrentConcurrentHashMap_resizeStampWithInt_(v13);
          v10 = v13;
          v12 = v11;
          if (v21 - 2 == result << dword_100554CB4)
          {
            goto LABEL_13;
          }

          return result;
        }

LABEL_95:
        JreThrowNullPointerException();
      }

      v18 = JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(v4, v10);
      if (!v18)
      {
        v12 = JavaUtilConcurrentConcurrentHashMap_casTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_withJavaUtilConcurrentConcurrentHashMap_Node_(v4, v10, 0, v55);
        goto LABEL_13;
      }

      v19 = v18;
      hash = v18->hash__;
      v12 = 1;
      if (hash == -1879048193)
      {
        goto LABEL_13;
      }

      objc_sync_enter(v18);
      obj = v19;
      if (JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(v4, v10) != v19)
      {
        goto LABEL_30;
      }

      if ((hash & 0x80000000) == 0)
      {
        v23 = hash & v61;
        v24 = v19;
        next = v19->next_;
        if (next)
        {
          do
          {
            v26 = next->hash__ & v61;
            if (v26 != v23)
            {
              v24 = next;
            }

            next = next->next_;
            v23 = v26;
          }

          while (next);
          if (v26)
          {
            v27 = 0;
          }

          else
          {
            v27 = v24;
          }

          if (v26)
          {
            v28 = v24;
          }

          else
          {
            v28 = 0;
          }

          for (; v19 != v24; v19 = v19->next_)
          {
            v29 = v19->hash__;
            key = v19->key_;
            v31 = atomic_load(&v19->val_);
            if ((v29 & v61) != 0)
            {
              v28 = new_JavaUtilConcurrentConcurrentHashMap_Node_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_(v29, key, v31, v28);
            }

            else
            {
              v27 = new_JavaUtilConcurrentConcurrentHashMap_Node_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_(v29, key, v31, v27);
            }
          }
        }

        else
        {
          if (v23)
          {
            v27 = 0;
          }

          else
          {
            v27 = v19;
          }

          if (v23)
          {
            v28 = v19;
          }

          else
          {
            v28 = 0;
          }
        }

        v44 = v27;
        v3 = v51;
        JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(v51, v10, v44);
        JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(v51, v17, v28);
        JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(v4, v10, v55);
LABEL_92:
        v12 = 1;
LABEL_93:
        objc_sync_exit(obj);
        goto LABEL_13;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_30:
        v12 = 0;
        goto LABEL_93;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v32 = atomic_load(&v19[1].hash__);
      if (v32)
      {
        v50 = v4;
        v57 = 0;
        v53 = 0;
        p_isa = 0;
        v54 = 0;
        v56 = 0;
        v52 = 0;
        do
        {
          v33 = *(v32 + 8);
          v34 = *(v32 + 16);
          v35 = atomic_load((v32 + 24));
          v36 = [JavaUtilConcurrentConcurrentHashMap_TreeNode alloc];
          JavaUtilConcurrentConcurrentHashMap_TreeNode_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(v36, v33, v34, v35, 0, 0);
          v37 = v36;
          v38 = v37;
          if ((v33 & v61) != 0)
          {
            v39 = JreStrongAssign(&v37->prev_, p_isa);
            v40 = v38;
            if (v39)
            {
              if (!p_isa)
              {
                goto LABEL_96;
              }

              JreStrongAssign(p_isa + 4, v38);
              v40 = v54;
            }

            ++v57;
            v54 = v40;
            p_isa = &v38->super.super.isa;
          }

          else
          {
            v41 = JreStrongAssign(&v37->prev_, v56);
            v42 = &v38->super.super.isa;
            if (v41)
            {
              if (!v56)
              {
LABEL_96:
                JreThrowNullPointerException();
              }

              JreStrongAssign(v56 + 4, v38);
              v42 = v52;
            }

            ++v53;
            v52 = v42;
            v56 = &v38->super.super.isa;
          }

          v32 = *(v32 + 32);
        }

        while (v32);
        if (v53 < 7)
        {
          v4 = v50;
          v3 = v51;
          v32 = v54;
          v43 = v52;
          goto LABEL_81;
        }

        v4 = v50;
        v3 = v51;
        v32 = v54;
        if (v57)
        {
          v46 = [JavaUtilConcurrentConcurrentHashMap_TreeBin alloc];
          JavaUtilConcurrentConcurrentHashMap_TreeBin_initWithJavaUtilConcurrentConcurrentHashMap_TreeNode_(v46, v52);
          v45 = v46;
          v53 = 1;
          goto LABEL_84;
        }

        v45 = obj;
LABEL_89:
        v48 = JavaUtilConcurrentConcurrentHashMap_untreeifyWithJavaUtilConcurrentConcurrentHashMap_Node_(v32);
LABEL_90:
        v49 = v48;
      }

      else
      {
        v57 = 0;
        v53 = 0;
        v43 = 0;
LABEL_81:
        v45 = JavaUtilConcurrentConcurrentHashMap_untreeifyWithJavaUtilConcurrentConcurrentHashMap_Node_(v43);
LABEL_84:
        if (v57 <= 6)
        {
          goto LABEL_89;
        }

        if (v53)
        {
          v47 = [JavaUtilConcurrentConcurrentHashMap_TreeBin alloc];
          JavaUtilConcurrentConcurrentHashMap_TreeBin_initWithJavaUtilConcurrentConcurrentHashMap_TreeNode_(v47, v32);
          v48 = v47;
          goto LABEL_90;
        }

        v49 = obj;
      }

      JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(v3, v10, v45);
      JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(v3, v17, v49);
      JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(v4, v10, v55);
      goto LABEL_92;
    }
  }

  v10 = -1;
LABEL_33:
  if ((v11 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_94:
  JreVolatileStrongAssign((a1 + 32), 0);
  result = JreVolatileStrongAssign((a1 + 24), v3);
  atomic_store(2 * v13 - (v13 >> 1), (a1 + 48));
  return result;
}

_DWORD *sub_1001B28A4(_DWORD *result, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = *(a2 + 8);
    if (v4 > 63)
    {
      result = JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(a2, a3);
      if (result)
      {
        v6 = result;
        if ((result[2] & 0x80000000) == 0)
        {
          objc_sync_enter(result);
          if (JavaUtilConcurrentConcurrentHashMap_tabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_(a2, a3) == v6)
          {
            v7 = 0;
            v8 = 0;
            v16 = v6;
            do
            {
              v9 = v6[2];
              v10 = *(v6 + 2);
              v11 = atomic_load(v6 + 3);
              v12 = [JavaUtilConcurrentConcurrentHashMap_TreeNode alloc];
              JavaUtilConcurrentConcurrentHashMap_TreeNode_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(v12, v9, v10, v11, 0, 0);
              v13 = v12;
              v14 = v13;
              if (JreStrongAssign(v13 + 8, v7))
              {
                if (!v7)
                {
                  JreThrowNullPointerException();
                }

                JreStrongAssign(v7 + 4, v13);
                v14 = v8;
              }

              v6 = *(v6 + 4);
              v7 = v13;
              v8 = v14;
            }

            while (v6);
            v6 = v16;
            v15 = [JavaUtilConcurrentConcurrentHashMap_TreeBin alloc];
            JavaUtilConcurrentConcurrentHashMap_TreeBin_initWithJavaUtilConcurrentConcurrentHashMap_TreeNode_(v15, v14);
            JavaUtilConcurrentConcurrentHashMap_setTabAtWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withJavaUtilConcurrentConcurrentHashMap_Node_(a2, a3, v15);
          }

          return objc_sync_exit(v6);
        }
      }
    }

    else
    {

      return sub_1001B0244(result, 2 * v4);
    }
  }

  return result;
}

JavaUtilConcurrentConcurrentHashMap_Node *JavaUtilConcurrentConcurrentHashMap_untreeifyWithJavaUtilConcurrentConcurrentHashMap_Node_(uint64_t a1)
{
  v1 = a1;
  if (atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  sub_1001B7300();
  if (!v1)
  {
    return 0;
  }

LABEL_3:
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v6 = atomic_load((v1 + 24));
    result = new_JavaUtilConcurrentConcurrentHashMap_Node_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_(v4, v5, v6, 0);
    v8 = result;
    if (v3)
    {
      JreStrongAssign(&v3->next_, result);
      result = v2;
    }

    v1 = *(v1 + 32);
    v2 = result;
    v3 = v8;
  }

  while (v1);
  return result;
}

id sub_1001B2B54(uint64_t a1, unint64_t a2, JavaUtilConcurrentConcurrentHashMap_CounterHashCode *a3, char a4)
{
  if (a3)
  {
    v40 = a3;
    code = a3->code_;
  }

  else
  {
    v6 = [JavaUtilConcurrentConcurrentHashMap_CounterHashCode alloc];
    if (!JavaUtilConcurrentConcurrentHashMap_counterHashCodeGenerator_)
    {
      goto LABEL_62;
    }

    v7 = [JavaUtilConcurrentConcurrentHashMap_counterHashCodeGenerator_ addAndGetWithInt:1640531527];
    v8 = v7 <= 1 ? 1 : v7;
    code = v8;
    v6->code_ = v8;
    if (!JavaUtilConcurrentConcurrentHashMap_threadCounterHashCode_)
    {
      goto LABEL_62;
    }

    v40 = v6;
    [JavaUtilConcurrentConcurrentHashMap_threadCounterHashCode_ setWithId:v6];
  }

  v9 = 0;
  while (1)
  {
    while (1)
    {
      v10 = atomic_load((a1 + 64));
      if (!v10)
      {
        break;
      }

      v11 = *(v10 + 8);
      if (v11 < 1)
      {
        break;
      }

      v12 = *(v10 + 24 + 8 * ((v11 - 1) & code));
      if (v12)
      {
        if ((a4 & 1) == 0)
        {
          goto LABEL_55;
        }

        v28 = atomic_load((v12 + 64));
        if (!qword_100554CC0)
        {
          goto LABEL_62;
        }

        result = [qword_100554CC0 compareAndSwapLongWithId:v12 withLong:qword_100554CE8 withLong:v28 withLong:v28 + a2];
        if (result)
        {
          goto LABEL_60;
        }

        v29 = atomic_load((a1 + 64));
        v31 = v29 == v10 && v11 < JavaUtilConcurrentConcurrentHashMap_NCPU_;
        if ((v31 & v9) != 1)
        {
          a4 = 1;
          v9 = v31;
          goto LABEL_31;
        }

        if (atomic_load((a1 + 56)))
        {
          v9 = 1;
          goto LABEL_55;
        }

        v9 = 1;
        if ([qword_100554CC0 compareAndSwapIntWithId:a1 withLong:qword_100554CE0 withInt:0 withInt:1])
        {
          v33 = atomic_load((a1 + 64));
          if (v33 == v10)
          {
            if (qword_100554D58 != -1)
            {
              sub_1001B7334();
            }

            v34 = [IOSObjectArray arrayWithLength:2 * v11 type:qword_100554D50, v40];
            for (i = 0; i != v11; ++i)
            {
              v36 = *(v10 + 8);
              if (i >= v36)
              {
                IOSArray_throwOutOfBoundsWithMsg(v36, i);
              }

              IOSObjectArray_Set(v34, i, *(v10 + 24 + 8 * i));
            }

            JreVolatileStrongAssign((a1 + 64), v34);
          }

          v9 = 0;
          atomic_store(0, (a1 + 56));
          a4 = 1;
        }

        else
        {
LABEL_55:
          a4 = 1;
LABEL_31:
          v27 = code ^ (code << 13) ^ ((code ^ (code << 13)) >> 17);
          code = v27 ^ (32 * v27);
        }
      }

      else
      {
        if (atomic_load((a1 + 56)))
        {
          goto LABEL_30;
        }

        v14 = [JavaUtilConcurrentConcurrentHashMap_CounterCell alloc];
        atomic_store(a2, &v14->value_);
        v15 = v14;
        if (atomic_load((a1 + 56)))
        {
          goto LABEL_30;
        }

        v17 = v15;
        if (!qword_100554CC0)
        {
          goto LABEL_62;
        }

        if (![qword_100554CC0 compareAndSwapIntWithId:a1 withLong:qword_100554CE0 withInt:0 withInt:1])
        {
LABEL_30:
          v9 = 0;
          goto LABEL_31;
        }

        v18 = atomic_load((a1 + 64));
        if (v18)
        {
          v19 = *(v18 + 8);
          v20 = __OFSUB__(v19, 1);
          v21 = v19 - 1;
          if (v21 < 0 == v20)
          {
            v22 = v21 & code;
            if (!*(v18 + 24 + 8 * v22))
            {
              result = IOSObjectArray_Set(v18, v22, v17);
              goto LABEL_59;
            }
          }
        }

LABEL_26:
        atomic_store(0, (a1 + 56));
      }
    }

    if (!atomic_load((a1 + 56)))
    {
      v24 = atomic_load((a1 + 64));
      if (v24 == v10)
      {
        if (!qword_100554CC0)
        {
          goto LABEL_62;
        }

        if ([qword_100554CC0 compareAndSwapIntWithId:a1 withLong:qword_100554CE0 withInt:0 withInt:1])
        {
          break;
        }
      }
    }

    v26 = atomic_load((a1 + 40));
    if (!qword_100554CC0)
    {
      goto LABEL_62;
    }

    result = [qword_100554CC0 compareAndSwapLongWithId:a1 withLong:qword_100554CD8 withLong:v26 withLong:v26 + a2];
    if (result)
    {
      goto LABEL_60;
    }
  }

  v25 = atomic_load((a1 + 64));
  if (v25 != v10)
  {
    goto LABEL_26;
  }

  if (qword_100554D58 != -1)
  {
    sub_1001B7334();
  }

  v38 = [IOSObjectArray arrayWithLength:2 type:qword_100554D50, v40];
  v39 = [JavaUtilConcurrentConcurrentHashMap_CounterCell alloc];
  atomic_store(a2, &v39->value_);
  IOSObjectArray_SetAndConsume(v38, code & 1, v39);
  result = JreVolatileStrongAssign((a1 + 64), v38);
LABEL_59:
  atomic_store(0, (a1 + 56));
LABEL_60:
  if (!v40)
  {
LABEL_62:
    JreThrowNullPointerException();
  }

  v40->code_ = code;
  return result;
}

void sub_1001B2FDC(void *a1)
{
  objc_begin_catch(a1);
  atomic_store(0, (v1 + *(v2 + 404)));
  objc_exception_rethrow();
}

void sub_1001B3500(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = new_JavaLangError_initWithJavaLangThrowable_(v2);
    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

JavaUtilConcurrentConcurrentHashMap *new_JavaUtilConcurrentConcurrentHashMap_init()
{
  v0 = [JavaUtilConcurrentConcurrentHashMap alloc];
  JavaUtilAbstractMap_init(v0, v1);
  return v0;
}

JavaUtilConcurrentConcurrentHashMap_KeySetView *JavaUtilConcurrentConcurrentHashMap_newKeySet()
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  v0 = [JavaUtilConcurrentConcurrentHashMap alloc];
  JavaUtilAbstractMap_init(v0, v1);
  v2 = v0;
  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  v3 = new_JavaUtilConcurrentConcurrentHashMap_KeySetView_initWithJavaUtilConcurrentConcurrentHashMap_withId_(v2, JavaLangBoolean_TRUE__);

  return v3;
}

uint64_t JavaUtilConcurrentConcurrentHashMap_class_()
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B7300();
  }

  if (qword_100554D08 != -1)
  {
    sub_1001B73C4();
  }

  return qword_100554D00;
}

id JavaUtilConcurrentConcurrentHashMap_ForwardingNode_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_(uint64_t a1, void *a2)
{
  *(a1 + 8) = -1879048193;
  JreStrongAssign((a1 + 16), 0);
  JreVolatileStrongAssign((a1 + 24), 0);
  JreStrongAssign((a1 + 32), 0);

  return JreStrongAssign((a1 + 40), a2);
}

id JavaUtilConcurrentConcurrentHashMap_ReservationNode_init(uint64_t a1)
{
  *(a1 + 8) = -2147483647;
  JreStrongAssign((a1 + 16), 0);
  JreVolatileStrongAssign((a1 + 24), 0);

  return JreStrongAssign((a1 + 32), 0);
}

id JavaUtilConcurrentConcurrentHashMap_TreeNode_initWithInt_withId_withId_withJavaUtilConcurrentConcurrentHashMap_Node_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  *(a1 + 8) = a2;
  JreStrongAssign((a1 + 16), a3);
  JreVolatileStrongAssign((a1 + 24), a4);
  JreStrongAssign((a1 + 32), a5);

  return JreStrongAssign((a1 + 40), a6);
}

uint64_t sub_1001B3D84(uint64_t a1, uint64_t a2, void *a3, id a4)
{
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 8);
    if (v9 <= a2)
    {
      v10 = *(a1 + 56);
      if (v9 < a2)
      {
        goto LABEL_15;
      }

      v11 = *(a1 + 16);
      if (v11 == a3 || v11 && ([a3 isEqual:*(a1 + 16)] & 1) != 0)
      {
        return a1;
      }

      if (!v8)
      {
LABEL_15:
        v8 = v10;
        goto LABEL_16;
      }

      if (v10)
      {
        if (a4 || (a4 = JavaUtilConcurrentConcurrentHashMap_comparableClassForWithId_(a3)) != 0)
        {
          v12 = JavaUtilConcurrentConcurrentHashMap_compareComparablesWithIOSClass_withId_withId_(a4, a3, v11);
          if (v12)
          {
            if (v12 >= 0)
            {
              v8 = v10;
            }

            goto LABEL_16;
          }
        }

        v13 = sub_1001B3D84(v10, a2, a3, a4);
        if (v13)
        {
          return v13;
        }
      }
    }

LABEL_16:
    a1 = v8;
    if (!v8)
    {
      return a1;
    }
  }
}

uint64_t JavaUtilConcurrentConcurrentHashMap_TreeBin_tieBreakOrderWithId_withId_(void *a1, void *a2)
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap_TreeBin__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B73D8();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = JavaLangSystem_identityHashCodeWithId_(a1);
    if (v6 > JavaLangSystem_identityHashCodeWithId_(a2))
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = [objc_msgSend(a1 "getClass")];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  result = [v4 compareToWithId:{objc_msgSend(objc_msgSend(a2, "getClass"), "getName")}];
  if (!result)
  {
    goto LABEL_6;
  }

  return result;
}

id JavaUtilConcurrentConcurrentHashMap_TreeBin_initWithJavaUtilConcurrentConcurrentHashMap_TreeNode_(uint64_t a1, void **a2)
{
  *(a1 + 8) = 0x80000000;
  JreStrongAssign((a1 + 16), 0);
  JreVolatileStrongAssign((a1 + 24), 0);
  JreStrongAssign((a1 + 32), 0);
  JreVolatileStrongAssign((a1 + 48), a2);
  if (a2)
  {
    v4 = 0;
    do
    {
      v5 = a2[4];
      objc_opt_class();
      if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v6 = JreStrongAssign(a2 + 7, 0);
      JreStrongAssign(a2 + 6, v6);
      if (v4)
      {
        v7 = 0;
        v8 = a2[2];
        v9 = *(a2 + 2);
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *(v10 + 2);
          if (v12 <= v9)
          {
            if (v12 >= v9)
            {
              v14 = v11[2];
              if (!v7 && (v7 = JavaUtilConcurrentConcurrentHashMap_comparableClassForWithId_(v8)) == 0 || (v13 = JavaUtilConcurrentConcurrentHashMap_compareComparablesWithIOSClass_withId_withId_(v7, v8, v14)) == 0)
              {
                v13 = JavaUtilConcurrentConcurrentHashMap_TreeBin_tieBreakOrderWithId_withId_(v8, v14);
              }
            }

            else
            {
              v13 = 1;
            }
          }

          else
          {
            v13 = -1;
          }

          if (v13 >= 1)
          {
            v15 = &OBJC_IVAR___JavaUtilConcurrentConcurrentHashMap_TreeNode_right_;
          }

          else
          {
            v15 = &OBJC_IVAR___JavaUtilConcurrentConcurrentHashMap_TreeNode_left_;
          }

          v10 = *(v11 + *v15);
        }

        while (v10);
        JreStrongAssign(a2 + 5, v11);
        JreStrongAssign((v11 + *v15), a2);
        a2 = JavaUtilConcurrentConcurrentHashMap_TreeBin_balanceInsertionWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(v4, a2);
      }

      else
      {
        JreStrongAssign(a2 + 5, 0);
        *(a2 + 72) = 0;
      }

      v16 = a2;
      v4 = a2;
      a2 = v5;
    }

    while (v5);
  }

  else
  {
    v16 = 0;
  }

  return JreStrongAssign((a1 + 40), v16);
}

id sub_1001B421C(uint64_t a1)
{
  if (!qword_100554D30)
  {
    JreThrowNullPointerException();
  }

  result = [qword_100554D30 compareAndSwapIntWithId:a1 withLong:qword_100554D38 withInt:0 withInt:1];
  if ((result & 1) == 0)
  {

    return sub_1001B42A0(a1);
  }

  return result;
}

id sub_1001B42A0(uint64_t a1)
{
  v2 = 0;
LABEL_2:
  v3 = v2;
  do
  {
    while (1)
    {
      v4 = atomic_load((a1 + 64));
      if ((v4 & 0xFFFFFFFD) == 0)
      {
        break;
      }

      if ((v4 & 2) != 0)
      {
        v2 = 0;
        if (v3)
        {
          JavaUtilConcurrentLocksLockSupport_parkWithId_(a1);
          v2 = 1;
        }

        goto LABEL_2;
      }

      if (!qword_100554D30)
      {
        goto LABEL_18;
      }

      if ([qword_100554D30 compareAndSwapIntWithId:a1 withLong:qword_100554D38 withInt:v4 withInt:v4 | 2])
      {
        v6 = JavaLangThread_currentThread();
        JreVolatileStrongAssign((a1 + 56), v6);
        v2 = 1;
        goto LABEL_2;
      }
    }

    if (!qword_100554D30)
    {
LABEL_18:
      JreThrowNullPointerException();
    }

    result = [qword_100554D30 compareAndSwapIntWithId:a1 withLong:qword_100554D38 withInt:? withInt:?];
  }

  while (!result);
  if (v3)
  {

    return JreVolatileStrongAssign((a1 + 56), 0);
  }

  return result;
}

void sub_1001B4504(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001B4550(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a2 + 32);
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    JreStrongAssign(v5 + 4, v4);
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  JreVolatileStrongAssign((a1 + 48), v4);
  if (v4)
  {
LABEL_6:
    JreStrongAssign(v4 + 8, v5);
  }

LABEL_7:
  if (!atomic_load((a1 + 48)))
  {
    JreStrongAssign((a1 + 40), 0);
    return 1;
  }

  v7 = *(a1 + 40);
  if (!v7)
  {
    return 1;
  }

  if (!*(v7 + 56))
  {
    return 1;
  }

  v8 = *(v7 + 48);
  if (!v8 || !*(v8 + 48))
  {
    return 1;
  }

  sub_1001B421C(a1);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  if (!v9 || !v10)
  {
    if (v10)
    {
      v18 = *(a2 + 56);
    }

    else
    {
      v18 = a2;
    }

    if (v9)
    {
      v19 = *(a2 + 48);
    }

    else
    {
      v19 = v18;
    }

    goto LABEL_49;
  }

  v11 = *(a2 + 56);
  do
  {
    v12 = v11;
    v11 = *(v11 + 48);
  }

  while (v11);
  v13 = *(v12 + 72);
  *(v12 + 72) = *(a2 + 72);
  *(a2 + 72) = v13;
  v14 = *(v12 + 56);
  v28 = *(a2 + 40);
  if (v12 == v10)
  {
    JreStrongAssign((a2 + 40), v12);
    JreStrongAssign((v12 + 56), a2);
  }

  else
  {
    v15 = *(v12 + 40);
    if (JreStrongAssign((a2 + 40), v15))
    {
      if (!v15)
      {
        JreThrowNullPointerException();
      }

      v16 = v15 + 6;
      if (v12 != v15[6])
      {
        v16 = v15 + 7;
      }

      JreStrongAssign(v16, a2);
    }

    if (JreStrongAssign((v12 + 56), v10))
    {
      JreStrongAssign(v10 + 5, v12);
    }
  }

  JreStrongAssign((a2 + 48), 0);
  if (JreStrongAssign((a2 + 56), v14))
  {
    if (!v14)
    {
      goto LABEL_67;
    }

    JreStrongAssign(v14 + 5, a2);
  }

  if (JreStrongAssign((v12 + 48), v9))
  {
    JreStrongAssign(v9 + 5, v12);
  }

  if (JreStrongAssign((v12 + 40), v28))
  {
    if (v28)
    {
      v20 = v28 + 6;
      if (v28[6] != a2)
      {
        v20 = v28 + 7;
      }

      JreStrongAssign(v20, v12);
      goto LABEL_46;
    }

LABEL_67:
    JreThrowNullPointerException();
  }

  v7 = v12;
LABEL_46:
  if (v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = a2;
  }

LABEL_49:
  if (v19 == a2)
  {
    v22 = v7;
  }

  else
  {
    v21 = JreStrongAssign(v19 + 5, *(a2 + 40));
    v22 = v19;
    if (v21)
    {
      v23 = (v21 + 48);
      if (*(v21 + 6) != a2)
      {
        v23 = (v21 + 56);
      }

      JreStrongAssign(v23, v19);
      v22 = v7;
    }

    v24 = JreStrongAssign((a2 + 40), 0);
    v25 = JreStrongAssign((a2 + 56), v24);
    JreStrongAssign((a2 + 48), v25);
  }

  if ((*(a2 + 72) & 1) == 0)
  {
    v22 = JavaUtilConcurrentConcurrentHashMap_TreeBin_balanceDeletionWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(v22, v19);
  }

  JreStrongAssign((a1 + 40), v22);
  if (v19 == a2)
  {
    v26 = *(a2 + 40);
    if (v26)
    {
      v27 = (v26 + 48);
      if (*(v26 + 48) == a2 || (v27 = (v26 + 56), *(v26 + 56) == a2))
      {
        JreStrongAssign(v27, 0);
      }

      JreStrongAssign((a2 + 40), 0);
    }
  }

  result = 0;
  atomic_store(0, (a1 + 64));
  return result;
}

void sub_1001B4978(void *a1)
{
  objc_begin_catch(a1);
  atomic_store(0, (v1 + 64));
  objc_exception_rethrow();
}

void **JavaUtilConcurrentConcurrentHashMap_TreeBin_rotateLeftWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(void **a1, void **a2)
{
  if (atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap_TreeBin__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      return a1;
    }
  }

  else
  {
    sub_1001B73D8();
    if (!a2)
    {
      return a1;
    }
  }

  v4 = a2[7];
  if (v4)
  {
    v5 = JreStrongAssign(a2 + 7, v4[6]);
    if (v5)
    {
      JreStrongAssign(v5 + 5, a2);
    }

    v6 = JreStrongAssign(v4 + 5, a2[5]);
    if (v6)
    {
      v7 = 6;
      if (v6[6] != a2)
      {
        v7 = 7;
      }

      JreStrongAssign(&v6[v7], v4);
    }

    else
    {
      *(v4 + 72) = 0;
      a1 = v4;
    }

    JreStrongAssign(v4 + 6, a2);
    JreStrongAssign(a2 + 5, v4);
  }

  return a1;
}

void **JavaUtilConcurrentConcurrentHashMap_TreeBin_rotateRightWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(void **a1, void **a2)
{
  if (atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap_TreeBin__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      return a1;
    }
  }

  else
  {
    sub_1001B73D8();
    if (!a2)
    {
      return a1;
    }
  }

  v4 = a2[6];
  if (v4)
  {
    v5 = JreStrongAssign(a2 + 6, v4[7]);
    if (v5)
    {
      JreStrongAssign(v5 + 5, a2);
    }

    v6 = JreStrongAssign(v4 + 5, a2[5]);
    if (v6)
    {
      v7 = 7;
      if (v6[7] != a2)
      {
        v7 = 6;
      }

      JreStrongAssign(&v6[v7], v4);
    }

    else
    {
      *(v4 + 72) = 0;
      a1 = v4;
    }

    JreStrongAssign(v4 + 7, a2);
    JreStrongAssign(a2 + 5, v4);
  }

  return a1;
}

void **JavaUtilConcurrentConcurrentHashMap_TreeBin_balanceInsertionWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(void **a1, uint64_t a2)
{
  v2 = a2;
  if (atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap_TreeBin__initialized, memory_order_acquire))
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_30:
    JreThrowNullPointerException();
  }

  sub_1001B73D8();
  if (!v2)
  {
    goto LABEL_30;
  }

LABEL_3:
  *(v2 + 72) = 1;
  for (i = *(v2 + 40); i; i = *(i + 40))
  {
    if (*(i + 72) != 1)
    {
      return a1;
    }

    v5 = *(i + 40);
    if (!v5)
    {
      return a1;
    }

    v6 = *(v5 + 48);
    if (i == v6)
    {
      v6 = *(v5 + 56);
      if (!v6 || *(v6 + 72) != 1)
      {
        if (v2 == *(i + 56))
        {
          a1 = JavaUtilConcurrentConcurrentHashMap_TreeBin_rotateLeftWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(a1, i);
          v9 = *(i + 40);
          if (!v9)
          {
            goto LABEL_19;
          }

          v5 = *(v9 + 40);
          *(v9 + 72) = 0;
          if (!v5)
          {
            goto LABEL_19;
          }
        }

        else
        {
          *(i + 72) = 0;
          i = v2;
        }

        *(v5 + 72) = 1;
        v7 = JavaUtilConcurrentConcurrentHashMap_TreeBin_rotateRightWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(a1, v5);
LABEL_18:
        a1 = v7;
        goto LABEL_19;
      }
    }

    else if (!v6 || *(v6 + 72) != 1)
    {
      if (v2 == *(i + 48))
      {
        a1 = JavaUtilConcurrentConcurrentHashMap_TreeBin_rotateRightWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(a1, i);
        v8 = *(i + 40);
        if (!v8)
        {
          goto LABEL_19;
        }

        v5 = *(v8 + 40);
        *(v8 + 72) = 0;
        if (!v5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(i + 72) = 0;
        i = v2;
      }

      *(v5 + 72) = 1;
      v7 = JavaUtilConcurrentConcurrentHashMap_TreeBin_rotateLeftWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(a1, v5);
      goto LABEL_18;
    }

    *(v6 + 72) = 0;
    *(i + 72) = 0;
    *(v5 + 72) = 1;
    i = v5;
LABEL_19:
    v2 = i;
  }

  *(v2 + 72) = 0;
  return v2;
}

void **JavaUtilConcurrentConcurrentHashMap_TreeBin_balanceDeletionWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(void **a1, uint64_t a2)
{
  v2 = a2;
  if (atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap_TreeBin__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      return a1;
    }
  }

  else
  {
    sub_1001B73D8();
    if (!v2)
    {
      return a1;
    }
  }

  if (v2 == a1)
  {
    return a1;
  }

  while (1)
  {
    v4 = *(v2 + 40);
    if (!v4)
    {
      *(v2 + 72) = 0;
      return v2;
    }

    if (*(v2 + 72) == 1)
    {
      *(v2 + 72) = 0;
      return a1;
    }

    v5 = *(v4 + 48);
    if (v5 == v2)
    {
      break;
    }

    if (!v5)
    {
      goto LABEL_26;
    }

    if (*(v5 + 72) == 1)
    {
      *(v5 + 72) = 0;
      *(v4 + 72) = 1;
      a1 = JavaUtilConcurrentConcurrentHashMap_TreeBin_rotateRightWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(a1, v4);
      v4 = *(v2 + 40);
      if (!v4)
      {
        return a1;
      }

      v5 = *(v4 + 48);
      if (!v5)
      {
        goto LABEL_26;
      }
    }

    v6 = *(v5 + 48);
    v7 = *(v5 + 56);
    if (v6 && (*(v6 + 72) & 1) != 0)
    {
      goto LABEL_35;
    }

    if (v7 && (*(v7 + 72) & 1) != 0)
    {
      if (v6 && (*(v6 + 72) & 1) != 0)
      {
        goto LABEL_35;
      }

      *(v7 + 72) = 0;
      *(v5 + 72) = 1;
      a1 = JavaUtilConcurrentConcurrentHashMap_TreeBin_rotateLeftWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(a1, v5);
      v4 = *(v2 + 40);
      if (!v4)
      {
        return a1;
      }

      v5 = *(v4 + 48);
      if (v5)
      {
LABEL_35:
        *(v5 + 72) = *(v4 + 72);
        v13 = *(v5 + 48);
        if (v13)
        {
          *(v13 + 72) = 0;
        }
      }

      *(v4 + 72) = 0;

      return JavaUtilConcurrentConcurrentHashMap_TreeBin_rotateRightWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(a1, v4);
    }

    v8 = (v5 + 72);
LABEL_25:
    *v8 = 1;
LABEL_26:
    v2 = v4;
    if (v4 == a1)
    {
      return a1;
    }
  }

  v9 = *(v4 + 56);
  if (!v9)
  {
    goto LABEL_26;
  }

  if (*(v9 + 72) == 1)
  {
    *(v9 + 72) = 0;
    *(v4 + 72) = 1;
    a1 = JavaUtilConcurrentConcurrentHashMap_TreeBin_rotateLeftWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(a1, v4);
    v4 = *(v2 + 40);
    if (!v4)
    {
      return a1;
    }

    v9 = *(v4 + 56);
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  v10 = *(v9 + 48);
  v11 = *(v9 + 56);
  if (v11 && (*(v11 + 72) & 1) != 0)
  {
    goto LABEL_44;
  }

  if (!v10 || (*(v10 + 72) & 1) == 0)
  {
    v8 = (v9 + 72);
    goto LABEL_25;
  }

  if (v11 && (*(v11 + 72) & 1) != 0)
  {
    goto LABEL_44;
  }

  *(v10 + 72) = 0;
  *(v9 + 72) = 1;
  a1 = JavaUtilConcurrentConcurrentHashMap_TreeBin_rotateRightWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(a1, v9);
  v4 = *(v2 + 40);
  if (!v4)
  {
    return a1;
  }

  v9 = *(v4 + 56);
  if (v9)
  {
LABEL_44:
    *(v9 + 72) = *(v4 + 72);
    v14 = *(v9 + 56);
    if (v14)
    {
      *(v14 + 72) = 0;
    }
  }

  *(v4 + 72) = 0;

  return JavaUtilConcurrentConcurrentHashMap_TreeBin_rotateLeftWithJavaUtilConcurrentConcurrentHashMap_TreeNode_withJavaUtilConcurrentConcurrentHashMap_TreeNode_(a1, v4);
}

uint64_t JavaUtilConcurrentConcurrentHashMap_TreeBin_checkInvariantsWithJavaUtilConcurrentConcurrentHashMap_TreeNode_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap_TreeBin__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B73D8();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_31:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_31;
  }

LABEL_3:
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  objc_opt_class();
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (v5 && *(v5 + 32) != a1 || v6 && *(v6 + 64) != a1 || v2 && *(v2 + 48) != a1 && *(v2 + 56) != a1 || v3 && (*(v3 + 40) != a1 || *(v3 + 8) > *(a1 + 8)) || v4 && (*(v4 + 40) != a1 || *(v4 + 8) < *(a1 + 8)))
  {
    return 0;
  }

  if (v3 && (*(a1 + 72) & 1) != 0)
  {
    if (v4 && (*(v3 + 72) & 1) != 0 && (*(v4 + 72) & 1) != 0)
    {
      return 0;
    }

LABEL_26:
    result = JavaUtilConcurrentConcurrentHashMap_TreeBin_checkInvariantsWithJavaUtilConcurrentConcurrentHashMap_TreeNode_(v3);
    if (!result)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v3)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (!v4)
  {
    return 1;
  }

  result = JavaUtilConcurrentConcurrentHashMap_TreeBin_checkInvariantsWithJavaUtilConcurrentConcurrentHashMap_TreeNode_(v4);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t JavaUtilConcurrentConcurrentHashMap_TreeBin_class_()
{
  if ((atomic_load_explicit(JavaUtilConcurrentConcurrentHashMap_TreeBin__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001B73D8();
  }

  if (qword_100554D48 != -1)
  {
    sub_1001B73E4();
  }

  return qword_100554D40;
}

id sub_1001B552C(uint64_t a1, void *a2, int a3, int a4)
{
  v10 = *(a1 + 32);
  v8 = (a1 + 32);
  v9 = v10;
  if (v10)
  {
    JreStrongAssign(v8, v9->next_);
  }

  else
  {
    v9 = [JavaUtilConcurrentConcurrentHashMap_TableStack alloc];
    if (!v9)
    {
      JreThrowNullPointerException();
    }
  }

  JreStrongAssign(&v9->tab_, a2);
  v9->length_ = a4;
  v9->index_ = a3;
  JreStrongAssign(&v9->next_, *(a1 + 24));

  return JreStrongAssign((a1 + 24), v9);
}

char *sub_1001B55D4(char *result, int a2)
{
  v2 = result;
  v3 = (result + 24);
  v4 = *(result + 3);
  if (v4)
  {
    while (1)
    {
      v5 = *(v4 + 8);
      v6 = *(v2 + 10) + v5;
      *(v2 + 10) = v6;
      if (v6 < a2)
      {
        break;
      }

      *(v2 + 10) = *(v4 + 12);
      JreStrongAssign(v2 + 1, *(v4 + 16));
      JreStrongAssign((v4 + 16), 0);
      v7 = *(v4 + 24);
      JreStrongAssign((v4 + 24), *(v2 + 4));
      JreStrongAssign(v3, v7);
      result = JreStrongAssign(v2 + 4, v4);
      v4 = *(v2 + 3);
      a2 = v5;
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v5 = a2;
LABEL_6:
    v8 = *(v2 + 10) + *(v2 + 13);
    *(v2 + 10) = v8;
    if (v8 >= v5)
    {
      v9 = *(v2 + 11) + 1;
      *(v2 + 10) = v9;
      *(v2 + 11) = v9;
    }
  }

  return result;
}

id JavaUtilConcurrentConcurrentHashMap_BaseIterator_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_withJavaUtilConcurrentConcurrentHashMap_(uint64_t a1, void *a2, int a3, int a4, int a5, void *a6)
{
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 40) = a4;
  *(a1 + 44) = a4;
  *(a1 + 48) = a5;
  *(a1 + 52) = a3;
  JreStrongAssign((a1 + 16), 0);
  JreStrongAssign((a1 + 56), a6);

  return [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(a1);
}

JavaUtilConcurrentConcurrentHashMap_MapEntry *new_JavaUtilConcurrentConcurrentHashMap_MapEntry_initWithId_withId_withJavaUtilConcurrentConcurrentHashMap_(void *a1, void *a2, void *a3)
{
  v6 = [JavaUtilConcurrentConcurrentHashMap_MapEntry alloc];
  JreStrongAssign(&v6->key_, a1);
  JreStrongAssign(&v6->val_, a2);
  JreStrongAssign(&v6->map_, a3);
  return v6;
}

uint64_t sub_1001B6428(void *a1, void *a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = *v10;
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(a2);
      }

      if (!*(*(&v9 + 1) + 8 * i))
      {
        return 0;
      }

      result = [a1 containsWithId:v9];
      if (!result)
      {
        return result;
      }
    }

    v5 = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    result = 1;
    if (v5)
    {
      continue;
    }

    break;
  }

  return result;
}

id JavaUtilPriorityQueue_initWithInt_withJavaUtilComparator_(uint64_t a1, int a2, void *a3)
{
  JavaUtilAbstractQueue_init();
  if (a2 <= 0)
  {
    v15 = JreStrcat("$I", v6, v7, v8, v9, v10, v11, v12, @"initialCapacity < 1: ");
    v16 = new_JavaLangIllegalArgumentException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  v13 = sub_1001B7E48(a2);
  JreStrongAssign((a1 + 24), v13);

  return JreStrongAssign((a1 + 16), a3);
}

id JavaUtilPriorityQueue_initWithJavaUtilCollection_(void *a1, id *a2)
{
  JavaUtilAbstractQueue_init();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a2 || (objc_opt_isKindOfClass() & 1) != 0)
    {

      return sub_1001B7FA0(a1, a2);
    }

LABEL_16:
    JreThrowClassCastException();
  }

  if ([JavaUtilSortedSet_class_() isInstance:a2])
  {
    v5 = JavaUtilSortedSet_class_();
    if (a2 && ([v5 isInstance:a2] & 1) == 0)
    {
      goto LABEL_16;
    }

    return sub_1001B805C(a1, a2);
  }

  else
  {
    sub_1001B8420(a1, a2);

    return [a1 addAllWithJavaUtilCollection:a2];
  }
}

id *sub_1001B7868(id *result, int a2)
{
  v2 = result[3];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  if (v2[2] < a2)
  {
    v3 = result;
    v4 = sub_1001B7E48(2 * a2);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v3[3], 0, v4, 0, *(v3[3] + 2));

    return JreStrongAssign(v3 + 3, v4);
  }

  return result;
}

void *sub_1001B7914(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = a2;
  v5 = a2;
  v6 = *(v2 + 8);
  if ((a2 & 0x80000000) != 0 || v6 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, a2);
  }

  v7 = *(v2 + 24 + 8 * a2);
  if (a2 >= 1)
  {
    while (1)
    {
      v8 = v3 - 1;
      LODWORD(v5) = (v3 - 1) >> 1;
      v9 = *(a1 + 24);
      v10 = *(v9 + 8);
      if (v5 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8 >> 1);
      }

      v11 = *(v9 + 24 + 8 * v5);
      if (sub_1001B8148(a1, v11, v7) < 1)
      {
        break;
      }

      IOSObjectArray_Set(*(a1 + 24), v3, v11);
      v3 = v8 >> 1;
      if (v8 <= 1)
      {
        goto LABEL_11;
      }
    }

    LODWORD(v5) = v3;
LABEL_11:
    v5 = v5;
  }

  v12 = *(a1 + 24);

  return IOSObjectArray_Set(v12, v5, v7);
}

uint64_t sub_1001B7AD8(uint64_t a1, uint64_t a2)
{
  --*(a1 + 8);
  v2 = *(a1 + 24);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a1 + 8);
  if (v5 < 0 || (v6 = *(a1 + 24), v5 >= *(v2 + 8)))
  {
    IOSArray_throwOutOfBoundsWithMsg(*(v2 + 8), v5);
  }

  v7 = *(v2 + 24 + 8 * v5);
  IOSObjectArray_Set(v6, a2, v7);
  sub_1001B81E4(a1, a2);
  IOSObjectArray_Set(*(a1 + 24), *(a1 + 8), 0);
  v8 = *(a1 + 24);
  result = *(v8 + 8);
  if ((a2 & 0x80000000) != 0 || result <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, a2);
  }

  if (v7 == *(v8 + 24 + 8 * a2))
  {

    return sub_1001B7914(a1, a2);
  }

  return result;
}

IOSObjectArray *sub_1001B7E48(int a1)
{
  v1 = [IOSObjectArray arrayWithLength:a1 type:NSObject_class_()];
  objc_opt_class();
  if (v1 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v1;
}

id sub_1001B7FA0(uint64_t a1, id *a2)
{
  sub_1001B8420(a1, a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 comparator];
  v5 = JavaUtilComparator_class_();
  if (v4 && ([v5 isInstance:v4] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign((a1 + 16), v4);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a2[3], 0, *(a1 + 24), 0, [a2 size]);
  result = [a2 size];
  *(a1 + 8) = result;
  return result;
}

id sub_1001B805C(uint64_t a1, void *a2)
{
  sub_1001B8420(a1, a2);
  if (!a2)
  {
    goto LABEL_9;
  }

  v4 = [a2 comparator];
  v5 = JavaUtilComparator_class_();
  if (v4)
  {
    if (([v5 isInstance:v4] & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  JreStrongAssign((a1 + 16), v4);
  v6 = [a2 iterator];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  result = [v6 hasNext];
  if (result)
  {
    while (1)
    {
      v9 = *(a1 + 24);
      if (!v9)
      {
        break;
      }

      v10 = *(a1 + 8);
      *(a1 + 8) = v10 + 1;
      IOSObjectArray_Set(v9, v10, [v7 next]);
      result = [v7 hasNext];
      if ((result & 1) == 0)
      {
        return result;
      }
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  return result;
}

id sub_1001B8148(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {

    return [v5 compareWithId:a2 withId:a3];
  }

  else
  {
    v7 = JavaLangComparable_class_();
    if (!a2)
    {
      JreThrowNullPointerException();
    }

    if (([v7 isInstance:a2] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    return [a2 compareToWithId:a3];
  }
}

void *sub_1001B81E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = a2;
  v5 = a2;
  v6 = *(v2 + 8);
  if ((a2 & 0x80000000) != 0 || v6 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, a2);
  }

  v21 = *(v2 + 24 + 8 * a2);
  v7 = (2 * a2) | 1u;
  v8 = *(a1 + 8);
  if (v7 < v8)
  {
    v9 = 2 * a2;
    while (1)
    {
      v10 = v9 + 2;
      if (v9 + 2 >= v8)
      {
        v14 = v7;
      }

      else
      {
        v11 = *(a1 + 24);
        v12 = *(v11 + 8);
        if (v10 < 0 || v10 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, (v9 + 2));
        }

        v13 = *(v11 + 24 + 8 * v10);
        if (v9 < 0 || v7 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v7);
        }

        v14 = sub_1001B8148(a1, v13, *(*(a1 + 24) + 24 + 8 * v7)) >= 0 ? v7 : v10;
      }

      v15 = *(a1 + 24);
      v16 = *(v15 + 8);
      if ((v14 & 0x80000000) != 0 || v14 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v14);
      }

      v5 = v14;
      if (sub_1001B8148(a1, v21, *(v15 + 24 + 8 * v14)) <= 0)
      {
        break;
      }

      v17 = *(a1 + 24);
      v18 = *(v17 + 8);
      if ((v14 & 0x80000000) != 0 || v14 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v14);
      }

      IOSObjectArray_Set(*(a1 + 24), v3, *(v17 + 24 + 8 * v14));
      v9 = 2 * v14;
      v7 = (2 * v14) | 1u;
      v8 = *(a1 + 8);
      v3 = v14;
      if (v7 >= v8)
      {
        goto LABEL_27;
      }
    }

    v5 = v3;
  }

LABEL_27:
  v19 = *(a1 + 24);

  return IOSObjectArray_Set(v19, v5, v21);
}

id sub_1001B8420(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v9 = new_JavaLangNullPointerException_initWithNSString_(@"c == null");
    objc_exception_throw(v9);
  }

  if ([a2 isEmpty])
  {
    v4 = 1;
  }

  else
  {
    v5 = JavaLangMath_ceilWithDouble_([a2 size] * 1.1);
    if (v5 < 0.0)
    {
      v6 = 0x80000000;
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }

    if (v5 == 0x80000000)
    {
      v4 = v6;
    }

    else
    {
      v4 = v5;
    }
  }

  v7 = sub_1001B7E48(v4);

  return JreStrongAssign((a1 + 24), v7);
}

JavaUtilPriorityQueue *new_JavaUtilPriorityQueue_init()
{
  v0 = [JavaUtilPriorityQueue alloc];
  JavaUtilPriorityQueue_initWithInt_withJavaUtilComparator_(v0, 11, 0);
  return v0;
}

id JavaIoFilterInputStream_initWithJavaIoInputStream_(uint64_t a1, void *a2)
{
  JavaIoInputStream_init();

  return JreVolatileStrongAssign((a1 + 8), a2);
}

id JavaIoRandomAccessFile_initWithJavaIoFile_withNSString_(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 16) = 0;
  v6 = DalvikSystemCloseGuard_get();
  JreStrongAssign((a1 + 40), v6);
  JreStrongAssignAndConsume((a1 + 48), [IOSByteArray newArrayWithLength:8]);
  if (!a3)
  {
    goto LABEL_20;
  }

  if ([a3 isEqual:@"r"])
  {
    v7 = 0;
  }

  else
  {
    if (([a3 isEqual:@"rw"] & 1) == 0 && (objc_msgSend(a3, "isEqual:", @"rws") & 1) == 0 && !objc_msgSend(a3, "isEqual:", @"rwd"))
    {
      v18 = JreStrcat("$$", v8, v9, v10, v11, v12, v13, v14, @"Invalid mode: ");
      v19 = new_JavaLangIllegalArgumentException_initWithNSString_(v18);
      objc_exception_throw(v19);
    }

    if ([a3 isEqual:@"rws"])
    {
      *(a1 + 16) = 1;
      v7 = 514;
    }

    else
    {
      v7 = [a3 isEqual:@"rwd"] ? 642 : 514;
    }
  }

  *(a1 + 32) = v7;
  if (!a2)
  {
    goto LABEL_20;
  }

  v15 = LibcoreIoIoBridge_openWithNSString_withInt_([a2 getAbsolutePath], v7);
  JreStrongAssign((a1 + 8), v15);
  if (*(a1 + 16) == 1)
  {
    v16 = *(a1 + 8);
    if (!v16)
    {
      JreThrowNullPointerException();
    }

    [v16 sync];
  }

  v17 = *(a1 + 40);
  if (!v17)
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  return [v17 openWithNSString:@"close"];
}

uint64_t sub_1001B92D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = a4;
  v5 = a3;
  result = JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a2 + 8), a3, a4);
  if (v4 >= 1)
  {
    do
    {
      result = [a1 readWithByteArray:a2 withInt:v5 withInt:v4];
      if ((result & 0x80000000) != 0)
      {
        v10 = new_JavaIoEOFException_init();
        objc_exception_throw(v10);
      }

      v5 = (result + v5);
      v9 = __OFSUB__(v4, result);
      v4 = (v4 - result);
    }

    while (!((v4 < 0) ^ v9 | (v4 == 0)));
  }

  return result;
}

id sub_1001B99E8(void *a1, __int16 a2)
{
  v4 = a1[6];
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  LibcoreIoMemory_pokeShortWithByteArray_withInt_withShort_withJavaNioByteOrder_(v4, 0, a2, JavaNioByteOrder_BIG_ENDIAN__);
  v5 = a1[6];

  return [a1 writeWithByteArray:v5 withInt:0 withInt:2];
}

id sub_1001B9AFC(void *a1, unint64_t a2)
{
  v4 = a1[6];
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  LibcoreIoMemory_pokeLongWithByteArray_withInt_withLong_withJavaNioByteOrder_(v4, 0, a2, JavaNioByteOrder_BIG_ENDIAN__);
  v5 = a1[6];

  return [a1 writeWithByteArray:v5 withInt:0 withInt:8];
}

id sub_1001B9BBC(void *a1, unsigned int a2)
{
  v4 = a1[6];
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  LibcoreIoMemory_pokeIntWithByteArray_withInt_withInt_withJavaNioByteOrder_(v4, 0, a2, JavaNioByteOrder_BIG_ENDIAN__);
  v5 = a1[6];

  return [a1 writeWithByteArray:v5 withInt:0 withInt:4];
}

JavaIoRandomAccessFile *new_JavaIoRandomAccessFile_initWithJavaIoFile_withNSString_(void *a1, void *a2)
{
  v4 = [JavaIoRandomAccessFile alloc];
  JavaIoRandomAccessFile_initWithJavaIoFile_withNSString_(v4, a1, a2);
  return v4;
}

id JavaUtilArrayList_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  JavaUtilAbstractList_init(a1, a2);
  if ((v2 & 0x80000000) != 0)
  {
    v13 = JreStrcat("$I", v4, v5, v6, v7, v8, v9, v10, @"capacity < 0: ");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  if (v2)
  {
    v11 = [IOSObjectArray arrayWithLength:v2 type:NSObject_class_()];
  }

  else
  {
    if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001BBB54();
    }

    v11 = LibcoreUtilEmptyArray_OBJECT_;
  }

  return JreStrongAssign((a1 + 16), v11);
}

id JavaUtilArrayList_init(uint64_t a1, uint64_t a2)
{
  JavaUtilAbstractList_init(a1, a2);
  if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BBB54();
  }

  v3 = LibcoreUtilEmptyArray_OBJECT_;

  return JreStrongAssign((a1 + 16), v3);
}

id JavaUtilArrayList_initWithJavaUtilCollection_(uint64_t a1, void *a2)
{
  JavaUtilAbstractList_init(a1, a2);
  if (!a2)
  {
    v10 = new_JavaLangNullPointerException_initWithNSString_(@"collection == null");
    objc_exception_throw(v10);
  }

  v4 = [a2 toArray];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = [v4 getClass];
  v7 = NSObject_class_();
  if (v6 != IOSClass_arrayType(v7, 1u))
  {
    v8 = [IOSObjectArray arrayWithLength:v5[2] type:NSObject_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v5, 0, v8, 0, v5[2]);
    v5 = v8;
  }

  result = JreStrongAssign((a1 + 16), v5);
  *(a1 + 12) = v5[2];
  return result;
}

void JavaUtilArrayList_throwIndexOutOfBoundsExceptionWithInt_withInt_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = JreStrcat("$I$I", a2, a3, a4, a5, a6, a7, a8, @"Invalid index ");
  v9 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v8);
  objc_exception_throw(v9);
}

JavaUtilArrayList *new_JavaUtilArrayList_initWithInt_(uint64_t a1)
{
  v2 = [JavaUtilArrayList alloc];
  JavaUtilArrayList_initWithInt_(v2, a1);
  return v2;
}

JavaUtilArrayList *new_JavaUtilArrayList_init()
{
  v0 = [JavaUtilArrayList alloc];
  JavaUtilArrayList_init(v0, v1);
  return v0;
}

JavaUtilArrayList *new_JavaUtilArrayList_initWithJavaUtilCollection_(void *a1)
{
  v2 = [JavaUtilArrayList alloc];
  JavaUtilArrayList_initWithJavaUtilCollection_(v2, a1);
  return v2;
}

uint64_t JavaUtilArrayList_class_()
{
  if (qword_100554D68 != -1)
  {
    sub_1001BBB60();
  }

  return qword_100554D60;
}

void sub_1001BBF70(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  *outCount = 0;
  v8 = class_copyMethodList(*(a1 + 8), &outCount[1]);
  sub_1001BC624(v8, outCount[1], a2, a3, 0, a4);
  Class = object_getClass(*(a1 + 8));
  v10 = class_copyMethodList(Class, outCount);
  sub_1001BC624(v10, outCount[0], a2, a3, 1, a4);
  free(v8);
  free(v10);
}

JavaLangReflectMethod *sub_1001BC028(uint64_t a1, uint64_t a2, SEL aSelector, uint64_t a4)
{
  v8 = NSStringFromSelector(aSelector);
  if ([(NSString *)v8 isEqualToString:@"init"])
  {
    return 0;
  }

  if ([(NSString *)v8 hasPrefix:@"initWith"])
  {
    return 0;
  }

  v9 = [*(a1 + 32) findMethodMetadata:v8];
  if (*(a1 + 32))
  {
    if (!v9)
    {
      return 0;
    }
  }

  v11 = *(a1 + 40);

  return [JavaLangReflectMethod methodWithMethodSignature:a2 selector:aSelector class:v11 isStatic:a4 metadata:v9];
}

IOSObjectArray *getConstructorsImpl(void *a1, int a2)
{
  v4 = [a1 getMetadata];
  v5 = +[NSMutableDictionary dictionary];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BC1C0;
  v7[3] = &unk_10041B0C8;
  v7[4] = v4;
  v7[5] = a1;
  sub_1001BBF70(a1, v5, a2, v7);
  return +[IOSObjectArray arrayWithNSArray:type:](IOSObjectArray, "arrayWithNSArray:type:", [v5 allValues], JavaLangReflectConstructor_class_());
}

id sub_1001BC1C0(uint64_t a1, uint64_t a2, SEL aSelector)
{
  v6 = NSStringFromSelector(aSelector);
  if (![(NSString *)v6 isEqualToString:@"init"]&& ![(NSString *)v6 hasPrefix:@"initWith"])
  {
    return 0;
  }

  v7 = [*(a1 + 32) findMethodMetadata:NSStringFromSelector(aSelector)];
  if (*(a1 + 32))
  {
    if (!v7)
    {
      return 0;
    }
  }

  v9 = *(a1 + 40);

  return [JavaLangReflectConstructor constructorWithMethodSignature:a2 selector:aSelector class:v9 metadata:v7];
}

id sub_1001BC3F8(objc_class **a1, void *a2)
{
  InstanceMethod = JreFindInstanceMethod(a1[1], [a2 UTF8String]);
  if (!InstanceMethod || (v5 = InstanceMethod, Description = method_getDescription(InstanceMethod), (v7 = JreSignatureOrNull(Description)) == 0))
  {
    objc_exception_throw(objc_alloc_init(JavaLangNoSuchMethodException));
  }

  v8 = v7;
  v9 = [a1 getMetadata];
  Name = method_getName(v5);
  v11 = [v9 findMethodMetadata:a2];

  return [JavaLangReflectConstructor constructorWithMethodSignature:v8 selector:Name class:a1 metadata:v11];
}

NSMethodSignature *sub_1001BC624(NSMethodSignature *result, unsigned int a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = result;
    v10 = 0;
    v11 = a2;
    do
    {
      isa = v9[v10].super.isa;
      Name = method_getName(isa);
      v14 = NSStringFromSelector(Name);
      result = [a3 objectForKey:v14];
      if (!result)
      {
        Description = method_getDescription(isa);
        result = JreSignatureOrNull(Description);
        if (result)
        {
          result = (*(a6 + 16))(a6, result, Name, a5);
          if (result)
          {
            v16 = result;
            if (!a4 || (result = [(NSMethodSignature *)result getModifiers], (result & 1) != 0))
            {
              result = validTypeEncoding([objc_msgSend(v16 "signature")]);
              if (result)
              {
                v17 = [objc_msgSend(v16 "signature")];
                if (v17 < 3)
                {
LABEL_15:
                  result = [a3 setObject:v16 forKey:v14];
                }

                else
                {
                  v18 = v17;
                  v19 = 2;
                  while (1)
                  {
                    result = validTypeEncoding([objc_msgSend(v16 "signature")]);
                    if ((result & 1) == 0)
                    {
                      break;
                    }

                    if (v18 == ++v19)
                    {
                      goto LABEL_15;
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v10;
    }

    while (v10 != v11);
  }

  return result;
}

JavaNioMemoryBlock_MemoryMappedBlock *JavaNioMemoryBlock_mmapWithJavaIoFileDescriptor_withLong_withLong_withJavaNioChannelsFileChannel_MapMode_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    if (a3 > 0x7FFFFFFF || a2 > 0x7FFFFFFF || (a3 | a2) < 0)
    {
      v18 = JreStrcat("$J$J", a2, a3, a4, a5, a6, a7, a8, @"offset=");
      v19 = new_JavaLangIllegalArgumentException_initWithNSString_(v18);
      objc_exception_throw(v19);
    }

    if ((atomic_load_explicit(JavaNioChannelsFileChannel_MapMode__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001BCFFC();
    }

    if (JavaNioChannelsFileChannel_MapMode_PRIVATE_ == a4)
    {
      v12 = 3;
      v13 = 2;
    }

    else
    {
      if ((atomic_load_explicit(JavaNioChannelsFileChannel_MapMode__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1001BCFFC();
      }

      if (JavaNioChannelsFileChannel_MapMode_READ_ONLY_ == a4)
      {
        v12 = 1;
      }

      else
      {
        v12 = 3;
      }

      v13 = 1;
    }

    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    v16 = [LibcoreIoLibcore_os_ mmapWithLong:0 withLong:a3 withInt:v12 withInt:v13 withJavaIoFileDescriptor:a1 withLong:a2];
    v17 = [JavaNioMemoryBlock_MemoryMappedBlock alloc];
    v17->super.address_ = v16;
    v17->super.size_ = a3;
    return v17;
  }

  else
  {
    v14 = [JavaNioMemoryBlock alloc];
    v14->address_ = 0;
    v14->size_ = 0;

    return v14;
  }
}

JavaNioMemoryBlock_NonMovableHeapBlock *JavaNioMemoryBlock_allocateWithInt_(int a1)
{
  v1 = a1;
  v2 = [IOSByteArray arrayWithLength:a1];
  v3 = [[JavaNioMemoryBlock_NonMovableHeapBlock alloc] initWithByteArray:v2 withLong:&v2->super.size_ + 1 withLong:v1];

  return v3;
}

JavaNioMemoryBlock_UnmanagedBlock *JavaNioMemoryBlock_wrapFromJniWithLong_withLong_(int64_t a1, int64_t a2)
{
  v4 = [JavaNioMemoryBlock_UnmanagedBlock alloc];
  v4->super.address_ = a1;
  v4->super.size_ = a2;

  return v4;
}

JavaNioCharsetCoderResult *JavaNioCharsetCoderResult_malformedForLengthWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100188000();
  }

  v2 = JavaNioCharsetCoderResult_class_();
  objc_sync_enter(v2);
  if (a1 < 1)
  {
    v15 = JreStrcat("$I", v3, v4, v5, v6, v7, v8, v9, @"length <= 0: ");
    v16 = new_JavaLangIllegalArgumentException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  v10 = JavaLangInteger_valueOfWithInt_(a1);
  v11 = qword_100554D70;
  objc_sync_enter(qword_100554D70);
  if (!qword_100554D70)
  {
    JreThrowNullPointerException();
  }

  v12 = [qword_100554D70 getWithId:v10];
  if (!v12)
  {
    v13 = [JavaNioCharsetCoderResult alloc];
    v13->type_ = 3;
    v13->length_ = a1;
    v12 = v13;
    [qword_100554D70 putWithId:v10 withId:v12];
  }

  objc_sync_exit(v11);
  objc_sync_exit(v2);
  return v12;
}

JavaNioCharsetCoderResult *JavaNioCharsetCoderResult_unmappableForLengthWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100188000();
  }

  v2 = JavaNioCharsetCoderResult_class_();
  objc_sync_enter(v2);
  if (a1 < 1)
  {
    v15 = JreStrcat("$I", v3, v4, v5, v6, v7, v8, v9, @"length <= 0: ");
    v16 = new_JavaLangIllegalArgumentException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  v10 = JavaLangInteger_valueOfWithInt_(a1);
  v11 = qword_100554D78;
  objc_sync_enter(qword_100554D78);
  if (!qword_100554D78)
  {
    JreThrowNullPointerException();
  }

  v12 = [qword_100554D78 getWithId:v10];
  if (!v12)
  {
    v13 = [JavaNioCharsetCoderResult alloc];
    v13->type_ = 4;
    v13->length_ = a1;
    v12 = v13;
    [qword_100554D78 putWithId:v10 withId:v12];
  }

  objc_sync_exit(v11);
  objc_sync_exit(v2);
  return v12;
}

uint64_t JavaNioCharsetCoderResult_class_()
{
  if ((atomic_load_explicit(JavaNioCharsetCoderResult__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100188000();
  }

  if (qword_100554D88 != -1)
  {
    sub_1001BD598();
  }

  return qword_100554D80;
}

id JavaNioCharsetCharset_initWithNSString_withNSStringArray_(uint64_t a1, __CFString *a2, uint64_t a3)
{
  sub_1001BD684(a2);
  JreStrongAssign((a1 + 8), a2);
  v6 = new_JavaUtilHashSet_init();
  result = JreStrongAssignAndConsume((a1 + 16), v6);
  if (a3)
  {
    v8 = (a3 + 24);
    v9 = a3 + 24 + 8 * *(a3 + 8);
    while (v8 < v9)
    {
      v10 = *v8++;
      sub_1001BD684(v10);
      result = [*(a1 + 16) addWithId:v10];
    }
  }

  return result;
}

uint64_t sub_1001BD684(__CFString *a1)
{
  if (atomic_load_explicit(JavaNioCharsetCharset__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  sub_1001BE230();
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ([(__CFString *)a1 isEmpty])
  {
    goto LABEL_11;
  }

  result = [(__CFString *)a1 length];
  v3 = result;
  if (result >= 1)
  {
    v4 = 0;
    while (1)
    {
      result = sub_1001BD728([(__CFString *)a1 charAtWithInt:v4]);
      if ((result & 1) == 0)
      {
        break;
      }

      v4 = (v4 + 1);
      if (v3 == v4)
      {
        return result;
      }
    }

LABEL_11:
    v5 = new_JavaNioCharsetIllegalCharsetNameException_initWithNSString_(a1);
    objc_exception_throw(v5);
  }

  return result;
}

uint64_t sub_1001BD728(int a1)
{
  if ((atomic_load_explicit(JavaNioCharsetCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BE230();
  }

  v4 = (a1 - 48) < 0xB || (a1 - 45) < 2 || a1 == 95;
  return (a1 & 0xFFFFFFDF) - 65 < 0x1A || v4;
}

id sub_1001BD7A0(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(JavaNioCharsetCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BE230();
  }

  v4 = qword_100554D90;
  objc_sync_enter(qword_100554D90);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (!qword_100554D90)
  {
    JreThrowNullPointerException();
  }

  v5 = a2[1];
  v6 = [qword_100554D90 getWithId:v5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = a2;
  }

  [qword_100554D90 putWithId:v5 withId:v7];
  [qword_100554D90 putWithId:a1 withId:v7];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = a2[2];
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [qword_100554D90 putWithId:*(*(&v13 + 1) + 8 * i) withId:{v7, v13}];
      }

      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v4);
  return v7;
}

id JavaNioCharsetCharset_forNameWithNSString_(__CFString *a1)
{
  if ((atomic_load_explicit(JavaNioCharsetCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BE230();
  }

  v2 = qword_100554D90;
  objc_sync_enter(qword_100554D90);
  if (!qword_100554D90)
  {
    JreThrowNullPointerException();
  }

  v3 = [qword_100554D90 getWithId:a1];
  objc_sync_exit(v2);
  if (v3)
  {
    return v3;
  }

  if (!a1)
  {
    v6 = new_JavaNioCharsetIllegalCharsetNameException_initWithNSString_(0);
    goto LABEL_14;
  }

  sub_1001BD684(a1);
  v5 = JavaNioCharsetIOSCharset_charsetForNameWithNSString_(a1);
  if (!v5)
  {
    v6 = new_JavaNioCharsetUnsupportedCharsetException_initWithNSString_(a1);
LABEL_14:
    objc_exception_throw(v6);
  }

  return sub_1001BD7A0(a1, v5);
}

id JavaNioCharsetCharset_forNameUEEWithNSString_(__CFString *a1)
{
  if ((atomic_load_explicit(JavaNioCharsetCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BE230();
  }

  return JavaNioCharsetCharset_forNameWithNSString_(a1);
}

uint64_t JavaNioCharsetCharset_isSupportedWithNSString_(__CFString *a1)
{
  if ((atomic_load_explicit(JavaNioCharsetCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BE230();
  }

  JavaNioCharsetCharset_forNameWithNSString_(a1);
  return 1;
}

void sub_1001BDB2C(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1001BDB18);
}

id sub_1001BDC24(void *a1, uint64_t a2)
{
  v3 = [a1 newEncoder];
  if (!v3)
  {
    goto LABEL_9;
  }

  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v4 = [v3 onMalformedInputWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPLACE_];
  if (!v4)
  {
    goto LABEL_9;
  }

  if ((atomic_load_explicit(JavaNioCharsetCodingErrorAction__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v5 = [v4 onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:JavaNioCharsetCodingErrorAction_REPLACE_];
  if (!v5)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  return [v5 encodeWithJavaNioCharBuffer:a2];
}

JavaUtilCollections_UnmodifiableSortedMap *JavaNioCharsetCharset_availableCharsets()
{
  if ((atomic_load_explicit(JavaNioCharsetCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BE230();
  }

  v0 = atomic_load(&NSString__initialized);
  if ((v0 & 1) == 0)
  {
    sub_1001BE23C();
  }

  v1 = new_JavaUtilTreeMap_initWithJavaUtilComparator_(NSString_CASE_INSENSITIVE_ORDER_);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  AvailableCharsetNames = JavaNioCharsetIOSCharset_getAvailableCharsetNames();
  if (!AvailableCharsetNames)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v3 = AvailableCharsetNames;
  v4 = [AvailableCharsetNames countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = JavaNioCharsetIOSCharset_charsetForNameWithNSString_(*(*(&v10 + 1) + 8 * v7));
        if (!v8)
        {
          goto LABEL_15;
        }

        [(JavaUtilTreeMap *)v1 putWithId:v8[1] withId:v8, v10];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return JavaUtilCollections_unmodifiableSortedMapWithJavaUtilSortedMap_(v1);
}

uint64_t JavaNioCharsetCharset_defaultCharset()
{
  if ((atomic_load_explicit(JavaNioCharsetCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001BE230();
  }

  if ((atomic_load_explicit(JavaNioCharsetIOSCharset__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10015D9B8();
  }

  return JavaNioCharsetIOSCharset_DEFAULT_CHARSET_;
}

JavaLangUnsupportedOperationException *new_JavaLangUnsupportedOperationException_init()
{
  v0 = [JavaLangUnsupportedOperationException alloc];
  JavaLangRuntimeException_init(v0, v1);
  return v0;
}

JavaLangUnsupportedOperationException *new_JavaLangUnsupportedOperationException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangUnsupportedOperationException alloc];
  JavaLangRuntimeException_initWithNSString_(v2, a1);
  return v2;
}

void *JavaIoBufferedReader_initWithJavaIoReader_withInt_(uint64_t a1, void *a2, int a3)
{
  JavaIoReader_initWithId_(a1, a2);
  *(a1 + 40) = -1;
  *(a1 + 44) = -1;
  if (a3 <= 0)
  {
    v8 = new_JavaLangIllegalArgumentException_initWithNSString_(@"size <= 0");
    objc_exception_throw(v8);
  }

  JreStrongAssign((a1 + 16), a2);
  v6 = [IOSCharArray newArrayWithLength:a3];

  return JreStrongAssignAndConsume((a1 + 24), v6);
}

id sub_1001BE54C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    v3 = *(a1 + 44);
    if (*(a1 + 32) - v2 < v3)
    {
      if (v2)
      {
        if (v2 >= 1)
        {
          v4 = *(a1 + 24);
          if (!v4)
          {
            goto LABEL_21;
          }

          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v4, v2, v4, 0, (v4[2] - v2));
          *(a1 + 32) -= *(a1 + 40);
          *(a1 + 36) -= *(a1 + 40);
          *(a1 + 40) = 0;
        }
      }

      else
      {
        v8 = *(a1 + 24);
        if (!v8)
        {
          goto LABEL_21;
        }

        v9 = *(v8 + 8);
        if (v3 > v9)
        {
          v10 = 2 * v9;
          if (v10 < v3)
          {
            v3 = v10;
          }

          v11 = [IOSCharArray arrayWithLength:v3];
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 24), 0, v11, 0, *(*(a1 + 24) + 8));
          JreStrongAssign((a1 + 24), v11);
        }
      }

      v12 = *(a1 + 16);
      if (v12)
      {
        v13 = *(a1 + 24);
        if (v13)
        {
          v14 = *(a1 + 32);
          v15 = *(v13 + 8);
          result = [v12 readWithCharArray:? withInt:? withInt:?];
          if (result != -1)
          {
            *(a1 + 36) += result;
          }

          return result;
        }
      }

LABEL_21:
      JreThrowNullPointerException();
    }
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    goto LABEL_21;
  }

  result = [v5 readWithCharArray:v6 withInt:0 withInt:*(v6 + 8)];
  if (result >= 1)
  {
    *(a1 + 40) = -1;
    *(a1 + 32) = 0;
    *(a1 + 36) = result;
  }

  return result;
}

uint64_t sub_1001BEC24(uint64_t a1)
{
  if (*(a1 + 32) != *(a1 + 36) || (result = sub_1001BE54C(a1), result != -1))
  {
    v3 = *(a1 + 24);
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    v4 = *(a1 + 32);
    result = *(v3 + 8);
    if (v4 < 0 || v4 >= result)
    {
      IOSArray_throwOutOfBoundsWithMsg(result, v4);
    }

    if (*(v3 + 12 + 2 * v4) == 10)
    {
      ++*(a1 + 32);
    }
  }

  return result;
}

JavaIoBufferedReader *new_JavaIoBufferedReader_initWithJavaIoReader_(void *a1)
{
  v2 = [JavaIoBufferedReader alloc];
  JavaIoBufferedReader_initWithJavaIoReader_withInt_(v2, a1, 0x2000);
  return v2;
}

JavaLangSecurityException *new_JavaLangSecurityException_init()
{
  v0 = [JavaLangSecurityException alloc];
  JavaLangRuntimeException_init(v0, v1);
  return v0;
}

JavaLangSecurityException *new_JavaLangSecurityException_initWithNSString_(uint64_t a1)
{
  v2 = [JavaLangSecurityException alloc];
  JavaLangRuntimeException_initWithNSString_(v2, a1);
  return v2;
}

JavaLangSecurityException *new_JavaLangSecurityException_initWithNSString_withJavaLangThrowable_(uint64_t a1, uint64_t a2)
{
  v4 = [JavaLangSecurityException alloc];
  JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(v4, a1, a2);
  return v4;
}

uint64_t JavaLangReflectWildcardType_class_()
{
  if (qword_100554DA0 != -1)
  {
    sub_1001BF774();
  }

  return qword_100554D98;
}

uint64_t JavaIoFlushable_class_()
{
  if (qword_100554DB0 != -1)
  {
    sub_1001BF7F4();
  }

  return qword_100554DA8;
}

uint64_t JavaUtilCollections_binarySearchWithJavaUtilList_withId_(void *a1, uint64_t a2)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_31:
    v18 = new_JavaLangNullPointerException_initWithNSString_(@"list == null");
    objc_exception_throw(v18);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_31;
  }

LABEL_3:
  if ([a1 isEmpty])
  {
    return 0xFFFFFFFFLL;
  }

  if ([JavaUtilRandomAccess_class_() isInstance:a1])
  {
    v5 = [a1 size];
    v6 = v5 - 1;
    if ((v5 - 1) < 0)
    {
      LODWORD(v4) = v5;
      v10 = -1;
    }

    else
    {
      v7 = 0;
      do
      {
        v4 = (v6 + v7) >> 1;
        v8 = [a1 getWithInt:v4];
        if (!v8)
        {
          goto LABEL_29;
        }

        v9 = [v8 compareToWithId:a2];
        if (-v9 < 1)
        {
          if (!v9)
          {
            return v4;
          }

          v6 = v4 - 1;
        }

        else
        {
          v7 = v4 + 1;
        }
      }

      while (v7 <= v6);
      if (v9 <= 0)
      {
        v10 = -2;
      }

      else
      {
        v10 = -1;
      }
    }

    return (v10 - v4);
  }

  else
  {
    v11 = [a1 listIterator];
    if (!v11)
    {
LABEL_29:
      JreThrowNullPointerException();
    }

    v12 = v11;
    do
    {
      if (([v12 hasNext] & 1) == 0)
      {
        return ~[a1 size];
      }

      v13 = [v12 next];
      if (!v13)
      {
        goto LABEL_29;
      }

      v14 = [v13 compareToWithId:a2];
    }

    while (v14 > 0x80000000);
    v15 = v14;
    v16 = [v12 previousIndex];
    if (v15)
    {
      return ~v16;
    }

    else
    {
      return v16;
    }
  }
}

uint64_t JavaUtilCollections_binarySearchWithJavaUtilList_withId_withJavaUtilComparator_(void *a1, uint64_t a2, void *a3)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1001C9C74();
    if (a3)
    {
LABEL_3:
      if ([JavaUtilRandomAccess_class_() isInstance:a1])
      {
        if (a1)
        {
          v6 = [a1 size];
          v7 = v6 - 1;
          if ((v6 - 1) < 0)
          {
            LODWORD(v9) = v6;
            v11 = -1;
          }

          else
          {
            v8 = 0;
            do
            {
              v9 = (v7 + v8) >> 1;
              v10 = [a3 compareWithId:objc_msgSend(a1 withId:{"getWithInt:", v9), a2}];
              if (-v10 < 1)
              {
                if (!v10)
                {
                  return v9;
                }

                v7 = v9 - 1;
              }

              else
              {
                v8 = v9 + 1;
              }
            }

            while (v8 <= v7);
            if (v10 <= 0)
            {
              v11 = -2;
            }

            else
            {
              v11 = -1;
            }
          }

          return (v11 - v9);
        }
      }

      else if (a1)
      {
        v12 = [a1 listIterator];
        if (v12)
        {
          v13 = v12;
          do
          {
            if (([v13 hasNext] & 1) == 0)
            {
              return ~[a1 size];
            }

            v14 = [a3 compareWithId:objc_msgSend(v13 withId:{"next"), a2}];
          }

          while (v14 > 0x80000000);
          v15 = v14;
          v16 = [v13 previousIndex];
          if (v15)
          {
            return ~v16;
          }

          else
          {
            return v16;
          }
        }
      }

      JreThrowNullPointerException();
    }
  }

  v18 = JavaUtilList_class_();
  if (a1 && ([v18 isInstance:a1] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return JavaUtilCollections_binarySearchWithJavaUtilList_withId_(a1, a2);
}

id JavaUtilCollections_copy__WithJavaUtilList_withJavaUtilList_(void *a1, void *a2)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_1001C9C74();
    if (!a1)
    {
      goto LABEL_12;
    }
  }

  v4 = [a1 size];
  if (!a2)
  {
    goto LABEL_12;
  }

  if (v4 < [a2 size])
  {
    [a1 size];
    [a2 size];
    v16 = JreStrcat("$I$I", v9, v10, v11, v12, v13, v14, v15, @"destination.size() < source.size(): ");
    v17 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v16);
    objc_exception_throw(v17);
  }

  v5 = [a2 iterator];
  v6 = [a1 listIterator];
  if (!v5)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v7 = v6;
  result = [v5 hasNext];
  if (result)
  {
    do
    {
      if (!v7)
      {
        JreThrowNullPointerException();
      }

      [v7 next];
      [v7 setWithId:{objc_msgSend(v5, "next")}];
      result = [v5 hasNext];
    }

    while ((result & 1) != 0);
  }

  return result;
}

JavaUtilCollections_$3 *JavaUtilCollections_enumerationWithJavaUtilCollection_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v2 = [JavaUtilCollections__3 alloc];
  sub_1001C9BC4(v2, a1);

  return v2;
}

id JavaUtilCollections_fillWithJavaUtilList_withId_(void *a1, uint64_t a2)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1001C9C74();
    if (!a1)
    {
LABEL_8:
      JreThrowNullPointerException();
    }
  }

  v4 = [a1 listIterator];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  result = [v4 hasNext];
  if (result)
  {
    do
    {
      [v5 next];
      [v5 setWithId:a2];
      result = [v5 hasNext];
    }

    while ((result & 1) != 0);
  }

  return result;
}

id JavaUtilCollections_maxWithJavaUtilCollection_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1001C9C74();
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  v2 = [a1 iterator];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v2 next];
  if ([v3 hasNext])
  {
    while (1)
    {
      v5 = [v3 next];
      if (!v4)
      {
        break;
      }

      v6 = v5;
      if ([v4 compareToWithId:v5] < 0)
      {
        v4 = v6;
      }

      if (([v3 hasNext] & 1) == 0)
      {
        return v4;
      }
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  return v4;
}

id JavaUtilCollections_maxWithJavaUtilCollection_withJavaUtilComparator_(void *a1, void *a2)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1001C9C74();
    if (a2)
    {
LABEL_3:
      if (!a1 || (v4 = [a1 iterator]) == 0)
      {
        JreThrowNullPointerException();
      }

      v5 = v4;
      v6 = [v4 next];
      if ([v5 hasNext])
      {
        do
        {
          v7 = [v5 next];
          if ([a2 compareWithId:v6 withId:v7] < 0)
          {
            v6 = v7;
          }
        }

        while (([v5 hasNext] & 1) != 0);
      }

      return v6;
    }
  }

  v9 = JavaUtilCollection_class_();
  if (a1 && ([v9 isInstance:a1] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return JavaUtilCollections_maxWithJavaUtilCollection_(a1);
}

id JavaUtilCollections_minWithJavaUtilCollection_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1001C9C74();
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  v2 = [a1 iterator];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v2 next];
  if ([v3 hasNext])
  {
    while (1)
    {
      v5 = [v3 next];
      if (!v4)
      {
        break;
      }

      v6 = v5;
      if ([v4 compareToWithId:v5] > 0)
      {
        v4 = v6;
      }

      if (([v3 hasNext] & 1) == 0)
      {
        return v4;
      }
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  return v4;
}

id JavaUtilCollections_minWithJavaUtilCollection_withJavaUtilComparator_(void *a1, void *a2)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1001C9C74();
    if (a2)
    {
LABEL_3:
      if (!a1 || (v4 = [a1 iterator]) == 0)
      {
        JreThrowNullPointerException();
      }

      v5 = v4;
      v6 = [v4 next];
      if ([v5 hasNext])
      {
        do
        {
          v7 = [v5 next];
          if ([a2 compareWithId:v6 withId:v7] > 0)
          {
            v6 = v7;
          }
        }

        while (([v5 hasNext] & 1) != 0);
      }

      return v6;
    }
  }

  v9 = JavaUtilCollection_class_();
  if (a1 && ([v9 isInstance:a1] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return JavaUtilCollections_minWithJavaUtilCollection_(a1);
}

JavaUtilCollections_CopiesList *JavaUtilCollections_nCopiesWithInt_withId_(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v4 = [JavaUtilCollections_CopiesList alloc];
  sub_1001C2778(v4, a1, a2);

  return v4;
}

uint64_t JavaUtilCollections_reverseWithJavaUtilList_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1001C9C74();
    if (!a1)
    {
      goto LABEL_15;
    }
  }

  v2 = [a1 size];
  v3 = [a1 listIterator];
  v4 = JavaUtilListIterator_class_();
  if (v3 && ([v4 isInstance:v3] & 1) == 0 || (v5 = objc_msgSend(a1, "listIteratorWithInt:", v2), result = JavaUtilListIterator_class_(), v5) && (result = objc_msgSend(result, "isInstance:", v5), (result & 1) == 0))
  {
    JreThrowClassCastException();
  }

  if (v2 >= 2)
  {
    if (v3)
    {
      v7 = v2 / 2;
      while (1)
      {
        v8 = [v3 next];
        if (!v5)
        {
          break;
        }

        v9 = v8;
        [v3 setWithId:{objc_msgSend(v5, "previous")}];
        result = [v5 setWithId:v9];
        if (!--v7)
        {
          return result;
        }
      }
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return result;
}

JavaUtilCollections_ReverseComparator2 *JavaUtilCollections_reverseOrderWithJavaUtilComparator_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1001C9C74();
    if (a1)
    {
LABEL_3:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        return a1[1];
      }

      else
      {
        v3 = [JavaUtilCollections_ReverseComparator2 alloc];
        JreStrongAssign(&v3->cmp_, a1);

        return v3;
      }
    }
  }

  return JavaUtilCollections_reverseOrder();
}

id JavaUtilCollections_shuffleWithJavaUtilList_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v2 = new_JavaUtilRandom_init();

  return JavaUtilCollections_shuffleWithJavaUtilList_withJavaUtilRandom_(a1, v2);
}

id JavaUtilCollections_shuffleWithJavaUtilList_withJavaUtilRandom_(void *a1, void *a2)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v4 = JavaUtilList_class_();
  if (a1 && ([v4 isInstance:a1] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if ([JavaUtilRandomAccess_class_() isInstance:a1])
  {
    if (a1)
    {
      result = [a1 size];
      if (result - 1 < 1)
      {
        return result;
      }

      if (a2)
      {
        v6 = result;
        do
        {
          v7 = (v6 - 1);
          v8 = [a2 nextIntWithInt:?];
          result = [a1 setWithInt:v8 withId:{objc_msgSend(a1, "setWithInt:withId:", v7, objc_msgSend(a1, "getWithInt:", v8))}];
          v6 = v7;
        }

        while (v7 > 1);
        return result;
      }
    }

    goto LABEL_33;
  }

  if (!a1)
  {
    goto LABEL_33;
  }

  v9 = [a1 toArray];
  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = v9;
  v11 = v9[2];
  v12 = (v11 - 1);
  if (v12 >= 1)
  {
    if (!a2)
    {
      goto LABEL_33;
    }

    do
    {
      v13 = [a2 nextIntWithInt:v11];
      v14 = *(v10 + 8);
      if (v12 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v12);
      }

      v15 = *(v10 + 24 + 8 * v12);
      if ((v13 & 0x80000000) != 0 || v13 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v13);
      }

      IOSObjectArray_Set(v10, v12, *(v10 + 24 + 8 * v13));
      IOSObjectArray_Set(v10, v13, v15);
      v11 = (v11 - 1);
    }

    while (v12-- > 1);
  }

  v17 = [a1 listIterator];
  if (!v17)
  {
LABEL_33:
    JreThrowNullPointerException();
  }

  v18 = v17;
  result = [v17 hasNext];
  if (result)
  {
    v19 = 0;
    do
    {
      [v18 next];
      v20 = *(v10 + 8);
      if (v19 < 0 || v19 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v19);
      }

      [v18 setWithId:*(v10 + 24 + 8 * v19)];
      result = [v18 hasNext];
      ++v19;
    }

    while ((result & 1) != 0);
  }

  return result;
}

JavaUtilCollections_SingletonSet *JavaUtilCollections_singletonWithId_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v2 = [JavaUtilCollections_SingletonSet alloc];
  JavaUtilAbstractSet_init(v2, v3);
  JreStrongAssign(&v2->element_, a1);

  return v2;
}

JavaUtilCollections_SingletonList *JavaUtilCollections_singletonListWithId_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v2 = [JavaUtilCollections_SingletonList alloc];
  JavaUtilAbstractList_init(v2, v3);
  JreStrongAssign(&v2->element_, a1);

  return v2;
}

JavaUtilCollections_SingletonMap *JavaUtilCollections_singletonMapWithId_withId_(void *a1, void *a2)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v4 = [JavaUtilCollections_SingletonMap alloc];
  sub_1001C3120(v4, a1, a2);

  return v4;
}

id JavaUtilCollections_sortWithJavaUtilList_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    sub_1001C9C74();
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  v2 = [a1 toArray];
  JavaUtilArrays_sortWithNSObjectArray_(v2);
  v3 = [a1 listIterator];
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  result = [v3 hasNext];
  if (result)
  {
    v6 = 0;
    while (1)
    {
      [v4 next];
      if (!v2)
      {
        break;
      }

      v7 = *(v2 + 2);
      if ((v6 & 0x80000000) != 0 || v6 >= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, v6);
      }

      v8 = v2[v6 + 3];
      v9 = JavaLangComparable_class_();
      if (v8)
      {
        if (([v9 isInstance:v8] & 1) == 0)
        {
          JreThrowClassCastException();
        }
      }

      [v4 setWithId:v8];
      result = [v4 hasNext];
      v6 = (v6 + 1);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  return result;
}

id JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(void *a1, uint64_t a2)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1001C9C74();
    if (!a1)
    {
      goto LABEL_16;
    }
  }

  v4 = +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", [a1 size], NSObject_class_());
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = [a1 toArrayWithNSObjectArray:v4];
  JavaUtilArrays_sortWithNSObjectArray_withJavaUtilComparator_(v5, a2);
  v6 = [a1 listIterator];
  if (!v6)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v7 = v6;
  result = [v6 hasNext];
  if (result)
  {
    v9 = 0;
    while (1)
    {
      [v7 next];
      if (!v5)
      {
        break;
      }

      v10 = *(v5 + 2);
      if ((v9 & 0x80000000) != 0 || v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v9);
      }

      [v7 setWithId:v5[v9 + 3]];
      result = [v7 hasNext];
      v9 = (v9 + 1);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    goto LABEL_16;
  }

  return result;
}

id JavaUtilCollections_swapWithJavaUtilList_withInt_withInt_(void *a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_13:
    v8 = new_JavaLangNullPointerException_initWithNSString_(@"list == null");
    goto LABEL_16;
  }

  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = [a1 size];
  if ((a2 & 0x80000000) != 0 || result <= a3 || (a3 & 0x80000000) != 0 || result <= a2)
  {
    v8 = new_JavaLangIndexOutOfBoundsException_init();
LABEL_16:
    objc_exception_throw(v8);
  }

  if (a2 != a3)
  {
    if (([JavaUtilList_class_() isInstance:a1] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v7 = [a1 setWithInt:a2 withId:{objc_msgSend(a1, "getWithInt:", a3)}];

    return [a1 setWithInt:a3 withId:v7];
  }

  return result;
}

BOOL JavaUtilCollections_replaceAllWithJavaUtilList_withId_withId_(void *a1, uint64_t a2, uint64_t a3)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = [a1 indexOfWithId:a2];
  v7 = v6;
  if ((v6 & 0x80000000) == 0)
  {
    v8 = v6;
    do
    {
      [a1 setWithInt:v8 withId:a3];
      v8 = [a1 indexOfWithId:a2];
    }

    while ((v8 & 0x80000000) == 0);
  }

  return v7 >= 0;
}

id JavaUtilCollections_rotateWithJavaUtilList_withInt_(void *a1, int a2)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v4 = JavaUtilList_class_();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if (([v4 isInstance:a1] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  result = [a1 size];
  if (result)
  {
    v6 = result;
    v7 = a2 % result;
    v8 = a2 <= 0 ? result : 0;
    v9 = v7 + v8;
    if (v7 + v8 && result != v9)
    {
      if ([JavaUtilRandomAccess_class_() isInstance:a1])
      {
        result = [a1 getWithInt:0];
        if (v6 >= 1)
        {
          v11 = result;
          v12 = 0;
          v13 = 0;
          v14 = v6;
          do
          {
            v13 = (v13 + v9) % v6;
            result = [a1 setWithInt:v13 withId:v11];
            if (v13 == v12)
            {
              v13 = v12 + 1;
              result = [a1 getWithInt:(v12 + 1)];
              v11 = result;
              ++v12;
            }

            else
            {
              v11 = result;
            }

            --v14;
          }

          while (v14);
        }
      }

      else
      {
        v15 = ((v6 - v9) % v6);
        v16 = [a1 subListWithInt:0 withInt:v15];
        v17 = [a1 subListWithInt:v15 withInt:v6];
        JavaUtilCollections_reverseWithJavaUtilList_(v16);
        JavaUtilCollections_reverseWithJavaUtilList_(v17);

        return JavaUtilCollections_reverseWithJavaUtilList_(a1);
      }
    }
  }

  return result;
}

uint64_t JavaUtilCollections_indexOfSubListWithJavaUtilList_withJavaUtilList_(void *a1, void *a2)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_30;
    }
  }

  else
  {
    sub_1001C9C74();
    if (!a1)
    {
      goto LABEL_30;
    }
  }

  v4 = [a1 size];
  if (!a2)
  {
    goto LABEL_30;
  }

  v5 = v4;
  v6 = [a2 size];
  if (v6 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v6;
  if (!v6)
  {
    return 0;
  }

  v9 = [a2 getWithInt:0];
  result = [a1 indexOfWithId:v9];
  if (result == -1)
  {
    return result;
  }

  for (i = result; ; i = (i + 1))
  {
    result = 0xFFFFFFFFLL;
    if (v5 <= i || v5 - i < v8)
    {
      return result;
    }

    v11 = [a1 listIteratorWithInt:i];
    v12 = v11;
    if (!v9)
    {
      break;
    }

    if (!v11)
    {
      goto LABEL_30;
    }

    if ([v9 isEqual:{objc_msgSend(v11, "next")}])
    {
      goto LABEL_18;
    }

LABEL_17:
    ;
  }

  if (!v11)
  {
    goto LABEL_30;
  }

  if ([v11 next])
  {
    goto LABEL_17;
  }

LABEL_18:
  v13 = [a2 listIteratorWithInt:1];
  if (!v13)
  {
LABEL_30:
    JreThrowNullPointerException();
  }

  v14 = v13;
  if (![v13 hasNext])
  {
    return i;
  }

  while (1)
  {
    v15 = [v14 next];
    if (![v12 hasNext])
    {
      return 0xFFFFFFFFLL;
    }

    v16 = [v12 next];
    if (v15)
    {
      if (![v15 isEqual:v16])
      {
        goto LABEL_17;
      }
    }

    else if (v16)
    {
      goto LABEL_17;
    }

    if (([v14 hasNext] & 1) == 0)
    {
      return i;
    }
  }
}

uint64_t JavaUtilCollections_lastIndexOfSubListWithJavaUtilList_withJavaUtilList_(void *a1, void *a2)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    sub_1001C9C74();
    if (!a2)
    {
      goto LABEL_32;
    }
  }

  v4 = [a2 size];
  if (!a1)
  {
    goto LABEL_32;
  }

  v5 = v4;
  result = [a1 size];
  if (v5 > result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    v7 = [a2 getWithInt:(v5 - 1)];
    v8 = [a1 lastIndexOfWithId:v7];
    result = 0xFFFFFFFFLL;
    if ((v8 & 0x80000000) == 0 && v8 + 1 >= v5)
    {
      while (1)
      {
        v9 = [a1 listIteratorWithInt:?];
        v10 = v9;
        if (v7)
        {
          if (!v9)
          {
            goto LABEL_32;
          }

          if ([v7 isEqual:{objc_msgSend(v9, "previous")}])
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (!v9)
          {
            goto LABEL_32;
          }

          if (![v9 previous])
          {
LABEL_19:
            v12 = [a2 listIteratorWithInt:(v5 - 1)];
            if (v12)
            {
              v13 = v12;
              if ([v12 hasPrevious])
              {
                while (1)
                {
                  v14 = [v13 previous];
                  if (![v10 hasPrevious])
                  {
                    return 0xFFFFFFFFLL;
                  }

                  v15 = [v10 previous];
                  if (v14)
                  {
                    if (![v14 isEqual:v15])
                    {
                      goto LABEL_15;
                    }
                  }

                  else if (v15)
                  {
                    goto LABEL_15;
                  }

                  if (([v13 hasPrevious] & 1) == 0)
                  {
                    goto LABEL_27;
                  }
                }
              }

              else
              {
LABEL_27:

                return [v10 nextIndex];
              }
            }

LABEL_32:
            JreThrowNullPointerException();
          }
        }

LABEL_15:
        result = 0xFFFFFFFFLL;
        if (v8 >= 1 && v8-- >= v5)
        {
          continue;
        }

        return result;
      }
    }
  }

  return result;
}

JavaUtilArrayList *JavaUtilCollections_listWithJavaUtilEnumeration_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v2 = new_JavaUtilArrayList_init();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  if ([a1 hasMoreElements])
  {
    do
    {
      -[JavaUtilArrayList addWithId:](v3, "addWithId:", [a1 nextElement]);
    }

    while (([a1 hasMoreElements] & 1) != 0);
  }

  return v3;
}

JavaUtilCollections_SynchronizedCollection *JavaUtilCollections_synchronizedCollectionWithJavaUtilCollection_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"collection == null");
    objc_exception_throw(v4);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = [JavaUtilCollections_SynchronizedCollection alloc];
  JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(v2, a1);

  return v2;
}

JavaUtilCollections_SynchronizedRandomAccessList *JavaUtilCollections_synchronizedListWithJavaUtilList_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"list == null");
    objc_exception_throw(v4);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ([JavaUtilRandomAccess_class_() isInstance:a1])
  {
    v2 = new_JavaUtilCollections_SynchronizedRandomAccessList_initWithJavaUtilList_(a1);
  }

  else
  {
    v2 = new_JavaUtilCollections_SynchronizedList_initWithJavaUtilList_(a1);
  }

  return v2;
}

JavaUtilCollections_SynchronizedMap *JavaUtilCollections_synchronizedMapWithJavaUtilMap_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"map == null");
    objc_exception_throw(v4);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = [JavaUtilCollections_SynchronizedMap alloc];
  JavaUtilCollections_SynchronizedMap_initWithJavaUtilMap_(v2, a1);

  return v2;
}

JavaUtilCollections_SynchronizedSet *JavaUtilCollections_synchronizedSetWithJavaUtilSet_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"set == null");
    objc_exception_throw(v4);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = [JavaUtilCollections_SynchronizedSet alloc];
  JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(v2, a1);

  return v2;
}

JavaUtilCollections_SynchronizedSortedMap *JavaUtilCollections_synchronizedSortedMapWithJavaUtilSortedMap_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"map == null");
    objc_exception_throw(v4);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = new_JavaUtilCollections_SynchronizedSortedMap_initWithJavaUtilSortedMap_(a1);

  return v2;
}

JavaUtilCollections_SynchronizedSortedSet *JavaUtilCollections_synchronizedSortedSetWithJavaUtilSortedSet_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"set == null");
    objc_exception_throw(v4);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = new_JavaUtilCollections_SynchronizedSortedSet_initWithJavaUtilSortedSet_(a1);

  return v2;
}

JavaUtilCollections_UnmodifiableCollection *JavaUtilCollections_unmodifiableCollectionWithJavaUtilCollection_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"collection == null");
    objc_exception_throw(v4);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (([JavaUtilCollection_class_() isInstance:a1] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v2 = [JavaUtilCollections_UnmodifiableCollection alloc];
  JreStrongAssign(&v2->c_, a1);

  return v2;
}

JavaUtilCollections_UnmodifiableRandomAccessList *JavaUtilCollections_unmodifiableListWithJavaUtilList_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_12:
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"list == null");
    objc_exception_throw(v6);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_3:
  v2 = [JavaUtilRandomAccess_class_() isInstance:a1];
  v3 = [JavaUtilList_class_() isInstance:a1];
  if (v2)
  {
    if (v3)
    {
      v4 = sub_1001C2374(a1);
      goto LABEL_8;
    }

LABEL_13:
    JreThrowClassCastException();
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = sub_1001C23C8(a1);
LABEL_8:

  return v4;
}

JavaUtilCollections_UnmodifiableMap *JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"map == null");
    objc_exception_throw(v4);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (([JavaUtilMap_class_() isInstance:a1] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v2 = [JavaUtilCollections_UnmodifiableMap alloc];
  JreStrongAssign(&v2->m_, a1);

  return v2;
}

JavaUtilCollections_UnmodifiableSet *JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"set == null");
    objc_exception_throw(v4);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (([JavaUtilSet_class_() isInstance:a1] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v2 = [JavaUtilCollections_UnmodifiableSet alloc];
  JreStrongAssign(&v2->super.c_, a1);

  return v2;
}

JavaUtilCollections_UnmodifiableSortedMap *JavaUtilCollections_unmodifiableSortedMapWithJavaUtilSortedMap_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"map == null");
    objc_exception_throw(v4);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (([JavaUtilSortedMap_class_() isInstance:a1] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v2 = sub_1001C241C(a1);

  return v2;
}

JavaUtilCollections_UnmodifiableSortedSet *JavaUtilCollections_unmodifiableSortedSetWithJavaUtilSortedSet_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"set == null");
    objc_exception_throw(v4);
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = sub_1001C2470(a1);

  return v2;
}

uint64_t JavaUtilCollections_frequencyWithJavaUtilCollection_withId_(void *a1, void *a2)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_18:
    v9 = new_JavaLangNullPointerException_initWithNSString_(@"c == null");
    objc_exception_throw(v9);
  }

  if (!a1)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (([a1 isEmpty] & 1) == 0)
  {
    v4 = [a1 iterator];
    if (!v4)
    {
      JreThrowNullPointerException();
    }

    v5 = v4;
    if ([v4 hasNext])
    {
      v6 = 0;
      while (1)
      {
        v7 = [v5 next];
        if (!a2)
        {
          break;
        }

        if ([a2 isEqual:v7])
        {
          goto LABEL_9;
        }

LABEL_10:
        if (([v5 hasNext] & 1) == 0)
        {
          return v6;
        }
      }

      if (v7)
      {
        goto LABEL_10;
      }

LABEL_9:
      v6 = (v6 + 1);
      goto LABEL_10;
    }
  }

  return 0;
}

JavaUtilCollections_CheckedCollection *JavaUtilCollections_checkedCollectionWithJavaUtilCollection_withIOSClass_(void *a1, void *a2)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v4 = [JavaUtilCollections_CheckedCollection alloc];
  sub_1001C7CC4(v4, a1, a2);

  return v4;
}

JavaUtilCollections_CheckedMap *JavaUtilCollections_checkedMapWithJavaUtilMap_withIOSClass_withIOSClass_(void *a1, void *a2, void *a3)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v6 = [JavaUtilCollections_CheckedMap alloc];
  sub_1001C8940(&v6->super.isa, a1, a2, a3);

  return v6;
}

id *JavaUtilCollections_checkedListWithJavaUtilList_withIOSClass_(void *a1, void *a2)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v4 = [JavaUtilRandomAccess_class_() isInstance:a1];
  v5 = off_1003E8CE8;
  if (!v4)
  {
    v5 = off_1003E8CE0;
  }

  v6 = objc_alloc(*v5);
  sub_1001C7CC4(v6, a1, a2);
  JreStrongAssign(v6 + 3, a1);

  return v6;
}

JavaUtilCollections_CheckedSet *JavaUtilCollections_checkedSetWithJavaUtilSet_withIOSClass_(void *a1, void *a2)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v4 = [JavaUtilCollections_CheckedSet alloc];
  sub_1001C7CC4(v4, a1, a2);

  return v4;
}

JavaUtilCollections_CheckedSortedMap *JavaUtilCollections_checkedSortedMapWithJavaUtilSortedMap_withIOSClass_withIOSClass_(void *a1, void *a2, void *a3)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v6 = sub_1001C2680(a1, a2, a3);

  return v6;
}

JavaUtilCollections_CheckedSortedSet *JavaUtilCollections_checkedSortedSetWithJavaUtilSortedSet_withIOSClass_(void *a1, void *a2)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v4 = sub_1001C26E8(a1, a2);

  return v4;
}

uint64_t JavaUtilCollections_addAllWithJavaUtilCollection_withNSObjectArray_(void *a1, uint64_t a2)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1001C9C74();
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    v5 = 0;
    while (a1)
    {
      v4 |= [a1 addWithId:*(a2 + 24 + 8 * v5++)];
      if (v5 >= *(a2 + 8))
      {
        return v4 & 1;
      }
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t JavaUtilCollections_disjointWithJavaUtilCollection_withJavaUtilCollection_(void *a1, void *a2)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  if ([JavaUtilSet_class_() isInstance:a1] && !objc_msgSend(JavaUtilSet_class_(), "isInstance:", a2))
  {
    if (!a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (!a2 || (v4 = [a2 size], !a1))
    {
LABEL_20:
      JreThrowNullPointerException();
    }

    v5 = v4;
    v6 = [a1 size];
    if (v5 <= v6)
    {
      v7 = a1;
    }

    else
    {
      v7 = a2;
    }

    if (v5 <= v6)
    {
      a1 = a2;
    }

    a2 = v7;
  }

  v8 = [a2 iterator];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  do
  {
    v10 = [v9 hasNext];
    if ((v10 & 1) == 0)
    {
      break;
    }

    if (!a1)
    {
      goto LABEL_20;
    }
  }

  while (![a1 containsWithId:{objc_msgSend(v9, "next")}]);
  return v10 ^ 1;
}

void *JavaUtilCollections_checkTypeWithId_withIOSClass_(void *a1, void *a2)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      return a1;
    }
  }

  else
  {
    sub_1001C9C74();
    if (!a1)
    {
      return a1;
    }
  }

  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (([a2 isInstance:a1] & 1) == 0)
  {
    [a1 getClass];
    v12 = JreStrcat("$@$@", v5, v6, v7, v8, v9, v10, v11, @"Attempt to insert element of type ");
    v13 = new_JavaLangClassCastException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  return a1;
}

JavaUtilCollections_SetFromMap *JavaUtilCollections_newSetFromMapWithJavaUtilMap_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (![a1 isEmpty])
  {
    v4 = new_JavaLangIllegalArgumentException_initWithNSString_(@"map not empty");
    objc_exception_throw(v4);
  }

  v2 = [JavaUtilCollections_SetFromMap alloc];
  sub_1001C744C(v2, a1);

  return v2;
}

JavaUtilCollections_AsLIFOQueue *JavaUtilCollections_asLifoQueueWithJavaUtilDeque_(void *a1)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v2 = [JavaUtilCollections_AsLIFOQueue alloc];
  JavaUtilAbstractQueue_init(v2, v3);
  JreStrongAssign(&v2->q_, a1);

  return v2;
}

uint64_t JavaUtilCollections_secondaryHashWithId_(void *a1)
{
  if (atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1001C9C74();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = [a1 hash];

  return sub_1001C1FB8(v2);
}

uint64_t JavaUtilCollections_secondaryIdentityHashWithId_(uint64_t a1)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v2 = JavaLangSystem_identityHashCodeWithId_(a1);

  return sub_1001C1FB8(v2);
}

uint64_t sub_1001C1FB8(int a1)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v2 = 9 * ((((a1 << 15) ^ 0xFFFFCD7D) + a1) ^ ((((a1 << 15) ^ 0xFFFFCD7D) + a1) >> 10));
  return (16389 * (v2 ^ (v2 >> 6))) ^ ((16389 * (v2 ^ (v2 >> 6))) >> 16);
}

uint64_t JavaUtilCollections_roundUpToPowerOfTwoWithInt_(int a1)
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v2 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
  return (v3 | HIWORD(v3)) + 1;
}

uint64_t JavaUtilCollections_reverseOrder()
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  if ((atomic_load_explicit(JavaUtilCollections_ReverseComparator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C80();
  }

  return qword_100554DC8;
}

JavaUtilCollections_SynchronizedRandomAccessList *new_JavaUtilCollections_SynchronizedRandomAccessList_initWithJavaUtilList_(void *a1)
{
  v2 = [JavaUtilCollections_SynchronizedRandomAccessList alloc];
  JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(v2, a1);
  JreStrongAssign(&v2->super.list_, a1);
  return v2;
}

JavaUtilCollections_SynchronizedList *new_JavaUtilCollections_SynchronizedList_initWithJavaUtilList_(void *a1)
{
  v2 = [JavaUtilCollections_SynchronizedList alloc];
  JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(v2, a1);
  JreStrongAssign(&v2->list_, a1);
  return v2;
}

JavaUtilCollections_SynchronizedSortedMap *new_JavaUtilCollections_SynchronizedSortedMap_initWithJavaUtilSortedMap_(void *a1)
{
  v2 = [JavaUtilCollections_SynchronizedSortedMap alloc];
  JavaUtilCollections_SynchronizedMap_initWithJavaUtilMap_(v2, a1);
  JreStrongAssign(&v2->sm_, a1);
  return v2;
}

JavaUtilCollections_SynchronizedSortedSet *new_JavaUtilCollections_SynchronizedSortedSet_initWithJavaUtilSortedSet_(void *a1)
{
  v2 = [JavaUtilCollections_SynchronizedSortedSet alloc];
  JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(v2, a1);
  JreStrongAssign(&v2->ss_, a1);
  return v2;
}

JavaUtilCollections_UnmodifiableRandomAccessList *sub_1001C2374(void *a1)
{
  v2 = [JavaUtilCollections_UnmodifiableRandomAccessList alloc];
  JreStrongAssign(&v2->super.super.c_, a1);
  JreStrongAssign(&v2->super.list_, a1);
  return v2;
}

JavaUtilCollections_UnmodifiableList *sub_1001C23C8(void *a1)
{
  v2 = [JavaUtilCollections_UnmodifiableList alloc];
  JreStrongAssign(&v2->super.c_, a1);
  JreStrongAssign(&v2->list_, a1);
  return v2;
}

JavaUtilCollections_UnmodifiableSortedMap *sub_1001C241C(void *a1)
{
  v2 = [JavaUtilCollections_UnmodifiableSortedMap alloc];
  JreStrongAssign(&v2->super.m_, a1);
  JreStrongAssign(&v2->sm_, a1);
  return v2;
}

JavaUtilCollections_UnmodifiableSortedSet *sub_1001C2470(void *a1)
{
  v2 = [JavaUtilCollections_UnmodifiableSortedSet alloc];
  JreStrongAssign(&v2->super.super.c_, a1);
  JreStrongAssign(&v2->ss_, a1);
  return v2;
}

uint64_t JavaUtilCollections_emptyList()
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return JavaUtilCollections_EMPTY_LIST_;
}

uint64_t JavaUtilCollections_emptySet()
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return JavaUtilCollections_EMPTY_SET_;
}

uint64_t JavaUtilCollections_emptyMap()
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  return JavaUtilCollections_EMPTY_MAP_;
}

uint64_t JavaUtilCollections_emptyEnumeration()
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v0 = qword_100554DC0;
  v1 = JavaUtilEnumeration_class_();
  if (v0 && ([v1 isInstance:v0] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v0;
}

uint64_t JavaUtilCollections_emptyIterator()
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v0 = qword_100554DB8;
  v1 = JavaUtilIterator_class_();
  if (v0 && ([v1 isInstance:v0] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v0;
}

id JavaUtilCollections_emptyListIterator()
{
  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  if ((atomic_load_explicit(JavaUtilCollections__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001C9C74();
  }

  v0 = JavaUtilCollections_EMPTY_LIST_;
  if (!JavaUtilCollections_EMPTY_LIST_)
  {
    JreThrowNullPointerException();
  }

  return [v0 listIterator];
}

JavaUtilCollections_CheckedSortedMap *sub_1001C2680(void *a1, void *a2, void *a3)
{
  v6 = [JavaUtilCollections_CheckedSortedMap alloc];
  sub_1001C8940(&v6->super.super.isa, a1, a2, a3);
  JreStrongAssign(&v6->sm_, a1);
  return v6;
}

JavaUtilCollections_CheckedSortedSet *sub_1001C26E8(void *a1, void *a2)
{
  v4 = [JavaUtilCollections_CheckedSortedSet alloc];
  sub_1001C7CC4(v4, a1, a2);
  JreStrongAssign(&v4->ss_, a1);
  return v4;
}

id sub_1001C2778(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  JavaUtilAbstractList_init(a1, a2);
  if (v4 < 0)
  {
    v14 = JreStrcat("$I", v6, v7, v8, v9, v10, v11, v12, @"length < 0: ");
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  *(a1 + 12) = v4;

  return JreStrongAssign((a1 + 16), a3);
}

id sub_1001C3120(uint64_t a1, void *a2, void *a3)
{
  JavaUtilAbstractMap_init(a1, a2);
  JreStrongAssign((a1 + 24), a2);

  return JreStrongAssign((a1 + 32), a3);
}

void *JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_(uint64_t a1, void *a2)
{
  JreStrongAssign((a1 + 8), a2);
  v3 = [NSObject alloc];

  return JreStrongAssignAndConsume((a1 + 16), v3);
}

JavaUtilCollections_SynchronizedCollection *new_JavaUtilCollections_SynchronizedCollection_initWithJavaUtilCollection_withId_(void *a1, void *a2)
{
  v4 = [JavaUtilCollections_SynchronizedCollection alloc];
  JreStrongAssign(&v4->c_, a1);
  JreStrongAssign(&v4->mutex_, a2);
  return v4;
}

id JavaUtilCollections_SynchronizedList_initWithJavaUtilList_withId_(id *a1, void *a2, void *a3)
{
  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 2, a3);

  return JreStrongAssign(a1 + 3, a2);
}

void *JavaUtilCollections_SynchronizedMap_initWithJavaUtilMap_(uint64_t a1, void *a2)
{
  JreStrongAssign((a1 + 16), a2);
  v3 = [NSObject alloc];

  return JreStrongAssignAndConsume((a1 + 8), v3);
}

JavaUtilCollections_SynchronizedSet *new_JavaUtilCollections_SynchronizedSet_initWithJavaUtilSet_withId_(void *a1, void *a2)
{
  v4 = [JavaUtilCollections_SynchronizedSet alloc];
  JreStrongAssign(&v4->super.c_, a1);
  JreStrongAssign(&v4->super.mutex_, a2);
  return v4;
}

id JavaUtilCollections_SynchronizedSortedMap_initWithJavaUtilSortedMap_withId_(id *a1, void *a2, void *a3)
{
  JreStrongAssign(a1 + 2, a2);
  JreStrongAssign(a1 + 1, a3);

  return JreStrongAssign(a1 + 3, a2);
}

id JavaUtilCollections_SynchronizedSortedSet_initWithJavaUtilSortedSet_withId_(id *a1, void *a2, void *a3)
{
  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 2, a3);

  return JreStrongAssign(a1 + 3, a2);
}

id sub_1001C744C(uint64_t a1, void *a2)
{
  JavaUtilAbstractSet_init(a1, a2);
  JreStrongAssign((a1 + 8), a2);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [a2 keySet];

  return JreStrongAssign((a1 + 16), v4);
}

id sub_1001C7CC4(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    v6 = @"c == null";
    goto LABEL_8;
  }

  if (!a3)
  {
    v6 = @"type == null";
LABEL_8:
    v7 = new_JavaLangNullPointerException_initWithNSString_(v6);
    objc_exception_throw(v7);
  }

  JreStrongAssign((a1 + 8), a2);

  return JreStrongAssign((a1 + 16), a3);
}

JavaUtilCollections_CheckedListIterator *sub_1001C7E30(void *a1, void *a2)
{
  v4 = [JavaUtilCollections_CheckedListIterator alloc];
  JreStrongAssign(&v4->i_, a1);
  JreStrongAssign(&v4->type_, a2);
  return v4;
}

id sub_1001C8940(id *a1, void *a2, void *a3, void *a4)
{
  if (!a2)
  {
    v8 = @"m == null";
    goto LABEL_10;
  }

  if (!a3)
  {
    v8 = @"keyType == null";
    goto LABEL_10;
  }

  if (!a4)
  {
    v8 = @"valueType == null";
LABEL_10:
    v9 = new_JavaLangNullPointerException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 2, a3);

  return JreStrongAssign(a1 + 3, a4);
}

id sub_1001C8EC8(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"e == null");
    objc_exception_throw(v6);
  }

  JreStrongAssign((a1 + 8), a2);

  return JreStrongAssign((a1 + 16), a3);
}

id sub_1001C9BC4(uint64_t a1, void *a2)
{
  JreStrongAssign((a1 + 16), a2);
  v3 = *(a1 + 16);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = [v3 iterator];

  return JreStrongAssign((a1 + 8), v4);
}

id OrgXmlSaxSAXParseException_initWithNSString_withOrgXmlSaxLocator_(uint64_t a1, uint64_t a2, void *a3)
{
  OrgXmlSaxSAXException_initWithNSString_(a1, a2);
  if (a3)
  {
    v5 = [a3 getPublicId];
    v6 = [a3 getSystemId];
    v7 = [a3 getLineNumber];
    v8 = [a3 getColumnNumber];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = -1;
    v8 = -1;
  }

  JreStrongAssign((a1 + 96), v5);
  result = JreStrongAssign((a1 + 104), v6);
  *(a1 + 112) = v7;
  *(a1 + 116) = v8;
  return result;
}

id OrgXmlSaxSAXParseException_initWithNSString_withOrgXmlSaxLocator_withJavaLangException_(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  OrgXmlSaxSAXException_initWithNSString_withJavaLangException_(a1, a2, a4);
  if (a3)
  {
    v6 = [a3 getPublicId];
    v7 = [a3 getSystemId];
    v8 = [a3 getLineNumber];
    v9 = [a3 getColumnNumber];
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = -1;
    v9 = -1;
  }

  JreStrongAssign((a1 + 96), v6);
  result = JreStrongAssign((a1 + 104), v7);
  *(a1 + 112) = v8;
  *(a1 + 116) = v9;
  return result;
}

id OrgXmlSaxSAXParseException_initWithNSString_withNSString_withNSString_withInt_withInt_(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, int a6)
{
  OrgXmlSaxSAXException_initWithNSString_(a1, a2);
  JreStrongAssign((a1 + 96), a3);
  result = JreStrongAssign((a1 + 104), a4);
  *(a1 + 112) = a5;
  *(a1 + 116) = a6;
  return result;
}

id OrgXmlSaxSAXParseException_initWithNSString_withNSString_withNSString_withInt_withInt_withJavaLangException_(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, int a6, void *a7)
{
  OrgXmlSaxSAXException_initWithNSString_withJavaLangException_(a1, a2, a7);
  JreStrongAssign((a1 + 96), a3);
  result = JreStrongAssign((a1 + 104), a4);
  *(a1 + 112) = a5;
  *(a1 + 116) = a6;
  return result;
}

OrgXmlSaxSAXParseException *new_OrgXmlSaxSAXParseException_initWithNSString_withOrgXmlSaxLocator_(uint64_t a1, void *a2)
{
  v4 = [OrgXmlSaxSAXParseException alloc];
  OrgXmlSaxSAXParseException_initWithNSString_withOrgXmlSaxLocator_(v4, a1, a2);
  return v4;
}

OrgXmlSaxSAXParseException *new_OrgXmlSaxSAXParseException_initWithNSString_withNSString_withNSString_withInt_withInt_(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v10 = [OrgXmlSaxSAXParseException alloc];
  OrgXmlSaxSAXParseException_initWithNSString_withNSString_withNSString_withInt_withInt_(v10, a1, a2, a3, a4, a5);
  return v10;
}

uint64_t JavaLangReflectConstructor_class_()
{
  if (qword_100554DD8 != -1)
  {
    sub_1001CA818();
  }

  return qword_100554DD0;
}

id JavaUtilEventObject_initWithId_(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"source == null");
    objc_exception_throw(v5);
  }

  v3 = (a1 + 8);

  return JreStrongAssign(v3, a2);
}

id JavaNetInetAddress_initWithInt_withByteArray_withNSString_(uint64_t a1, int a2, void *a3, void *a4)
{
  *(a1 + 24) = a2;
  JreStrongAssign((a1 + 8), a3);

  return JreStrongAssign((a1 + 16), a4);
}

id JavaNetInetAddress_getAllByNameWithNSString_(void *a1)
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  v2 = sub_1001CABDC(a1);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [(IOSArray *)v2 clone];
}

IOSObjectArray *sub_1001CABDC(void *a1)
{
  if (atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire))
  {
    if (!a1)
    {
LABEL_4:

      return +[JavaNetInetAddress loopbackAddresses]_0();
    }
  }

  else
  {
    sub_1001CC9CC();
    if (!a1)
    {
      goto LABEL_4;
    }
  }

  if ([a1 isEmpty])
  {
    goto LABEL_4;
  }

  v3 = sub_1001CAEB8(a1);
  if (v3)
  {
    v4 = sub_1001CADEC(a1, v3);
    if (!v4)
    {
      v13 = JreStrcat("$$", v5, v6, v7, v8, v9, v10, v11, @"Deprecated IPv4 address format: ");
      v14 = new_JavaNetUnknownHostException_initWithNSString_(v13);
      objc_exception_throw(v14);
    }

    v15 = v4;
    return [IOSObjectArray arrayWithObjects:&v15 count:1 type:JavaNetInetAddress_class_()];
  }

  else
  {
    v12 = sub_1001CB304(a1);
    if (!v12)
    {
      JreThrowNullPointerException();
    }

    return [v12 clone];
  }
}