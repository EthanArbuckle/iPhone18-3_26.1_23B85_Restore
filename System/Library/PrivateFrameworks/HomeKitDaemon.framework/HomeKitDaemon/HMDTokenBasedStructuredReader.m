@interface HMDTokenBasedStructuredReader
- (BOOL)readBoolean;
- (_HMDStructuredDataToken)nextTokenAfterToken:(const _HMDStructuredDataToken *)a3;
- (_HMDStructuredDataToken)readToken;
- (id)_consumeTokenOfType:(uint64_t)a1;
- (id)error;
- (uint64_t)_bufferInitialTokenIfNecessary;
- (uint64_t)_consumeToken;
- (unint64_t)beginArray;
- (unint64_t)beginDictionary;
- (void)failWithError:(id)a3;
- (void)skipToken;
@end

@implementation HMDTokenBasedStructuredReader

- (_HMDStructuredDataToken)nextTokenAfterToken:(const _HMDStructuredDataToken *)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)skipToken
{
  [(HMDTokenBasedStructuredReader *)self _bufferInitialTokenIfNecessary];

  [(HMDTokenBasedStructuredReader *)self _consumeToken];
}

- (uint64_t)_bufferInitialTokenIfNecessary
{
  if (result)
  {
    v1 = result + 1;
    if (!result[1])
    {
      v2 = [result nextTokenAfterToken:0];
      v3 = v1[1];
      *v1 = v2;
      v1[1] = v4;

      return MEMORY[0x2821F9730]();
    }
  }

  return result;
}

- (uint64_t)_consumeToken
{
  if (result)
  {
    v1 = result + 1;
    if (result[1] >= 1)
    {
      v2 = [result nextTokenAfterToken:result + 1];
      v3 = v1[1];
      *v1 = v2;
      v1[1] = v4;

      return MEMORY[0x2821F9730]();
    }
  }

  return result;
}

- (_HMDStructuredDataToken)readToken
{
  [(HMDTokenBasedStructuredReader *)self _bufferInitialTokenIfNecessary];
  type = self->_token.type;
  v4 = self->_token.value;
  [(HMDTokenBasedStructuredReader *)self _consumeToken];
  v5 = type;
  v6 = v4;
  result.value = v6;
  result.type = v5;
  return result;
}

- (id)_consumeTokenOfType:(uint64_t)a1
{
  if (a1)
  {
    [(HMDTokenBasedStructuredReader *)a1 _bufferInitialTokenIfNecessary];
    v4 = *(a1 + 8);
    if (v4 == a2)
    {
      v5 = *(a1 + 16);
      [(HMDTokenBasedStructuredReader *)a1 _consumeToken];
      goto LABEL_4;
    }

    if (v4 != -2)
    {
      v7 = HMDStructuredDataTokenTypeAsString(a2);
      v8 = HMDStructuredDataTokenTypeAsString(*(a1 + 8));
      [a1 failWithReason:{@"Expected <%@> but found <%@>", v7, v8}];
    }
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (BOOL)readBoolean
{
  v2 = [(HMDTokenBasedStructuredReader *)self _consumeTokenOfType:?];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)beginDictionary
{
  v2 = [(HMDTokenBasedStructuredReader *)self _consumeTokenOfType:?];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (unint64_t)beginArray
{
  v2 = [(HMDTokenBasedStructuredReader *)self _consumeTokenOfType:?];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)failWithError:(id)a3
{
  v4 = a3;
  p_token = &self->_token;
  if (p_token->type != -2)
  {
    v6 = v4;
    v7 = v4;
    if (!v4)
    {
      v6 = [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    }

    p_token->type = -2;
    objc_storeStrong(&p_token->value, v6);
    v4 = v7;
    if (!v7)
    {

      v4 = 0;
    }
  }
}

- (id)error
{
  if (self->_token.type == -2)
  {
    return self->_token.value;
  }

  else
  {
    return 0;
  }
}

@end