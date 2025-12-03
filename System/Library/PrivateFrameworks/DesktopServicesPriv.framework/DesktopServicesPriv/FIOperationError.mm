@interface FIOperationError
- (FIOperationError)initWithError:(id)error;
- (FIOperationError)initWithErrorRecord:(const OperationErrorRecord *)record;
- (id)debugDescription;
@end

@implementation FIOperationError

- (FIOperationError)initWithErrorRecord:(const OperationErrorRecord *)record
{
  v39 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = FIOperationError;
  v4 = [(FIOperationError *)&v37 init];
  userInfo = [(NSError *)v4->_error userInfo];
  if (userInfo)
  {
    userInfo2 = [(NSError *)v4->_error userInfo];
    dictionary = MutableCopy<NSDictionary<NSString *,objc_object *>>(userInfo2);
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v8 = strnlen(record->var3, 0x400uLL);
  if (v8)
  {
    v9 = v8;
    bzero(__dst, 0x400uLL);
    strlcpy(__dst, record->var3, v9 + 1);
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
      fileURL = [(FINode *)v14 fileURL];
      url = v4->_url;
      v4->_url = fileURL;
    }

    p_url = &v4->_url;
    if (!v4->_url)
    {
      objc_storeStrong(&v4->_url, cf);
    }

    if (v4->_node)
    {
      v18 = [dictionary objectForKeyedSubscript:@"FIOperationErrorNode"];
      v19 = v18 == 0;

      if (v19)
      {
        [dictionary setObject:v4->_node forKeyedSubscript:@"FIOperationErrorNode"];
      }
    }

    if (*p_url)
    {
      v20 = *MEMORY[0x1E696A998];
      v21 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E696A998]];
      v22 = v21 == 0;

      if (v22)
      {
        [dictionary setObject:*p_url forKeyedSubscript:v20];
      }
    }

    if ([(__CFString *)v10 length])
    {
      v23 = *MEMORY[0x1E696A368];
      v24 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E696A368]];
      v25 = v24 == 0;

      if (v25)
      {
        [dictionary setObject:v10 forKeyedSubscript:v23];
      }
    }

    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&cf);
  }

  var5 = record->var5;
  if (var5)
  {
    v27 = MEMORY[0x1E696ABC0];
    domain = [var5 domain];
    v29 = [v27 errorWithDomain:domain code:objc_msgSend(record->var5 userInfo:{"code"), dictionary}];
    error = v4->_error;
    v4->_error = v29;
  }

  else
  {
    if (record->var0)
    {
      ErrorWithOSStatus(record->var0, dictionary);
    }

    else
    {
      ErrorWithOSStatus(-50, dictionary);
    }
    v31 = ;
    domain = v4->_error;
    v4->_error = v31;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v4;
}

- (FIOperationError)initWithError:(id)error
{
  errorCopy = error;
  v16.receiver = self;
  v16.super_class = FIOperationError;
  v5 = [(FIOperationError *)&v16 init];
  userInfo = [(NSError *)errorCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"FIOperationErrorNode"];
  v8 = objc_cast<FINode,objc_object * {__strong}>(v7);
  node = v5->_node;
  v5->_node = v8;

  userInfo2 = [(NSError *)errorCopy userInfo];
  v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696A998]];
  v12 = objc_cast<NSURL,objc_object * {__strong}>(v11);
  url = v5->_url;
  v5->_url = v12;

  error = v5->_error;
  v5->_error = errorCopy;

  return v5;
}

- (id)debugDescription
{
  node = [(FIOperationError *)self node];

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (node)
  {
    node2 = [(FIOperationError *)self node];
    error = [(FIOperationError *)self error];
    [v4 stringWithFormat:@"<%@:%p - node: %@\n\terror: %@>", v6, self, node2, error];
  }

  else
  {
    node2 = [(FIOperationError *)self url];
    error = [(FIOperationError *)self error];
    [v4 stringWithFormat:@"<%@:%p - url: %@\n\terror: %@>", v6, self, node2, error];
  }
  v9 = ;

  return v9;
}

@end