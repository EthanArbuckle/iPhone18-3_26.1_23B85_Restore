@interface _CPDeviceContext
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _CPDeviceContext

- (unint64_t)hash
{
  v3 = [(NSString *)self->_country hash];
  v4 = [(NSString *)self->_deviceModel hash]^ v3;
  v5 = [(NSString *)self->_locale hash];
  return v4 ^ v5 ^ [(NSString *)self->_osVersion hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_CPDeviceContext *)self country];
  v6 = [v4 country];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_CPDeviceContext *)self country];
  if (v7)
  {
    v8 = v7;
    v9 = [(_CPDeviceContext *)self country];
    v10 = [v4 country];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_CPDeviceContext *)self deviceModel];
  v6 = [v4 deviceModel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_CPDeviceContext *)self deviceModel];
  if (v12)
  {
    v13 = v12;
    v14 = [(_CPDeviceContext *)self deviceModel];
    v15 = [v4 deviceModel];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_CPDeviceContext *)self locale];
  v6 = [v4 locale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_CPDeviceContext *)self locale];
  if (v17)
  {
    v18 = v17;
    v19 = [(_CPDeviceContext *)self locale];
    v20 = [v4 locale];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_CPDeviceContext *)self osVersion];
  v6 = [v4 osVersion];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_CPDeviceContext *)self osVersion];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_CPDeviceContext *)self osVersion];
    v25 = [v4 osVersion];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_CPDeviceContext *)self country];

  if (v4)
  {
    country = self->_country;
    PBDataWriterWriteStringField();
  }

  v6 = [(_CPDeviceContext *)self deviceModel];

  if (v6)
  {
    deviceModel = self->_deviceModel;
    PBDataWriterWriteStringField();
  }

  v8 = [(_CPDeviceContext *)self locale];

  if (v8)
  {
    locale = self->_locale;
    PBDataWriterWriteStringField();
  }

  v10 = [(_CPDeviceContext *)self osVersion];

  v11 = v13;
  if (v10)
  {
    osVersion = self->_osVersion;
    PBDataWriterWriteStringField();
    v11 = v13;
  }
}

@end