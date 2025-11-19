@interface CRProtocolRestrictedInvocationChain
- (BOOL)_selector:(SEL)a3 isPartOfProtocol:(id)a4;
- (BOOL)_selectorIsPartOfRestrictingProtocol:(SEL)a3;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)invocationChain:(id)a3 shouldForwardInvocation:(id)a4 toTarget:(id)a5;
- (BOOL)isEligibleForSelector:(SEL)a3;
- (CRProtocolRestrictedInvocationChain)init;
@end

@implementation CRProtocolRestrictedInvocationChain

- (CRProtocolRestrictedInvocationChain)init
{
  v6.receiver = self;
  v6.super_class = CRProtocolRestrictedInvocationChain;
  v2 = [(CRInvocationChain *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = CRProtocolRestrictedInvocationChain;
    [(CRInvocationChain *)&v5 setDelegate:v2];
  }

  return v3;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_restrictingProtocol == v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__CRProtocolRestrictedInvocationChain_conformsToProtocol___block_invoke;
    v8[3] = &unk_278DA58F0;
    v9 = v4;
    v10 = &v11;
    [(CRInvocationChain *)self enumerateChainedObjectsUsingBlock:v8];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __58__CRProtocolRestrictedInvocationChain_conformsToProtocol___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 conformsToProtocol:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)invocationChain:(id)a3 shouldForwardInvocation:(id)a4 toTarget:(id)a5
{
  if (a3 != self)
  {
    return 0;
  }

  v8 = [a4 selector];

  return [(CRProtocolRestrictedInvocationChain *)self _selectorIsPartOfRestrictingProtocol:v8];
}

- (BOOL)isEligibleForSelector:(SEL)a3
{
  v5 = [(CRProtocolRestrictedInvocationChain *)self _selectorIsPartOfRestrictingProtocol:?];
  if (v5)
  {
    v7.receiver = self;
    v7.super_class = CRProtocolRestrictedInvocationChain;
    LOBYTE(v5) = [(CRInvocationChain *)&v7 isEligibleForSelector:a3];
  }

  return v5;
}

- (BOOL)_selectorIsPartOfRestrictingProtocol:(SEL)a3
{
  v5 = NSStringFromSelector(a3);
  v6 = [v5 containsString:@"commandWasPerformed"];

  if (v6)
  {
    return 1;
  }

  restrictingProtocol = self->_restrictingProtocol;

  return [(CRProtocolRestrictedInvocationChain *)self _selector:a3 isPartOfProtocol:restrictingProtocol];
}

- (BOOL)_selector:(SEL)a3 isPartOfProtocol:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    outCount = 0;
    v8 = protocol_copyMethodDescriptionList(v6, 0, 1, &outCount);
    if (outCount)
    {
      v9 = 0;
      while (v8[v9].name != a3)
      {
        if (outCount == ++v9)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_17;
    }

LABEL_6:
    free(v8);
    v16 = 0;
    v8 = protocol_copyMethodDescriptionList(v7, 1, 1, &v16);
    if (v16)
    {
      v10 = 0;
      while (v8[v10].name != a3)
      {
        if (v16 == ++v10)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_17;
    }

LABEL_10:
    free(v8);
    v15 = 0;
    v11 = protocol_copyProtocolList(v7, &v15);
    if (v15)
    {
      v12 = 0;
      while (![(CRProtocolRestrictedInvocationChain *)self _selector:a3 isPartOfProtocol:v11[v12]])
      {
        if (++v12 >= v15)
        {
          goto LABEL_14;
        }
      }

      v8 = v11;
LABEL_17:
      free(v8);
      v13 = 1;
      goto LABEL_18;
    }

LABEL_14:
    free(v11);
  }

  v13 = 0;
LABEL_18:

  return v13;
}

@end