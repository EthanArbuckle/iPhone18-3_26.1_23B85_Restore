@interface RTLearnedRouteFetchOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFetchOptions:(id)options;
- (RTLearnedRouteFetchOptions)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLearnedRouteFetchOptions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTLearnedRouteFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)options
{
  optionsCopy = options;
  if (optionsCopy)
  {
    originVisit = [(RTLearnedRouteFetchOptions *)self originVisit];
    if (originVisit || ([optionsCopy originVisit], (routeDate2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      originVisit2 = [(RTLearnedRouteFetchOptions *)self originVisit];
      if (originVisit2)
      {
        v9 = originVisit2;
        originVisit3 = [optionsCopy originVisit];
        if (originVisit3)
        {
          v11 = originVisit3;
          originVisit4 = [(RTLearnedRouteFetchOptions *)self originVisit];
          [originVisit4 coordinate];
          v14 = v13;
          originVisit5 = [optionsCopy originVisit];
          [originVisit5 coordinate];
          if (vabdd_f64(v14, v16) >= 2.22044605e-16)
          {
            v78 = 0;
          }

          else
          {
            originVisit6 = [(RTLearnedRouteFetchOptions *)self originVisit];
            [originVisit6 coordinate];
            v18 = v17;
            originVisit7 = [optionsCopy originVisit];
            [originVisit7 coordinate];
            v78 = vabdd_f64(v18, v20) < 2.22044605e-16;
          }

          if (!originVisit)
          {
            goto LABEL_16;
          }

LABEL_17:

          destinationVisit = [(RTLearnedRouteFetchOptions *)self destinationVisit];
          if (destinationVisit || ([optionsCopy destinationVisit], (routeDate2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            destinationVisit2 = [(RTLearnedRouteFetchOptions *)self destinationVisit];
            if (destinationVisit2)
            {
              v24 = destinationVisit2;
              destinationVisit3 = [optionsCopy destinationVisit];
              if (destinationVisit3)
              {
                v26 = destinationVisit3;
                destinationVisit4 = [(RTLearnedRouteFetchOptions *)self destinationVisit];
                [destinationVisit4 coordinate];
                v29 = v28;
                destinationVisit5 = [optionsCopy destinationVisit];
                [destinationVisit5 coordinate];
                if (vabdd_f64(v29, v31) >= 2.22044605e-16)
                {
                  v77 = 0;
                }

                else
                {
                  originVisit6 = [(RTLearnedRouteFetchOptions *)self destinationVisit];
                  [originVisit6 coordinate];
                  v33 = v32;
                  destinationVisit6 = [optionsCopy destinationVisit];
                  [destinationVisit6 coordinate];
                  v77 = vabdd_f64(v33, v35) < 2.22044605e-16;
                }

                if (!destinationVisit)
                {
                  goto LABEL_30;
                }

LABEL_31:

                routeDate = [(RTLearnedRouteFetchOptions *)self routeDate];
                if (!routeDate)
                {
                  routeDate2 = [optionsCopy routeDate];
                  if (!routeDate2)
                  {
                    v76 = 1;
LABEL_41:

                    goto LABEL_42;
                  }
                }

                routeDate3 = [(RTLearnedRouteFetchOptions *)self routeDate];
                if (routeDate3)
                {
                  v38 = routeDate3;
                  routeDate4 = [optionsCopy routeDate];
                  if (routeDate4)
                  {
                    v40 = routeDate4;
                    routeDate5 = [(RTLearnedRouteFetchOptions *)self routeDate];
                    routeDate6 = [optionsCopy routeDate];
                    v76 = [routeDate5 isEqualToDate:routeDate6];

                    if (!routeDate)
                    {
                      goto LABEL_41;
                    }

LABEL_42:

                    routeFetchType = [(RTLearnedRouteFetchOptions *)self routeFetchType];
                    routeFetchType2 = [optionsCopy routeFetchType];
                    fetchAllRouteLocations = [(RTLearnedRouteFetchOptions *)self fetchAllRouteLocations];
                    fetchAllRouteLocations2 = [optionsCopy fetchAllRouteLocations];
                    routeOriginType = [(RTLearnedRouteFetchOptions *)self routeOriginType];
                    routeOriginType2 = [optionsCopy routeOriginType];
                    bundleIdentifier = [(RTLearnedRouteFetchOptions *)self bundleIdentifier];
                    if (bundleIdentifier || ([optionsCopy bundleIdentifier], (originVisit6 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      bundleIdentifier2 = [(RTLearnedRouteFetchOptions *)self bundleIdentifier];
                      if (bundleIdentifier2)
                      {
                        v49 = bundleIdentifier2;
                        v72 = routeFetchType2;
                        bundleIdentifier3 = [optionsCopy bundleIdentifier];
                        if (bundleIdentifier3)
                        {
                          v51 = bundleIdentifier3;
                          [(RTLearnedRouteFetchOptions *)self bundleIdentifier];
                          v69 = routeFetchType;
                          v52 = v70 = fetchAllRouteLocations;
                          [optionsCopy bundleIdentifier];
                          v53 = originVisit6;
                          v55 = v54 = fetchAllRouteLocations2;
                          v56 = [v52 isEqualToString:v55];

                          fetchAllRouteLocations2 = v54;
                          originVisit6 = v53;

                          routeFetchType = v69;
                          fetchAllRouteLocations = v70;
                        }

                        else
                        {

                          v56 = 0;
                        }

                        routeFetchType2 = v72;
                        if (!bundleIdentifier)
                        {
                          goto LABEL_53;
                        }

LABEL_54:
                        v57 = fetchAllRouteLocations ^ fetchAllRouteLocations2;

                        bundlePath = [(RTLearnedRouteFetchOptions *)self bundlePath];
                        if (bundlePath || ([optionsCopy bundlePath], (fetchAllRouteLocations2 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          bundlePath2 = [(RTLearnedRouteFetchOptions *)self bundlePath];
                          if (bundlePath2)
                          {
                            v60 = bundlePath2;
                            v71 = v56;
                            v73 = v57;
                            bundlePath3 = [optionsCopy bundlePath];
                            if (bundlePath3)
                            {
                              v62 = bundlePath3;
                              [(RTLearnedRouteFetchOptions *)self bundlePath];
                              v64 = v63 = routeFetchType2;
                              [optionsCopy bundlePath];
                              v66 = v65 = routeFetchType;
                              v67 = [v64 isEqualToString:v66];

                              routeFetchType = v65;
                              routeFetchType2 = v63;
                            }

                            else
                            {

                              v67 = 0;
                            }

                            v56 = v71;
                            v57 = v73;
                            if (bundlePath)
                            {
                              goto LABEL_66;
                            }
                          }

                          else
                          {
                            v67 = 0;
                            if (bundlePath)
                            {
LABEL_66:

                              v21 = (routeOriginType == routeOriginType2) & ~((routeFetchType != routeFetchType2) | ~((v78 && v77) & v76) | v57) & v56 & v67;
                              goto LABEL_67;
                            }
                          }
                        }

                        else
                        {
                          v67 = 1;
                        }

                        goto LABEL_66;
                      }

                      v56 = 0;
                      if (bundleIdentifier)
                      {
                        goto LABEL_54;
                      }
                    }

                    else
                    {
                      v56 = 1;
                    }

LABEL_53:

                    goto LABEL_54;
                  }
                }

                v76 = 0;
                if (!routeDate)
                {
                  goto LABEL_41;
                }

                goto LABEL_42;
              }
            }

            v77 = 0;
            if (destinationVisit)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v77 = 1;
          }

LABEL_30:

          goto LABEL_31;
        }
      }

      v78 = 0;
      if (originVisit)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v78 = 1;
    }

LABEL_16:

    goto LABEL_17;
  }

  v21 = 0;
LABEL_67:

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  originVisit = [(RTLearnedRouteFetchOptions *)self originVisit];
  [coderCopy encodeObject:originVisit forKey:@"originVisit"];

  destinationVisit = [(RTLearnedRouteFetchOptions *)self destinationVisit];
  [coderCopy encodeObject:destinationVisit forKey:@"destinationVisit"];

  routeDate = [(RTLearnedRouteFetchOptions *)self routeDate];
  [coderCopy encodeObject:routeDate forKey:@"routeDate"];

  [coderCopy encodeInt32:-[RTLearnedRouteFetchOptions routeFetchType](self forKey:{"routeFetchType"), @"fetchType"}];
  [coderCopy encodeInt32:-[RTLearnedRouteFetchOptions routeOriginType](self forKey:{"routeOriginType"), @"routeOriginType"}];
  [coderCopy encodeBool:-[RTLearnedRouteFetchOptions fetchAllRouteLocations](self forKey:{"fetchAllRouteLocations"), @"fetchAllRouteLoc"}];
  bundleIdentifier = [(RTLearnedRouteFetchOptions *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  bundlePath = [(RTLearnedRouteFetchOptions *)self bundlePath];
  [coderCopy encodeObject:bundlePath forKey:@"bundlePath"];
}

- (RTLearnedRouteFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originVisit"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationVisit"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeDate"];
  v8 = [coderCopy decodeInt32ForKey:@"fetchType"];
  v9 = [coderCopy decodeInt32ForKey:@"routeOriginType"];
  v10 = [coderCopy decodeBoolForKey:@"fetchAllRouteLoc"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];

  HIDWORD(v15) = v9;
  LOBYTE(v15) = v10;
  v13 = [(RTLearnedRouteFetchOptions *)self initWithBundleIdentifier:v11 bundlePath:v12 routeOriginLocation:v5 routeDestinationLocation:v6 routeDate:v7 routeFetchType:v8 fetchAllRouteLocations:v15 routeOriginType:?];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  fetchAllRouteLocations = [(RTLearnedRouteFetchOptions *)self fetchAllRouteLocations];
  originVisit = [(RTLearnedRouteFetchOptions *)self originVisit];
  destinationVisit = [(RTLearnedRouteFetchOptions *)self destinationVisit];
  routeDate = [(RTLearnedRouteFetchOptions *)self routeDate];
  routeFetchType = [(RTLearnedRouteFetchOptions *)self routeFetchType];
  routeOriginType = [(RTLearnedRouteFetchOptions *)self routeOriginType];
  bundleIdentifier = [(RTLearnedRouteFetchOptions *)self bundleIdentifier];
  bundlePath = [(RTLearnedRouteFetchOptions *)self bundlePath];
  v12 = [v3 stringWithFormat:@"fetchAllRouteLoc, %d, origVisit, %@, dstVisit, %@, routeDate, %@, routeFetchType, %d, currLocFlag, %d, bundleID, %@, bundlePath, %@", fetchAllRouteLocations, originVisit, destinationVisit, routeDate, routeFetchType, routeOriginType, bundleIdentifier, bundlePath];

  return v12;
}

@end