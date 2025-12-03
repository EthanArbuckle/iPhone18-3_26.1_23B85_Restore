@interface _CPDeviceContext
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPDeviceContext

- (unint64_t)hash
{
  v3 = [(NSString *)self->_country hash];
  v4 = [(NSString *)self->_deviceModel hash]^ v3;
  v5 = [(NSString *)self->_locale hash];
  return v4 ^ v5 ^ [(NSString *)self->_osVersion hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  country = [(_CPDeviceContext *)self country];
  country2 = [equalCopy country];
  if ((country != 0) == (country2 == 0))
  {
    goto LABEL_21;
  }

  country3 = [(_CPDeviceContext *)self country];
  if (country3)
  {
    v8 = country3;
    country4 = [(_CPDeviceContext *)self country];
    country5 = [equalCopy country];
    v11 = [country4 isEqual:country5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  country = [(_CPDeviceContext *)self deviceModel];
  country2 = [equalCopy deviceModel];
  if ((country != 0) == (country2 == 0))
  {
    goto LABEL_21;
  }

  deviceModel = [(_CPDeviceContext *)self deviceModel];
  if (deviceModel)
  {
    v13 = deviceModel;
    deviceModel2 = [(_CPDeviceContext *)self deviceModel];
    deviceModel3 = [equalCopy deviceModel];
    v16 = [deviceModel2 isEqual:deviceModel3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  country = [(_CPDeviceContext *)self locale];
  country2 = [equalCopy locale];
  if ((country != 0) == (country2 == 0))
  {
    goto LABEL_21;
  }

  locale = [(_CPDeviceContext *)self locale];
  if (locale)
  {
    v18 = locale;
    locale2 = [(_CPDeviceContext *)self locale];
    locale3 = [equalCopy locale];
    v21 = [locale2 isEqual:locale3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  country = [(_CPDeviceContext *)self osVersion];
  country2 = [equalCopy osVersion];
  if ((country != 0) != (country2 == 0))
  {
    osVersion = [(_CPDeviceContext *)self osVersion];
    if (!osVersion)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = osVersion;
    osVersion2 = [(_CPDeviceContext *)self osVersion];
    osVersion3 = [equalCopy osVersion];
    v26 = [osVersion2 isEqual:osVersion3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  country = [(_CPDeviceContext *)self country];

  if (country)
  {
    country = self->_country;
    PBDataWriterWriteStringField();
  }

  deviceModel = [(_CPDeviceContext *)self deviceModel];

  if (deviceModel)
  {
    deviceModel = self->_deviceModel;
    PBDataWriterWriteStringField();
  }

  locale = [(_CPDeviceContext *)self locale];

  if (locale)
  {
    locale = self->_locale;
    PBDataWriterWriteStringField();
  }

  osVersion = [(_CPDeviceContext *)self osVersion];

  v11 = toCopy;
  if (osVersion)
  {
    osVersion = self->_osVersion;
    PBDataWriterWriteStringField();
    v11 = toCopy;
  }
}

@end