@interface _EDSenderAttributes
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)cachedSelf;
- (unint64_t)hash;
@end

@implementation _EDSenderAttributes

- (id)cachedSelf
{
  if (cachedSelf_onceToken != -1)
  {
    [_EDSenderAttributes(EFCacheable) cachedSelf];
  }

  os_unfair_lock_lock(&cachedSelf_sTableLock);
  v3 = [cachedSelf_sUniqueObjectIDs ef_uniquedObject:self];
  os_unfair_lock_unlock(&cachedSelf_sTableLock);

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isVIP];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isContact];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCoreRecent];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPrimarySender];
  v8 = [v3 stringWithFormat:@"SenderAttributes: isVIP=%@, isContact=%@ isRecent=%@ isPrimary=%@", v4, v5, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  isVIP = [(_EDSenderAttributes *)self isVIP];
  isContact = [(_EDSenderAttributes *)self isContact];
  v5 = 5859909;
  if (isVIP)
  {
    v5 = 5859942;
  }

  v6 = 33 * (v5 + isContact) + [(_EDSenderAttributes *)self isCoreRecent];
  return 33 * v6 + [(_EDSenderAttributes *)self isPrimarySender];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isVIP = [(_EDSenderAttributes *)self isVIP];
      if (isVIP == [(_EDSenderAttributes *)v5 isVIP]&& (v7 = [(_EDSenderAttributes *)self isContact], v7 == [(_EDSenderAttributes *)v5 isContact]) && (v8 = [(_EDSenderAttributes *)self isCoreRecent], v8 == [(_EDSenderAttributes *)v5 isCoreRecent]))
      {
        isPrimarySender = [(_EDSenderAttributes *)self isPrimarySender];
        v9 = isPrimarySender ^ [(_EDSenderAttributes *)v5 isPrimarySender]^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

@end