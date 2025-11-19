@interface PKRemoteThumbnailKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRemoteThumbnailKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PKRemoteThumbnailKey

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKRemoteThumbnailKey allocWithZone:](PKRemoteThumbnailKey init];
  v6 = [(NSDictionary *)self->_requestDictionary copyWithZone:a3];
  requestDictionary = v5->_requestDictionary;
  v5->_requestDictionary = v6;

  v8 = [(NSString *)self->_requestIdentifier copyWithZone:a3];
  requestIdentifier = v5->_requestIdentifier;
  v5->_requestIdentifier = v8;

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_requestIdentifier];
  [v3 safelyAddObject:self->_requestDictionary];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRemoteThumbnailKey *)self isEqualToRemoteThumbnailKey:v5];
  }

  return v6;
}

- (BOOL)isEqualToRemoteThumbnailKey:(id)a3
{
  v4 = a3;
  requestIdentifier = self->_requestIdentifier;
  v6 = v4[1];
  if (requestIdentifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (([(NSString *)requestIdentifier isEqual:?]& 1) != 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_13;
  }

  if (requestIdentifier != v6)
  {
    goto LABEL_7;
  }

LABEL_9:
  requestDictionary = self->_requestDictionary;
  v10 = v4[2];
  if (requestDictionary && v10)
  {
    v8 = [(NSDictionary *)requestDictionary isEqual:?];
  }

  else
  {
    v8 = requestDictionary == v10;
  }

LABEL_13:

  return v8;
}

@end