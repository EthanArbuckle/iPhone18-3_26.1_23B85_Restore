@interface DYJSScriptingContext
+ (id)sharedContext;
- (BOOL)evaluteScript:(id)a3 scriptURL:(id)a4;
- (BOOL)setGlobalJSONObject:(const char *)a3 value:(id)a4;
- (DYJSScriptingContext)init;
- (OpaqueJSString)_cachedStringFromString:(const char *)a3;
- (OpaqueJSValue)createArrayRef:(id)a3;
- (basic_string<char,)_jsStringToString:(std::allocator<char>> *__return_ptr)retstr;
- (basic_string<char,)_jsValueToString:(std::allocator<char>> *__return_ptr)retstr;
- (double)callFunction:(id)a3 withArguments:(id)a4;
- (double)callGlobalFunction:(const char *)a3;
- (double)getGlobalDouble:(const char *)a3;
- (id).cxx_construct;
- (id)getGlobalJSONObject:(const char *)a3;
- (id)setValue:(id)a3 value:(id)a4;
- (void)_clearCache;
- (void)allocNewContext;
- (void)dealloc;
- (void)setGlobalDouble:(const char *)a3 value:(double)a4;
- (void)setRawArrayValues:(id)a3 withUint32Values:(unsigned int *)a4 andNumCounters:(unint64_t)a5;
- (void)setRawArrayValues:(id)a3 withUint64Values:(unint64_t *)a4 andNumCounters:(unint64_t)a5;
- (void)setValues:(id)a3;
@end

@implementation DYJSScriptingContext

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

- (id)getGlobalJSONObject:(const char *)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = JSStringCreateWithUTF8CString(a3);
  exception = 0;
  Property = JSObjectGetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v5, &exception);
  if (exception)
  {
    v7 = *MEMORY[0x277D85DF8];
    [(DYJSScriptingContext *)self _jsValueToString:?];
    v8 = [(NSString *)self->_filename UTF8String];
    if (v19 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    fprintf(v7, "[DYJSScripting] %s when getting %s (%s)", v9, a3, v8);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v10 = Property;
  JSStringRelease(v5);
  result = JSValueCreateJSONString([(JSContext *)self->_context JSGlobalContextRef], v10, 4u, 0);
  if (result)
  {
    v12 = result;
    result = JSStringGetLength(result);
    if (result)
    {
      v13 = result;
      v14 = malloc_type_malloc(result + 1, 0x100004077774924uLL);
      __p[0] = 0;
      result = [MEMORY[0x277CCAAA0] JSONObjectWithData:objc_msgSend(MEMORY[0x277CBEA90] options:"dataWithBytesNoCopy:length:" error:{v14, JSStringGetUTF8CString(v12, v14, v13 + 1)), 0, __p}];
      if (__p[0])
      {
        v15 = [__p[0] localizedDescription];
        v16 = *MEMORY[0x277D85DF8];
        if (v15)
        {
          v17 = [v15 UTF8String];
        }

        else
        {
          v17 = "";
        }

        fprintf(v16, "[DYJSScripting] %s when getting %s (%s)", v17, a3, [(NSString *)self->_filename UTF8String]);
        return 0;
      }
    }
  }

  return result;
}

- (BOOL)setGlobalJSONObject:(const char *)a3 value:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v7 = [(DYJSScriptingContext *)self _cachedStringFromString:?];
  v23 = 0;
  v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a4 options:1 error:&v23];
  if (v23)
  {
    v9 = [v23 localizedDescription];
    v10 = *MEMORY[0x277D85DF8];
    if (v9)
    {
      v11 = [v9 UTF8String];
    }

    else
    {
      v11 = "";
    }

    fprintf(v10, "[DYJSScripting] %s when setting %s (%s)", v11, a3, [(NSString *)self->_filename UTF8String]);
    return 0;
  }

  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
  v13 = JSStringCreateWithUTF8CString([v12 UTF8String]);

  if (!v13)
  {
    return 0;
  }

  v14 = JSValueMakeFromJSONString([(JSContext *)self->_context JSGlobalContextRef], v13);
  exception = 0;
  JSObjectSetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v7, v14, 0, &exception);
  JSStringRelease(v13);
  v15 = exception == 0;
  if (exception)
  {
    v16 = *MEMORY[0x277D85DF8];
    [(DYJSScriptingContext *)self _jsValueToString:?];
    v17 = [(NSString *)self->_filename UTF8String];
    v18 = v21 >= 0 ? &__p : __p;
    fprintf(v16, "[DYJSScripting] %s when setting %s (%s)", v18, a3, v17);
    if (v21 < 0)
    {
      operator delete(__p);
    }
  }

  return v15;
}

