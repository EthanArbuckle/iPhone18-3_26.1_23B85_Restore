@interface CRKIfaddrsEnumerator
+ (id)enumeratorWithError:(id *)a3;
+ (id)internetInterfaceEnumeratorWithError:(id *)a3;
- (CRKIfaddrsEnumerator)initWithError:(id *)a3;
- (CRKIfaddrsEnumerator)initWithInterfaces:(ifaddrs *)a3;
- (id)nextObject;
- (void)dealloc;
@end

@implementation CRKIfaddrsEnumerator

+ (id)enumeratorWithError:(id *)a3
{
  v3 = [[a1 alloc] initWithError:a3];

  return v3;
}

+ (id)internetInterfaceEnumeratorWithError:(id *)a3
{
  v3 = [a1 enumeratorWithError:a3];
  if (v3)
  {
    v4 = [[CRKFilteredEnumerator alloc] initWithEnumerator:v3 filterBlock:&__block_literal_global_88];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  mInterfaces = self->mInterfaces;
  if (mInterfaces)
  {
    MEMORY[0x245D3A6A0](mInterfaces, a2);
  }

  v4.receiver = self;
  v4.super_class = CRKIfaddrsEnumerator;
  [(CRKIfaddrsEnumerator *)&v4 dealloc];
}

- (CRKIfaddrsEnumerator)initWithError:(id *)a3
{
  v8 = 0;
  v5 = getifaddrs(&v8);
  if (v5)
  {
    if (a3)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v5 userInfo:0];
      *a3 = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    self = [(CRKIfaddrsEnumerator *)self initWithInterfaces:v8];
    v6 = self;
  }

  return v6;
}

- (CRKIfaddrsEnumerator)initWithInterfaces:(ifaddrs *)a3
{
  v9.receiver = self;
  v9.super_class = CRKIfaddrsEnumerator;
  v4 = [(CRKIfaddrsEnumerator *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->mInterfaces = a3;
    if (a3)
    {
      v6 = [[CRKIfaddrs alloc] initWithIfaddrs:v4->mInterfaces];
      mCurrentInterface = v5->mCurrentInterface;
      v5->mCurrentInterface = v6;
    }
  }

  return v5;
}

- (id)nextObject
{
  mCurrentInterface = self->mCurrentInterface;
  if (mCurrentInterface)
  {
    v4 = mCurrentInterface;
    v5 = [(CRKIfaddrs *)self->mCurrentInterface next];
    v6 = self->mCurrentInterface;
    self->mCurrentInterface = v5;
  }

  return mCurrentInterface;
}

@end