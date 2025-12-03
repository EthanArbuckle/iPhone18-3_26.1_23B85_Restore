@interface CURangingPeer
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation CURangingPeer

- (unint64_t)hash
{
  v3 = [(NSData *)self->_deviceAddress hash];
  v4 = [(NSData *)self->_deviceIRK hash]^ v3;
  return v4 ^ [(NSString *)self->_deviceModel hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      deviceAddress = self->_deviceAddress;
      deviceAddress = [(CURangingPeer *)v5 deviceAddress];
      v8 = deviceAddress;
      v9 = deviceAddress;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          goto LABEL_18;
        }

        v11 = [(NSData *)v8 isEqual:v9];

        if (!v11)
        {
          goto LABEL_13;
        }
      }

      deviceIRK = self->_deviceIRK;
      deviceIRK = [(CURangingPeer *)v5 deviceIRK];
      v8 = deviceIRK;
      v15 = deviceIRK;
      v10 = v15;
      if (v8 == v15)
      {
      }

      else
      {
        if ((v8 != 0) == (v15 == 0))
        {
          goto LABEL_18;
        }

        v16 = [(NSData *)v8 isEqual:v15];

        if (!v16)
        {
LABEL_13:
          v12 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }

      deviceModel = self->_deviceModel;
      deviceModel = [(CURangingPeer *)v5 deviceModel];
      v8 = deviceModel;
      v19 = deviceModel;
      v10 = v19;
      if (v8 == v19)
      {
        v12 = 1;
        goto LABEL_19;
      }

      if ((v8 != 0) != (v19 == 0))
      {
        v12 = [(NSData *)v8 isEqual:v19];
LABEL_19:

        goto LABEL_20;
      }

LABEL_18:
      v12 = 0;
      goto LABEL_19;
    }

    v12 = 0;
  }

LABEL_21:

  return v12;
}

@end