- (double)getGlobalDouble:(const char *)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v5 = JSStringCreateWithUTF8CString(a3);
  Property = JSObjectGetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v5, 0);
  JSStringRelease(v5);
  exception = 0;
  v7 = JSValueToNumber([(JSContext *)self->_context JSGlobalContextRef], Property, &exception);
  if (exception)
  {
    v8 = *MEMORY[0x277D85DF8];
    [(DYJSScriptingContext *)self _jsValueToString:?];
    v9 = [(NSString *)self->_filename UTF8String];
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    fprintf(v8, "[DYJSScripting] %s when setting %s (%s)", p_p, a3, v9);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

  return v7;
}

- (void)setGlobalDouble:(const char *)a3 value:(double)a4
{
  if (a3)
  {
    v7 = [(DYJSScriptingContext *)self _cachedStringFromString:?];
    Number = JSValueMakeNumber([(JSContext *)self->_context JSGlobalContextRef], a4);
    exception = 0;
    JSObjectSetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v7, Number, 0, &exception);
    if (exception)
    {
      v9 = *MEMORY[0x277D85DF8];
      [(DYJSScriptingContext *)self _jsValueToString:?];
      v10 = [(NSString *)self->_filename UTF8String];
      if (v13 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      fprintf(v9, "[DYJSScripting] %s when setting %s (%s)", p_p, a3, v10);
      if (v13 < 0)
      {
        operator delete(__p);
      }
    }
  }
}

