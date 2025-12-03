@interface DYJSScriptingContext
+ (id)sharedContext;
- (BOOL)evaluteScript:(id)script scriptURL:(id)l;
- (BOOL)setGlobalJSONObject:(const char *)object value:(id)value;
- (DYJSScriptingContext)init;
- (OpaqueJSString)_cachedStringFromString:(const char *)string;
- (OpaqueJSValue)createArrayRef:(id)ref;
- (basic_string<char,)_jsStringToString:(std::allocator<char>> *__return_ptr)retstr;
- (basic_string<char,)_jsValueToString:(std::allocator<char>> *__return_ptr)retstr;
- (double)callFunction:(id)function withArguments:(id)arguments;
- (double)callGlobalFunction:(const char *)function;
- (double)getGlobalDouble:(const char *)double;
- (id).cxx_construct;
- (id)getGlobalJSONObject:(const char *)object;
- (id)setValue:(id)value value:(id)a4;
- (void)_clearCache;
- (void)allocNewContext;
- (void)dealloc;
- (void)setGlobalDouble:(const char *)double value:(double)value;
- (void)setRawArrayValues:(id)values withUint32Values:(unsigned int *)uint32Values andNumCounters:(unint64_t)counters;
- (void)setRawArrayValues:(id)values withUint64Values:(unint64_t *)uint64Values andNumCounters:(unint64_t)counters;
- (void)setValues:(id)values;
@end

@implementation DYJSScriptingContext

+ (id)sharedContext
{
  if (+[DYJSScriptingContext sharedContext]::once != -1)
  {
    +[DYJSScriptingContext sharedContext];
  }

  return +[DYJSScriptingContext sharedContext]::instance;
}

DYJSScriptingContext *__37__DYJSScriptingContext_sharedContext__block_invoke()
{
  result = objc_alloc_init(DYJSScriptingContext);
  +[DYJSScriptingContext sharedContext]::instance = result;
  return result;
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

- (void)allocNewContext
{
  v3 = [objc_alloc(MEMORY[0x277CD4640]) initWithVirtualMachine:self->_virtualMachine];
  self->_context = v3;
  self->_globalObject = JSContextGetGlobalObject([(JSContext *)v3 JSGlobalContextRef]);
}

- (void)dealloc
{
  [(DYJSScriptingContext *)self _clearCache];
  v3.receiver = self;
  v3.super_class = DYJSScriptingContext;
  [(DYJSScriptingContext *)&v3 dealloc];
}

- (basic_string<char,)_jsStringToString:(std::allocator<char>> *__return_ptr)retstr
{
  if (v2 && (v4 = v2, (result = JSStringGetLength(v2)) != 0))
  {
    v5 = result;
    v6 = malloc_type_malloc(&result->var0.var0.var0[1], 0x100004077774924uLL);
    UTF8CString = JSStringGetUTF8CString(v4, v6, &v5->var0.var0.var0[1]);
    std::string::__init_with_size[abi:ne200100]<char *,char *>(retstr, v6, &v6[UTF8CString], UTF8CString);

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

- (id)setValue:(id)value value:(id)a4
{
  v6 = [MEMORY[0x277CD4658] valueWithObject:a4 inContext:self->_context];
  [(JSContext *)self->_context setObject:v6 forKeyedSubscript:value];
  return v6;
}

- (void)setRawArrayValues:(id)values withUint32Values:(unsigned int *)uint32Values andNumCounters:(unint64_t)counters
{
  v8 = -[DYJSScriptingContext _cachedStringFromString:](self, "_cachedStringFromString:", [values UTF8String]);
  exception = 0;
  Array = JSObjectMakeArray([(JSContext *)self->_context JSGlobalContextRef], 0, 0, &exception);
  if (counters)
  {
    v10 = 0;
    do
    {
      jSGlobalContextRef = [(JSContext *)self->_context JSGlobalContextRef];
      jSGlobalContextRef2 = [(JSContext *)self->_context JSGlobalContextRef];
      LODWORD(v13) = uint32Values[v10];
      Number = JSValueMakeNumber(jSGlobalContextRef2, v13);
      JSObjectSetPropertyAtIndex(jSGlobalContextRef, Array, v10++, Number, &exception);
    }

    while (counters != v10);
  }

  JSObjectSetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v8, Array, 0, &exception);
}

- (OpaqueJSValue)createArrayRef:(id)ref
{
  v4 = -[DYJSScriptingContext _cachedStringFromString:](self, "_cachedStringFromString:", [ref UTF8String]);
  exception = 0;
  Array = JSObjectMakeArray([(JSContext *)self->_context JSGlobalContextRef], 0, 0, &exception);
  JSObjectSetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v4, Array, 0, &exception);
  return Array;
}

- (void)setRawArrayValues:(id)values withUint64Values:(unint64_t *)uint64Values andNumCounters:(unint64_t)counters
{
  v8 = -[DYJSScriptingContext _cachedStringFromString:](self, "_cachedStringFromString:", [values UTF8String]);
  exception = 0;
  Array = JSObjectMakeArray([(JSContext *)self->_context JSGlobalContextRef], 0, 0, &exception);
  if (counters)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      jSGlobalContextRef = [(JSContext *)self->_context JSGlobalContextRef];
      Number = JSValueMakeNumber([(JSContext *)self->_context JSGlobalContextRef], uint64Values[v10]);
      JSObjectSetPropertyAtIndex(jSGlobalContextRef, Array, v11++, Number, &exception);
      v10 = v11;
    }

    while (v11 < counters);
  }

  JSObjectSetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v8, Array, 0, &exception);
}

