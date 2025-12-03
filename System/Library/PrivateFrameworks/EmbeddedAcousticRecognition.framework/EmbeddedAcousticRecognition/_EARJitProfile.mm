@interface _EARJitProfile
- (_EARJitProfile)initWithConfiguration:(id)configuration ncsRoot:(id)root language:(id)language;
- (id)jitProfileFromContextualStrings:(id)strings;
- (id)jitProfileFromWordsWithMetadata:(id)metadata;
@end

@implementation _EARJitProfile

- (_EARJitProfile)initWithConfiguration:(id)configuration ncsRoot:(id)root language:(id)language
{
  configurationCopy = configuration;
  rootCopy = root;
  languageCopy = language;
  v22.receiver = self;
  v22.super_class = _EARJitProfile;
  v11 = [(_EARJitProfile *)&v22 init];
  if (v11 && ([rootCopy stringByAppendingPathComponent:@"en_US_napg.json"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(rootCopy, "stringByAppendingPathComponent:", @"vocdelta.voc"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(rootCopy, "stringByAppendingPathComponent:", @"pg.voc"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(rootCopy, "stringByAppendingPathComponent:", @"mrec.psh"), v15 = objc_claimAutoreleasedReturnValue(), LOBYTE(v21) = 1, v16 = -[_EARUserProfileBuilder initWithConfiguration:language:overrides:sdapiOverrides:emptyVoc:pgVoc:paramsetHolder:isJit:]([_EARUserProfile alloc], "initWithConfiguration:language:overrides:sdapiOverrides:emptyVoc:pgVoc:paramsetHolder:isJit:", configurationCopy, languageCopy, 0, v12, v13, v14, v15, v21), profileBuilder = v11->_profileBuilder, v11->_profileBuilder = &v16->super, profileBuilder, v18 = v11->_profileBuilder, v15, v14, v13, v12, !v18))
  {
    v19 = 0;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

- (id)jitProfileFromContextualStrings:(id)strings
{
  stringsCopy = strings;
  [(_EARUserProfileBuilder *)self->_profileBuilder createInlineLmeUserDataForContextStrings:stringsCopy];
  dataProfile = [(_EARUserProfileBuilder *)self->_profileBuilder dataProfile];

  return dataProfile;
}

- (id)jitProfileFromWordsWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  [(_EARUserProfileBuilder *)self->_profileBuilder createInlineLmeUserDataForWordsWithMetadata:metadataCopy];
  dataProfile = [(_EARUserProfileBuilder *)self->_profileBuilder dataProfile];

  return dataProfile;
}

@end