- (double)callGlobalFunction:(const char *)a3
{
  v3 = 0.0;
  if (!a3)
  {
    return v3;
  }

  v6 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ (a3 >> 32));
  v7 = 0x9DDFEA08EB382D69 * ((a3 >> 32) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  size = self->_cache.__table_.__bucket_list_.__deleter_.__size_;
  if (size)
  {
    v10 = vcnt_s8(size);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = v8;
      if (v8 >= size)
      {
        v11 = v8 % size;
      }
    }

    else
    {
      v11 = v8 & (size - 1);
    }

    v12 = self->_cache.__table_.__bucket_list_.__ptr_[v11];
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (i[2] == a3)
          {
            exception = 0;
            v25 = i[3];
            goto LABEL_42;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v14 >= size)
            {
              v14 %= size;
            }
          }

          else
          {
            v14 &= size - 1;
          }

          if (v14 != v11)
          {
            break;
          }
        }
      }
    }
  }

  exception = 0;
  v15 = JSValueToObject(-[JSContext JSGlobalContextRef](self->_context, "JSGlobalContextRef"), -[JSValue JSValueRef](-[JSContext objectForKeyedSubscript:](self->_context, "objectForKeyedSubscript:", [MEMORY[0x277CCACA8] stringWithUTF8String:a3]), "JSValueRef"), &exception);
  if (exception)
  {
    v16 = *MEMORY[0x277D85DF8];
    [(DYJSScriptingContext *)self _jsValueToString:?];
    v17 = [(NSString *)self->_filename UTF8String];
    if (v32 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    fprintf(v16, "[DYJSScripting] %s when calling %s (%s)", v18, a3, v17);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    return v3;
  }

  v25 = v15;
  v19 = self->_cache.__table_.__bucket_list_.__deleter_.__size_;
  if (!v19)
  {
    goto LABEL_41;
  }

  v20 = vcnt_s8(v19);
  v20.i16[0] = vaddlv_u8(v20);
  if (v20.u32[0] > 1uLL)
  {
    v21 = v8;
    if (v8 >= v19)
    {
      v21 = v8 % v19;
    }
  }

  else
  {
    v21 = v8 & (v19 - 1);
  }

  v22 = self->_cache.__table_.__bucket_list_.__ptr_[v21];
  if (!v22 || (v23 = *v22) == 0)
  {
LABEL_41:
    operator new();
  }

  while (1)
  {
    v24 = v23[1];
    if (v24 == v8)
    {
      break;
    }

    if (v20.u32[0] > 1uLL)
    {
      if (v24 >= v19)
      {
        v24 %= v19;
      }
    }

    else
    {
      v24 &= v19 - 1;
    }

    if (v24 != v21)
    {
      goto LABEL_41;
    }

LABEL_40:
    v23 = *v23;
    if (!v23)
    {
      goto LABEL_41;
    }
  }

  if (v23[2] != a3)
  {
    goto LABEL_40;
  }

  v23[3] = v15;
LABEL_42:
  v26 = JSObjectCallAsFunction([(JSContext *)self->_context JSGlobalContextRef], v25, 0, 0, 0, &exception);
  if (exception)
  {
    v27 = *MEMORY[0x277D85DF8];
    [(DYJSScriptingContext *)self _jsValueToString:?];
    v28 = [(NSString *)self->_filename UTF8String];
    if (v32 >= 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    fprintf(v27, "[DYJSScripting] %s when calling %s (%s)", v29, a3, v28);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return JSValueToNumber([(JSContext *)self->_context JSGlobalContextRef], v26, 0);
}

- (OpaqueJSString)_cachedStringFromString:(const char *)a3
{
  if (a3)
  {
    v5 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ (a3 >> 32));
    v6 = 0x9DDFEA08EB382D69 * ((a3 >> 32) ^ (v5 >> 47) ^ v5);
    v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
    size = self->_stringCache.__table_.__bucket_list_.__deleter_.__size_;
    if (!size)
    {
      goto LABEL_19;
    }

    v9 = vcnt_s8(size);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v7;
      if (v7 >= size)
      {
        v10 = v7 % size;
      }
    }

    else
    {
      v10 = v7 & (size - 1);
    }

    v12 = self->_stringCache.__table_.__bucket_list_.__ptr_[v10];
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_19:
      v11 = JSStringCreateWithUTF8CString(a3);
      JSStringRetain(v11);
      v15 = self->_stringCache.__table_.__bucket_list_.__deleter_.__size_;
      if (!v15)
      {
        goto LABEL_36;
      }

      v16 = vcnt_s8(v15);
      v16.i16[0] = vaddlv_u8(v16);
      if (v16.u32[0] > 1uLL)
      {
        v17 = v7;
        if (v7 >= v15)
        {
          v17 = v7 % v15;
        }
      }

      else
      {
        v17 = v7 & (v15 - 1);
      }

      v18 = self->_stringCache.__table_.__bucket_list_.__ptr_[v17];
      if (!v18 || (v19 = *v18) == 0)
      {
LABEL_36:
        operator new();
      }

      while (1)
      {
        v20 = v19[1];
        if (v20 == v7)
        {
          if (v19[2] == a3)
          {
            v19[3] = v11;
            return v11;
          }
        }

        else
        {
          if (v16.u32[0] > 1uLL)
          {
            if (v20 >= v15)
            {
              v20 %= v15;
            }
          }

          else
          {
            v20 &= v15 - 1;
          }

          if (v20 != v17)
          {
            goto LABEL_36;
          }
        }

        v19 = *v19;
        if (!v19)
        {
          goto LABEL_36;
        }
      }
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v7)
      {
        if (v13[2] == a3)
        {
          return v13[3];
        }
      }

      else
      {
        if (v9.u32[0] > 1uLL)
        {
          if (v14 >= size)
          {
            v14 %= size;
          }
        }

        else
        {
          v14 &= size - 1;
        }

        if (v14 != v10)
        {
          goto LABEL_19;
        }
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_19;
      }
    }
  }

  return 0;
}

- (double)callFunction:(id)a3 withArguments:(id)a4
{
  v4 = [(JSValue *)[(JSContext *)self->_context objectForKeyedSubscript:a3] callWithArguments:a4];

  [(JSValue *)v4 toDouble];
  return result;
}

