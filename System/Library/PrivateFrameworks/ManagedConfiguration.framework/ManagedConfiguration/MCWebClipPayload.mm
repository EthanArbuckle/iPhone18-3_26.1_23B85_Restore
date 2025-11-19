@interface MCWebClipPayload
- (MCWebClipPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle2Description;
- (id)verboseDescription;
@end

@implementation MCWebClipPayload

- (MCWebClipPayload)initWithDictionary:(id)a3 profile:(id)a4 outError:(id *)a5
{
  v101 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v96.receiver = self;
  v96.super_class = MCWebClipPayload;
  v10 = [(MCPayload *)&v96 initWithDictionary:v8 profile:v9 outError:a5];
  if (!v10)
  {
    goto LABEL_20;
  }

  if ([v9 isStub])
  {
    v86 = 0;
    v11 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"URL" isRequired:0 outError:&v86];
    v12 = v86;
    if (!v12)
    {
      if (v11)
      {
        v13 = [MEMORY[0x1E695DFF8] URLWithString:v11];
        URL = v10->_URL;
        v10->_URL = v13;
      }

      v85 = 0;
      v15 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"Label" isRequired:0 outError:&v85];
      v16 = v85;
      label = v10->_label;
      v10->_label = v15;

      if (!v16)
      {
        v84 = 0;
        v18 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"FullScreen" isRequired:0 outError:&v84];
        v16 = v84;
        fullScreenNum = v10->_fullScreenNum;
        v10->_fullScreenNum = v18;

        if (!v16)
        {
          v10->_fullScreen = [(NSNumber *)v10->_fullScreenNum BOOLValue];
          v83 = 0;
          v20 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"SavedIdentifier" isRequired:0 outError:&v83];
          v16 = v83;
          savedIdentifier = v10->_savedIdentifier;
          v10->_savedIdentifier = v20;

          if (!v16)
          {
            v82 = 0;
            v22 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IsRemovable" isRequired:0 outError:&v82];
            v16 = v82;
            isRemovableNum = v10->_isRemovableNum;
            v10->_isRemovableNum = v22;

            if (!v16)
            {
              v24 = v10->_isRemovableNum;
              v25 = !v24 || [(NSNumber *)v24 BOOLValue];
              v10->_isRemovable = v25;
              v81 = 0;
              v70 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IgnoreManifestScope" isRequired:0 outError:&v81];
              v16 = v81;
              ignoreManifestScopeNum = v10->_ignoreManifestScopeNum;
              v10->_ignoreManifestScopeNum = v70;

              if (!v16)
              {
                v10->_ignoreManifestScope = [(NSNumber *)v10->_ignoreManifestScopeNum BOOLValue];
                v80 = 0;
                v72 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"ContentMode" isRequired:0 outError:&v80];
                v16 = v80;
                contentMode = v10->_contentMode;
                v10->_contentMode = v72;

                if (!v16)
                {
                  v79 = 0;
                  v74 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"TargetApplicationBundleIdentifier" isRequired:0 outError:&v79];
                  v16 = v79;
                  targetApplicationBundleIdentifier = v10->_targetApplicationBundleIdentifier;
                  v10->_targetApplicationBundleIdentifier = v74;

                  if (!v16)
                  {
                    goto LABEL_47;
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v95 = 0;
  v11 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"URL" isRequired:1 outError:&v95];
  v12 = v95;
  if (!v12)
  {
    v36 = [MEMORY[0x1E695DFF8] URLWithString:v11];
    v37 = v10->_URL;
    v10->_URL = v36;

    v94 = 0;
    v38 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"Label" isRequired:1 outError:&v94];
    v16 = v94;
    v39 = v10->_label;
    v10->_label = v38;

    if (v16)
    {
      goto LABEL_14;
    }

    v93 = 0;
    v40 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Icon" isRequired:0 outError:&v93];
    v41 = v93;
    if (v41)
    {
      v16 = v41;
LABEL_24:

      goto LABEL_14;
    }

    if (v40)
    {
      v42 = MCCGImageSourceCreateWithData(v40, 0);
      if (v42)
      {
        v43 = v42;
        if (MCCGImageSourceGetCount(v42))
        {
          ImageAtIndex = MCCGImageSourceCreateImageAtIndex(v43, 0, 0);
          if (ImageAtIndex)
          {
            CFRelease(ImageAtIndex);
            CFRelease(v43);
            objc_storeStrong(&v10->_iconData, v40);
            goto LABEL_30;
          }
        }

        CFRelease(v43);
      }

      iconData = v10->_iconData;
      v10->_iconData = v40;
      v50 = v40;

      v51 = MEMORY[0x1E696ABC0];
      v59 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_P_FIELD", v52, v53, v54, v55, v56, v57, v58, @"Icon");
      v16 = [v51 MCErrorWithDomain:@"MCProfileErrorDomain" code:1003 descriptionArray:v59 errorType:@"MCFatalError"];

      if (!v16)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

LABEL_30:
    v92 = 0;
    v45 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IsRemovable" isRequired:0 outError:&v92];
    v16 = v92;
    v46 = v10->_isRemovableNum;
    v10->_isRemovableNum = v45;

    if (!v16)
    {
      v47 = v10->_isRemovableNum;
      v48 = !v47 || [(NSNumber *)v47 BOOLValue];
      v10->_isRemovable = v48;
      v91 = 0;
      v60 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Precomposed" isRequired:0 outError:&v91];
      v16 = v91;
      precomposedNum = v10->_precomposedNum;
      v10->_precomposedNum = v60;

      if (!v16)
      {
        v10->_precomposed = [(NSNumber *)v10->_precomposedNum BOOLValue];
        v90 = 0;
        v62 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"FullScreen" isRequired:0 outError:&v90];
        v16 = v90;
        v63 = v10->_fullScreenNum;
        v10->_fullScreenNum = v62;

        if (!v16)
        {
          v10->_fullScreen = [(NSNumber *)v10->_fullScreenNum BOOLValue];
          v89 = 0;
          v64 = [v8 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IgnoreManifestScope" isRequired:0 outError:&v89];
          v16 = v89;
          v65 = v10->_ignoreManifestScopeNum;
          v10->_ignoreManifestScopeNum = v64;

          if (!v16)
          {
            v10->_ignoreManifestScope = [(NSNumber *)v10->_ignoreManifestScopeNum BOOLValue];
            v88 = 0;
            v66 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"ContentMode" isRequired:0 outError:&v88];
            v16 = v88;
            v67 = v10->_contentMode;
            v10->_contentMode = v66;

            if (!v16)
            {
              v87 = 0;
              v68 = [v8 MCValidateAndRemoveNonZeroLengthStringWithKey:@"TargetApplicationBundleIdentifier" isRequired:0 outError:&v87];
              v16 = v87;
              v69 = v10->_targetApplicationBundleIdentifier;
              v10->_targetApplicationBundleIdentifier = v68;

              if (!v16)
              {

LABEL_47:
                if ([v8 count])
                {
                  v76 = _MCLogObjects;
                  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
                  {
                    v77 = v76;
                    v78 = [(MCPayload *)v10 friendlyName];
                    *buf = 138543618;
                    v98 = v78;
                    v99 = 2114;
                    v100 = v8;
                    _os_log_impl(&dword_1A795B000, v77, OS_LOG_TYPE_INFO, "Payload “%{public}@” has fields that we are ignoring. They are: %{public}@", buf, 0x16u);
                  }
                }

                goto LABEL_20;
              }
            }
          }
        }
      }
    }

    goto LABEL_24;
  }

LABEL_13:
  v16 = v12;
LABEL_14:

LABEL_15:
  v26 = [(MCPayload *)v10 malformedPayloadErrorWithError:v16];
  v27 = v26;
  if (a5)
  {
    v28 = v26;
    *a5 = v27;
  }

  v29 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v30 = v29;
    v31 = objc_opt_class();
    v32 = v31;
    v33 = [v27 MCVerboseDescription];
    *buf = 138543618;
    v98 = v31;
    v99 = 2114;
    v100 = v33;
    _os_log_impl(&dword_1A795B000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
  }

  v10 = 0;
LABEL_20:

  v34 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)stubDictionary
{
  v13.receiver = self;
  v13.super_class = MCWebClipPayload;
  v3 = [(MCPayload *)&v13 stubDictionary];
  URL = self->_URL;
  if (URL)
  {
    v5 = [(NSURL *)URL absoluteString];
    [v3 MCSetObjectIfNotNil:v5 forKey:@"URL"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_fullScreen];
  [v3 MCSetObjectIfNotNil:v6 forKey:@"FullScreen"];

  [v3 MCSetObjectIfNotNil:self->_label forKey:@"Label"];
  savedIdentifier = self->_savedIdentifier;
  if (savedIdentifier)
  {
    [v3 setObject:savedIdentifier forKeyedSubscript:@"SavedIdentifier"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCWebClipPayload isRemovable](self, "isRemovable")}];
  [v3 setObject:v8 forKeyedSubscript:@"IsRemovable"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCWebClipPayload ignoreManifestScope](self, "ignoreManifestScope")}];
  [v3 setObject:v9 forKeyedSubscript:@"IgnoreManifestScope"];

  contentMode = self->_contentMode;
  if (contentMode)
  {
    [v3 setObject:contentMode forKeyedSubscript:@"ContentMode"];
  }

  targetApplicationBundleIdentifier = self->_targetApplicationBundleIdentifier;
  if (targetApplicationBundleIdentifier)
  {
    [v3 setObject:targetApplicationBundleIdentifier forKeyedSubscript:@"TargetApplicationBundleIdentifier"];
  }

  return v3;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v15.receiver = self;
  v15.super_class = MCWebClipPayload;
  v4 = [(MCPayload *)&v15 verboseDescription];
  v5 = [v3 stringWithString:v4];

  v6 = [(MCPayload *)self profile];
  v7 = [v6 isStub];

  if ((v7 & 1) == 0)
  {
    if (self->_URL)
    {
      [v5 appendFormat:@"URL         : %@\n", self->_URL];
    }

    if (self->_label)
    {
      [v5 appendFormat:@"Label       : %@\n", self->_label];
    }

    if (self->_iconData)
    {
      [v5 appendFormat:@"Icon        : Present\n"];
    }

    v8 = MCStringForBool(self->_isRemovable);
    [v5 appendFormat:@"Removable   : %@\n", v8];

    v9 = MCStringForBool(self->_precomposed);
    [v5 appendFormat:@"Precomposed : %@\n", v9];

    v10 = MCStringForBool(self->_fullScreen);
    [v5 appendFormat:@"Full screen : %@\n", v10];

    v11 = MCStringForBool(self->_ignoreManifestScope);
    [v5 appendFormat:@"Ignore scope: %@\n", v11];

    if (self->_contentMode)
    {
      [v5 appendFormat:@"Content mode: %@\n", self->_contentMode];
    }

    if (self->_targetApplicationBundleIdentifier)
    {
      [v5 appendFormat:@"Target App: %@\n", self->_targetApplicationBundleIdentifier];
    }

    v12 = [(MCWebClipPayload *)self savedIdentifier];

    if (v12)
    {
      v13 = [(MCWebClipPayload *)self savedIdentifier];
      [v5 appendFormat:@"Identifier  : %@\n", v13];
    }
  }

  return v5;
}

