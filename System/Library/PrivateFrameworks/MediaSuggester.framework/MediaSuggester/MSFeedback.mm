@interface MSFeedback
- (BOOL)isEqual:(id)equal;
- (MSFeedback)initWithAction:(id)action requestInterval:(double)interval options:(id)options suggestions:(id)suggestions numberOfVisibleSuggestions:(int)visibleSuggestions sessionIdentifier:(id)identifier;
- (MSFeedbackAction)action;
- (MSSuggesterRequestOptions)options;
- (NSArray)suggestions;
- (NSString)sessionIdentifier;
- (id)copyWithZone:(void *)zone;
- (int)indexOfEngagedSuggestion;
- (int64_t)hash;
- (void)donate;
- (void)donateToBiome;
- (void)encodeWithCoder:(id)coder;
- (void)sendEventForAnalyticsLazyWithEventName:(id)name payloadBuilder:(id)builder;
- (void)setAction:(id)action;
- (void)setOptions:(id)options;
- (void)setSessionIdentifier:(id)identifier;
- (void)setSuggestions:(id)suggestions;
- (void)uploadAnalytics;
@end

@implementation MSFeedback

- (MSFeedbackAction)action
{
  v2 = sub_22C9CCB94();

  return v2;
}

- (void)setAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_22C9CCBFC(actionCopy);
}

- (MSSuggesterRequestOptions)options
{
  v2 = sub_22C9CCCA4();

  return v2;
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  sub_22C9CCD0C(optionsCopy);
}

- (NSArray)suggestions
{
  sub_22C9CCD74();
  type metadata accessor for MSSuggestion(0);
  v2 = sub_22CA20EB0();

  return v2;
}

- (void)setSuggestions:(id)suggestions
{
  type metadata accessor for MSSuggestion(0);
  v4 = sub_22CA20EC0();
  selfCopy = self;
  sub_22C9CCDF4(v4);
}

- (NSString)sessionIdentifier
{
  sub_22C9CCECC();
  if (v2)
  {
    v3 = sub_22CA20E10();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSessionIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_22CA20E20();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_22C9CCF88(v4, v6);
}

- (MSFeedback)initWithAction:(id)action requestInterval:(double)interval options:(id)options suggestions:(id)suggestions numberOfVisibleSuggestions:(int)visibleSuggestions sessionIdentifier:(id)identifier
{
  type metadata accessor for MSSuggestion(0);
  v13 = sub_22CA20EC0();
  if (identifier)
  {
    identifier = sub_22CA20E20();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return MSFeedback.init(action:requestInterval:options:suggestions:numberOfVisibleSuggestions:sessionIdentifier:)(action, options, v13, visibleSuggestions, identifier, v15, interval);
}

- (int)indexOfEngagedSuggestion
{
  selfCopy = self;
  v3 = sub_22C9CD1FC();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  MSFeedback.copy(with:)(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MSFeedback.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = MSFeedback.isEqual(_:)(v8);

  sub_22C9D027C(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = MSFeedback.hash.getter();

  return v3;
}

- (void)donate
{
  selfCopy = self;
  MSFeedback.donate()();
}

- (void)uploadAnalytics
{
  selfCopy = self;
  sub_22C9CF204(sub_22C9CE288);
}

- (void)sendEventForAnalyticsLazyWithEventName:(id)name payloadBuilder:(id)builder
{
  v5 = _Block_copy(builder);
  v6 = sub_22CA20E20();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_22C9CEE38(v6, v8, sub_22C9D0474, v9);
}

- (void)donateToBiome
{
  selfCopy = self;
  sub_22C9CF204(sub_22C9CF260);
}

@end