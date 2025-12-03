@interface CRKIfaddrsEnumerator
+ (id)enumeratorWithError:(id *)error;
+ (id)internetInterfaceEnumeratorWithError:(id *)error;
- (CRKIfaddrsEnumerator)initWithError:(id *)error;
- (CRKIfaddrsEnumerator)initWithInterfaces:(ifaddrs *)interfaces;
- (id)nextObject;
- (void)dealloc;
@end

@implementation CRKIfaddrsEnumerator

+ (id)enumeratorWithError:(id *)error
{
  v3 = [[self alloc] initWithError:error];

  return v3;
}

+ (id)internetInterfaceEnumeratorWithError:(id *)error
{
  v3 = [self enumeratorWithError:error];
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

- (CRKIfaddrsEnumerator)initWithError:(id *)error
{
  v8 = 0;
  v5 = getifaddrs(&v8);
  if (v5)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v5 userInfo:0];
      *error = selfCopy = 0;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    self = [(CRKIfaddrsEnumerator *)self initWithInterfaces:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (CRKIfaddrsEnumerator)initWithInterfaces:(ifaddrs *)interfaces
{
  v9.receiver = self;
  v9.super_class = CRKIfaddrsEnumerator;
  v4 = [(CRKIfaddrsEnumerator *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->mInterfaces = interfaces;
    if (interfaces)
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
    next = [(CRKIfaddrs *)self->mCurrentInterface next];
    v6 = self->mCurrentInterface;
    self->mCurrentInterface = next;
  }

  return mCurrentInterface;
}

@end