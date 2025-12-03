@interface FAMonogram
+ (id)monogramForContact:(id)contact diameter:(double)diameter scale:(double)scale;
+ (id)monogramWithFirstName:(id)name lastName:(id)lastName diameter:(double)diameter scale:(double)scale;
+ (id)silhouetteMonogramWithDiameter:(double)diameter scale:(double)scale;
@end

@implementation FAMonogram

+ (id)monogramForContact:(id)contact diameter:(double)diameter scale:(double)scale
{
  v33[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v8 = objc_alloc_init(MEMORY[0x1E695CF18]);
  [v8 setContactType:{objc_msgSend(contactCopy, "contactType")}];
  givenName = [contactCopy givenName];
  [v8 setGivenName:givenName];

  middleName = [contactCopy middleName];
  [v8 setMiddleName:middleName];

  familyName = [contactCopy familyName];
  [v8 setFamilyName:familyName];

  namePrefix = [contactCopy namePrefix];
  [v8 setNamePrefix:namePrefix];

  nameSuffix = [contactCopy nameSuffix];
  [v8 setNameSuffix:nameSuffix];

  nickname = [contactCopy nickname];
  [v8 setNickname:nickname];

  v15 = MEMORY[0x1E695DF58];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  languageCode = [currentLocale languageCode];
  v18 = [v15 characterDirectionForLanguage:languageCode];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v19 = getCNAvatarImageRenderingScopeClass_softClass;
  v32 = getCNAvatarImageRenderingScopeClass_softClass;
  if (!getCNAvatarImageRenderingScopeClass_softClass)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __getCNAvatarImageRenderingScopeClass_block_invoke;
    v28[3] = &unk_1E7CA4F30;
    v28[4] = &v29;
    __getCNAvatarImageRenderingScopeClass_block_invoke(v28);
    v19 = v30[3];
  }

  v20 = v19;
  _Block_object_dispose(&v29, 8);
  v21 = [v19 scopeWithPointSize:v18 == 2 scale:0 rightToLeft:diameter style:{diameter, scale}];
  v22 = objc_alloc_init(getCNAvatarImageRendererClass());
  v33[0] = v8;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v24 = [v22 avatarImageForContacts:v23 scope:v21];
  v25 = _weakUIImagePNGRepresentation(v24);

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)silhouetteMonogramWithDiameter:(double)diameter scale:(double)scale
{
  v6 = objc_alloc_init(getCNAvatarImageRendererClass());
  placeholderImageProvider = [v6 placeholderImageProvider];
  v8 = [placeholderImageProvider imageForSize:diameter scale:{diameter, scale}];
  v9 = _weakUIImagePNGRepresentation(v8);

  return v9;
}

+ (id)monogramWithFirstName:(id)name lastName:(id)lastName diameter:(double)diameter scale:(double)scale
{
  v10 = MEMORY[0x1E695CF18];
  lastNameCopy = lastName;
  nameCopy = name;
  v13 = objc_alloc_init(v10);
  [v13 setContactType:0];
  [v13 setGivenName:nameCopy];

  [v13 setFamilyName:lastNameCopy];
  v14 = [self monogramForContact:v13 diameter:diameter scale:scale];

  return v14;
}

@end