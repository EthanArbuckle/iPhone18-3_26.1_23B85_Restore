@interface CMSUpdateActivityRequest
- (NSString)description;
- (id)cmsCoded;
- (id)initForActivity:(id)activity failure:(id)failure whilePlaying:(id)playing;
- (id)initForActivity:(id)activity report:(unint64_t)report nowPlaying:(id)playing previouslyPlaying:(id)previouslyPlaying;
@end

@implementation CMSUpdateActivityRequest

- (id)initForActivity:(id)activity report:(unint64_t)report nowPlaying:(id)playing previouslyPlaying:(id)previouslyPlaying
{
  activityCopy = activity;
  playingCopy = playing;
  previouslyPlayingCopy = previouslyPlaying;
  v19.receiver = self;
  v19.super_class = CMSUpdateActivityRequest;
  v14 = [(CMSUpdateActivityRequest *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_userActivityDictionary, activity);
    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v15->_timestamp;
    v15->_timestamp = date;

    v15->_report = report;
    objc_storeStrong(&v15->_nowPlaying, playing);
    objc_storeStrong(&v15->_previouslyPlaying, previouslyPlaying);
  }

  return v15;
}

- (id)initForActivity:(id)activity failure:(id)failure whilePlaying:(id)playing
{
  failureCopy = failure;
  if (self)
  {
    v10 = [(CMSUpdateActivityRequest *)self initForActivity:activity report:13 nowPlaying:0 previouslyPlaying:playing];
    objc_storeStrong(v10 + 8, failure);
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
  cmsCoded = [(CMSUpdateActivityRequest *)self cmsCoded];
  v3 = [cmsCoded description];

  return v3;
}

@end