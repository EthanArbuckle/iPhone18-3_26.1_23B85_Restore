@interface CMSUpdateActivityRequest
- (NSString)description;
- (id)cmsCoded;
- (id)initForActivity:(id)a3 failure:(id)a4 whilePlaying:(id)a5;
- (id)initForActivity:(id)a3 report:(unint64_t)a4 nowPlaying:(id)a5 previouslyPlaying:(id)a6;
@end

@implementation CMSUpdateActivityRequest

- (id)initForActivity:(id)a3 report:(unint64_t)a4 nowPlaying:(id)a5 previouslyPlaying:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = CMSUpdateActivityRequest;
  v14 = [(CMSUpdateActivityRequest *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_userActivityDictionary, a3);
    v16 = [MEMORY[0x277CBEAA8] date];
    timestamp = v15->_timestamp;
    v15->_timestamp = v16;

    v15->_report = a4;
    objc_storeStrong(&v15->_nowPlaying, a5);
    objc_storeStrong(&v15->_previouslyPlaying, a6);
  }

  return v15;
}

- (id)initForActivity:(id)a3 failure:(id)a4 whilePlaying:(id)a5
{
  v9 = a4;
  if (self)
  {
    v10 = [(CMSUpdateActivityRequest *)self initForActivity:a3 report:13 nowPlaying:0 previouslyPlaying:a5];
    objc_storeStrong(v10 + 8, a4);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)cmsCoded
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:9];
  v4 = CMSCloudExtensionSpecVersion();
  [v3 setObject:v4 forKey:@"version"];

  [v3 cmsSetOptionalCodedObject:self->_timestamp forKey:@"timestamp"];
  v5 = CMSActivityReportTypeToString(self->_report);
  [v3 setObject:v5 forKey:@"report"];

  [v3 cmsSetOptionalCodedObject:self->_nowPlaying forKey:@"nowPlaying"];
  [v3 cmsSetOptionalCodedObject:self->_previouslyPlaying forKey:@"previouslyPlaying"];
  [v3 cmsSetOptionalCodedObject:self->_contentFailure forKey:@"contentFailure"];
  [v3 cmsSetOptionalObject:self->_constraints forKey:@"constraints"];
  [v3 cmsSetNullableObject:self->_userActivityDictionary forKey:@"userActivity"];
  [v3 cmsSetOptionalObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];

  return v3;
}

- (NSString)description
{
  v2 = [(CMSUpdateActivityRequest *)self cmsCoded];
  v3 = [v2 description];

  return v3;
}

@end