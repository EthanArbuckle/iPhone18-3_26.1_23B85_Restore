@interface ENSecKey
+ (id)keyFromBase64String:(id)a3 keyClass:(__CFString *)a4 error:(id *)a5;
- (ENSecKey)initWithKeyRef:(__SecKey *)a3;
- (void)dealloc;
@end

@implementation ENSecKey

- (ENSecKey)initWithKeyRef:(__SecKey *)a3
{
  v6.receiver = self;
  v6.super_class = ENSecKey;
  v4 = [(ENSecKey *)&v6 init];
  if (v4)
  {
    CFRetain(a3);
    v4->_keyRef = a3;
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

+ (id)keyFromBase64String:(id)a3 keyClass:(__CFString *)a4 error:(id *)a5
{
  v6 = a3;
  if (v6)
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

  else if (a5)
  {
    ENErrorF();
    *a5 = v9 = 0;
    goto LABEL_4;
  }

  v9 = 0;
LABEL_4:

  return v9;
}

@end