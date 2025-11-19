@interface IDSGLUsedLink
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSGLUsedLink

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IDSGLUsedLink *)self linkID];
    if (v6 == [v5 linkID])
    {
      v7 = [(IDSGLUsedLink *)self localIP];
      v8 = [v5 localIP];
      if ([v7 isEqual:v8])
      {
        v9 = [(IDSGLUsedLink *)self serverIP];
        v10 = [v5 serverIP];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(IDSGLUsedLink *)self serverIP];
  v4 = [v3 hash];
  v5 = [(IDSGLUsedLink *)self localIP];
  v6 = [v5 hash] ^ v4;
  v7 = [(IDSGLUsedLink *)self linkID];

  return v6 ^ v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSGLUsedLink *)self linkID];
  v5 = [(IDSGLUsedLink *)self serverIP];
  v6 = [(IDSGLUsedLink *)self localIP];
  v7 = [v3 stringWithFormat:@"<IDSGLUsedLink linkID=%u serverIP=%@ localIP=%@", v4, v5, v6];

  return v7;
}

@end