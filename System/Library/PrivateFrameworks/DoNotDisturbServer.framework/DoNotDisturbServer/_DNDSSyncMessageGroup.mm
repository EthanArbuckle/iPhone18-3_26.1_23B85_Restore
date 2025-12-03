@interface _DNDSSyncMessageGroup
- (BOOL)isEqual:(id)equal;
- (_DNDSSyncMessageGroup)initWithServiceType:(unint64_t)type protocolVersion:(unint64_t)version store:(id)store;
- (unint64_t)hash;
@end

@implementation _DNDSSyncMessageGroup

- (_DNDSSyncMessageGroup)initWithServiceType:(unint64_t)type protocolVersion:(unint64_t)version store:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = _DNDSSyncMessageGroup;
  v9 = [(_DNDSSyncMessageGroup *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_protocolVersion = version;
    v9->_serviceType = type;
    v11 = [storeCopy copy];
    store = v10->_store;
    v10->_store = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = equalCopy;
      store = [(_DNDSSyncMessageGroup *)self store];
      store2 = [(_DNDSSyncMessageGroup *)v9 store];
      if (store == store2)
      {
        goto LABEL_10;
      }

      store3 = [(_DNDSSyncMessageGroup *)self store];
      if (!store3)
      {
        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v3 = store3;
      store4 = [(_DNDSSyncMessageGroup *)v9 store];
      if (!store4)
      {
        v14 = 0;
        goto LABEL_17;
      }

      v4 = store4;
      store5 = [(_DNDSSyncMessageGroup *)self store];
      store6 = [(_DNDSSyncMessageGroup *)v9 store];
      if ([store5 isEqual:store6])
      {
LABEL_10:
        protocolVersion = [(_DNDSSyncMessageGroup *)self protocolVersion];
        if (protocolVersion == [(_DNDSSyncMessageGroup *)v9 protocolVersion])
        {
          serviceType = [(_DNDSSyncMessageGroup *)self serviceType];
          v14 = serviceType == [(_DNDSSyncMessageGroup *)v9 serviceType];
        }

        else
        {
          v14 = 0;
        }

        if (store == store2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_17:
      goto LABEL_18;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (unint64_t)hash
{
  store = [(_DNDSSyncMessageGroup *)self store];
  v4 = [store hash];
  protocolVersion = [(_DNDSSyncMessageGroup *)self protocolVersion];
  v6 = protocolVersion ^ [(_DNDSSyncMessageGroup *)self serviceType];

  return v6 ^ v4;
}

@end