- (BOOL)evaluteScript:(id)a3 scriptURL:(id)a4
{
  [(DYJSScriptingContext *)self _clearCache];
  if (a4)
  {
    self->_filename = [objc_msgSend(a4 "lastPathComponent")];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  context = self->_context;
  exceptionHandler = self->_exceptionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__DYJSScriptingContext_evaluteScript_scriptURL___block_invoke;
  v12[3] = &unk_279658160;
  v12[4] = exceptionHandler;
  v12[5] = &v13;
  [(JSContext *)context setExceptionHandler:v12];
  v9 = self->_context;
  if (a4)
  {
    [(JSContext *)v9 evaluateScript:a3 withSourceURL:a4];
  }

  else
  {
    [(JSContext *)v9 evaluateScript:a3];
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return (v10 & 1) == 0;
}

uint64_t __48__DYJSScriptingContext_evaluteScript_scriptURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [a3 toString];
    v5 = *(v3 + 16);

    return v5(v3, v4);
  }

  else
  {
    v7 = *MEMORY[0x277D85DF8];
    v8 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"[DYJSScripting] %@ %@", objc_msgSend(a3, "toString"), objc_msgSend(a3, "toDictionary")), "UTF8String"];

    return fputs(v8, v7);
  }
}

- (void)_clearCache
{
  for (i = self->_stringCache.__table_.__first_node_.__next_; i; i = *i)
  {
    JSStringRelease(*(i + 3));
  }

  if (self->_stringCache.__table_.__size_)
  {
    next = self->_stringCache.__table_.__first_node_.__next_;
    if (next)
    {
      do
      {
        v5 = *next;
        operator delete(next);
        next = v5;
      }

      while (v5);
    }

    self->_stringCache.__table_.__first_node_.__next_ = 0;
    size = self->_stringCache.__table_.__bucket_list_.__deleter_.__size_;
    if (size)
    {
      for (j = 0; j != size; ++j)
      {
        self->_stringCache.__table_.__bucket_list_.__ptr_[j] = 0;
      }
    }

    self->_stringCache.__table_.__size_ = 0;
  }

  if (self->_cache.__table_.__size_)
  {
    v8 = self->_cache.__table_.__first_node_.__next_;
    if (v8)
    {
      do
      {
        v9 = *v8;
        operator delete(v8);
        v8 = v9;
      }

      while (v9);
    }

    self->_cache.__table_.__first_node_.__next_ = 0;
    v10 = self->_cache.__table_.__bucket_list_.__deleter_.__size_;
    if (v10)
    {
      for (k = 0; k != v10; ++k)
      {
        self->_cache.__table_.__bucket_list_.__ptr_[k] = 0;
      }
    }

    self->_cache.__table_.__size_ = 0;
  }
}

- (void)setValues:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __34__DYJSScriptingContext_setValues___block_invoke;
  v3[3] = &unk_279658138;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)setRawArrayValues:(id)a3 withUint64Values:(unint64_t *)a4 andNumCounters:(unint64_t)a5
{
  v8 = -[DYJSScriptingContext _cachedStringFromString:](self, "_cachedStringFromString:", [a3 UTF8String]);
  exception = 0;
  Array = JSObjectMakeArray([(JSContext *)self->_context JSGlobalContextRef], 0, 0, &exception);
  if (a5)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [(JSContext *)self->_context JSGlobalContextRef];
      Number = JSValueMakeNumber([(JSContext *)self->_context JSGlobalContextRef], a4[v10]);
      JSObjectSetPropertyAtIndex(v12, Array, v11 - 1, Number, &exception);
      v10 = v11++;
    }

    while (v10 < a5);
  }

  JSObjectSetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v8, Array, 0, &exception);
}

- (OpaqueJSValue)createArrayRef:(id)a3
{
  v4 = -[DYJSScriptingContext _cachedStringFromString:](self, "_cachedStringFromString:", [a3 UTF8String]);
  exception = 0;
  Array = JSObjectMakeArray([(JSContext *)self->_context JSGlobalContextRef], 0, 0, &exception);
  JSObjectSetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v4, Array, 0, &exception);
  return Array;
}

