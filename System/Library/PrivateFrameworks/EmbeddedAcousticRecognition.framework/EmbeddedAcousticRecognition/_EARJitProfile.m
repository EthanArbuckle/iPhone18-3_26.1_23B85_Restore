@interface _EARJitProfile
- (_EARJitProfile)initWithConfiguration:(id)a3 ncsRoot:(id)a4 language:(id)a5;
- (id)jitProfileFromContextualStrings:(id)a3;
- (id)jitProfileFromWordsWithMetadata:(id)a3;
@end

@implementation _EARJitProfile

- (_EARJitProfile)initWithConfiguration:(id)a3 ncsRoot:(id)a4 language:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = _EARJitProfile;
  v11 = [(_EARJitProfile *)&v22 init];
  if (v11 && ([v9 stringByAppendingPathComponent:@"en_US_napg.json"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "stringByAppendingPathComponent:", @"vocdelta.voc"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "stringByAppendingPathComponent:", @"pg.voc"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "stringByAppendingPathComponent:", @"mrec.psh"), v15 = objc_claimAutoreleasedReturnValue(), LOBYTE(v21) = 1, v16 = -[_EARUserProfileBuilder initWithConfiguration:language:overrides:sdapiOverrides:emptyVoc:pgVoc:paramsetHolder:isJit:]([_EARUserProfile alloc], "initWithConfiguration:language:overrides:sdapiOverrides:emptyVoc:pgVoc:paramsetHolder:isJit:", v8, v10, 0, v12, v13, v14, v15, v21), profileBuilder = v11->_profileBuilder, v11->_profileBuilder = &v16->super, profileBuilder, v18 = v11->_profileBuilder, v15, v14, v13, v12, !v18))
  {
    v19 = 0;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

- (id)jitProfileFromContextualStrings:(id)a3
{
  v4 = a3;
  [(_EARUserProfileBuilder *)self->_profileBuilder createInlineLmeUserDataForContextStrings:v4];
  v5 = [(_EARUserProfileBuilder *)self->_profileBuilder dataProfile];

  return v5;
}

- (id)jitProfileFromWordsWithMetadata:(id)a3
{
  v4 = a3;
  [(_EARUserProfileBuilder *)self->_profileBuilder createInlineLmeUserDataForWordsWithMetadata:v4];
  v5 = [(_EARUserProfileBuilder *)self->_profileBuilder dataProfile];

  return v5;
}

@end