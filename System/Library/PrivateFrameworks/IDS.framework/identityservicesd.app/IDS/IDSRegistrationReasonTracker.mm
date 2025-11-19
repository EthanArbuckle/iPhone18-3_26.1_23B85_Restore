@interface IDSRegistrationReasonTracker
+ (id)sharedInstance;
- (IDSRegistrationReasonTracker)init;
- (id)registrationRequestReasonString;
- (int64_t)getPNRReasonForUserUniqueIdentifier:(id)a3;
- (void)clearPNRReasonForUserUniqueIdentifier:(id)a3;
- (void)setPNRReason:(int64_t)a3 forUserUniqueIdentifier:(id)a4;
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

- (void)setPNRReason:(int64_t)a3 forUserUniqueIdentifier:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [(IDSRegistrationReasonTracker *)self PNRReasonByUserID];

    if (!v7)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [(IDSRegistrationReasonTracker *)self setPNRReasonByUserID:Mutable];
    }

    v10 = [NSNumber numberWithInteger:a3];
    v9 = [(IDSRegistrationReasonTracker *)self PNRReasonByUserID];
    [v9 setObject:v10 forKeyedSubscript:v6];
  }
}

- (void)clearPNRReasonForUserUniqueIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(IDSRegistrationReasonTracker *)self PNRReasonByUserID];
    [v5 setObject:0 forKeyedSubscript:v8];

    v6 = [(IDSRegistrationReasonTracker *)self PNRReasonByUserID];
    v7 = [v6 count];

    v4 = v8;
    if (!v7)
    {
      [(IDSRegistrationReasonTracker *)self setPNRReasonByUserID:0];
      v4 = v8;
    }
  }
}

- (int64_t)getPNRReasonForUserUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IDSRegistrationReasonTracker *)self PNRReasonByUserID];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)registrationRequestReasonString
{
  requestReasonContainer = self->_requestReasonContainer;
  if (requestReasonContainer)
  {
    v3 = [(IDSRequestReasonContainer *)requestReasonContainer requestReasonString];
  }

  else
  {
    v4 = +[IDSRequestReasonContainer unknownReasonContainer];
    v3 = [v4 requestReasonString];
  }

  return v3;
}

@end