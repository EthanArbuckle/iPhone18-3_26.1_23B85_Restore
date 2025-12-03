@interface MRDIRInteractiveRouteRecommendation
+ (id)interactiveRecommendationWithRouteRecommendation:(id)recommendation;
- (NSString)description;
@end

@implementation MRDIRInteractiveRouteRecommendation

+ (id)interactiveRecommendationWithRouteRecommendation:(id)recommendation
{
  recommendationCopy = recommendation;
  if ([recommendationCopy classification] <= 2 && !objc_msgSend(recommendationCopy, "isCallToAction"))
  {
    v8 = 0;
    goto LABEL_12;
  }

  v4 = objc_opt_new();
  route = [recommendationCopy route];
  [v4 setRoute:route];

  [v4 setClassification:{objc_msgSend(recommendationCopy, "classification")}];
  contextIdentifier = [recommendationCopy contextIdentifier];
  [v4 setContextIdentifier:contextIdentifier];

  [v4 setCallToAction:{objc_msgSend(recommendationCopy, "isCallToAction")}];
  [v4 setLockScreenControl:{objc_msgSend(recommendationCopy, "isLockScreenControl")}];
  [v4 setConservativelyFiltered:{objc_msgSend(recommendationCopy, "isConservativelyFiltered")}];
  if ([recommendationCopy classification] == 3)
  {
    v7 = 0;
  }

  else if ([recommendationCopy classification] == 4)
  {
    v7 = 1;
  }

  else
  {
    if (([recommendationCopy isCallToAction] & 1) == 0)
    {
      v10 = _MRLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = recommendationCopy;
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

  route = [(MRDIRRouteRecommendation *)self route];
  routeIdentifier = [route routeIdentifier];
  [v6 appendFormat:@"routeIdentifier: %@", routeIdentifier];

  classification = [(MRDIRRouteRecommendation *)self classification];
  if ((classification - 1) > 3)
  {
    v10 = @"Unknown";
  }

  else
  {
    v10 = *(&off_1004BC798 + classification - 1);
  }

  [v6 appendFormat:@", classification: %@", v10];
  recommendationType = [(MRDIRInteractiveRouteRecommendation *)self recommendationType];
  if ((recommendationType - 1) > 2)
  {
    v12 = @"OneTapRoute";
  }

  else
  {
    v12 = *(&off_1004BC7B8 + recommendationType - 1);
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