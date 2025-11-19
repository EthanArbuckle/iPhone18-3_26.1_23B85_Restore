@interface RTLearnedRouteFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (RTLearnedRouteFetchOptions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLearnedRouteFetchOptions

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTLearnedRouteFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = [(RTLearnedRouteFetchOptions *)self originVisit];
    if (v7 || ([v6 originVisit], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(RTLearnedRouteFetchOptions *)self originVisit];
      if (v8)
      {
        v9 = v8;
        v10 = [v6 originVisit];
        if (v10)
        {
          v11 = v10;
          v12 = [(RTLearnedRouteFetchOptions *)self originVisit];
          [v12 coordinate];
          v14 = v13;
          v15 = [v6 originVisit];
          [v15 coordinate];
          if (vabdd_f64(v14, v16) >= 2.22044605e-16)
          {
            v78 = 0;
          }

          else
          {
            v4 = [(RTLearnedRouteFetchOptions *)self originVisit];
            [v4 coordinate];
            v18 = v17;
            v19 = [v6 originVisit];
            [v19 coordinate];
            v78 = vabdd_f64(v18, v20) < 2.22044605e-16;
          }

          if (!v7)
          {
            goto LABEL_16;
          }

LABEL_17:

          v22 = [(RTLearnedRouteFetchOptions *)self destinationVisit];
          if (v22 || ([v6 destinationVisit], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v23 = [(RTLearnedRouteFetchOptions *)self destinationVisit];
            if (v23)
            {
              v24 = v23;
              v25 = [v6 destinationVisit];
              if (v25)
              {
                v26 = v25;
                v27 = [(RTLearnedRouteFetchOptions *)self destinationVisit];
                [v27 coordinate];
                v29 = v28;
                v30 = [v6 destinationVisit];
                [v30 coordinate];
                if (vabdd_f64(v29, v31) >= 2.22044605e-16)
                {
                  v77 = 0;
                }

                else
                {
                  v4 = [(RTLearnedRouteFetchOptions *)self destinationVisit];
                  [v4 coordinate];
                  v33 = v32;
                  v34 = [v6 destinationVisit];
                  [v34 coordinate];
                  v77 = vabdd_f64(v33, v35) < 2.22044605e-16;
                }

                if (!v22)
                {
                  goto LABEL_30;
                }

LABEL_31:

                v36 = [(RTLearnedRouteFetchOptions *)self routeDate];
                if (!v36)
                {
                  v3 = [v6 routeDate];
                  if (!v3)
                  {
                    v76 = 1;
LABEL_41:

                    goto LABEL_42;
                  }
                }

                v37 = [(RTLearnedRouteFetchOptions *)self routeDate];
                if (v37)
                {
                  v38 = v37;
                  v39 = [v6 routeDate];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = [(RTLearnedRouteFetchOptions *)self routeDate];
                    v42 = [v6 routeDate];
                    v76 = [v41 isEqualToDate:v42];

                    if (!v36)
                    {
                      goto LABEL_41;
                    }

LABEL_42:

                    v43 = [(RTLearnedRouteFetchOptions *)self routeFetchType];
                    v44 = [v6 routeFetchType];
                    v45 = [(RTLearnedRouteFetchOptions *)self fetchAllRouteLocations];
                    v46 = [v6 fetchAllRouteLocations];
                    v75 = [(RTLearnedRouteFetchOptions *)self routeOriginType];
                    v74 = [v6 routeOriginType];
                    v47 = [(RTLearnedRouteFetchOptions *)self bundleIdentifier];
                    if (v47 || ([v6 bundleIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v48 = [(RTLearnedRouteFetchOptions *)self bundleIdentifier];
                      if (v48)
                      {
                        v49 = v48;
                        v72 = v44;
                        v50 = [v6 bundleIdentifier];
                        if (v50)
                        {
                          v51 = v50;
                          [(RTLearnedRouteFetchOptions *)self bundleIdentifier];
                          v69 = v43;
                          v52 = v70 = v45;
                          [v6 bundleIdentifier];
                          v53 = v4;
                          v55 = v54 = v46;
                          v56 = [v52 isEqualToString:v55];

                          v46 = v54;
                          v4 = v53;

                          v43 = v69;
                          v45 = v70;
                        }

                        else
                        {

                          v56 = 0;
                        }

                        v44 = v72;
                        if (!v47)
                        {
                          goto LABEL_53;
                        }

LABEL_54:
                        v57 = v45 ^ v46;

                        v58 = [(RTLearnedRouteFetchOptions *)self bundlePath];
                        if (v58 || ([v6 bundlePath], (v46 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          v59 = [(RTLearnedRouteFetchOptions *)self bundlePath];
                          if (v59)
                          {
                            v60 = v59;
                            v71 = v56;
                            v73 = v57;
                            v61 = [v6 bundlePath];
                            if (v61)
                            {
                              v62 = v61;
                              [(RTLearnedRouteFetchOptions *)self bundlePath];
                              v64 = v63 = v44;
                              [v6 bundlePath];
                              v66 = v65 = v43;
                              v67 = [v64 isEqualToString:v66];

                              v43 = v65;
                              v44 = v63;
                            }

                            else
                            {

                              v67 = 0;
                            }

                            v56 = v71;
                            v57 = v73;
                            if (v58)
                            {
                              goto LABEL_66;
                            }
                          }

                          else
                          {
                            v67 = 0;
                            if (v58)
                            {
LABEL_66:

                              v21 = (v75 == v74) & ~((v43 != v44) | ~((v78 && v77) & v76) | v57) & v56 & v67;
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
                      if (v47)
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
                if (!v36)
                {
                  goto LABEL_41;
                }

                goto LABEL_42;
              }
            }

            v77 = 0;
            if (v22)
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
      if (v7)
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RTLearnedRouteFetchOptions *)self originVisit];
  [v4 encodeObject:v5 forKey:@"originVisit"];

  v6 = [(RTLearnedRouteFetchOptions *)self destinationVisit];
  [v4 encodeObject:v6 forKey:@"destinationVisit"];

  v7 = [(RTLearnedRouteFetchOptions *)self routeDate];
  [v4 encodeObject:v7 forKey:@"routeDate"];

  [v4 encodeInt32:-[RTLearnedRouteFetchOptions routeFetchType](self forKey:{"routeFetchType"), @"fetchType"}];
  [v4 encodeInt32:-[RTLearnedRouteFetchOptions routeOriginType](self forKey:{"routeOriginType"), @"routeOriginType"}];
  [v4 encodeBool:-[RTLearnedRouteFetchOptions fetchAllRouteLocations](self forKey:{"fetchAllRouteLocations"), @"fetchAllRouteLoc"}];
  v8 = [(RTLearnedRouteFetchOptions *)self bundleIdentifier];
  [v4 encodeObject:v8 forKey:@"bundleIdentifier"];

  v9 = [(RTLearnedRouteFetchOptions *)self bundlePath];
  [v4 encodeObject:v9 forKey:@"bundlePath"];
}

- (RTLearnedRouteFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originVisit"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationVisit"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routeDate"];
  v8 = [v4 decodeInt32ForKey:@"fetchType"];
  v9 = [v4 decodeInt32ForKey:@"routeOriginType"];
  v10 = [v4 decodeBoolForKey:@"fetchAllRouteLoc"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];

  HIDWORD(v15) = v9;
  LOBYTE(v15) = v10;
  v13 = [(RTLearnedRouteFetchOptions *)self initWithBundleIdentifier:v11 bundlePath:v12 routeOriginLocation:v5 routeDestinationLocation:v6 routeDate:v7 routeFetchType:v8 fetchAllRouteLocations:v15 routeOriginType:?];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTLearnedRouteFetchOptions *)self fetchAllRouteLocations];
  v5 = [(RTLearnedRouteFetchOptions *)self originVisit];
  v6 = [(RTLearnedRouteFetchOptions *)self destinationVisit];
  v7 = [(RTLearnedRouteFetchOptions *)self routeDate];
  v8 = [(RTLearnedRouteFetchOptions *)self routeFetchType];
  v9 = [(RTLearnedRouteFetchOptions *)self routeOriginType];
  v10 = [(RTLearnedRouteFetchOptions *)self bundleIdentifier];
  v11 = [(RTLearnedRouteFetchOptions *)self bundlePath];
  v12 = [v3 stringWithFormat:@"fetchAllRouteLoc, %d, origVisit, %@, dstVisit, %@, routeDate, %@, routeFetchType, %d, currLocFlag, %d, bundleID, %@, bundlePath, %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end