@interface MSFeedback
- (BOOL)isEqual:(id)a3;
- (MSFeedback)initWithAction:(id)a3 requestInterval:(double)a4 options:(id)a5 suggestions:(id)a6 numberOfVisibleSuggestions:(int)a7 sessionIdentifier:(id)a8;
- (MSFeedbackAction)action;
- (MSSuggesterRequestOptions)options;
- (NSArray)suggestions;
- (NSString)sessionIdentifier;
- (id)copyWithZone:(void *)a3;
- (int)indexOfEngagedSuggestion;
- (int64_t)hash;
- (void)donate;
- (void)donateToBiome;
- (void)encodeWithCoder:(id)a3;
- (void)sendEventForAnalyticsLazyWithEventName:(id)a3 payloadBuilder:(id)a4;
- (void)setAction:(id)a3;
- (void)setOptions:(id)a3;
- (void)setSessionIdentifier:(id)a3;
- (void)setSuggestions:(id)a3;
- (void)uploadAnalytics;
@end

@implementation MSFeedback

- (MSFeedbackAction)action
{
  v2 = sub_22C9CCB94();

  return v2;
}

- (void)setAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22C9CCBFC(v4);
}

- (MSSuggesterRequestOptions)options
{
  v2 = sub_22C9CCCA4();

  return v2;
}

- (void)setOptions:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22C9CCD0C(v4);
}

- (NSArray)suggestions
{
  sub_22C9CCD74();
  type metadata accessor for MSSuggestion(0);
  v2 = sub_22CA20EB0();

  return v2;
}

- (void)setSuggestions:(id)a3
{
  type metadata accessor for MSSuggestion(0);
  v4 = sub_22CA20EC0();
  v5 = self;
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

- (void)setSessionIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_22CA20E20();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_22C9CCF88(v4, v6);
}

- (MSFeedback)initWithAction:(id)a3 requestInterval:(double)a4 options:(id)a5 suggestions:(id)a6 numberOfVisibleSuggestions:(int)a7 sessionIdentifier:(id)a8
{
  type metadata accessor for MSSuggestion(0);
  v13 = sub_22CA20EC0();
  if (a8)
  {
    a8 = sub_22CA20E20();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return MSFeedback.init(action:requestInterval:options:suggestions:numberOfVisibleSuggestions:sessionIdentifier:)(a3, a5, v13, a7, a8, v15, a4);
}

- (int)indexOfEngagedSuggestion
{
  v2 = self;
  v3 = sub_22C9CD1FC();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  MSFeedback.copy(with:)(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  MSFeedback.encode(with:)(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = MSFeedback.isEqual(_:)(v8);

  sub_22C9D027C(v8);
  return v6;
}

- (int64_t)hash
{
  v2 = self;
  v3 = MSFeedback.hash.getter();

  return v3;
}

- (void)donate
{
  v2 = self;
  MSFeedback.donate()();
}

- (void)uploadAnalytics
{
  v2 = self;
  sub_22C9CF204(sub_22C9CE288);
}

- (void)sendEventForAnalyticsLazyWithEventName:(id)a3 payloadBuilder:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_22CA20E20();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_22C9CEE38(v6, v8, sub_22C9D0474, v9);
}

- (void)donateToBiome
{
  v2 = self;
  sub_22C9CF204(sub_22C9CF260);
}

@end