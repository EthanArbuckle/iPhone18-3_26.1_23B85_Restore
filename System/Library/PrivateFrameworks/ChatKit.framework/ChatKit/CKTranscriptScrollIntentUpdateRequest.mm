@interface CKTranscriptScrollIntentUpdateRequest
- (CKTranscriptScrollIntentUpdateRequest)initWithAnimatedIntent:(int64_t)intent animationProperties:(id)properties;
- (id)description;
- (id)initDeferredScrollIntentEnforcementWithIntent:(int64_t)intent;
@end

@implementation CKTranscriptScrollIntentUpdateRequest

- (id)initDeferredScrollIntentEnforcementWithIntent:(int64_t)intent
{
  v8.receiver = self;
  v8.super_class = CKTranscriptScrollIntentUpdateRequest;
  v4 = [(CKTranscriptScrollIntentUpdateRequest *)&v8 init];
  v5 = v4;
  if (v4)
  {
    animationProperties = v4->_animationProperties;
    v4->_intent = intent;
    v4->_animationProperties = 0;

    v5->_wantsDeferredScrollIntentEnforcement = 1;
  }

  return v5;
}

- (CKTranscriptScrollIntentUpdateRequest)initWithAnimatedIntent:(int64_t)intent animationProperties:(id)properties
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = CKTranscriptScrollIntentUpdateRequest;
  v8 = [(CKTranscriptScrollIntentUpdateRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_intent = intent;
    objc_storeStrong(&v8->_animationProperties, properties);
    v9->_wantsDeferredScrollIntentEnforcement = 0;
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = CKDebugNameForCKTranscriptScrollIntent([(CKTranscriptScrollIntentUpdateRequest *)self intent]);
  [v3 appendFormat:@" intent=%@", v4];

  animationProperties = [(CKTranscriptScrollIntentUpdateRequest *)self animationProperties];
  [v3 appendFormat:@" animationProperties=%@", animationProperties];

  wantsDeferredScrollIntentEnforcement = [(CKTranscriptScrollIntentUpdateRequest *)self wantsDeferredScrollIntentEnforcement];
  v7 = @"NO";
  if (wantsDeferredScrollIntentEnforcement)
  {
    v7 = @"YES";
  }

  [v3 appendFormat:@" wantsDeferredScrollIntentEnforcement=%@", v7];
  [v3 appendString:@">"];
  v8 = [v3 copy];

  return v8;
}

@end