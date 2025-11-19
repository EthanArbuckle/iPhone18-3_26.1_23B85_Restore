@interface MRDIRInteractiveRouteRecommendation
+ (id)interactiveRecommendationWithRouteRecommendation:(id)a3;
- (NSString)description;
@end

@implementation MRDIRInteractiveRouteRecommendation

+ (id)interactiveRecommendationWithRouteRecommendation:(id)a3
{
  v3 = a3;
  if ([v3 classification] <= 2 && !objc_msgSend(v3, "isCallToAction"))
  {
    v8 = 0;
    goto LABEL_12;
  }

  v4 = objc_opt_new();
  v5 = [v3 route];
  [v4 setRoute:v5];

  [v4 setClassification:{objc_msgSend(v3, "classification")}];
  v6 = [v3 contextIdentifier];
  [v4 setContextIdentifier:v6];

  [v4 setCallToAction:{objc_msgSend(v3, "isCallToAction")}];
  [v4 setLockScreenControl:{objc_msgSend(v3, "isLockScreenControl")}];
  [v4 setConservativelyFiltered:{objc_msgSend(v3, "isConservativelyFiltered")}];
  if ([v3 classification] == 3)
  {
    v7 = 0;
  }

  else if ([v3 classification] == 4)
  {
    v7 = 1;
  }

  else
  {
    if (([v3 isCallToAction] & 1) == 0)
    {
      v10 = _MRLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD Invalid interactive recommendation: %@ - ignoring;", &v11, 0xCu);
      }

      v8 = 0;
      goto LABEL_11;
    }

    v7 = 2;
  }

  [v4 setRecommendationType:v7];
  v8 = v4;
LABEL_11:

LABEL_12:

  return v8;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  v7 = [(MRDIRRouteRecommendation *)self route];
  v8 = [v7 routeIdentifier];
  [v6 appendFormat:@"routeIdentifier: %@", v8];

  v9 = [(MRDIRRouteRecommendation *)self classification];
  if ((v9 - 1) > 3)
  {
    v10 = @"Unknown";
  }

  else
  {
    v10 = *(&off_1004BC798 + v9 - 1);
  }

  [v6 appendFormat:@", classification: %@", v10];
  v11 = [(MRDIRInteractiveRouteRecommendation *)self recommendationType];
  if ((v11 - 1) > 2)
  {
    v12 = @"OneTapRoute";
  }

  else
  {
    v12 = *(&off_1004BC7B8 + v11 - 1);
  }

  [v6 appendFormat:@", recommendationType: %@", v12];
  if ([(MRDIRRouteRecommendation *)self isLockScreenControl])
  {
    [v6 appendString:{@", LockScreen"}];
  }

  if ([(MRDIRRouteRecommendation *)self isConservativelyFiltered])
  {
    [v6 appendString:{@", ConservativelyFiltered"}];
  }

  [v6 appendString:@">"];

  return v6;
}

@end