@interface IDSRegistrationReasonTracker
+ (id)sharedInstance;
- (IDSRegistrationReasonTracker)init;
- (id)registrationRequestReasonString;
- (int64_t)getPNRReasonForUserUniqueIdentifier:(id)identifier;
- (void)clearPNRReasonForUserUniqueIdentifier:(id)identifier;
- (void)setPNRReason:(int64_t)reason forUserUniqueIdentifier:(id)identifier;
@end

@implementation IDSRegistrationReasonTracker

+ (id)sharedInstance
{
  if (qword_100CBD3B0 != -1)
  {
    sub_10091FA6C();
  }

  v3 = qword_100CBD3B8;

  return v3;
}

- (IDSRegistrationReasonTracker)init
{
  v12.receiver = self;
  v12.super_class = IDSRegistrationReasonTracker;
  v2 = [(IDSRegistrationReasonTracker *)&v12 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    if (_os_feature_enabled_impl())
    {
      v3 = +[IDSDiagnosticInfoHandler sharedInstance];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100452978;
      v9[3] = &unk_100BDAB58;
      v4 = &v10;
      objc_copyWeak(&v10, &location);
      v5 = im_primary_queue();
      [v3 registerDiagnosticInfoBlock:v9 title:@"Recent-Registration-Reasons" queue:v5];
    }

    else
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100452A60;
      v7[3] = &unk_100BDAB80;
      v4 = &v8;
      objc_copyWeak(&v8, &location);
      v3 = im_primary_queue();
      sub_1006085C4(v7, @"Recent-Registration-Reasons", v3);
    }

    objc_destroyWeak(v4);
    v2->_mostRecentIDSRegistrationReason = 0;
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)setPNRReason:(int64_t)reason forUserUniqueIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    pNRReasonByUserID = [(IDSRegistrationReasonTracker *)self PNRReasonByUserID];

    if (!pNRReasonByUserID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [(IDSRegistrationReasonTracker *)self setPNRReasonByUserID:Mutable];
    }

    v10 = [NSNumber numberWithInteger:reason];
    pNRReasonByUserID2 = [(IDSRegistrationReasonTracker *)self PNRReasonByUserID];
    [pNRReasonByUserID2 setObject:v10 forKeyedSubscript:identifierCopy];
  }
}

- (void)clearPNRReasonForUserUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v8 = identifierCopy;
    pNRReasonByUserID = [(IDSRegistrationReasonTracker *)self PNRReasonByUserID];
    [pNRReasonByUserID setObject:0 forKeyedSubscript:v8];

    pNRReasonByUserID2 = [(IDSRegistrationReasonTracker *)self PNRReasonByUserID];
    v7 = [pNRReasonByUserID2 count];

    identifierCopy = v8;
    if (!v7)
    {
      [(IDSRegistrationReasonTracker *)self setPNRReasonByUserID:0];
      identifierCopy = v8;
    }
  }
}

- (int64_t)getPNRReasonForUserUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pNRReasonByUserID = [(IDSRegistrationReasonTracker *)self PNRReasonByUserID];
  v6 = [pNRReasonByUserID objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)registrationRequestReasonString
{
  requestReasonContainer = self->_requestReasonContainer;
  if (requestReasonContainer)
  {
    requestReasonString = [(IDSRequestReasonContainer *)requestReasonContainer requestReasonString];
  }

  else
  {
    v4 = +[IDSRequestReasonContainer unknownReasonContainer];
    requestReasonString = [v4 requestReasonString];
  }

  return requestReasonString;
}

@end