@interface MRStaticRouteBannerRequest
- (MRStaticRouteBannerRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRStaticRouteBannerRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  routeIdentifier = [(MRStaticRouteBannerRequest *)self routeIdentifier];
  [coderCopy encodeObject:routeIdentifier forKey:@"rid"];

  routeName = [(MRStaticRouteBannerRequest *)self routeName];
  [coderCopy encodeObject:routeName forKey:@"rn"];

  outputDeviceNames = [(MRStaticRouteBannerRequest *)self outputDeviceNames];
  [coderCopy encodeObject:outputDeviceNames forKey:@"rns"];

  routeSymbolName = [(MRStaticRouteBannerRequest *)self routeSymbolName];
  [coderCopy encodeObject:routeSymbolName forKey:@"rsn"];

  actionImageName = [(MRStaticRouteBannerRequest *)self actionImageName];
  [coderCopy encodeObject:actionImageName forKey:@"ain"];

  soloModelID = [(MRStaticRouteBannerRequest *)self soloModelID];
  [coderCopy encodeObject:soloModelID forKey:@"smid"];

  soloDeviceEnclosureColor = [(MRStaticRouteBannerRequest *)self soloDeviceEnclosureColor];
  [coderCopy encodeObject:soloDeviceEnclosureColor forKey:@"sdec"];

  userSelectedDeviceNames = [(MRStaticRouteBannerRequest *)self userSelectedDeviceNames];
  [coderCopy encodeObject:userSelectedDeviceNames forKey:@"aseodns"];
}

- (MRStaticRouteBannerRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = MRStaticRouteBannerRequest;
  v5 = [(MRStaticRouteBannerRequest *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rid"];
    [(MRStaticRouteBannerRequest *)v5 setRouteIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rn"];
    [(MRStaticRouteBannerRequest *)v5 setRouteName:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"rns"];
    [(MRStaticRouteBannerRequest *)v5 setOutputDeviceNames:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rsn"];
    [(MRStaticRouteBannerRequest *)v5 setRouteSymbolName:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ain"];
    [(MRStaticRouteBannerRequest *)v5 setActionImageName:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smid"];
    [(MRStaticRouteBannerRequest *)v5 setSoloModelID:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sdec"];
    [(MRStaticRouteBannerRequest *)v5 setSoloDeviceEnclosureColor:v15];

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"aseodns"];
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

  routeIdentifier = [(MRStaticRouteBannerRequest *)self routeIdentifier];
  [v6 appendFormat:@" routeIdentifier: %@", routeIdentifier];

  routeName = [(MRStaticRouteBannerRequest *)self routeName];
  [v6 appendFormat:@" routeName: %@", routeName];

  outputDeviceNames = [(MRStaticRouteBannerRequest *)self outputDeviceNames];
  [v6 appendFormat:@" routeNames: %@", outputDeviceNames];

  routeSymbolName = [(MRStaticRouteBannerRequest *)self routeSymbolName];
  [v6 appendFormat:@" routeSymbolName: %@", routeSymbolName];

  actionImageName = [(MRStaticRouteBannerRequest *)self actionImageName];
  [v6 appendFormat:@" actionImageName: %@", actionImageName];

  soloModelID = [(MRStaticRouteBannerRequest *)self soloModelID];
  [v6 appendFormat:@" soloModelID: %@", soloModelID];

  soloDeviceEnclosureColor = [(MRStaticRouteBannerRequest *)self soloDeviceEnclosureColor];
  [v6 appendFormat:@" soloDeviceEnclosureColor: %@", soloDeviceEnclosureColor];

  [v6 appendString:@">"];

  return v6;
}

@end