- (void)setValues:(id)values
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __34__DYJSScriptingContext_setValues___block_invoke;
  v3[3] = &unk_279309F40;
  v3[4] = self;
  [values enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_clearCache
{
  for (i = self->_stringCache.__table_.__first_node_.__next_; i; i = *i)
  {
    JSStringRelease(*(i + 3));
  }

  std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::clear(&self->_stringCache.__table_.__bucket_list_.__ptr_);

  std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::clear(&self->_cache.__table_.__bucket_list_.__ptr_);
}

- (BOOL)evaluteScript:(id)script scriptURL:(id)l
{
  [(DYJSScriptingContext *)self _clearCache];
  if (l)
  {
    self->_filename = [objc_msgSend(l "lastPathComponent")];
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
  v12[3] = &unk_279309F68;
  v12[4] = exceptionHandler;
  v12[5] = &v13;
  [(JSContext *)context setExceptionHandler:v12];
  v9 = self->_context;
  if (l)
  {
    [(JSContext *)v9 evaluateScript:script withSourceURL:l];
  }

  else
  {
    [(JSContext *)v9 evaluateScript:script];
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

- (double)callFunction:(id)function withArguments:(id)arguments
{
  v4 = [(JSValue *)[(JSContext *)self->_context objectForKeyedSubscript:function] callWithArguments:arguments];

  [(JSValue *)v4 toDouble];
  return result;
}

- (OpaqueJSString)_cachedStringFromString:(const char *)string
{
  string[0] = string;
  if (!string)
  {
    return 0;
  }

  v4 = std::__hash_table<std::__hash_value_type<char const*,OpaqueJSString *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,OpaqueJSString *>>>::find<char const*>(&self->_stringCache.__table_.__bucket_list_.__ptr_, string);
  if (v4)
  {
    return v4[3];
  }

  v5 = JSStringCreateWithUTF8CString(string[0]);
  JSStringRetain(v5);
  string[2] = string;
  std::__hash_table<std::__hash_value_type<char const*,OpaqueJSString *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,OpaqueJSString *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&self->_stringCache.__table_.__bucket_list_.__ptr_, string)[3] = v5;
  return v5;
}

- (double)callGlobalFunction:(const char *)function
{
  functionCopy = function;
  v3 = 0.0;
  if (!function)
  {
    return v3;
  }

  v5 = std::__hash_table<std::__hash_value_type<char const*,OpaqueJSString *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,OpaqueJSString *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,OpaqueJSString *>>>::find<char const*>(&self->_cache.__table_.__bucket_list_.__ptr_, &functionCopy);
  exception = 0;
  if (v5)
  {
    v6 = v5[3];
LABEL_4:
    v7 = JSObjectCallAsFunction([(JSContext *)self->_context JSGlobalContextRef], v6, 0, 0, 0, &exception);
    if (exception)
    {
      v8 = *MEMORY[0x277D85DF8];
      [(DYJSScriptingContext *)self _jsValueToString:?];
      v9 = functionCopy;
      uTF8String = [(NSString *)self->_filename UTF8String];
      if (v19 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      fprintf(v8, "[DYJSScripting] %s when calling %s (%s)", v11, v9, uTF8String);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return JSValueToNumber([(JSContext *)self->_context JSGlobalContextRef], v7, 0);
  }

  v13 = JSValueToObject(-[JSContext JSGlobalContextRef](self->_context, "JSGlobalContextRef"), -[JSValue JSValueRef](-[JSContext objectForKeyedSubscript:](self->_context, "objectForKeyedSubscript:", [MEMORY[0x277CCACA8] stringWithUTF8String:functionCopy]), "JSValueRef"), &exception);
  if (!exception)
  {
    v6 = v13;
    __p[0] = &functionCopy;
    std::__hash_table<std::__hash_value_type<char const*,OpaqueJSValue *>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,OpaqueJSValue *>,std::hash<char const*>,std::equal_to<char const*>,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,OpaqueJSValue *>,std::equal_to<char const*>,std::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,OpaqueJSValue *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&self->_cache.__table_.__bucket_list_.__ptr_, &functionCopy)[3] = v13;
    goto LABEL_4;
  }

  v14 = *MEMORY[0x277D85DF8];
  [(DYJSScriptingContext *)self _jsValueToString:?];
  v15 = functionCopy;
  uTF8String2 = [(NSString *)self->_filename UTF8String];
  if (v19 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  fprintf(v14, "[DYJSScripting] %s when calling %s (%s)", v17, v15, uTF8String2);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

- (void)setGlobalDouble:(const char *)double value:(double)value
{
  if (double)
  {
    v7 = [(DYJSScriptingContext *)self _cachedStringFromString:?];
    Number = JSValueMakeNumber([(JSContext *)self->_context JSGlobalContextRef], value);
    exception = 0;
    JSObjectSetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v7, Number, 0, &exception);
    if (exception)
    {
      v9 = *MEMORY[0x277D85DF8];
      [(DYJSScriptingContext *)self _jsValueToString:?];
      uTF8String = [(NSString *)self->_filename UTF8String];
      if (v13 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      fprintf(v9, "[DYJSScripting] %s when setting %s (%s)", p_p, double, uTF8String);
      if (v13 < 0)
      {
        operator delete(__p);
      }
    }
  }
}

- (double)getGlobalDouble:(const char *)double
{
  if (!double)
  {
    return 0.0;
  }

  v5 = JSStringCreateWithUTF8CString(double);
  Property = JSObjectGetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v5, 0);
  JSStringRelease(v5);
  exception = 0;
  v7 = JSValueToNumber([(JSContext *)self->_context JSGlobalContextRef], Property, &exception);
  if (exception)
  {
    v8 = *MEMORY[0x277D85DF8];
    [(DYJSScriptingContext *)self _jsValueToString:?];
    uTF8String = [(NSString *)self->_filename UTF8String];
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    fprintf(v8, "[DYJSScripting] %s when setting %s (%s)", p_p, double, uTF8String);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }

  return v7;
}

- (BOOL)setGlobalJSONObject:(const char *)object value:(id)value
{
  if (!object)
  {
    return 0;
  }

  v7 = [(DYJSScriptingContext *)self _cachedStringFromString:?];
  v23 = 0;
  v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:value options:1 error:&v23];
  if (v23)
  {
    localizedDescription = [v23 localizedDescription];
    v10 = *MEMORY[0x277D85DF8];
    if (localizedDescription)
    {
      uTF8String = [localizedDescription UTF8String];
    }

    else
    {
      uTF8String = "";
    }

    fprintf(v10, "[DYJSScripting] %s when setting %s (%s)", uTF8String, object, [(NSString *)self->_filename UTF8String]);
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
    uTF8String2 = [(NSString *)self->_filename UTF8String];
    v18 = v21 >= 0 ? &__p : __p;
    fprintf(v16, "[DYJSScripting] %s when setting %s (%s)", v18, object, uTF8String2);
    if (v21 < 0)
    {
      operator delete(__p);
    }
  }

  return v15;
}

- (id)getGlobalJSONObject:(const char *)object
{
  if (!object)
  {
    return 0;
  }

  v5 = JSStringCreateWithUTF8CString(object);
  exception = 0;
  Property = JSObjectGetProperty([(JSContext *)self->_context JSGlobalContextRef], self->_globalObject, v5, &exception);
  if (exception)
  {
    v7 = *MEMORY[0x277D85DF8];
    [(DYJSScriptingContext *)self _jsValueToString:?];
    uTF8String = [(NSString *)self->_filename UTF8String];
    if (v19 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    fprintf(v7, "[DYJSScripting] %s when getting %s (%s)", v9, object, uTF8String);
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
        localizedDescription = [__p[0] localizedDescription];
        v16 = *MEMORY[0x277D85DF8];
        if (localizedDescription)
        {
          uTF8String2 = [localizedDescription UTF8String];
        }

        else
        {
          uTF8String2 = "";
        }

        fprintf(v16, "[DYJSScripting] %s when getting %s (%s)", uTF8String2, object, [(NSString *)self->_filename UTF8String]);
        return 0;
      }
    }
  }

  return result;
}

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

@end