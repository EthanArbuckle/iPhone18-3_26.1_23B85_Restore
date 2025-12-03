@interface ENSecKey
+ (id)keyFromBase64String:(id)string keyClass:(__CFString *)class error:(id *)error;
- (ENSecKey)initWithKeyRef:(__SecKey *)ref;
- (void)dealloc;
@end

@implementation ENSecKey

- (ENSecKey)initWithKeyRef:(__SecKey *)ref
{
  v6.receiver = self;
  v6.super_class = ENSecKey;
  v4 = [(ENSecKey *)&v6 init];
  if (v4)
  {
    CFRetain(ref);
    v4->_keyRef = ref;
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_keyRef);
  v3.receiver = self;
  v3.super_class = ENSecKey;
  [(ENSecKey *)&v3 dealloc];
}

+ (id)keyFromBase64String:(id)string keyClass:(__CFString *)class error:(id *)error
{
  stringCopy = string;
  if (stringCopy)
  {
    v7 = ENCopyPublicKeyFromBase64String();
    if (v7)
    {
      v8 = v7;
      CFAutorelease(v7);
      v9 = [[ENSecKey alloc] initWithKeyRef:v8];
      goto LABEL_4;
    }
  }

  else if (error)
  {
    ENErrorF();
    *error = v9 = 0;
    goto LABEL_4;
  }

  v9 = 0;
LABEL_4:

  return v9;
}

@end