- (void)setRawArrayValues:(id)a3 withUint32Values:(unsigned int *)a4 andNumCounters:(unint64_t)a5
{
  v8 = -[DYJSScriptingContext _cachedStringFromString:](self, "_cachedStringFromString:", [a3 UTF8String]);
  exception = 0;
  Array = JSObjectMakeArray([(JSContext *)self->_context JSGlobalContextRef], 0, 0, &exception);
  if (a5)
  {
    v10 = 0;
    do
    {
      v11 = [(JSContext *)self->_context JSGlobalContextRef];
      v12 = [(JSContext *)self->_context JSGlobalContextRef];
      LODWORD(v13) = a4[v10];
      Number = JSValueMakeNumber(v12, v13);
      JSObjectSetPropertyAtIndex(v11, Array, v10++, Number, &exception);
    }

    while (a5 != v10);
  }

  JSObjectSetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v8, Array, 0, &exception);
}

- (id)setValue:(id)a3 value:(id)a4
{
  v6 = [MEMORY[0x277CD4658] valueWithObject:a4 inContext:self->_context];
  [(JSContext *)self->_context setObject:v6 forKeyedSubscript:a3];
  return v6;
}

- (basic_string<char,)_jsValueToString:(std::allocator<char>> *__return_ptr)retstr
{
  v3 = v1;
  result = JSValueToStringCopy([v1[14] JSGlobalContextRef], v2, 0);
  if (result)
  {

    return [v3 _jsStringToString:result];
  }

  else
  {
    retstr->var0.var1.var0 = 0;
    retstr->var0.var1.var1 = 0;
    *(&retstr->var0.var1 + 2) = 0;
  }

  return result;
}

- (basic_string<char,)_jsStringToString:(std::allocator<char>> *__return_ptr)retstr
{
  if (v2 && (v4 = v2, (result = JSStringGetLength(v2)) != 0))
  {
    v5 = result;
    v6 = malloc_type_malloc(&result->var0.var0.var0[1], 0x100004077774924uLL);
    UTF8CString = JSStringGetUTF8CString(v4, v6, &v5->var0.var0.var0[1]);
    if (UTF8CString >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v8 = UTF8CString;
    if (UTF8CString >= 0x17)
    {
      operator new();
    }

    *(&retstr->var0.var1 + 23) = UTF8CString;
    if (UTF8CString)
    {
      memmove(retstr, v6, UTF8CString);
    }

    retstr->var0.var0.var0[v8] = 0;

    free(v6);
  }

  else
  {
    retstr->var0.var1.var0 = 0;
    retstr->var0.var1.var1 = 0;
    *(&retstr->var0.var1 + 2) = 0;
  }

  return result;
}

- (void)dealloc
{
  [(DYJSScriptingContext *)self _clearCache];
  v3.receiver = self;
  v3.super_class = DYJSScriptingContext;
  [(DYJSScriptingContext *)&v3 dealloc];
}

- (void)allocNewContext
{
  v3 = [objc_alloc(MEMORY[0x277CD4640]) initWithVirtualMachine:self->_virtualMachine];
  self->_context = v3;
  self->_globalObject = JSContextGetGlobalObject([(JSContext *)v3 JSGlobalContextRef]);
}

- (DYJSScriptingContext)init
{
  v5.receiver = self;
  v5.super_class = DYJSScriptingContext;
  v2 = [(DYJSScriptingContext *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD4660]);
    v2->_filename = @"n/a";
    v2->_virtualMachine = v3;
    [(DYJSScriptingContext *)v2 allocNewContext];
  }

  return v2;
}

+ (id)sharedContext
{
  if (+[DYJSScriptingContext sharedContext]::once != -1)
  {
    dispatch_once(&+[DYJSScriptingContext sharedContext]::once, &__block_literal_global_2954);
  }

  return +[DYJSScriptingContext sharedContext]::instance;
}

DYJSScriptingContext *__37__DYJSScriptingContext_sharedContext__block_invoke()
{
  result = objc_alloc_init(DYJSScriptingContext);
  +[DYJSScriptingContext sharedContext]::instance = result;
  return result;
}

@end