@interface MRStaticRouteBannerRequest
- (MRStaticRouteBannerRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRStaticRouteBannerRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRStaticRouteBannerRequest *)self routeIdentifier];
  [v4 encodeObject:v5 forKey:@"rid"];

  v6 = [(MRStaticRouteBannerRequest *)self routeName];
  [v4 encodeObject:v6 forKey:@"rn"];

  v7 = [(MRStaticRouteBannerRequest *)self outputDeviceNames];
  [v4 encodeObject:v7 forKey:@"rns"];

  v8 = [(MRStaticRouteBannerRequest *)self routeSymbolName];
  [v4 encodeObject:v8 forKey:@"rsn"];

  v9 = [(MRStaticRouteBannerRequest *)self actionImageName];
  [v4 encodeObject:v9 forKey:@"ain"];

  v10 = [(MRStaticRouteBannerRequest *)self soloModelID];
  [v4 encodeObject:v10 forKey:@"smid"];

  v11 = [(MRStaticRouteBannerRequest *)self soloDeviceEnclosureColor];
  [v4 encodeObject:v11 forKey:@"sdec"];

  v12 = [(MRStaticRouteBannerRequest *)self userSelectedDeviceNames];
  [v4 encodeObject:v12 forKey:@"aseodns"];
}

- (MRStaticRouteBannerRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MRStaticRouteBannerRequest;
  v5 = [(MRStaticRouteBannerRequest *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rid"];
    [(MRStaticRouteBannerRequest *)v5 setRouteIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rn"];
    [(MRStaticRouteBannerRequest *)v5 setRouteName:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"rns"];
    [(MRStaticRouteBannerRequest *)v5 setOutputDeviceNames:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rsn"];
    [(MRStaticRouteBannerRequest *)v5 setRouteSymbolName:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ain"];
    [(MRStaticRouteBannerRequest *)v5 setActionImageName:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smid"];
    [(MRStaticRouteBannerRequest *)v5 setSoloModelID:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sdec"];
    [(MRStaticRouteBannerRequest *)v5 setSoloDeviceEnclosureColor:v15];

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"aseodns"];
    [(MRStaticRouteBannerRequest *)v5 setUserSelectedDeviceNames:v19];
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  v7 = [(MRStaticRouteBannerRequest *)self routeIdentifier];
  [v6 appendFormat:@" routeIdentifier: %@", v7];

  v8 = [(MRStaticRouteBannerRequest *)self routeName];
  [v6 appendFormat:@" routeName: %@", v8];

  v9 = [(MRStaticRouteBannerRequest *)self outputDeviceNames];
  [v6 appendFormat:@" routeNames: %@", v9];

  v10 = [(MRStaticRouteBannerRequest *)self routeSymbolName];
  [v6 appendFormat:@" routeSymbolName: %@", v10];

  v11 = [(MRStaticRouteBannerRequest *)self actionImageName];
  [v6 appendFormat:@" actionImageName: %@", v11];

  v12 = [(MRStaticRouteBannerRequest *)self soloModelID];
  [v6 appendFormat:@" soloModelID: %@", v12];

  v13 = [(MRStaticRouteBannerRequest *)self soloDeviceEnclosureColor];
  [v6 appendFormat:@" soloDeviceEnclosureColor: %@", v13];

  [v6 appendString:@">"];

  return v6;
}

@end