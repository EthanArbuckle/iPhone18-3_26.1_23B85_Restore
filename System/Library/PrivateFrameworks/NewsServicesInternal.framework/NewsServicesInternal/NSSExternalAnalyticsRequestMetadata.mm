@interface NSSExternalAnalyticsRequestMetadata
- (NSSExternalAnalyticsRequestMetadata)initWithCoder:(id)coder;
- (NSSExternalAnalyticsRequestMetadata)initWithSession:(id)session eventIdentifier:(id)identifier externalAnalyticsIdentifier:(id)analyticsIdentifier contentViewedIdentifier:(id)viewedIdentifier publisherIdentifier:(id)publisherIdentifier eventType:(int)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSExternalAnalyticsRequestMetadata

- (NSSExternalAnalyticsRequestMetadata)initWithSession:(id)session eventIdentifier:(id)identifier externalAnalyticsIdentifier:(id)analyticsIdentifier contentViewedIdentifier:(id)viewedIdentifier publisherIdentifier:(id)publisherIdentifier eventType:(int)type
{
  sessionCopy = session;
  identifierCopy = identifier;
  analyticsIdentifierCopy = analyticsIdentifier;
  viewedIdentifierCopy = viewedIdentifier;
  publisherIdentifierCopy = publisherIdentifier;
  v31.receiver = self;
  v31.super_class = NSSExternalAnalyticsRequestMetadata;
  v19 = [(NSSExternalAnalyticsRequestMetadata *)&v31 init];
  if (v19)
  {
    v20 = [sessionCopy copy];
    session = v19->_session;
    v19->_session = v20;

    v22 = [identifierCopy copy];
    eventIdentifier = v19->_eventIdentifier;
    v19->_eventIdentifier = v22;

    v24 = [analyticsIdentifierCopy copy];
    externalAnalyticsIdentifier = v19->_externalAnalyticsIdentifier;
    v19->_externalAnalyticsIdentifier = v24;

    v26 = [viewedIdentifierCopy copy];
    contentViewedIdentifier = v19->_contentViewedIdentifier;
    v19->_contentViewedIdentifier = v26;

    v28 = [publisherIdentifierCopy copy];
    publisherIdentifier = v19->_publisherIdentifier;
    v19->_publisherIdentifier = v28;

    v19->_eventType = type;
  }

  return v19;
}

- (NSSExternalAnalyticsRequestMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"session"];
  v6 = [coderCopy decodeObjectForKey:@"eventIdentifier"];
  v7 = [coderCopy decodeObjectForKey:@"externalAnalyticsIdentifier"];
  v8 = [coderCopy decodeObjectForKey:@"contentViewedIdentifier"];
  v9 = [coderCopy decodeObjectForKey:@"publisherIdentifier"];
  v10 = [coderCopy decodeInt32ForKey:@"eventType"];

  v11 = [(NSSExternalAnalyticsRequestMetadata *)self initWithSession:v5 eventIdentifier:v6 externalAnalyticsIdentifier:v7 contentViewedIdentifier:v8 publisherIdentifier:v9 eventType:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  session = [(NSSExternalAnalyticsRequestMetadata *)self session];
  [coderCopy encodeObject:session forKey:@"session"];

  eventIdentifier = [(NSSExternalAnalyticsRequestMetadata *)self eventIdentifier];
  [coderCopy encodeObject:eventIdentifier forKey:@"eventIdentifier"];

  externalAnalyticsIdentifier = [(NSSExternalAnalyticsRequestMetadata *)self externalAnalyticsIdentifier];
  [coderCopy encodeObject:externalAnalyticsIdentifier forKey:@"externalAnalyticsIdentifier"];

  contentViewedIdentifier = [(NSSExternalAnalyticsRequestMetadata *)self contentViewedIdentifier];
  [coderCopy encodeObject:contentViewedIdentifier forKey:@"contentViewedIdentifier"];

  publisherIdentifier = [(NSSExternalAnalyticsRequestMetadata *)self publisherIdentifier];
  [coderCopy encodeObject:publisherIdentifier forKey:@"publisherIdentifier"];

  [coderCopy encodeInt32:-[NSSExternalAnalyticsRequestMetadata eventType](self forKey:{"eventType"), @"eventType"}];
}

@end