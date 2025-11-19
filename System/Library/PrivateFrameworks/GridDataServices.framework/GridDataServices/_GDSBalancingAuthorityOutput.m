@interface _GDSBalancingAuthorityOutput
- (_GDSBalancingAuthorityOutput)initWithID:(id)a3 name:(id)a4 updateDate:(id)a5;
- (_GDSBalancingAuthorityOutput)initWithIdentifier:(id)a3 name:(id)a4 latitudeStart:(double)a5 latitudeEnd:(double)a6 longitudeStart:(double)a7 longitudeEnd:(double)a8 updateDate:(id)a9;
@end

@implementation _GDSBalancingAuthorityOutput

- (_GDSBalancingAuthorityOutput)initWithID:(id)a3 name:(id)a4 updateDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _GDSBalancingAuthorityOutput;
  v11 = [(_GDSBalancingAuthorityOutput *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a4);
    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = [MEMORY[0x277CCAD78] UUID];
    }

    ID = v12->_ID;
    v12->_ID = v13;

    objc_storeStrong(&v12->_lastUpdatedDate, a5);
  }

  return v12;
}

- (_GDSBalancingAuthorityOutput)initWithIdentifier:(id)a3 name:(id)a4 latitudeStart:(double)a5 latitudeEnd:(double)a6 longitudeStart:(double)a7 longitudeEnd:(double)a8 updateDate:(id)a9
{
  v17 = a3;
  v18 = a4;
  v19 = a9;
  v23.receiver = self;
  v23.super_class = _GDSBalancingAuthorityOutput;
  v20 = [(_GDSBalancingAuthorityOutput *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_name, a4);
    objc_storeStrong(&v21->_identifier, a3);
    v21->_latStart = a5;
    v21->_latEnd = a6;
    v21->_longStart = a7;
    v21->_longEnd = a8;
    objc_storeStrong(&v21->_lastUpdatedDate, a9);
  }

  return v21;
}

@end