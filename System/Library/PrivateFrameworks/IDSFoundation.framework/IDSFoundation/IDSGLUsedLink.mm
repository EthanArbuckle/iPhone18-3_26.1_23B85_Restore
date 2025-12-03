@interface IDSGLUsedLink
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSGLUsedLink

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    linkID = [(IDSGLUsedLink *)self linkID];
    if (linkID == [v5 linkID])
    {
      localIP = [(IDSGLUsedLink *)self localIP];
      localIP2 = [v5 localIP];
      if ([localIP isEqual:localIP2])
      {
        serverIP = [(IDSGLUsedLink *)self serverIP];
        serverIP2 = [v5 serverIP];
        v11 = [serverIP isEqual:serverIP2];
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
  serverIP = [(IDSGLUsedLink *)self serverIP];
  v4 = [serverIP hash];
  localIP = [(IDSGLUsedLink *)self localIP];
  v6 = [localIP hash] ^ v4;
  linkID = [(IDSGLUsedLink *)self linkID];

  return v6 ^ linkID;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  linkID = [(IDSGLUsedLink *)self linkID];
  serverIP = [(IDSGLUsedLink *)self serverIP];
  localIP = [(IDSGLUsedLink *)self localIP];
  v7 = [v3 stringWithFormat:@"<IDSGLUsedLink linkID=%u serverIP=%@ localIP=%@", linkID, serverIP, localIP];

  return v7;
}

@end