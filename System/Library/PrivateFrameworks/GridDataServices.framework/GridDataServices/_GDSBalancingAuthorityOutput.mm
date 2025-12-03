@interface _GDSBalancingAuthorityOutput
- (_GDSBalancingAuthorityOutput)initWithID:(id)d name:(id)name updateDate:(id)date;
- (_GDSBalancingAuthorityOutput)initWithIdentifier:(id)identifier name:(id)name latitudeStart:(double)start latitudeEnd:(double)end longitudeStart:(double)longitudeStart longitudeEnd:(double)longitudeEnd updateDate:(id)date;
@end

@implementation _GDSBalancingAuthorityOutput

- (_GDSBalancingAuthorityOutput)initWithID:(id)d name:(id)name updateDate:(id)date
{
  dCopy = d;
  nameCopy = name;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = _GDSBalancingAuthorityOutput;
  v11 = [(_GDSBalancingAuthorityOutput *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    if (dCopy)
    {
      uUID = dCopy;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    ID = v12->_ID;
    v12->_ID = uUID;

    objc_storeStrong(&v12->_lastUpdatedDate, date);
  }

  return v12;
}

- (_GDSBalancingAuthorityOutput)initWithIdentifier:(id)identifier name:(id)name latitudeStart:(double)start latitudeEnd:(double)end longitudeStart:(double)longitudeStart longitudeEnd:(double)longitudeEnd updateDate:(id)date
{
  identifierCopy = identifier;
  nameCopy = name;
  dateCopy = date;
  v23.receiver = self;
  v23.super_class = _GDSBalancingAuthorityOutput;
  v20 = [(_GDSBalancingAuthorityOutput *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_name, name);
    objc_storeStrong(&v21->_identifier, identifier);
    v21->_latStart = start;
    v21->_latEnd = end;
    v21->_longStart = longitudeStart;
    v21->_longEnd = longitudeEnd;
    objc_storeStrong(&v21->_lastUpdatedDate, date);
  }

  return v21;
}

@end