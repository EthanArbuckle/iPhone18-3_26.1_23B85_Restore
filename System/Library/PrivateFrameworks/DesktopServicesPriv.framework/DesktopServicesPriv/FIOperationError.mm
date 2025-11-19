@interface FIOperationError
- (FIOperationError)initWithError:(id)a3;
- (FIOperationError)initWithErrorRecord:(const OperationErrorRecord *)a3;
- (id)debugDescription;
@end

@implementation FIOperationError

- (FIOperationError)initWithErrorRecord:(const OperationErrorRecord *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = FIOperationError;
  v4 = [(FIOperationError *)&v37 init];
  v5 = [(NSError *)v4->_error userInfo];
  if (v5)
  {
    v6 = [(NSError *)v4->_error userInfo];
    v7 = MutableCopy<NSDictionary<NSString *,objc_object *>>(v6);
  }

  else
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
  }

  v8 = strnlen(a3->var3, 0x400uLL);
  if (v8)
  {
    v9 = v8;
    bzero(__dst, 0x400uLL);
    strlcpy(__dst, a3->var3, v9 + 1);
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__dst];
    cf = 0;
    v36 = 0;
    if (__dst[0] == 47)
    {
      TString::TString(&v34, __dst);
      TNode::GetNodeFromPath(&v34, &v36, 0x2000u);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34.fString.fRef);
    }

    else
    {
      v34.fString.fRef = CFURLCreateWithString(0, v10, 0);
      cf = v34.fString.fRef;
      TNode::GetNodeFromURL(&v34, &v36, 0x2000u);
    }

    v11 = TNodeFromFINode(v36);
    v12 = FINodeFromTNode(v11);
    node = v4->_node;
    v4->_node = v12;

    v14 = v4->_node;
    if (v14)
    {
      v15 = [(FINode *)v14 fileURL];
      url = v4->_url;
      v4->_url = v15;
    }

    p_url = &v4->_url;
    if (!v4->_url)
    {
      objc_storeStrong(&v4->_url, cf);
    }

    if (v4->_node)
    {
      v18 = [v7 objectForKeyedSubscript:@"FIOperationErrorNode"];
      v19 = v18 == 0;

      if (v19)
      {
        [v7 setObject:v4->_node forKeyedSubscript:@"FIOperationErrorNode"];
      }
    }

    if (*p_url)
    {
      v20 = *MEMORY[0x1E696A998];
      v21 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A998]];
      v22 = v21 == 0;

      if (v22)
      {
        [v7 setObject:*p_url forKeyedSubscript:v20];
      }
    }

    if ([(__CFString *)v10 length])
    {
      v23 = *MEMORY[0x1E696A368];
      v24 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A368]];
      v25 = v24 == 0;

      if (v25)
      {
        [v7 setObject:v10 forKeyedSubscript:v23];
      }
    }

    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&cf);
  }

  var5 = a3->var5;
  if (var5)
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = [var5 domain];
    v29 = [v27 errorWithDomain:v28 code:objc_msgSend(a3->var5 userInfo:{"code"), v7}];
    error = v4->_error;
    v4->_error = v29;
  }

  else
  {
    if (a3->var0)
    {
      ErrorWithOSStatus(a3->var0, v7);
    }

    else
    {
      ErrorWithOSStatus(-50, v7);
    }
    v31 = ;
    v28 = v4->_error;
    v4->_error = v31;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v4;
}

- (FIOperationError)initWithError:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = FIOperationError;
  v5 = [(FIOperationError *)&v16 init];
  v6 = [(NSError *)v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"FIOperationErrorNode"];
  v8 = objc_cast<FINode,objc_object * {__strong}>(v7);
  node = v5->_node;
  v5->_node = v8;

  v10 = [(NSError *)v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696A998]];
  v12 = objc_cast<NSURL,objc_object * {__strong}>(v11);
  url = v5->_url;
  v5->_url = v12;

  error = v5->_error;
  v5->_error = v4;

  return v5;
}

- (id)debugDescription
{
  v3 = [(FIOperationError *)self node];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3)
  {
    v7 = [(FIOperationError *)self node];
    v8 = [(FIOperationError *)self error];
    [v4 stringWithFormat:@"<%@:%p - node: %@\n\terror: %@>", v6, self, v7, v8];
  }

  else
  {
    v7 = [(FIOperationError *)self url];
    v8 = [(FIOperationError *)self error];
    [v4 stringWithFormat:@"<%@:%p - url: %@\n\terror: %@>", v6, self, v7, v8];
  }
  v9 = ;

  return v9;
}

@end