@interface _DNDSSyncMessageGroup
- (BOOL)isEqual:(id)a3;
- (_DNDSSyncMessageGroup)initWithServiceType:(unint64_t)a3 protocolVersion:(unint64_t)a4 store:(id)a5;
- (unint64_t)hash;
@end

@implementation _DNDSSyncMessageGroup

- (_DNDSSyncMessageGroup)initWithServiceType:(unint64_t)a3 protocolVersion:(unint64_t)a4 store:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = _DNDSSyncMessageGroup;
  v9 = [(_DNDSSyncMessageGroup *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_protocolVersion = a4;
    v9->_serviceType = a3;
    v11 = [v8 copy];
    store = v10->_store;
    v10->_store = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [(_DNDSSyncMessageGroup *)self store];
      v11 = [(_DNDSSyncMessageGroup *)v9 store];
      if (v10 == v11)
      {
        goto LABEL_10;
      }

      v12 = [(_DNDSSyncMessageGroup *)self store];
      if (!v12)
      {
        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v3 = v12;
      v13 = [(_DNDSSyncMessageGroup *)v9 store];
      if (!v13)
      {
        v14 = 0;
        goto LABEL_17;
      }

      v4 = v13;
      v5 = [(_DNDSSyncMessageGroup *)self store];
      v6 = [(_DNDSSyncMessageGroup *)v9 store];
      if ([v5 isEqual:v6])
      {
LABEL_10:
        v15 = [(_DNDSSyncMessageGroup *)self protocolVersion];
        if (v15 == [(_DNDSSyncMessageGroup *)v9 protocolVersion])
        {
          v16 = [(_DNDSSyncMessageGroup *)self serviceType];
          v14 = v16 == [(_DNDSSyncMessageGroup *)v9 serviceType];
        }

        else
        {
          v14 = 0;
        }

        if (v10 == v11)
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
  v3 = [(_DNDSSyncMessageGroup *)self store];
  v4 = [v3 hash];
  v5 = [(_DNDSSyncMessageGroup *)self protocolVersion];
  v6 = v5 ^ [(_DNDSSyncMessageGroup *)self serviceType];

  return v6 ^ v4;
}

@end