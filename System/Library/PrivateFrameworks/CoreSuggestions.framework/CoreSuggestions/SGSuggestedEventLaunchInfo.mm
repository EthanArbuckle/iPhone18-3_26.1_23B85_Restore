@interface SGSuggestedEventLaunchInfo
- (NSUserActivity)userActivity;
- (SGSuggestedEventLaunchInfo)initWithBundleId:(id)id localizedShowInString:(id)string userActivity:(id)activity intent:(id)intent sourceURL:(id)l;
- (SGSuggestedEventLaunchInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGSuggestedEventLaunchInfo

- (NSUserActivity)userActivity
{
  if (self->_userActivityString)
  {
    v3 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityStrings:self->_userActivityString secondaryString:0 optionalData:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  bundleId = self->_bundleId;
  coderCopy = coder;
  [coderCopy encodeObject:bundleId forKey:@"bundleId"];
  [coderCopy encodeObject:self->_localizedShowInString forKey:@"localizedShowInString"];
  [coderCopy encodeObject:self->_userActivityString forKey:@"userActivityString"];
  [coderCopy encodeObject:self->_intent forKey:@"intent"];
  [coderCopy encodeObject:self->_sourceURL forKey:@"sourceURL"];
}

- (SGSuggestedEventLaunchInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = SGSuggestedEventLaunchInfo;
  v6 = [(SGSuggestedEventLaunchInfo *)&v25 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"bundleId"];

    if (v8)
    {
      v9 = v8;
      bundleId = v6->_bundleId;
      v6->_bundleId = v9;
    }

    else
    {
      bundleId = [MEMORY[0x1E696AAA8] currentHandler];
      [bundleId handleFailureInMethod:a2 object:v6 file:@"SGSuggestedEventLaunchInfo.m" lineNumber:53 description:{@"nonnull property %s *%s was null when decoded", "NSString", "bundleId"}];
    }

    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"localizedShowInString"];

    if (v12)
    {
      v13 = v12;
      localizedShowInString = v6->_localizedShowInString;
      v6->_localizedShowInString = v13;
    }

    else
    {
      localizedShowInString = [MEMORY[0x1E696AAA8] currentHandler];
      [localizedShowInString handleFailureInMethod:a2 object:v6 file:@"SGSuggestedEventLaunchInfo.m" lineNumber:54 description:{@"nonnull property %s *%s was null when decoded", "NSString", "localizedShowInString"}];
    }

    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"userActivityString"];
    userActivityString = v6->_userActivityString;
    v6->_userActivityString = v16;

    v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"intent"];
    intent = v6->_intent;
    v6->_intent = v19;

    v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"sourceURL"];
    sourceURL = v6->_sourceURL;
    v6->_sourceURL = v22;
  }

  return v6;
}

- (SGSuggestedEventLaunchInfo)initWithBundleId:(id)id localizedShowInString:(id)string userActivity:(id)activity intent:(id)intent sourceURL:(id)l
{
  idCopy = id;
  stringCopy = string;
  activityCopy = activity;
  intentCopy = intent;
  lCopy = l;
  v23.receiver = self;
  v23.super_class = SGSuggestedEventLaunchInfo;
  v18 = [(SGSuggestedEventLaunchInfo *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_bundleId, id);
    objc_storeStrong(&v19->_localizedShowInString, string);
    objc_storeStrong(&v19->_intent, intent);
    objc_storeStrong(&v19->_sourceURL, l);
    if (activityCopy)
    {
      sg_serialize = [activityCopy sg_serialize];
      userActivityString = v19->_userActivityString;
      v19->_userActivityString = sg_serialize;
    }
  }

  return v19;
}

@end