- (id)subtitle1Description
{
  v2 = [(MCWebClipPayload *)self URL];
  v3 = [v2 absoluteString];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MCLocalizedString(@"WEBCLIP_URL_MISSING");
  }

  v5 = v4;

  return v5;
}

- (id)subtitle2Description
{
  v2 = [(MCWebClipPayload *)self label];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MCLocalizedString(@"WEBCLIP_LABEL_MISSING");
  }

  v5 = v4;

  return v5;
}

- (id)payloadDescriptionKeyValueSections
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_label)
  {
    v4 = [MCKeyValue alloc];
    label = self->_label;
    v6 = MCLocalizedString(@"WEB_CLIP_LABEL");
    v7 = [(MCKeyValue *)v4 initWithLocalizedString:label localizedKey:v6];

    [v3 addObject:v7];
  }

  if (self->_URL)
  {
    v8 = [MCKeyValue alloc];
    v9 = [(NSURL *)self->_URL absoluteString];
    v10 = MCLocalizedString(@"URL");
    v11 = [(MCKeyValue *)v8 initWithLocalizedString:v9 localizedKey:v10];

    [v3 addObject:v11];
  }

  if (self->_isRemovableNum)
  {
    v12 = [MCKeyValue alloc];
    v13 = MCLocalizedStringForBool([(NSNumber *)self->_isRemovableNum BOOLValue]);
    v14 = MCLocalizedString(@"WEB_CLIP_REMOVABLE");
    v15 = [(MCKeyValue *)v12 initWithLocalizedString:v13 localizedKey:v14];

    [v3 addObject:v15];
  }

  if (self->_fullScreenNum)
  {
    v16 = [MCKeyValue alloc];
    v17 = MCLocalizedStringForBool([(NSNumber *)self->_fullScreenNum BOOLValue]);
    v18 = MCLocalizedString(@"WEB_CLIP_FULLSCREEN");
    v19 = [(MCKeyValue *)v16 initWithLocalizedString:v17 localizedKey:v18];

    [v3 addObject:v19];
  }

  if ([(NSNumber *)self->_ignoreManifestScopeNum BOOLValue])
  {
    v20 = [MCKeyValue alloc];
    v21 = MCLocalizedStringForBool([(NSNumber *)self->_ignoreManifestScopeNum BOOLValue]);
    v22 = MCLocalizedString(@"WEB_CLIP_IGNORE_MANIFEST_SCOPE");
    v23 = [(MCKeyValue *)v20 initWithLocalizedString:v21 localizedKey:v22];

    [v3 addObject:v23];
  }

  if (self->_contentMode)
  {
    v24 = [MCKeyValue alloc];
    contentMode = self->_contentMode;
    v26 = MCLocalizedString(@"WEB_CLIP_CONTENT_MODE");
    v27 = [(MCKeyValue *)v24 initWithLocalizedString:contentMode localizedKey:v26];

    [v3 addObject:v27];
  }

  if (self->_targetApplicationBundleIdentifier)
  {
    v28 = [MCKeyValue alloc];
    targetApplicationBundleIdentifier = self->_targetApplicationBundleIdentifier;
    v30 = MCLocalizedString(@"WEB_CLIP_TARGET_APP_BUNDLE_IDENTIFIER");
    v31 = [(MCKeyValue *)v28 initWithLocalizedString:targetApplicationBundleIdentifier localizedKey:v30];

    [v3 addObject:v31];
  }

  if ([v3 count])
  {
    v32 = [MCKeyValueSection sectionWithKeyValues:v3];
    v36[0] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  }

  else
  {
    v33 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

@end